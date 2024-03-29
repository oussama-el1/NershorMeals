from models.base import BaseData, Base
from sqlalchemy import Column, Integer, Float
from sqlalchemy.orm import relationship

class Plan(BaseData, Base):
    """Plan Data Model"""
    __tablename__ = 'plans'
    NumberPeople = Column(Integer, nullable=False)
    NumberMeals = Column(Integer, nullable=False)
    PrixPersonne = Column(Float, nullable=False)
    duration = Column(Integer, nullable=False)
    
    users = relationship("User", secondary="orders", overlaps="plans")