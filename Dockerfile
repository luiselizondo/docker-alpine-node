FROM mhart/alpine-node:4
MAINTAINER Luis Elizondo "lelizondo@gmail.com"

RUN apk add --update make gcc g++ python && \
		apk del make gcc g++ python && \
		rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp ; mkdir -p /var/www ; \
		npm install -g express-generator bower mocha sinon should assert grunt-cli gulp node-gyp

WORKDIR /var/www
EXPOSE 3000
CMD ["npm", "start"]
