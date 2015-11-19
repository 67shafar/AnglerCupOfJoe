Web-seed app directory readme
=============================

Folders:

* /common
* /components
* app.js

/common
-------
Contains reusable components or partials that are are accessed across the app
on multiple pages. Ex. sidebar directives, navbar directives, etc...

/components
-----------
Contains components or modules that are essentially their own miniture app.
There might be such a module for each page, contain in a folder. Ex:

*- -  components/
*- - - - - - - about/
*- - - - - - - - - controller.js
*- - - - - - - - - service.js
*- - - - - - - - - view.html 

app.js
-------
Where we setup the main app module and its dependencies. 
