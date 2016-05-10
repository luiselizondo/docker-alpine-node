FROM alpine:3.3
MAINTAINER Luis Elizondo "lelizondo@gmail.com"

ENV NODE_VERSION 6.1.0
ENV NODE_URL https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.gz
ENV NODE_DIR /tmp/node-v${NODE_VERSION}

RUN echo "http://dl-1.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories; \
    echo "http://dl-2.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories; \
    echo "http://dl-3.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories; \
    echo "http://dl-4.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories; \
    echo "http://dl-5.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories && \
    apk add --update linux-headers make gcc g++ python curl libstdc++ libgcc && \
    curl -o /tmp/node-v${NODE_VERSION}.tar.gz ${NODE_URL} && \
    cd /tmp && \
    tar zxvf node-v${NODE_VERSION}.tar.gz && \
    cd ${NODE_DIR} && \
    ./configure --without-snapshot --with-intl=none  && \
    make && \
    make install && \
    apk del --update linux-headers make gcc g++ python curl libstdc++ libgcc clang libexecinfo && \
    rm -rf /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp ; mkdir -p /var/www ; \
	  npm install -g express-generator bower mocha sinon should assert grunt-cli gulp node-gyp

WORKDIR /var/www
EXPOSE 3000
CMD ["npm", "start"]
