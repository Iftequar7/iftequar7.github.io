FROM node:14-alpine as build
RUN mkdir -p /usr/app
WORKDIR /usr/app
COPY . /usr/app
RUN npm install
RUN npm run build

FROM nginx
RUN rm -rf /usr/share/nginx/html/*
COPY --from=build /usr/app/build /usr/share/nginx/html
