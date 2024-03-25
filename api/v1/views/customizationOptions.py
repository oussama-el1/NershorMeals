from models.base import BaseData, Base
from sqlalchemy import Column, ForeignKey, String, Float
from sqlalchemy.orm import relationship

class CustomizationOption(BaseData, Base):
    """CustomizationOptions Data Model"""
    _tablename__ = 'customization_options'

    meal_id = Column(String(60), ForeignKey('meals.id'), nullable=False)
    ingredient_id = Column(String(60), ForeignKey('ingredients.id'), nullable=False)
    portion_size = Column(String(50), nullable=False)
    price = Column(Float, nullable=False)

    # Define relationship with Meal
    meal = relationship("Meal", back_populates="customization_options")

    # Define relationship with Ingredient
    ingredient = relationship("Ingredient", back_populates="customization_options")