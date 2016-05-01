# Node.js running on Alpine

Tags available:

- 0.12. Uses https://hub.docker.com/r/mhart/alpine-node/
- latest, 4, 4.3
- 6, 6.0.0

All images have the modifications needed to run applications on /var/www

Includes the following Node.js modules installed globally

express-generator bower mocha sinon should assert grunt-cli gulp node-gyp

To build

    $ docker build --tag=luis/alpine-node .

Running
The image will run npm start on /var/www, whatever you throw at it it will run

### Todo

mhart/alpine-node/ is not an automated build, so I don't know what's intalled in there.
Compile 0.12 directly.
