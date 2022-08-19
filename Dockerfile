FROM python:3.10

WORKDIR /app/

ENV POETRY_VERSION=1.1.14
RUN pip3 install poetry==$POETRY_VERSION
RUN poetry config virtualenvs.create false

COPY pyproject.toml .

RUN poetry install

COPY . /app

