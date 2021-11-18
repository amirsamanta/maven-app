FROM node:latest as node
RUN mkdir -p /app
WORKDIR /app
COPY package*.json /app/
RUN npm install 
COPY . /app/
EXPOSE 4200
CMD ["npm", "run", "start"]

#FROM ubuntu:16.04

#RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
# We copy just the requirements.txt first to leverage Docker cache
#COPY requirements.txt /home/amirsamantaray/app
#COPY app.py /opt/

#ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8082

#WORKDIR /home/amirsamantaray/app
#COPY app.py /home/amirsamantaray/app
#RUN cd /home/amirsamantaray/app
#RUN pip install -r /home/amirsamantaray/app/requirements.txt

#ENTRYPOINT [ "python" ]

#CMD [ "app.py" ]
    
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
