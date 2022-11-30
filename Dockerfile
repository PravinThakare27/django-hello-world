FROM python:3.6

MAINTAINER Pravin Thakare "Pthakare27@gmail.com"

COPY requirements.txt /home/app/webapp

RUN mkdir /home/app/webapp

WORKDIR /home/app/webapp

EXPOSE 8080

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "manage.py","runserver","0.0.0.0:8080"]
