#!/usr/bin/python3
from models.base import Base
from sqlalchemy import Column, String, ForeignKey
from sqlalchemy.orm import relationship


class OrderMeals(Base):
    """OrderMeals Table"""
    __tablename__ = 'order_meals'
    order_id = Column(String(60), ForeignKey('orders.id'), primary_key=True)
    meal_id = Column(String(60), ForeignKey('meals.id'), primary_key=True)