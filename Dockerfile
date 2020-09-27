FROM python:3.8.5

WORKDIR /code

COPY requirements.txt /code
COPY fixtures.json /code

RUN pip install -r /code/requirements.txt

COPY . /code

CMD gunicorn api_yamdb.wsgi:application --bind 127.0.1.1:8000

EXPOSE 80 8000 768