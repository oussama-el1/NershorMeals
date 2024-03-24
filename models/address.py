#!/usr/bin/python3
""" Create User Models """
from models.base import BaseData, Base
from sqlalchemy import Column, String
from models.user import User
from sqlalchemy.orm import relationship


class Address(BaseData, Base):
    """ Address Data class Model """
    __tablename__ = 'address'
    
    state = Column(String(45), nullable=False)
    city = Column(String(45), nullable=False)
    zipcode = Column(String(45), nullable=False)
    country = Column(String(45), nullable=False)
    users = relationship("User", backref="addres")