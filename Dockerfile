FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
# We copy just the requirements.txt first to leverage Docker cache
COPY requirements.txt /home/amirsamantaray/app

#WORKDIR /home/amirsamantaray/app
COPY app.py /home/amirsamantaray/app
RUN cd /home/amirsamantaray/app
RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
    
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
