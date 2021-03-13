FROM openjdk:17-alpine3.12

ENV PYTHONUNBUFFERED=1
RUN apk --no-cache add curl \
  && apk add --update nodejs npm
  && apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
