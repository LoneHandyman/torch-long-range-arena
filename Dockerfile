FROM nvidia/cuda:12.1.1-runtime-ubuntu20.04

RUN apt-get update && \
    apt-get install -y python3-pip python3-dev python-is-python3 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY main.py .

CMD ["python3", "main.py"]
