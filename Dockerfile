# Use the Python3.7.2 image
FROM python:3.6.9-stretch

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app 
ADD . /app

# Install the dependencies

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
EXPOSE 5000
# run the command to start uWSGI
CMD ["uwsgi", "app.ini"]
