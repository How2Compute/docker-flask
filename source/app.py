from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

# Create a flask instance called app
app = Flask(__name__)

# Render the "homepage"
@app.route("/")
def index():
	return render_template("index.html")
