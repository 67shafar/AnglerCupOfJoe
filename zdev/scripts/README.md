Web-seed zdev/scripts directory readme
======================================

This directory contains build scripts, tools, etc for running and testing the 
application of modifying development and production states. 

Scripts are assumed to be run from the top of the dev directory. For example:

>> cd zdev
>> ./scripts/test

Scripts:

* test

test
----
This script runs a test using the protractor, chai, mocha, and mocha-cucumber.
Protractor helps with e2e testing using a browser driver. Chai enables expect
functions, for which mocha provides no "support" (by design). Mocha is used
for unit tests, which are seperated from the higher level features that are 
run using the mocha-cucumber plugin that allow for better BDD style testing.