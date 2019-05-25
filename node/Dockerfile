FROM node:lts-alpine
VOLUME /storage
WORKDIR /src
COPY src/package*.json ./
RUN npm install
COPY src/ .
EXPOSE 3000
CMD [ "npm", "start"  ]
