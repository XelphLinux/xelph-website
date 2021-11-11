FROM woahbase/alpine-quasar

ADD package.json /tmp/package.json

#RUN rm -rf dist

RUN cd /tmp && npm install -q

ADD ./ /src
RUN rm -rf /src/node_modules && cp -a /tmp/node_modules /src/

WORKDIR /src

RUN quasar build

WORKDIR /src/dist/spa

CMD ["quasar","build"]
