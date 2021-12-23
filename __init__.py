from flask import Flask


app = Flask(__name__)


@app.route("/health")
def health():
    return "Ok"


def main():
    app.run()


if __name__ == "__main__":
    main()
