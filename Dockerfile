FROM woahbase/alpine-quasar
ADD ./ /src
RUN cd /src && npm install
WORKDIR /src
RUN quasar build
WORKDIR /src/dist/spa

CMD ["quasar","build"]
