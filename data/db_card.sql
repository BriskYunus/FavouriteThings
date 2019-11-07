-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 07, 2019 at 05:22 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bio`
--

DROP TABLE IF EXISTS `tbl_bio`;
CREATE TABLE IF NOT EXISTS `tbl_bio` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `profID` tinyint(4) DEFAULT NULL,
  `bio` varchar(200) DEFAULT NULL,
  `social` varchar(60) DEFAULT NULL,
  `classes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bio`
--

INSERT INTO `tbl_bio` (`ID`, `profID`, `bio`, `social`, `classes`) VALUES
(1, 1, 'Since I was very young I used to study music on the side cause it always stuck with me growing up. In high school I even started producing and mixing for local artist. View my work below!', 'Socials: WORKSOFBRISK', 'Fanshawe'),
(2, 2, 'I always love playing soccer since Elementary School. I even still watch the world cup which always excites me each season.', 'ESPN', 'Fanshawe'),
(3, 3, 'Tech was always a passion for me such as new phones, computers and devices. I also landed a job at Best Buy which I enjoy!', 'Best Buy', 'Fanshawe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card`
--

DROP TABLE IF EXISTS `tbl_card`;
CREATE TABLE IF NOT EXISTS `tbl_card` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) COLLATE utf8_bin NOT NULL,
  `CompanyName` varchar(30) COLLATE utf8_bin NOT NULL,
  `Address` varchar(150) COLLATE utf8_bin NOT NULL,
  `Logo` varchar(200) COLLATE utf8_bin NOT NULL,
  `URL` varchar(200) COLLATE utf8_bin NOT NULL,
  `SocialMedia` varchar(100) COLLATE utf8_bin NOT NULL,
  `JobTitle` varchar(60) COLLATE utf8_bin NOT NULL,
  `Phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `Email` varchar(35) COLLATE utf8_bin NOT NULL,
  `Fax` varchar(20) COLLATE utf8_bin NOT NULL,
  `avatar` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_card`
--

INSERT INTO `tbl_card` (`ID`, `Name`, `CompanyName`, `Address`, `Logo`, `URL`, `SocialMedia`, `JobTitle`, `Phone`, `Email`, `Fax`, `avatar`) VALUES
(1, 'Music', 'Fanshawe', '200 Dundas', 'https://www.fanshaweonline.ca/d2l/lp/navbars/29533/theme/viewimage/32508983/view?v=20.19.8.17536-327', 'https://www.apple.com/ca/music/', 'IG: worksofbrisk', 'Producer', '1112223333', 'b_yunus@fanshaweonline.ca', '111222333', 'music-icon.png'),
(2, 'Soccer', 'Fanshawe', '200 Dundas', 'https://www.fanshaweonline.ca/d2l/lp/navbars/29533/theme/viewimage/32508983/view?v=20.19.8.17536-327', 'https://www.espn.com/soccer/scoreboard', 'ESPN or Facebook', 'Athlete', '444555666', 'b_yunus@fanshaweonline.ca', '444555666', 'soccer_icon.png'),
(3, 'Tech', 'Fanshawe', '200 Dundas', 'https://www.fanshaweonline.ca/d2l/lp/navbars/29533/theme/viewimage/32508983/view?v=20.19.8.17536-327', 'https://www.bestbuy.ca/en-ca', 'BestBuy.ca', 'Advisor', '7778889999', 'b_yunus@fanshaweonline.ca', '7778889999', 'tech-icon.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
