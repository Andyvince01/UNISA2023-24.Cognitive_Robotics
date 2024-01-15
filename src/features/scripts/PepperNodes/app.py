#!/usr/bin/python3
from flask import Flask, render_template
import json 

# creates a Flask application 
app = Flask(__name__) 

import os

script_dir = os.path.dirname(os.path.abspath(__file__))
file_path = os.path.join(script_dir, 'form.json')

@app.route("/Video", methods=["GET"]) 
def handle_image():
    return render_template('image.html')

@app.route("/Form", methods=["GET"]) 
def handle_form():
   with open(file_path, "r") as file:
        data = json.load(file)
   return render_template('form.html', data=data)

# run the application 
if __name__ == "__main__": 
    app.run(debug=True, host="0.0.0.0", port=5000)
    # app.run(debug=True, host='10.0.1.244', port=5000)