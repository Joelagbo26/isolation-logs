FROM node:12 as build
RUN mkdir /app
WORKDIR /app
COPY package.json
RUN npm install
COPY . /app
EXPOSE 3000
CMD yarn start
