# docker-flask
A repository with some basic code and a docker file to get you started with running flask in a dockerized environment!

## This image should merely be used for development and/or testing. It does not use nginx, so won't be able to handle a production workload.

## How to use docker-flask
#### Building the image
###### Linux
Once you've downloaded the repository, cd into it and run
*docker build -t something/flask-docker .*
This will build it to a docker image called something/flask-docker. Feel free to change this tag to your liking.
Now once it's built run it with the following:
*docker run -p 8080:8080 something/flask-docker*
###### Feel free to contribute instructions for you specific OS!

#### Developing with docker-flask
Developing ontop of docker-flask is super easy! Open up the source directory and start writing! This docker file will run the *app.py* file automatically. So please write your flask code in there. You can however create classes etc in other files, as these will get copied over. If you decide you want to use another pip package, like AsyncIO, please add the package name (and version) to the *requirements.txt* file in the root directory. For more information, please checkout the pip documentation here: https://pip.pypa.io/en/stable/user_guide/#requirements-files.

#### Bugs & Issues
If you have any problems with this package, please feel free to open up an issue! I'll do my best to assist you / fix the package. Please do keep it related to docker-flask, and not flask, sqlite or any other python related issues (that aren't only the case in this docker file).
