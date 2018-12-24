FROM node:latest

RUN npm install -g json-server

COPY db.json /
ENTRYPOINT ["json-server","--watch","db.json", "-H", "0.0.0.0"]
