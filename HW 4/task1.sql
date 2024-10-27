DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;


CREATE petPet (
  petname VARCHAR(20) PRIMARY KEY,
  owner VARCHAR(45),
  species VARCHAR(45),
  gender CHAR(1),
  birth DATE,
  death DATE
);

CREATE petEvent (
  petname VARCHAR(20) NOT NULL,
  eventdate DATE NOT NULL,
  eventtype VARCHAR(15) NOT NULL,
  remark VARCHAR(255),
  FOREIGN KEY (petname) REFERENCES petPet(petname)
  PRIMARY KEY (petname,eventype)
);

ALTER TABLE petPet
ADD CHECK (gender='M' OR gender='F');