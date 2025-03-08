insert into people (Id, Name, Age, Job) values 
(1,'Alan',11,'Unemployed'),
(2,'Bob',22,'Gamer'),
(3,'Chuck',33,'Farmer'),
(4,'Dave',44,'Painter'),
(5,'Ed',55,'Writer'),
(6,'Fred',66,'Writer'),
(7,'Greg',77,'Writer'),
(8,'Hank',88,'Retired'),
(9,'Ike',99,'Retired');

create table if not exists income(
  Job text primary key,
  Income Integer not null
 );
 
 Insert into income (Job,Income) values
 ('None',0),
 ('Farmer',20000),
 ('Painter',50000),
 ('Writer',35000),
 ('Retired',0),
 ('Baker',800000)

CREATE TABLE IF NOT EXISTS people(
    Id INT PRIMARY KEY NOT NULL,
    Name TEXT NOT NULL,
    Age INT NOT NULL,
    Job TEXT NOT NULL
);

SELECT Name
FROM people
WHERE Job IN (
    SELECT Job
    FROM income
    WHERE Income > 50000
);
