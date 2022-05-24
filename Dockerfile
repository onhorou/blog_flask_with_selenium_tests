FROM python:3.10.2-slim-buster

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY . .

RUN pip3 install poetry==1.1.13
RUN poetry config virtualenvs.create false
RUN poetry install

RUN python init_db.py

CMD ["flask", "run"]
