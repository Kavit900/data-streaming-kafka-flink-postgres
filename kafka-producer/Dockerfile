From python:3.8-slim

COPY requirements.txt .

RUN set -ex; \
  	pip install --no-cache-dir -r requirements.txt

# Copy resources
WORKDIR /
COPY wait-for-it.sh wait-for-it.sh

ADD python-producer.py .

CMD ./wait-for-it.sh -s -t 30 $ZOOKEEPER_SERVER -- ./wait-for-it.sh -s -t 30 $KAFKA_SERVER -- python -u python-producer.py