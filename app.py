#Import the flask module
from flask import Flask

#Create a Flask constructor. It takes name of the current module as the argument
app = Flask(_name_)

#Create a route decorator to tell the application, which URL should be called for the #described function and define the function

@app.route('/')
def tutorialspoint():
        return 'Hello world. This is demo task done for KlearNow.'

#Create the main driver function
if _name_ == '_main_':
#call the run method
        app.run(host='0.0.0.0')
