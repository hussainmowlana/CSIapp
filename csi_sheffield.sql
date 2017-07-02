-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2017 at 03:21 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `csi_sheffield`
--

-- --------------------------------------------------------

--
-- Table structure for table `analytical_technique`
--

CREATE TABLE IF NOT EXISTS `analytical_technique` (
  `technique` int(10) NOT NULL AUTO_INCREMENT,
  `confirmation_test_result` varchar(50) NOT NULL,
  PRIMARY KEY (`technique`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `control_substance`
--

CREATE TABLE IF NOT EXISTS `control_substance` (
  `CSU_Imprint_code` int(10) NOT NULL AUTO_INCREMENT,
  `CSU_Quantity` int(10) NOT NULL,
  `CSU_Form` varchar(50) NOT NULL,
  `CSU_Received_date` datetime(6) NOT NULL,
  `CSU_Type` varchar(20) NOT NULL,
  PRIMARY KEY (`CSU_Imprint_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

CREATE TABLE IF NOT EXISTS `crime` (
  `Crime_id` int(10) NOT NULL AUTO_INCREMENT,
  `Crime_Date&Time` datetime(6) NOT NULL,
  `Crime_Type` varchar(50) NOT NULL,
  `Crime_Location` varchar(25) NOT NULL,
  PRIMARY KEY (`Crime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE IF NOT EXISTS `device` (
  `Device_id` int(10) NOT NULL AUTO_INCREMENT,
  `Device_Name` varchar(50) NOT NULL,
  `Device_Model` varchar(50) NOT NULL,
  PRIMARY KEY (`Device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `Emp_id` int(10) NOT NULL AUTO_INCREMENT,
  `Emp_name` varchar(50) NOT NULL,
  `Emp_address` varchar(50) NOT NULL,
  `Emp_tel` int(10) NOT NULL,
  `Emp_DOB` datetime(6) NOT NULL,
  `Emp_type` varchar(20) NOT NULL,
  `Emp_password` varchar(30) NOT NULL,
  `Emp_ConfirmPassword` varchar(30) NOT NULL,
  PRIMARY KEY (`Emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evidence`
--

CREATE TABLE IF NOT EXISTS `evidence` (
  `Digital_Evidence_id` int(10) NOT NULL AUTO_INCREMENT,
  `Digital_Evidence_Type` varchar(50) NOT NULL,
  `Digital_Evidence_name` varchar(50) NOT NULL,
  PRIMARY KEY (`Digital_Evidence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `forensic_toxicology_evidence`
--

CREATE TABLE IF NOT EXISTS `forensic_toxicology_evidence` (
  `forensic_toxicology_evidence_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`forensic_toxicology_evidence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `isolation_method`
--

CREATE TABLE IF NOT EXISTS `isolation_method` (
  `isolation_method_type` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packaging`
--

CREATE TABLE IF NOT EXISTS `packaging` (
  `Package_id` int(10) NOT NULL AUTO_INCREMENT,
  `Package_Type` varchar(25) NOT NULL,
  `Package_Quantity` int(10) NOT NULL,
  PRIMARY KEY (`Package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE IF NOT EXISTS `reference` (
  `Reference_id` int(10) NOT NULL AUTO_INCREMENT,
  `Reference_name` varchar(50) NOT NULL,
  `Reference_Date&Time` datetime(6) NOT NULL,
  `Reference_Location` varchar(25) NOT NULL,
  `Reference_Details` varchar(50) NOT NULL,
  PRIMARY KEY (`Reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE IF NOT EXISTS `shipping` (
  `Shipping_id` int(10) NOT NULL AUTO_INCREMENT,
  `Shipping_Date&Time` datetime(6) NOT NULL,
  `Shipping_Destination` varchar(50) NOT NULL,
  PRIMARY KEY (`Shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `specimen`
--

CREATE TABLE IF NOT EXISTS `specimen` (
  `specimen_id` int(10) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  PRIMARY KEY (`specimen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `storage_media`
--

CREATE TABLE IF NOT EXISTS `storage_media` (
  `storage_media_id` int(10) NOT NULL AUTO_INCREMENT,
  `storage_media_capacity` int(10) NOT NULL,
  `storage_media_quantity` int(10) NOT NULL,
  `storage_media_make` varchar(50) NOT NULL,
  `storage_media_model` varchar(50) NOT NULL,
  `SM_blocking_software_status` varchar(50) NOT NULL,
  PRIMARY KEY (`storage_media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
  `Unit_id` int(10) NOT NULL AUTO_INCREMENT,
  `Unit_Details` varchar(100) NOT NULL,
  `Unit_Members` varchar(50) NOT NULL,
  `Unit_Type` text NOT NULL,
  PRIMARY KEY (`Unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
