# Node.js running on Alpine
This is basically https://hub.docker.com/r/mhart/alpine-node/ with the modifications needed to run applications on /var/www

To build

    $ docker build --tag=luis/alpine-node .

Running
The image will run npm start on /var/www, whatever you throw at it it will run
