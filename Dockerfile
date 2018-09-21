FROM node:9.11-carbon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN SKIP_DOWNLOAD=1 yarn

COPY . /usr/src/app

EXPOSE 3001


CMD [ "scripts/docker/run" ]
