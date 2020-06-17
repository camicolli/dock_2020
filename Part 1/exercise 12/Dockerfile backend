#Let's use apline instead of ubuntu since it's lighter
FROM alpine

WORKDIR /usr/app

#we need apk instead of ubuntu's apt-get 
RUN apk update && apk add nodejs nodejs-npm git 
RUN git clone https://github.com/docker-hy/backend-example-docker . 
RUN npm install

#exposing port 8000
EXPOSE 8000

#and giving command npm start
CMD ["npm", "start"]
