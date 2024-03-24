#!/usr/bin/python3
""" Create User Models """
from models.base import BaseData, Base
from sqlalchemy import Column, String
from sqlalchemy import Column, String, ForeignKey
from sqlalchemy.orm import relationship


class User(BaseData, Base):
    __tablename__ = 'users'

    FirstName = Column(String(45), nullable=False)
    LastName = Column(String(45), nullable=False)
    tel = Column(String(45), nullable=False)
    address_id = Column(String(60), ForeignKey('address.id'), nullable=False)
    
    # Define backref for orders placed by a user
    plans = relationship("Plan", secondary="orders", overlaps="users")