FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip curl wget

WORKDIR /app

COPY requirements.txt /app
COPY main.py /app
RUN pip install -r /app/requirements.txt
RUN /app/main.py

ENTRYPOINT ["workdir", "/app"]
