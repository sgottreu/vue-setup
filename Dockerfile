FROM node:lts-alpine

# install simple http server for serving static content
RUN npm install -g http-server
RUN npm install -g @vue/cli

RUN apk add --no-cache bash

# make the 'app' folder the current working directory
WORKDIR /app
RUN mkdir dist

# install project dependencies

EXPOSE 8080
CMD [ "http-server", "dist" ]
