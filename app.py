from flask import render_template, Flask

app = Flask(__name__)

# 

# função de teste 
@app.route('/')
def helloworld():
    return render_template('index.html')

@app.route('/home')
def home():
    return render_template('home.html')