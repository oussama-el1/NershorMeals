#!/usr/bin/python3
""" Nershor Meals web app """

from models import storage
from models.Preference import Preference
from flask import Flask, render_template, redirect, request, session, url_for
from uuid import uuid4


app = Flask(__name__)
app.secret_key = 'oussama@1230.'

@app.teardown_appcontext
def close_db(error):
    """ Remove the current SQLAlchemy Session """
    storage.close()


@app.route('/home', strict_slashes=False)
def home_page():
    """ home page for the web app """
    return render_template("home.html", unique_id=uuid4())


@app.route('/plans', strict_slashes=False)
def plans():
    """ this route is for the plans """
    preferences = storage.all(Preference).values()
    icons = ['<i class="fas fa-utensils"></i>',
             '<i class="fas fa-carrot"></i>',
             '<i class="fas fa-child"></i>',
             '<i class="fas fa-heartbeat"></i>',
             '<i class="fas fa-stopwatch"></i>',
             '<i class="fas fa-fish"></i>']
    prefs_icons = list(zip(icons, preferences))
    return render_template("plans.html", prefs_icons=prefs_icons, unique_id=uuid4())


@app.route('/store_session_data_plan', methods=['POST'])
def store_session_data_plan():
    """ Store user preferences and plan information in session """
    data = request.json
    session['selectedPrefs'] = data['selectedPrefs']
    session['numPeople'] = data['numPeople']
    session['mealsPerWeek'] = data['mealsPerWeek']
    session['boxprice'] = data['boxprice']
    session['discount'] = data['discount']
    session['totale'] = data['totale']
    
    return 'Session data for plan stored successfully', 200


@app.route('/store_session_data_registration', methods=['POST'])
def store_session_data_registration():
    data = request.json
    session['email'] = data['email']
    session['password'] = data['password']
    
    return "Session data for registration stored successfully", 200


@app.route('/store_session_data_address', methods=['POST'])
def store_session_data_address():
    """ Store user delivery address information in session """
    data = request.json
    
    session['first_name'] = data.get('first_name', '')
    session['last_name'] = data.get('last_name', '')
    session['street'] = data.get('street', '')
    session['apt'] = data.get('apt', '')
    session['city'] = data.get('city', '')
    session['zip_code'] = data.get('zip_code', '')
    
    return 'Session data for address stored successfully', 200


@app.route('/registration', strict_slashes=False)
def registration():
    """ Retrieve user preferences from session """
    preferences = session.get('selectedPrefs')
    numPeople = session.get('numPeople')
    mealsPerWeek = session.get('mealsPerWeek')
    return render_template('registration.html', unique_id=uuid4())

from flask import session, render_template
from uuid import uuid4

@app.route('/form', strict_slashes=False)
def form():
    """ User form """
    
    session_data = {
        'selectedPrefs': session.get('selectedPrefs'),
        'numPeople': session.get('numPeople'),
        'mealsPerWeek': session.get('mealsPerWeek'),
        'boxprice': session.get('boxprice'),
        'discount': session.get('discount'),
        'totale': session.get('totale')
    }
    numPeople = session.get('numPeople')
    mealsPerWeek = session.get('mealsPerWeek')
    
    serving = int(numPeople) * int(mealsPerWeek)
    session_data['serving'] = serving 
    
    preferencesName = [storage.get(Preference, pref_id).name for pref_id in session_data.get('selectedPrefs')]
    preference_string = ' '.join(preferencesName)
    session_data['preferences'] = preference_string
    
    return render_template('form.html', session_data=session_data, unique_id=uuid4())



@app.route('/checkout')
def checkout():
    """ Display checkout page with session data """
    # Retrieve session data
    session_data = {
        'first_name': session.get('first_name', ''),
        'last_name': session.get('last_name', ''),
        'street': session.get('street', ''),
        'apt': session.get('apt', ''),
        'city': session.get('city', ''),
        'zip_code': session.get('zip_code', '')
    }
    return render_template('checkout.html', session_data=session_data)

if __name__ == "__main__":
    host = "0.0.0.0"
    port = 5005
    app.run(host=host, port=port, debug=True)