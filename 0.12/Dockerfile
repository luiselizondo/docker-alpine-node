FROM mhart/alpine-node:0.12
MAINTAINER Luis Elizondo "lelizondo@gmail.com"

RUN rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp ; mkdir -p /var/www ; \
		npm install -g express-generator bower mocha sinon should assert grunt-cli gulp node-gyp

WORKDIR /var/www
EXPOSE 3000
CMD ["npm", "start"]
