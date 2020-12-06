#Import the flask module
from flask import Flask

#Create a Flask constructor. It takes name of the current module as the argument
app = Flask(__name__)

#Create a route decorator to tell the application, which URL should be called for the #described function and define the function

@app.route('/')
def tutorialspoint():
   return 'Hello World. Task is successfully implemented over EKS'

    #Create the main driver function
if __name__ == '__main__' :
     #call the run method
  app.run(host="0.0.0.0", debug=True)
