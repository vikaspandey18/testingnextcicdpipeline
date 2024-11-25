FROM node:22.11.0 AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm build
EXPOSE 3000
CMD ['npm','start']