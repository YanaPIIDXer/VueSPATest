FROM --platform=linux/x86_64 node:10.15.3-alpine

WORKDIR /app

RUN npm install -g @vue/cli

ADD ./src/package.json /app
ADD ./src/package-lock.json /app
ADD ./src/babel.config.js /app
RUN npm install

ADD ./src /app

CMD ["npm", "run", "serve"]
