FROM node:12.18.0-alpine

WORKDIR /app

ADD ./app .
CMD [ "yarn", "start" ]

EXPOSE 5000