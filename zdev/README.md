Web-seed zdev directory readme
==============================

Folders:

* /coffee
* /sass
* /scripts
* /tests

/coffee
-------
This folder contains the coffeescript that will ultiamtely be compiled to
javascript in the public/app folder. The javascript is built by testing the 
browser with grunt. Compilation is done prior to the test server going online. 

/sass
-----
This directory contains the sass source that will be compiled and added to the 
app/assets/css directory using compass. 

/scripts
--------
This directory contains build scripts, tools, etc for running and testing the 
application of modifying development and production states. 

/tests
------
This directory contains tests which written in coffee and run by protractor,
mocha, chai, chai-as-promised and cucumber. Together these tools enable
e2e testing as well as unit testing, which is split between the features and
specs folders. Config holds configurations for the tools.