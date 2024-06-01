-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for news
CREATE DATABASE IF NOT EXISTS `news` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `news`;

-- Dumping structure for table news.about
CREATE TABLE IF NOT EXISTS `about` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metatitle` varchar(255) DEFAULT NULL,
  `metadescription` varchar(255) DEFAULT NULL,
  `ogtitle` varchar(255) DEFAULT NULL,
  `ogdescription` varchar(255) DEFAULT NULL,
  `ogimage` varchar(255) DEFAULT NULL,
  `ogurl` varchar(255) DEFAULT NULL,
  `ogtype` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.about: ~1 rows (approximately)
INSERT INTO `about` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(16, 'Add About', 'Add About', 'Add About', 'Add About', 'https://en.m.wikipedia.org/wiki/Image#/media/File%3ATEIDE.JPG', 'https://en.m.wikipediaATEID', 'Add About', '2024-01-22 22:42:11', '2024-02-19 01:15:15');

-- Dumping structure for table news.backgroundimage
CREATE TABLE IF NOT EXISTS `backgroundimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.backgroundimage: ~1 rows (approximately)
INSERT INTO `backgroundimage` (`id`, `image_path`, `created_at`, `updated_at`) VALUES
	(7, '1703825227.jpg', '2023-12-28 23:17:07', '2023-12-28 23:17:07');

-- Dumping structure for table news.banner
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` json DEFAULT NULL,
  `description` json DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.banner: ~3 rows (approximately)
INSERT INTO `banner` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
	(13, '{"title": "Provide Solution\\r\\nfor Industries plan"}', '{"description": "They\'ll have to make the best of things its an uphill climb.\\r\\nThe weather started getting was tossed."}', '1707998284_banner1.png', '2024-02-15 06:28:04', '2024-02-15 06:28:04'),
	(14, '{"title": "We help Industries\\r\\ninnovate and grow."}', '{"description": "They\'ll have to make the best of things its an uphill climb.\\r\\nThe weather started  getting was tossed."}', '1707998381_banner2.png', '2024-02-15 06:29:41', '2024-02-15 06:29:41'),
	(15, '{"title": "Welcome to Factory & \\r\\nIndustrial Buisness"}', '{"description": "They\'ll have to make the best of things its an uphill climb.\\r\\n The weather started getting was tossed."}', '1707998450_jayden-wong-hLkCrv2b0e0-unsplash.jpg', '2024-02-15 06:30:50', '2024-02-15 06:30:50');

-- Dumping structure for table news.blog
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Tittle` varchar(255) DEFAULT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Image` varchar(255) DEFAULT NULL,
  `multiimage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.blog: ~7 rows (approximately)
INSERT INTO `blog` (`id`, `Tittle`, `Description`, `Image`, `multiimage`, `created_at`, `updated_at`) VALUES
	(107, 'Marriage', 'its a marriage fuction', '1705386163.jpg', '1705385385_images_(52).jpg,1705385385_images_(51).jpg,1705385385_images_(50).jpg,1705385385_images_(49).jpg', '2024-01-12 02:06:52', '2024-02-06 02:08:58'),
	(108, 'Birth Day', 'its a birth day event', '1705385462.jpg', '1705385459_images_(44).jpg,1705385459_images_(30).jpg,1705385459_images_(26).jpg,1705385459_images_(25).jpg,1705385459_images_(23).jpg', '2024-01-12 04:08:18', '2024-01-18 23:27:56'),
	(109, 'Silver jubilee', 'Its about 25 getting', '1705385582.jpg', '1705385580_images_(48).jpg,1705385580_images_(45).jpg,1705385580_images_(42).jpg,1705385580_images_(41).jpg,1705385580_images_(40).jpg,1705385580_images_(38).jpg,1705385580_images_(36).jpg', '2024-01-12 05:11:26', '2024-01-16 00:43:02'),
	(110, 'Church', 'Its a new blog from church', '1705385915.jpg', '1705385643_images_(50).jpg,1705385643_images_(41).jpg,1705385643_images_(40).jpg,1705385643_images_(38).jpg,1705385643_images_(36).jpg,1705385643_images_(34).jpg,1705385643_images_(33).jpg,1705385643_download_(10).jpg,1705385643_images_(24).jpg', '2024-01-12 06:17:41', '2024-01-16 00:48:35'),
	(113, 'Anniversary1', 'Its a couple', '1705407062.jpg', '1705385725_images_(52).jpg,1705385725_images_(40).jpg,1705385725_images_(31).jpg,1705385725_images_(30).jpg,1705385725_images_(29).jpg,1705385725_images_(25).jpg,1705385725_images_(24).jpg,1705385725_images_(23).jpg', '2024-01-13 01:04:51', '2024-02-03 05:32:44'),
	(114, 'Inauguration', 'Its a just begun program', '1705385827.jpg', '1705385825_images_(40).jpg,1705385825_images_(39).jpg,1705385825_images_(38).jpg,1705385825_images_(37).jpg,1705385825_images_(36).jpg,1705385825_images_(35).jpg,1705385825_images_(34).jpg,1705396727_images_(51).jpg', '2024-01-16 00:47:07', '2024-01-16 03:48:51'),
	(121, 'sport Event', 'All about sport', '1706788381.jpg', '1706788364_5cc61365-ba8e-4352-bc65-316d1b0fb081.jpg,1706788364_3e23876a-0b86-4b38-a607-fb7549158714.jpg,1706788364_b9456c99-c1c0-49c2-8bf8-43e2b85148c8.jpg,1706788364_abb420b6-244d-4c1e-aee8-5d9ea361353d.jpg,1706788364_6e861042-e039-4d62-83ce-41ffb3b21fec.jpg,1706788364_75d7e7d0-6cee-48e5-aae4-fe914e91c49a.jpg,1706788364_2dc0ce8a-7e9d-4e09-bc5f-097cefa9ef15.jpg,1706788364_37d9b386-43d0-4faa-8dae-d416432b42cf.jpg,1706788364_images_(63).jpg,1706788377_images_(58).jpg,1706788377_images_(57).jpg', '2024-02-01 06:23:01', '2024-02-01 06:23:01');

-- Dumping structure for table news.blogimage
CREATE TABLE IF NOT EXISTS `blogimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.blogimage: ~0 rows (approximately)

-- Dumping structure for table news.blogsco
CREATE TABLE IF NOT EXISTS `blogsco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `states` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `check` varchar(255) DEFAULT NULL,
  `latest` varchar(255) DEFAULT NULL,
  `read` varchar(255) DEFAULT NULL,
  `popular` varchar(255) DEFAULT NULL,
  `viewed` varchar(255) DEFAULT NULL,
  `recent` varchar(255) DEFAULT NULL,
  `metatitle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `metadescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ogtitle` varchar(255) DEFAULT NULL,
  `ogdescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ogimage` varchar(255) DEFAULT NULL,
  `ogurl` varchar(255) DEFAULT NULL,
  `ogtype` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.blogsco: ~2 rows (approximately)
INSERT INTO `blogsco` (`id`, `title`, `description`, `content`, `image`, `category`, `states`, `check`, `latest`, `read`, `popular`, `viewed`, `recent`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `slug`, `created_at`, `updated_at`) VALUES
	(75, 'Karnataka Weather Alert: Is Bengaluru About To Get A Long-Awaited Spell of Rain?  Read more at: https://www.oneindia.com/bengaluru/karnataka-weather-alert-is-bengaluru-about-to-get-a-long-awaited-spell-of-rain-3817553.html', 'Karnataka Weather Alert: Is Bengaluru About To Get A Long-Awaited Spell of Rain?\r\n\r\nRead more at: https://www.oneindia.com/bengaluru/karnataka-weather-alert-is-bengaluru-about-to-get-a-long-awaited-spell-of-rain-3817553.html', '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">\n<html><body><h3><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><b>Leo Horoscope (July 23 - August 22) </b></span></h3><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><b>Your Day </b></span></p><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'>Today brims with energy and enthusiasm. Spread positivity around.</span><br style=\'margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><br style=\'margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><img data-filename="aquarius-20240507051832.webp" style="width: 600px;" src="http://news.test/public/images/_17150629490.png"></p><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><b>Love and Relationships </b></span></p><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'>Family takes center stage. Strengthen your bonds with a shared activity.</span></p><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><b> Career and Finance </b></span></p><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'>A satisfactory day with possible recognition for your hard work.</span></p><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><b> Health and Well-being </b></span></p><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'>Emotional well-being is a focus. Ensure you\'re taking time for self-care.</span><br style=\'margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><br style=\'margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><br></p></body></html>\n', '1715062949_kjs-new-1714015996.jpg', '17', '5', 'off', 'on', 'off', 'on', 'off', 'off', 'Karnataka Weather Alert: Is Bengaluru About To Get A Long-Awaited Spell of Rain?  Read more at: https://www.oneindia.com/bengaluru/karnataka-weather-alert-is-bengaluru-about-to-get-a-long-awaited-spell-of-rain-3817553.html', 'Karnataka Weather Alert: Is Bengaluru About To Get A Long-Awaited Spell of Rain?\r\n\r\nRead more at: https://www.oneindia.com/bengaluru/karnataka-weather-alert-is-bengaluru-about-to-get-a-long-awaited-spell-of-rain-3817553.html', NULL, NULL, '1715062949_kjs-new-1714015996.jpg', NULL, NULL, 'Karnataka Weather Alert: Is Bengaluru About To Get A Long-Awaited Spell of Rain?  Read more at: https://www.oneindia.com/bengaluru/karnataka-weather-alert-is-bengaluru-about-to-get-a-long-awaited-spell-of-rain-3817553.html', '2024-05-07 00:52:29', '2024-05-07 00:52:29'),
	(76, 'Met Gala 2024: Alia Bhatt captivates In A Saree;', 'Met Gala 2024: Alia Bhatt captivates In A Saree; Explore The Celebrities Embracing This Attire Before her\r\n\r\nRead more at: https://www.oneindia.com/entertainment/met-gala-2024-alia-bhatt-captivates-in-a-saree-explore-the-celebrities-embracing-this-attire-befor-3818401.html', '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">\n<html><body><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'>Last year, she attended the Met Gala for the first time, wearing a Prabal Gurung couture gown. Now, she\'s making her red carpet-debut in a saree. </span></p><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'>Every year, the Met Gala follows a specific dress code. This year\'s theme, \'Sleeping Beauties: Reawakening Fashion,\' focuses on reviving old-fashioned styles. The dress code, named \'The Garden of Time,\' draws inspiration from a short story written by J.G. Ballard. Following this theme, Alia\'s outfit was thoughtfully chosen to match.</span><br style=\'margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><br style=\'margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><img data-filename="bsy-1715055019.jpg" style="width: 300px;" src="http://news.test/public/images/_17150645610.png"></p><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'>Last year, Isha Ambani, daughter of Indian businessman Mukesh Ambani, paid tribute to Karl Lagerfeld by opting for a black saree gown. </span></p><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'>Among international figures, American actress Blake Lively chose a saree-style gown from Chanel, featuring semi-sheer detailing, to embody the Alexander McQueen theme. Adding to the roster, model and media personality Naomi Campbell stunned in a metallic saree-style gown, </span></p><p><span style=\'color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'>a masterpiece from Chanel, at the 2023 Met Gala.</span><br style=\'margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><br style=\'margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: "open sans", Arial, Helvetica, sans-serif;\'><img data-filename="alia-bhatt-small-1715061251 (1).webp" style="width: 600px;" src="http://news.test/public/images/_17150645611.png"><br></p></body></html>\n', '1715064561_bsy-1715055019.jpg', '16', '5', 'on', 'off', 'off', 'on', 'off', 'on', 'Met Gala 2024: Alia Bhatt captivates In A Saree;', 'Met Gala 2024: Alia Bhatt captivates In A Saree; Explore The Celebrities Embracing This Attire Before her\r\n\r\nRead more at: https://www.oneindia.com/entertainment/met-gala-2024-alia-bhatt-captivates-in-a-saree-explore-the-celebrities-embracing-this-attire-befor-3818401.html', NULL, NULL, '1715064561_bsy-1715055019.jpg', NULL, NULL, 'Met Gala 2024: Alia Bhatt captivates In A Saree;', '2024-05-07 01:19:21', '2024-05-07 01:19:50');

-- Dumping structure for table news.blogscocontent
CREATE TABLE IF NOT EXISTS `blogscocontent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metatitle` varchar(255) DEFAULT NULL,
  `metadescription` varchar(255) DEFAULT NULL,
  `ogtitle` varchar(255) DEFAULT NULL,
  `ogdescription` varchar(255) DEFAULT NULL,
  `ogimage` varchar(255) DEFAULT NULL,
  `ogurl` varchar(255) DEFAULT NULL,
  `ogtype` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.blogscocontent: ~1 rows (approximately)
INSERT INTO `blogscocontent` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(11, 'Add SEO blogs data1', 'Add SEO blogs data1', 'Add SEO blogs data', 'Add SEO blogs data1', 'http://final-admin.test/public/images/1705386163.jpg', 'Add SEO blogs data1', 'Add SEO blogs data1', '2024-01-23 00:00:24', '2024-02-07 00:02:20');

-- Dumping structure for table news.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.brands: ~1 rows (approximately)
INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
	(8, 'NaattuMaadu', 0, NULL, NULL);

-- Dumping structure for table news.carts
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `total` decimal(20,6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_user_id_foreign` (`user_id`),
  KEY `carts_product_id_foreign` (`product_id`),
  CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.carts: ~0 rows (approximately)

-- Dumping structure for table news.contact
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.contact: ~2 rows (approximately)
INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
	(8, 'John', 'john.doe@example.com', 89796550, 'This is a sample message.', '2024-01-03 08:11:18', '2024-01-03 08:11:18'),
	(11, 'Alex', 'john.doe@example.com', 76547457657, 'Alex fdhfgdhgfhgf', '2024-01-03 03:56:40', '2024-01-03 03:56:40');

-- Dumping structure for table news.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metatitle` varchar(255) DEFAULT NULL,
  `metadescription` varchar(255) DEFAULT NULL,
  `ogtitle` varchar(255) DEFAULT NULL,
  `ogdescription` varchar(255) DEFAULT NULL,
  `ogimage` varchar(255) DEFAULT NULL,
  `ogurl` varchar(255) DEFAULT NULL,
  `ogtype` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.contacts: ~1 rows (approximately)
INSERT INTO `contacts` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(14, 'Add contact1', 'Add contact1', 'Add contact1', 'Add contact1', 'Add contact1', 'Add contact1', 'Add contact1', '2024-01-22 22:53:38', '2024-01-22 22:54:04');

-- Dumping structure for table news.contentblog
CREATE TABLE IF NOT EXISTS `contentblog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blog_id` int DEFAULT NULL,
  `content_blog` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`),
  CONSTRAINT `contentblog_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.contentblog: ~0 rows (approximately)

-- Dumping structure for table news.detail
CREATE TABLE IF NOT EXISTS `detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.detail: ~3 rows (approximately)
INSERT INTO `detail` (`id`, `category`, `created_at`, `updated_at`) VALUES
	(14, 'sport', '2024-02-17 05:00:29', '2024-04-23 03:36:06'),
	(16, 'crime', '2024-04-23 03:36:12', '2024-04-23 03:36:12'),
	(17, 'politics', '2024-04-23 03:36:25', '2024-04-23 03:36:25');

-- Dumping structure for table news.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table news.franchise
CREATE TABLE IF NOT EXISTS `franchise` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.franchise: ~7 rows (approximately)
INSERT INTO `franchise` (`id`, `name`, `state`, `city`, `phone`, `created_at`, `updated_at`) VALUES
	(6, 'ser', 'state', 'city', '7639534668', '2023-12-07 22:50:14', '2023-12-07 22:50:14'),
	(7, 'Jewellery', 'state', 'city', '7639534668', '2023-12-07 22:51:06', '2023-12-07 22:51:06'),
	(8, 'Jewellery', 'state', 'city', '7639534668', '2023-12-08 00:57:41', '2023-12-08 00:57:41'),
	(9, 'Jewellery', 'state', 'city', '7639534668', '2023-12-08 00:58:38', '2023-12-08 00:58:38'),
	(10, 'Jewellery', 'state', 'city', '7639534668', '2023-12-08 01:00:02', '2023-12-08 01:00:02'),
	(11, 'kanaboomi', 'state', 'city', '7639534668', '2023-12-08 01:00:54', '2023-12-08 01:00:54'),
	(12, 'Jewellery', 'state', 'city', '7639534668', '2023-12-08 01:12:21', '2023-12-08 01:12:21');

-- Dumping structure for table news.gallery
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.gallery: ~1 rows (approximately)
INSERT INTO `gallery` (`id`, `image`, `created_at`, `updated_at`) VALUES
	(36, '1712659538_1707994518_images_(79).jpg', '2024-04-09 05:15:38', '2024-04-09 05:15:38');

-- Dumping structure for table news.herogroundimage
CREATE TABLE IF NOT EXISTS `herogroundimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) DEFAULT NULL,
  `logo_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.herogroundimage: ~1 rows (approximately)
INSERT INTO `herogroundimage` (`id`, `image_path`, `logo_image`, `created_at`, `updated_at`) VALUES
	(22, '1704357174.3005-jpg', '1704357174.3018-jpg', '2024-01-04 03:02:54', '2024-01-04 03:02:54');

-- Dumping structure for table news.home
CREATE TABLE IF NOT EXISTS `home` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metatitle` varchar(255) DEFAULT NULL,
  `metadescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ogtitle` varchar(255) DEFAULT NULL,
  `ogdescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ogimage` varchar(255) DEFAULT NULL,
  `ogurl` varchar(255) DEFAULT NULL,
  `ogtype` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.home: ~0 rows (approximately)

-- Dumping structure for table news.machineservice
CREATE TABLE IF NOT EXISTS `machineservice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `spantitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `machinetitle` varchar(255) DEFAULT NULL,
  `machineimage` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `is_service` varchar(255) DEFAULT NULL,
  `servicetitle` varchar(255) DEFAULT NULL,
  `servicedescription` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.machineservice: ~7 rows (approximately)
INSERT INTO `machineservice` (`id`, `title`, `spantitle`, `image`, `machinetitle`, `machineimage`, `description`, `content`, `is_service`, `servicetitle`, `servicedescription`, `created_at`, `updated_at`) VALUES
	(16, NULL, NULL, NULL, 'Precision Machining Solutions1', '1709628636_11ad8c7f0917242811ad8c7f09172428cecep-rahmat-p6w82CYxq0c-unsplash.jpg', 'We develop and design new procedures, tools\r\nsystems for agricultural products environments.\r\nWe develop and design new procedures, tools systems for agricultural products environments.\r\nWe develop and design new procedures, tools systems for agricultural products environments.\r\nWe develop and design new procedures, tools systems for agricultural products environments.', NULL, '1', NULL, NULL, '2024-02-15 03:40:17', '2024-03-05 03:20:36'),
	(17, NULL, NULL, NULL, 'CNC Machining Services', '1709629407_bd46b315f1b3a9b4bd46b315f1b3a9b4tim-mossholder-OwBRQ0bykX8-unsplash.jpg', 'Chemical Research expertise in producing and\r\nmanipulating chemicals to energy properties.', NULL, '1', NULL, NULL, '2024-02-15 03:40:50', '2024-03-05 03:33:27'),
	(18, NULL, NULL, NULL, 'Custom Metal Fabrication', '1709629035_54d95ef3f06cd19554d95ef3f06cd195kenny-eliason-CuDoRFyTkAQ-unsplash.jpg', 'Materials Engineering should include scientific and\r\nengineering strength relationships of materials.', NULL, '1', NULL, NULL, '2024-02-15 03:41:14', '2024-03-05 03:27:15'),
	(19, NULL, NULL, NULL, 'Prototyping and Production Machining', '1709628877_8a566cbca6c495a18a566cbca6c495a1p4.png', 'Creating a dynamic company for the continuous\r\nexploration and develop opportunities.', NULL, '1', NULL, NULL, '2024-02-15 03:41:42', '2024-03-05 03:24:37'),
	(21, NULL, NULL, NULL, 'Ensuring high reliability and optimal performanceof rotating power equipment.', '1709629380_b84574ce02ed2ec3b84574ce02ed2ec3zanelle-lofty-eaton-2SjhIreAIN4-unsplash.jpg', 'Ensuring high reliability and optimal performance\r\nof rotating power equipment.', NULL, '1', NULL, NULL, '2024-02-15 03:42:33', '2024-03-05 03:33:00'),
	(26, 'ABOUT OUR', 'FACTORY & INDUSTRIES', '1708164597_about.png', NULL, NULL, NULL, 'Thank you for being a friend. Travelled down the road and back again. Your heart is true you\'re a pal and a confidant. It\'s time to put on makeup. It\'s time to dress up right.They\'re all together ooky the Addams Family doin\' it our way. There\'s nothing we wont try. Never heard the word impossible. This time there\'s no stopping us.', '0', 'Our Services', 'We have built an enviable reputation in consumer goods, heavy industry, high-tech,\r\nmanufacturing, medical, recreational vehicle, and transportation sectors.', '2024-02-17 04:39:57', '2024-02-19 23:11:43'),
	(27, NULL, NULL, NULL, 'Precision Machining Solutions', '1709629054_7500575a5637a7f57500575a5637a7f5p5.png', 'We develop and design new procedures, tools systems for agricultural products environment.', NULL, '1', NULL, NULL, '2024-02-19 05:29:40', '2024-03-05 03:27:34');

-- Dumping structure for table news.mailstores
CREATE TABLE IF NOT EXISTS `mailstores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.mailstores: ~2 rows (approximately)
INSERT INTO `mailstores` (`id`, `name`, `msg`, `phone`, `created_at`, `updated_at`) VALUES
	(92, 'Jewellery 88', 'dfgd', '7339013359', '2024-02-19 06:43:08', '2024-02-19 06:43:08'),
	(94, 'Jewellery', 'yh', 'sdf', '2024-03-05 01:48:08', '2024-03-05 01:48:08');

-- Dumping structure for table news.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.migrations: ~10 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_11_20_113409_create_carts_table', 2),
	(6, '2023_12_06_044516_create_smtp_table', 3),
	(10, '2023_12_06_103525_create_mailstores', 4),
	(11, '2024_04_08_090622_create_permission_tables', 5),
	(12, '2024_04_09_121440_create_permission_user_table', 6),
	(13, '2024_04_23_065839_create_table_name', 7);

-- Dumping structure for table news.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.model_has_permissions: ~0 rows (approximately)

-- Dumping structure for table news.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.model_has_roles: ~4 rows (approximately)
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(7, 'App\\Models\\User', 1),
	(5, 'App\\Models\\User', 42),
	(5, 'App\\Models\\User', 43),
	(5, 'App\\Models\\User', 44);

-- Dumping structure for table news.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `billing_first_name` varchar(255) DEFAULT NULL,
  `billing_last_name` varchar(255) DEFAULT NULL,
  `billing_company_name` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_apartment` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_postcode` varchar(20) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(20) DEFAULT NULL,
  `order_notes` text,
  `order_id` varchar(255) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `order_status` enum('pending','processing','completed','cancelled','shipped') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'pending',
  `product_id` text NOT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `subtotal` decimal(20,6) DEFAULT NULL,
  `payment_status` enum('paid','unpaid') DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.orders: ~3 rows (approximately)
INSERT INTO `orders` (`id`, `user_id`, `session_id`, `billing_first_name`, `billing_last_name`, `billing_company_name`, `billing_address`, `billing_apartment`, `billing_city`, `billing_state`, `billing_postcode`, `billing_email`, `billing_phone`, `order_notes`, `order_id`, `payment_method`, `razorpay_payment_id`, `order_status`, `product_id`, `quantity`, `subtotal`, `payment_status`, `created_at`, `updated_at`) VALUES
	(21, 17, NULL, 'akex', 'al', 'company_name', NULL, 'apartment', 'marthandam', 'marthandam', '545456', 'tamilstoryapp1@gmail.com', '7639534668', 'notes', 'order_NGva0f6QRWJsWf', 'Razorpay', '122', 'cancelled', '[33,35]', '5,6', 900.000000, 'paid', '2023-12-26 04:10:12', '2024-01-03 06:29:31'),
	(24, 18, NULL, 'alex', 'alex', 'company_name', 'address', 'apartment', 'marthandam', 'marthandam', '545456', 'a@gmail.com', '76456356', 'notes', 'order_NGyIRJpGV5cyCY', 'Razorpay', '122', 'pending', '[33,35]', '6,3', 100.000000, 'unpaid', '2023-12-26 06:49:39', '2024-01-03 06:29:27'),
	(25, 19, NULL, 'alex', 'alex', 'company_name', 'address', 'apartment', 'marthandam', 'marthandam', '545456', 'a@gmail.com', '76456356', 'notes', 'order_NGyIcfB6ZMRt0f', 'Razorpay', '122', 'pending', '[33,35]', '9,6', 50.000000, 'unpaid', '2023-12-26 06:49:49', '2024-01-03 06:29:23');

-- Dumping structure for table news.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table news.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.permissions: ~3 rows (approximately)
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(4, 'create posts', 'web', '2024-04-09 06:16:29', '2024-04-09 06:16:29'),
	(5, 'edit posts', 'web', '2024-04-09 06:16:29', '2024-04-09 06:16:29'),
	(6, 'delete posts', 'web', '2024-04-09 06:16:29', '2024-04-09 06:16:29');

-- Dumping structure for table news.permission_user
CREATE TABLE IF NOT EXISTS `permission_user` (
  `permission_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `permission_user_permission_id_foreign` (`permission_id`),
  KEY `permission_user_user_id_foreign` (`user_id`),
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.permission_user: ~0 rows (approximately)

-- Dumping structure for table news.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.personal_access_tokens: ~17 rows (approximately)
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(1, 'App\\Models\\User', 18, 'API TOKEN', '63c9c943a56e67471c3fc7cd2e4e3a9a1a5b98ac1d673b20094732c84fa6477d', '["*"]', NULL, NULL, '2023-12-01 03:49:11', '2023-12-01 03:49:11'),
	(2, 'App\\Models\\User', 18, 'API TOKEN', 'cbf7c3501e89499a1049394d1d838863714349ef032338732b0a5a8ea9355b40', '["*"]', NULL, NULL, '2023-12-01 04:03:33', '2023-12-01 04:03:33'),
	(3, 'App\\Models\\User', 21, 'API TOKEN', 'e37e9adc1f5d3536e9fab6c959487d48bc0a9cc48357d874cbdbf8d02e6b346c', '["*"]', NULL, NULL, '2023-12-01 23:11:20', '2023-12-01 23:11:20'),
	(4, 'App\\Models\\User', 21, 'API TOKEN', '9c632b9070084a3d3ba4d5a57827caef8527db9ef339ebf60ba2f48e8763b9d4', '["*"]', NULL, NULL, '2023-12-01 23:15:23', '2023-12-01 23:15:23'),
	(5, 'App\\Models\\User', 21, 'API TOKEN', '286cd035f409644da83d29ff0287c8483bf7ba1d292b7c8b656df8c95d0fda44', '["*"]', NULL, NULL, '2023-12-01 23:16:04', '2023-12-01 23:16:04'),
	(6, 'App\\Models\\User', 20, 'API TOKEN', '279ad3e9fb4ea167e5e21c789f8c8eb83473d3f210cb9391d56be4cfc8a7e0c9', '["*"]', NULL, NULL, '2023-12-02 00:55:17', '2023-12-02 00:55:17'),
	(7, 'App\\Models\\User', 20, 'API TOKEN', '56f475b331b1e2e620cf0d251f1f4e9aaca2ec6a3355792a4274b17211bd1756', '["*"]', NULL, NULL, '2023-12-02 00:56:15', '2023-12-02 00:56:15'),
	(8, 'App\\Models\\User', 20, 'API TOKEN', '261fb641b0fee44fa87e22b5d02435babb70781cacd8cb1c66376305915bec58', '["*"]', NULL, NULL, '2023-12-02 01:04:30', '2023-12-02 01:04:30'),
	(9, 'App\\Models\\User', 23, 'API TOKEN', 'fd152a55f1efafbb4b981bc7e74001e6f55c62b6b4521b081b7e074f3f1e09e2', '["*"]', NULL, NULL, '2023-12-02 01:05:36', '2023-12-02 01:05:36'),
	(10, 'App\\Models\\User', 23, 'API TOKEN', 'a1c08258e9f477b48d07780f8420232243f97c3b42d9cb1034037366d08d050d', '["*"]', NULL, NULL, '2023-12-02 01:14:49', '2023-12-02 01:14:49'),
	(11, 'App\\Models\\User', 23, 'API TOKEN', '2bef8249a48b1e539f3ac46884b7b61cfc44e781b5b334c953418814765cf15a', '["*"]', NULL, NULL, '2023-12-02 01:19:53', '2023-12-02 01:19:53'),
	(12, 'App\\Models\\User', 23, 'API TOKEN', 'be9d012167d5ffc21ff5b564026287a65a14b728a06044cc386713f998c9b1c4', '["*"]', NULL, NULL, '2023-12-02 01:20:27', '2023-12-02 01:20:27'),
	(13, 'App\\Models\\User', 23, 'API TOKEN', '5ab85018823db11a8fae650ce7380ca72365c80b20f8f56df6386cb5be119e0b', '["*"]', NULL, NULL, '2023-12-02 01:21:11', '2023-12-02 01:21:11'),
	(14, 'App\\Models\\User', 23, 'API TOKEN', '1c12c908366a4c582b0f9049d2db6ef3c080a04d7590d7ae824db3945c120b71', '["*"]', NULL, NULL, '2023-12-02 01:21:33', '2023-12-02 01:21:33'),
	(15, 'App\\Models\\User', 23, 'API TOKEN', '9c9967a7c15b1ee3ba591878e9632721eca9658039077838dcebf6c0251bf0e7', '["*"]', NULL, NULL, '2023-12-02 01:22:41', '2023-12-02 01:22:41'),
	(16, 'App\\Models\\User', 23, 'API TOKEN', 'e8163f88f501f1e869ec15f5a0c5e2e82779d41892ad78d817f6ee3ff4e50af6', '["*"]', NULL, NULL, '2023-12-02 02:11:57', '2023-12-02 02:11:57'),
	(17, 'App\\Models\\User', 17, 'API TOKEN', '19d8bae293ed9477cef3981b59cb60a777f16e4cff87b8e8fc800fa2066754e6', '["*"]', NULL, NULL, '2023-12-26 02:10:07', '2023-12-26 02:10:07');

-- Dumping structure for table news.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.products: ~2 rows (approximately)
INSERT INTO `products` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`, `category_id`, `brand_id`, `image`, `size`, `featured`) VALUES
	(33, 'Jewellery66668', 5000.00, 'It\'s a pure village Ghee', '2023-12-27 23:42:41', '2024-01-03 00:13:44', '23', '8', 'z29uDL0zVpDz9K8DbzQ2.jpg', '500kg:30, 1kg:200', NULL),
	(35, 'Jewellery66666', 300.00, 'It\'s a pure village milk', '2024-01-02 23:50:32', '2024-01-03 00:16:48', '23', '8', 'heucJ98zMNqrPWJKjL4y.jpg', '500kg:30, 1kg:200', 0);

-- Dumping structure for table news.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.roles: ~4 rows (approximately)
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(5, 'admin', 'web', '2024-04-09 06:16:22', '2024-04-30 01:29:01'),
	(7, 'All', 'web', '2024-04-10 01:22:24', '2024-04-10 01:22:24'),
	(9, 'superadmin', 'web', '2024-04-30 03:44:04', '2024-04-30 03:44:04'),
	(10, 'user', 'web', '2024-04-30 03:44:15', '2024-04-30 03:44:15');

-- Dumping structure for table news.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.role_has_permissions: ~4 rows (approximately)
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(6, 5),
	(4, 7),
	(5, 7),
	(6, 7);

-- Dumping structure for table news.scolink
CREATE TABLE IF NOT EXISTS `scolink` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scolink` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.scolink: ~0 rows (approximately)

-- Dumping structure for table news.service
CREATE TABLE IF NOT EXISTS `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metatitle` varchar(255) DEFAULT NULL,
  `metadescription` varchar(255) DEFAULT NULL,
  `ogtitle` varchar(255) DEFAULT NULL,
  `ogdescription` varchar(255) DEFAULT NULL,
  `ogimage` varchar(255) DEFAULT NULL,
  `ogurl` varchar(255) DEFAULT NULL,
  `ogtype` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.service: ~1 rows (approximately)
INSERT INTO `service` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(14, 'Add service1', 'Add service1', 'Add service1', 'Add service1', 'http://final-admin.test/public/images/1705386163.jpg', 'Add service1', 'Add service1', '2024-01-22 22:49:44', '2024-02-06 23:29:59');

-- Dumping structure for table news.smtp
CREATE TABLE IF NOT EXISTS `smtp` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `MAIL_MAILER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL_HOST` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL_PORT` int NOT NULL,
  `MAIL_USERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL_PASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL_ENCRYPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL_FROM_ADDRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MAIL_FROM_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.smtp: ~1 rows (approximately)
INSERT INTO `smtp` (`id`, `MAIL_MAILER`, `MAIL_HOST`, `MAIL_PORT`, `MAIL_USERNAME`, `MAIL_PASSWORD`, `MAIL_ENCRYPTION`, `MAIL_FROM_ADDRESS`, `MAIL_FROM_NAME`, `created_at`, `updated_at`) VALUES
	(6, 'smtp', 'smtp.gmail.com', 587, 'alexalphons82@gmail.com', '\'hqdk gucd xxhe zelm\'', 'ssl', NULL, NULL, '2023-12-07 04:47:27', '2023-12-07 04:53:30');

-- Dumping structure for table news.socia
CREATE TABLE IF NOT EXISTS `socia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contact` varchar(50) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `is_social` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.socia: ~2 rows (approximately)
INSERT INTO `socia` (`id`, `contact`, `description`, `facebook`, `twitter`, `instagram`, `google`, `is_social`, `created_at`, `updated_at`) VALUES
	(23, NULL, NULL, 'https://www.facebook.com/YourPage', 'https://twitter.com/YourHandle', 'https://www.instagram.com/YourUsername', 'https://plus.google.com/YourPage', '0', '2024-02-18 22:59:46', '2024-02-18 22:59:46'),
	(26, 'Contact Us', 'For general inquiries, partnership opportunities, or any other questions', NULL, NULL, NULL, NULL, '1', '2024-02-19 05:30:46', '2024-02-19 05:30:46');

-- Dumping structure for table news.soloblog
CREATE TABLE IF NOT EXISTS `soloblog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metatitle` varchar(255) DEFAULT NULL,
  `metadescription` varchar(255) DEFAULT NULL,
  `ogtitle` varchar(255) DEFAULT NULL,
  `ogdescription` varchar(255) DEFAULT NULL,
  `ogimage` varchar(255) DEFAULT NULL,
  `ogurl` varchar(255) DEFAULT NULL,
  `ogtype` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.soloblog: ~1 rows (approximately)
INSERT INTO `soloblog` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(11, 'Add blog one data', 'Add blog one data', 'Add blog one data', 'Add blog one data', 'Add blog one data', 'Add blog one data', 'Add blog one data', '2024-01-23 04:53:35', '2024-01-23 04:53:35');

-- Dumping structure for table news.solowork
CREATE TABLE IF NOT EXISTS `solowork` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metatitle` varchar(255) DEFAULT NULL,
  `metadescription` varchar(255) DEFAULT NULL,
  `ogtitle` varchar(255) DEFAULT NULL,
  `ogdescription` varchar(255) DEFAULT NULL,
  `ogimage` varchar(255) DEFAULT NULL,
  `ogurl` varchar(255) DEFAULT NULL,
  `ogtype` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.solowork: ~1 rows (approximately)
INSERT INTO `solowork` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(11, 'Add one work SEO8888', 'Add one work SEO9999', 'Add one work SEO-----', 'Add one work SEO', 'Add one work SEO', 'Add one work SEO1212121', 'Add one work SEO1212121', '2024-01-23 04:36:19', '2024-01-23 04:42:40');

-- Dumping structure for table news.tag
CREATE TABLE IF NOT EXISTS `tag` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.tag: ~10 rows (approximately)
INSERT INTO `tag` (`id`, `tag`, `created_at`, `updated_at`) VALUES
	(4, 'english', '2024-04-23 03:40:59', '2024-04-23 03:40:59'),
	(5, 'maths', '2024-04-23 03:41:07', '2024-04-23 03:41:07'),
	(72, 'ggg', '2024-04-25 01:28:17', '2024-04-25 01:28:17'),
	(79, 'sdf', '2024-04-25 01:52:41', '2024-04-25 01:52:41'),
	(80, 'ddd', '2024-04-25 01:59:13', '2024-04-25 01:59:13'),
	(84, 'tamil', '2024-04-29 01:42:32', '2024-04-29 01:42:32'),
	(85, 'xxx', '2024-04-30 03:48:19', '2024-04-30 03:48:19'),
	(86, 'xxxxx', '2024-04-30 03:48:30', '2024-04-30 03:48:30'),
	(87, '45', '2024-04-30 03:54:31', '2024-04-30 03:54:31'),
	(88, 'dfdfdf', '2024-05-02 00:23:08', '2024-05-02 00:23:08');

-- Dumping structure for table news.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint NOT NULL DEFAULT '0' COMMENT '0:customer\r\n1:admin',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0:active, 1:inactive',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delete` tinyint NOT NULL DEFAULT '0' COMMENT '0:notdeleted, 1:deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table news.users: ~3 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `status`, `role`, `is_delete`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@mail.com', '2023-10-23 11:49:15', '$2y$10$jAVevbqZ0VFE1pd5Vz3.3.uL43zpsmOsG9Woe2qd25I5uDisOdxQO', NULL, 1, 0, '0', 2, NULL, '2024-04-10 01:13:18'),
	(43, 'superadmin', 'superadmin@mail.com', NULL, '$2y$10$bRQ.UoZPVcSMkNVS7zj27eWQMD3VZ34Nh/zNeR/Dqc.6hPNi.x3Ga', NULL, 1, 0, '0', 0, '2024-04-29 00:05:10', '2024-04-29 00:05:10'),
	(44, 'admin', 'admin1@mail.com', NULL, '$2y$10$QHH9623hh4guZvEZXf47GuM5VGDqQdyieKeahL0zKy5Yuuj.IvVPC', NULL, 1, 0, '0', 0, '2024-04-29 00:06:29', '2024-04-29 00:06:29');

-- Dumping structure for table news.work
CREATE TABLE IF NOT EXISTS `work` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metatitle` varchar(255) DEFAULT NULL,
  `metadescription` varchar(255) DEFAULT NULL,
  `ogtitle` varchar(255) DEFAULT NULL,
  `ogdescription` varchar(255) DEFAULT NULL,
  `ogimage` varchar(255) DEFAULT NULL,
  `ogurl` varchar(255) DEFAULT NULL,
  `ogtype` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table news.work: ~1 rows (approximately)
INSERT INTO `work` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(12, 'Add work data2', 'Add work data2', 'Add work data2', 'Add work data2', 'http://final-admin.test/public/images/1705386163.jpg', 'Add work data2', 'Add work data2', '2024-01-23 00:27:26', '2024-02-07 00:02:39');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
