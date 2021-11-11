FROM node:16-alpine
RUN npm install -g npm@8.1.3
RUN npm install -g @quasar/cli
ADD ./ /src
RUN cd /src && npm install
WORKDIR /src
RUN quasar build
WORKDIR /src/dist/spa

CMD ["quasar","build"]
