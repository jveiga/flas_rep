import os

from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
  return "hi"


if __name__ == '__main__':
  port = 5000
  print("starting {}".format(port))
  app.run(host='0.0.0.0', port=port, debug=True)
