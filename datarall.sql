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


-- Dumping database structure for raal-tech
CREATE DATABASE IF NOT EXISTS `raal-tech` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `raal-tech`;

-- Dumping structure for table raal-tech.about
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

-- Dumping data for table raal-tech.about: ~0 rows (approximately)
INSERT INTO `about` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(16, 'Add About', 'Add About', 'Add About', 'Add About', 'Add About', 'Add About', 'Add About', '2024-01-22 22:42:11', '2024-01-22 22:42:11');

-- Dumping structure for table raal-tech.addservice
CREATE TABLE IF NOT EXISTS `addservice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.addservice: ~12 rows (approximately)
INSERT INTO `addservice` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
	(39, 'Patentability Search', '1709009948_1707817132_v2.jpg', 'We uncover the potential of your invention and help you make informed decisions.', '2024-02-26 23:29:08', '2024-02-26 23:29:08'),
	(40, 'Patent Drafting', '1709018793_Untitled-7.png', 'Our experts craft compelling patent applications that encapsulate your innovations.', '2024-02-26 23:30:37', '2024-02-27 01:56:33'),
	(41, 'Patent Prosecution', '1709010126_1707816603_v5.jpg', 'From drafting to granting, we guide you through the intricate patent filing process.', '2024-02-26 23:32:06', '2024-02-26 23:32:06'),
	(42, 'Maintenance of Patents', '1709010199_1707816717_trade3.png', 'We ensure your intellectual property remains secure , up to date and maintaining the IPR portfolio.', '2024-02-26 23:33:19', '2024-02-26 23:33:19'),
	(43, 'Design', '1709010403_patend1.png', 'Protecting the unique aesthetics of newly designed machinery , instruments and products.', '2024-02-26 23:35:29', '2024-02-26 23:36:43'),
	(44, 'Paralegal Services', '1709010469_copy1.jpg', 'Assisting with legal tasks to streamline the operations.', '2024-02-26 23:37:49', '2024-02-26 23:37:49'),
	(45, 'Trademark', '1709010666_bg2.jpg', 'Safeguarding your brand identity and reputation of the business with a company LOGO and slogan in a competitive marketplace.', '2024-02-26 23:38:26', '2024-02-26 23:41:06'),
	(46, 'Copyright', '1709010612_t1.png', 'Reserving your artistic, literary/Books, and musical creations. We also offer copyright enforcement services to safeguard your interests.', '2024-02-26 23:40:12', '2024-02-26 23:40:12'),
	(47, 'Patent Litigation', '1709010710_copy2.jpg', 'Resolving disputes and protecting your rights after grant (Enforcement part of IPR).', '2024-02-26 23:41:50', '2024-02-26 23:41:50'),
	(48, 'Patent Landscaping', '1709010743_d1.jpg', 'A deep dive into the intellectual property landscape for strategic insights.', '2024-02-26 23:42:23', '2024-02-26 23:42:23'),
	(49, 'Patent Licensing & Commercialization', '1709010786_b2.jpg', 'Unlock the full potential of your patents , reach to the market.', '2024-02-26 23:43:06', '2024-02-26 23:43:06'),
	(50, 'R&D Assisting and Training', '1709010828_c1.jpg', 'Nurturing innovation and helping teams reach their full potential.', '2024-02-26 23:43:48', '2024-02-26 23:43:48');

-- Dumping structure for table raal-tech.backgroundimage
CREATE TABLE IF NOT EXISTS `backgroundimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.backgroundimage: ~0 rows (approximately)
INSERT INTO `backgroundimage` (`id`, `image_path`, `created_at`, `updated_at`) VALUES
	(7, '1703825227.jpg', '2023-12-28 23:17:07', '2023-12-28 23:17:07');

-- Dumping structure for table raal-tech.blog
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL DEFAULT '0',
  `Tittle` varchar(255) DEFAULT NULL,
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `amenities` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `multiimage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.blog: ~8 rows (approximately)
INSERT INTO `blog` (`id`, `type`, `Tittle`, `Description`, `Image`, `price`, `address`, `condition`, `amenities`, `multiimage`, `created_at`, `updated_at`) VALUES
	(134, 3, 'Mariyasa de Casel', 'Ortiz is one of the most popular real estate company all around USA. You can find your dream property or build property with us. We always provide importance to our customer that what they want or what they like ipsam ursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure\r\n\r\nOrtiz is one of the most popular real estate company all around USA. You can find your dream property or build property with us. We always provide importance to our customer that what they want or what they like ipsam ursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone', '1706770555.jpg', '5000', '22 Aveniew Tower (5th floor) First Street, Chicago, USA2', 'Areas:1200  Sqrt️,,Bedroom:4️,,Bathroom:6️,,Kitchen:4️,, Leaving room:5️,,Garage:4️', 'Internet️,,Internet ️,,Balcony ️,,Cable TV️,,Bedding ,,Air Conditioning', '1706770551_3e23876a-0b86-4b38-a607-fb7549158714.jpg,1706770551_b9456c99-c1c0-49c2-8bf8-43e2b85148c8.jpg', '2024-02-01 01:25:55', '2024-02-01 10:58:13'),
	(135, 4, 'Mariyasa de Casel4', 'Ortiz is one of the most popular real estate company all around USA. You can find your dream property or build property with us. We always provide importance to our customer that what they want or what they like ipsam ursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure\r\n\r\nOrtiz is one of the most popular real estate company all around USA. You can find your dream property or build property with us. We always provide importance to our customer that what they want or what they like ipsam ursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone', '1706770555.jpg', '10000', '22 Aveniew Tower (5th floor) First Street, Chicago, USA', 'Areas:1200  Sqrt,,Bedroom:4,,Bathroom:6,,Kitchen:4,, Leaving room:5,,Garage:4,,data:data1', 'Internet ,,Internet ,,Balcony ,,Cable TV,,Bedding ,,Air Conditioning,,Toaster', '1706782622_images_(69).jpg,1706782623_images_(59).jpg,1706782725_images_(70).jpg', '2024-01-31 19:55:55', '2024-02-01 04:48:46'),
	(136, 4, 'Mariyasa de Casel4', 'Ortiz is one of the most popular real estate company all around USA. You can find your dream property or build property with us. We always provide importance to our customer that what they want or what they like ipsam ursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure\r\n\r\nOrtiz is one of the most popular real estate company all around USA. You can find your dream property or build property with us. We always provide importance to our customer that what they want or what they like ipsam ursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone', '1706770555.jpg', '5000', '22 Aveniew Tower (5th floor) First Street, Chicago, USA', 'Areas:1200  Sqrt,,Bedroom:4,,Bathroom:6,,Kitchen:4,, Leaving room:5,,Garage:4', 'Internet ,,Internet ,,Balcony ,,Cable TV,,Bedding ,,Air Conditioning', '1706770551_b9456c99-c1c0-49c2-8bf8-43e2b85148c8.jpg', '2024-01-31 19:55:55', '2024-01-31 20:09:25'),
	(137, 3, 'good land', 'A “Land Description” is how a tract or parcel of land is delineated, such that the description shows exactly where it is located, how it is bounded, and how many acres it contains. This description is done in terms that are legally accepted and defined.', '1706785762.jpg', '23000', '22 Aveniew Tower (5th floor) First Street, Chicago, USA666', 'Areas:200 Sqrt,,Bedroom:5,,Kitchen:4,,Leaving room:5,,Garage:5', 'Toaster,,Balcony ️,,Cable TV️,, Air Conditioning,,Bedding ,,Balcony ️,,Cable TV️', '1706785755_1706769353_images_(69).jpg,1706785755_1706769353_images_(70).jpg,1706785755_1706769353_images_(71).jpg,1706785755_1706769541_images_(59).jpg,1706785755_1706769541_images_(69).jpg', '2024-02-01 05:39:22', '2024-02-01 05:41:31'),
	(138, 1, 'Home', 'A home property typically refers to a residential dwelling, ranging from single-family houses to apartments or condominiums. It can vary in size, layout, and features, such as the number of bedrooms, bathrooms, and amenities like a backyard or garage. The property\'s location, neighborhood, and surrounding facilities also play a crucial role in its description and overall value.', '1706846953.jpg', '35000', '123 Main Street\r\nCityville, State 54321\r\nUnited States', 'dfd:sdfadf,,sdfsa:sdfas,,sdfas:sdfas,,sdfsa:sdfa,,sdfas:sdf,,sdfas:sdf', 'Toaster', '1706846942_images_(74).jpg,1706846942_images_(71).jpg,1706846942_images_(73).jpg,1706846942_images_(72).jpg,1706846942_images_(7).jpg', '2024-02-01 22:39:14', '2024-02-01 22:39:14'),
	(139, 1, 'Home good', 'It can vary in size, layout, and features, such as the number of bedrooms, bathrooms, and amenities like a backyard or garage. The property\'s location, neighborhood, and surrounding facilities also play a crucial role in its description and overall value.', '1706847063.jpg', '32000', '123 Main Street\r\nCityville, State 54321\r\nUnited States 12', 'sdfsd:sdfsd,,sdfsd:sdfsd,,sdfsd:sdfsd,,sdfsd:gn', 'Toaster,,Toaster,,czxvxzxvz', '1706847060_images_(84).jpg,1706847060_images_(83).jpg,1706847060_images_(82).jpg,1706847060_images_(81).jpg', '2024-02-01 22:41:03', '2024-02-01 22:41:03'),
	(140, 2, 'House to rent', 'A home property typically refers to a residential dwelling, ranging from single-family houses to apartments or condominiums. It can vary in size, layout, and features, such as the number of bedrooms, bathrooms, and amenities like a backyard or garage. The property\'s location, neighborhood, and surrounding facilities also play a crucial role in its description and overall value.', '1706847156.jpg', '70009', '123 Main Street\r\nCityville, State 54321\r\nUnited States  33', 'sdfsd:sdfsd', 'Toaster,,Toaster,,czxvxzxvz,,czxvxzxvz', '1706847145_images_(83).jpg,1706847145_images_(81).jpg,1706847145_images_(76).jpg,1706847145_images_(75).jpg', '2024-02-01 22:42:36', '2024-02-01 22:42:36'),
	(141, 2, 'Rent for house', 'A home property typically refers to a residential dwelling, ranging from single-family houses to apartments or condominiums. It can vary in size, layout, and features, such as the number of bedrooms, bathrooms, and amenities like a backyard or garage. The property\'s location, neighborhood, and surrounding facilities also play a crucial role in its description and overall value.', '1706847238.jpg', '90000000000000', '123 Main Street\r\nCityville, State 54321\r\nUnited States 76', 'dsf:sdf,,sdf:sdf,,sdf:sdfsd,,sdf:sdf', 'Toaster,,sdf', '1706847235_images_(81).jpg,1706847235_images_(80).jpg,1706847235_images_(79).jpg,1706847236_images_(78).jpg', '2024-02-01 22:43:58', '2024-02-02 06:38:43'),
	(142, 0, 'title', 'dada', '1707536926.jpg', NULL, NULL, NULL, NULL, '1707536924_images_(84).jpg,1707536924_images_(83).jpg', '2024-02-09 22:18:46', '2024-02-09 22:18:46'),
	(143, 0, 'dfsa', 'asdf', '1707550278.jpg', NULL, NULL, NULL, NULL, '1707550276_images_(73).jpg', '2024-02-10 02:01:18', '2024-02-10 02:01:18');

-- Dumping structure for table raal-tech.blogimage
CREATE TABLE IF NOT EXISTS `blogimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.blogimage: ~0 rows (approximately)

-- Dumping structure for table raal-tech.blogsco
CREATE TABLE IF NOT EXISTS `blogsco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `multiimage` varchar(255) DEFAULT NULL,
  `tech` varchar(255) DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `image` varchar(255) DEFAULT NULL,
  `metatitle` varchar(255) DEFAULT NULL,
  `metadescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ogtitle` varchar(255) DEFAULT NULL,
  `ogdescription` varchar(255) DEFAULT NULL,
  `ogimage` varchar(255) DEFAULT NULL,
  `ogurl` varchar(255) DEFAULT NULL,
  `ogtype` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.blogsco: ~4 rows (approximately)
INSERT INTO `blogsco` (`id`, `title`, `description`, `multiimage`, `tech`, `content`, `image`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `slug`, `created_at`, `updated_at`) VALUES
	(65, 'MSME registered - RAALTECH Solutions', 'recognized by the Ministry of Small, Medium and Micro Enterprises, Govt. of India.', NULL, 'RAAL TECH SOLUTION', '<p><img src="http://raal-tech.test/public/images/1707819704_MSME.jpg" width="603" height="482"></p><figure class="image image-style-side"><img style="aspect-ratio:2048/1365;" src="http://raal-tech.test/public/images/1707819704_msme1.jpg" width="2048" height="1365"></figure><figure class="image image-style-side"><img style="aspect-ratio:1600/1066;" src="http://raal-tech.test/public/images/1707819704_WhatsApp_Image_2023-09-24_at_7.22.48_AM_(3).jpeg" width="1600" height="1066"></figure><figure class="image image-style-side"><img style="aspect-ratio:1600/1066;" src="http://raal-tech.test/public/images/1707819704_WhatsApp_Image_2023-09-24_at_7.22.48_AM_(7).jpeg" width="1600" height="1066"></figure><h2><strong>Get ready for an immersive experience...</strong></h2><p>Join us on 2023 at Chennai for a day of exploration, collaboration, and groundbreaking insights.</p><h2><strong>What to Expect:</strong></h2><ul><li>🚀 <strong>Cutting-Edge Keynotes:</strong> Renowned industry leaders sharing their vision and expertise.</li><li>💡 <strong>Interactive Workshops:</strong> Dive deep into the latest [industry/technology] trends and advancements.</li><li>🌐 <strong>Networking Opportunities:</strong> Connect with like-minded professionals and expand your network.</li><li>🔧 <strong>Hands-On Demos:</strong> Experience firsthand the latest innovations shaping the future.</li></ul><h2><strong>Why Attend:</strong></h2><p>At Raal Tech, we bring together the brightest minds . Whether you\'re a seasoned professional, an entrepreneur, or a student, this event is your gateway to staying ahead in a rapidly evolving landscape. Gain insights, forge partnerships, and be part of the conversations that define the future.</p><h2><strong>Featured Speakers:</strong></h2><ul><li>🎤 Managing Director</li><li>🎤 Technical Lead</li><li>🎤 Business Development</li><li>🎤 Patent Litigation Trainee</li><li>🎤 Design Engineer</li><li>🎤 Trademark Attorney</li></ul><h2><strong>Registration Details:</strong></h2><p>Don\'t miss out on this transformative experience! Secure your spot today by registering <a href="[registration link]"><strong>here</strong></a>. Early bird discounts available until [Early Bird Deadline].</p><h2><strong>Sponsors and Partners:</strong></h2><p>A special thank you to our sponsors and partners for making possible. Interested in becoming a sponsor? Contact us <a href="[sponsor contact link]"><strong>here</strong></a>.</p><h2><strong>Connect with Us:</strong></h2><p>Stay updated on news and announcements. Follow us on Social Media Handles and join the conversation using #EventName2023.</p>', '1707819744_WhatsApp_Image_2023-09-24_at_7.22.48_AM_(7).jpeg', 'MSME registered - RAALTECH Solutions', 'recognized by the Ministry of Small, Medium and Micro Enterprises, Govt. of India.', NULL, NULL, '1707819744_WhatsApp_Image_2023-09-24_at_7.22.48_AM_(7).jpeg', NULL, NULL, 'MSME registered - RAALTECH Solutions', '2024-02-13 04:52:24', '2024-02-27 05:21:17'),
	(66, 'ISO - RAALTECH Solutions', 'successfully obtained an ISO 9001:2015 quality management certificate through various audits and confirmation of standards practiced at the company .', NULL, 'RAAL TECH SOLUTION', '<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><figure class="image"><img style="aspect-ratio:603/482;" src="http://raal-tech.test/public/images/1707820103_MSME.jpg" width="603" height="482"></figure><figure class="image"><img style="aspect-ratio:2048/1365;" src="http://raal-tech.test/public/images/1707820102_msme1.jpg" width="2048" height="1365"></figure><figure class="image"><img style="aspect-ratio:1600/1066;" src="http://raal-tech.test/public/images/1707820102_WhatsApp_Image_2023-09-24_at_7.22.48_AM_(3).jpeg" width="1600" height="1066"></figure><h2><strong>Get ready for an immersive experience...</strong></h2><p>Join us on 2023 at Chennai for a day of exploration, collaboration, and groundbreaking insights.</p><h2><strong>What to Expect:</strong></h2><ul><li>🚀 <strong>Cutting-Edge Keynotes:</strong> Renowned industry leaders sharing their vision and expertise.</li><li>💡 <strong>Interactive Workshops:</strong> Dive deep into the latest [industry/technology] trends and advancements.</li><li>🌐 <strong>Networking Opportunities:</strong> Connect with like-minded professionals and expand your network.</li><li>🔧 <strong>Hands-On Demos:</strong> Experience firsthand the latest innovations shaping the future.</li></ul><h2><strong>Why Attend:</strong></h2><p>At Raal Tech, we bring together the brightest minds . Whether you\'re a seasoned professional, an entrepreneur, or a student, this event is your gateway to staying ahead in a rapidly evolving landscape. Gain insights, forge partnerships, and be part of the conversations that define the future.</p><h2><strong>Featured Speakers:</strong></h2><ul><li>🎤 Managing Director</li><li>🎤 Technical Lead</li><li>🎤 Business Development</li><li>🎤 Patent Litigation Trainee</li><li>🎤 Design Engineer</li><li>🎤 Trademark Attorney</li></ul><h2><strong>Registration Details:</strong></h2><p>Don\'t miss out on this transformative experience! Secure your spot today by registering <a href="[registration link]"><strong>here</strong></a>. Early bird discounts available until [Early Bird Deadline].</p><h2><strong>Sponsors and Partners:</strong></h2><p>A special thank you to our sponsors and partners for making possible. Interested in becoming a sponsor? Contact us <a href="[sponsor contact link]"><strong>here</strong></a>.</p><h2><strong>Connect with Us:</strong></h2><p>Stay updated on news and announcements. Follow us on Social Media Handles and join the conversation using #EventName2023.</p><figure class="image image-style-side"><img style="aspect-ratio:300/168;" src="http://raal-tech.test/public/images/1709029445_images_(75).jpg" width="300" height="168"><figcaption>&nbsp;</figcaption></figure>', '1707820106_WhatsApp_Image_2023-09-24_at_7.22.48_AM_(3).jpeg', 'ISO - RAALTECH Solutions', 'successfully obtained an ISO 9001:2015 quality management certificate through various audits and confirmation of standards practiced at the company .', NULL, NULL, '1707820106_WhatsApp_Image_2023-09-24_at_7.22.48_AM_(3).jpeg', NULL, NULL, 'ISO - RAALTECH Solutions', '2024-02-13 04:58:26', '2024-02-27 04:54:23'),
	(67, 'Press Conference on IPR', 'Dr Matheswaran Alagu, Technical Lead of RAALTECH Solutions attended an insightful press meeting and deliberately insisted on the crucial role of Intellectual Property Rights (IPR) in shaping our society, especially for science and engineering domain people. The press meeting provided an excellent platform to raise awareness about the importance of IPR.', NULL, 'RAAL TECH SOLUTION', '<p><strong>The basics that an organization needs:</strong></p><ol><li><strong>Multi-factor authentication (</strong><a href="https://www.dpsolutions.com/blog/multi-factor-authentication"><strong>MFA</strong></a><strong>). </strong>This identity and access management tool helps prevent credential theft and adds a layer of protection for user logins.</li><li><strong>Endpoint detection and response (</strong><a href="https://www.paloaltonetworks.com/cyberpedia/what-is-endpoint-detection-and-response-edr"><strong>EDR</strong></a><strong>). </strong>This monitoring tool needs to have human or automated responses to endpoint alerts.</li><li><strong>System </strong>These <a href="https://www.datto.com/blog/data-backup-and-recovery-methods-the-basics-you-need-to-know">backups</a> need to happen frequently, need to be encrypted, need to be offline, and need to be regularly tested to ensure they work as intended.</li><li><strong>Email filtering and web security. </strong>Business email compromise (<a href="https://www.proofpoint.com/us/blog/email-and-cloud-threats/raising-bar-detecting-and-responding-email-fraud-advanced-bec-defense">BEC</a>) attacks are on the rise and, considering that email is the main form of communication for many businesses and vendors, that element has to be protected from cyber criminals.</li><li><strong>Patch </strong>Many attacks begin with external exposure, and, unfortunately, over half of all vulnerability-originating breaches could’ve been prevented with proper patching. Implementing a regular <a href="https://www.dpsolutions.com/blog/proactive-it-services">patch management</a> strategy stops these threats in their tracks.</li><li><strong>Incident response planning and testing</strong>. Having a strong <a href="https://www.techtarget.com/searchsecurity/definition/incident-response">incident response</a> plan, and testing that plan to make sure it works, is critical for saving time, costs, and data if the worst-case scenario occurs.</li><li><a href="https://www.dpsolutions.com/it-support-services/end-user-security-training-services"><strong>Employee training</strong></a>. Users can be the first line of defense, and also a major target, when it comes to cybercrime. Building a strong culture of security awareness can prevent phishing attempts,<br><br>&nbsp;</li><li><strong>Limit domain privileges for accounts. </strong>If a breach occurs, lateral movement can be an organization’s worst fear. By limiting how users can move through the environment, and what they can access, a business is also limiting how a hacker could move through the system if they were to gain access through credential theft or another method.&nbsp;</li></ol><p><br>&nbsp;</p><h2><strong>Why Organizations Need Cyber Insurance<img src="https://www.dpsolutions.com/hs-fs/hubfs/Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg?width=563&amp;height=376&amp;name=Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg" alt="Why organizations need cyber insurance" srcset="https://www.dpsolutions.com/hs-fs/hubfs/Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg?width=282&amp;height=188&amp;name=Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg 282w, https://www.dpsolutions.com/hs-fs/hubfs/Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg?width=563&amp;height=376&amp;name=Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg 563w, https://www.dpsolutions.com/hs-fs/hubfs/Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg?width=845&amp;height=564&amp;name=Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg 845w, https://www.dpsolutions.com/hs-fs/hubfs/Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg?width=1126&amp;height=752&amp;name=Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg 1126w, https://www.dpsolutions.com/hs-fs/hubfs/Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg?width=1408&amp;height=940&amp;name=Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg 1408w, https://www.dpsolutions.com/hs-fs/hubfs/Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg?width=1689&amp;height=1128&amp;name=Image%20of%20pretty%20businessman%20balancing%20on%20rope.jpeg 1689w" sizes="100vw" width="563" height="376"></strong></h2><p>Implementing and managing all the above is not a small task for any organization. It takes tools, people, and money to make it happen, and how those measures are implemented depends on budgets, business needs, and what risk an organization is willing to accept. So, why do all of that just to obtain insurance? There are a few reasons all organization leaders should consider:</p><ul><li>It helps transfer risk, so the business does not assume ALL cyber risk</li><li>It helps the organization grow as they accept the challenge to make positive changes and further their security journey</li><li>It enables secure value creation — a secure business is worth more to customers, partners, and the market</li><li>It puts the organization in touch with risk mitigation resources and experts, unlocking an entire world of partners and assistance</li><li>It helps deliver the framework an organization needs for proper incident response</li></ul><p>All those aspects are beneficial to organizations from multiple perspectives. It’s important to note that cyber insurance alone can’t end risk, risk will always exist. But in the same way a beach-front property needs flood insurance, cyber insurance helps a business stay standing if a cyber storm blows in.</p>', '1707820282_MSME.jpg', 'Press Conference on IPR', 'Dr Matheswaran Alagu, Technical Lead of RAALTECH Solutions attended an insightful press meeting and deliberately insisted on the crucial role of Intellectual Property Rights (IPR) in shaping our society, especially for science and engineering domain people. The press meeting provided an excellent platform to raise awareness about the importance of IPR.', NULL, NULL, '1707820282_MSME.jpg', NULL, NULL, 'Press Conference on IPR', '2024-02-13 05:01:22', '2024-02-13 05:03:54'),
	(68, 'NSIC program', 'Dr Matheswaran Alagu, Technical Lead of RAALTECH Solutions had the privilege of being invited to deliver the guest lecture at the "Green Energy Technology" training program, hosted by The National Small Industries Corporation (NSIC), Hyderabad, a Government of India organization, on October 13, 2023.\r\n\r\nHe shared insights and knowledge on the topic of "SOLAR PV POWER PLANT PROJECT MANAGEMENT - A Case Study Approach" with a diverse set of audiences entrepreneurs, students, and professors', NULL, 'RAAL TECH SOLUTION', '<p>While traditional username and password combinations are susceptible to hacking and unauthorized access, MFA adds an extra layer of security by introducing additional factors. <a href="https://support.microsoft.com/en-us/topic/what-is-multifactor-authentication-e5e39437-121c-be60-d123-eda06bddf661">These factors</a> typically fall into three categories:</p><ol><li><strong>Something You Know:</strong> This could be a username, password, a PIN or some other form of personal information.</li><li><strong>Something You Have:</strong> This involves a physical device, such as a security token, smart card, or a mobile device.</li><li><strong>Something You Are</strong>: This refers to biometric data like fingerprints, retina scans, or facial recognition.<br><br><br>&nbsp;</li></ol><h2><strong>The Significance of Multi-Factor Authentication</strong></h2><p><img src="https://www.dpsolutions.com/hs-fs/hubfs/A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg?width=563&amp;height=418&amp;name=A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg" alt="Significance of Multi-Factor Authentication" srcset="https://www.dpsolutions.com/hs-fs/hubfs/A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg?width=282&amp;height=209&amp;name=A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg 282w, https://www.dpsolutions.com/hs-fs/hubfs/A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg?width=563&amp;height=418&amp;name=A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg 563w, https://www.dpsolutions.com/hs-fs/hubfs/A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg?width=845&amp;height=627&amp;name=A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg 845w, https://www.dpsolutions.com/hs-fs/hubfs/A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg?width=1126&amp;height=836&amp;name=A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg 1126w, https://www.dpsolutions.com/hs-fs/hubfs/A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg?width=1408&amp;height=1045&amp;name=A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg 1408w, https://www.dpsolutions.com/hs-fs/hubfs/A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg?width=1689&amp;height=1254&amp;name=A%20young%20internet%20geek%20working%20online%2c%20hacking%20login%20passwords%20of%20social%20media%20users%20concept%20with%20glowing%20drawn%20keys%20on%20the%20wall.jpeg 1689w" sizes="100vw" width="563" height="418"></p><p><strong>Multi-Factor Authentication (MFA) is a vital cybersecurity measure that not only enhances security but also helps organizations meet compliance requirements, obtain cyber liability insurance coverage, and deliver a personalized and user-friendly experience.&nbsp;</strong></p><p><strong>1. Enhanced Security:</strong><br>&nbsp;</p><p>Multi-Factor Authentication (MFA) serves as a crucial defense mechanism against unauthorized access by introducing multiple layers of security, thereby significantly enhancing the overall resilience of a system. The primary advantage lies in its ability to mitigate the risks associated with a single point of failure. If one authentication factor is compromised, whether it be a password, token, or biometric identifier, the additional layers of authentication act as formidable barriers that together create a robust defense against malicious intrusions.</p><p><strong>2. Compliance Requirements:</strong><br>&nbsp;</p><p>Many industries are <a href="https://www.okta.com/identity-101/which-industries-require-2fa/">subject to stringent data protection regulations</a>. Implementing MFA not only enhances security but also helps organizations meet a variety of compliance requirements, avoiding legal and financial repercussions. Beyond the direct security benefits, the adoption of MFA can serve as a proactive measure to demonstrate an organization\'s commitment to data protection and privacy compliance. Many regulations encourage or explicitly mandate the use of strong authentication methods, and implementing MFA positions an organization as being in line with industry best practices. This not only helps in avoiding potential fines and penalties associated with non-compliance but also enhances the organization\'s reputation by showcasing a commitment to safeguarding customer and employee data.</p><p><strong>3. Cyber Liability Insurance:</strong><br>&nbsp;</p><p>In recent years, many insurance providers have started emphasizing the importance of cybersecurity measures, including MFA, as part of risk mitigation strategies. Insurers are increasingly recognizing that businesses with robust cybersecurity practices, such as the implementation of MFA, are less susceptible to certain types of cyber threats. Consequently, some insurance providers may encourage or even require businesses to implement MFA as a condition for coverage or offer more favorable terms for those with strong cybersecurity measures in place.</p><p><strong>4. User Authentication Experience:</strong><br>&nbsp;</p><p>One of the key strengths of MFA is its versatility in authentication methods. Organizations can deploy a combination of factors, such as passwords, biometrics (fingerprint or facial recognition), smart cards, tokens, or one-time passcodes, to authenticate users. This flexibility enables organizations to accommodate diverse user preferences and needs. Some users may prefer the simplicity of a password and biometric scan, while others might opt for the added security of a hardware token or a mobile app generating one-time passcodes. The ability to choose from these various methods ensures that the authentication process is not one-size-fits-all, allowing organizations to cater to a wide range of user preferences.</p><p>&nbsp;</p><h2><strong>Implementing Multi-Factor Authentication</strong></h2><p><img src="https://www.dpsolutions.com/hs-fs/hubfs/illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg?width=566&amp;height=323&amp;name=illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg" alt="illustration of set of hazardous symbol on grey background" srcset="https://www.dpsolutions.com/hs-fs/hubfs/illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg?width=283&amp;height=162&amp;name=illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg 283w, https://www.dpsolutions.com/hs-fs/hubfs/illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg?width=566&amp;height=323&amp;name=illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg 566w, https://www.dpsolutions.com/hs-fs/hubfs/illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg?width=849&amp;height=485&amp;name=illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg 849w, https://www.dpsolutions.com/hs-fs/hubfs/illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg?width=1132&amp;height=646&amp;name=illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg 1132w, https://www.dpsolutions.com/hs-fs/hubfs/illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg?width=1415&amp;height=808&amp;name=illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg 1415w, https://www.dpsolutions.com/hs-fs/hubfs/illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg?width=1698&amp;height=969&amp;name=illustration%20of%20set%20of%20hazardous%20symbol%20on%20grey%20background.jpeg 1698w" sizes="100vw" width="566" height="323"></p><p><strong>For a successful implementation of Multi-Factor Authentication, it is crucial to follow the 3 steps below:</strong></p><p><strong>1. Assessment and Planning</strong></p><p>Before implementing MFA, organizations should conduct a thorough risk assessment and identify potential vulnerabilities. A well-thought-out plan ensures a smooth integration without disrupting daily operations.</p><p><strong>2. Choosing the Right Authentication Methods:</strong><br>&nbsp;</p><p>Depending on the organization\'s needs, different authentication methods can be employed. This could include one-time passcodes sent via SMS, biometric scans, or hardware tokens. The choice should align with the organization\'s security requirements and user preferences.</p><p><strong>3. User Education and Training:</strong></p><figure class="media"><oembed url="https://www.youtube.com/embed/wDUq7Ewe_Aw?si=ZdYh03VJEquR_ZEh&quot; title=&quot;YouTube video player"></oembed></figure><p>Successful implementation of MFA involves <a href="https://www.dpsolutions.com/it-support-services/end-user-security-training-services">educating users about the importance of security</a> and the new authentication processes. Training programs can empower users to understand the significance of MFA and use it effectively.</p><p>&nbsp;</p><h2><strong>The Benefits of Multi-Factor Authentication</strong></h2><p><img src="https://www.dpsolutions.com/hs-fs/hubfs/Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg?width=566&amp;height=378&amp;name=Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg" alt="Benefits of Multi-Factor Authentication" srcset="https://www.dpsolutions.com/hs-fs/hubfs/Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg?width=283&amp;height=189&amp;name=Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg 283w, https://www.dpsolutions.com/hs-fs/hubfs/Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg?width=566&amp;height=378&amp;name=Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg 566w, https://www.dpsolutions.com/hs-fs/hubfs/Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg?width=849&amp;height=567&amp;name=Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg 849w, https://www.dpsolutions.com/hs-fs/hubfs/Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg?width=1132&amp;height=756&amp;name=Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg 1132w, https://www.dpsolutions.com/hs-fs/hubfs/Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg?width=1415&amp;height=945&amp;name=Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg 1415w, https://www.dpsolutions.com/hs-fs/hubfs/Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg?width=1698&amp;height=1134&amp;name=Happy%20businessman%20with%20headset%20interacting%20in%20his%20office.jpeg 1698w" sizes="100vw" width="566" height="378"></p><p><strong>There are numerous advantages to implementing Multi-Factor Authentication. Here are three compelling reasons why your organization should embrace this powerful security measure:</strong></p><p><strong>1. Mitigating Phishing and Credential Attacks:</strong></p><p>MFA acts as a robust defense against <a href="https://www.dpsolutions.com/blog/phight-the-phish">phishing attacks</a>, where attackers attempt to trick individuals into revealing their login credentials. Even if the username and password are compromised, the additional factors prevent unauthorized access.</p><p><strong>2. Secure Remote Access:</strong><br>&nbsp;</p><p>With the rise of remote work, securing access to sensitive information from various locations is crucial. MFA provides an extra layer of protection, ensuring that only authorized individuals can access sensitive data remotely.</p><p><strong>3. Cost-Effective Security:</strong><br>&nbsp;</p><p>While the initial implementation may involve some investment, the long-term benefits of MFA far outweigh the costs. The enhanced security and reduced risk of data breaches can save organizations significant financial losses.</p>', '1707820343_WhatsApp_Image_2023-09-24_at_7.22.48_AM_(3).jpeg', 'NSIC program', 'Dr Matheswaran Alagu, Technical Lead of RAALTECH Solutions had the privilege of being invited to deliver the guest lecture at the "Green Energy Technology" training program, hosted by The National Small Industries Corporation (NSIC), Hyderabad, a Government of India organization, on October 13, 2023.\r\n\r\nHe shared insights and knowledge on the topic of "SOLAR PV POWER PLANT PROJECT MANAGEMENT - A Case Study Approach" with a diverse set of audiences entrepreneurs, students, and professors', NULL, NULL, '1707820343_WhatsApp_Image_2023-09-24_at_7.22.48_AM_(3).jpeg', NULL, NULL, 'NSIC program', '2024-02-13 05:02:23', '2024-02-23 02:16:57');

-- Dumping structure for table raal-tech.blogscocontent
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

-- Dumping data for table raal-tech.blogscocontent: ~0 rows (approximately)
INSERT INTO `blogscocontent` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(11, 'Add SEO blogs data1', 'Add SEO blogs data1', 'Add SEO blogs data', 'Add SEO blogs data1', 'Add SEO blogs data1', 'Add SEO blogs data1', 'Add SEO blogs data1', '2024-01-23 00:00:24', '2024-01-23 00:09:04');

-- Dumping structure for table raal-tech.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table raal-tech.brands: ~0 rows (approximately)
INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
	(8, 'NaattuMaadu', 0, NULL, NULL);

-- Dumping structure for table raal-tech.client_test
CREATE TABLE IF NOT EXISTS `client_test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `is_client` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.client_test: ~15 rows (approximately)
INSERT INTO `client_test` (`id`, `image`, `title`, `description`, `is_client`, `created_at`, `updated_at`) VALUES
	(43, '1707818444_c8.gif', NULL, NULL, '0', '2024-02-13 04:30:44', '2024-02-13 04:30:44'),
	(45, '1707818467_t1.png', NULL, NULL, '0', '2024-02-13 04:31:07', '2024-02-13 04:31:07'),
	(46, '1707818480_iit1.jpg', NULL, NULL, '0', '2024-02-13 04:31:20', '2024-02-13 04:31:20'),
	(47, '1707818493_ab1.jpg', NULL, NULL, '0', '2024-02-13 04:31:33', '2024-02-13 04:31:33'),
	(48, '1707818629_appollo.png', NULL, NULL, '0', '2024-02-13 04:33:49', '2024-02-13 04:33:49'),
	(49, NULL, '1709017904_Untitled-3.png', '"We\r\n                        thank\r\n                        RAALTECH Solutions\r\n                        for \r\n                        their expert guidance and dedication in handling our\r\n                        \r\n                        Trademark\r\n                        \r\n                        Application. We highly appreciate their exceptional service and expertise in\r\n                        Intellectual Property Rights. Thank\r\n                         you for safeguarding our innovation and supporting our\r\n                        business growth"', '1', '2024-02-13 04:46:39', '2024-02-27 01:41:44'),
	(50, NULL, '1709030854_Untitled-1.png', '"Whisperspace owes a debt of gratitude to\r\n                        RAALTEC\r\n                        H Solutions\r\n                        for their impeccable support in\r\n                        patent drafting. Their team of skilled professionals navigated the complexities of our invention\r\n                        with precision and expertise. We\'re truly grateful for their meticulous attention to detail and\r\n                        commitment to secur\r\n                        ing our intellectual property\r\n                        ."', '1', '2024-02-13 04:47:00', '2024-02-27 05:17:34'),
	(51, NULL, '1707887739_appollo.png', '"Axrad Renewpower Agri Machines Private Limited extends heartfelt appreciation to\r\n                        RAALTECH\r\n                        Solutions\r\n                        for their invaluable support in patent drafting and design registration for our electric\r\n                        vehicle innovation. Their team\'s expertise in navigating\r\n                         the intricacies of patent law and design\r\n                        registration was exemplary. Their dedication to capturing the essence of our electric vehicle\r\n                        technology was evident in every step of the process. Thanks to\r\n                        RAALTECH Solutions"', '1', '2024-02-13 04:47:45', '2024-02-13 23:45:39'),
	(52, NULL, '1709018022_Untitled-2.png', '"Alto Precision extends heartfelt appreciation to\r\n                        RAALTECH Solutions\r\n                        for their invaluable\r\n                        assistance in\r\n                       \r\n                         Registering the\r\n                       \r\n                         Designs for our groundbreaking agricultural machinery. Their team\r\n                        exhibited remarkable expertise in handling the intricacies of design registration, ensuring our\r\n                        innovation receives the protection it deserves. Their commitment to understanding the nuances\r\n                       \r\n                         of our invention and translating it into a registered design was exemplary. Thanks to\r\n                        RAALTECH\r\n                        Solutions\r\n                       "', '1', '2024-02-13 04:48:02', '2024-02-27 01:43:42'),
	(58, '1709016333_Untitled-1.png', NULL, NULL, '0', '2024-02-27 01:15:33', '2024-02-27 01:15:33'),
	(59, '1709016346_Untitled-2.png', NULL, NULL, '0', '2024-02-27 01:15:46', '2024-02-27 01:15:46'),
	(60, '1709017834_Untitled-3.png', NULL, NULL, '0', '2024-02-27 01:40:34', '2024-02-27 01:40:34'),
	(62, '1709027913_ab1.jpg', NULL, NULL, '0', '2024-02-27 04:28:33', '2024-02-27 04:28:33'),
	(64, '1709029073_Untitled9.png', NULL, NULL, '0', '2024-02-27 04:47:53', '2024-02-27 04:47:53');

-- Dumping structure for table raal-tech.contact
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

-- Dumping data for table raal-tech.contact: ~2 rows (approximately)
INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
	(8, 'John', 'john.doe@example.com', 89796550, 'This is a sample message.', '2024-01-03 08:11:18', '2024-01-03 08:11:18'),
	(11, 'Alex', 'john.doe@example.com', 76547457657, 'Alex fdhfgdhgfhgf', '2024-01-03 03:56:40', '2024-01-03 03:56:40');

-- Dumping structure for table raal-tech.contacts
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

-- Dumping data for table raal-tech.contacts: ~0 rows (approximately)
INSERT INTO `contacts` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(14, 'Add contact1', 'Add contact1', 'Add contact1', 'Add contact1', 'Add contact1', 'Add contact1', 'Add contact1', '2024-01-22 22:53:38', '2024-01-22 22:54:04');

-- Dumping structure for table raal-tech.contentblog
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

-- Dumping data for table raal-tech.contentblog: ~0 rows (approximately)

-- Dumping structure for table raal-tech.design
CREATE TABLE IF NOT EXISTS `design` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.design: ~4 rows (approximately)
INSERT INTO `design` (`id`, `image`, `created_at`, `updated_at`) VALUES
	(13, '1707824738_IAENG1.png', '2024-02-13 06:15:38', '2024-02-13 06:15:38'),
	(14, '1707824758_IFERP.jfif', '2024-02-13 06:15:58', '2024-02-13 06:15:58'),
	(15, '1707824777_NIPAM.jpg', '2024-02-13 06:16:17', '2024-02-13 06:16:17'),
	(16, '1707824825_IEOM_1.png', '2024-02-13 06:17:05', '2024-02-13 06:17:05'),
	(17, '1707824848_TSN-Certification.png', '2024-02-13 06:17:28', '2024-02-13 06:17:28');

-- Dumping structure for table raal-tech.failed_jobs
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

-- Dumping data for table raal-tech.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table raal-tech.franchise
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

-- Dumping data for table raal-tech.franchise: ~7 rows (approximately)
INSERT INTO `franchise` (`id`, `name`, `state`, `city`, `phone`, `created_at`, `updated_at`) VALUES
	(6, 'ser', 'state', 'city', '7639534668', '2023-12-07 22:50:14', '2023-12-07 22:50:14'),
	(7, 'Jewellery', 'state', 'city', '7639534668', '2023-12-07 22:51:06', '2023-12-07 22:51:06'),
	(8, 'Jewellery', 'state', 'city', '7639534668', '2023-12-08 00:57:41', '2023-12-08 00:57:41'),
	(9, 'Jewellery', 'state', 'city', '7639534668', '2023-12-08 00:58:38', '2023-12-08 00:58:38'),
	(10, 'Jewellery', 'state', 'city', '7639534668', '2023-12-08 01:00:02', '2023-12-08 01:00:02'),
	(11, 'kanaboomi', 'state', 'city', '7639534668', '2023-12-08 01:00:54', '2023-12-08 01:00:54'),
	(12, 'Jewellery', 'state', 'city', '7639534668', '2023-12-08 01:12:21', '2023-12-08 01:12:21');

-- Dumping structure for table raal-tech.gallery
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.gallery: ~1 rows (approximately)
INSERT INTO `gallery` (`id`, `image`, `created_at`, `updated_at`) VALUES
	(29, '1707722092_newlogo.png', '2024-02-12 01:44:52', '2024-02-12 01:44:52');

-- Dumping structure for table raal-tech.herogroundimage
CREATE TABLE IF NOT EXISTS `herogroundimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) DEFAULT NULL,
  `logo_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.herogroundimage: ~0 rows (approximately)
INSERT INTO `herogroundimage` (`id`, `image_path`, `logo_image`, `created_at`, `updated_at`) VALUES
	(22, '1704357174.3005-jpg', '1704357174.3018-jpg', '2024-01-04 03:02:54', '2024-01-04 03:02:54');

-- Dumping structure for table raal-tech.home
CREATE TABLE IF NOT EXISTS `home` (
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.home: ~0 rows (approximately)
INSERT INTO `home` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(19, 'Add home', 'Add home', 'Add home', 'Add home', 'Add home', 'Add home', 'Add home', '2024-01-22 22:42:36', '2024-01-22 22:42:36');

-- Dumping structure for table raal-tech.mailstores
CREATE TABLE IF NOT EXISTS `mailstores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table raal-tech.mailstores: ~6 rows (approximately)
INSERT INTO `mailstores` (`id`, `name`, `msg`, `phone`, `created_at`, `updated_at`) VALUES
	(76, 'Jewellery', 'fghd', '7339013359', '2024-02-02 06:15:55', '2024-02-02 06:15:55'),
	(82, 'f', 'sdf', 'sdf', '2024-02-10 04:05:23', '2024-02-10 04:05:23'),
	(84, 'sdf', 'sdf', 'sdf', '2024-02-10 04:06:33', '2024-02-10 04:06:33'),
	(91, 'dsfa', '7639534668', 'sdf', '2024-02-10 04:15:23', '2024-02-10 04:15:23'),
	(92, 'Jewellery 88', '(436) 486-3538 x29071', 'hhh', '2024-02-11 23:39:25', '2024-02-11 23:39:25'),
	(93, 'Jewellery', '7339013359', 'uj', '2024-02-27 04:49:51', '2024-02-27 04:49:51');

-- Dumping structure for table raal-tech.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table raal-tech.migrations: ~7 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_11_20_113409_create_carts_table', 2),
	(6, '2023_12_06_044516_create_smtp_table', 3),
	(10, '2023_12_06_103525_create_mailstores', 4);

-- Dumping structure for table raal-tech.orders
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

-- Dumping data for table raal-tech.orders: ~3 rows (approximately)
INSERT INTO `orders` (`id`, `user_id`, `session_id`, `billing_first_name`, `billing_last_name`, `billing_company_name`, `billing_address`, `billing_apartment`, `billing_city`, `billing_state`, `billing_postcode`, `billing_email`, `billing_phone`, `order_notes`, `order_id`, `payment_method`, `razorpay_payment_id`, `order_status`, `product_id`, `quantity`, `subtotal`, `payment_status`, `created_at`, `updated_at`) VALUES
	(21, 17, NULL, 'akex', 'al', 'company_name', NULL, 'apartment', 'marthandam', 'marthandam', '545456', 'tamilstoryapp1@gmail.com', '7639534668', 'notes', 'order_NGva0f6QRWJsWf', 'Razorpay', '122', 'cancelled', '[33,35]', '5,6', 900.000000, 'paid', '2023-12-26 04:10:12', '2024-01-03 06:29:31'),
	(24, 18, NULL, 'alex', 'alex', 'company_name', 'address', 'apartment', 'marthandam', 'marthandam', '545456', 'a@gmail.com', '76456356', 'notes', 'order_NGyIRJpGV5cyCY', 'Razorpay', '122', 'pending', '[33,35]', '6,3', 100.000000, 'unpaid', '2023-12-26 06:49:39', '2024-01-03 06:29:27'),
	(25, 19, NULL, 'alex', 'alex', 'company_name', 'address', 'apartment', 'marthandam', 'marthandam', '545456', 'a@gmail.com', '76456356', 'notes', 'order_NGyIcfB6ZMRt0f', 'Razorpay', '122', 'pending', '[33,35]', '9,6', 50.000000, 'unpaid', '2023-12-26 06:49:49', '2024-01-03 06:29:23');

-- Dumping structure for table raal-tech.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table raal-tech.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table raal-tech.personal_access_tokens
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

-- Dumping data for table raal-tech.personal_access_tokens: ~17 rows (approximately)
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

-- Dumping structure for table raal-tech.products
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

-- Dumping data for table raal-tech.products: ~2 rows (approximately)
INSERT INTO `products` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`, `category_id`, `brand_id`, `image`, `size`, `featured`) VALUES
	(33, 'Jewellery66668', 5000.00, 'It\'s a pure village Ghee', '2023-12-27 23:42:41', '2024-01-03 00:13:44', '23', '8', 'z29uDL0zVpDz9K8DbzQ2.jpg', '500kg:30, 1kg:200', NULL),
	(35, 'Jewellery66666', 300.00, 'It\'s a pure village milk', '2024-01-02 23:50:32', '2024-01-03 00:16:48', '23', '8', 'heucJ98zMNqrPWJKjL4y.jpg', '500kg:30, 1kg:200', 0);

-- Dumping structure for table raal-tech.raalcontact
CREATE TABLE IF NOT EXISTS `raalcontact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.raalcontact: ~6 rows (approximately)
INSERT INTO `raalcontact` (`id`, `address`, `title`, `email`, `number`, `created_at`, `updated_at`) VALUES
	(14, '622/42/1, 9th D Main, RPC layout, Hampi Nagar, Bangalore-560104, India.', 'India - Banglore', 'info@raaltechpublications.com', '9620 456 124', '2024-02-13 05:12:40', '2024-02-13 05:13:19'),
	(15, 'No:5/3, Ground floor, Subramanian street, Nehru Nagar, Chrompet, Chennai -600 044, India.', 'India - Chennai', 'info@raaltechpublications.com', '98438 04 304', '2024-02-13 05:14:00', '2024-02-13 05:14:00'),
	(16, 'RAALTECH Publications, ACE Innovation and Incubation Centre (AIIC), Amrita University, Coimbatore- 641 112, India.', 'India - Coimbatore', 'info@raaltechpublications.com', '70940 770 40', '2024-02-13 05:14:29', '2024-02-13 05:14:29'),
	(17, 'NSKD Techno Research and Innovation Solution, (Regional Publication Partner) 2/72, Bazaar Street, Adhiyamankottai, Dharmapuri, Tamilnadu.', 'India-Dharmapuri', 'nskdtris@gmail.com', '+91 97919 86874, +91 63831 85600', '2024-02-13 05:16:36', '2024-02-13 05:16:36'),
	(18, 'Postrße, 30,\r\nAlbstadt Ebingen,\r\nbaden württemberg,\r\nGermany-72458.', 'Germany', NULL, '+49 017480 18843', '2024-02-13 05:19:42', '2024-02-13 05:19:42'),
	(19, 'Fyrklovergatan 19,\r\nGothenburg – 41721,\r\nSweden.', 'Swedan', NULL, '+46 734 63 0009', '2024-02-13 05:20:04', '2024-02-13 05:20:04');

-- Dumping structure for table raal-tech.resource
CREATE TABLE IF NOT EXISTS `resource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.resource: ~4 rows (approximately)
INSERT INTO `resource` (`id`, `title`, `description`, `content`, `image`, `created_at`, `updated_at`) VALUES
	(16, 'Does the industry need IPR?', 'IPR provides creators and inventors with the exclusive rights to their creations or inventions for a limited period.…', '<p>A <a href="https://www.technologent.com/technology-pillar/hybrid-infrastructure">hybrid cloud environment</a> that combines on-premises infrastructure with cloud services is the preferred IT architecture for most organizations today. However, the model creates some challenges. In particular, the inadvertent creation of data silos often makes it difficult to share data across systems and applications. In one survey, more than half of organizations using hybrid cloud said finding data spread across on-premises and cloud environments is much harder than it should be.</p><p>&nbsp;</p><p>When mixing on-prem and cloud resources, it’s important to realize that different platforms will have likely unique data storage formats, access protocols and management systems. Plus, different cloud providers usually have proprietary interfaces and tools that can create interoperability issues. Such inconsistencies make it difficult to seamlessly integrate and share data across the hybrid infrastructure.</p><h3><strong>Data Sharing Strategies</strong></h3><p>To mitigate the risk of stranded data, organizations need to implement strategies and technologies that facilitate data integration, interoperability and governance across diverse platforms.</p><p><strong>Consider the following best practices:</strong></p><ul><li>Establish clear data governance policies to define how data should be handled, accessed and shared across different environments.</li><li>Standardize data formats to ensure interoperability across different cloud providers and on-premises systems. Formats such as JSON and XML are commonly supported.</li><li>Use cloud-agnostic application programming interfaces to create a standardized way for applications and services to communicate.</li><li>Containerize applications to make them easier to move across different cloud providers.</li><li>Instead of consolidating data into a central repository, use data virtualization to create a virtual layer that presents a unified view of the data regardless of its location or format.</li></ul><h3><strong>Opt for Automation</strong></h3><p>Ideally, organizations should automate as many data management tasks as possible. Manually performing tasks such as data entry, validation and reconciliation increases the risk of inaccuracies, duplications and misinterpretations that compromise data quality. Some organizations are discovering that the <a href="https://www.technologent.com/technology-pillar/digital-automation">automation tools</a> they use to orchestrate on-premises data pipelines can improve data sharing in a hybrid environment.</p><p>A data pipeline is a series of automated processes and tools that ingest raw data from various sources and transport it to a data warehouse, analytics platform or application. During this process, the data is cleaned, standardized and enriched to meet specific requirements. The transformed data is then loaded into a target storage or analytics environment, making it accessible for analysis, reporting or other business purposes.</p><p>For example, Apache NiFi is an open-source data integration tool that automates data flow between various systems. NiFi uses a graphical interface to design and manage data flows, making it accessible for users with different levels of technical expertise. NiFi processors are configured to ingest data from diverse sources, perform transformations as needed and then route the processed data to both on-premises and cloud-based destinations. Luigi, Azkaban, Apache Oozie and Control-M are other workload automation tools that can be used in hybrid cloud environments.</p><h3><strong>Controlling Costs</strong></h3><p><a href="https://www.technologent.com/technology-pillar/data-management">Automated data management tools</a> also help control costs. Cloud providers typically charge egress fees for moving data out of the cloud to an on-premises source, and large data transfers can add thousands of dollars to a company’s monthly bill. Automated tools can implement data compression techniques to reduce the volume of data transferred during both ingress and egress. Automated systems can also implement error-handling mechanisms that reduce the chances of data transfer failures, which could incur additional costs due to retransmission or manual intervention.</p><p>Businesses today pull data from hundreds of different sources to help them identify and evaluate market trends, customer preferences and operational challenges. That becomes exceedingly difficult when those data sources are scattered across different cloud and on-premises repositories. <a href="https://www.technologent.com/company/contact">Technologent can help you implement the tools and strategies you need</a> to extract the maximum value from your data. Contact us to learn more.</p><p><strong>Tags:</strong><a href="https://blog.technologent.com/topic/hybrid-cloud-infrastructure">Hybrid Cloud &amp; Infrastructure</a></p><p><img src="https://blog.technologent.com/hubfs/images/technologent-logo-profile.400x400px.png" alt="Technologent" width="400" height="400"></p><p>Post by <a href="https://blog.technologent.com/author/technologent">Technologent</a><br>January 10, 2024</p><p>Technologent is a women-owned, WBENC-certified and global provider of edge-to-edge Information Technology solutions and services for Fortune 1000 companies. With our internationally recognized technical and sales team and well-established partnerships between the most cutting-edge technology brands, Technologent powers your business through a combination of Hybrid Infrastructure, Automation, Security and Data Management: foundational IT pillars for your business. Together with Service Provider Solutions, Financial Services, Professional Services and our people, we’re paving the way for your operations with advanced solutions that aren’t just reactive, but forward-thinking and future-proof.</p>', '1707820731_images_(85).jpg', '2024-02-13 05:08:51', '2024-02-13 05:08:51'),
	(17, 'Trademark provide competitive advantages in business?', 'A trademark provides competitive advantages in business by serving as a unique identifier for a company\'s products or services. Here are several ways in which trademarks contribute to a business\'s competitive edge:', '<p>Confidentiality, integrity and availability represent the three legs of the CIA Triad, a framework that defines the core principles for information security. Since the model was introduced in 1977, cybersecurity professionals around the world have relied on it to guide decisions about how to best protect data, systems and networks.</p><p>&nbsp;</p><p>Many experts believe it is high time for an update, but it still offers valuable insight. Some argue that the “integrity” component has increased in importance amid ransomware and other attacks that modify data.</p><p>The world of information security has changed dramatically over the past five decades. Nevertheless, the three principles continue to play a role in the design and implementation of <a href="https://blog.technologent.com/artificial-intelligence-is-becoming-essential-to-effective-cybersecurity">effective security measures</a>. Confidentiality refers to the protection of sensitive data from unauthorized access or exposure. Integrity is about ensuring data remains accurate and unaltered by unauthorized parties or processes. Availability focuses on making data and services consistently accessible to authorized users.</p><p>Here are a few of the technologies, tools and management practices that organizations commonly employ when following Triad guidance:</p><h3><strong>Confidentiality</strong></h3><ul><li><strong>Encryption</strong> is among the fundamental tools for protecting sensitive information from unauthorized access, as are robust <strong>authentication</strong> methods such as multi-factor authentication (MFA), biometric verification, smart cards and security tokens.</li><li><strong>Access control</strong> mechanisms such as role-based access control (RBAC) and mandatory access control (MAC) are also essential for limiting who can access specific data and resources.</li><li><strong>Intrusion detection and prevention systems</strong> (IDPS) help identify and thwart unauthorized access attempts.</li><li><strong>Secure data storage</strong> solutions such as encrypted databases and file systems are important for protecting data at rest.</li><li><strong>Employee training</strong> helps ensure staff is familiar with risk factors and how to guard against them.</li></ul><h3><strong>Integrity</strong></h3><ul><li><strong>Data validation and verification tools</strong> help ensure that incoming data is accurate and has not been tampered with during transmission or processing.</li><li><strong>Hashing algorithms</strong> generate fixed-length hash values that act as digital fingerprints for data, making it possible to detect any unauthorized changes or tampering.</li><li><strong>Digital signatures </strong>authenticate the origin of data and guarantee its integrity.</li><li><strong>Secure backup</strong> and <strong>version control systems</strong> allow organizations to restore previous versions in case of corruption or unauthorized changes.</li><li><strong>Continuous monitoring</strong> helps security teams identify and respond to any anomalies or security breaches that may compromise data integrity.</li></ul><h3><strong>Availability</strong></h3><ul><li><strong>Monitoring tools</strong> and <strong>performance analysis software</strong> can proactively detect issues and performance bottlenecks that could impact availability.</li><li><strong>Load balancing solutions</strong> distribute network traffic evenly across multiple servers to prevent overload and ensure consistent access.</li><li><strong>High-availability clustering</strong> groups multiple servers to enhance fault tolerance and resilience.</li><li><strong>Redundancy</strong> is also a key strategy, using duplicate hardware, network connections and data centers to mitigate single points of failure.</li><li>Finally, <strong>backup</strong> and <strong>disaster recovery systems</strong> help organizations quickly recover from data loss or system failures to maintain availability.</li></ul><p>While the CIA Triad provides invaluable guidance, experts argue that it should be updated or expanded to better address the evolving technology landscape. A key criticism is that it is almost entirely focused on <a href="https://blog.technologent.com/maximize-value-data-assets-storage-tiering">securing data assets</a> held within an organization’s systems. The original triad may not sufficiently protect increasingly distributed and cloud-connected systems.</p><p>Additionally, <a href="https://blog.technologent.com/evolving-threats-endpoint-security-solutions">cyber threats have evolved significantly</a> since the ‘70s. The original triad may not adequately address threats such as advanced persistent threats, zero-day vulnerabilities and nation-state cyberattacks. As a result, more organizations are incorporating elements of other security frameworks such as AAA (authentication, authorization and accounting) and DIE (distributed, immutable and ephemeral).</p><p><a href="https://www.technologent.com/technology-pillar/cybersecurity">The cybersecurity pros at Technologent</a> are well-versed in these and many other security frameworks. <a href="https://www.technologent.com/company/contact">Contact us</a> to learn more about the latest guidance for safeguarding your data and systems.</p><p>&nbsp;</p><p><strong>Tags:</strong><a href="https://blog.technologent.com/topic/cybersecurity">Cybersecurity</a></p>', '1707820784_images_(87).jpg', '2024-02-13 05:09:44', '2024-02-13 05:09:44'),
	(18, 'Do you want to copyright your content?', 'If you are a content creator, author, artist, or someone producing original work, you may consider copyrighting your content to protect your', '<p>We thrill to the adventures of the suave, sophisticated James Bond with his tuxedos, martinis, tricked-out cars and a license to kill. However, the most daring spies today are wielding keyboards and software instead of guns and gadgets. Cyber spies who use computer systems to steal information from rival businesses or governmental organizations pose a growing threat to national security, business competitiveness and individual privacy.</p><p>&nbsp;</p><p>China, Russia, Iran and North Korea are the acknowledged leaders in state-sponsored cyber operations designed to steal intellectual property, trade secrets, proprietary technologies, military intelligence and more. The 2016 Democratic National Committee (DNC) hack by Russian operatives is among the more well-known examples of state-sponsored cyber espionage. A recent Microsoft report claims that such state-sponsored cyber incursions have doubled over the past two years.</p><p>State-sponsored hackers aren’t the only types engaging in these activities. Organized crime groups also conduct cyber espionage against businesses, governments and individuals for financial gain. Some cyber espionage is driven by competition within industries, with companies spying on each other to gain advantages, access proprietary technology or monitor market trends. Hacktivist collectives that promote social or political causes sometimes try to expose or embarrass select agencies or businesses by stealing and releasing sensitive information.</p><p>Cyber spies use a variety of techniques to gain access to confidential information. Here are some of the more common tactics:</p><h3><strong>Social Engineering</strong></h3><p>Cyber espionage relies heavily on social engineering tactics that are challenging to detect. It’s estimated that more than 80 percent of <a href="https://blog.technologent.com/deepfake-phishing-is-that-actually-your-boss-calling">cyber espionage incidents involve phishing</a>. Social engineering is attractive due to its cost-effectiveness, low technical requirements and high effectiveness. Attackers manipulate human psychology, which often makes tracking and attribution difficult.</p><h3><strong>Supply Chain Attacks</strong></h3><p>In these attacks, malicious actors infiltrate an organization’s trusted vendors, suppliers or software providers. By compromising these upstream sources, attackers can inject <a href="https://blog.technologent.com/bespoke-malware-and-ephemeral-infections-new-threats-on-the-horizon">malware, backdoors or other vulnerabilities</a> into widely used products or services, which then get distributed to the target’s network or user base. Once executed, these attacks allow cyber spies to exploit numerous victims, exfiltrate sensitive data and establish persistent access within a target’s environment.</p><h3><strong>Fake or Trojan Apps</strong></h3><p>Fake or Trojan apps are typically disguised as legitimate and desirable applications, enticing users to download and install them. Once installed, they can conduct various espionage activities, including data theft, remote surveillance, keylogging, backdoor access and even the propagation of additional malware. Some Trojan apps provide remote control capabilities, enabling cyber spies to access the device’s camera, microphone and file system, effectively turning the compromised device into a surveillance tool. Unofficial app stores are common distribution points for these malicious apps.</p><h3><strong>Watering Hole Attacks</strong></h3><p>In a watering hole attack, threat actors compromise a website or service regularly visited by target individuals or organizations. By injecting malware into the site, malicious actors can covertly deliver exploits to unsuspecting visitors, thereby gaining unauthorized access to their systems, networks and sensitive data. This tactic is particularly effective for espionage purposes, as it leverages the trust associated with familiar websites and significantly increases the chances of infiltrating high-value targets.</p><h3><strong>Catfishing</strong></h3><p>Catfishing, the practice of creating false personas to manipulate or deceive others, can be leveraged as a potent tool for cyber espionage. <a href="https://blog.technologent.com/insurance-under-fire-deepfakes-and-cyberattacks-run-rampant">Using fake online identities</a>, attackers establish trust and rapport with targeted individuals — often employees or individuals with access to sensitive information. By cultivating these virtual relationships, the attacker can extract critical details, initiate phishing attacks or manipulate their targets into unknowingly sharing confidential data.</p><p>Cloak-and-dagger tales of intrigue and espionage may capture our imaginations, but there’s nothing entertaining about a real-world cyber-espionage attack. In our next post, we’ll offer suggestions for preventing such attacks and safeguarding your most sensitive information.</p><p><strong>Tags:</strong><a href="https://blog.technologent.com/topic/it-automation">IT Automation, </a><a href="https://blog.technologent.com/topic/digital-automation">Digital Automation</a></p><p><img src="https://blog.technologent.com/hubfs/images/technologent-logo-profile.400x400px.png" alt="Technologent" width="400" height="400"></p><p>Post by <a href="https://blog.technologent.com/author/technologent">Technologent</a><br>November 24, 2023</p><p>Technologent is a women-owned, WBENC-certified and global provider of edge-to-edge Information Technology solutions and services for Fortune 1000 companies. With our internationally recognized technical and sales team and well-established partnerships between the most cutting-edge technology brands, Technologent powers your business through a combination of Hybrid Infrastructure, Automation, Security and Data Management: foundational IT pillars for your business. Together with Service Provider Solutions, Financial Services, Professional Services and our people, we’re paving the way for your operations with advanced solutions that aren’t just reactive, but forward-thinking and future-proof.</p><p>&nbsp;</p>', '1707820840_images_(86).jpg', '2024-02-13 05:10:40', '2024-02-13 05:10:40'),
	(19, 'Protect first and Business it next', 'Intellectual Property Assessment: Identify the intellectual property assets critical to your business, such as trademarks, copyrights, patents, or trade secrets. Conduct an assessment to understand what aspects of your business are unique and valuable..', '<h2><strong>Jennifer Goodbrand</strong><br><strong>Senior Executive Assistant to Tammy Cooper, CEO</strong></h2><p><img src="https://blog.technologent.com/hs-fs/hubfs/Jennifer%20Goodbrand.jpg?width=418&amp;height=626&amp;name=Jennifer%20Goodbrand.jpg" alt="Jennifer Goodbrand" srcset="https://blog.technologent.com/hs-fs/hubfs/Jennifer%20Goodbrand.jpg?width=209&amp;height=313&amp;name=Jennifer%20Goodbrand.jpg 209w, https://blog.technologent.com/hs-fs/hubfs/Jennifer%20Goodbrand.jpg?width=418&amp;height=626&amp;name=Jennifer%20Goodbrand.jpg 418w, https://blog.technologent.com/hs-fs/hubfs/Jennifer%20Goodbrand.jpg?width=627&amp;height=939&amp;name=Jennifer%20Goodbrand.jpg 627w, https://blog.technologent.com/hs-fs/hubfs/Jennifer%20Goodbrand.jpg?width=836&amp;height=1252&amp;name=Jennifer%20Goodbrand.jpg 836w, https://blog.technologent.com/hs-fs/hubfs/Jennifer%20Goodbrand.jpg?width=1045&amp;height=1565&amp;name=Jennifer%20Goodbrand.jpg 1045w, https://blog.technologent.com/hs-fs/hubfs/Jennifer%20Goodbrand.jpg?width=1254&amp;height=1878&amp;name=Jennifer%20Goodbrand.jpg 1254w" sizes="100vw" width="418" height="626"></p><p><strong>What does the phrase “Women of Tech(nologent)” mean to you?&nbsp;</strong><br>This phrase is tough for me, I believe woman can do “almost anything” we can do so many things and take care of anyone. We are kind, comforting and honest.</p><p><strong>Name a fun fact about yourself that you’d like more people to know?</strong><br>I have two different colored eyes (one green, one brown).</p><p><strong>How long have you worked in the IT industry?</strong><br>Almost 8 years.<br><br><strong>What would you say is the biggest challenge working in the IT field as a woman?</strong><br>This does not apply to me.<br><br><strong>Can you describe a recent positive experience working with another woman at Technologent?</strong><br>I am lucky enough to work for Tammy. She is supportive, she always makes time for me and she always inspires me to do my best.</p><p><strong>What is a professional/career goal for you this year?</strong><br>My goal is to challenge others in our office to go outside of there comfort zone, to enjoy the people we work with.<br><br><strong>List 3 adjectives that you think are most important for exemplifying your best work self:</strong><br>Busy - I like to be busy. Best - I want to give my best every day. Better - strive to be better, in work and life. Recognize that I am blessed, and I can always give more.</p><p><strong>Name a book, movie or music album you’re enjoying currently:</strong><br>I enjoy Country music, it reminds me of a simpler life, growing up in the 80’s.</p><p><strong>Are there any specific quotes, sayings or lessons that are important to you?</strong><br>What I love about my job is, every day is different. I work in the corporate office, so much of the stuff I do is related to our accounting department, sales tax, commission, travel.</p><p>I have a mentor, James Escudero, who has taken the time to help me better understand the sales side of the company which is so exciting. I look forward to learning more.</p><p>My favorite quote is:&nbsp;“All we have is now.”</p><h2><strong>Renay Crooker</strong><br><strong>Professional Service Coordinator</strong></h2><p><a href="https://technologent.sharepoint.com/sites/CorporateCommunications/SitePages/The-Women-of-Tech(nologent).aspx#mckenna-rockfordbusiness-operations-specialist"><i>&nbsp;</i></a></p><p><img src="https://blog.technologent.com/hs-fs/hubfs/lost%20ductchman%20bronson%203.jpg?width=410&amp;height=319&amp;name=lost%20ductchman%20bronson%203.jpg" alt="lost ductchman bronson 3" srcset="https://blog.technologent.com/hs-fs/hubfs/lost%20ductchman%20bronson%203.jpg?width=205&amp;height=160&amp;name=lost%20ductchman%20bronson%203.jpg 205w, https://blog.technologent.com/hs-fs/hubfs/lost%20ductchman%20bronson%203.jpg?width=410&amp;height=319&amp;name=lost%20ductchman%20bronson%203.jpg 410w, https://blog.technologent.com/hs-fs/hubfs/lost%20ductchman%20bronson%203.jpg?width=615&amp;height=479&amp;name=lost%20ductchman%20bronson%203.jpg 615w, https://blog.technologent.com/hs-fs/hubfs/lost%20ductchman%20bronson%203.jpg?width=820&amp;height=638&amp;name=lost%20ductchman%20bronson%203.jpg 820w, https://blog.technologent.com/hs-fs/hubfs/lost%20ductchman%20bronson%203.jpg?width=1025&amp;height=798&amp;name=lost%20ductchman%20bronson%203.jpg 1025w, https://blog.technologent.com/hs-fs/hubfs/lost%20ductchman%20bronson%203.jpg?width=1230&amp;height=957&amp;name=lost%20ductchman%20bronson%203.jpg 1230w" sizes="100vw" width="410" height="319"></p><p><strong>What does the phrase “Women of Tech(nologent)” mean to you?</strong><br>The Women of Technologent are a very diverse hard working member of the Technologent Team dedicated to making sure we all feel included and welcome. They are great at insuring we have avenues for feedback and information throughout the year that is very helpful. I am very happy to be part of this team. &nbsp;&nbsp;</p><p><strong>Name a fun fact about yourself that you’d like more people to know?</strong><br>I actively participate in canine sports including rally, obedience, scent work, herding and confirmation with my Cardigan Welsh Corgi’s. If I take off you can usually find be with one of my Cardigans having fun traveling around the southwest and sometime further to various activities.</p><p><strong>How long have you worked in the IT industry?</strong><br>30+ years!</p><p><strong>Can you describe a recent positive experience working with another woman at Technologent?</strong><br>Expanding a bit on that question. Our small team of women at Technologent work together to assist each other each and every day.&nbsp;&nbsp; We have had a series of challenges amongst team members this year and each and every time team members have&nbsp;stepped up to ensure work is covered. We have a great team of very talented dedicated employees.</p><p><strong>What is a professional/career goal for you this year?</strong><br>Continue to help grow, streamline and make the residency professional services coordinator team the best team it can be.</p><p><strong>Name a book, movie or music album you’re enjoying currently:</strong><br>Actually a TV Series Dark Winds based on Books by Tony Hillerman. I now have this book series on my "to read" list.</p>', '1707821726_images_(85).jpg', '2024-02-13 05:25:26', '2024-02-13 05:25:26');

-- Dumping structure for table raal-tech.service
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

-- Dumping data for table raal-tech.service: ~0 rows (approximately)
INSERT INTO `service` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(14, 'Add service1', 'Add service1', 'Add service1', 'Add service1', 'Add service1', 'Add service1', 'Add service1', '2024-01-22 22:49:44', '2024-01-22 22:49:44');

-- Dumping structure for table raal-tech.smtp
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

-- Dumping data for table raal-tech.smtp: ~0 rows (approximately)
INSERT INTO `smtp` (`id`, `MAIL_MAILER`, `MAIL_HOST`, `MAIL_PORT`, `MAIL_USERNAME`, `MAIL_PASSWORD`, `MAIL_ENCRYPTION`, `MAIL_FROM_ADDRESS`, `MAIL_FROM_NAME`, `created_at`, `updated_at`) VALUES
	(6, 'smtp', 'smtp.gmail.com', 587, 'alexalphons82@gmail.com', '\'hqdk gucd xxhe zelm\'', 'ssl', NULL, NULL, '2023-12-07 04:47:27', '2023-12-07 04:53:30');

-- Dumping structure for table raal-tech.solowork
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

-- Dumping data for table raal-tech.solowork: ~0 rows (approximately)
INSERT INTO `solowork` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(11, 'Add one work SEO8888', 'Add one work SEO9999', 'Add one work SEO-----', 'Add one work SEO', 'Add one work SEO', 'Add one work SEO1212121', 'Add one work SEO1212121', '2024-01-23 04:36:19', '2024-01-23 04:42:40');

-- Dumping structure for table raal-tech.team
CREATE TABLE IF NOT EXISTS `team` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `design` varchar(255) DEFAULT NULL,
  `new` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table raal-tech.team: ~6 rows (approximately)
INSERT INTO `team` (`id`, `image`, `name`, `design`, `new`, `created_at`, `updated_at`) VALUES
	(19, '1707817438_mathes.jpeg', 'Mathes', NULL, NULL, '2024-02-13 04:13:58', '2024-02-13 04:13:58'),
	(20, '1707817458_Ragavi.png', 'Ragavi', NULL, NULL, '2024-02-13 04:14:18', '2024-02-13 04:14:18'),
	(21, '1707817489_Saranya.jpeg', 'Saranya', NULL, NULL, '2024-02-13 04:14:49', '2024-02-13 04:14:49'),
	(22, '1707817507_Lakshmi.jpg', 'Lakshmi', 'c', NULL, '2024-02-13 04:15:07', '2024-05-08 01:44:32'),
	(24, '1715151119_kjs-new-1714015996.jpg', 'sss', 'c', 'c', '2024-05-08 01:21:59', '2024-05-08 01:44:25'),
	(25, '1715151173_aquarius-20240507051832.webp', 'dddd', 'dddd1', 'ddd1', '2024-05-08 01:22:53', '2024-05-08 01:30:47');

-- Dumping structure for table raal-tech.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint NOT NULL DEFAULT '0' COMMENT '0:customer\r\n1:admin',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0:active, 1:inactive',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_delete` tinyint NOT NULL DEFAULT '0' COMMENT '0:notdeleted, 1:deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table raal-tech.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `status`, `role`, `is_delete`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@mail.com', '2023-10-23 11:49:15', '$2y$10$jAVevbqZ0VFE1pd5Vz3.3.uL43zpsmOsG9Woe2qd25I5uDisOdxQO', NULL, 1, 0, '1', 0, NULL, NULL),
	(28, 'alex', 'alex@mail.com', NULL, '$2y$10$kRuXaulCs3Ub./o1r6wR8OZqPJm.P2VdcrD7ysPJXJ63xD51c2.Bu', NULL, 1, 0, '0', 1, '2024-01-29 22:47:32', '2024-02-13 22:40:37'),
	(34, 'newadmin', 'newadmin@mail.com', NULL, '$2y$10$v7foifmOBhc1S8zEwm3HVeI00Bghmvp2TiwSPpap8i1pajvq8eMb2', NULL, 1, 0, '0', 0, '2024-02-22 23:39:37', '2024-02-22 23:39:37');

-- Dumping structure for table raal-tech.work
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

-- Dumping data for table raal-tech.work: ~0 rows (approximately)
INSERT INTO `work` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(12, 'Add work data2', 'Add work data2', 'Add work data2', 'Add work data2', 'Add work data2', 'Add work data2', 'Add work data2', '2024-01-23 00:27:26', '2024-01-23 00:31:39');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
