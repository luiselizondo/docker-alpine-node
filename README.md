# Node.js 4 running on Alpine
This is basically https://hub.docker.com/r/mhart/alpine-node/ with the modifications needed to run applications on /var/www

Includes the following Node.js modules installed globally

express-generator bower mocha sinon should assert grunt-cli gulp node-gyp

To build

    $ docker build --tag=luis/alpine-node .

Running
The image will run npm start on /var/www, whatever you throw at it it will run
