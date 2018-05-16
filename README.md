# Node.js running on Alpine

Tags available:

- 0.12. Uses https://hub.docker.com/r/mhart/alpine-node/
- 4, 4.3
- 6, 6.6.0
- latest, 8

All images have the modifications needed to run applications on /var/www

Versions from 0.12 to 6 includes the following Node.js modules installed globally

express-generator bower mocha sinon should assert grunt-cli gulp node-gyp

Version 8 does not include grunt, gulp and bower

To build

    $ docker build --tag=luis/alpine-node .

Running
The image will run npm start on /var/www, whatever you throw at it it will run

### Note on 0.12

mhart/alpine-node/ is not an automated build, so I don't know what's installed in there.
Compile 0.12 directly.
