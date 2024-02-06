FROM ubuntu:18.04

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
COPY . /usr/app/
EXPOSE 5000
WORKDIR /usr/app/
RUN apt-get update && \
    apt-get install -y python3-pip python3-dev && \
    pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r requirements.txt
CMD python3 flask_api.py