FROM node:12.18.0-alpine
LABEL maintainer="kazuki728"

WORKDIR /app

RUN apk update && \
    apk upgrade && \
    apk add tzdata

RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo "Asia/Tokyo" > /etc/timezone && \
    apk del tzdata 

ADD ./app .
CMD [ "yarn", "start" ]

EXPOSE 5000