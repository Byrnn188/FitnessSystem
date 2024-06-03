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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `product_description` varchar(500) DEFAULT NULL,
  `product_category` varchar(30) NOT NULL,
  `product_pic_url` varchar(100) DEFAULT NULL,
  `product_price` double NOT NULL DEFAULT '10',
--  `product_size` varchar(5) NOT NULL DEFAULT 'M',
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_productID_uindex` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES
(1,'Black Ribbed Seamless Petite Tights','Feel luxury and cozy at once in our Black Luxe Seamless Tights. Let the soft fabric embraces your body while the luxury design with an elegant seamless structure embraces your soul! Combine it with other Luxe Seamless items for subtle homewear and everyday look. Fabric: 92% Polyamide 8%Elastane','Lady Clothes','Black Ribbed Seamless Petite Tights',60),
(2,'Black Sculpting Strappy Bralette','Comfortable and slightly supportive sports bra with outstanding details and an elegant seamless structure. Combine it with our Luxe Seamless Tights for a subtle homewear and everyday look. Fabric: 55% Nylon, 40% Polyester, 5% Elastane','Lady Clothes','Black Sculpting Strappy Bralette',40),
(3,'Black Sense Midi Biker Shorts','Ribbed Seamless Midi Biker Shorts have the same iconic aim’n design as the tights, but in a shorter version. These high-waisted biker shorts are made of a soft and flexible four-way knitted ribbed fabric that follows the bodys movements in a natural way and creates a beautiful shaping effect. Mix and match with other ribbed garments and create dreamy outfits that boost you while you do the activities you love, both at and outside the gym. In other words, these shorts are a must-have for your wardrobe!Fabric: 92% Polyamide, 8% Elastan','Lady Clothes','Black Sense Midi Biker Shorts',30),
(4,'Black Sense Skort','Get ready to serve looks in this smashing skirt! Sense Skort is made from our signature recycled, brushed Sense fabric and has integrated inner shorts - perfect for tennis, padel, golf or everyday life. The flowy, moisture-wicking skort has a comfortable high waist and pockets on both sides. The skort has lasercut edges and a monochrome aim’n logo at front. Fit: Regular Material: 80% recycled polyester, 20% spandex.','Lady Clothes','Black Sense Skort',35),
(5,'Black Soft Basic Short Sleeve','The perfect t-shirt for all your outfits! Cafe au Lait Serif Boxy T-Shirt is made from sturdy 100% organic cotton and has a boxy, slightly loose fit. The t-shirt has a rounded neckline with ribbed details and a printed seasonal aim’n print at the front. Fit: Boxy Material: 100% organic cotton. ','Lady Clothes','Black Soft Basic Short Sleeve',45),
(6,'Body Power Jump Rope','The Body Power Jump Rope is your essential fitness companion for cardiovascular workouts and agility training. Designed for durability and performance, this jump rope features high-quality materials that ensure smooth and effortless rotations, allowing you to achieve maximum results with each workout session','Equipments','Body Power Jump Rope',10),
(7,'Cap-Sky Black','Sky blue cap is the perfect accessory for sunny days or outdoor activities. Made from lightweight and breathable material, it offers comfort and protection from the sun. The refreshing sky blue color adds a pop of color to your outfit while keeping you cool and stylish.','Gentleman Clothes','Cap-Sky Black',15),
(8,'Dumbbells','Dumbbells are essential strength training tools that offer a wide range of benefits for building muscle, improving endurance, and enhancing overall fitness. Available in various weights and designs, dumbbells provide versatility for users of all fitness levels, from beginners to advanced athletes. ','Equipments','Dumbbells',10),
(9,'Grey Melange Ease Ribbed Shorts','The ultimate shorts for lounging, traveling and comfort 24/7! Made from a super-soft cotton blend, our Ease Ribbed Shorts have a relaxed fit and feature a lightweight, ribbed fabric. Match with our Ease Ribbed Tank Top to create a matching loungewear set. Material: 48% cotton, 48% polyester, 4% elastan. Fit: Relaxed.','Lady Clothes','Grey Melange Ease Ribbed Shorts',25),
(10,'Gym Flooring','Gym flooring is an essential component of any fitness space, providing protection, stability, and comfort during workouts. Designed to withstand heavy foot traffic and equipment use, gym flooring creates a safe and supportive surface for exercise, reducing the risk of injury and damage to floors. ','Equipments','Gym Flooring',12),
(11,'Hoodie-Navy','Navy hoodie is a versatile and stylish addition to any wardrobe. Made from soft and cozy cotton-blend fabric, it offers both comfort and warmth. The classic navy color adds a touch of sophistication while remaining easy to pair with various outfits.','Gentleman Clothes','Hoodie-Navy',45),
(12,'Joggers -Black','Black joggers are the epitome of comfort and style. Crafted from soft and breathable fabric, they provide all-day comfort whether you are lounging at home or running errands. The classic black color adds a touch of sophistication to your casual look, while the tapered fit gives them a modern edge.','Gentleman Clothes','Joggers -Black',35),
(13,'Joggers-Light Grey Marl','Light grey marl joggers combine style and comfort for your everyday adventures. Crafted from soft and durable fabric, they offer a cozy feel while maintaining a sleek appearance. The light grey marl color adds a modern touch to your casual look, making them versatile for both lounging at home and running errands in style. ','Gentleman Clothes','Joggers-Light Grey Marl',30),
(14,'Kettlebells','Kettlebells are versatile and effective fitness tools designed for strength, endurance, and functional training. With their distinctive shape and handle, kettlebells offer a unique way to engage multiple muscle groups while performing dynamic movements such as swings, cleans, and snatches. ','Equipments','Kettlebells',15),
(15,'Medicine Ball','The medicine ball is a versatile fitness tool used for strength training, rehabilitation, and functional exercises. Made of durable materials such as rubber or vinyl, the medicine ball is designed to withstand impact and bouncing, making it suitable for a wide range of exercises.','Equipments','Medicine Ball',10),
(16,'Musashi Energy Single Cans','For sports people looking for a performance boosting functional beverage charged by more than just caffeine. Scientifically formulated to improve stamina, aid muscle recovery, and improve mental focus. Available in Purple Grape, Blue Raspberry, Fruit Crush, and Mix it Up packs.','Food','Musashi Energy Single Cans',5),
(17,'Musashi Night Time Aminos','Musashi Night Time Aminos is a scientifically formulated, high performance recovery blend that delivers a matrix of essential Branched Chain Amino Acids (BCAAs), conditional amino acids, minerals including zinc and magnesium, as well as calmative herbal extracts.','Food','Musashi Night Time Aminos',12),
(18,'Musashi Protein Energy Single Bars','Musashi Protein + Energy Single Bar has been scientifically formulated with a 1:1 protein and carb blend and 1000mg of creatine monohydrate. A delicious and wholesome bar loaded with 15g of protein, it harnesses the nutritional goodness of oats to supply your body with energy before, during, or after sport or exercise.','Food','Musashi Protein Energy Single Bars',3),
(19,'Musashi Protein Single Cookie','Musashi Protein Cookie is loaded with 15g of quality protein, is low in sugar and filled with delicious choc chunks. With a "melt in your mouth", soft bake texture, it is guaranteed to fulfil that sweet craving or as a convenient, protein filled snack on the go.','Food','Musashi Protein Single Cookie',4),
(20,'Muscle Nation Natural Daily Greens','Loaded with antioxidants and anti-inflammatory ingredients, except, without that unpleasant grassy taste. Bursting with superfoods such as barley grass, spirulina, kale and celery, and a whole bunch of potent ingredients that work to boost your digestive health and immunity - you will be fighting fit in no time at all.Each Muscle Nation 100% Natural Daily Greens scoop is packed with over 20 vitamins and minerals that have all sorts of anti-inflammatory properties and gut health ingredients which have been known to fight off many health problems and illness, such as cancer.This impressive blend is intended to up your daily nutritional intake (cause we know how hard it can be to get the right nutrients when juggling day-to-day life) whilst providing you with a kick of vitality!','Food','Muscle Nation Natural Daily Greens',8),
(21,'Muscle Nation Protein Water','Muscle Nation Protein Water a refreshing clear protein water supplement which is a light alternative to the usual milky protein shake. With the benefits of protein, collagen, electrolytes and BCAAs, the Muscle Nation Protein Water is a fruity and thirst quenching drink to use any time of the day.','Food','Muscle Nation Protein Water',6),
(22,'Push-up Board','The Push-Up Board is a versatile and effective tool for strengthening your upper body and core muscles. Featuring multiple color-coded handgrips, this board allows you to target different muscle groups by simply changing your hand placement. ','Equipments','Push-up Board',17),
(23,'Socks-Onyx',' These black socks are made from high-quality pure cotton, ensuring comfort, softness, and excellent breathability. With a simple design, they are suitable for everyday wear and can be paired with various types of footwear and outfits.','Gentleman Clothes','Socks-Onyx',9),
(24,'Stringer-Black','Black stringer is designed for both performance and style. Crafted from breathable and moisture-wicking fabric, it keeps you cool and dry during intense workouts. The sleek black color adds a touch of sophistication to your gym attire, while the stringer style offers freedom of movement and ventilation. ','Gentleman Clothes','Stringer-Black',20),
(25,'Tights-Black',' These black tights are crafted from a blend of high-quality materials, offering a sleek and comfortable fit. Perfect for adding a touch of elegance to any outfit, they provide both style and practicality. ','Gentleman Clothes','Tights-Black',25),
(26,'White Edge Core Racerback Singlet','Our Sense Bralette is made from our luxuriously soft Sense fabric and is a hybrid between a bra and a tank top. The Sense Bralette has a flattering v-cut front and back, removable pads and a metal aim’n-logo badge. Combine with Sense Tights to create a matching set. Fit: Tight Material: 80% recycled polyester, 20% spandex','Lady Clothes','White Edge Core Racerback Singlet',20);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-25  0:13:03
