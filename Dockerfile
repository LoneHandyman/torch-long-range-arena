FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl wget

WORKDIR /app

COPY requirements.txt /app
COPY main.py /app
RUN pip install -r requirements.txt
RUN main.py

ENTRYPOINT ["workdir", "/app"]
