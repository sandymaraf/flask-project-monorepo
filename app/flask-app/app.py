import flask
import os

app = flask.Flask(__name__)

@app.route("/")
def hello():
    return "App rodando v2 🚀"

@app.route("/health")
def health():
    return {"status": "ok"}

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))
    app.run(host="0.0.0.0", port=port)