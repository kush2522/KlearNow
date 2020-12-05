#Create a ubuntu base image with python 3 installed.
FROM python:3
RUN apt-get -y update
RUN pip3 install flask
#Set the working directory
WORKDIR /usr/src/app
#Expose the required port
EXPOSE 5000
#copy all the files
COPY . .
#Run the command
CMD ["python3", "./app.py"]
