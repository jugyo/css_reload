css_reload
=========

A Rails plugin to reload css per 5 seconds.

Usage
-----

Add a parameter "css_reload" to request url.

css_reload OFF:

    http://localhost:3000/foo

css_reload ON:

    http://localhost:3000/foo?css_reload

or if you want to specify the reload time to 2 sec:

    http://localhost:3000/foo?css_reload=2

It works on development environment.

Requirements
-----

- jQuery

Copyright (c) 2010 jugyo, released under the MIT license
