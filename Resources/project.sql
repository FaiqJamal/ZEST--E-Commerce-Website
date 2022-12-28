-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 25, 2022 at 01:19 PM
-- Server version: 8.0.27
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE IF NOT EXISTS `aboutus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text1` varchar(1000) NOT NULL,
  `text2` varchar(1000) NOT NULL,
  `text3` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `text1`, `text2`, `text3`) VALUES
(1, 'Welcome to ZEST! We are an online clothing store that specializes in providing high-quality products for men, women, and kids at affordable prices', 'At ZEST, our team is committed to giving customers a simple and delightful purchasing experience. We provide a large selection of clothing alternatives from major manufacturers like Levi\'s, Nike, Under Armour, Calvin Klein, Ralph Lauren, and H&M since we recognise how difficult it can be to locate the ideal outfit. We offer something to suit every taste, regardless of personal preference. ', 'We provide a wide range of specials and discounts all year long in addition to our large selection of clothing to enable our customers to save even more on their preferred brands. We strive to offer the greatest prices since we think everyone should be able to afford fashionable clothing. ');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryName`, `userType`, `image`) VALUES
(1, 'Chunky knits', 'women', 'chunky-knits.jpg'),
(2, 'Coated jeans', 'women', 'coated-jeans.jpg'),
(3, 'Teddy Coats', 'women', 'teddy-coats.jpg'),
(4, 'Long boots', 'women', 'long-boots.jpg'),
(5, 'Shoulder bags', 'women', 'shoulder-bags.jpg'),
(6, 'Suits', 'men', 'suits.jpg'),
(7, 'Jackets & Coats', 'men', 'jackets-coats.jpg'),
(8, 'Trousers & Chinos', 'men', 'trousers-chinos.jpg'),
(9, 'Polos & T-shirts', 'men', 'polos-tshirts-data.jpg'),
(10, 'All Footwear', 'men', 'all-footwear.jpg'),
(11, 'Jackets & Coats', 'boys', 'coats-jackets-boys.jpg'),
(12, 'Boots & Wellies', 'boys', 'boots-wellies.jpg'),
(13, 'Sets & Outfits', 'boys', 'sets-outfits.jpg'),
(14, 'Nightwear', 'boys', 'nightwear.jpg'),
(15, 'Tops & T-shirts', 'boys', 'tops-t-shirts.jpg'),
(16, 'Dresses', 'girls', 'dresses.jpg'),
(17, 'Coats & Jackets', 'girls', 'coats.jpg'),
(18, 'Boots & Wellies', 'girls', 'footwear.jpg'),
(19, 'Nightwear', 'girls', 'nightwear-girls.jpg'),
(20, 'Tops', 'girls', 'tops.jpg'),
(21, 'Shirts & Blouses', 'women', 'Shirts&Blouses.jpg'),
(22, 'Dresses', 'women', 'dressesWoman.jpg'),
(23, 'Blazers', 'women', 'Blazers.jpg'),
(24, 'Gifts', 'women', 'anniversary.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `message` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `subject`, `phone_number`, `message`) VALUES
(1, 'Alina Nasir', 'anasir.bese20seecs@seecs.edu.pk', 'Inquiry', '03124142482', 'Inquire about incoming collection'),
(2, 'Mydah', 'mnasir.bese20seecs@gmail.com', 'Inquiry', '03124142482', 'Subscribe to newsletter.'),
(3, 'Faiq', 'faiqjamal06@gmail.com', 'Inquiry', '03124152482', 'Apply for job.');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
CREATE TABLE IF NOT EXISTS `home` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `categoryId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `type`, `description`, `image`, `categoryId`) VALUES
(1, 'men', 'Suits', 'MotionFlexStretchSuitJacket.jpg', 6),
(2, 'men', 'Trousers & Chinos', 'AlessandroZavettiBlackMarcelloWovenPants.jpg', 8),
(3, 'men', 'Polos & T-shirts', 'CornflowerBlue.jpg', 9),
(4, 'men', 'Jackets & Coats', 'TruckerJacket.jpg', 7),
(5, 'women', 'Dresses', 'Bridesmaidmaxi.jpg', 22),
(6, 'women', 'Chunky knits', 'PuffSleeveRibDetailKnitTop.jpg', 1),
(7, 'women', 'Coated jeans', 'SlimShapeSkinnyJeans.jpg', 2),
(8, 'women', 'Teddy Coats', 'TeddyBorgeCoat.jpg', 3),
(9, 'women', 'Long boots', 'KneeHighBoots.jpg', 4),
(10, 'women', 'Shoulder bags', 'ToteHandbag.jpg', 5),
(11, 'women', 'Shirts & Blouses', 'SatinShirt.jpg', 21),
(12, 'women', 'Blazers', 'PonteBlazer.jpg', 23),
(13, 'boys', 'Jackets & Coats', 'BoysPaddedPufferCoat.jpg', 11),
(14, 'boys', 'Sets & Outfits', 'BoysJerseySweatshirt.jpg', 13),
(15, 'girls', 'Nightwear', 'VelourLounge.jpg', 19),
(16, 'girls', 'Tops', 'girlsTop.jpg', 20),
(17, '', '', NULL, 0),
(18, 'womenDresses', 'Zests\'s latest edit of women\'s dresses gives every reason to update your wardrobe. ', 'banner.png', 22),
(19, '', '', NULL, 0),
(20, 'gifts', 'Give the perfect gift with a gift card from Zest.', 'anniversary.jpg', 24),
(21, 'testimonials', 'Shopping online or in store with Zest is always a positive experience. Delighted with the choices from designer stores and the easy returns are so appreciated by the buyer and the receiver.', 'user-1.png', 0),
(22, 'testimonials', 'Although I had to return two of the three items I recently ordered, I have always been very satisfied with with the service I have received.\r\nI have found being able to order on line a great help, I do not live near a store and ordering on line makes life much easier.\r\n\r\n', 'user-2.png', 0),
(23, 'testimonials', 'Zest is still one of the best fashion retailers. Everything from products, fashion, Homewares are all up to the minute, they have always kept pace with what is happening today. Classic in many areas of the brand they have also adapted going forward in order to stay relevant.', 'user-3.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `small` int NOT NULL,
  `medium` int NOT NULL,
  `large` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_inventory` (`productId`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `productId`, `small`, `medium`, `large`) VALUES
(1, 1, 49, 60, 70),
(2, 2, 80, 80, 80),
(3, 3, 70, 60, 70),
(4, 4, 60, 52, 30),
(5, 5, 49, 40, 70),
(6, 6, 55, 88, 78),
(7, 7, 50, 60, 70),
(8, 8, 29, 40, 30),
(9, 9, 20, 30, 45),
(10, 10, 45, 45, 45),
(11, 11, 30, 30, 30),
(12, 12, 45, 45, 45),
(13, 13, 30, 30, 30),
(14, 14, 30, 30, 30),
(15, 15, 53, 66, 78),
(16, 16, 22, 22, 22),
(17, 17, 30, 40, 30),
(18, 18, 30, 30, 30),
(19, 19, 0, 0, 0),
(20, 20, 30, 40, 30),
(21, 21, 50, 30, 70),
(22, 22, 55, 60, 45);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `grandTotal` decimal(10,0) NOT NULL,
  `itemCount` int NOT NULL,
  `paymentStatus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`orderId`),
  KEY `orders_users` (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `userId`, `grandTotal`, `itemCount`, `paymentStatus`) VALUES
(1, 5, '116', 2, 0),
(2, 5, '173', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `orderItemId` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `productId` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `orders_items` (`orderId`),
  KEY `orders_products` (`productId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderItemId`, `orderId`, `productId`, `quantity`, `price`, `size`) VALUES
(1, 1, 8, 1, '88', 'small'),
(2, 1, 15, 2, '28', 'small'),
(3, 2, 5, 1, '94', 'small'),
(4, 2, 1, 1, '79', 'small');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `description` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `material` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `categoryId` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `pic2` varchar(255) NOT NULL,
  `pic3` varchar(255) NOT NULL,
  `pic4` varchar(255) NOT NULL,
  PRIMARY KEY (`productId`),
  KEY `products_category` (`categoryId`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `productName`, `price`, `description`, `material`, `picture`, `userType`, `categoryId`, `created_at`, `updated_at`, `pic2`, `pic3`, `pic4`) VALUES
(1, 'Motion Flex Stretch Suit: Jacket', 79, 'Redefine your smart wardrobe with our sharp black Motion Flex jacket. Designed with floral lining, and a notch lapel in our four-way stretch fabric, this blazer is lightweight with easy stretch and movement - perfect for the office or special occasions. Matching items available.', 'Main 55% Recycled polyester, 34% Viscose, 7% Polyester, 4% Elastane. Lining 60% Recycled polyester, 35% Polyester, 5% Elastane.', 'MotionFlexStretchSuitJacket.jpg', 'men', 6, '2022-12-24 05:15:43', '2022-12-24 05:15:43', 'MotionFlexStretchSuitJacket2.jpg', 'MotionFlexStretchSuitJacket3.jpg', 'MotionFlexStretchSuitJacket4.jpg'),
(2, 'Alessandro Zavetti Black Marcello Woven Pants', 55, 'Redefine your smart wardrobe with our sharp black Alessandro Zavetti Black Marcello Woven Pants', '88% Polyester, 12% Elastane.', 'AlessandroZavettiBlackMarcelloWovenPants.jpg', 'men', 8, '2022-12-24 05:23:53', '2022-12-24 05:23:53', 'AlessandroZavettiBlackMarcelloWovenPants1.jpg', 'AlessandroZavettiBlackMarcelloWovenPants2.jpg', 'AlessandroZavettiBlackMarcelloWovenPants3.jpg'),
(3, 'Next Pique Polo Shirt', 20, 'This short sleeve polo is designed in a cotton piqué fabric which is durable and breathable, making it perfect for the warm summer months. In a choice of fits and colours, it features a button placket, ribbed collar and cuffs.', '95% Cotton, 5% Elastane.', 'CornflowerBlue.jpg', 'men', 9, '2022-12-24 08:43:48', '2022-12-24 08:43:48', 'CornflowerBlue1.jpg', 'CornflowerBlue2.jpg', 'CornflowerBlue3.jpg'),
(4, 'Zest Borg Collared Trucker Jacket', 65, 'The trucker jacket is a season staple, perfect for the weekend. Featuring a Borg lining to keep you warm as the temperature continues to drop. Finished with branded snaps for that utility-inspired look.', 'Shell 100% Cotton. Lining 100% Polyester. Wadding 100% Polyester.', 'TruckerJacket.jpg', 'men', 7, '2022-12-24 08:48:02', '2022-12-24 08:48:02', 'TruckerJacket1.jpg', 'TruckerJacket2.jpg', 'TruckerJacket3.jpg'),
(5, 'Lipsy Empire Sleeveless Bridesmaid Maxi Dress', 94, 'Show Less Create a flawless ensemble for special events and formal occasions this Summer with our elegant bridesmaid maxi dress', 'Mesh 95% Polyester, 5% Elastane. Lining 100% Polyester.', 'Bridesmaidmaxi.jpg', 'women', 22, '2022-12-24 08:50:48', '2022-12-24 08:50:48', 'Bridesmaidmaxi1.jpg', 'Bridesmaidmaxi2.jpg', 'Bridesmaidmaxi3.jpg'),
(6, 'Puff Sleeve Rib Detail Knit Top', 34, 'This puff sleeve knit top is designed in a cotton piqué fabric which is durable and breathable, making it perfect for the cold winter months.', '50% Acrylic, 32% Polyester, 18% Nylon.', 'PuffSleeveRibDetailKnitTop.jpg', 'women', 1, '2022-12-24 08:57:56', '2022-12-24 08:57:56', 'PuffSleeveRibDetailKnitTop1.jpg', 'PuffSleeveRibDetailKnitTop2.jpg', 'PuffSleeveRibDetailKnitTop3.jpg'),
(7, 'Zest Lift, Slim And Shape Skinny Jeans', 50, 'Made from a cotton-rich blend with extra stretch, these skinny jeans have been designed with cleverly hidden support which sculpts your figure and a high waistband to contour your shape. The waist smoothing and shaping don\'t end there, they are designed with a clever pattern and curved gap-free waistband to support and slim.', '92% Cotton, 4% Elastane, 4% Elastomultiester.', 'SlimShapeSkinnyJeans.jpg', 'women', 2, '2022-12-24 09:01:44', '2022-12-24 09:01:44', 'SlimShapeSkinnyJeans1.jpg', 'SlimShapeSkinnyJeans2.jpg', 'SlimShapeSkinnyJeans3.jpg'),
(8, 'Teddy Borg Long Coat', 88, 'This elegant and luxurious teddy borg coat should be a staple in your wardrobe this season. Featuring side pockets to keep the chill away from your hands and a long line silhouette for extra coverage against the cold.', 'Shell 100% Polyester. Lining 100% Polyester.', 'TeddyBorgeCoat.jpg', 'women', 3, '2022-12-24 09:05:36', '2022-12-24 09:05:36', 'TeddyBorgeCoat1.jpg', 'TeddyBorgeCoat2.jpg', 'TeddyBorgeCoat3.jpg'),
(9, 'Forever Comfort® Stitch Detail Knee High Boots', 62, 'Our knee-high boots are designed with a chunky sole and elasticated quarter panel detail. An easy slip-on style, they have a zip and buckle fastening with visible stitching detail. Finished with Forever Comfort® padding to help you stay on your feet in comfort and style.', 'Upper - Other Materials, Textile, Lining & Sock - Textile, Other Materials, Sole - Other Materials.', 'KneeHighBoots.jpg', 'women', 4, '2022-12-24 09:11:11', '2022-12-24 09:11:11', 'KneeHighBoots1.jpg', 'KneeHighBoots2.jpg', 'KneeHighBoots3.jpg'),
(10, 'Tote Handbag', 30, 'A smart, structured tote bag that would make a great addition to your work-wear wardrobe or for a day out shopping with the girls. With plenty of space it features an inside zip and pockets.', '100% Polyurethane.', 'ToteHandbag.jpg', 'women', 5, '2022-12-24 09:14:43', '2022-12-24 09:14:43', 'ToteHandbag1.jpg', 'ToteHandbag2.jpg', 'ToteHandbag3.jpg'),
(11, 'Satin Shirt', 42, 'Classically elegant and silky soft, this flowing satin shirt features long sleeves and concealed button fastening. Designed with a curved hem with side slit detailing. Pair with tailored trousers for sophisticated style.', '100% Polyester.', 'SatinShirt.jpg', 'women', 21, '2022-12-24 09:19:31', '2022-12-24 09:19:31', 'SatinShirt1.jpg', 'SatinShirt2.jpg', 'SatinShirt3.jpg'),
(12, 'Ponte Blazer', 46, 'In a stretchy and soft ponte fabric for a smart and comfortable style.', '72% Viscose, 23% Nylon, 5% Elastane.', 'PonteBlazer.jpg', 'women', 23, '2022-12-24 09:26:46', '2022-12-24 09:26:46', 'PonteBlazer1.jpg', 'PonteBlazer2.jpg', 'PonteBlazer3.jpg'),
(13, 'Longline Borg Lined Padded Puffer Coat (3-17yrs)', 43, 'Prepare him for any weather in this puffer jacket designed in an on-trend longer length. Featuring warm and cosy borg lining, front zip fastening, front pockets, elasticated cuffs and reflective details.', 'Main 100% Nylon. Lining 100% Polyester. Wadding 100% Recycled polyester.', 'BoysPaddedPufferCoat.jpg', 'boys', 11, '2022-12-24 09:29:59', '2022-12-24 09:29:59', 'BoysPaddedPufferCoat1.jpg', 'BoysPaddedPufferCoat2.jpg', 'BoysPaddedPufferCoat3.jpg'),
(14, 'Jersey Sweatshirt And Joggers Set (3mths-7yrs)', 15, 'This cosy little sweatshirt and jogger set is made in a soft brush-back sweat fabric. Featuring a long sleeve crew neck sweater and matching cuffed joggers with an adjustable elasticated waistband. With dino embroidery detailing on the chest and leg.', 'Sweater and Jogger 80% Cotton, 20% Polyester.', 'BoysJerseySweatshirt.jpg', 'boys', 13, '2022-12-24 09:34:32', '2022-12-24 09:34:32', 'BoysJerseySweatshirt1.jpg', 'BoysJerseySweatshirt2.jpg', 'BoysJerseySweatshirt3.jpg'),
(15, 'Velour Lounge Set (3-16yrs)', 28, 'For little ones that prefer a touch of luxe to their loungewear, our pink velour pyjama set is sure to become a firm favourite.', 'Pyjama Top and Pyjama Bottom 95% Polyester, 5% Elastane.', 'VelourLounge.jpg', 'girls', 19, '2022-12-24 09:37:47', '2022-12-24 09:37:47', 'VelourLounge1.jpg', 'VelourLounge2.jpg', 'VelourLounge3.jpg'),
(16, 'Oversized T-Shirt and Legging Set (3-16yrs)', 26, 'Show Less Create a flawless ensemble for special events and formal occasions this Summer with our tops.', 'T-shirt 100% Cotton. Leggings 92% Cotton, 8% Elastane.', 'girlsTop.jpg', 'girls', 20, '2022-12-24 09:42:20', '2022-12-24 09:42:20', 'girlsTop1.jpg', 'girlsTop2.jpg', 'girlsTop3.jpg'),
(17, 'Heart Metal Lantern', 38, 'Decorate a fireplace or mantlepiece with this unique heart shaped lantern. It is just as beautiful as a decorative piece as it is when lit with pillar candles. Candles not included. Great as an summer garden accessory.', 'Main 100% Metal. Main 1 100% Glass.', 'Lantern.jpg', 'women', 24, '2022-12-24 13:38:30', '2022-12-24 13:38:30', 'Lantern1.jpg', 'Lantern2.jpg', 'Lantern3.jpg'),
(18, 'Tuxedo Suit: Jacket', 74, 'Create a flawless ensemble for special events and formal occasions this Summer with our elegant tuxedo jacket. With a single-breasted design and one-button fasten, it features a peak lapel and jetted pockets in contrast satin. We\'ve added functional cuffs and a single-back vent to complete the look. Wear yours with our matching trousers and waistcoat. Please note: linings may vary from image.', 'Main 55% Recycled polyester, 35% Viscose, 10% Polyester. Lining 100% Polyester.', 'TuxedoSuit.jpg', 'men', 6, '2022-12-25 06:33:22', '2022-12-25 06:33:22', 'TuxedoSuit1.jpg', 'TuxedoSuit2.jpg', 'TuxedoSuit3.jpg'),
(19, 'Check Suit: Jacket', 84, 'When it comes to tailoring, there\'s nothing as versatile as the checked suit. Paired with our matching trousers and waistcoat, this suit jacket will make an impression at any occasion; whether it\'s presentation day at work or the season\'s must-go wedding. We\'ve finished this single-breasted design with flap pockets, contrast buttons and a peak lapel.', 'Main 100% Polyester. Lining 100% Polyester.', 'Check.jpg', 'men', 6, '2022-12-25 06:36:18', '2022-12-25 06:36:18', 'Check1.jpg', 'Check2.jpg', 'Check3.jpg'),
(20, 'Nova Fides Wool Donegal Slim Fit Suit: Jacket', 104, 'Crafted from a wool blend fabric from Nova Fides, this Donegal suit jacket features a two-button fastening with notch lapel and centre-back vent. A sophisticated addition to your summer formalwear, style with the matching trousers to elevate your look.', 'Main 57% Wool, 36% Polyester, 7% Other fibres. Lining 100% Polyester.', 'SlimFitSuit.jpg', 'men', 6, '2022-12-25 06:39:00', '2022-12-25 06:39:00', 'SlimFitSuit1.jpg', 'SlimFitSuit2.jpg', 'SlimFitSuit3.jpg'),
(21, 'Two Button Suit: Jacket', 64, 'Dial up your work and play smart essentials this summer in this lightweight suit jacket. Featuring a slick peaked collar, twin back vents and neat flap pockets. Made from lightweight fibres in a series of fits, you can throw it in the washing machine for an instant refresh. Style it up for weddings, or down for workwear. A versatile suit to see you through the season. Linings may vary from image.', 'Main 55% Recycled polyester, 35% Viscose, 10% Polyester. Lining 100% Polyester.', 'TwoButtonSuit.jpg', 'men', 6, '2022-12-25 06:41:39', '2022-12-25 06:41:39', 'TwoButtonSuit1.jpg', 'TwoButtonSuit2.jpg', 'TwoButtonSuit3.jpg'),
(22, 'Trimmed Check Suit: Jacket', 99, 'Elevate you\'re smart style with ease thanks to our check suit jacket. Cut for a slim fit that flatters every shape, it is designed with a two button fastening, classic peak lapel, jetted pockets, printed lining and twin back vents for ease of movement. Finished with suedette back collar and pocket trims. Pair with the matching trousers to complete your suit.', 'Main 64% Recycled polyester, 34% Viscose, 2% Elastane. Lining 100% Recycled polyester.', 'Trimmed.jpg', 'men', 6, '2022-12-25 06:45:00', '2022-12-25 06:45:00', 'Trimmed1.jpg', 'Trimmed2.jpg', 'Trimmed3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(1, 'anasir.bese20seecs@seecs.edu.pk');

-- --------------------------------------------------------

--
-- Table structure for table `termcondition`
--

DROP TABLE IF EXISTS `termcondition`;
CREATE TABLE IF NOT EXISTS `termcondition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text1` varchar(2000) NOT NULL,
  `text2` varchar(2000) NOT NULL,
  `text3` varchar(2000) NOT NULL,
  `text4` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `termcondition`
--

INSERT INTO `termcondition` (`id`, `text1`, `text2`, `text3`, `text4`) VALUES
(1, 'When we ship the items you\'ve requested, not before, your order is accepted and a contract is created between Zest and you. A contract is not created when Zest has taken your money or when you get an email from them confirming that they have received your order. The order might not be accepted by Zest or might be cancelled by you before the goods are shipped. ', 'You have the right to cancel your order in accordance with Consumer Regulations as long as you do so no later than 14 days following the day you receive the goods or service. Within a period of 14 days beginning on the day after the day you receive your goods, you must give us written notice of your desire to cancel. You may do this by letter, email, using the cancellation form on the website, or by calling 0333 777 8000#. When possible, you should return items to us in their original packing within 14 days after notifying us. ', 'Store deliveries are free. Delivery to store will remain FREE on any subsequent days, however during periods of high sales, we may charge 25p for the Zest Day To Store service. Whenever you place a purchase, you\'ll be informed of the earliest possible delivery date. Most orders placed before 11 p.m. on any day are eligible for the Zest day delivery to store service.The timing of deliveries cannot be guaranteed.The majority of stores carry it, but availability and demand for it may affect stock levels. Please bring one form of identification that identifies you personally, such as a driver\'s licence or a utility bill, as well as your credit card. Deliveries made to stores that are not picked up within 10 days of the scheduled collection date will be sent back to the warehouse, where a refund will be issued. ', 'Most things that are brand new and unused may be returned. Items should be returned in their original packaging; if the tags have been removed, a refund may not be possible. If you want to cancel or return your order, you must notify us within 14 days (starting on the day after you receive the goods), and you then have 14 days to send the items back. Any fees will be subtracted from your refund if you paid for the order with a credit/debit card, Klarna, Paypal, or Apple Pay. When the return is received, this charge will be added to your account if you used your Zest credit account to pay for the order. You will be responsible for paying the £4.50 delivery fee if you return the entire order. ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `house_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `birthday`, `contact`, `house_no`, `postal_code`, `is_admin`) VALUES
(1, 'Faiq', 'Jamal', 'faiqjamal06@gmail.com', NULL, '$2y$10$Kbh0wq1QnkBET2Pq9WsW3uCDa4InZKE3o5MXLZsGtrkZ8ntrckV5q', NULL, '2022-12-09 16:09:13', '2022-12-09 16:09:13', '2002-12-15', '03412420099', 'Ghazali Block 1, NUST H-12, Islamabad', '43275', 1),
(2, 'Mydah', 'Nasir', 'mydah123@gmail.com', NULL, '$2y$10$aBXfQ39b5/sGpeP9wAOz0uMES25oXfXJN.j5Ib0cD8U6FDBAckyHu', NULL, '2022-12-09 16:12:56', '2022-12-09 16:12:56', '2003-02-05', '03473672536', 'G11Islamabad', '23564', 1),
(3, 'Ali', 'Usman', 'aliusman123@gmail.com', NULL, '$2y$10$1tTji/FwAE2x/SxBEesTrOl2hoF10/9hw3Gjw3Bftag3VmyHgKOsa', NULL, '2022-12-09 17:42:43', '2022-12-09 17:42:43', '2022-12-06', '036273894', 'E1,gsdisud', '247492', NULL),
(4, 'Alina', 'Nasir', 'alina234@gmail.com', NULL, '$2y$10$QZbMxefLm34Tpe.9kPqCNeTC1Sx.Juo/BlWQIC.BHDzt.LKtkNwc.', NULL, '2022-12-10 01:34:29', '2022-12-10 01:34:29', '2022-11-30', '0348674932', 'E11/Islambad', '263849', NULL),
(5, 'Jane', 'Paul', 'jpaul123@gmail.com', NULL, '$2y$10$w9IKI4AADIH5f68kk1UAmOUJuySSlOR2srLbB.nH4aWeqHHVQ8.by', NULL, '2022-12-12 04:07:30', '2022-12-19 10:03:21', '2000-10-17', '03332904881', '287', '1234', NULL),
(6, 'Harry', 'Potter', 'harrypot@gmail.com', NULL, '$2y$10$UmYT4ybuKfDZX8REF3OWMOd/YB6RJ8Clp3JnRxIQ.K1kdtae4BRkm', NULL, '2022-12-16 05:15:33', '2022-12-16 05:15:33', '2010-01-06', '031252739', 'Hogwards', '2456', NULL),
(7, 'Lisa', 'David', 'lisadavid@gmail.com', NULL, '$2y$10$l9TvLrX4rBuwRBtxAeswUeltp9x3lTGYJps621M3h3ZHr5AIUFrN2', NULL, '2022-12-16 05:48:56', '2022-12-16 05:48:56', '2022-12-06', '03627293', 'London, Uk', '27393', NULL),
(8, 'Siraj', 'Ahmed', 'siraj123@gmail.com', NULL, '$2y$10$TuBlJodFreeOJUoPD8cCIeEEVg3U2FLOEMpU23uLyJcqmvXLzcpR2', NULL, '2022-12-17 07:33:39', '2022-12-17 07:33:39', '2006-09-05', '034152728', 'Ghazali1, Room 202', '202', NULL),
(9, 'Tim', 'David', 'timdavid@gmail.com', NULL, '$2y$10$sJ/laqqADooZI46mTEojFe6ipn6bjHPOJHpwFYAuuOs4HQYXfVfnO', NULL, '2022-12-22 01:37:04', '2022-12-22 01:37:04', '1999-06-02', '03067897558', '250', '4400', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
