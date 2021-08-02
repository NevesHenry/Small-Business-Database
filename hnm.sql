-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 02, 2021 at 10:31 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hnm`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
CREATE TABLE IF NOT EXISTS `business` (
  `BusinessID` int(11) NOT NULL,
  `BusinessAddress` varchar(100) DEFAULT NULL,
  `NumOfAddresses` int(11) DEFAULT NULL,
  `BusinessName` varchar(35) NOT NULL,
  `CostAndFees` decimal(7,2) DEFAULT NULL,
  `BusinessServices` char(2) NOT NULL,
  `NumOfCustomers` int(11) DEFAULT NULL,
  PRIMARY KEY (`BusinessID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`BusinessID`, `BusinessAddress`, `NumOfAddresses`, `BusinessName`, `CostAndFees`, `BusinessServices`, `NumOfCustomers`) VALUES
(1, '1234 Saltwater Lane', NULL, 'ABC Plumbing', '10000.99', 'PL', 3),
(2, '201 Marine Way', NULL, 'ZYX Mowing', '20000.99', 'LM', 5),
(3, '221b Laker Street', NULL, 'S&W Private Eye', '15283.99', 'PI', 10),
(4, 'Wakanda Street', NULL, 'Panther Washing', '99999.99', 'PW', 12);

-- --------------------------------------------------------

--
-- Table structure for table `businessphone`
--

DROP TABLE IF EXISTS `businessphone`;
CREATE TABLE IF NOT EXISTS `businessphone` (
  `BusinessID` int(11) DEFAULT NULL,
  `PhoneNumber` varchar(10) DEFAULT NULL,
  KEY `BusinessID` (`BusinessID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businessphone`
--

INSERT INTO `businessphone` (`BusinessID`, `PhoneNumber`) VALUES
(1, '6048323466'),
(1, '6048264823'),
(1, '6049272842'),
(2, '8368268493'),
(3, '7264939183'),
(3, '7268291042'),
(4, '8266359287');

-- --------------------------------------------------------

--
-- Table structure for table `contractaddress`
--

DROP TABLE IF EXISTS `contractaddress`;
CREATE TABLE IF NOT EXISTS `contractaddress` (
  `CustomerID` int(11) NOT NULL,
  `AddressID` int(11) NOT NULL,
  `ContractID` int(11) DEFAULT NULL,
  `BusinessID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`,`AddressID`),
  KEY `BusinessID` (`BusinessID`,`CustomerID`,`ContractID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contractaddress`
--

INSERT INTO `contractaddress` (`CustomerID`, `AddressID`, `ContractID`, `BusinessID`) VALUES
(1, 1, 1, 2),
(1, 2, 2, 2),
(6, 3, 3, 4),
(3, 4, 4, 1),
(8, 5, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
CREATE TABLE IF NOT EXISTS `contracts` (
  `ContractID` int(11) NOT NULL,
  `BusinessID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `ContractDate` date NOT NULL,
  `ServiceCost` int(11) NOT NULL,
  PRIMARY KEY (`BusinessID`,`CustomerID`,`ContractID`),
  KEY `CustomerID` (`CustomerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`ContractID`, `BusinessID`, `CustomerID`, `ContractDate`, `ServiceCost`) VALUES
(1, 2, 1, '2020-02-01', 20000),
(2, 2, 1, '2020-03-01', 20000),
(3, 4, 6, '2019-07-02', 99999),
(4, 1, 3, '2010-08-23', 10000),
(5, 3, 8, '2018-01-01', 16000),
(6, 3, 8, '2020-01-11', 15000),
(7, 1, 1, '2008-11-21', 13000),
(8, 2, 6, '2021-03-15', 88000),
(9, 3, 8, '2020-02-02', 16000),
(10, 3, 7, '2021-02-21', 19000),
(11, 1, 5, '2010-02-02', 16000),
(12, 4, 5, '2021-06-14', 67000);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(35) NOT NULL,
  `CustomerPhoneNumber` varchar(10) DEFAULT NULL,
  `LastUseInMonths` int(11) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `CustomerPhoneNumber`, `LastUseInMonths`) VALUES
(1, 'Hansel', '7362849274', NULL),
(2, 'Gretel', '7368132738', NULL),
(3, 'Yimir', '9378290384', NULL),
(4, 'Eren', '6548266384', NULL),
(5, 'Yolinda', '7382734622', NULL),
(6, 'Harry', '8274829193', NULL),
(7, 'Rimuru', '382734892', NULL),
(8, 'Ron', '8264782823', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `EmployeeID` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `BusinessID` int(11) NOT NULL,
  `Salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `BusinessID` (`BusinessID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `StartDate`, `BusinessID`, `Salary`) VALUES
(1, '2010-02-04', 1, NULL),
(2, '2015-10-22', 1, NULL),
(3, '2015-11-22', 1, NULL),
(4, '2007-01-03', 2, NULL),
(5, '2011-07-04', 2, NULL),
(6, '2017-10-20', 3, NULL),
(7, '2019-09-03', 3, NULL),
(8, '2020-11-05', 3, NULL),
(9, '2001-01-03', 4, NULL),
(10, '2002-02-23', 4, NULL),
(11, '2006-05-20', 4, NULL),
(12, '2012-10-08', 4, NULL),
(13, '2016-11-02', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employeeworksoncontract`
--

DROP TABLE IF EXISTS `employeeworksoncontract`;
CREATE TABLE IF NOT EXISTS `employeeworksoncontract` (
  `EmployeeID` int(11) NOT NULL,
  `BusinessID` int(11) DEFAULT NULL,
  `ContractID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`,`ContractID`),
  KEY `BusinessID` (`BusinessID`,`CustomerID`,`ContractID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeworksoncontract`
--

INSERT INTO `employeeworksoncontract` (`EmployeeID`, `BusinessID`, `ContractID`, `CustomerID`) VALUES
(1, 2, 1, 1),
(2, 2, 2, 1),
(1, 4, 3, 6),
(1, 1, 4, 3),
(2, 3, 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `CustomerID` int(11) NOT NULL,
  `BusinessID` int(11) NOT NULL,
  `ReviewID` int(11) NOT NULL,
  `Comments` varchar(280) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`,`BusinessID`,`ReviewID`),
  KEY `BusinessID` (`BusinessID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`CustomerID`, `BusinessID`, `ReviewID`, `Comments`, `Score`) VALUES
(1, 3, 1, 'Thank you for all your help in unravelling the secret plot!', 5),
(1, 2, 2, 'My lawn looks worse than my neighbors >:( wish I could give negative stars...', 1),
(4, 4, 3, 'My car looks squeeky clean, could have had better service though.', 4),
(6, 1, 4, 'Was smart to let the experts handle this one', 5),
(8, 3, 5, 'Did not have a disclaimer that I might not like what they find... I did not like it and do not like them', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
