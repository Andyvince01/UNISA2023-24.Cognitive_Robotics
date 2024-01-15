from flask import Flask 
from flask import render_template 

# creates a Flask application 
app = Flask(__name__) 

@app.route("/form", methods=["GET"]) 
def handle_form():
    data = {
        "gender": "male",
        "upper_color": "blue",
        "lower_color": None,
        "hat": True,
        "bag": False
    }
    return render_template('form.html', data=data)

@app.route("/image", methods=["GET"]) 
def handle_image():
    return render_template('image.html')

# run the application 
if __name__ == "__main__": 
    app.run(debug=True, host='0.0.0.0', port=5000)