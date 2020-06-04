FROM node:lts-alpine

WORKDIR /usr/src/app

RUN mkdir node_modules && chown -R node:node node_modules

USER node

COPY package*.json yarn.* ./

RUN yarn

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "yarn", "start" ]

