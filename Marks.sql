CREATE DATABASE schooldb;

USE schooldb;

-- Create the 'marks' table
CREATE TABLE marks (
    id INTEGER,
    name VARCHAR(120),
    marathi INTEGER,
    english INTEGER,
    maths INTEGER
);

-- Insert sample data into the 'marks' table
INSERT INTO marks (id, name, marathi, english, maths) VALUES
(1, 'Amit', 85, 78, 92),
(2, 'Priya', 90, 88, 85),
(3, 'Ravi', 75, 82, 88),
(4, 'Sita', 82, 79, 91),
(5, 'Raj', 70, 75, 80),
(6, 'Sneha', 95, 90, 89),
(7, 'Mohan', 88, 85, 84),
(8, 'Anjali', 78, 80, 86),
(9, 'Vijay', 84, 76, 82),
(10, 'Neha', 89, 87, 90),
(11, 'Kiran', 76, 72, 78),
(12, 'Asha', 91, 83, 88),
(13, 'Suresh', 80, 88, 85),
(14, 'Meera', 74, 79, 77),
(15, 'Deepak', 93, 92, 91),
(16, 'Rani', 87, 85, 90),
(17, 'Arun', 81, 80, 86),
(18, 'Pooja', 79, 84, 82),
(19, 'Ravi', 85, 78, 88),
(20, 'Lata', 77, 72, 79);

-- Retrieve all data from the 'marks' table
SELECT * FROM marks;

-- Find the maximum value in the 'marathi' column
SELECT max(marathi) FROM marks;

-- Find the minimum value in the 'marathi' column
SELECT min(marathi) FROM marks;

-- Retrieve the top 3 rows with the highest 'marathi' scores
SELECT * FROM marks ORDER BY marathi DESC LIMIT 3;

-- Retrieve the row with the lowest 'marathi' score
SELECT * FROM marks ORDER BY marathi ASC LIMIT 1;

-- Calculate the average scores for 'marathi', 'english', and 'maths'
SELECT AVG(marathi), AVG(english), AVG(maths) FROM marks;

-- Retrieve the top 3 rows with the highest 'marathi' scores (repeated)
SELECT * FROM marks ORDER BY marathi DESC LIMIT 3;

-- Retrieve rows with pagination: rows 36 to 60
SELECT * FROM marks LIMIT 25 OFFSET 35;
