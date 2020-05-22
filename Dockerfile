FROM node:latest

ENV LIBSASS_EXT="no"
ENV NODE_ENV="production"

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm install

EXPOSE 3000

CMD npm start
