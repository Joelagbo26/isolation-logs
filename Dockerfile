FROM node:latest as build
RUN mkdir /app
WORKDIR /app
COPY . .
RUN npm install
RUN yarn build
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
