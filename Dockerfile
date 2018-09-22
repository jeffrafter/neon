FROM node AS base
WORKDIR /app
COPY package.json .
 
FROM base AS dependencies
RUN yarn install --production --no-progress 
RUN cp -R node_modules prod_node_modules


FROM base AS release
COPY --from=dependencies /app/prod_node_modules ./node_modules
COPY . .
EXPOSE 3000
CMD ./script/docker/run
