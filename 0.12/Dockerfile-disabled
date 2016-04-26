FROM alpine:edge

MAINTAINER Luis Elizondo "lelizondo@gmail.com"

ENV NODE_VERSION 0.12.13
ENV NODE_URL https://nodejs.org/download/release/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz
ENV NODE_DIR /tmp/node-v${NODE_VERSION}-linux-x64

RUN apk add --update curl && \
    curl -o /tmp/node-v${NODE_VERSION}-linux-x64.tar.gz ${NODE_URL}  && \
    cd /tmp && \
    tar zxvf node-v${NODE_VERSION}-linux-x64.tar.gz && \
    cd ${NODE_DIR} && \
    cp -R ${NODE_DIR}/lib/node_modules/ /usr/local/lib/ && \
    cp -R ${NODE_DIR}/include/node /usr/local/include/ && \
    mkdir /usr/local/man/man1 && \
    cp -R ${NODE_DIR}/share/man/man1/node.1 /usr/local/man/man1/ && \
    cp ${NODE_DIR}/bin/node /usr/local/bin/ && \
    ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm && \
		apk del curl make gcc g++ python && \
		rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp ; mkdir -p /var/www ; \
		npm install -g express-generator bower mocha sinon should assert grunt-cli gulp node-gyp

WORKDIR /var/www
EXPOSE 3000
CMD ["npm", "start"]
