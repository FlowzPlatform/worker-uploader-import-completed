FROM node:latest

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app/
RUN npm install



CMD node --max-old-space-size=16000 updateCompletedStatus.js
