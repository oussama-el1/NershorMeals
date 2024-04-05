#!/usr/bin/python3
"""
Contains the class DBStorage
"""

from os import getenv
from sqlalchemy import create_engine, Index
from sqlalchemy.orm import scoped_session, sessionmaker
from models.base import Base
from models.user import User
from models.plan import Plan
from models.order import Order
from models.meals import Meal
from models.ingredients import Ingredient
from models.address import Address
from models.mealIngredient import MealIngredient
from models.OrderMeals import OrderMeals
from models.customization import CustomizationOptions
from models.order_meal_cust import OrderMealCustomization
from models.Preference import Preference
from models.mealPreference import MealPreference


classes = {"User": User, "Plan": Plan, "Order": Order, "Meal": Meal, "Ingredient": Ingredient, "Address": Address, "Preference": Preference}
meal_id_index = Index('meal_id_index', Meal.id)
order_id_index = Index('order_id_index', Order.id)

table_order = [
    Base.metadata.tables['address'],
    Base.metadata.tables['users'],
    Base.metadata.tables['plans'],
    Base.metadata.tables['meals'],
    Base.metadata.tables['preferences'],
    Base.metadata.tables['orders'],
    Base.metadata.tables['ingredients'],
    Base.metadata.tables['meal_ingredients'],
    Base.metadata.tables['order_meals'],
    Base.metadata.tables['customization_options'],
    Base.metadata.tables['order_meal_customization'],
    Base.metadata.tables['meal_preferences']
]


class DBStorage:
    """Interacts with the MySQL database"""
    __engine = None
    __session = None

    def __init__(self):
        """Instantiate a DBStorage object"""
        self.__engine = create_engine('mysql+mysqldb://root:root@localhost/nershormeals2',pool_pre_ping=True)
        

    def all(self, cls=None):
        """Query on the current database session"""
        new_dict = {}
        for clss in classes:
            if cls is None or cls is classes[clss] or cls is clss:
                objs = self.__session.query(classes[clss]).all()
                for obj in objs:
                    key = obj.__class__.__name__ + '.' + obj.id
                    new_dict[key] = obj
        return new_dict

    def new(self, obj):
        """Add the object to the current database session"""
        self.__session.add(obj)

    def save(self):
        """Commit all changes of the current database session"""
        self.__session.commit()

    def delete(self, obj=None):
        """Delete from the current database session obj if not None"""
        if obj is not None:
            self.__session.delete(obj)

    def reload(self):
        """Reloads data from the database"""
        Base.metadata.create_all(self.__engine, tables=table_order)
        sess_factory = sessionmaker(bind=self.__engine, expire_on_commit=False)
        Session = scoped_session(sess_factory)
        self.__session = Session

    def close(self):
        """Call remove() method on the private session attribute"""
        self.__session.remove()

    def get(self, cls, id):
        """
        Returns the object based on the class name and its ID, or
        None if not found
        """
        if cls not in classes.values():
            return None

        all_cls = self.all(cls)
        for value in all_cls.values():
            if value.id == id:
                return value

        return None

    def count(self, cls=None):
        """
        Count the number of objects in storage
        """
        if not cls:
            count = 0
            for clas in classes.values():
                count += len(self.all(clas).values())
        else:
            count = len(self.all(cls).values())

        return count
