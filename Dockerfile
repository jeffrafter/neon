FROM node

WORKDIR /app
COPY . .

RUN yarn install

EXPOSE 3000
CMD ./script/run