from flask import Flask, jsonify, request

app = Flask(__name__)

hello = [
    {
        'texto': 'Ola, mundo!'
    }
]

@app.route('/hello')
def obter_hello():
    return jsonify(hello)

app.run(port=5000, host='0.0.0.0', debug=True)