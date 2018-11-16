FROM node:8

# Create app directory
#WORKDIR /usr/src/app
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY package*.json ./
COPY package*.json /app

RUN npm install
# If you are building your code for production
# RUN npm install

# Bundle app source
COPY . /app
CMD node server.js

EXPOSE 8080
#CMD [ "npm", "start" ]