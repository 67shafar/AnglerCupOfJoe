Web-seed zdev/tests directory readme
=====================================

This directory contains tests which written in coffee and run by protractor,
mocha, chai, chai-as-promised and mocha-cucumber. Together these tools enable
e2e testing as well as unit testing, which is split between the features and
specs folders. Config holds configurations for the tools.

Folders:

* /config
* /features
* /specs

/config
-------
Configuration files are held here for the TDD and BDD tools. 

/features
---------
Holds the higherlevel feature tests that use a cucumber like syntax with mocha.
These tests are run with a call to protractor in the console, or a test script.

/specs
------
Holds the lowerlevel unit tests using standard mocha syntax and keywords. These
tests are run with a call to protractor in the console, or a test script.