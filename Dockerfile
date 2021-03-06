FROM node:12.16.1

WORKDIR /usr/src/app

ENV NODE_ENV production

COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 3000
ENV PORT 3000
CMD [ "npm", "start" ]
