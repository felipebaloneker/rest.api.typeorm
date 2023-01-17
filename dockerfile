FROM node:16
WORKDIR /api
COPY ./package.json ./yarn.lock ./
RUN yarn
RUN yarn migration:run

COPY . .
RUN yarn build