from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"message": "Bienvenue dans notre API!"})

if __name__ == '__main__':
    print("L'application Flask est en cours d'exécution.")
    print("Accédez à l'application sur : http://localhost:8000")
    app.run(host='0.0.0.0', port=5000)
