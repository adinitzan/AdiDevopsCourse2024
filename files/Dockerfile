FROM python:3.8.2-alpine

WORKDIR /user/src/app

COPY DevopsCourse2024/ .

RUN pip install --editable .

ENV FLASK_APP=flaskr

ENV FLASK_ENV=development

EXPOSE 5000

RUN flask init-db

CMD ["python3", "-m","flask", "run", "--host=0.0.0.0"]

