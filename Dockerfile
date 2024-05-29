FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl wget

RUN curl -fsSL https://repo.anaconda.com/installer/Anaconda3-latest.sh | bash -x

ENV PATH="/home/anaconda3/bin:$PATH"
ENV CONDA_HOME="/home/anaconda3"

WORKDIR /app

COPY requirements.txt /app
COPY main.py /app
RUN pip install -r /app/requirements.txt
RUN main.py

ENTRYPOINT ["workdir", "/app"]
