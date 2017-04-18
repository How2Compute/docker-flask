# Import the python/pip 3.5 package
FROM python:3.5

# Move the source over to a folder called app in this container 
COPY source /app

# Copy over the requirements.txt folder into the app folder
COPY requirements.txt app/requirements.txt

# Make the source folder our environment and work directory.
ENV HOME /app
WORKDIR /app

# Install uwsgi
RUN pip install uwsgi

# Install the apps requirements
RUN pip install -r requirements.txt

# Expose port 8080 to connect to flask
EXPOSE 8080

# Start uwsgi (merely for rapid testing, production may require you to use nginx) when the container is run
ENTRYPOINT ["uwsgi", "--http", "0.0.0.0:8000", "--module", "app:app", "--processes", "1", "--threads", "4"]
