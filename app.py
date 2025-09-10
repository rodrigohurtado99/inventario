from flask import render_template, Flask

app = Flask(__name__)

# rotas 
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/home')
def home():
    return render_template('home.html')