#!/usr/bin/python3
""" Meal Routes for all
    (CRUD) operation :
        CREATE (POST) : create Meal
        READ (GET) : get Meal or Meals
        UPDATE (UPDATE) : update Meal
        DELETE (DELETE) : delete Meal
"""

from api.v1.views import app_views, authenticate
from flask import abort, jsonify, make_response, request
from models.meals import Meal
from models import storage


@app_views.route('/meals', methods=['GET'], strict_slashes=False)
def get_all_meals():
    """ All meals available """
    all_meals = storage.all(Meal).values()
    res = []
    for meal in all_meals:
        res.append(meal.to_dict())
    return jsonify(res)


@app_views.route('/meals/<meal_id>', methods=['GET'], strict_slashes=False)
def get_meal(meal_id):
    """ get Meal from Meals """
    data = storage.get(Meal, meal_id)
    if data is None:
        return jsonify({'message': 'Meal Not Found'}), 404
    else:
        meal = data.to_dict()
        ingredients = []
        for ing in data.ingredients:
            ingredients.append(ing.ingredientsName)
        meal['ingredients'] = ingredients
        return jsonify(meal)


@app_views.route('/meals/<meal_id>', methods=['DELETE'], strict_slashes=False)
def delete_meal(meal_id):
    """ delete meal from meals """
    auth = request.authorization
    if not auth or not authenticate(auth.username, auth.password):
        return jsonify({'message': 'Authentication required'}), 401

    meal = storage.get(Meal, meal_id)
    if meal is None:
        return jsonify({'message': 'Meal Not Found'}), 404
    else:
        storage.delete(meal)
        storage.save()
        return jsonify({f"meal - {meal.id}" : "deleted"}), 200


@app_views.route('/meals', methods=['POST'], strict_slashes=False)
def add_meal():
    """ add Meal """
    auth = request.authorization
    if not auth or not authenticate(auth.username, auth.password):
        return abort(401, 'Authentication required')

    if not request.get_json():
        abort(400, description="Not a JSON")
    attr = ["name", "prix", "protein", "calories", "Carbs", "Fat"]
    ignore = ['id', 'created_at', 'updated_at']
    data = request.get_json()
    for key in attr:
        if key not in data:
            abort(400, description="Missing args")
    for key in data.keys():
        if key in ignore:
            abort(400, description="Ignored key passed")
    meal = Meal(**data)
    meal.save()
    return make_response(jsonify(meal.to_dict()), 201)


@app_views.route('/meals/<meal_id>', methods=['PUT'], strict_slashes=False)
def update_meal(meal_id):
    """ update Meal """
    auth = request.authorization
    if not auth or not authenticate(auth.username, auth.password):
        return abort(401, 'Authentication required')

    if not request.get_json():
        abort(400, description="Not a JSON")
    meal = storage.get(Meal, meal_id)
    attr = ["name", "prix", "protein", "calories", "Carbs", "Fat"]
    ignore = ['id', 'created_at', 'updated_at']
    data = request.get_json()
    for k, v in data.items():
        if k in attr and k not in ignore:
            setattr(meal, k, v)
    meal.save()
    return jsonify(meal.to_dict()), 200



@app_views.route('/meals/<meal_id>/customize', methods=['PUT'], strict_slashes=False)
def customize_meal():
    """ Allows users to customize meal options (e.g., portion size, dietary preferences) """
    pass