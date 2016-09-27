FROM alpine:edge
MAINTAINER Luis Elizondo "lelizondo@gmail.com"

ENV NODE_VERSION 6.6.0-r0

RUN apk add --no-cache nodejs=${NODE_VERSION} && \
		apk del make gcc g++ python && \
		rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp ; mkdir -p /var/www ; \
		npm install -g express-generator bower mocha sinon should assert grunt-cli gulp node-gyp nodemon

WORKDIR /var/www
EXPOSE 3000
CMD ["npm", "start"]
