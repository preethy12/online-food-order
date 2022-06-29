-- phpMyAdmin SQL Dump
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2021 at 07:11 PM


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- Database: `online_rest`
--
CREATE DATABASE IF NOT EXISTS `online_rest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online_rest`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adm_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2022-02-01 16:58:55'),
(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2022-02-01 16:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE IF NOT EXISTS `admin_codes` (
  `id` int(222) NOT NULL AUTO_INCREMENT,
  `codes` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE IF NOT EXISTS `dishes` (
  `d_id` int(222) NOT NULL AUTO_INCREMENT,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `dishes`
--
INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(11, 48, 'Aloo Parotha', 'Aloo paratha is made with whole wheat flour, mashed potatoes, spices & herbs', '65rs', 'alooparotha.jpg'),
(12, 48, 'Ice Cream', 'You are never too old for ice cream.', '40', 'icecream.jpg'),
(13, 49, 'Grilled fish', 'Mix up your summertime dinner rotation with grilled fish.', '75', 'grilledfish.jpg'),
(14, 50, 'Chicken Biryani', 'You can enjoy delicious aromatic rice along with soft chicken pieces.', '100', 'chickenbiryaani.jpg'),
(15, 51, 'Watermelon Juice', 'Watermelon juice made with ginger, mint leaves, lemon.', '35', 'watermelonjuice.jpg'),
(16, 52, 'Pizza', 'I think of dieting, Then i eat Pizza.', '149', 'pizza.jpg'),
(17, 53, 'Shawrma', 'Wrap it up with some shawarma…', '50', 'shawarma.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE IF NOT EXISTS `remark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2022-02-01 16:58:55'),
(63, 32, 'closed', 'cc', '2022-02-01 16:58:55'),
(64, 32, 'in process', 'fff', '2022-02-01 16:58:55'),
(65, 32, 'closed', 'its delv', '2022-02-01 16:58:55'),
(66, 34, 'in process', 'on a way', '2022-02-01 16:58:55'),
(67, 35, 'closed', 'ok', '2022-02-01 16:58:55'),
(68, 37, 'in process', 'on the way!', '2022-02-01 16:58:55'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2022-02-01 16:58:55'),
(70, 37, 'closed', 'delivered success', '2022-02-01 16:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
  `rs_id` int(222) NOT NULL AUTO_INCREMENT,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(48, 5, 'Hotel Rangoli', 'hotelrangoli@gmail.com', ' 094483 83586', 'hotelrangoli.com', '7am', '9pm', 'mon-sun', ' Bantwal,   Jodumarga', 'hotelrangoli.jpeg', '2022-02-01 16:58:55'),
(49, 5, 'Khushi Hotel', 'khusjihotel@gmail.com', '091643 63878', 'khushihotel.com', '7am', '10pm', 'mon-sun', 'Benjanapadavu, Bantwal' ,'khushi.jpeg', '2022-02-01 16:58:55'),
(50, 6, 'Hotel Dream Dine', 'hoteldreamdine@gmail.com', '080507 58756', 'hoteldreamdine.com', '11am', '11pm', 'mon-sun', 'Summer Arcade building, farangipete', 'dreamdine.jpeg', '2022-02-01 16:58:55'),
(51, 7, 'Mandi House', '080707 59752','mandihouse@gmail.com', 'mandihouse.com', '9am', '10pm', 'mon-sun', 'BC Road-Kaikamba,Bantwal', 'mandihouse.jpeg', '2022-02-01 16:58:55'),
(52, 8, 'Laziz pizza', 'lazizpizza@gmail.com', '087928 77357', 'lazizpizza.com', '8am', '10pm', 'mon-sun', 'Mangluru,Karnataka','lazizpizza.jpeg', '2022-02-01 16:58:55'),
(53, 9, 'Silver Sea Food', 'silerseafood@gmail.com', '08045 12752', 'silverseafood.com', '7am', '10pm', 'mon-sun', 'Taluk Office Road,B.C Road,Bantwal', 'silversea.jpeg', '2022-02-01 16:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE IF NOT EXISTS `res_category` (
  `c_id` int(222) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'grill', '2022-02-01 16:58:55'),
(6, 'chicken', '2022-02-01 16:58:55'),
(7, 'juice', '2022-02-01 16:58:55'),
(8, 'pizza', '2022-02-01 16:58:55'),
(9, 'arabic', '2022-02-01 16:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(35, 'freelancer', 'Shallani', 'Devi', 'freelancingservices3000@gmail.com', '9906046077', '3a434cb21e936c0ed7d184162396d400', 'jammu', 1, '2022-02-01 16:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE IF NOT EXISTS `users_orders` (
  `o_id` int(222) NOT NULL AUTO_INCREMENT,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(37, 31, 'Shawrma', 5, '50', 'closed', '2022-02-01 16:58:55');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
