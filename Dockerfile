FROM python:3.8.2-alpine

WORKDIR /user/src/app

COPY . /user/src/app

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py

EXPOSE 5000

RUN flask init-db

CMD ["flask", "run", "--host=0.0.0.0"]

