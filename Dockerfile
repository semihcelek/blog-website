FROM node:12-buster-slim AS build

WORKDIR /usr/src/site
COPY ["package.json", "./"]
COPY . . 
RUN npm install && npm run build

FROM nginx:alpine 

COPY --from=build /usr/src/site/public /usr/share/nginx/html