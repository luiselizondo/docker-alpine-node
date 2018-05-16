FROM python:2.7-alpine3.7
MAINTAINER Luis Elizondo "lelizondo@gmail.com"

ENV NODE_VERSION 8.9.3-r1

RUN apk add --no-cache nodejs=${NODE_VERSION} make gcc g++ git && \
		rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp ; mkdir -p /var/www ; \
		npm install -g express-generator mocha sinon should assert node-gyp nodemon eslint

WORKDIR /var/www
EXPOSE 3000
CMD ["npm", "start"]
