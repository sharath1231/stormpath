FROM node:argon

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ./dockapp/ ./
RUN npm install

ENV STORMPATH_CLIENT_APIKEY_ID=1K6UDJ7BWHJHH0FG5WEIZX341
ENV STORMPATH_CLIENT_APIKEY_SECRET=tjfSSmf1eI31wrjfXq5OvXWSMWh62qii6QGCqE9pws0
ENV STORMPATH_APPLICATION_HREF=https://api.stormpath.com/v1/applications/2NBGjjxAxc2zq7cEChI9FI

RUN npm install -g nodemon

EXPOSE 3000 
CMD ["nodemon", "server.js"]
