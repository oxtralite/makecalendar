Calendar Demo
============

Based on [fullcalendar](arshaw.com/fullcalendar/)

###Where are the timezone touchpoints?

* Going into your database from seeds or by ingesting other apis
* Coming out of the database (usually UTC)
* On the server (usually UTC in prod, but not UTC in dev)
* Javascript Date object
* Components

###Javascript Date Object

Javascript Date objects are in the timezone of the browser... adjusted for daylight savings time at the date of the Date instance.

###Moment.js

[Moment.js](http://momentjs.com/)

