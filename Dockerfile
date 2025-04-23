FROM node:22-slim AS build

WORKDIR /app

COPY package*.json ./
COPY yarn.lock ./
RUN yarn install

COPY . .

ENV NODE_ENV=production
ENV PORT=1337
EXPOSE 1337

CMD ["yarn", "start"]