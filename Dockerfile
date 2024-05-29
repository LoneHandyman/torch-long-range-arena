FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip

WORKDIR /app

COPY requirements.txt /app

RUN python3 -m venv /app/venv
RUN source /app/venv/bin/activate  # Activate the virtual environment

COPY main.py /app

RUN /app/venv/bin/pip install -r /app/requirements.txt

RUN /app/venv/bin/python /app/main.py

ENTRYPOINT ["workdir", "/app"]
