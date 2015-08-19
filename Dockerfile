FROM node:latest
COPY ./package.json ./src/package.json
WORKDIR /src
#RUN npm install
COPY ./ /src
#RUN npm install -g bower
#RUN bower install --allow-root
COPY ./ /src
CMD node ./index.js
