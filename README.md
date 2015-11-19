Web-seed assets/sass directory readme
=====================================

Folders:

* /public
* /zdev
* .gitignore
* bower.json
* package.json
* config.rb

/public
-----
Contains the app folder as well as the assets folder. This is the part of the 
project that will enevitably be accessible to the public on the server.

/zdev
-------
This folder contains build scripts as well as unit tests and integration tests.
It may also contain scripts that clean up the project for production. i.e add
and remove develpment tools and settings.

.gitignore
-----------
This file ignores bower components and node modules so that they are not 
committed with git. 

bower.json, package.json
-------
Contains dependencies for bower/node packages. As well as some basic information
about Web-seed.

config.rb
-------
Contains settings for compass which this project uses to compile sassy css.

gruntfile.js
------
Contains basic settigns for serving this app for development.


SETUP
=====

* install npm and gems
* install compass globablly with gems
* ---- You can now run zdev/csass to compile sass
* ---- You can now run zdev/wsass to compile sass as you make changes
* install bower globally with npm
* ---- You can now run bower install -save to install the bower packages
* ---- You can now run npm install --save-dev to install the npm packages
* -------- You can now run grunt to service your website for testing