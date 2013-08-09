Gestorneo
=========

About
-----

Gestorneo is a tournament management application for ultimate frisbee teams.

Features
--------

* ...

Installation
------------

### Prerequisites

* PHP
	* required extensions (non-exhaustive list, just the ones that needed to be enabled manually): php_gettext

### Database Configuration

* Create database structure with the file (create a new database and respective user if needed) ``./application/sql/gestorneo.sql``
** Optional: adjust the table names manually if you want to use a table prefix.
* Open file ``./application/config/database.php.sample``
	* Enter your database settings according to the documentation in the file
	* Save as file ``./application/config/database.php``
	
### Admin

* How can I create an admin user???


Development
-----------

### Tasks

* create installation wizard (similar to Wordpress) that creates the database tables
	* automatically add table prefix to the table creation script (``gestorneo.sql``)

### Installation under Windows with WAMP

* Apache > Alias directories > add a link such as ``http://localhost/gestorneo/ >> <local>\GitHub\gestorneo``
* Database
	* https://www.youtube.com/watch?v=DqEdTWjSnAQ

