/* Create a data model representing a Barn with Chickens :hatching_chick:
  - This model should provide answers to the following questions:
  - How many rooster, hen and chicks existed in the Barn on a specific date
  - How many chicks will come to age on a specific date */

CREATE DATABASE barn;

CREATE TABLE barn.Chickens (id INT auto_increment PRIMARY KEY, type ENUM('rooster','hen','chick'), birthDate DATE);
CREATE TABLE barn.Dates (id INT auto_increment PRIMARY KEY, dateValue DATE, chickenId INT, FOREIGN KEY chickenId REFERENCES barn.Chickens(id));

/* How many rooster, hen and chicks existed in the Barn on a specific date */
SELECT * FROM barn.Dates WHERE dateValue = 'November 12 2012'

/* How many chicks will come to age on a specific date */
SELECT * FROM barn.Chickens WHERE birthDate = 'March 15 2012';
