FROM node:14-alpine
RUN mkdir -p /usr/app
WORKDIR /usr/app
COPY . /usr/app
RUN nmp i
CMD ["nmp","start"]
