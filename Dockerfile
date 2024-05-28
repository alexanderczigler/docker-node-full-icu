FROM node:22-bullseye

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN npm install -g full-icu

ENV NODE_ICU_DATA=/home/node/.npm-global/lib/node_modules/full-icu
