from flask import Flask, render_template, redirect, url_for, request, flash
from flask_login import LoginManager, UserMixin, login_user, login_required, logout_user, current_user
from werkzeug.security import generate_password_hash, check_password_hash

app = Flask(__name__)

app.secret_key = "chave-secreta" # chave de sessão

# configurando o loginmanager

login_manager = LoginManager() # cria o gerenciado de login
login_manager.init_app(app) # conecta ele ao app
login_manager.login_view = 'login' # define página de login padrão

# mensagem de erro ao tentar acessar uma página que é necessário estar logado
login_manager.login_message = "Você precisa estar logado para acessar esta página."
login_manager.login_message_category = "warning"

# exemplo de base de dados
usuarios = {
    'rodrigo': generate_password_hash('1234')
}


# classe de métodos do usuário

class User(UserMixin):
    def __init__(self, id):
        self.id = id

@login_manager.user_loader
def load_user(user_id):
    return User(user_id)

# rotas 
@app.route('/home')
@login_required # exige que esteja logado para acessar a página
def home():
    return render_template('home.html', nome=current_user.id) # pega o nome do usuário que fez login


@app.route('/inventario')
@login_required
def inventario():
    celulares = [
        {"id": 1, "modelo": "Samsung A20", "imei": "123456789012345"},
        {"id": 2, "modelo": "iPhone 11", "imei": "987654321098765"},
        {"id": 3, "modelo": "Xiaomi Redmi Note", "imei": "555555555555555"}
    ]
    return render_template('inventario.html', celulares=celulares)

@app.route('/recuperar_senha')
def recuperar_senha():
    return render_template('recuperar_senha.html')


@app.route("/", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        usuario = request.form["usuario"] # pega usuário e senha
        senha = request.form["senha"]

        # confere se o usuário existe na base de dados
        if usuario in usuarios and check_password_hash(usuarios[usuario], senha):
            user = User(usuario)
            login_user(user)
            return redirect(url_for("home"))
        else:
            flash("Usuário ou senha inválidos!", "danger")
            
    return render_template('login.html')

# view de logout
@app.route('/logout')
def logout():
    
    logout_user()
    return redirect(url_for('login'))


# rodar o programa em tempo real
if __name__ == "__main__":
    app.run(debug=True)