"""

This file is the place to write solutions for the
skills assignment called skills-sqlalchemy. Remember to
consult the exercise directions for more complete
explanations of the assignment.

All classes from model.py are being imported for you
here, so feel free to refer to classes without the
[model.]User prefix.

"""

from model import *

init_app()

# -------------------------------------------------------------------
# Start here.


# Part 2: Write queries

# Get the brand with the **id** of 8.
Brand.query.get(8)

# Get all models with the **name** Corvette and the **brand_name** Chevrolet.
Model.query.filter_by(brand_name='Chevrolet').filter_by(name='Corvette').all()


# Get all models that are older than 1960.
Model.query.filter(Model.year > 1960).all()

# Get all brands that were founded after 1920.
Brand.query.filter(Brand.founded > 1920).all()

# Get all models with names that begin with "Cor".
Model.query.filter(Model.name.like('%cor%')).all()

# Get all brands with that were founded in 1903 and that are not yet discontinued.
Brand.query.filter(Brand.founded > 1903).filter(Brand.discontinued.is_(None)).all()

# Get all brands with that are either discontinued or founded before 1950.
Brand.query.filter(or_(Brand.founded < 1950, Brand.discontinued)).all()

# Get any model whose brand_name is not Chevrolet.
Model.query.filter(Model.brand_name != "Chevrolet").all()

# Fill in the following functions. (See directions for more info.)

def get_model_info(year):
    '''Takes in a year, and prints out each model, brand_name, and brand
    headquarters for that year using only ONE database query.'''

    old = db.session.query(Model.name, Model.brand_name, 
        Brand.headquarters).join(Brand).filter(Brand.founded == year).all()
    
    for item in old:
        print item.name, item.brand_name, item.headquarters

def get_brands_summary():
    '''Prints out each brand name, and each model name for that brand
     using only ONE database query.'''

    brandinfo = db.session.query(Brand.name, Model.name).outerjoin(Model).order_by(Brand.name).all()

    for info in brandinfo:
        print info[0], info.name 


# -------------------------------------------------------------------


# Part 2.5: Advanced and Optional
def search_brands_by_name(mystr):
    
    return Brand.query.filter(or_(Brand.name == mystr, Brand.name.contains(mystr))).all()


def get_models_between(start_year, end_year):


    return Model.query.filter(Model.year > start_year).filter(Model.year < end_year).all()
# -------------------------------------------------------------------

# Part 3: Discussion Questions (Include your answers as comments.)

# 1. What is the returned value and datatype of ``Brand.query.filter_by(name='Ford')``?

# A list of objects where the brand name is Ford.

# 2. In your own words, what is an association table, and what *type* of relationship
# does an association table manage?

# An association table sets forth the relationship between class objects.  It manages one to one, 
# many to one, one to many and many to many relationships. 
