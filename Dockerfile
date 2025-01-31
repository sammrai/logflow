FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

ENTRYPOINT ["/bin/sh", "-c", "export LOG_FILE=/log/$1 && node server.js", "--"]
