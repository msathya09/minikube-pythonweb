from app import app
import os

@app.route("/")
def index():
    return "Hello World!!"
