/*
 * Authors: Oliver Dietsche, Simon Peier
 */

CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  firstname TEXT NOT NULL,
  lastname TEXT NOT NULL,
  email TEXT NOT NULL UNIQUE,
  birthdate DATE
);

CREATE TABLE person_calendar (
  id INTEGER PRIMARY KEY,
  person INTEGER NOT NULL,
  calendar INTEGER NOT NULL
);

CREATE TABLE calendar (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT
);

CREATE TABLE person_meeting (
  id INTEGER PRIMARY KEY,
  person INTEGER NOT NULL,
  meeting INTEGER NOT NULL
);

CREATE TABLE meeting (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  start TIMESTAMP NOT NULL,
  duration INTERVAL NOT NULL,
  description TEXT,
  location TEXT,
  calendar INTEGER NOT NULL,
  scheduler INTEGER NOT NULL
);

CREATE TABLE task (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  due TIMESTAMP NOT NULL,
  finished BOOLEAN NOT NULL,
  description TEXT,
  calendar INTEGER NOT NULL,
  assignee INTEGER NOT NULL,
  meeting INTEGER
);