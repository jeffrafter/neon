FROM node:10.1.0

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN yarn

COPY . /usr/src/app

EXPOSE 3001

CMD [ "scripts/docker/run" ]
