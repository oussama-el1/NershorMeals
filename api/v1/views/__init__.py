#!/usr/bin/python3
""" create  """
from flask import Blueprint

app_views = Blueprint('app_views', __name__, url_prefix='/api/v1')

users = {
    'john': 'password123'
}

def authenticate(username, password):
    return username in users and users[username] == password

from api.v1.views.status import *
from api.v1.views.plans import *
from api.v1.views.ingredients import *
from api.v1.views.meals import *