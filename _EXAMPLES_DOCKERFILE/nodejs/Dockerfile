FROM node:14-slim

# set our node environment, either development or production
# defaults to production, compose overrides this to development on build and run
ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

# default to port 3000 for node, and 9229 and 9230 (tests) for debug
ARG PORT=3000
ENV PORT $PORT
EXPOSE $PORT 9229 9230

RUN npm i npm@latest -g

RUN mkdir /opt/node_app && chown node:node /opt/node_app
WORKDIR /opt/node_app

USER node
COPY --chown=node:node package.json package-lock.json* ./
RUN npm install --no-optional && npm cache clean --force
ENV PATH /opt/node_app/node_modules/.bin:$PATH

HEALTHCHECK --interval=30s CMD node healthcheck.js

WORKDIR /opt/node_app/app
COPY --chown=node:node . .

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD [ "node", "./bin/www" ]