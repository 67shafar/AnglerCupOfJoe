Web-seed zdev/coffee directory readme
=====================================

This folder contains the coffeescript that will ultiamtely be compiled to
javascript in the public/app folder. The javascript is built by testing the 
browser with grunt. Compilation is done prior to the test server going online. 

Folders:

* /common
* /components
* /partials
* app.coffee

/common
-------
Contains reusable components or partials that are are accessed across the app
on multiple pages. Ex. sidebar directives, navbar directives, etc...

/components
-----------
Contains components or modules that are essentially their own miniture app.
There might be such a module for each page, contain in a folder. Ex:

*- -  components/
*- - - - - - - home/
*- - - - - - - - - controller.coffee
*- - - - - - - - - service.coffee
*- - - - - - - - - view.html 
*- - - - - - - - - style.sass

/partials
Common and reusable sass partials that are accessed by style.sass files in component folders, and main.sass.

app.coffee
-------
Where we setup the main app module and its dependencies. 

main.sass
---------
The main sass file that compiles into the common styles that are constant across the entire app. 