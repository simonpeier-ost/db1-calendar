/*
 * Tabellen erzeugen
 */

CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  firstname VARCHAR(64) NOT NULL,
  lastname VARCHAR(64) NOT NULL,
  email VARCHAR(64) NOT NULL UNIQUE,
  birthdate DATE
);

CREATE TABLE person_calendar (
  id INTEGER PRIMARY KEY,
  person INTEGER NOT NULL,
  calendar INTEGER NOT NULL
);

CREATE TABLE calendar (
  id INTEGER PRIMARY KEY,
  name VARCHAR(64) NOT NULL,
  description VARCHAR(254)
);

CREATE TABLE meeting (
  id INTEGER PRIMARY KEY,
  name VARCHAR(64) NOT NULL,
  start TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  duration INTERVAL NOT NULL,
  description VARCHAR(254),
  location VARCHAR(54),
  calendar INTEGER
);

CREATE TABLE task (
  id INTEGER PRIMARY KEY,
  name VARCHAR(64) NOT NULL,
  due TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  finished BOOLEAN NOT NULL,
  description VARCHAR(254),
  calendar INTEGER,
  meeting INTEGER
);