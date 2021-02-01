# JDBC Demo

It's an app to demonstrate basic communication between database (Postgres) and java application.

## Used components

* Java
* PostgreSQL
* Maven
* Docker
* JDBC

## Running the application

Before any run you need to setup a postgres first. To help with that you can use script `run-postgres.sh`, if you work on Windows you need to prepare the script by yourself. Next you can connect to the database where:

* User = root
* Password = toor
* DB Name = application
* Host = localhost
* Port = 5432

The connection string is provided in an application.
