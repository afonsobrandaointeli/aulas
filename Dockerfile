FROM node:lts
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN ./node_modules/.bin/grunt
EXPOSE 1337
ENV NODE_ENV=production
CMD ["npm", "start"]
