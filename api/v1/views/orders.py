#!/usr/bin/python3
from api.v1.views import app_views, authenticate
from flask import abort, jsonify, make_response, request
from models.order import Order
from models import storage



@app_views.route('/orders', methods=['POST'], strict_slashes=False)
def add_order():
    """ add order """
    auth = request.authorization
    if not auth or not authenticate(auth.username, auth.password):
        return abort(401, 'Authentication required')
    
    if not request.get_json():
        abort(400, description="Not a JSON")
    attr = ["plan_id", "user_id"]
    ignore = ['id', 'created_at', 'updated_at']
    data = request.get_json()
    for key in attr:
        if key not in data:
            abort(400, description="Missing args")
    for key in data.keys():
        if key in ignore:
            abort(400, description="Ignored key passed")
    order = Order(**data)
    order.save()
    return make_response(jsonify(order.to_dict()), 201)