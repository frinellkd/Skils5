PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Models (
    id INTEGER PRIMARY KEY,
    year INT(4) NOT NULL,
    brand_name VARCHAR(50) NULL,
    name VARCHAR(50) NOT NULL
);
INSERT INTO "Models" VALUES(1,1909,'Ford','Model T');
INSERT INTO "Models" VALUES(2,1926,'Chrysler','Imperial');
INSERT INTO "Models" VALUES(3,1948,'Citroën','2CV');
INSERT INTO "Models" VALUES(4,1950,'Hillman','Minx Magnificent');
INSERT INTO "Models" VALUES(5,1953,'Chevrolet','Corvette');
INSERT INTO "Models" VALUES(6,1954,'Chevrolet','Corvette');
INSERT INTO "Models" VALUES(7,1954,'Cadillac','Fleetwood');
INSERT INTO "Models" VALUES(8,1955,'Chevrolet','Corvette');
INSERT INTO "Models" VALUES(9,1955,'Ford','Thunderbird');
INSERT INTO "Models" VALUES(10,1956,'Chevrolet','Corvette');
INSERT INTO "Models" VALUES(11,1957,'Chevrolet','Corvette');
INSERT INTO "Models" VALUES(12,1957,'BMW','600');
INSERT INTO "Models" VALUES(13,1958,'Chevrolet','Corvette');
INSERT INTO "Models" VALUES(14,1958,'BMW','600');
INSERT INTO "Models" VALUES(15,1958,'Ford','Thunderbird');
INSERT INTO "Models" VALUES(16,1959,'Austin','Mini');
INSERT INTO "Models" VALUES(17,1959,'Chevrolet','Corvette');
INSERT INTO "Models" VALUES(18,1959,'BMW','600');
INSERT INTO "Models" VALUES(19,1960,'Chevrolet','Corvair');
INSERT INTO "Models" VALUES(20,1960,'Chevrolet','Corvette');
INSERT INTO "Models" VALUES(21,1960,'Fillmore','Fillmore');
INSERT INTO "Models" VALUES(22,1960,'Fairthorpe','Rockette');
INSERT INTO "Models" VALUES(23,1961,'Austin','Mini Cooper');
INSERT INTO "Models" VALUES(24,1961,'Studebaker','Avanti');
INSERT INTO "Models" VALUES(25,1961,'Pontiac','Tempest');
INSERT INTO "Models" VALUES(26,1961,'Chevrolet','Corvette');
INSERT INTO "Models" VALUES(27,1962,'Pontiac','Grand Prix');
INSERT INTO "Models" VALUES(28,1962,'Chevrolet','Corvette');
INSERT INTO "Models" VALUES(29,1962,'Studebaker','Avanti');
INSERT INTO "Models" VALUES(30,1962,'Buick','Special');
INSERT INTO "Models" VALUES(31,1963,'Austin','Mini');
INSERT INTO "Models" VALUES(32,1963,'Austin','Mini Cooper S');
INSERT INTO "Models" VALUES(33,1963,'Rambler','Classic');
INSERT INTO "Models" VALUES(34,1963,'Ford','E-Series');
INSERT INTO "Models" VALUES(35,1963,'Studebaker','Avanti');
INSERT INTO "Models" VALUES(36,1963,'Pontiac','Grand Prix');
INSERT INTO "Models" VALUES(37,1963,'Chevrolet','Corvair 500');
INSERT INTO "Models" VALUES(38,1963,'Chevrolet','Corvette');
INSERT INTO "Models" VALUES(39,1964,'Chevrolet','Corvette');
INSERT INTO "Models" VALUES(40,1964,'Ford','Mustang');
INSERT INTO "Models" VALUES(41,1964,'Ford','Galaxie');
INSERT INTO "Models" VALUES(42,1964,'Pontiac','GTO');
INSERT INTO "Models" VALUES(43,1964,'Pontiac','LeMans');
INSERT INTO "Models" VALUES(44,1964,'Pontiac','Bonneville');
INSERT INTO "Models" VALUES(45,1964,'Pontiac','Grand Prix');
INSERT INTO "Models" VALUES(46,1964,'Plymouth','Fury');
INSERT INTO "Models" VALUES(47,1964,'Studebaker','Avanti');
INSERT INTO "Models" VALUES(48,1964,'Austin','Mini Cooper');
CREATE TABLE Brands (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    founded INT(4),
    headquarters VARCHAR(50),
    discontinued INT(4)
);
INSERT INTO "Brands" VALUES(1,'Ford',1903,'Dearborn, MI',NULL);
INSERT INTO "Brands" VALUES(2,'Chrysler',1925,'Auburn Hills, Michigan',NULL);
INSERT INTO "Brands" VALUES(3,'Citroën',1919,'Saint-Ouen, France',NULL);
INSERT INTO "Brands" VALUES(4,'Hillman',1907,'Ryton-on-Dunsmore, England',1981);
INSERT INTO "Brands" VALUES(5,'Chevrolet',1911,'Detroit, Michigan',NULL);
INSERT INTO "Brands" VALUES(6,'Cadillac',1902,'New York City, NY',NULL);
INSERT INTO "Brands" VALUES(7,'BMW',1916,'Munich, Bavaria, Germany',NULL);
INSERT INTO "Brands" VALUES(8,'Austin',1905,'Longbridge, England',1987);
INSERT INTO "Brands" VALUES(9,'Fairthorpe',1954,'Chalfont St Peter, Buckinghamshire',1976);
INSERT INTO "Brands" VALUES(10,'Studebaker',1852,'South Bend, Indiana',1967);
INSERT INTO "Brands" VALUES(11,'Pontiac',1926,'Detroit, MI',2010);
INSERT INTO "Brands" VALUES(12,'Buick',1903,'Detroit, MI',NULL);
INSERT INTO "Brands" VALUES(13,'Rambler',1901,'Kenosha, Washington',1969);
INSERT INTO "Brands" VALUES(14,'Plymouth',1928,'Auburn Hills, Michigan',2001);
INSERT INTO "Brands" VALUES(15,'Tesla',2003,'Palo Alto, CA',NULL);
COMMIT;
