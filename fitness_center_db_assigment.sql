CREATE DATABASE fitness_center_DB;

USE fitness_center_DB;
CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);
SELECT * FROM Members;
-- Insert members into the Members table
INSERT INTO Members (id, name, age)
VALUES (1, 'John Doe', 28),
       (2, 'Jane Smith', 34),
       (3, 'Mike Johnson', 45),
       (4, 'Emily Davis', 22),
       (5, 'Karla Soledad', 30),
       (6, 'Duke Smith', 27);
       
-- Insert workout sessions into the WorkoutSessions table
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES (1, 1, '2024-10-12', '08:00 AM', 'Cardio'),
       (2, 2, '2024-10-12', '10:00 AM', 'Weightlifting'),
       (3, 1, '2024-10-13', '07:00 AM', 'Yoga'),
       (4, 3, '2024-10-13', '06:30 PM', 'CrossFit'),
       (5, 4, '2024-10-14', '11:00 AM', 'Swimming');
       
SELECT * FROM WorkoutSessions;

-- Update workout session time for John Doe (id = 1)
UPDATE WorkoutSessions
SET session_time = '06:00 PM'
WHERE member_id = 1
  AND session_date = '2024-10-12';
  
-- Delete John Smith's data from the Members table
DELETE FROM Members
WHERE name = 'John Smith';

DELETE FROM WorkoutSessions
WHERE member_id = 1;

DELETE FROM Members
WHERE id = 1;

