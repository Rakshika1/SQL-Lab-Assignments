Use Lab1;

Create Table Persons(
  PersonID int,
  FirstName varchar(255),
  LastName varchar(255),
  Address varchar(255),
  city varchar(255)
);
INSERT INTO Persons (PersonID, FirstName, LastName, Address, City)
VALUES
(1, 'Yakshika', 'Sharma', 'Andhari', 'Mumbai'),
(2, 'Rakshika', 'Sharma', 'Jagti', 'Jammu'),
(3, 'Bhumika', 'Sharma', 'Lalkothi', 'Jaipur'),
(4, 'Rakshit', 'Bhardwaj', 'Ringus', 'Sikar'),
(5, 'Divyanka', 'Sharma', 'Ringus', 'Sikar');
Use Lab1;
Create Table Society(
  Wardno int,
  ParshadNameID int,
  FirstName varchar(255),
  LastName varchar(255),
  Address varchar(255),
  WardName varchar(255),
  town varchar(255)
);

Use Lab1;
 Create Table House(
  HouseId int,
  headofhouse varchar(255),
  membersno int,
  child int,
  adult int,
  WardName varchar(255)
);