FROM node:17-stretch

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN npm config set unsafe-perm true
RUN npm install -g full-icu

ENV NODE_ICU_DATA=/home/node/.npm-global/lib/node_modules/full-icu

RUN npm config set unsafe-perm false
