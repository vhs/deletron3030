FROM node:latest

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN LIBSASS_EXT="no" npm install

CMD npm start
