FROM node:14-alpine
RUN mkdir -p /usr/app
WORKDIR /usr/app
COPY . /usr/app
RUN npm i
CMD ["npm","start"]
