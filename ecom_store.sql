-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 25, 2023 at 04:23 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `admin_city` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_city`, `admin_contact`) VALUES
(1, 'sanika', 'gandhisanika27@gmail.com', 'admin', 'profile.png', 'Ratnagiri', '9833289432');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int NOT NULL,
  `size` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `size`) VALUES
(16, '::1', 1, ''),
(17, '::1', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Leaving Room', ''),
(2, 'Bed Room', ''),
(3, 'Kitchen Room', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

DROP TABLE IF EXISTS `contact_form`;
CREATE TABLE IF NOT EXISTS `contact_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submission_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `subject`, `message`, `submission_date`) VALUES
(16, 'ganesh', 'ganesh@gmail.com', 'tv unit', 'nice product', '2023-09-19 15:50:08'),
(17, 'sanika', 'gandhisanika27@gmail.com', 'sofa', 'nice', '2023-09-20 13:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(7, 'ganesh', 'ganesh@gmail.com', '000', 'Mumbai', '9922113456', 'Mumbai', 'profile 2.png', '::1'),
(8, 'sanika', 'gandhisanika27@gmail.com', '123', 'Ratnagiri', '9130252268', 'AT POST Sakharpa', 'profile.png', '::1'),
(10, 'Nupur Kulkarni', 'nupur@gmail.com', 'nupur123', 'Ratnagiri', '8830482636', 'Devrukh', 'erika.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE IF NOT EXISTS `customer_orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `due_amount` int NOT NULL,
  `invoice_no` int NOT NULL,
  `qty` int NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(17, 10, 28974, 1907360041, 1, '', '2023-09-20', 'Complete'),
(18, 10, 44174, 1907360041, 1, '', '2023-09-20', 'Complete'),
(19, 10, 4309, 1907360041, 1, '', '2023-09-20', 'pending'),
(20, 7, 32699, 931554485, 1, '', '2023-09-20', 'Complete'),
(21, 8, 4309, 497323224, 1, '', '2023-09-20', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `invoice_no` int NOT NULL,
  `amount` int NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int NOT NULL,
  `code` int NOT NULL,
  `payment_date` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(7, 935785824, 19499, 'cash on delivery', 2147483647, 333321, '19/09/2023'),
(8, 1896098698, 189999, 'google pay', 2147483647, 333323, '20/09/2023'),
(10, 1907360041, 44174, 'Paypall', 2147483647, 333321, '20/09/2023'),
(11, 931554485, 32699, 'Net banking', 2147483647, 3321113, '20/09/2023');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

DROP TABLE IF EXISTS `pending_orders`;
CREATE TABLE IF NOT EXISTS `pending_orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `invoice_no` int NOT NULL,
  `product_id` text NOT NULL,
  `qty` int NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(17, 10, 1907360041, '12', 1, '', 'Complete'),
(18, 10, 1907360041, '13', 1, '', 'Complete'),
(19, 10, 1907360041, '16', 1, '', 'pending'),
(20, 7, 931554485, '5', 1, '', 'Complete'),
(21, 8, 497323224, '16', 1, '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `p_cat_id` int NOT NULL,
  `cat_id` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `product_keywords`) VALUES
(5, 1, 1, '2023-09-20 13:18:26', 'Wooden sofa ', 'wooden sofa.jpg', 'size sofa.jpg', 'sofa.jpg', 32699, '<p><strong>sofa set 5 seater</strong></p>', 'sofa'),
(6, 3, 1, '2023-09-13 09:09:11', 'Walton TV Unit (Walnut)', 'tv unit.jpg', 'unit size.jpg', 'unit close.jpg', 12900, '<p>Walton TV Unit with Shelving Storage ,Engineered Wood, 1 Year Warranty (Walton)</p>', 'tv unit'),
(8, 1, 1, '2023-09-13 07:39:53', 'wood 3 seater sofa', 'wooden sofa 1.jpg', 'wooden sofa 1 front.jpg', 'wooden sofa 1 size.jpg', 18999, '<p>SAAMENIA FURNITURES Solid Sheesham Wood 3 Seater Sofa Set with Attached 2 Shelf Drawers for Living Room Furniture - Walnut Finish </p>', 'sofa'),
(9, 1, 1, '2023-09-13 07:49:59', 'wood 3 seater sofa', 'wooden sofa 2 front.jpg', 'wooden sofa 2.jpg', 'wooden sofa 2 size.jpg', 14599, '<p>Shree Jeen Mata Enterprises Solid Sheesham Wood Three Seater Sofa | Wooden Sofa for Living Room | Hotel | Cafe | Office | Finish- Honey Finish | </p>', 'sofa'),
(10, 2, 2, '2023-09-13 07:56:19', 'King Size Bed', 'bed 1 front.jpg', 'bed 1 size.jpg', 'bed 1.jpg', 29830, '<p>WOODNETIC Solid Sheesham Wood King Size Bed with Box Storage for Bedroom (Honey) </p>', 'bed'),
(12, 2, 2, '2023-09-13 08:02:42', 'wooden king size bed', 'bed 2 front.jpg', 'bed 2 size.jpg', 'bed 2.jpg', 28974, '<p>EBANSAL Wooden King Size Bed for Bedroom | Solid Wood Double Bed Cot Designer Bed Without Storage | Sheesham Wood, Honey Finish</p>', 'bed'),
(13, 5, 2, '2023-09-13 08:15:08', 'Wooden CNC Wardrobe', 'wardrobes 1 front.jpg', 'wardrobes 1 size.jpg', 'wardrobes 1.jpg', 44174, '<p>WOODNETIC Sheesham Wooden CNC Wardrobe for Clothes with 3 Door and 4 Drawer for Home Living Room Almirah Walnut Finish </p>', 'wardrobe'),
(14, 4, 3, '2023-09-13 08:25:03', 'wood 4 seater dining table', 'table 1 front.jpg', 'table size 1.jpg', 'table size 2.jpg', 19499, '<p>4Solid Wood 4 Seater Dining Table with Chair || Dining Table 4 Seater || Wooden 4 Seater Dining Room Furniture || Four Seater Dining Table || Standard 4 Seater || Teak Finish </p>', 'table'),
(15, 3, 1, '2023-09-17 12:54:46', 'WOODBUZZ-Florence-TV unit', 'TV unit 3 front.jpg', 'tv unit 3 size.jpg', 'tv unit 3.jpg', 12348, '<p>tv unit</p>', 'tv unit'),
(16, 3, 1, '2023-09-19 12:09:50', 'Tv unit', 'tv unit 4 front.jpg', 'tv unit 4 open.jpg', 'tv unit 4 size.jpg', 4309, '<p>Wakefit TV Unit for Living Room | 1 Year Warranty | TV Stand, TV Unit, Engineered Wood Cabinet, TV Cabinet with 2 Door & Open Shelf Storage, TV Unit for Living Room Upto 42\'\' (Fortnite, Brown)</p>', 'tv unit'),
(17, 5, 2, '2023-09-20 14:21:38', '3 Door Wardrobe', 'wardrobe 2 front.jpg', 'wardrobe 2 size.jpg', 'wardrobe 2 open.jpg', 13499, '<p>Caspian Furniture 3 Door Wardrobe with Mirror Drawer Shelves Hanging Space for Clothes Cupboard Almirah Wooden Home Storage (Wanut Finish 75x48x19)</p>', 'wardrobe');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `p_cat_id` int NOT NULL AUTO_INCREMENT,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL,
  PRIMARY KEY (`p_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Sofa', ''),
(2, 'Bed', ''),
(3, 'TV Unit', ''),
(4, 'Table', ''),
(5, 'wardrobes', ''),
(6, 'Book Shelves', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slide_id` int NOT NULL AUTO_INCREMENT,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'slide-5.jpg'),
(2, 'Slide number 2', 'slide-6.jpg'),
(3, 'Slide number 3', 'slide-7.jpg'),
(4, 'Slide number 4', 'slide-8.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
