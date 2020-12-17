-- Create a table, `owners`
CREATE TABLE owners (id INTEGER PRIMARY KEY, name TEXT);
-- Create a related table, `bicycles`
CREATE TABLE bicycles (id INTEGER PRIMARY KEY, brand TEXT, color TEXT, owner_id);
-- Create 3 bicycles and 2 owners
INSERT INTO bicycles (brand, color) VALUES ('Quintanaroo', 'blue'), ('Trek', 'red'), ('Bianchi', 'silver');
INSERT INTO owners (name) VALUES ('Kat'), ('Sam');
UPDATE bicycles SET owner_id = 1 WHERE brand = 'Quintanaroo';
UPDATE bicycles SET owner_id = 1 WHERE brand = 'Bianchi';
UPDATE bicycles SET owner_id = 2 WHERE brand = 'Trek';
-- Update the properties of one of the bicycles
UPDATE bicycles SET brand = 'Cannondale' WHERE brand = 'Quintanaroo';
UPDATE bicycles SET color = 'orange' WHERE brand = 'Cannondale';
-- List all the bicycles
SELECT * FROM bicycles;

-- List all the bicycles with their owners
SELECT bicycles.brand, owners.name 
FROM bicycles 
INNER JOIN owners
ON owners.id = bicycles.owner_id;

DELETE FROM bicycles WHERE brand = 'Bianchi';