FROM python:2-alpine
MAINTAINER Luis Elizondo "lelizondo@gmail.com"

ENV NODE_VERSION 6.7.0-r1

RUN apk add --no-cache nodejs=${NODE_VERSION} make gcc g++ git && \
		rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp ; mkdir -p /var/www ; \
		npm install -g express-generator bower mocha sinon should assert grunt-cli gulp node-gyp nodemon eslint

WORKDIR /var/www
EXPOSE 3000
CMD ["npm", "start"]
