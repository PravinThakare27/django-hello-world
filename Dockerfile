FROM python:3.6

MAINTAINER Pravin Thakare "Pthakare27@gmail.com"

COPY requirements.txt /app

WORKDIR /app

EXPOSE 5000

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "manage.py","runserver","0.0.0.0:8080"]
