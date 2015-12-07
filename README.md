Web-seed assets/sass directory readme
=====================================

Folders:

* /public
* /zdev
* /ztest
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
This folder contains the orginal source that will enevitably be compiled into
the app that is stored in public/app. It also contains build scripts as well as
unit tests and integration tests. It may also contain scripts that clean up the 
project for production. i.e add and remove develpment tools and settings.

/ztest
------
This directory contains tests which written in coffee and run by protractor,
mocha, chai, chai-as-promised and cucumber. Together these tools enable
e2e testing as well as unit testing, which is split between the features and
specs folders. Config holds configurations for the tools.

.gitignore
-----------
This file ignores bower components and node modules so that they are not 
committed with git. 

bower.json, package.json
-------
Contains dependencies for bower/node packages. As well as some basic information
about Web-seed.

gruntfile.coffee
------
Contains basic settigns for serving this app for development.


SETUP
=====

Steps below need.... refining.... not sure what things work due to past projects.
Going to create a vanilla guide in a future revision, once the initial demo is
up and running.

* Install npm and gems
* Install compass globablly with gems
* Install bower globally with npm
* Install grunt and coffeescript globally with npm
* ---- You can now run bower install to install the bower packages
* ---- You can now run npm install to install the npm packages
* -------- You can now run grunt to service your website for testing
* -------- You can now run protractor to run the test cases

Commands
========

These commands are confiured in gruntfile.coffee and can be executed anyplace
in the project directory.


  grunt coffee{dev,dist}
  ------------
This command, compiles the coffeescript to javascript and adds it to the correct
location.


  grunt server
  ------------
This command runs a development serve on localhost:8000 .


  grunt selenium
  --------------
This command runs a browser that can be manipulated for cucumber/protractor
tests. It may be necessary to run this command prior to runing grunt e2e.


  grunt e2e
  ---------
This command runs end to end tests using cucumber and protractor.


  grunt unit
  ----------
This command runs specification/units test with mocha.


  grunt build
  -----------
This command builds the coffee script, sass/scss, haml and places them in the 
proper places in the app folder.


  grunt publish
  -------------
This command builds the coffeescript, sass/scss, and haml as well as minifies them.
Placed in proper app folders.


  grunt compass:{dev,dist}
  ------------------------
Allows use to compile sass/scss in dev or dist mode. Ex. grunt compass:dev


  grunt haml:{dev,dist}
  ---------------------
This command compiles haml into html and places in the public folder.


  grunt watch
  -----------
Automatically compiles coffescript, haml, scss/sass upon file save.

  grunt clean{all,build,dist}
  ---------------------------
Deletes Published/build/ extraneous files from the public folder.