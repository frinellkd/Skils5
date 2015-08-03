"""Models and database functions for Ratings project."""

from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import Integer, String, ForeignKey, or_, create_engine
from sqlalchemy.orm import sessionmaker




# This is the connection to the SQLite database; we're getting this through
# the Flask-SQLAlchemy helper library. On this, we can find the `session`
# object, where we do most of our interactions (like committing, etc.)

db = SQLAlchemy()


##############################################################################
# Part 1: Compose ORM

class Model(db.Model):

    __tablename__ = "models"

    id = db.Column(Integer, primary_key=True)
    year = db.Column(Integer, nullable=False)
    brand_name = db.Column(String(50), db.ForeignKey("brands.name"))
    name = db.Column(String(50), nullable=False)

    brand = db.relationship('Brand', backref=db.backref('model'))

class Brand(db.Model):

    __tablename__ = "brands"
    
    id = db.Column(Integer, primary_key=True)
    name = db.Column(String(50), nullable=False)
    founded = db.Column(Integer)
    headquarters = db.Column(String(50))
    discontinued = db.Column(Integer)

# End Part 1
##############################################################################
# Helper functions


def connect_to_db(app):
    """Connect the database to our Flask app."""

    # Configure to use our SQLite database
    app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///auto.db'
    engine = create_engine(app.config['SQLALCHEMY_DATABASE_URI'])
    Session = sessionmaker(bind=engine)
    session = Session()
    app.config['SQLALCHEMY_ECHO'] = False
    db.app = app
    db.init_app(app)


if __name__ == "__main__":
    # As a convenience, if we run this module interactively, it will leave
    # you in a state of being able to work with the database directly.

    # So that we can use Flask-SQLAlchemy, we'll make a Flask app
    from flask import Flask
    app = Flask(__name__)

    connect_to_db(app)
    print "Connected to DB."

def init_app():

    from flask import Flask
    app = Flask(__name__)

    connect_to_db(app)
    print "Connected to DB." 