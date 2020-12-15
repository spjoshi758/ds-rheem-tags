from flask import Flask

app = Flask(__name__)

__version__ = '1.0.0'

@app.route('/')
def HelloWorld():
    return __version__

app.run(host='localhost', port=8080)
