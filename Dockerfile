FROM node:14-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
#EXPOSE 8080
EXPOSE 3000

ENV REDIS_ADDRESS=redis
ENV REDIS_PORT=6379

CMD ["npm", "start"]
