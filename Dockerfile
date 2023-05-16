FROM node:16

WORKDIR /usr/src/app
COPY continuous_testing/package*.json ./
RUN npm install
COPY continuous_testing .

EXPOSE 6379
CMD [ "npm", "start" ]