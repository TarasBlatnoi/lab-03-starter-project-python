FROM python:3.12.2

WORKDIR /app

COPY . /app

RUN python -m venv ./.venv

RUN . ./.venv/bin/activate

RUN pip install -r backend.txt --no-deps

CMD uvicorn spaceship.main:app --host=0.0.0.0 --port=8080