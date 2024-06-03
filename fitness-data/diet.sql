-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: db05
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `diet`
--

DROP TABLE IF EXISTS `diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diet` (
  `diet_id` int NOT NULL AUTO_INCREMENT,
  `diet_name` varchar(50) NOT NULL,
  `diet_description` varchar(500) DEFAULT NULL,
  `diet_category` varchar(30) NOT NULL,
  `diet_pic_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`diet_id`),
  UNIQUE KEY `diet_dietID_uindex` (`diet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
--

LOCK TABLES `diet` WRITE;
/*!40000 ALTER TABLE `diet` DISABLE KEYS */;
INSERT INTO `diet` VALUES
(1,'Pancakes + Soymilk','Mixed grain pancakes (minus the pancakes): 268kcal, one cup of soymilk:68kcal, Total calories: 336kcal. Pancakes and Soymilk make up a nutritionally balanced and tasty breakfast option for those of you who want to get plenty of energy in the morning.','Breakfast','Breakfast A'),
(2,'Orange + Yogurt','One medium-sized orange (about 130g):62 calories, one cup (about 245g) of low-fat plain yogurt:54 calories, Total:216kcal. Orange and Yogurt make up a refreshingly healthy and nutritious breakfast option, especially for those of you looking for a light and tasty morning treat.','Breakfast','Breakfast B'),
(3,'Whole Wheat Bread + Soymilk','Two slices of whole-wheat bread (about 56g): 70 calories, one cup (240ml) of unsweetened soy milk: 80 calories, Total: 220kcal. A breakfast of Whole Wheat Bread and Soymilk is a healthy, nutritionally balanced and suitable choice for all dietary preferences, especially for those of you who want to get plenty of energy in the morning and maintain a healthy lifestyle.','Breakfast','Breakfast C'),
(4,'Cereal + Milk','One cup (about 30g) of regular cereal: 110 calories, One cup (240ml) of whole milk: 150 calories, Total calories: 260kcal. Cereal and Milk are a classic combination of convenience and nutritional balance, popular with people of all ages and especially suitable for those who want to gain energy quickly in the morning.','Breakfast','Breakfast D'),
(5,'Millet Porridge + Egg','One cup of cooked millet porridge (about 174g): 207 calories, one large egg (about 50g): 72 calories, Total: 279kcal. The breakfast consisting of Millet Porridge (millet porridge) and Egg (egg) is a nutritious and traditional choice, especially suitable for those of you who wish to consume sufficient energy and quality protein in the morning.','Breakfast','Breakfast E'),
(6,'Corn + Milk','One medium-sized piece of boiled corn (about 154 grams): 123 calories, one cup (240 ml) of whole milk: 150 calories, Total: 273kcal. A breakfast of Corn and Milk is a nutritious and easy-to-make option, especially for those of you who want to get enough energy and balanced nutrition in the morning.','Breakfast','Breakfast F'),
(7,'Burger + Black coffee + Cucumber','A regular burger (includes whole wheat bun, beef patty, lettuce, tomato, and a small amount of sauce): 300 calories, a cup of black coffee (unsweetened and dairy-free, about 240 ml): 2 calories, and a medium-sized cucumber (about 300 grams): 45 calories, Total calories: 347kcal. Burger+ Black Coffee+ Cucumber makes up a well-balanced, low-calorie and protein and fiber-rich lunchtime fitness meal, especially suitable for those of you who wish to consume sufficient nutrients and maintain a healthy diet after a workout.','Brunch','Brunch A'),
(8,'Vegetable bun + Tea Egg + Milk','A plain veggie bun (approx. 100g): 200 calories, A tea egg (approx. 50g): 70 calories, A cup (240ml) of whole milk: 150 calories, Total calories: 420kcal. Vegetable Bun, Tea Egg and Milk make up a nutritious, balanced and East-meets-West brunch option, especially suitable for those of you who wish to consume a variety of nutrients in the morning.','Brunch','Brunch B'),
(9,'Dumplings + Soymilk','10 plain pork and vegetable dumplings (about 200g): 410 calories, one cup (240ml) of unsweetened soy milk: 80 calories, Total: 490kcal. Vegetable Bun, Tea Egg and Milk is a well-balanced, nutritious, rich, and East-meets-West brunch option, especially for those who want to get a variety of nutrients and maintain a healthy diet at brunch time. It is a well-balanced, nutritious option with Chinese and Western flavors, especially for those who want to get a variety of nutrients at brunch time and maintain a healthy diet.','Brunch','Brunch C'),
(10,'Sandwich + Cucumber + Black Coffee','A regular sandwich (including whole-wheat bread, ham, cheese, lettuce and tomato): 300 calories, a medium-sized cucumber (about 300 grams): 45 calories, and a cup of black coffee (unsweetened and non-dairy, about 240 milliliters): 2 calories. Total calories: 347kcal. Sandwich, Cucumber and Black Coffee is a nutritionally balanced, low-calorie and convenient brunch option, especially for those of you who want to consume enough energy at brunch time and maintain a healthy diet.','Brunch','Brunch D'),
(11,'Bagel + Chicken Breast + Yogurt','One plain bagel (approx. 100g): 250 calories, one grilled chicken breast (approx. 100g): 165 calories, one cup (approx. 150g), low-fat plain yogurt: 100 calories, Total: 515kcal. Bagel, Chicken Breast, and Yogurt make for a well-balanced, protein-packed, and energy-packed brunch! It is a well-balanced, protein-packed and energy-packed option, especially for those who want to get enough nutrients at brunch time and maintain a healthy diet.','Brunch','Brunch E'),
(12,'Oat Milk + Egg + Tomato','One cup (240ml) of Oat Milk: 120 calories, one large egg (about 50g): 72 calories, three medium-sized tomatoes (about 369g): 75 calories, Total: 367kcal. Oat Milk, Egg and Tomato make up a light, well-balanced and low-calorie brunch option that is especially suitable for those who wish to take in a variety of nutrients at brunch time and maintain a healthy diet.','Brunch','Brunch F'),
(13,'Beans with Celery + Rice + Pork with Cauliflower','100g Stir Fried Dried Beans with Celery: 100 calories, Bowl of White Rice (approx. 150g): 200 calories, 150g Stir Fried Pork and Cauliflower: 250 calories, Total: 550kcal. Stir Fried Dried Beans with Celery, Rice and Stir Fried Pork with Cauliflower make up a nutritionally balanced, protein- and fiber-rich option that is especially good for those of you looking to get a well-rounded nutritional boost at lunchtime and maintain a healthy diet.','Lunch','Lunch A'),
(14,'Chicken Breast + Purple Potato + Cold Okra','One Roasted Chicken Breast (approx. 100g): 165 calories, One Medium Purple Potato (approx. 150g): 115 calories, One Cold Okra (approx. 100g): 35 calories, Total: 315kcal. Chicken Breast, Purple Potato, and Cold Okra make a nutritious, low-fat and high-fiber choice for lunch. It is a nutritious, low-fat, low-calorie and high-fiber option that is especially suitable for those of you who want to get enough nutrients at lunchtime and maintain a healthy diet.','Lunch','Lunch B'),
(15,'Steak + Spaghetti + Cucumber','One serving of steak (about 150 grams): 250 calories, one serving of pasta (about 200 grams, without sauce): 220 calories, one medium-sized cucumber (about 300 grams): 45 calories. Total calories: 515kcal. Steak, Spaghetti and Cucumber makes a nutritionally balanced, protein- and carbohydrate-rich choice for a busy weekday lunch or a leisurely weekend lunch.','Lunch','Lunch C'),
(16,'Rice + Pork with Mushrooms + Lettuce in Oyster Sauce','One bowl of white rice (approx. 150g): 200 calories, one serving of Stir-fried Pork with Shiitake Mushrooms (approx. 200g): 300 calories, one serving of Lettuce in Oyster Sauce (approx. 100g): 50 calories, Total: 550kcal. Rice, Stir-fried Pork with Shiitake Mushrooms and Lettuce in Oyster Sauce make up a nutritionally balanced, protein and carbohydrate-rich option for a weekday lunch or family dinner.','Lunch','Lunch D'),
(17,'Potatoes + Pork with Garlic Moss + Tomato Egg Soup','One Steamed Potatoes (approx. 200g): 180 calories, One Stir-fried Pork with Garlic Moss (approx. 200g): 300 calories, One Tomato and Egg Soup (approx. 300g): 100 calories, Total: 580kcal. Steamed Potatoes, Stir-fried Pork with Garlic Moss and Tomato and Egg Soup are a nutritious and well-balanced choice for a family lunch or dinner. Egg Soup make a nutritious, well-balanced and tasty choice for a family lunch or dinner.','Lunch','Lunch E'),
(18,'Stone Pot Bibimbap + Pomelo','One Stone Pot Bibimbap (approx. 400g): 500 calories, One Pomelo (approx. 400g): 200 calories, Total: 700kcal. Stone Pot Bibimbap and Pomelo make up a delicious, nutritious option for lunch, blending Korean cuisine with fresh fruits to provide a rich nutritional and flavorful experience.','Lunch','Lunch F'),
(19,'Rice + Beans&Celery + Beef&Broccoli','One bowl of white rice (approx. 150g): 200 calories, one serving of Stir-fried Dried Beans with Celery and Green Pepper (approx. 200g): 150 calories, one serving of Stir-fried Beef with Broccoli (approx. 200g):250 calories, Total: 600kcal.Rice, Stir-fried Dried Beans with Celery and Green Pepper and Stir-fried Beef with Broccoli comprise a nutritious, protein- and vegetable-rich option for a weekday lunch.','Lunch','Lunch G'),
(20,'Sushi + Shredded Sea Vegetables','One serving of Sushi (approx. 200g): 300 calories, one serving of Shredded Sea Vegetables (approx. 100g): 50 calories, Total: 350kcal. Sushi and Shredded Sea Vegetables make up a tasty, lightweight option for dinner, fusing Japanese cuisine with sea vegetables to add a richness of flavors and nutrients to the meal.','Dinner','Dinner A'),
(21,'Prawns + Pumpkin + Cucumber','One serving of fresh shrimp (approx. 150g): 120 calories, one serving of pumpkin (approx. 200g): 80 calories, one medium-sized cucumber (approx. 300g): 45 calories, Total: 245kcal. Shrimp, Pumpkin and Cucumber make up a low-calorie, highly nutritious choice for a dinner that provides a wealth of proteins, vitamins and minerals for those who want to maintain a healthy diet! .','Dinner','Dinner B'),
(22,'Tofu Soup + Sweet Potato + Mushroom Fry with Vegetables','One serving of Seaweed and Tofu Soup (approx. 300g): 100 calories, one serving of Sweet Potato (approx. 200g): 180 calories, one serving of Vegetable Stir-Fry with Mushrooms (approx. 200g): 100 calories, Total: 380kcal.Seaweed and Tofu Soup, Sweet Potato and Mushroom Stir-Fry with Vegetables make up a nutritious, low-calorie option for dinner, providing a rich source of protein, vitamins and minerals.','Dinner','Dinner C'),
(23,'Scrambled Eggs&Tomato + Macaroni + Broccoli','One serving of Scrambled Eggs with Tomato (approx. 200g): 250 calories, one serving of Macaroni (approx. 50g): 175 calories, one serving of Broccoli (approx. 200g): 70 calories, Total: 495kcal. Scrambled Eggs with Tomato, Macaroni, and Broccoli make up a simple, tasty, and well-balanced dinner option that provides a rich source of protein, carbohydrates and vegetable fiber for a dinner that needs to satisfy hunger and nutritional needs.','Dinner','Dinner D'),
(24,'Beef + Corn + Cold Okra','One serving of Beef (approx. 100g): 200 calories, one serving of Corn (approx. 150g): 120 calories, one serving of Cold Okra (approx. 150g): 50 calories, Total: 370kcal. Beef, Corn, and Cold Okra make up a nutritious, hearty, and delicious choice for dinner, providing a good dose of protein, carbohydrates, and vegetable fiber.','Dinner','Dinner E'),
(25,'Chicken Thighs + Rice + Sauteed Bok Choy','One serving of Chicken Thighs (approx. 150g): 300 calories, one small bowl of white rice (approx. 75g): 100 calories, one serving of sauteed bok choy (approx. 200g): 50 calories, Total: 450kcal. Chicken Thighs, Rice, and Sauteed Bok Choy make up a well-balanced, tasty option for dinner, providing a plenty of protein, carbohydrates and vegetable fiber.','Dinner','Dinner F'),
(26,'Steamed Fish + Mixed Rice + Lettuce','One serving of Steamed Fish (approx. 150g): 153 calories, One bowl of Mixed Rice (approx. 100g): 141 calories, One serving of Lettuce (approx. 200g): 36 calories, Total: 330kcal. Steamed Fish, Mixed Rice and Lettuce make up a light, healthy, low-calorie and highly nutritious choice for dinner, providing an abundance of protein, carbohydrates and vegetable fiber.','Dinner','Dinner G');
/*!40000 ALTER TABLE `diet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
