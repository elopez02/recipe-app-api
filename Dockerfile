FROM Python:3.8-alpine
MAINTAINER Sinci App Developer

ENV OYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN MKDIR /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user