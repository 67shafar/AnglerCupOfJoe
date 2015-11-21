Web-seed assets/sass directory readme
=====================================

This directory contains the sass source that will be compiled and added to the 
app/assets/css directory using compass. 

Folders:

* /base
* /common
* /components
* /config
* /layout
* /pages (optional)
* /themes (optional)
* /vendors (optional)
* /vendors-extensions (optional)

/base
-----
Contains the scss that sets up the project. Boilerplate code, normalization as
well as typography (font-face imports).

/common
-------
Contains scss that is common across multiple folders, that can be put here for
simplicity. This is usually going to be mixins, functions, and placeholders. 
Contains partials for all three.

/components
-----------
Contains scss that is specific to components or modules on the website. Things
like carosels, sliders, widgets, etc...

/config
-------
Contains the scss that fits within the _config.scss partial or partials like it. 
Mostly comprises of variables that will be used througout the project.

/layout
-------
Contains scss used to specifically for parts of the layout such as footers,
headers, sidebars, forms, or possibly even the grid (if not using framework).

/pages
------
Contains scss for pages that are not like the other. Landing pages, and home 
pages often fit this category. Recommended that these files not be partials.

/themes
-------
Contains theme specific scss, if themes are applicable. Partials may or may not
make sense here, depending on the kind of theme. Color themes may be simple 
partials with variables that override the _config partial. 

/vendors
--------
Contains scss from third parties, such as bootstrap.css. Should not be in the 
form of a partial.

/vendors_extensions
-------------------
Contains scss partials that override or manipulate values in vendor scss files.