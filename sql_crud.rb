# CRUD

# READ
# reads all the doctors
SELECT * FROM doctors;

# read one doctor
SELECT * FROM doctors WHERE id = 1;

# CREATE
# INSERT INTO table_name (atribute(s)) VALUES (value(s))
INSERT INTO doctors (first_name, last_name, specialty)
VALUES ('Zé', 'Doe', 'Dentist')

# UPDATE
# UPDATE table SET attribute(s) = value(s) WHERE condition
UPDATE doctors SET first_name = 'John' WHERE id = 3

# DELETE
# DELETE FROM table_name WHERE condition(s)
DELETE FROM doctors WHERE id = 3
