

DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `lesson_id` int NOT NULL AUTO_INCREMENT,
  `lesson_name` varchar(1000) NOT NULL,
  `lesson_description` varchar(1000) DEFAULT NULL,
  `lesson_category` varchar(30) NOT NULL,
  `lesson_instructor` varchar(30) NOT NULL,
  `lesson_time` varchar(100) DEFAULT NULL,
 
  PRIMARY KEY (`lesson_id`),
  UNIQUE KEY `lesson_lessonID_uindex` (`lesson_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `lesson` VALUES   
(1, 'Yoga for Beginners - Aerobic', 'A beginner-friendly yoga class focusing on basic postures and breathing techniques.', 'Aerobic', 'Emma Wilson', 'Monday 8:00 AM - 9:00 AM'),
(2, 'Advanced Pilates - Aerobic', 'An advanced class that targets core strength, flexibility, and overall body conditioning.', 'Aerobic', 'Sophia Brown', 'Wednesday 6:00 PM - 7:00 PM'),
(3, 'HIIT Workout - Mixed Exercise', 'High-Intensity Interval Training for maximum calorie burn and cardiovascular fitness.', 'Mixed Exercise', 'James Smith', 'Friday 5:30 PM - 6:30 PM'),
(4, 'Spin Class - Aerobic', 'An energetic indoor cycling class set to motivating music.', 'Aerobic', 'Olivia Davis', 'Tuesday 7:00 PM - 8:00 PM'),
(5, 'Zumba Dance - Aerobic', 'A fun, dance-based cardio workout with Latin music and rhythms.', 'Aerobic', 'Isabella Johnson', 'Thursday 6:30 PM - 7:30 PM'),
(6, 'Strength Training - Anaerobic', 'A class focused on building muscle strength using weights and resistance bands.', 'Anaerobic', 'Liam Martinez', 'Saturday 10:00 AM - 11:00 AM'),
(7, 'Body Pump - Anaerobic', 'A full-body workout using a barbell to strengthen and tone your body.', 'Anaerobic', 'Ava Rodriguez', 'Monday 5:00 PM - 6:00 PM'),
(8, 'Kickboxing - Mixed Exercise', 'A high-energy cardio class combining martial arts techniques with fast-paced cardio.', 'Mixed Exercise', 'Mia Hernandez', 'Wednesday 7:00 PM - 8:00 PM'),
(9, 'Aqua Aerobics - Aerobic', 'A low-impact workout in the pool suitable for all fitness levels.', 'Aerobic', 'Benjamin Lopez', 'Friday 9:00 AM - 10:00 AM'),
(10, 'Step Aerobics - Aerobic', 'A choreographed cardio workout using a step platform.', 'Aerobic', 'Charlotte Gonzalez', 'Tuesday 6:00 PM - 7:00 PM'),
(11, 'Core Blast - Anaerobic', 'A short, intense class focused on strengthening the core muscles.', 'Anaerobic', 'Amelia Lee', 'Monday 12:00 PM - 12:30 PM'),
(12, 'Prenatal Yoga - Aerobic', 'A gentle yoga class designed for pregnant women to enhance relaxation and flexibility.', 'Aerobic', 'Harper King', 'Thursday 10:00 AM - 11:00 AM'),
(13, 'Boot Camp - Mixed Exercise', 'An intense outdoor workout that combines strength training and cardio exercises.', 'Mixed Exercise', 'Ethan Scott', 'Saturday 8:00 AM - 9:00 AM'),
(14, 'Barre - Anaerobic', 'A ballet-inspired workout focusing on low-impact, high-intensity movements.', 'Anaerobic', 'Lucas Wright', 'Wednesday 5:00 PM - 6:00 PM'),
(15, 'Functional Training - Mixed Exercise', 'A workout that improves everyday movements and overall body strength.', 'Mixed Exercise', 'Henry Green', 'Friday 7:00 PM - 8:00 PM'),
(16, 'Tai Chi - Aerobic', 'A gentle form of martial arts focusing on slow, controlled movements.', 'Aerobic', 'Ella Adams', 'Tuesday 9:00 AM - 10:00 AM'),
(17, 'Cycling Strength - Mixed Exercise', 'A cycling class that incorporates strength training intervals.', 'Mixed Exercise', 'Sebastian Nelson', 'Monday 6:30 PM - 7:30 PM'),
(18, 'TRX Suspension Training - Anaerobic', 'A workout using TRX straps to perform a variety of exercises.', 'Anaerobic', 'Victoria Carter', 'Thursday 5:30 PM - 6:30 PM'),
(19, 'Meditation and Relaxation - Aerobic', 'A class focusing on guided meditation techniques for stress relief.', 'Aerobic', 'David Mitchell', 'Friday 12:00 PM - 1:00 PM'),
(20, 'CrossFit - Mixed Exercise', 'A high-intensity workout that combines various functional movements.', 'Mixed Exercise', 'Daniel Perez', 'Saturday 11:00 AM - 12:00 PM');
UNLOCK TABLES;