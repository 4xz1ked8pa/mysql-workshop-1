/* Reflect the data model shown in schema/addressbook_denormalized.png within database decodemtl_addressbook
    - Account.id is a primary auto-increment key
    - AddressBook.id is a primary auto-increment key
    - Entry.id is a primary auto-increment key
    - Entry.type is an ENUM column permitting home, work and other
    - Entry.subtype is an ENUM column permitting phone, address and email
*/

ALTER TABLE decodemtl_addressbook.Account ADD (email VARCHAR(255),password VARCHAR(40),createdOn DATETIME,modifiedOn DATETIME);

ALTER TABLE decodemtl_addressbook.AddressBook ADD (accountId INT, name VARCHAR(255), createdOn DATETIME, modifiedOn DATETIME);

ALTER TABLE decodemtl_addressbook.Entry ADD (addressBookId INT, firstName VARCHAR(255), lastName VARCHAR(255), birthday DATETIME, type ENUM('home','work','other'), subtype ENUM('phone','address','email'), contentLineOne VARCHAR(255), contentLineTwo VARCHAR(255), contentLineThree VARCHAR(255), contentLineFour VARCHAR(255), contentLineFive VARCHAR(255));
