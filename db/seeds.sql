INSERT INTO department (dept_name)
VALUES
  ('Owner'),
  ('Finance'),
  ('Marketing'),
  ('Sales'),
  ('Production'),
  ('Human Resources'),
  ('IT');

INSERT INTO job (title, salary, dept_id)
VALUES
  ('President', 750000.00, 1),
  ('Chief Executive Officer', 500000.00, 1),
  ('Chief Operating Officer', 500000.00, 4),
  ('Chief Finance Officer', 500000.00, 2),
  ('Chief Marketing Officer', 500000.00, 3),
  ('Sales Manager', 250000.00, 4),
  ('Production Manager', 250000.00, 5),
  ('Quality Manager', 250000.00, 5),
  ('Shipping Manager', 250000.00, 5),
  ('IT Manager', 250000.00, 7),
  ('Sales Associate', 100000.00, 4),
  ('Production Associate', 100000.00, 5),
  ('Quality Technician', 100000.00, 5),
  ('Shipping Associate', 100000.00, 5),
  ('Software Engineer', 100000.00, 7),
  ('Mechanical Engineer', 100000.00, 7),
  ('HR Representative', 100000.00, 6),
  ('Junior Web Developer', 75000.00, 7),
  ('Junior Salesman', 75000.00, 4),
  ('Executive Assistant', 75000.00, 6),
  ('HR Assistant', 75000.00, 6);

INSERT INTO employee (first_name, last_name, job_id, manager_id)
VALUES
  ('JRR', 'Tolkien', 1, NULL),
  ('Gandalf', 'Stormcrow', 2, 1),
  ('Aragorn', 'Arathornson', 3, 1),
  ('Legolas', 'Greenleaf', 4, 1),
  ('Gimli', 'Gloinson', 7, 3),
  ('Boromir', 'Denethorson', 6, 5),
  ('Frodo', 'Baggins', 3, 1),
  ('Samwise', 'Gamgee', 2, 1),
  ('Meriadoc', 'Brandybuck', 2, 1),
  ('Peregrin', 'Took', 2, 1),
  ('Bilbo', 'Baggins', 6, 5),
  ('Theoden', 'Eorl', 6, 5),
  -- ('Eomer', 'Eadig', 21, 17),
  ('Eowyn', 'Eadig', 8, 3),
  ('Arwen', 'Evenstar', 8, 3),
  ('Tom', 'Bombadill', 13, 8),
  ('Smeagol', 'Gollum', 11, 6),
  ('Saruman', 'White', 15, 10),
  -- ('Radagast', 'Brown', 21, 17),
  ('Thorin', 'Oakenshield', 7, 3),
  ('Balin', 'Fundinson', 7, 3),
  ('Albus', 'Dumbledore', 5, 1),
  ('Minerva', 'McGonagall', 10, 2),
  ('Severus', 'Snape', 10, 2),
  ('Remus', 'Lupin', 15, 10),
  ('Alastor', 'Moody', 15, 10),
  -- ('Sybil', 'Trelawney', 21, 17),
  -- ('Filius', 'Flitwick', 21, 17),
  ('Gilderoy', 'Lockhart', 8, 3),
  ('Pomona', 'Sprout', 12, 7),
  ('Harry', 'Potter', 12, 7),
  ('Ron', 'Weasley', 20, 7),
  ('Hermione', 'Granger', 20, 7),
  ('Neville', 'Longbottom', 13, 8),
  ('Draco', 'Malfoy', 16, 10),
  ('Dudley', 'Dursley', 13, 8),
  ('Rubeus', 'Hagrid', 7, 3),
  ('Luna', 'Lovegood', 9, 3),
  ('Ginny', 'Weasley', 16, 10),
  ('George', 'Weasley', 16, 10),
  ('Fred', 'Weasley', 18, 10),
  ('Bill', 'Weasley', 11, 6),
  ('Percy', 'Weasley', 17, 2),
  ('Sirius', 'Black', 17, 2),
  ('John', 'Snow', 11, 6),
  ('Eddard', 'Stark', 12, 7),
  -- ('Robb', 'Stark', 21, 17),
  ('Catelyn', 'Stark', 18, 10),
  ('Sansa', 'Stark', 19, 11),
  ('Arya', 'Stark', 12, 7),
  ('Bran', 'Stark', 9, 3),
  ('Theon', 'Greyjoy', 14, 9),
  ('Tyrion', 'Lannister', 14, 9),
  ('Jamie', 'Lannister', 11, 6),
  ('Cersei', 'Lannister', 8, 3),
  ('Robert', 'Baratheon', 11, 6),
  ('Joffrey', 'Baratheon', 12, 7),
  ('Renly', 'Baratheon', 11, 6),
  ('Stannis', 'Baratheon', 14, 9),
  ('Tommen', 'Baratheon', 14, 9),
  -- ('Margeary', 'Tyrell', 21, 17),
  ('Daenerys', 'Targaryen', 6, 5),
  ('Tywin', 'Lannister', 12, 7),
  ('Samwell', 'Tarly', 19, 11),
  ('Sandor', 'Clegane', 12, 7),
  ('Brienne', 'Tarth', 20, 7),
  ('Petyr', 'Baelish', 18, 10);
  -- ('Jorah', 'Mormont', 21, 17);