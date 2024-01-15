import json

# Dati da aggiornare
data = {
    "gender": "female",
    "upper_color": "red",
    "lower_color": "blue",
    "hat": True,
    "bag": False
}

# Scrivi i dati in un file JavaScript
with open("userData.js", "w") as file:
    file.write("var userData = " + json.dumps(data) + ";")
