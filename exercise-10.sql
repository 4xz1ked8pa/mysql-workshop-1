/* Create a data model representing a Hotel with Floors and Rooms
    + This model should provide answers to the following questions:
      - The list of Rooms available for rent on a specific date
      - The list of Rooms which can be occupied by at least 3 people on a specific date
      - The amount of unrentable Rooms (janitor closets, public laundry room, gym, etc.)
      - The amount of Rooms having a private Kitchen
      - The average amount of windows per Floor
      - The amount of Floors having Rooms with carpets */

CREATE DATABASE hotel;

CREATE TABLE hotel.Rooms (id INT auto_increment PRIMARY KEY, floorId INT, capacity INT,  rentableType BOOLEAN, windowsCount INT, hasCarpet BOOLEAN, privateKitchen BOOLEAN, FOREIGN KEY floorId REFERENCES hotel.Floors(id));
CREATE TABLE hotel.Bookings (id INT auto_increment PRIMARY KEY roomId, startDate DATETIME, endDate DATETIME, FOREIGN KEY roomId REFERENCES hotel.Rooms(id));

/* The list of Rooms available for rent on a specific date */
SELECT * FROM hotel.Bookings WHERE startDate > 'November 12 2012' OR endDate < 'November 12 2012';

/* The list of Rooms which can be occupied by at least 3 people on a specific date */


/* The amount of unrentable Rooms (janitor closets, public laundry room, gym, etc.) */
SELECT * FROM hotel.Rooms WHERE rentableType = true;

/* The amount of Rooms having a private Kitchen */
SELECT * FROM hotel.Rooms WHERE privateKitchen = true;

/* The average amount of windows per Floor */


/* The amount of Floors having Rooms with carpets */
SELECT * FROM hotel.Rooms WHERE hasCarpet = true;
