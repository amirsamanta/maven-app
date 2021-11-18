
    
#FROM python:3.8

# set work directory
#RUN mkdir -p /home/app/webapp
# where your code lives
#WORKDIR /home/app/webapp

# set environment variables
#ENV PYTHONDONTWRITEBYTECODE 1
#ENV PYTHONUNBUFFERED 1

# install dependencies
#RUN pip install --upgrade pip
# copy project
#COPY /var/lib/jenkins/workspace/DockerImage/app.py /home/app/webapp
#COPY /var/lib/jenkins/workspace/DockerImage/requirements.txt /home/app/webapp
#RUN pip install
#CMD streamlit run app.py
