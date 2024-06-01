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


-- Dumping database structure for cracker
CREATE DATABASE IF NOT EXISTS `cracker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cracker`;

-- Dumping structure for table cracker.about
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

-- Dumping data for table cracker.about: ~0 rows (approximately)
INSERT INTO `about` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(16, 'Add About', 'Add About', 'Add About', 'Add About', 'https://en.m.wikipedia.org/wiki/Image#/media/File%3ATEIDE.JPG', 'https://en.m.wikipediaATEID', 'Add About', '2024-01-22 22:42:11', '2024-02-19 01:15:15');

-- Dumping structure for table cracker.backgroundimage
CREATE TABLE IF NOT EXISTS `backgroundimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cracker.backgroundimage: ~0 rows (approximately)
INSERT INTO `backgroundimage` (`id`, `image_path`, `created_at`, `updated_at`) VALUES
	(7, '1703825227.jpg', '2023-12-28 23:17:07', '2023-12-28 23:17:07');

-- Dumping structure for table cracker.banner
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` json DEFAULT NULL,
  `description` json DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cracker.banner: ~2 rows (approximately)
INSERT INTO `banner` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
	(13, '{"title": "Provide Solution\\r\\nfor Industries plan"}', '{"description": "They\'ll have to make the best of things its an uphill climb.\\r\\nThe weather started getting was tossed."}', '1707998284_banner1.png', '2024-02-15 06:28:04', '2024-02-15 06:28:04'),
	(14, '{"title": "We help Industries\\r\\ninnovate and grow."}', '{"description": "They\'ll have to make the best of things its an uphill climb.\\r\\nThe weather started  getting was tossed."}', '1707998381_banner2.png', '2024-02-15 06:29:41', '2024-02-15 06:29:41'),
	(16, '{"title": null}', '{"description": null}', '1709186058_one_sound_crackers.jpg', '2024-02-29 00:24:18', '2024-02-29 00:24:18');

-- Dumping structure for table cracker.blog
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

-- Dumping data for table cracker.blog: ~7 rows (approximately)
INSERT INTO `blog` (`id`, `Tittle`, `Description`, `Image`, `multiimage`, `created_at`, `updated_at`) VALUES
	(107, 'Marriage', 'its a marriage fuction', '1705386163.jpg', '1705385385_images_(52).jpg,1705385385_images_(51).jpg,1705385385_images_(50).jpg,1705385385_images_(49).jpg', '2024-01-12 02:06:52', '2024-02-06 02:08:58'),
	(108, 'Birth Day', 'its a birth day event', '1705385462.jpg', '1705385459_images_(44).jpg,1705385459_images_(30).jpg,1705385459_images_(26).jpg,1705385459_images_(25).jpg,1705385459_images_(23).jpg', '2024-01-12 04:08:18', '2024-01-18 23:27:56'),
	(109, 'Silver jubilee', 'Its about 25 getting', '1705385582.jpg', '1705385580_images_(48).jpg,1705385580_images_(45).jpg,1705385580_images_(42).jpg,1705385580_images_(41).jpg,1705385580_images_(40).jpg,1705385580_images_(38).jpg,1705385580_images_(36).jpg', '2024-01-12 05:11:26', '2024-01-16 00:43:02'),
	(110, 'Church', 'Its a new blog from church', '1705385915.jpg', '1705385643_images_(50).jpg,1705385643_images_(41).jpg,1705385643_images_(40).jpg,1705385643_images_(38).jpg,1705385643_images_(36).jpg,1705385643_images_(34).jpg,1705385643_images_(33).jpg,1705385643_download_(10).jpg,1705385643_images_(24).jpg', '2024-01-12 06:17:41', '2024-01-16 00:48:35'),
	(113, 'Anniversary1', 'Its a couple', '1705407062.jpg', '1705385725_images_(52).jpg,1705385725_images_(40).jpg,1705385725_images_(31).jpg,1705385725_images_(30).jpg,1705385725_images_(29).jpg,1705385725_images_(25).jpg,1705385725_images_(24).jpg,1705385725_images_(23).jpg', '2024-01-13 01:04:51', '2024-02-03 05:32:44'),
	(114, 'Inauguration', 'Its a just begun program', '1705385827.jpg', '1705385825_images_(40).jpg,1705385825_images_(39).jpg,1705385825_images_(38).jpg,1705385825_images_(37).jpg,1705385825_images_(36).jpg,1705385825_images_(35).jpg,1705385825_images_(34).jpg,1705396727_images_(51).jpg', '2024-01-16 00:47:07', '2024-01-16 03:48:51'),
	(121, 'sport Event', 'All about sport', '1706788381.jpg', '1706788364_5cc61365-ba8e-4352-bc65-316d1b0fb081.jpg,1706788364_3e23876a-0b86-4b38-a607-fb7549158714.jpg,1706788364_b9456c99-c1c0-49c2-8bf8-43e2b85148c8.jpg,1706788364_abb420b6-244d-4c1e-aee8-5d9ea361353d.jpg,1706788364_6e861042-e039-4d62-83ce-41ffb3b21fec.jpg,1706788364_75d7e7d0-6cee-48e5-aae4-fe914e91c49a.jpg,1706788364_2dc0ce8a-7e9d-4e09-bc5f-097cefa9ef15.jpg,1706788364_37d9b386-43d0-4faa-8dae-d416432b42cf.jpg,1706788364_images_(63).jpg,1706788377_images_(58).jpg,1706788377_images_(57).jpg', '2024-02-01 06:23:01', '2024-02-01 06:23:01');

-- Dumping structure for table cracker.blogimage
CREATE TABLE IF NOT EXISTS `blogimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cracker.blogimage: ~0 rows (approximately)

-- Dumping structure for table cracker.blogsco
CREATE TABLE IF NOT EXISTS `blogsco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `image` varchar(255) DEFAULT NULL,
  `metatitle` varchar(255) DEFAULT NULL,
  `metadescription` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cracker.blogsco: ~2 rows (approximately)
INSERT INTO `blogsco` (`id`, `title`, `description`, `content`, `image`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `slug`, `created_at`, `updated_at`) VALUES
	(29, 'Health', 'Todays News', '<h3>ADVERTORIAL<br><strong>Disturbing Truth About Neuropathy: Here’s What’s Actually Causing Burning &amp; Tingling in Your Feet</strong><br><strong>Try It for Just One or Two Weeks and You Will Be Blown Away by the Results!</strong><br>&nbsp;</h3><figure class="image"><img style="aspect-ratio:1000/526;" src="http://event-api.test/public/images/1705901782_img11-1000.webp" width="1000" height="526"></figure><p><a href="https://bestadvices.thehealthadvizor.com/checkout">https://bestadvices.thehealthadvizor.com/checkout</a>&nbsp;</p><p>Neuropathy is hell.</p><figure class="image"><img style="aspect-ratio:1032/609;" src="http://event-api.test/public/images/1705901766_img22.webp" width="1032" height="609"></figure><p>The condition feels like a thousand needles pricking your feet...<br><strong>What\'s Actually Causing Neuropathy Pains?</strong><br><a href="http://machine.test/singleblog/29/slug3333">http://machine.test/singleblog/29/slug3333</a><br>Nerve cells in your feet require a continuous supply of oxygen.</p><p><a href="https://verified.thehealthadvizor.com/click/1?cep=-HMGx10f-jnZacwBs4bIsyJNWxbVCPgZRlHKXQZhlmEZbgScMMPDGKcSyuk2NaGhFzs2u6mIWYJJGf2jVMHKmW72HcjA8Xure8pPJjBNKJ4ria2zF7E-l1P180Nt_4SwgLbmxwyqOTvGpu6ep5tTUiCSbafWPhP_o-IXWEBrrc1TT-mjXOHFcLRtvloAA7Ox7C2FXs2CfJkD5TCyHsJfYSBqGactA_Fn8WRIr1EjaenxXZ7yODHs9Q8anwt3elyCXKGIT_3FOa8CapEE5CWtsh9Ipmr5i3tKP6n2-DRxss6DH1w32NcV_iipjaWUG1gf-k6aEOlnMQ2SagUe0L5ab6s8hAFSchtJYDILcYz3ILmq9XriusNt6-2-K7WSXln6BN5esC4WLAFWuDdnVi1AwbCHo_c8ObBX-fSV8xvgOAx6D1_8dw1Y8xYHuYrdsLDoEO4GLA8YEUA6p7_NVemCEuNflp9aB_4KNq5mtkeQktuOs5supEhX14jka-YYr1t0zbhKgVzLu3hDlqrLihZTXbR7Q1SR-I7D7p8m9IBsccoundWL51r5QebcmIn-_1sSVe0RAtYddLgACN2_qKq_asyJAAF3Rw5FscIW6rzwEnOGe9k9kbe8o7rA-hwE_ZrOmSdF4mtOQE4F9pvXGhJ_uihgDsrUBCANXlm1Efw1N-PQ7Os3gRBuTG4ODyv1GwmtAIHIWtXlaQ3pk-e2O6CmiMAgMgayqn4_L2hAefK7z7vd0lDlHR0OkFjhxVs7V1vdikFaQKc34zNOUSfZhfie4BLGrY3-oPeMqNYIVVAFfGw">This oxygen gets to the nerves in your blood via your blood vessels and circulation.</a></p><p>As we age our circulation becomes worse. Our blood vessels also narrow - limiting the flow of oxygen-rich blood to your nerves.&nbsp;</p><p>Without this vital blood flow, your nerve endings being to die - and it hurts... like hell...</p><p><a href="https://verified.thehealthadvizor.com/click/1?cep=-HMGx10f-jnZacwBs4bIsyJNWxbVCPgZRlHKXQZhlmEZbgScMMPDGKcSyuk2NaGhFzs2u6mIWYJJGf2jVMHKmW72HcjA8Xure8pPJjBNKJ4ria2zF7E-l1P180Nt_4SwgLbmxwyqOTvGpu6ep5tTUiCSbafWPhP_o-IXWEBrrc1TT-mjXOHFcLRtvloAA7Ox7C2FXs2CfJkD5TCyHsJfYSBqGactA_Fn8WRIr1EjaenxXZ7yODHs9Q8anwt3elyCXKGIT_3FOa8CapEE5CWtsh9Ipmr5i3tKP6n2-DRxss6DH1w32NcV_iipjaWUG1gf-k6aEOlnMQ2SagUe0L5ab6s8hAFSchtJYDILcYz3ILmq9XriusNt6-2-K7WSXln6BN5esC4WLAFWuDdnVi1AwbCHo_c8ObBX-fSV8xvgOAx6D1_8dw1Y8xYHuYrdsLDoEO4GLA8YEUA6p7_NVemCEuNflp9aB_4KNq5mtkeQktuOs5supEhX14jka-YYr1t0zbhKgVzLu3hDlqrLihZTXbR7Q1SR-I7D7p8m9IBsccoundWL51r5QebcmIn-_1sSVe0RAtYddLgACN2_qKq_asyJAAF3Rw5FscIW6rzwEnOGe9k9kbe8o7rA-hwE_ZrOmSdF4mtOQE4F9pvXGhJ_uihgDsrUBCANXlm1Efw1N-PQ7Os3gRBuTG4ODyv1GwmtAIHIWtXlaQ3pk-e2O6CmiMAgMgayqn4_L2hAefK7z7vd0lDlHR0OkFjhxVs7V1vdikFaQKc34zNOUSfZhfie4BLGrY3-oPeMqNYIVVAFfGw">Some people get neuropathy problems much sooner and more severely than others, especially in the feet.&nbsp;</a></p><p><br>&nbsp;</p><p>Sufferers experience anything from numbness and/or tingling to burning, stabbing, and shooting pains...</p><p><a href="https://verified.thehealthadvizor.com/click/1?cep=-HMGx10f-jnZacwBs4bIsyJNWxbVCPgZRlHKXQZhlmEZbgScMMPDGKcSyuk2NaGhFzs2u6mIWYJJGf2jVMHKmW72HcjA8Xure8pPJjBNKJ4ria2zF7E-l1P180Nt_4SwgLbmxwyqOTvGpu6ep5tTUiCSbafWPhP_o-IXWEBrrc1TT-mjXOHFcLRtvloAA7Ox7C2FXs2CfJkD5TCyHsJfYSBqGactA_Fn8WRIr1EjaenxXZ7yODHs9Q8anwt3elyCXKGIT_3FOa8CapEE5CWtsh9Ipmr5i3tKP6n2-DRxss6DH1w32NcV_iipjaWUG1gf-k6aEOlnMQ2SagUe0L5ab6s8hAFSchtJYDILcYz3ILmq9XriusNt6-2-K7WSXln6BN5esC4WLAFWuDdnVi1AwbCHo_c8ObBX-fSV8xvgOAx6D1_8dw1Y8xYHuYrdsLDoEO4GLA8YEUA6p7_NVemCEuNflp9aB_4KNq5mtkeQktuOs5supEhX14jka-YYr1t0zbhKgVzLu3hDlqrLihZTXbR7Q1SR-I7D7p8m9IBsccoundWL51r5QebcmIn-_1sSVe0RAtYddLgACN2_qKq_asyJAAF3Rw5FscIW6rzwEnOGe9k9kbe8o7rA-hwE_ZrOmSdF4mtOQE4F9pvXGhJ_uihgDsrUBCANXlm1Efw1N-PQ7Os3gRBuTG4ODyv1GwmtAIHIWtXlaQ3pk-e2O6CmiMAgMgayqn4_L2hAefK7z7vd0lDlHR0OkFjhxVs7V1vdikFaQKc34zNOUSfZhfie4BLGrY3-oPeMqNYIVVAFfGw">Loss of balance due to foot neuropathy can mean you\'re unable to work, socialise or even sleep...</a></p><p>Even walking with neuropathy can be agony.</p><figure class="media"><oembed url="https://www.youtube.com/embed/omG4ON0R1vY?si=KRz0MXpnlxht36MK"></oembed></figure><p>If bad, the condition can restrict and ruin both your work and social life...</p><p>Stuck at home, with no known help, depression, weight gain and other serious conditions can follow...</p><p>some data<br>tofinish<br>&nbsp;</p><figure class="media"><oembed url="https://www.youtube.com/embed/ab3SmuI9NKs?si=WxBXGGMfO4mQcnG4"></oembed></figure><ul><li>Red–Federal Holidays and Sundays.</li></ul><figure class="image"><img style="aspect-ratio:3364/1609;" src="http://machine.test/public/images/1708340218_cecep-rahmat-p6w82CYxq0c-unsplash.jpg" width="3364" height="1609"></figure>', '1708055990_dmitriy-demidov-iuuJC_pjLU0-unsplash.jpg', 'bbbb', 'bbbb', 'bbb', 'bbb', '1708056017_dmitriy-demidov-iuuJC_pjLU0-unsplash.jpg', 'bbb', 'bbb', 'slug3333', '2024-01-21 18:36:27', '2024-02-19 05:27:00'),
	(56, 'Shot Blasting Explained – Definition ProcessMore', 'Shot blasting is one of the most effective surface preparation methods wherein irregularities on the metal’s surface are removed through abrasion. This process is different from sandblasting as shot blasting', '<p><strong>Key Takeaways</strong></p><ul><li>Shot blasting employs wheel blast equipment to <strong>propel abrasive materials</strong> like steel shot and grit onto surfaces <strong>for finishing</strong>. The process uses centrifugal force, unlike sandblasting which relies on compressed air.</li><li>Shot blasting is generally more aggressive and efficient <strong>than sandblasting</strong>. Its higher intensity makes it more <strong>suitable for treating tougher materials or removing thicker coatings</strong>.</li><li>Shot blasting is predominantly used in industrial settings. It\'s essential for <strong>preparing metal surfaces for welding and finishing processes</strong> like painting or coating.</li></ul><p><strong>Table of Contents</strong> <a href="https://fractory.com/shot-blasting-explained/#">hide</a></p><p><a href="https://fractory.com/shot-blasting-explained/#What_Is_Shot_Blasting">I What Is Shot Blasting?</a></p><p><a href="https://fractory.com/shot-blasting-explained/#How_Does_the_Shot_Blasting_Process_Work">II How Does the Shot Blasting Process Work?</a></p><h2>What Is Shot Blasting?</h2><p>Shot blasting or grit blasting is one of the abrasive blasting processes that refine metal surfaces through rapidly moving particles. Spherical shot media is propelled onto the metal’s surface, cleaning and polishing the target area using centrifugal force.</p><p>The shot-blasting process is an effective method for giving these metals smooth and clean surfaces. Debris and undesirable imperfections on the surface may cause problems further down the line in subsequent manufacturing processes. This can be fixed beforehand through shot blasting.</p><p>Shot blasting is an effective method for preparing surfaces, but it has a few downsides if not performed correctly. Possible dangers include damage to the equipment, to the workpiece and its surface, as well as generating dust which creates a mess. Some industries prefer shot blasting over other abrasive surface preparation methods since this process yields high-quality results while being less expensive and safer.</p><p><a href="https://fractory.com/shot-peening-explained/">Shot peening</a> works similarly to shot blasting but the former strengthens the material through compressive force from the shot media.</p><h3>Key Applications</h3><p>The versatility of shot blasting allows it to have a wide range of applications across different sectors. Some of the surface preparation methods include:</p><p><strong>Deburring</strong> – <a href="https://fractory.com/deburring-methods-and-tools/">Burrs</a> and other imperfections are removed with concentrated abrasive media, resulting in a more polished and smoother surface.</p><p><strong>Rust removal</strong> – The high velocity of the shot blasting media generates enough force to remove <a href="https://fractory.com/types-of-corrosion/">rust</a> from the material’s surface.</p><p><strong>Scaling</strong> – Shot blasting improves the durability of the workpiece by eliminating mill scale or oxidised flaky material on the surface. Shot media can penetrate hard-to-reach areas and remove mill scale.</p><p><strong>General cleaning</strong> – Oils and grease as well as accumulated debris on the surface are removed with this process. Cleaning surfaces before the next step in the production process reduce the risk of damage over time.</p><p><strong>Coatings</strong> – An even and clean metal surface results in better <a href="https://fractory.com/surface-treatment/">paint and coatings</a> adhesion.</p><p><strong>Scale Your Manufacturing from Prototyping to Series</strong></p><p>&nbsp;</p><ul><li>Personal account manager</li></ul><p>&nbsp;</p><ul><li>Quality assurance</li></ul><p>&nbsp;</p><ul><li>Payment terms for companies</li></ul><p>&nbsp;</p><ul><li>On-time delivery by Fractory</li></ul><p><a href="https://app.fractory.com/quotes/new"><strong>Get a quote</strong></a></p><p>&nbsp;</p><p>Some industries that utilise shot blasting in some of their processes are:</p><p><strong>Automotive</strong> – Body panels or engine parts that come through production are cleaned and the surfaces are smoothened through the shot blasting process.</p><p><strong>Welding</strong> – Surface preparation through high-velocity shot blasting helps to achieve optimal surface quality, helping to avoid <a href="https://fractory.com/types-of-welding-processes/">welding defects</a> from debris and other imperfections.</p><p><strong>Aerospace</strong> – Shot blasting at pinpointed areas while working on <a href="https://fractory.com/engineering-tolerances/">tight tolerances</a> applies to aerospace components that have strict surface requirements. Some applications include cleaning compressor blades and deburring turbine blades after laser drilling the workpiece.</p><h3>Materials</h3><p>Shot blasting is typically employed on metals, such as <a href="https://fractory.com/what-is-mild-steel/">mild steel</a>, cast iron, titanium, copper and engineering steel to name a few, but also on concrete and <a href="https://precision-ceramics.com/eu/about-technical-ceramics/">advanced technical ceramics</a>, such as silicon carbide, alumina, and boron carbide.&nbsp;</p><p>Shot blasting everyday ceramics like pottery or porcelain should definitely be avoided due to their lower strength and higher fragility. Also, soft metals like aluminum or soft copper can deform or get damaged due to the high impact force of shot blasting. This also applies to thin <a href="https://fractory.com/sheet-metal/">sheets of metal</a> as they’ll easily warp or distort.</p><h2>How Does the Shot Blasting Process Work?</h2><p><img src="https://i.ytimg.com/vi/PWOMd8mCOHE/hqdefault.jpg" alt="Conveyor-Type Shot Blast Machine" srcset="https://i.ytimg.com/vi/PWOMd8mCOHE/mqdefault.jpg 320w, https://i.ytimg.com/vi/PWOMd8mCOHE/hqdefault.jpg 480w, https://i.ytimg.com/vi/PWOMd8mCOHE/sddefault.jpg 640w, https://i.ytimg.com/vi/PWOMd8mCOHE/maxresdefault.jpg 1280w" sizes="100vw" width="900" height="505"></p><p>Conveyor-Type Shot Blast Machine</p><p>The shot blasting process works by subjecting the surface of a workpiece to a barrage of shot media at high velocity. <strong>The shot material is propelled by a centrifugal wheel</strong> in which each individual shot generates enough force to act as an abrasive.</p><p>It can clean the surface, remove debris, remove imperfections, and improve the adhesion quality for paints and coatings. Shot blasting is performed inside blast cabinets where the equipment and workpiece are isolated from the environment.</p><p>This operation is an economical method for preparing the workpiece before it is processed as a finished product. It would be wise to keep an eye out for issues such as dust collection or excessive shot blasting.</p><h3>Shot Media Recovery</h3><p>Modern shot blasting equipment recycles the shot media through a vacuum which collects the used particles. Separators remove broken abrasive media and feeders replace these shots for operation.</p><h3>Shot Blasting Media</h3><p><img src="https://fractory.com/wp-content/uploads/2024/01/cut-wire-shot.jpg.webp" alt="Close-up of cut wire shot, an abrasive blasting media" srcset="https://fractory.com/wp-content/uploads/2024/01/cut-wire-shot.jpg.webp 800w, https://fractory.com/wp-content/uploads/2024/01/cut-wire-shot-300x200.jpg.webp 300w, https://fractory.com/wp-content/uploads/2024/01/cut-wire-shot-768x513.jpg.webp 768w" sizes="100vw" width="800" height="534"></p><p>The type of abrasive material propelled by a spinning wheel onto the metal surface in a blast cabinet can vary. Some of the common abrasive media are:</p><p><strong>Aluminium oxide</strong> – An aggressive media that is non-corrosive and versatile, mainly used for hard surfaces requiring fine polishing. Aluminium oxide shots are low-cost and reusable. They break down into smaller particles from usage and are thus categorised as angular shot media.</p><p><strong>Steel shots</strong> – Small steel balls that leave a high polish and shine to the workpiece. Each steel shot is uniform in size which allows equal distribution of impact to the surface.</p><p><strong>Glass beads</strong> – A gentle abrasive suitable for soft metals that allow to avoid contamination of the surface.</p><p><strong>Cut wire shots</strong> – These are obtained with a cutting wire that is divided into equal lengths relative to its wire diameter. They are inexpensive, have high strength, and are highly abrasive.</p><ol><li><br>&nbsp;</li></ol>', '1708151716_hoover-tung-BslSDcQww0M-unsplash.jpg', 'Shot Blasting Explained – Definition Process  More', 'Shot blasting is one of the most effective surface preparation methods wherein irregularities on the metal’s surface are removed through abrasion. This process is different from sandblasting as shot blasting', NULL, NULL, '1708151716_hoover-tung-BslSDcQww0M-unsplash.jpg', NULL, NULL, 'Shot Blasting Explained – Definition Process More', '2024-02-17 01:05:16', '2024-02-23 23:24:30');

-- Dumping structure for table cracker.blogscocontent
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

-- Dumping data for table cracker.blogscocontent: ~0 rows (approximately)
INSERT INTO `blogscocontent` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(11, 'Add SEO blogs data1', 'Add SEO blogs data1', 'Add SEO blogs data', 'Add SEO blogs data1', 'http://final-admin.test/public/images/1705386163.jpg', 'Add SEO blogs data1', 'Add SEO blogs data1', '2024-01-23 00:00:24', '2024-02-07 00:02:20');

-- Dumping structure for table cracker.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cracker.brands: ~0 rows (approximately)
INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
	(8, 'NaattuMaadu', 0, NULL, NULL);

-- Dumping structure for table cracker.carts
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

-- Dumping data for table cracker.carts: ~0 rows (approximately)

-- Dumping structure for table cracker.contact
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

-- Dumping data for table cracker.contact: ~2 rows (approximately)
INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
	(8, 'John', 'john.doe@example.com', 89796550, 'This is a sample message.', '2024-01-03 08:11:18', '2024-01-03 08:11:18'),
	(11, 'Alex', 'john.doe@example.com', 76547457657, 'Alex fdhfgdhgfhgf', '2024-01-03 03:56:40', '2024-01-03 03:56:40');

-- Dumping structure for table cracker.contacts
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

-- Dumping data for table cracker.contacts: ~0 rows (approximately)
INSERT INTO `contacts` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(14, 'Add contact1', 'Add contact1', 'Add contact1', 'Add contact1', 'Add contact1', 'Add contact1', 'Add contact1', '2024-01-22 22:53:38', '2024-01-22 22:54:04');

-- Dumping structure for table cracker.contentblog
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

-- Dumping data for table cracker.contentblog: ~0 rows (approximately)

-- Dumping structure for table cracker.detail
CREATE TABLE IF NOT EXISTS `detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dnumber` varchar(50) DEFAULT NULL,
  `wnumber` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `header` longtext,
  `footer` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cracker.detail: ~0 rows (approximately)
INSERT INTO `detail` (`id`, `dnumber`, `wnumber`, `address`, `mail`, `header`, `footer`, `created_at`, `updated_at`) VALUES
	(14, '+91 96854742545', '+91 96854742545', '321,North Street, Chennai', 'demo@gmail.com1', 'Welcome to our buisness', 'The international user standards and technological works changes and industrial systems, we dedicated to provide the best and economical.', '2024-02-17 05:00:29', '2024-02-28 00:46:57');

-- Dumping structure for table cracker.failed_jobs
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

-- Dumping data for table cracker.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table cracker.franchise
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

-- Dumping data for table cracker.franchise: ~7 rows (approximately)
INSERT INTO `franchise` (`id`, `name`, `state`, `city`, `phone`, `created_at`, `updated_at`) VALUES
	(6, 'ser', 'state', 'city', '7639534668', '2023-12-07 22:50:14', '2023-12-07 22:50:14'),
	(7, 'Jewellery', 'state', 'city', '7639534668', '2023-12-07 22:51:06', '2023-12-07 22:51:06'),
	(8, 'Jewellery', 'state', 'city', '7639534668', '2023-12-08 00:57:41', '2023-12-08 00:57:41'),
	(9, 'Jewellery', 'state', 'city', '7639534668', '2023-12-08 00:58:38', '2023-12-08 00:58:38'),
	(10, 'Jewellery', 'state', 'city', '7639534668', '2023-12-08 01:00:02', '2023-12-08 01:00:02'),
	(11, 'kanaboomi', 'state', 'city', '7639534668', '2023-12-08 01:00:54', '2023-12-08 01:00:54'),
	(12, 'Jewellery', 'state', 'city', '7639534668', '2023-12-08 01:12:21', '2023-12-08 01:12:21');

-- Dumping structure for table cracker.gallery
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cracker.gallery: ~0 rows (approximately)
INSERT INTO `gallery` (`id`, `image`, `created_at`, `updated_at`) VALUES
	(34, '1709100433_1707989810_logo.png', '2024-02-28 00:37:13', '2024-02-28 00:37:13');

-- Dumping structure for table cracker.herogroundimage
CREATE TABLE IF NOT EXISTS `herogroundimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) DEFAULT NULL,
  `logo_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cracker.herogroundimage: ~0 rows (approximately)
INSERT INTO `herogroundimage` (`id`, `image_path`, `logo_image`, `created_at`, `updated_at`) VALUES
	(22, '1704357174.3005-jpg', '1704357174.3018-jpg', '2024-01-04 03:02:54', '2024-01-04 03:02:54');

-- Dumping structure for table cracker.home
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

-- Dumping data for table cracker.home: ~0 rows (approximately)

-- Dumping structure for table cracker.item
CREATE TABLE IF NOT EXISTS `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `box` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `machineservice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cracker.item: ~13 rows (approximately)
INSERT INTO `item` (`id`, `category_id`, `image`, `name`, `price`, `box`, `created_at`, `updated_at`) VALUES
	(52, 35, '1709191008_4_Deluxe.jpeg', '4 Deluxe', '18', '1 - Box', '2024-02-29 01:46:48', '2024-02-29 01:46:48'),
	(53, 35, '1709191054_2.75_Kuruvi.jpeg', '2.75 Kuruvi', '8', '1 - Box', '2024-02-29 01:47:34', '2024-02-29 01:47:34'),
	(54, 35, '1709191181_5_Deluxe.webp', '5 Deluxe', '22', '1 - Box', '2024-02-29 01:49:41', '2024-02-29 01:49:41'),
	(55, 35, '1709191221_3.5_lakshmi.jpeg', '3.5 Lakshmi', '100', '1 - Box', '2024-02-29 01:50:21', '2024-02-29 01:50:21'),
	(56, 36, '1709191377_Chotta_Wala.jpeg', '28 Chorsa', '60', '1 - Box', '2024-02-29 01:52:57', '2024-02-29 01:52:57'),
	(57, 36, '1709191417_56_gaint.webp', '28 Gaint', '100', '1 - Box', '2024-02-29 01:53:37', '2024-02-29 01:53:37'),
	(58, 33, '1709191450_Jug_Mug_Bomb.jpg', 'Auto Bomb', '50', '1 - Box', '2024-02-29 01:54:10', '2024-02-29 01:54:10'),
	(59, 33, '1709191492_28_chorsa.jpeg', 'Hydro Bomb', '30', '1 - Box', '2024-02-29 01:54:52', '2024-02-29 01:54:52'),
	(60, 30, '1712038123_1709186058_one_sound_crackers.jpg', 'ree', '56', '4', '2024-04-02 00:38:43', '2024-04-02 00:38:43'),
	(61, 32, '1712038145_1709190474_bomb.png', 'ree45', '900', '5', '2024-04-02 00:39:05', '2024-04-02 00:39:05'),
	(62, 36, '1712038167_1709191054_2.75_Kuruvi.jpeg', 'fff', '56', '5', '2024-04-02 00:39:27', '2024-04-02 00:39:27'),
	(63, 30, '1712038190_1709186169_Chotta_Wala.jpeg', 'ttt', '566', '5', '2024-04-02 00:39:50', '2024-04-02 00:39:50'),
	(64, 30, '1712038212_1709191181_5_Deluxe.webp', 'oo', '908', '9', '2024-04-02 00:40:12', '2024-04-02 00:40:12'),
	(65, 30, '1712038228_1709183214_rocket.jpg', 'oo', '566', '4', '2024-04-02 00:40:28', '2024-04-02 00:40:28');

-- Dumping structure for table cracker.machineservice
CREATE TABLE IF NOT EXISTS `machineservice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cracker.machineservice: ~7 rows (approximately)
INSERT INTO `machineservice` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
	(30, 'Rocket', '1709183214_rocket.jpg', '2024-02-28 23:36:54', '2024-02-28 23:36:54'),
	(31, 'Twinkle Sparks', '1709183252_twinkle_sparks.jpeg', '2024-02-28 23:37:32', '2024-02-28 23:37:32'),
	(32, 'Chotta Wala', '1709183271_Chotta_Wala.jpeg', '2024-02-28 23:37:51', '2024-02-28 23:37:51'),
	(33, 'Bombs', '1709183288_bomb.png', '2024-02-28 23:38:08', '2024-02-28 23:38:08'),
	(34, 'Ground Chakkars', '1709183383_Ground_Chakkars.jpg', '2024-02-28 23:39:43', '2024-02-28 23:39:43'),
	(35, 'Lakshmi', '1709190947_4_Deluxe.jpeg', '2024-02-29 01:45:47', '2024-02-29 01:45:47'),
	(36, 'Saravedi', '1709191344_one_sound_crackers.jpg', '2024-02-29 01:52:24', '2024-02-29 01:52:24');

-- Dumping structure for table cracker.mailstores
CREATE TABLE IF NOT EXISTS `mailstores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cracker.mailstores: ~3 rows (approximately)
INSERT INTO `mailstores` (`id`, `name`, `msg`, `phone`, `created_at`, `updated_at`) VALUES
	(92, 'Jewellery 88', 'dfgd', '7339013359', '2024-02-19 06:43:08', '2024-02-19 06:43:08'),
	(94, 's', '4', '665', '2024-03-31 23:01:24', '2024-03-31 23:01:24'),
	(95, 's', '4', '444', '2024-03-31 23:02:48', '2024-03-31 23:02:48'),
	(96, 'dddd', 'dsgfdg', '45636', '2024-03-31 23:03:39', '2024-03-31 23:03:39'),
	(97, 'reed', 'd', 'd', '2024-04-03 03:09:27', '2024-04-03 03:09:27');

-- Dumping structure for table cracker.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cracker.migrations: ~7 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_11_20_113409_create_carts_table', 2),
	(6, '2023_12_06_044516_create_smtp_table', 3),
	(10, '2023_12_06_103525_create_mailstores', 4);

-- Dumping structure for table cracker.order
CREATE TABLE IF NOT EXISTS `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `number` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cartItems` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cracker.order: ~8 rows (approximately)
INSERT INTO `order` (`id`, `name`, `number`, `address`, `state`, `city`, `pincode`, `cartItems`, `created_at`, `updated_at`) VALUES
	(70, 'Alan', '70940 770 40', 'marthandam', 'tn', 'marthandam', '435343', '[{"id":"52","productName":"4 Deluxe","price":18,"totalAmount":36,"quantity":2,"image":"http://cracker.test/public/images/1709191008_4_Deluxe.jpeg"},{"id":"53","productName":"2.75 Kuruvi","price":8,"totalAmount":16,"quantity":2,"image":"http://cracker.test/public/images/1709191054_2.75_Kuruvi.jpeg"},{"id":"57","productName":"28 Gaint","price":100,"totalAmount":200,"quantity":2,"image":"http://cracker.test/public/images/1709191417_56_gaint.webp"}]', '2024-03-02 04:06:10', '2024-03-02 04:06:10'),
	(72, 'Anil', '67463454643', 'address', 'state', 'marthandam', '6573467', '[{"id":"55","productName":"3.5 Lakshmi","price":100,"totalAmount":300,"quantity":3,"image":"http://cracker.test/public/images/1709191221_3.5_lakshmi.jpeg"},{"id":"56","productName":"28 Chorsa","price":60,"totalAmount":180,"quantity":3,"image":"http://cracker.test/public/images/1709191377_Chotta_Wala.jpeg"},{"id":"57","productName":"28 Gaint","price":100,"totalAmount":300,"quantity":3,"image":"http://cracker.test/public/images/1709191417_56_gaint.webp"}]', '2024-03-02 05:03:23', '2024-03-02 05:03:23'),
	(73, 'Abin', '70940 770 40', 'Address', 'state', 'marthandam', '1233423', '[{"id":"58","productName":"Auto Bomb","price":50,"totalAmount":200,"quantity":4,"image":"http://cracker.test/public/images/1709191450_Jug_Mug_Bomb.jpg"},{"id":"59","productName":"Hydro Bomb","price":30,"totalAmount":150,"quantity":5,"image":"http://cracker.test/public/images/1709191492_28_chorsa.jpeg"},{"id":"52","productName":"4 Deluxe","price":18,"totalAmount":90,"quantity":5,"image":"http://cracker.test/public/images/1709191008_4_Deluxe.jpeg"},{"id":"53","productName":"2.75 Kuruvi","price":8,"totalAmount":32,"quantity":4,"image":"http://cracker.test/public/images/1709191054_2.75_Kuruvi.jpeg"},{"id":"54","productName":"5 Deluxe","price":22,"totalAmount":88,"quantity":4,"image":"http://cracker.test/public/images/1709191181_5_Deluxe.webp"},{"id":"55","productName":"3.5 Lakshmi","price":100,"totalAmount":500,"quantity":5,"image":"http://cracker.test/public/images/1709191221_3.5_lakshmi.jpeg"},{"id":"56","productName":"28 Chorsa","price":60,"totalAmount":360,"quantity":6,"image":"http://cracker.test/public/images/1709191377_Chotta_Wala.jpeg"},{"id":"57","productName":"28 Gaint","price":100,"totalAmount":500,"quantity":5,"image":"http://cracker.test/public/images/1709191417_56_gaint.webp"}]', '2024-03-02 05:19:19', '2024-03-02 05:19:19'),
	(74, 'Afin', '70940 770 40', 'Address', 'state', 'marthandam', '1233423', '[{"id":"52","productName":"4 Deluxe","price":18,"totalAmount":36,"quantity":2,"image":"http://cracker.test/public/images/1709191008_4_Deluxe.jpeg"},{"id":"53","productName":"2.75 Kuruvi","price":8,"totalAmount":24,"quantity":3,"image":"http://cracker.test/public/images/1709191054_2.75_Kuruvi.jpeg"},{"id":"56","productName":"28 Chorsa","price":60,"totalAmount":120,"quantity":2,"image":"http://cracker.test/public/images/1709191377_Chotta_Wala.jpeg"},{"id":"57","productName":"28 Gaint","price":100,"totalAmount":200,"quantity":2,"image":"http://cracker.test/public/images/1709191417_56_gaint.webp"}]', '2024-03-03 23:36:32', '2024-03-03 23:36:32'),
	(75, 'Hostupto6666', '9620 456 124', 'hfdg', 'state', 'city', 'sdf', '[{"id":"58","productName":"Auto Bomb","price":50,"totalAmount":100,"quantity":2,"image":"http://cracker.test/public/images/1709191450_Jug_Mug_Bomb.jpg"},{"id":"53","productName":"2.75 Kuruvi","price":8,"totalAmount":16,"quantity":2,"image":"http://cracker.test/public/images/1709191054_2.75_Kuruvi.jpeg"},{"id":"57","productName":"28 Gaint","price":100,"totalAmount":200,"quantity":2,"image":"http://cracker.test/public/images/1709191417_56_gaint.webp"}]', '2024-03-22 04:25:14', '2024-03-22 04:25:14'),
	(76, 'Jewellery', '67463454643', 'nn', 'n', 'n', 'nn', '[{"id":"52","productName":"4 Deluxe","price":18,"totalAmount":54,"quantity":3,"image":"http://cracker.test/public/images/1709191008_4_Deluxe.jpeg"},{"id":"53","productName":"2.75 Kuruvi","price":8,"totalAmount":64,"quantity":8,"image":"http://cracker.test/public/images/1709191054_2.75_Kuruvi.jpeg"},{"id":"58","productName":"Auto Bomb","price":50,"totalAmount":100,"quantity":2,"image":"http://cracker.test/public/images/1709191450_Jug_Mug_Bomb.jpg"}]', '2024-03-27 22:42:20', '2024-03-27 22:42:20'),
	(77, 's', 's', 's', 's', 's', 's', '[{"id":"52","productName":"4 Deluxe","price":18,"totalAmount":72,"quantity":4,"image":"http://cracker.test/public/images/1709191008_4_Deluxe.jpeg"},{"id":"53","productName":"2.75 Kuruvi","price":8,"totalAmount":24,"quantity":3,"image":"http://cracker.test/public/images/1709191054_2.75_Kuruvi.jpeg"},{"id":"54","productName":"5 Deluxe","price":22,"totalAmount":66,"quantity":3,"image":"http://cracker.test/public/images/1709191181_5_Deluxe.webp"}]', '2024-03-31 22:15:07', '2024-03-31 22:15:07'),
	(78, 'proprer', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', '[{"id":"56","productName":"28 Chorsa","price":60,"totalAmount":120,"quantity":2,"image":"http://cracker.test/public/images/1709191377_Chotta_Wala.jpeg"},{"id":"57","productName":"28 Gaint","price":100,"totalAmount":200,"quantity":2,"image":"http://cracker.test/public/images/1709191417_56_gaint.webp"}]', '2024-04-01 05:35:12', '2024-04-01 05:35:12'),
	(79, 'name', '45635656', 'dfgdfg', 'dd', 'd', 'd', '[{"id":"60","productName":"ree","price":56,"totalAmount":112,"quantity":2,"image":"http://cracker.test/public/images/1712038123_1709186058_one_sound_crackers.jpg"},{"id":"63","productName":"ttt","price":566,"totalAmount":566,"quantity":1,"image":"http://cracker.test/public/images/1712038190_1709186169_Chotta_Wala.jpeg"},{"id":"64","productName":"oo","price":908,"totalAmount":1816,"quantity":2,"image":"http://cracker.test/public/images/1712038212_1709191181_5_Deluxe.webp"},{"id":"65","productName":"oo","price":566,"totalAmount":1132,"quantity":2,"image":"http://cracker.test/public/images/1712038228_1709183214_rocket.jpg"},{"id":"61","productName":"ree45","price":900,"totalAmount":1800,"quantity":2,"image":"http://cracker.test/public/images/1712038145_1709190474_bomb.png"},{"id":"58","productName":"Auto Bomb","price":50,"totalAmount":100,"quantity":2,"image":"http://cracker.test/public/images/1709191450_Jug_Mug_Bomb.jpg"},{"id":"59","productName":"Hydro Bomb","price":30,"totalAmount":60,"quantity":2,"image":"http://cracker.test/public/images/1709191492_28_chorsa.jpeg"},{"id":"52","productName":"4 Deluxe","price":18,"totalAmount":36,"quantity":2,"image":"http://cracker.test/public/images/1709191008_4_Deluxe.jpeg"},{"id":"53","productName":"2.75 Kuruvi","price":8,"totalAmount":16,"quantity":2,"image":"http://cracker.test/public/images/1709191054_2.75_Kuruvi.jpeg"},{"id":"54","productName":"5 Deluxe","price":22,"totalAmount":44,"quantity":2,"image":"http://cracker.test/public/images/1709191181_5_Deluxe.webp"},{"id":"55","productName":"3.5 Lakshmi","price":100,"totalAmount":200,"quantity":2,"image":"http://cracker.test/public/images/1709191221_3.5_lakshmi.jpeg"},{"id":"56","productName":"28 Chorsa","price":60,"totalAmount":120,"quantity":2,"image":"http://cracker.test/public/images/1709191377_Chotta_Wala.jpeg"},{"id":"57","productName":"28 Gaint","price":100,"totalAmount":200,"quantity":2,"image":"http://cracker.test/public/images/1709191417_56_gaint.webp"},{"id":"62","productName":"fff","price":56,"totalAmount":112,"quantity":2,"image":"http://cracker.test/public/images/1712038167_1709191054_2.75_Kuruvi.jpeg"}]', '2024-04-02 00:41:20', '2024-04-02 00:41:20');

-- Dumping structure for table cracker.orders
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

-- Dumping data for table cracker.orders: ~3 rows (approximately)
INSERT INTO `orders` (`id`, `user_id`, `session_id`, `billing_first_name`, `billing_last_name`, `billing_company_name`, `billing_address`, `billing_apartment`, `billing_city`, `billing_state`, `billing_postcode`, `billing_email`, `billing_phone`, `order_notes`, `order_id`, `payment_method`, `razorpay_payment_id`, `order_status`, `product_id`, `quantity`, `subtotal`, `payment_status`, `created_at`, `updated_at`) VALUES
	(21, 17, NULL, 'akex', 'al', 'company_name', NULL, 'apartment', 'marthandam', 'marthandam', '545456', 'tamilstoryapp1@gmail.com', '7639534668', 'notes', 'order_NGva0f6QRWJsWf', 'Razorpay', '122', 'cancelled', '[33,35]', '5,6', 900.000000, 'paid', '2023-12-26 04:10:12', '2024-01-03 06:29:31'),
	(24, 18, NULL, 'alex', 'alex', 'company_name', 'address', 'apartment', 'marthandam', 'marthandam', '545456', 'a@gmail.com', '76456356', 'notes', 'order_NGyIRJpGV5cyCY', 'Razorpay', '122', 'pending', '[33,35]', '6,3', 100.000000, 'unpaid', '2023-12-26 06:49:39', '2024-01-03 06:29:27'),
	(25, 19, NULL, 'alex', 'alex', 'company_name', 'address', 'apartment', 'marthandam', 'marthandam', '545456', 'a@gmail.com', '76456356', 'notes', 'order_NGyIcfB6ZMRt0f', 'Razorpay', '122', 'pending', '[33,35]', '9,6', 50.000000, 'unpaid', '2023-12-26 06:49:49', '2024-01-03 06:29:23');

-- Dumping structure for table cracker.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cracker.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table cracker.personal_access_tokens
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

-- Dumping data for table cracker.personal_access_tokens: ~17 rows (approximately)
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

-- Dumping structure for table cracker.products
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

-- Dumping data for table cracker.products: ~2 rows (approximately)
INSERT INTO `products` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`, `category_id`, `brand_id`, `image`, `size`, `featured`) VALUES
	(33, 'Jewellery66668', 5000.00, 'It\'s a pure village Ghee', '2023-12-27 23:42:41', '2024-01-03 00:13:44', '23', '8', 'z29uDL0zVpDz9K8DbzQ2.jpg', '500kg:30, 1kg:200', NULL),
	(35, 'Jewellery66666', 300.00, 'It\'s a pure village milk', '2024-01-02 23:50:32', '2024-01-03 00:16:48', '23', '8', 'heucJ98zMNqrPWJKjL4y.jpg', '500kg:30, 1kg:200', 0);

-- Dumping structure for table cracker.scolink
CREATE TABLE IF NOT EXISTS `scolink` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scolink` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cracker.scolink: ~0 rows (approximately)

-- Dumping structure for table cracker.service
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

-- Dumping data for table cracker.service: ~0 rows (approximately)
INSERT INTO `service` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(14, 'Add service1', 'Add service1', 'Add service1', 'Add service1', 'http://final-admin.test/public/images/1705386163.jpg', 'Add service1', 'Add service1', '2024-01-22 22:49:44', '2024-02-06 23:29:59');

-- Dumping structure for table cracker.smtp
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

-- Dumping data for table cracker.smtp: ~0 rows (approximately)
INSERT INTO `smtp` (`id`, `MAIL_MAILER`, `MAIL_HOST`, `MAIL_PORT`, `MAIL_USERNAME`, `MAIL_PASSWORD`, `MAIL_ENCRYPTION`, `MAIL_FROM_ADDRESS`, `MAIL_FROM_NAME`, `created_at`, `updated_at`) VALUES
	(6, 'smtp', 'smtp.gmail.com', 587, 'alexalphons82@gmail.com', '\'hqdk gucd xxhe zelm\'', 'ssl', NULL, NULL, '2023-12-07 04:47:27', '2023-12-07 04:53:30');

-- Dumping structure for table cracker.socia
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

-- Dumping data for table cracker.socia: ~2 rows (approximately)
INSERT INTO `socia` (`id`, `contact`, `description`, `facebook`, `twitter`, `instagram`, `google`, `is_social`, `created_at`, `updated_at`) VALUES
	(23, NULL, NULL, 'https://www.facebook.com/YourPage', 'https://twitter.com/YourHandle', 'https://www.instagram.com/YourUsername', 'https://plus.google.com/YourPage', '0', '2024-02-18 22:59:46', '2024-02-18 22:59:46'),
	(26, 'Contact Us', 'For general inquiries, partnership opportunities, or any other questions', NULL, NULL, NULL, NULL, '1', '2024-02-19 05:30:46', '2024-02-19 05:30:46');

-- Dumping structure for table cracker.soloblog
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

-- Dumping data for table cracker.soloblog: ~0 rows (approximately)
INSERT INTO `soloblog` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(11, 'Add blog one data', 'Add blog one data', 'Add blog one data', 'Add blog one data', 'Add blog one data', 'Add blog one data', 'Add blog one data', '2024-01-23 04:53:35', '2024-01-23 04:53:35');

-- Dumping structure for table cracker.solowork
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

-- Dumping data for table cracker.solowork: ~0 rows (approximately)
INSERT INTO `solowork` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(11, 'Add one work SEO8888', 'Add one work SEO9999', 'Add one work SEO-----', 'Add one work SEO', 'Add one work SEO', 'Add one work SEO1212121', 'Add one work SEO1212121', '2024-01-23 04:36:19', '2024-01-23 04:42:40');

-- Dumping structure for table cracker.users
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table cracker.users: ~4 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `status`, `role`, `is_delete`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@mail.com', '2023-10-23 11:49:15', '$2y$10$jAVevbqZ0VFE1pd5Vz3.3.uL43zpsmOsG9Woe2qd25I5uDisOdxQO', NULL, 1, 0, 'SuperAdmin', 0, NULL, NULL),
	(28, 'lowadmin', 'lowadmin@mail.com', NULL, '$2y$10$kRuXaulCs3Ub./o1r6wR8OZqPJm.P2VdcrD7ysPJXJ63xD51c2.Bu', NULL, 1, 0, 'Admin', 0, '2024-01-29 22:47:32', '2024-02-19 05:14:46'),
	(34, 'alan', 'alan@mail.com', NULL, '$2y$10$DDlzmmBlglyLRfrStLc4M.DO/pCMkgj4fm86ejMnSMxjSjKDJ6RYq', NULL, 1, 1, 'SuperAdmin', 1, '2024-02-19 05:10:41', '2024-02-19 05:41:19'),
	(35, 'alal', 'a@mail.com', NULL, '$2y$10$MwAJrlqPz0crUm/VT9lxO.QgJ8vjgowMT2E04rJ8VYfP2NjJqWbZi', NULL, 1, 0, 'Admin', 1, '2024-02-19 05:11:11', '2024-02-19 05:41:25');

-- Dumping structure for table cracker.work
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

-- Dumping data for table cracker.work: ~0 rows (approximately)
INSERT INTO `work` (`id`, `metatitle`, `metadescription`, `ogtitle`, `ogdescription`, `ogimage`, `ogurl`, `ogtype`, `created_at`, `updated_at`) VALUES
	(12, 'Add work data2', 'Add work data2', 'Add work data2', 'Add work data2', 'http://final-admin.test/public/images/1705386163.jpg', 'Add work data2', 'Add work data2', '2024-01-23 00:27:26', '2024-02-07 00:02:39');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
