FROM python:2.7-alpine3.9
MAINTAINER Luis Elizondo "lelizondo@gmail.com"

ENV NODE_VERSION 10.14.2-r0

RUN apk add --no-cache nodejs=${NODE_VERSION} make gcc g++ git npm && \
	rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp ; mkdir -p /var/www ; \
	npm install -g express-generator mocha sinon should assert node-gyp nodemon eslint typescript

WORKDIR /var/www
EXPOSE 3000
CMD ["npm", "start"]
