DROP TABLE IF EXISTS `course`;
CREATE TABLE course (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    time VARCHAR(255),
    instructor VARCHAR(255),
    price DOUBLE,
    capacity INT
);
INSERT INTO course (name, description, time, instructor, price, capacity) VALUES
('Yoga', 'Relax and improve flexibility.', 'Monday 9:00 - 10:00', 'Ms. Lee', 20, 20),
('Pilates', 'Strengthen your core and improve posture.', 'Tuesday 10:00 - 11:00', 'Mr. Wang', 25, 15),
('Spinning', 'High-intensity cardio workout to burn calories.', 'Wednesday 18:00 - 19:00', 'Mr. Zhang', 30, 10),
('Aerobics', 'Aerobic exercise to improve cardiovascular health.', 'Thursday 17:00 - 18:00', 'Ms. Zhao', 20, 25),
('Boxing', 'Increase strength and endurance, release stress.', 'Friday 19:00 - 20:00', 'Mr. Liu', 35, 12),
('Strength Training', 'Build muscle strength and tone your body.', 'Saturday 15:00 - 16:00', 'Mr. Chen', 40, 8);
