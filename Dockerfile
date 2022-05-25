FROM python:3.10.2-slim-buster

ENV FLASK_APP=app
ENV FLASK_RUN_HOST=0.0.0.0

WORKDIR /flask_app

COPY ./pyproject.toml ./poetry.lock ./schema.sql ./init_db.py ./

RUN pip3 install poetry==1.1.13
RUN poetry config virtualenvs.create false
RUN poetry install

CMD ["flask", "run"]
