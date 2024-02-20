-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2024 at 03:10 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `4greenharvestdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booktb`
--

CREATE TABLE `booktb` (
  `id` bigint(10) NOT NULL auto_increment,
  `UserName` varchar(250) NOT NULL,
  `Bookid` varchar(250) NOT NULL,
  `Qty` varchar(250) NOT NULL,
  `Amount` varchar(250) NOT NULL,
  `CardName` varchar(250) NOT NULL,
  `CardNo` varchar(250) NOT NULL,
  `CvNo` varchar(250) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `booktb`
--

INSERT INTO `booktb` (`id`, `UserName`, `Bookid`, `Qty`, `Amount`, `CardName`, `CardNo`, `CvNo`, `Date`) VALUES
(1, 'sanc', 'BOOKID1', '3.00', '2700.00', 'Mastercard', '2152363474585677', '123', '2024-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `carttb`
--

CREATE TABLE `carttb` (
  `id` bigint(10) NOT NULL auto_increment,
  `UserName` varchar(250) NOT NULL,
  `ProductName` varchar(250) NOT NULL,
  `ProductType` varchar(250) NOT NULL,
  `Price` varchar(250) NOT NULL,
  `Qty` decimal(18,2) NOT NULL,
  `Tprice` decimal(28,2) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(250) NOT NULL,
  `Bookid` varchar(250) NOT NULL,
  `Fname` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `carttb`
--

INSERT INTO `carttb` (`id`, `UserName`, `ProductName`, `ProductType`, `Price`, `Qty`, `Tprice`, `Image`, `Date`, `Status`, `Bookid`, `Fname`, `Mobile`, `Address`) VALUES
(1, 'sanc', 'rice', 'Rice', '900', '3.00', '2700.00', '3982.png', '2024-02-20', '1', 'BOOKID1', 'sanf', '9486365535', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur');

-- --------------------------------------------------------

--
-- Table structure for table `farmertb`
--

CREATE TABLE `farmertb` (
  `id` bigint(20) NOT NULL auto_increment,
  `Name` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `farmertb`
--

INSERT INTO `farmertb` (`id`, `Name`, `Mobile`, `Email`, `Address`, `UserName`, `Password`) VALUES
(1, 'sangeeth Kumar', '9486365535', 'sangeeth5535@gmail.com', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'sanf', 'sanf');

-- --------------------------------------------------------

--
-- Table structure for table `fbooktb`
--

CREATE TABLE `fbooktb` (
  `id` bigint(10) NOT NULL auto_increment,
  `UserName` varchar(250) NOT NULL,
  `Bookid` varchar(250) NOT NULL,
  `Qty` varchar(250) NOT NULL,
  `Amount` varchar(250) NOT NULL,
  `CardName` varchar(250) NOT NULL,
  `CardNo` varchar(250) NOT NULL,
  `CvNo` varchar(250) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fbooktb`
--

INSERT INTO `fbooktb` (`id`, `UserName`, `Bookid`, `Qty`, `Amount`, `CardName`, `CardNo`, `CvNo`, `Date`) VALUES
(1, 'sanf', 'BOOKID1', '2.00', '400.00', 'Mastercard', '2142363474586777', '121', '2024-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `fcarttb`
--

CREATE TABLE `fcarttb` (
  `id` bigint(10) NOT NULL auto_increment,
  `UserName` varchar(250) NOT NULL,
  `ProductName` varchar(250) NOT NULL,
  `ProductType` varchar(250) NOT NULL,
  `Price` varchar(250) NOT NULL,
  `Qty` decimal(18,2) NOT NULL,
  `Tprice` decimal(28,2) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(250) NOT NULL,
  `Bookid` varchar(250) NOT NULL,
  `OwnerName` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fcarttb`
--

INSERT INTO `fcarttb` (`id`, `UserName`, `ProductName`, `ProductType`, `Price`, `Qty`, `Tprice`, `Image`, `Date`, `Status`, `Bookid`, `OwnerName`, `Address`) VALUES
(1, 'sanf', 'urea', 'Fertilizer', '200', '2.00', '400.00', '4131.png', '2024-02-20', '1', 'BOOKID1', 'sano', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur');

-- --------------------------------------------------------

--
-- Table structure for table `fmbooktb`
--

CREATE TABLE `fmbooktb` (
  `id` bigint(10) NOT NULL auto_increment,
  `UserName` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `ProductName` varchar(250) NOT NULL,
  `ProductType` varchar(250) NOT NULL,
  `Price` varchar(250) NOT NULL,
  `Days` varchar(250) NOT NULL,
  `TRent` varchar(250) NOT NULL,
  `HType` varchar(250) NOT NULL,
  `Date` date NOT NULL,
  `sDate` date NOT NULL,
  `Edate` varchar(250) NOT NULL,
  `OwnerName` varchar(250) NOT NULL,
  `Status` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fmbooktb`
--

INSERT INTO `fmbooktb` (`id`, `UserName`, `Address`, `ProductName`, `ProductType`, `Price`, `Days`, `TRent`, `HType`, `Date`, `sDate`, `Edate`, `OwnerName`, `Status`) VALUES
(1, 'sanf', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'sprayer', 'Sprayer', '200', '2', '400.0', 'Hour', '2024-02-20', '2024-02-20', '2024-02-20 00:00:00', 'sano', '0');

-- --------------------------------------------------------

--
-- Table structure for table `mechinetb`
--

CREATE TABLE `mechinetb` (
  `id` bigint(10) NOT NULL auto_increment,
  `ProductName` varchar(250) NOT NULL,
  `ModelNo` varchar(250) NOT NULL,
  `ProductType` varchar(250) NOT NULL,
  `RegistrationDate` varchar(250) NOT NULL,
  `ServiceDate` varchar(250) NOT NULL,
  `HType` varchar(250) NOT NULL,
  `Price` varchar(250) NOT NULL,
  `Horsepower` varchar(250) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `Rcbook` varchar(250) NOT NULL,
  `SpecialConditions` varchar(250) NOT NULL,
  `Info` varchar(250) NOT NULL,
  `OwnerName` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `mechinetb`
--

INSERT INTO `mechinetb` (`id`, `ProductName`, `ModelNo`, `ProductType`, `RegistrationDate`, `ServiceDate`, `HType`, `Price`, `Horsepower`, `Image`, `Rcbook`, `SpecialConditions`, `Info`, `OwnerName`, `mobile`, `Address`) VALUES
(5, 'mm', '1234', 'Sprayer', '2024-02-20', '2024-02-22', 'Day', '200', '600', '5976.png', '6361.png', 'bvmnbv', 'gjgfhfghf', 'san', '9486365535', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur'),
(6, 'sprayer', '1234', 'Sprayer', '2024-02-19', '2024-02-19', 'Hour', '200', '600', '2102.png', '7238.png', 'dfhdf', 'dfyhdfyrt', 'sano', '9486365535', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur');

-- --------------------------------------------------------

--
-- Table structure for table `ownertb`
--

CREATE TABLE `ownertb` (
  `id` bigint(20) NOT NULL auto_increment,
  `Name` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ownertb`
--

INSERT INTO `ownertb` (`id`, `Name`, `Mobile`, `Email`, `Address`, `UserName`, `Password`) VALUES
(1, 'sangeeth Kumar', '9486365535', 'sangeeth5535@gmail.com', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'sano', 'sano');

-- --------------------------------------------------------

--
-- Table structure for table `protb`
--

CREATE TABLE `protb` (
  `id` bigint(10) NOT NULL auto_increment,
  `ProductName` varchar(250) NOT NULL,
  `ProductType` varchar(250) NOT NULL,
  `Price` varchar(250) NOT NULL,
  `Qty` varchar(250) NOT NULL,
  `Info` varchar(500) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `OwnerName` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `protb`
--

INSERT INTO `protb` (`id`, `ProductName`, `ProductType`, `Price`, `Qty`, `Info`, `Image`, `OwnerName`) VALUES
(4, 'urea 25 kg', 'Fertilizer', '900', '500', 'nill', '3627.png', ''),
(5, 'urea 50 kg', 'Fertilizer', '200', '40', 'nill', '2147.png', 'san'),
(6, 'urea', 'Fertilizer', '200', '50', 'ASdfas', '4131.png', 'sano');

-- --------------------------------------------------------

--
-- Table structure for table `regtb`
--

CREATE TABLE `regtb` (
  `id` bigint(20) NOT NULL auto_increment,
  `Name` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `regtb`
--

INSERT INTO `regtb` (`id`, `Name`, `Mobile`, `Email`, `Address`, `UserName`, `Password`) VALUES
(1, 'sangeeth Kumar', '9486365535', 'sangeeth5535@gmail.com', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'sanc', 'sanc');

-- --------------------------------------------------------

--
-- Table structure for table `uprotb`
--

CREATE TABLE `uprotb` (
  `id` bigint(10) NOT NULL auto_increment,
  `ProductName` varchar(250) NOT NULL,
  `ProductType` varchar(250) NOT NULL,
  `Price` varchar(250) NOT NULL,
  `Qty` varchar(250) NOT NULL,
  `Info` varchar(500) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `fname` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `uprotb`
--

INSERT INTO `uprotb` (`id`, `ProductName`, `ProductType`, `Price`, `Qty`, `Info`, `Image`, `fname`) VALUES
(4, 'apple', 'Rice', '900', '2', 'per kg price', '7723.png', 'san'),
(6, 'rice', 'Rice', '900', '5 kg', 'asfds', '3982.png', 'sanf');
