# Dockerfile for nodeJS Application
FROM alpine

#EXPOSE 8080

# Working directory
WORKDIR /app

COPY ./package.json /app/
RUN apk add --update nodejs nodejs-npm 
RUN npm install express
RUN npm install redis

COPY ./index.js /app/

CMD ["npm", "start"]

