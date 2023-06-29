-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.33 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table miranda.bookings
DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_id` int DEFAULT NULL,
  `guest` varchar(255) NOT NULL,
  `guest_id` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `special_request` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table miranda.bookings: ~16 rows (approximately)
INSERT INTO `bookings` (`id`, `room_id`, `guest`, `guest_id`, `photo`, `order_date`, `check_in`, `check_out`, `room_type`, `special_request`) VALUES
	(98, 104, 'Elisa Toy', '#65512499', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/530.jpg', '2023-06-26', '2023-06-27', '2023-07-26', 'voluptatibus', 'Aliquid tenetur incidunt dolorem officiis eligendi consectetur recusandae aut.'),
	(99, 39, 'Mr. Roman Cole', '#10074826', 'https://avatars.githubusercontent.com/u/45511995', '2023-06-26', '2023-06-26', '2023-10-30', 'laborum', 'Beatae dolorem expedita nostrum mollitia at dolore fuga.'),
	(100, 106, 'Mr. Kim Bashirian', '#28643618', 'https://avatars.githubusercontent.com/u/28848847', '2023-06-26', '2023-06-26', '2024-05-20', 'fuga', 'Quasi debitis repudiandae at.'),
	(101, 104, 'Jeremiah Howe', '#30756526', 'https://avatars.githubusercontent.com/u/97150045', '2023-06-26', '2023-06-27', '2023-10-22', 'eius', 'Dolorum molestiae et dolores placeat sequi quaerat incidunt corrupti.'),
	(102, 101, 'Kelli Borer', '#66410694', 'https://avatars.githubusercontent.com/u/92655851', '2023-06-26', '2023-06-26', '2023-10-25', 'natus', 'Dolores autem voluptatem neque repudiandae natus deleniti soluta ducimus sunt.'),
	(103, 106, 'Sonia Schuppe-Schneider', '#45877568', 'https://avatars.githubusercontent.com/u/31318967', '2023-06-26', '2023-06-26', '2023-08-07', 'error', 'Molestias ipsam aut similique harum eaque sunt non soluta.'),
	(104, 102, 'Abel Bins', '#13483704', 'https://avatars.githubusercontent.com/u/53053299', '2023-06-26', '2023-06-27', '2023-08-14', 'repudiandae', 'Possimus hic sint laudantium nesciunt odit.'),
	(105, 103, 'Dr. Jamie D\'Amore', '#18015102', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/171.jpg', '2023-06-26', '2023-06-26', '2023-10-13', 'accusamus', 'Excepturi aut molestiae impedit molestiae asperiores ex.'),
	(106, 102, 'Christian Kassulke-King', '#19725839', 'https://avatars.githubusercontent.com/u/79561239', '2023-06-26', '2023-06-27', '2024-05-25', 'sapiente', 'Dignissimos iste molestiae nemo nulla deleniti minus vitae.'),
	(107, 107, 'Willie Spinka-Trantow', '#8272298', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/786.jpg', '2023-06-26', '2023-06-27', '2023-09-01', 'quisquam', 'Voluptas incidunt est voluptate inventore quasi minima.'),
	(108, 110, 'Rosemarie Gerlach', '#75781227', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/476.jpg', '2023-06-26', '2023-06-26', '2023-10-18', 'ab', 'Minima pariatur hic qui dolor maxime cumque architecto.'),
	(109, 101, 'Ms. Constance Donnelly', '#31515486', 'https://avatars.githubusercontent.com/u/36091441', '2023-06-26', '2023-06-26', '2023-08-29', 'reprehenderit', 'Nostrum maxime ad illum illum aut mollitia soluta debitis.'),
	(110, 103, 'Alice Abernathy', '#26523962', 'https://avatars.githubusercontent.com/u/83888871', '2023-06-26', '2023-06-27', '2024-06-09', 'accusamus', 'Consectetur excepturi vel fuga quibusdam doloribus.'),
	(111, 107, 'Dr. Gilbert Zieme V', '#48548289', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/979.jpg', '2023-06-26', '2023-06-26', '2024-03-31', 'optio', 'Occaecati illo saepe necessitatibus nemo ab quia.'),
	(112, 104, 'Gwendolyn Schumm', '#30112056', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1017.jpg', '2023-06-26', '2023-06-27', '2024-03-11', 'ut', 'Amet maiores nostrum.');

-- Dumping structure for table miranda.contact
DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table miranda.contact: ~16 rows (approximately)
INSERT INTO `contact` (`id`, `date`, `name`, `email`, `phone`, `subject`, `comment`, `archived`) VALUES
	(1, '2023-06-01', 'John Wayne', 'john.smith@example.com', '+1 (555) 123-4567', 'Problem with payment', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 0),
	(91, '2023-06-06', 'Cornelius Rohan', 'Allison35@hotmail.com', '497610124', 'Doloribus impedit velit aliquid necessitatibus quisquam sint recusandae.', 'Voluptatem laboriosam magni voluptate possimus perferendis.', 0),
	(92, '2023-06-06', 'Samantha Larkin', 'Craig.Dare@gmail.com', '215062573', 'Odit pariatur occaecati dolor perspiciatis voluptatem et nemo voluptatum blanditiis.', 'Sunt aliquid nulla quisquam. Praesentium eaque dolorem voluptatem praesentium explicabo. Maiores facere magnam quidem neque ad.', 0),
	(93, '2023-06-06', 'Hannah Collins-Rolfson', 'Jamey_Dicki24@yahoo.com', '77253968', 'Animi perferendis sed porro corrupti animi sunt.', 'Recusandae laudantium ut. Nesciunt pariatur optio optio asperiores blanditiis rerum illo accusantium quasi. Labore beatae a voluptatum officia animi quis totam.', 0),
	(94, '2023-06-06', 'Tamara Bogan', 'Tristin_Rohan@gmail.com', '274192924', 'Est dolorum quas sit.', 'Quae dolores quas deleniti dolore doloremque nisi consequuntur harum necessitatibus. Eveniet impedit et optio.', 0),
	(95, '2023-06-06', 'Allen Cassin', 'Jennifer50@yahoo.com', '798600832', 'Necessitatibus dolore occaecati assumenda expedita eveniet.', 'Neque in quidem odit omnis inventore modi.', 0),
	(96, '2023-06-06', 'Jaime Walter', 'Nikolas_Larson@yahoo.com', '518824530', 'Exercitationem nesciunt cumque reiciendis dolores facere autem.', 'Ad dolores nobis consequuntur maxime laboriosam cum dolorum.', 0),
	(97, '2023-06-06', 'Terrell Feeney-Dooley', 'Omer_Boyer71@gmail.com', '38194523', 'Consequatur natus ipsa ex amet sint iusto ducimus inventore commodi.', 'Vero accusamus ab laboriosam quidem dolorum. Praesentium tempora doloribus repellat.', 0),
	(98, '2023-06-06', 'Violet Kautzer-Lebsack I', 'Natasha.Ferry44@gmail.com', '392261162', 'Doloribus odit molestiae facere rem cupiditate minima adipisci.', 'Nesciunt soluta similique vel placeat sint ullam. Provident ipsa nulla cumque quae vero ea.', 0),
	(99, '2023-06-06', 'Jean Abbott', 'Wendell96@hotmail.com', '159550766', 'Corporis consectetur corrupti quidem nulla architecto voluptatem.', 'Dolores porro voluptas minima mollitia fugiat tempore.', 0),
	(100, '2023-06-06', 'Regina Buckridge', 'Leopoldo_Kautzer@yahoo.com', '885227122', 'Occaecati ab tempora error modi facere.', 'Laborum veritatis voluptatibus voluptates consequuntur iusto. Hic quam aliquid totam adipisci similique labore. Architecto blanditiis iure aliquid quidem.', 0),
	(101, '2023-06-06', 'Dominic Balistreri', 'Lionel_Corwin@yahoo.com', '158917569', 'Sed tempora excepturi aspernatur reprehenderit mollitia inventore quis nesciunt nobis.', 'Tempore optio beatae quasi impedit mollitia ratione consectetur sint.', 0),
	(102, '2023-06-06', 'Marsha Collins', 'Seth.Parker@yahoo.com', '720939005', 'Ipsam quidem repellat.', 'Quam iste animi. Ratione quibusdam necessitatibus voluptatibus porro debitis nesciunt alias accusamus. Distinctio amet fugiat perferendis.', 0),
	(103, '2023-06-06', 'Ella Crist I', 'Dixie.Beer96@gmail.com', '747317487', 'Accusamus ratione magni assumenda iusto voluptatem maxime deleniti mollitia.', 'Nobis similique earum nisi fugiat fugiat optio corporis blanditiis.', 0),
	(104, '2023-06-06', 'Enrique O\'Hara-Grady', 'Reynold.McClure40@gmail.com', '326998144', 'Enim excepturi accusamus alias quas dolor iure blanditiis iure ipsa.', 'Incidunt quibusdam possimus. Pariatur dolores sit neque ducimus voluptatem aut.', 0),
	(105, '2023-06-06', 'Janis Bergnaum', 'Francesco_Kling@gmail.com', '133543241', 'Nisi esse fugit quia vitae laboriosam non cupiditate.', 'Illo aperiam atque cumque assumenda ad veritatis. Praesentium repellat occaecati. Est sunt repudiandae ipsum cupiditate reiciendis nisi beatae eaque.', 0);

-- Dumping structure for table miranda.rooms
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `bed_type` enum('Single Bed','Double Bed','Double Luxury') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `amenities` json DEFAULT NULL,
  `rate` float(10,2) DEFAULT NULL,
  `offer` float(10,2) DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table miranda.rooms: ~16 rows (approximately)
INSERT INTO `rooms` (`id`, `name`, `bed_type`, `photo`, `description`, `amenities`, `rate`, `offer`, `available`) VALUES
	(39, 'Tony', 'Double Bed', 'https://avatars.githubusercontent.com/u/98486020', 'Fuga provident voluptates. Temporibus deserunt vero a optio. Accusantium aperiam velit modi animi dolorum rem repellat. Numquam provident quaerat. Incidunt eius consequatur assumenda rem perferendis possimus incidunt nemo ducimus.', '["Wifi", "LED TV", "AC"]', 492.83, 173.66, 1),
	(99, 'Gardner', 'Single Bed', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1105.jpg', 'Maxime tempore in. Et repellendus fugit. Rerum neque amet veniam aliquam asperiores minus laborum ducimus. Occaecati culpa enim nostrum praesentium corporis quibusdam enim magni.', '["Wifi", "LED TV", "AC"]', 253.84, 161.17, 1),
	(100, 'Micheal', 'Double Luxury', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1128.jpg', 'Magni laudantium unde a. Aut veniam doloribus ullam cumque aliquid rem est. Natus atque esse fuga neque neque vel cumque. Amet fugit cum nam dignissimos eos impedit earum possimus autem. Rerum voluptatum placeat enim repellat ut.', '["Wifi", "LED TV", "AC"]', 233.80, 139.92, 1),
	(101, 'Jakob', 'Double Bed', 'https://avatars.githubusercontent.com/u/86965523', 'Alias dignissimos possimus illo. Dolor cum minima animi. Asperiores expedita molestiae mollitia exercitationem tempora deserunt. Blanditiis quidem nostrum culpa id rem.', '["Wifi", "LED TV", "AC"]', 460.94, 135.84, 1),
	(102, 'Luigi', 'Double Bed', 'https://avatars.githubusercontent.com/u/46190444', 'Incidunt animi odit et totam asperiores ratione velit repellat. Possimus tempora debitis saepe laborum expedita omnis sed.', '["Wifi", "LED TV", "AC"]', 200.78, 192.94, 1),
	(103, 'Shyann', 'Single Bed', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/568.jpg', 'Facere esse aut quisquam repellat quasi corporis est. Rem reprehenderit atque tempora consectetur voluptas expedita quod sint. Corporis qui quod. Modi quibusdam dignissimos ratione praesentium quos illum. Quaerat sequi atque iure.', '["Wifi", "LED TV", "AC"]', 320.22, 156.68, 1),
	(104, 'Alberta', 'Single Bed', 'https://avatars.githubusercontent.com/u/30175873', 'Nesciunt deleniti eum velit sunt perspiciatis molestiae veritatis sunt. Doloremque deserunt necessitatibus aliquam expedita nisi dolor. Reprehenderit commodi consequuntur cum enim nam quasi illo. Consectetur in deserunt.', '["Wifi", "LED TV", "AC"]', 380.35, 157.62, 1),
	(105, 'Frances', 'Single Bed', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1122.jpg', 'Saepe beatae nostrum sapiente eveniet itaque minus molestias quisquam. Quidem nulla aliquam.', '["Wifi", "LED TV", "AC"]', 444.88, 113.60, 1),
	(106, 'Bert', 'Double Bed', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1223.jpg', 'Minus voluptatum occaecati minus aut. Eligendi minus suscipit nulla vitae illum laboriosam expedita consequuntur.', '["Wifi", "LED TV", "AC"]', 357.25, 182.31, 1),
	(107, 'Elliott', 'Double Luxury', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/524.jpg', 'Voluptatem numquam culpa veniam alias deleniti magni soluta facere perspiciatis. Repudiandae itaque veritatis aut ducimus autem doloribus nostrum. Odit vitae earum culpa dolore itaque fugiat possimus quo. Nam impedit iure fuga suscipit. Ex inventore recusandae blanditiis necessitatibus iure veritatis.', '["Wifi", "LED TV", "AC"]', 497.75, 51.21, 1),
	(108, 'Valentine', 'Double Bed', 'https://avatars.githubusercontent.com/u/42907907', 'Maiores dolor sequi sapiente id veritatis dolorum ratione magnam quae. Quis harum ipsam maiores adipisci excepturi blanditiis odio odit. Nam ullam quam repudiandae repellendus sapiente. Quas cumque accusamus hic ducimus necessitatibus esse ex.', '["Wifi", "LED TV", "AC"]', 461.83, 74.04, 1),
	(109, 'Keenan', 'Double Bed', 'https://avatars.githubusercontent.com/u/94433911', 'Quae provident error ipsam nisi vero provident. Aliquam a porro tempora ipsam labore quibusdam optio. Totam accusamus at eligendi blanditiis et perferendis voluptatibus consequuntur. Laborum adipisci ipsam voluptatibus corrupti eveniet.', '["Wifi", "LED TV", "AC"]', 300.80, 107.91, 1),
	(110, 'Nayeli', 'Double Bed', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1118.jpg', 'Doloribus in dignissimos eum tempore voluptatem hic minima. Dolores expedita deserunt mollitia odit magni vel nihil molestiae voluptatum.', '["Wifi", "LED TV", "AC"]', 217.45, 158.51, 1),
	(111, 'Margarete', 'Double Bed', 'https://avatars.githubusercontent.com/u/44815840', 'Esse repellat repudiandae voluptas. Hic asperiores itaque officia. Ad nihil qui. Provident quas officia quaerat vitae ex qui.', '["Wifi", "LED TV", "AC"]', 239.89, 87.36, 1),
	(112, 'Genoveva', 'Double Luxury', 'https://avatars.githubusercontent.com/u/30238381', 'Magnam doloribus sequi. Dolorum quia dolorum at perspiciatis reprehenderit nam quasi eaque. Doloremque eligendi labore facilis corporis.', '["Wifi", "LED TV", "AC"]', 381.32, 110.70, 1),
	(113, 'Brice', 'Double Bed', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/25.jpg', 'Possimus dolorem fugiat itaque aliquid illum. Quibusdam adipisci nam eligendi minima accusantium rerum.', '["Wifi", "LED TV", "AC"]', 300.94, 186.39, 1);

-- Dumping structure for table miranda.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `active` tinyint DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table miranda.users: ~16 rows (approximately)
INSERT INTO `users` (`id`, `full_name`, `description`, `email`, `password`, `photo`, `position`, `active`, `username`, `phone`, `start_date`) VALUES
	(85, 'Nicolás Cousillas', 'Overseeing the daily operations of the hotel, directing phone calls, coordinating travel plans', 'nicolascousillas1@gmail.com', '$2b$10$6PNygpo8l0/T/oFX.K/uG.9GatHfiQINMVoWDD/6J7oj7RNlD7QR6', 'https://avatars.githubusercontent.com/u/97462538?s=400&u=cbcc5e5c96bb83d90a509dfcd0366a46f714812b&v=4', 'Manager', 1, 'nico', '633344222', '2023-06-02'),
	(86, 'Janet Ryan', 'Rem nam doloribus sed vero praesentium porro doloribus est. Possimus iusto dolor. Dignissimos similique cum dicta accusamus corrupti soluta quasi.', 'Braeden3@yahoo.com', 'o4JTyp6xYkab8WU', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1059.jpg', 'aliquam', 1, 'Jayson.Hane', '945579379', '2023-06-06'),
	(87, 'Delores Rau', 'Harum voluptatibus amet autem veritatis inventore suscipit repudiandae quos voluptate. Inventore dolores commodi voluptatem sint itaque consectetur.', 'Joany.Tillman@hotmail.com', 'FV1Q5aMzdxUSHuF', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/728.jpg', 'cupiditate', 1, 'Missouri_Schuster', '40941539', '2023-06-06'),
	(88, 'Boyd Steuber', 'Cupiditate cum eos voluptatibus corrupti architecto ex sequi quisquam aspernatur.', 'Amber_McGlynn@gmail.com', 'oWfu35Fjb9t69ba', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/609.jpg', 'dolor', 1, 'Easter_Goldner22', '706487038', '2023-06-06'),
	(89, 'Spencer Franey', 'Magnam consectetur modi. Vel sequi tenetur ab quidem ad. Eaque ipsam inventore consequatur unde doloribus quo voluptatem ducimus fugiat.', 'Laron91@yahoo.com', 'MvMiT8LVyX2Bise', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/433.jpg', 'accusamus', 1, 'Marilyne_Heller', '291144425', '2023-06-06'),
	(90, 'Angelica Cronin', 'Unde autem laborum dolores.', 'Christian_Kozey@yahoo.com', 'jz81dmrPEecAied', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/483.jpg', 'officiis', 1, 'Quinten_Marks', '501925470', '2023-06-06'),
	(91, 'Ralph Kuhn', 'Tempore libero quae dolores rem esse. Autem nobis hic similique dolor nisi sunt reiciendis nemo.', 'Stanley_Bosco29@gmail.com', 'WsOsFTeg2jLOYRi', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/215.jpg', 'corrupti', 1, 'Verlie51', '704571261', '2023-06-06'),
	(92, 'Tami Rogahn', 'Molestias ipsam consequuntur totam. Ex quae libero quam rerum mollitia aperiam.', 'Shanna59@yahoo.com', 'L5wwtUOrKb7fXNt', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/281.jpg', 'a', 1, 'Eriberto.Vandervort-Rolfson83', '646440448', '2023-06-06'),
	(93, 'Lionel Morar', 'Cumque consequatur esse reprehenderit debitis quas mollitia doloremque alias error. Consequuntur necessitatibus eaque sint harum quidem id consequuntur quos.', 'Sandrine_Frami93@gmail.com', 'Gc4L_TiAARxcZ8k', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/699.jpg', 'incidunt', 1, 'Rita58', '479444589', '2023-06-06'),
	(94, 'Grady Vandervort', 'Minima vel quae voluptates harum aspernatur. Sapiente totam deserunt aliquam animi nulla odit.', 'Esta_Towne83@yahoo.com', 'JvGoNJTkRxG1WHm', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/612.jpg', 'voluptatibus', 1, 'Daron_Fritsch', '878379953', '2023-06-06'),
	(95, 'Shannon Boyer-Farrell', 'Eius aut voluptas. Architecto cupiditate laborum. Quae unde velit fugit vero.', 'Ned.Effertz@yahoo.com', 'kCD8_77dJlZTQZy', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/529.jpg', 'pariatur', 1, 'Nadia57', '289538149', '2023-06-06'),
	(96, 'Iris Brown', 'Praesentium fugit nesciunt molestiae soluta est atque. Adipisci molestiae illo iste.', 'Edwina_Weissnat@gmail.com', '5V3NOUWRyxQW2se', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1080.jpg', 'nihil', 1, 'Amir3', '831980901', '2023-06-06'),
	(97, 'Roman Schumm', 'Iusto deserunt eos magnam maxime hic sint adipisci.', 'Lolita7@hotmail.com', 'wurfF2X4hKRg1DA', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1036.jpg', 'asperiores', 1, 'Garrick.Botsford63', '946902730', '2023-06-06'),
	(98, 'Mae Cole', 'Repellendus quia quis sint aut repudiandae deserunt velit soluta perspiciatis. Assumenda nihil voluptatibus. Perspiciatis neque omnis ea voluptates velit repellat vero saepe nobis.', 'Fritz_Rodriguez@gmail.com', 'm74Lml0iDCQY59w', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/844.jpg', 'perferendis', 1, 'Leonora25', '669262580', '2023-06-06'),
	(99, 'Claire Larkin', 'Repellat eos labore nihil temporibus harum nisi nemo unde quam. Dignissimos ad asperiores. Quo accusamus optio quod.', 'Vivien_Mante60@hotmail.com', 'Ok4OOJsB4Hc8UQ4', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/402.jpg', 'commodi', 1, 'Santa_Sanford', '177288476', '2023-06-06'),
	(100, 'Phil Rath', 'Aut amet enim ratione sunt iste possimus labore.', 'Peter89@gmail.com', '8ssB_vEdAQe5IvS', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/879.jpg', 'dolores', 1, 'Anahi.Littel', '603036866', '2023-06-06');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
