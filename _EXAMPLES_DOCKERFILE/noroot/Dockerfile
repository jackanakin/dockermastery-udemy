FROM node:16-bullseye-slim

EXPOSE 3000

RUN mkdir /app && chown -R node:node /app

WORKDIR /app

USER node

COPY --chown=node:node package*.json yarn*.lock ./

RUN npm ci --only=production && npm cache clean --force

COPY --chown=node:node . .

CMD ["npm", "start"]