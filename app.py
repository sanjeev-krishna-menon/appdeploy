
from flask import Flask

''this is a comment  ''
app = Flask(__name__)

@app.route('/')
def hello_world():
        return "Hello, GCP DevOps!"

    if __name__ == "__main__":
            app.run(debug=True, host='0.0.0.0')

