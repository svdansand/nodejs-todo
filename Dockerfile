FROM node:boron
# Create app directory
RUN mkdir -p /src/app
WORKDIR /src/app

# Install app dependencies
COPY package.json /src/app/
RUN npm install

# Bundle app source
COPY . /src/app

EXPOSE 8080
CMD [ "npm", "start" ]

#This app also requires MongoDB
#docker pull mongo