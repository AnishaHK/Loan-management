-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 08:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myloanee`
--

-- --------------------------------------------------------

--
-- Table structure for table `creditscore`
--

CREATE TABLE `creditscore` (
  `creditscore_id` bigint(20) NOT NULL,
  `cst_id` bigint(20) NOT NULL,
  `last_updated` date NOT NULL,
  `credit_score` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `creditscore`
--

INSERT INTO `creditscore` (`creditscore_id`, `cst_id`, `last_updated`, `credit_score`) VALUES
(1, 31, '2020-09-01', 600),
(8, 8, '2020-09-09', 700);

-- --------------------------------------------------------

--
-- Table structure for table `cst_customer`
--

CREATE TABLE `cst_customer` (
  `cst_id` int(10) NOT NULL,
  `usr_id` int(10) NOT NULL,
  `cst_type` varchar(15) NOT NULL COMMENT 'company or person',
  `comp_name` varchar(50) NOT NULL,
  `cst_fname` varchar(100) NOT NULL,
  `cst_mname` varchar(50) NOT NULL,
  `cst_lname` varchar(50) NOT NULL,
  `cst_dob` date NOT NULL,
  `cst_gender` varchar(10) NOT NULL,
  `cst_address` text NOT NULL,
  `cst_state` varchar(50) NOT NULL,
  `cst_contact` varchar(15) NOT NULL,
  `cst_email` varchar(100) NOT NULL,
  `cst_password` varchar(100) NOT NULL,
  `cst_bankdetail` text NOT NULL,
  `cst_jobdetail` text NOT NULL,
  `cst_note` text NOT NULL,
  `cst_pan` varchar(25) NOT NULL,
  `cst_photo` varchar(100) NOT NULL,
  `cst_idproof` varchar(100) NOT NULL,
  `cst_addressproof` varchar(100) NOT NULL,
  `cst_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cst_customer`
--

INSERT INTO `cst_customer` (`cst_id`, `usr_id`, `cst_type`, `comp_name`, `cst_fname`, `cst_mname`, `cst_lname`, `cst_dob`, `cst_gender`, `cst_address`, `cst_state`, `cst_contact`, `cst_email`, `cst_password`, `cst_bankdetail`, `cst_jobdetail`, `cst_note`, `cst_pan`, `cst_photo`, `cst_idproof`, `cst_addressproof`, `cst_status`) VALUES
(8, 0, 'Customer', '', 'Aravinda', 'MV', 'IA', '2003-12-31', 'Male', '3rd floor, city light building', 'Karnatak', '7894563323', 'suraj@gmail.com', '111111', 'a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}', '123456789 abc Hello', '', 'ANGPA182912', '366297822800px_COLOURBOX5006496.jpg', '26575Automation Studio.docx', '16263Integration Testing.docx', 'Active'),
(9, 0, 'Company', 'techn opulse', '', '', '', '0000-00-00', '', '3rd floor, city light building', 'karnataka', '7894561231', 'raj@gmail.com', '123456789', '10004', 'test rec', '', '', '18838pickle.jpg', '23780panambur-beach.jpg', '13645Automation Studio.docx', 'Active'),
(10, 0, 'Customer', '', 'Rajesh', 'kiran', 'IA', '2006-02-01', 'Male', '3rd floor, city light building', 'Karnataka', '7894561230', 'aravinda123@technopulse.in', '1234156789', 'a:3:{i:0;s:10:\"ICICI BANK\";i:1;s:16:\"1234567890123456\";i:2;s:7:\"A485979\";}', 'developer', '', 'ANGPA182912', '85834857607giridhar-murthy-1.jpg', '1761onlineauction.doc', '11270Online Auction detailed design.docx', 'Active'),
(11, 0, 'Customer', '', 'Bharath', 'KA', 'IA', '2002-03-08', 'Male', 'Sahyadri road', 'Karnataka', '9874561230', 'bharathkl@technopulse.in', '123456789', 'a:3:{i:0;s:5:\"ICICI\";i:1;s:13:\"1234578901234\";i:2;s:10:\"ABJS234897\";}', 'developers', '', 'ANGPA122912', '1972127142Parag Khanna_Photo1 - PC Parag Khanna 1200x800.png', '16290Hydrangeas.jpg', '9267Jellyfish.jpg', 'Active'),
(12, 0, 'Customer', '', 'Aravinda', 'MV', 'Naik', '1986-08-02', 'Male', '3RD FLOOR, CITY LIGHT, MANGALORE', 'Karnataka', '9986044114', 'mvaravin1da@gmail.com', 'q1w2e3r4', 'a:3:{i:0;s:5:\"ICICI\";i:1;s:12:\"001401532424\";i:2;s:7:\"1532424\";}', 'WORKING AS SOFTWARE DEVELOPER', '', 'ANGPA4338Q', '135739942257155550_10157098180566797_5541158147198025728_o.jpg', '65630871PANCARD.jpg', '282216231ab.gif', 'Active'),
(13, 0, 'Company', 'Technopulse', '', '', '', '0000-00-00', '', '3rd floor, city light building, Balmatta cross', 'Karnataka', '7894561232', 'aravinda@technopulse.in', 'q1w2e3r4/', 'a:3:{i:0;s:11:\"Canara Bank\";i:1;s:16:\"1478523690123456\";i:2;s:7:\"IA29320\";}', 'Software company', '', 'ANGPA289829', '450681630technopulse.png', '109083493Hydrangeas.jpg', '779917847Koala.jpg', 'Active'),
(14, 0, 'Customer', '', 'Ankith', 'A', 'Kumar', '1988-05-04', 'Male', '', '', '9874563456', 'ankithkumar@gmail.com', '123456789', '', '', '', '', '1197462426download.jpg', '1832450199', '1274005004', 'Active'),
(15, 0, 'Customer', '', 'Ranjan', 'B', 'kumar', '1992-05-04', 'Male', '', '', '8796541230', 'ranjankumarb@gmail.com', 'q1w2e3r4', '', '', '', '', '1733800263main-qimg-46f663473bc10e5164a002e684f33b7e.jpg', '482651083', '1745029358', 'Active'),
(16, 0, 'Customer', '', 'Peter', 'K', 'A', '1986-05-04', 'Male', '3rd floor city lligh', 'Karnataka', '8899775566', 'peterka123@gmail.com', 'q1w2e3r4', 'a:3:{i:0;s:5:\"iccii\";i:1;s:8:\"32032039\";i:2;s:5:\"82323\";}', 'Developer', '', 'ANGPA43368', '1933406153800px_COLOURBOX5006496.jpg', '1135817557a-small-girl-and-grandmother-with-tablet-at-home-PTDQHPB.jpg', '1300748332spectrum.jpg', 'Active'),
(17, 0, 'Customer', '', 'Mahesh', 'Ram', 'K', '2002-08-30', 'Male', '3rd Floor,\r\nCity Light Building,\r\nMangalore', 'Karnataka', '9876543210', 'maheshramk@gmail.com', 'q1w2e3r4', 'a:3:{i:0;s:5:\"ICICI\";i:1;s:16:\"1123456789445211\";i:2;s:7:\"8282938\";}', 'DEVELOPER at infosys', '', 'ANGPA1553Q', '1962981090south-asian-or-a-mex.jpg', '234019612a-small-girl-and-grandmother-with-tablet-at-home-PTDQHPB.jpg', '1187722993spectrum.jpg', 'Active'),
(19, 0, 'Customer', '', 'Gautham', 'Kumar', 'A', '1987-05-04', 'Male', '', '', '9986558114', 'myacccounts@gmail.com', 'q1w2e3r4', '', '', '', '', '116140306817457-mayank-kumar.jpg', '1694251797', '1795590633', 'Active'),
(31, 0, 'Customer', '', 'Vinyas', 'Rai', 'V', '1986-05-04', 'Male', 'Shiva kripa,\r\nVidya nagar,\r\nPost Nehru nagar', 'Karnataka', '9982358114', 'mvaravinda@gmail.com', 'q1w2e3r4', 'a:3:{i:0;s:10:\"ICICI BANK\";i:1;s:12:\"001256325564\";i:2;s:4:\"A330\";}', 'Working as developer', '', 'ANGPA4338Q', '238532.jpg', '39809361WhatsApp Image 2020-05-20 at 12.26.48 PM.jpeg', '982148004spectrum.jpg', 'Active'),
(32, 0, 'Company', 'Nmart', '', '', '', '0000-00-00', '', '3rd floor,\r\nCity light building', 'Karnataka', '9126548112', 'nmart@gmail.com', 'q1w2e3r4', 'a:3:{i:0;s:10:\"ICICI Bank\";i:1;s:16:\"1234567890123456\";i:2;s:5:\"I9230\";}', 'As developer', '', 'ANDPA2938Q', '1065084581res-stills.jpg', '1390421041Project Synopsis.docx', '1198395956MMMMMMMMMM.docx', 'Active'),
(33, 0, 'Company', 'bPulse', '', '', '', '0000-00-00', '', '3rd floor,\r\nCity light building,\r\nMangalore', 'Karnataka', '9986058114', 'aravinda@gmail.com', 'q1w2e3r4', 'a:3:{i:0;s:10:\"IVIVI BANK\";i:1;s:16:\"7894561320154789\";i:2;s:5:\"I1253\";}', 'This is new job ', '', 'ANGOA2839Q', '60232887bPulse.jpg', '1988113247IMG_20200115_150257_426.jpg', '820630988spectrum.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `dpmt_delaypayment`
--

CREATE TABLE `dpmt_delaypayment` (
  `dpmt_id` int(10) NOT NULL,
  `dpmt_charge` double(10,2) NOT NULL,
  `dpmt_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dpmt_delaypayment`
--

INSERT INTO `dpmt_delaypayment` (`dpmt_id`, `dpmt_charge`, `dpmt_status`) VALUES
(7, 18.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `lacc_loanaccount`
--

CREATE TABLE `lacc_loanaccount` (
  `lacc_id` int(10) NOT NULL,
  `cst_id` int(11) NOT NULL,
  `lacc_no` varchar(50) NOT NULL,
  `comp_name` varchar(30) NOT NULL,
  `lacc_custname` varchar(50) NOT NULL,
  `lacc_swdof` varchar(30) NOT NULL,
  `lacc_dob` date NOT NULL,
  `lacc_pan` varchar(20) NOT NULL,
  `lacc_securityentry` text NOT NULL,
  `lacc_restype` varchar(25) NOT NULL,
  `lacc_resaddr` text NOT NULL,
  `lacc_compaddr` text NOT NULL,
  `lacc_permaddr` text NOT NULL,
  `lacc_gender` varchar(10) NOT NULL,
  `lacc_martialst` varchar(10) NOT NULL,
  `lacc_jobprofile` text NOT NULL,
  `lacc_education` varchar(25) NOT NULL,
  `lacc_ihave` text NOT NULL,
  `lacc_bankac` text NOT NULL,
  `lacc_loanamt` double(10,2) NOT NULL,
  `lacc_intrate` double(10,2) NOT NULL,
  `interest_amt` double NOT NULL,
  `lacc_tenor` text NOT NULL,
  `lacc_reference1` varchar(250) NOT NULL,
  `lacc_reference2` varchar(250) NOT NULL,
  `lacc_guarantor1` text NOT NULL,
  `lacc_guarantor2` text NOT NULL,
  `lacc_photo` varchar(100) NOT NULL,
  `lacc_idproof` varchar(100) NOT NULL,
  `lacc_adressproof` varchar(100) NOT NULL,
  `lacc_applicationdt` date NOT NULL,
  `lacc_opendt` date NOT NULL,
  `ltyp_id` int(10) NOT NULL,
  `ltyp_loantyp` varchar(50) NOT NULL,
  `lpf_id` int(10) NOT NULL,
  `lpf_amttype` varchar(25) NOT NULL,
  `lacc_ipfprocessingfee` double(10,2) NOT NULL,
  `lacc_remarks` text NOT NULL,
  `dpmt_charge` double(10,2) NOT NULL,
  `capture_pancard` text NOT NULL,
  `lacc_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lacc_loanaccount`
--

INSERT INTO `lacc_loanaccount` (`lacc_id`, `cst_id`, `lacc_no`, `comp_name`, `lacc_custname`, `lacc_swdof`, `lacc_dob`, `lacc_pan`, `lacc_securityentry`, `lacc_restype`, `lacc_resaddr`, `lacc_compaddr`, `lacc_permaddr`, `lacc_gender`, `lacc_martialst`, `lacc_jobprofile`, `lacc_education`, `lacc_ihave`, `lacc_bankac`, `lacc_loanamt`, `lacc_intrate`, `interest_amt`, `lacc_tenor`, `lacc_reference1`, `lacc_reference2`, `lacc_guarantor1`, `lacc_guarantor2`, `lacc_photo`, `lacc_idproof`, `lacc_adressproof`, `lacc_applicationdt`, `lacc_opendt`, `ltyp_id`, `ltyp_loantyp`, `lpf_id`, `lpf_amttype`, `lacc_ipfprocessingfee`, `lacc_remarks`, `dpmt_charge`, `capture_pancard`, `lacc_status`) VALUES
(5, 10, '', '', 'Raj kiran IA', '', '2021-02-01', '', '', '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0, '', '0', '0', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', 0, '', 0.00, '', 0.00, '', ''),
(6, 10, '', '', 'Raj kiran IA', '', '2021-02-01', '', '', '', '3rd floor, city light building, Karnataka', '', '', '', '', '', '', '', '', 0.00, 0.00, 0, '', '0', '0', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', 0, '', 0.00, '', 0.00, '', ''),
(7, 10, '', '', 'Raj kiran IA', '', '2021-02-01', '', '', '', '3rd floor, city light building, Karnataka', 'technopulse', '', '', '', '', '', '', '', 0.00, 0.00, 0, '', '0', '0', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', 0, '', 0.00, '', 0.00, '', ''),
(8, 10, '', '', 'Raj kiran IA', '', '2021-02-01', '', '', '', '3rd floor, city light building, Karnataka', 'technopulse', '3rd floor, city light building, Karnataka', 'Male', '', '', '', '', '', 0.00, 0.00, 0, '', '0', '0', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', 0, '', 0.00, '', 0.00, '', ''),
(9, 10, '', '', 'Raj kiran IA', '', '2021-02-01', '', '', '', '3rd floor, city light building, Karnataka', 'technopulse', '3rd floor, city light building, Karnataka', 'Male', '', 'a:4:{i:0;s:5:\"50000\";i:1;s:6:\"Cheque\";i:2;s:11:\"technopulse\";i:3;s:10:\"3-6 Months\";}', '', '', '', 0.00, 0.00, 0, '', '0', '0', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', 0, '', 0.00, '', 0.00, '', ''),
(10, 10, '', '', 'Raj kiran IA', '', '2021-02-01', '', '', '', '3rd floor, city light building, Karnataka', 'technopulse', '3rd floor, city light building, Karnataka', 'Male', '', 'a:4:{i:0;s:5:\"50000\";i:1;s:6:\"Cheque\";i:2;s:11:\"technopulse\";i:3;s:10:\"3-6 Months\";}', '', '', '', 25000.00, 0.00, 0, '', '0', '0', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', 0, '', 0.00, '', 0.00, '', ''),
(11, 10, '', '', 'Raj kiran IA', '', '2021-02-01', '', '', '', '3rd floor, city light building, Karnataka', 'technopulse', '3rd floor, city light building, Karnataka', 'Male', '', 'a:4:{i:0;s:5:\"50000\";i:1;s:6:\"Cheque\";i:2;s:11:\"technopulse\";i:3;s:10:\"3-6 Months\";}', '', '', '', 25000.00, 18.00, 0, '30', '0', '0', '', '', '', '', '', '0000-00-00', '0000-00-00', 0, '', 0, '', 0.00, '', 0.00, '', ''),
(13, 10, '#ML-200907-8', '', 'Raj kiran IA', '11', '2021-02-01', '', '', '', '3rd floor, city light building, Karnataka', 'technopulse', '3rd floor, city light building, Karnataka', 'Male', '', 'a:4:{i:0;s:5:\"50000\";i:1;s:6:\"Cheque\";i:2;s:11:\"technopulse\";i:3;s:10:\"3-6 Months\";}', '', '', '', 25000.00, 18.00, 11250, '30', '0', '0', '', '', '', '', '', '0000-00-00', '2020-09-07', 6, 'Business loan', 3, 'Flat', 500.00, '', 18.00, '', 'Active'),
(14, 10, '', '', 'Raj kiran IA', '', '2021-02-01', '', '', 'Owned by self/spouse', '3rd floor, city light building, Karnataka', 'technopulse', '3rd floor, city light building, Karnataka', 'Male', '', 'a:4:{i:0;s:5:\"50000\";i:1;s:6:\"Cheque\";i:2;s:11:\"technopulse\";i:3;s:10:\"3-6 Months\";}', '', '', '', 25000.00, 18.00, 11250, '30', '0', '0', '', '', '', '', '', '0000-00-00', '0000-00-00', 6, 'Business loan', 3, 'Flat', 500.00, '', 18.00, '', 'Approved'),
(15, 9, '', '', '  ', '', '0000-00-00', '', '', 'Owned by self/spouse', '3rd floor, city light building, karnataka', 'Aravinda', '3rd floor, city light building, karnataka', '', '', 'a:4:{i:0;s:5:\"50000\";i:1;s:4:\"Cash\";i:2;s:8:\"Aravinda\";i:3;s:10:\"3-6 Months\";}', '', '', '', 25000.00, 24.00, 12000, '24', '0', '0', '', '', '', '', '', '0000-00-00', '0000-00-00', 4, 'Personal Loan', 3, 'Flat', 500.00, '', 18.00, '', 'Approved'),
(16, 9, '', '', '  ', '', '0000-00-00', '', '', 'Owned by self/spouse', '3rd floor, city light building, karnataka', 'Aravinda', '3rd floor, city light building, karnataka', '', '', 'a:4:{i:0;s:5:\"50000\";i:1;s:4:\"Cash\";i:2;s:8:\"Aravinda\";i:3;s:10:\"3-6 Months\";}', '', '', '', 25000.00, 24.00, 12000, '24', '0', '0', '', '', '', '', '', '0000-00-00', '0000-00-00', 4, 'Personal Loan', 3, 'Flat', 500.00, '', 18.00, '', 'Approved'),
(17, 9, '', '', '  ', '', '0000-00-00', '', '', 'Owned by self/spouse', '3rd floor, city light building, karnataka', 'Aravinda', '3rd floor, city light building, karnataka', '', '', 'a:4:{i:0;s:5:\"50000\";i:1;s:4:\"Cash\";i:2;s:8:\"Aravinda\";i:3;s:10:\"3-6 Months\";}', '', '', '', 25000.00, 24.00, 0, '24', '0', '0', '', '', '', '', '', '0000-00-00', '0000-00-00', 4, 'Personal Loan', 0, '', 0.00, '', 0.00, '', 'Pending'),
(18, 9, '', 'techn opulse', '  ', '', '0000-00-00', '', '', 'Owned by self/spouse', '3rd floor, city light building, karnataka', 'Aravinda', '3rd floor, city light building, karnataka', '', '', 'a:4:{i:0;s:5:\"50000\";i:1;s:4:\"Cash\";i:2;s:8:\"Aravinda\";i:3;s:10:\"3-6 Months\";}', '', '', '', 25000.00, 24.00, 0, '24', '0', '0', '', '', '', '', '', '0000-00-00', '0000-00-00', 4, 'Personal Loan', 0, '', 0.00, '', 0.00, '', 'Pending'),
(28, 8, '', '', 'Aravinda MV IA', '', '2003-12-31', 'ANGPA182912', '', 'Rented- With family', 'a:4:{i:0;s:30:\"3rd floor, city light building\";i:1;s:8:\"Karnatak\";i:2;s:11:\"78945614230\";i:3;s:15:\"suraj@gmail.com\";}', 'Aravinda', 'a:4:{i:0;s:30:\"3rd floor, city light building\";i:1;s:8:\"Karnatak\";i:2;s:11:\"78945614230\";i:3;s:15:\"suraj@gmail.com\";}', 'Male', '', 'a:4:{i:0;s:5:\"25000\";i:1;s:6:\"Cheque\";i:2;s:8:\"Aravinda\";i:3;s:9:\"1-2 Years\";}', '', '', '', 175000.00, 24.00, 0, '24', '0', '0', '', '', '12740hotel.jpg', '26575Automation Studio.docx', '16263Integration Testing.docx', '2020-03-14', '0000-00-00', 4, 'Personal Loan', 0, '', 0.00, '', 0.00, '', 'Pending'),
(29, 8, '', '', 'Aravinda MV IA', '', '2003-12-31', 'ANGPA182912', '', 'Owned by parents/sibling', 'a:4:{i:0;s:30:\"3rd floor, city light building\";i:1;s:8:\"Karnatak\";i:2;s:11:\"78945614230\";i:3;s:15:\"suraj@gmail.com\";}', 'Aravinda', 'a:4:{i:0;s:30:\"3rd floor, city light building\";i:1;s:8:\"Karnatak\";i:2;s:11:\"78945614230\";i:3;s:15:\"suraj@gmail.com\";}', 'Male', '', 'a:4:{i:0;s:5:\"50000\";i:1;s:6:\"Cheque\";i:2;s:8:\"Aravinda\";i:3;s:11:\"6-12 Months\";}', '', '', '', 25000.00, 8.00, 0, '6', '0', '0', '', '', '12740hotel.jpg', '26575Automation Studio.docx', '16263Integration Testing.docx', '2020-03-14', '0000-00-00', 5, 'Gold Loan', 0, '', 0.00, '', 0.00, '', 'Pending'),
(30, 10, '', '', 'Raj kiran IA', '', '2021-02-01', '', '', 'Owned by parents/sibling', 'a:4:{i:0;s:30:\"3rd floor, city light building\";i:1;s:9:\"Karnataka\";i:2;s:10:\"7894561230\";i:3;s:23:\"aravinda@technopulse.in\";}', 'icici', 'a:4:{i:0;s:30:\"3rd floor, city light building\";i:1;s:9:\"Karnataka\";i:2;s:10:\"7894561230\";i:3;s:23:\"aravinda@technopulse.in\";}', 'Male', '', 'a:4:{i:0;s:5:\"50000\";i:1;s:6:\"Cheque\";i:2;s:5:\"icici\";i:3;s:11:\"6-12 Months\";}', '', '', '', 50000.00, 24.00, 0, '24', '0', '0', '', '', '238532.jpg', '1761onlineauction.doc', '11270Online Auction detailed design.docx', '2020-03-20', '0000-00-00', 4, 'Personal Loan', 0, '', 0.00, '', 0.00, '', 'Pending'),
(31, 11, '', '', 'Bharath K IA', '', '2002-03-08', 'ANGPA122912', '', 'Owned by self/spouse', 'a:4:{i:0;s:13:\"Sahyadri road\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9874561230\";i:3;s:24:\"bharathkl@technopulse.in\";}', 'icici', 'a:4:{i:0;s:13:\"Sahyadri road\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9874561230\";i:3;s:24:\"bharathkl@technopulse.in\";}', 'Male', '', 'a:4:{i:0;s:5:\"25000\";i:1;s:4:\"Cash\";i:2;s:5:\"icici\";i:3;s:11:\"6-12 Months\";}', '', '', '', 500000.00, 24.00, 0, '24', '0', '0', '', '', '8944Tulips.jpg', '16290Hydrangeas.jpg', '9267Jellyfish.jpg', '2020-03-20', '0000-00-00', 4, 'Personal Loan', 0, '', 0.00, '', 0.00, '', 'Pending'),
(32, 12, '', '', 'Aravinda MV Naik', 'M V Naik', '1986-08-02', 'ANGPA4338Q', 'SSLC Mark sheet', 'Owned by self/spouse', 'a:4:{i:0;s:32:\"3RD FLOOR, CITY LIGHT, MANGALORE\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'technopulse', 'a:4:{i:0;s:32:\"3RD FLOOR, CITY LIGHT, MANGALORE\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'Male', 'Married', 'a:4:{i:0;s:5:\"35000\";i:1;s:13:\"Bank Transfer\";i:2;s:11:\"technopulse\";i:3;s:8:\"5+ Years\";}', '', 'In federal bank on fd', '', 200000.00, 14.00, 0, '30', 'Madhesh kuamr', 'perkson', 'Reeta', 'Meena', '135739942257155550_10157098180566797_5541158147198025728_o.jpg', '65630871PANCARD.jpg', '282216231ab.gif', '2020-08-31', '0000-00-00', 8, 'Education loan', 0, '', 0.00, 'New account', 0.00, '', 'Rejected'),
(33, 16, '#ML-2009-2', '', 'Peter K A', 'Prathik', '1986-05-04', 'ANGPA43368', 'Documents', 'Owned by self/spouse', 'a:4:{i:0;s:20:\"3rd floor city lligh\";i:1;s:9:\"Karnataka\";i:2;s:10:\"8899775566\";i:3;s:20:\"peterka123@gmail.com\";}', 'Technopulse', 'a:4:{i:0;s:20:\"3rd floor city lligh\";i:1;s:9:\"Karnataka\";i:2;s:10:\"8899775566\";i:3;s:20:\"peterka123@gmail.com\";}', 'Male', 'Married', 'a:4:{i:0;s:5:\"10000\";i:1;s:6:\"Cheque\";i:2;s:11:\"Technopulse\";i:3;s:10:\"3-6 Months\";}', '', 'No loan accounts', '', 20000.00, 30.00, 500, '1', 'Raj', 'kiran', 'Asha', 'Kanchana', '1933406153800px_COLOURBOX5006496.jpg', '1135817557a-small-girl-and-grandmother-with-tablet-at-home-PTDQHPB.jpg', '1300748332spectrum.jpg', '2020-09-02', '2015-09-01', 5, 'Payday Loans', 3, 'Flat', 500.00, '', 24.00, '', 'Active'),
(34, 12, '', '', 'Aravinda MV Naik', 'M V Naik', '1986-08-02', 'ANGPA4338Q', 'SSLC', 'Owned by self/spouse', 'a:4:{i:0;s:32:\"3RD FLOOR, CITY LIGHT, MANGALORE\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'ibc', 'a:4:{i:0;s:32:\"3RD FLOOR, CITY LIGHT, MANGALORE\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'Male', 'Married', 'a:4:{i:0;s:5:\"10000\";i:1;s:6:\"Cheque\";i:2;s:3:\"ibc\";i:3;s:10:\"0-3 Months\";}', '', 'No ac', '', 50000.00, 15.00, 9375, '30', 'Raj', 'kiran', 'mahsh', 'nida', '135739942257155550_10157098180566797_5541158147198025728_o.jpg', '65630871PANCARD.jpg', '282216231ab.gif', '2020-09-02', '0000-00-00', 9, 'Vehicle Loan', 3, 'Flat', 500.00, 'For new account', 24.00, '', 'Declined'),
(35, 12, '', '', 'Aravinda MV Naik', '', '1986-08-02', 'ANGPA4338Q', '', '', 'a:4:{i:0;s:32:\"3RD FLOOR, CITY LIGHT, MANGALORE\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', '', 'a:4:{i:0;s:32:\"3RD FLOOR, CITY LIGHT, MANGALORE\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'Male', '', 'a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}', '', '', '', 99999999.99, 12.00, 0, '24', '', '', '', '', '135739942257155550_10157098180566797_5541158147198025728_o.jpg', '65630871PANCARD.jpg', '282216231ab.gif', '2020-09-02', '0000-00-00', 4, 'Personal Loan', 0, '', 0.00, '', 0.00, '', 'Pending'),
(36, 12, '', '', 'Aravinda MV Naik', '', '1986-08-02', 'ANGPA4338Q', '', '', 'a:4:{i:0;s:32:\"3RD FLOOR, CITY LIGHT, MANGALORE\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', '', 'a:4:{i:0;s:32:\"3RD FLOOR, CITY LIGHT, MANGALORE\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'Male', '', 'a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}', '', '', '', 99999999.99, 12.00, 0, '24', '', '', '', '', '135739942257155550_10157098180566797_5541158147198025728_o.jpg', '65630871PANCARD.jpg', '282216231ab.gif', '2020-09-02', '0000-00-00', 4, 'Personal Loan', 0, '', 0.00, '', 0.00, '', 'Pending'),
(37, 12, '#ML-2009-1', '', 'Aravinda MV Naik', 'M V Naik', '1986-08-02', 'ANGPA4338Q', 'Land document', 'Owned by parents/sibling', 'a:4:{i:0;s:32:\"3RD FLOOR, CITY LIGHT, MANGALORE\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'Technopulse', 'a:4:{i:0;s:32:\"3RD FLOOR, CITY LIGHT, MANGALORE\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'Male', 'Married', 'a:4:{i:0;s:5:\"35000\";i:1;s:6:\"Cheque\";i:2;s:11:\"Technopulse\";i:3;s:10:\"0-3 Months\";}', '', 'No loan accounts', '', 250000.00, 12.00, 60000, '24', 'Ram', 'kiran', 'ajay', 'kiran', '135739942257155550_10157098180566797_5541158147198025728_o.jpg', '65630871PANCARD.jpg', '282216231ab.gif', '2020-09-02', '2020-09-02', 4, 'Personal Loan', 4, 'Percentage', 12500.00, '', 24.00, '', 'Active'),
(38, 17, '#ML-200903-1', '', 'Mahesh Ram K', 'Pratham', '2002-08-30', 'ANGPA1553Q', 'Land document', 'Owned by self/spouse', 'a:4:{i:0;s:43:\"3rd Floor,\r\nCity Light Building,\r\nMangalore\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9876543210\";i:3;s:20:\"maheshramk@gmail.com\";}', 'Techno', 'a:4:{i:0;s:43:\"3rd Floor,\r\nCity Light Building,\r\nMangalore\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9876543210\";i:3;s:20:\"maheshramk@gmail.com\";}', 'Male', 'Married', 'a:4:{i:0;s:5:\"50000\";i:1;s:4:\"Cash\";i:2;s:6:\"Techno\";i:3;s:9:\"2-3 Years\";}', '', 'No loan accounts', '', 250000.00, 18.00, 112500, '30', 'Raj', 'kiran', 'Aditya', 'Peter', '1962981090south-asian-or-a-mex.jpg', '234019612a-small-girl-and-grandmother-with-tablet-at-home-PTDQHPB.jpg', '1187722993spectrum.jpg', '2020-09-03', '2020-09-03', 6, 'Business loan', 4, 'Percentage', 12500.00, '', 18.00, '', 'Active'),
(39, 17, '#ML-200103-1', '', 'Mahesh Ram K', 'M V Naik', '2002-08-30', 'ANGPA1553Q', '', 'Owned by self/spouse', 'a:4:{i:0;s:43:\"3rd Floor,\r\nCity Light Building,\r\nMangalore\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9876543210\";i:3;s:20:\"maheshramk@gmail.com\";}', 'Telsa', 'a:4:{i:0;s:43:\"3rd Floor,\r\nCity Light Building,\r\nMangalore\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9876543210\";i:3;s:20:\"maheshramk@gmail.com\";}', 'Male', '', 'a:4:{i:0;s:5:\"25000\";i:1;s:13:\"Bank Transfer\";i:2;s:5:\"Telsa\";i:3;s:11:\"6-12 Months\";}', '', '', '', 75000.00, 15.00, 28125, '30', '', '', '', '', '1962981090south-asian-or-a-mex.jpg', '234019612a-small-girl-and-grandmother-with-tablet-at-home-PTDQHPB.jpg', '1187722993spectrum.jpg', '2020-01-03', '2020-01-03', 9, 'Vehicle Loan', 3, 'Flat', 500.00, '', 18.00, '', 'Active'),
(41, 31, '#ML-200907-7', '', 'Aravinda M V', '', '1986-05-04', 'ANGPA4338Q', '', 'Owned by parents/sibling', 'a:4:{i:0;s:44:\"Shiva kripa,\r\nVidya nagar,\r\nPost Nehru nagar\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'Technopulse', 'a:4:{i:0;s:44:\"Shiva kripa,\r\nVidya nagar,\r\nPost Nehru nagar\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'Male', '', 'a:4:{i:0;s:5:\"10000\";i:1;s:6:\"Cheque\";i:2;s:11:\"Technopulse\";i:3;s:10:\"3-6 Months\";}', '', '', '', 20000.00, 30.00, 500, '1', '', '', '', '', '207476148417457-mayank-kumar.jpg', '39809361WhatsApp Image 2020-05-20 at 12.26.48 PM.jpeg', '982148004spectrum.jpg', '2020-09-07', '2020-09-07', 5, 'Payday Loans', 3, 'Flat', 500.00, '', 18.00, '', 'Active'),
(42, 31, '#ML-200907-6', '', 'Aravinda M V', '', '1986-05-04', 'ANGPA4338Q', '', 'Owned by parents/sibling', 'a:4:{i:0;s:44:\"Shiva kripa,\r\nVidya nagar,\r\nPost Nehru nagar\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'Technopulse', 'a:4:{i:0;s:44:\"Shiva kripa,\r\nVidya nagar,\r\nPost Nehru nagar\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'Male', '', 'a:4:{i:0;s:5:\"25000\";i:1;s:4:\"Cash\";i:2;s:11:\"Technopulse\";i:3;s:10:\"3-6 Months\";}', '', '', '', 50000.00, 12.00, 12000, '24', '', '', '', '', '207476148417457-mayank-kumar.jpg', '39809361WhatsApp Image 2020-05-20 at 12.26.48 PM.jpeg', '982148004spectrum.jpg', '2020-09-07', '2020-09-07', 4, 'Personal Loan', 3, 'Flat', 500.00, '', 18.00, '', 'Active'),
(43, 31, '#ML-200907-5', '', 'Aravinda M V', 'M V Naik', '1986-05-04', 'ANGPA4338Q', 'Land Document', 'Owned by self/spouse', 'a:4:{i:0;s:44:\"Shiva kripa,\r\nVidya nagar,\r\nPost Nehru nagar\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'Technopulse', 'a:4:{i:0;s:44:\"Shiva kripa,\r\nVidya nagar,\r\nPost Nehru nagar\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:20:\"mvaravinda@gmail.com\";}', 'Male', 'Married', 'a:4:{i:0;s:5:\"10000\";i:1;s:13:\"Bank Transfer\";i:2;s:11:\"Technopulse\";i:3;s:9:\"2-3 Years\";}', '', '', '', 250000.00, 18.00, 112500, '30', '', '', '', '', '207476148417457-mayank-kumar.jpg', '39809361WhatsApp Image 2020-05-20 at 12.26.48 PM.jpeg', '982148004spectrum.jpg', '2020-09-07', '2020-09-07', 6, 'Business loan', 4, 'Percentage', 12500.00, '', 18.00, '', 'Active'),
(44, 10, '', '', 'Raj kiran IA', '', '2006-02-01', 'ANGPA182912', '', 'Owned by parents/sibling', 'a:4:{i:0;s:30:\"3rd floor, city light building\";i:1;s:9:\"Karnataka\";i:2;s:10:\"7894561230\";i:3;s:26:\"aravinda123@technopulse.in\";}', 'Technopulse', 'a:4:{i:0;s:30:\"3rd floor, city light building\";i:1;s:9:\"Karnataka\";i:2;s:10:\"7894561230\";i:3;s:26:\"aravinda123@technopulse.in\";}', 'Male', '', 'a:4:{i:0;s:5:\"10000\";i:1;s:4:\"Cash\";i:2;s:11:\"Technopulse\";i:3;s:11:\"6-12 Months\";}', '', '', '', 20000.00, 12.00, 0, '24', '', '', '', '', '85834857607giridhar-murthy-1.jpg', '1761onlineauction.doc', '11270Online Auction detailed design.docx', '2020-09-07', '0000-00-00', 4, 'Personal Loan', 0, '', 0.00, '', 0.00, '', 'Pending'),
(45, 33, '#ML-200601-9', 'bPulse', '  ', '', '0000-00-00', '', 'Land document', 'Owned by parents/sibling', 'a:4:{i:0;s:43:\"3rd floor,\r\nCity light building,\r\nMangalore\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:18:\"aravinda@gmail.com\";}', 'BPlus', 'a:4:{i:0;s:43:\"3rd floor,\r\nCity light building,\r\nMangalore\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:18:\"aravinda@gmail.com\";}', '', '', 'a:4:{i:0;s:5:\"50000\";i:1;s:4:\"Cash\";i:2;s:5:\"BPlus\";i:3;s:10:\"0-3 Months\";}', '', 'No loan accounts', '', 250000.00, 12.00, 60000, '24', 'Raj', 'Ajay', 'Bharath', 'Kiran', '60232887bPulse.jpg', '1988113247IMG_20200115_150257_426.jpg', '820630988spectrum.jpg', '2020-06-10', '2020-06-01', 4, 'Personal Loan', 4, 'Percentage', 12500.00, '', 18.00, '', 'Closed'),
(46, 33, '#ML-200910-9', 'bPulse', '  ', '', '0000-00-00', '', '', 'Owned by parents/sibling', 'a:4:{i:0;s:43:\"3rd floor,\r\nCity light building,\r\nMangalore\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:18:\"aravinda@gmail.com\";}', 'Technopulse', 'a:4:{i:0;s:43:\"3rd floor,\r\nCity light building,\r\nMangalore\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:18:\"aravinda@gmail.com\";}', '', '', 'a:4:{i:0;s:5:\"10000\";i:1;s:4:\"Cash\";i:2;s:11:\"Technopulse\";i:3;s:11:\"6-12 Months\";}', '', '', '', 75000.00, 15.00, 28125, '30', '', '', '', '', '60232887bPulse.jpg', '1988113247IMG_20200115_150257_426.jpg', '820630988spectrum.jpg', '2020-09-10', '2020-09-10', 9, 'Vehicle Loan', 3, 'Flat', 500.00, '', 18.00, '', 'Closed'),
(47, 33, '#ML-200910-9', 'bPulse', '  ', '', '0000-00-00', '', '', 'Owned by self/spouse', 'a:4:{i:0;s:43:\"3rd floor,\r\nCity light building,\r\nMangalore\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:18:\"aravinda@gmail.com\";}', 'Technopulse', 'a:4:{i:0;s:43:\"3rd floor,\r\nCity light building,\r\nMangalore\";i:1;s:9:\"Karnataka\";i:2;s:10:\"9986058114\";i:3;s:18:\"aravinda@gmail.com\";}', '', '', 'a:4:{i:0;s:5:\"10000\";i:1;s:6:\"Cheque\";i:2;s:11:\"Technopulse\";i:3;s:9:\"3-5 Years\";}', '', '', '', 25000.00, 12.00, 6000, '24', '', '', '', '', '60232887bPulse.jpg', '1988113247IMG_20200115_150257_426.jpg', '820630988spectrum.jpg', '2020-09-10', '2020-09-10', 4, 'Personal Loan', 3, 'Flat', 500.00, '', 18.00, '', 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `lins_loaninstallment`
--

CREATE TABLE `lins_loaninstallment` (
  `lins_id` bigint(10) NOT NULL,
  `lacc_id` int(10) NOT NULL,
  `lins_no` int(10) NOT NULL,
  `lins_date` date NOT NULL,
  `lins_amt` double(20,2) NOT NULL,
  `lins_iperc` double NOT NULL,
  `lins_iamt` double(20,2) NOT NULL,
  `lins_chqno` varchar(25) NOT NULL,
  `lins_note` text NOT NULL,
  `lins_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lins_loaninstallment`
--

INSERT INTO `lins_loaninstallment` (`lins_id`, `lacc_id`, `lins_no`, `lins_date`, `lins_amt`, `lins_iperc`, `lins_iamt`, `lins_chqno`, `lins_note`, `lins_status`) VALUES
(242, 37, 1, '2020-10-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(243, 37, 2, '2020-11-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(244, 37, 3, '2020-12-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(245, 37, 4, '2021-01-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(246, 37, 5, '2021-02-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(247, 37, 6, '2021-03-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(248, 37, 7, '2021-04-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(249, 37, 8, '2021-05-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(250, 37, 9, '2021-06-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(251, 37, 10, '2021-07-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(252, 37, 11, '2021-08-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(253, 37, 12, '2021-09-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(254, 37, 13, '2021-10-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(255, 37, 14, '2021-11-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(256, 37, 15, '2021-12-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(257, 37, 16, '2022-01-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(258, 37, 17, '2022-02-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(259, 37, 18, '2022-03-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(260, 37, 19, '2022-04-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(261, 37, 20, '2022-05-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(262, 37, 21, '2022-06-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(263, 37, 22, '2022-07-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(264, 37, 23, '2022-08-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(265, 37, 24, '2022-09-02', 10416.67, 12, 2500.00, '', '', 'Active'),
(266, 38, 1, '2020-10-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(267, 38, 2, '2020-11-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(268, 38, 3, '2020-12-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(269, 38, 4, '2021-01-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(270, 38, 5, '2021-02-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(271, 38, 6, '2021-03-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(272, 38, 7, '2021-04-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(273, 38, 8, '2021-05-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(274, 38, 9, '2021-06-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(275, 38, 10, '2021-07-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(276, 38, 11, '2021-08-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(277, 38, 12, '2021-09-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(278, 38, 13, '2021-10-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(279, 38, 14, '2021-11-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(280, 38, 15, '2021-12-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(281, 38, 16, '2022-01-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(282, 38, 17, '2022-02-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(283, 38, 18, '2022-03-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(284, 38, 19, '2022-04-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(285, 38, 20, '2022-05-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(286, 38, 21, '2022-06-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(287, 38, 22, '2022-07-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(288, 38, 23, '2022-08-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(289, 38, 24, '2022-09-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(290, 38, 25, '2022-10-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(291, 38, 26, '2022-11-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(292, 38, 27, '2022-12-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(293, 38, 28, '2023-01-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(294, 38, 29, '2023-02-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(295, 38, 30, '2023-03-03', 8333.33, 18, 3750.00, '', '', 'Active'),
(296, 39, 1, '2020-02-03', 2500.00, 15, 937.50, '', '', 'Active'),
(297, 39, 2, '2020-03-03', 2500.00, 15, 937.50, '', '', 'Active'),
(298, 39, 3, '2020-04-03', 2500.00, 15, 937.50, '', '', 'Active'),
(299, 39, 4, '2020-05-03', 2500.00, 15, 937.50, '', '', 'Active'),
(300, 39, 5, '2020-06-03', 2500.00, 15, 937.50, '', '', 'Active'),
(301, 39, 6, '2020-07-03', 2500.00, 15, 937.50, '', '', 'Active'),
(302, 39, 7, '2020-08-03', 2500.00, 15, 937.50, '', '', 'Active'),
(303, 39, 8, '2020-09-03', 2500.00, 15, 937.50, '', '', 'Active'),
(304, 39, 9, '2020-10-03', 2500.00, 15, 937.50, '', '', 'Active'),
(305, 39, 10, '2020-11-03', 2500.00, 15, 937.50, '', '', 'Active'),
(306, 39, 11, '2020-12-03', 2500.00, 15, 937.50, '', '', 'Active'),
(307, 39, 12, '2021-01-03', 2500.00, 15, 937.50, '', '', 'Active'),
(308, 39, 13, '2021-02-03', 2500.00, 15, 937.50, '', '', 'Active'),
(309, 39, 14, '2021-03-03', 2500.00, 15, 937.50, '', '', 'Active'),
(310, 39, 15, '2021-04-03', 2500.00, 15, 937.50, '', '', 'Active'),
(311, 39, 16, '2021-05-03', 2500.00, 15, 937.50, '', '', 'Active'),
(312, 39, 17, '2021-06-03', 2500.00, 15, 937.50, '', '', 'Active'),
(313, 39, 18, '2021-07-03', 2500.00, 15, 937.50, '', '', 'Active'),
(314, 39, 19, '2021-08-03', 2500.00, 15, 937.50, '', '', 'Active'),
(315, 39, 20, '2021-09-03', 2500.00, 15, 937.50, '', '', 'Active'),
(316, 39, 21, '2021-10-03', 2500.00, 15, 937.50, '', '', 'Active'),
(317, 39, 22, '2021-11-03', 2500.00, 15, 937.50, '', '', 'Active'),
(318, 39, 23, '2021-12-03', 2500.00, 15, 937.50, '', '', 'Active'),
(319, 39, 24, '2022-01-03', 2500.00, 15, 937.50, '', '', 'Active'),
(320, 39, 25, '2022-02-03', 2500.00, 15, 937.50, '', '', 'Active'),
(321, 39, 26, '2022-03-03', 2500.00, 15, 937.50, '', '', 'Active'),
(322, 39, 27, '2022-04-03', 2500.00, 15, 937.50, '', '', 'Active'),
(323, 39, 28, '2022-05-03', 2500.00, 15, 937.50, '', '', 'Active'),
(324, 39, 29, '2022-06-03', 2500.00, 15, 937.50, '', '', 'Active'),
(325, 39, 30, '2022-07-03', 2500.00, 15, 937.50, '', '', 'Active'),
(326, 43, 1, '2020-10-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(327, 43, 2, '2020-11-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(328, 43, 3, '2020-12-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(329, 43, 4, '2021-01-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(330, 43, 5, '2021-02-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(331, 43, 6, '2021-03-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(332, 43, 7, '2021-04-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(333, 43, 8, '2021-05-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(334, 43, 9, '2021-06-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(335, 43, 10, '2021-07-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(336, 43, 11, '2021-08-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(337, 43, 12, '2021-09-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(338, 43, 13, '2021-10-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(339, 43, 14, '2021-11-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(340, 43, 15, '2021-12-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(341, 43, 16, '2022-01-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(342, 43, 17, '2022-02-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(343, 43, 18, '2022-03-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(344, 43, 19, '2022-04-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(345, 43, 20, '2022-05-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(346, 43, 21, '2022-06-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(347, 43, 22, '2022-07-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(348, 43, 23, '2022-08-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(349, 43, 24, '2022-09-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(350, 43, 25, '2022-10-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(351, 43, 26, '2022-11-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(352, 43, 27, '2022-12-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(353, 43, 28, '2023-01-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(354, 43, 29, '2023-02-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(355, 43, 30, '2023-03-07', 8333.33, 18, 3750.00, '', '', 'Active'),
(356, 42, 1, '2020-10-07', 2083.33, 12, 500.00, '', '', 'Active'),
(357, 42, 2, '2020-11-07', 2083.33, 12, 500.00, '', '', 'Active'),
(358, 42, 3, '2020-12-07', 2083.33, 12, 500.00, '', '', 'Active'),
(359, 42, 4, '2021-01-07', 2083.33, 12, 500.00, '', '', 'Active'),
(360, 42, 5, '2021-02-07', 2083.33, 12, 500.00, '', '', 'Active'),
(361, 42, 6, '2021-03-07', 2083.33, 12, 500.00, '', '', 'Active'),
(362, 42, 7, '2021-04-07', 2083.33, 12, 500.00, '', '', 'Active'),
(363, 42, 8, '2021-05-07', 2083.33, 12, 500.00, '', '', 'Active'),
(364, 42, 9, '2021-06-07', 2083.33, 12, 500.00, '', '', 'Active'),
(365, 42, 10, '2021-07-07', 2083.33, 12, 500.00, '', '', 'Active'),
(366, 42, 11, '2021-08-07', 2083.33, 12, 500.00, '', '', 'Active'),
(367, 42, 12, '2021-09-07', 2083.33, 12, 500.00, '', '', 'Active'),
(368, 42, 13, '2021-10-07', 2083.33, 12, 500.00, '', '', 'Active'),
(369, 42, 14, '2021-11-07', 2083.33, 12, 500.00, '', '', 'Active'),
(370, 42, 15, '2021-12-07', 2083.33, 12, 500.00, '', '', 'Active'),
(371, 42, 16, '2022-01-07', 2083.33, 12, 500.00, '', '', 'Active'),
(372, 42, 17, '2022-02-07', 2083.33, 12, 500.00, '', '', 'Active'),
(373, 42, 18, '2022-03-07', 2083.33, 12, 500.00, '', '', 'Active'),
(374, 42, 19, '2022-04-07', 2083.33, 12, 500.00, '', '', 'Active'),
(375, 42, 20, '2022-05-07', 2083.33, 12, 500.00, '', '', 'Active'),
(376, 42, 21, '2022-06-07', 2083.33, 12, 500.00, '', '', 'Active'),
(377, 42, 22, '2022-07-07', 2083.33, 12, 500.00, '', '', 'Active'),
(378, 42, 23, '2022-08-07', 2083.33, 12, 500.00, '', '', 'Active'),
(379, 42, 24, '2022-09-07', 2083.33, 12, 500.00, '', '', 'Active'),
(380, 41, 1, '2020-10-07', 20000.00, 30, 500.00, '', '', 'Active'),
(381, 13, 1, '2020-10-07', 833.33, 18, 375.00, '', '', 'Active'),
(382, 13, 2, '2020-11-07', 833.33, 18, 375.00, '', '', 'Active'),
(383, 13, 3, '2020-12-07', 833.33, 18, 375.00, '', '', 'Active'),
(384, 13, 4, '2021-01-07', 833.33, 18, 375.00, '', '', 'Active'),
(385, 13, 5, '2021-02-07', 833.33, 18, 375.00, '', '', 'Active'),
(386, 13, 6, '2021-03-07', 833.33, 18, 375.00, '', '', 'Active'),
(387, 13, 7, '2021-04-07', 833.33, 18, 375.00, '', '', 'Active'),
(388, 13, 8, '2021-05-07', 833.33, 18, 375.00, '', '', 'Active'),
(389, 13, 9, '2021-06-07', 833.33, 18, 375.00, '', '', 'Active'),
(390, 13, 10, '2021-07-07', 833.33, 18, 375.00, '', '', 'Active'),
(391, 13, 11, '2021-08-07', 833.33, 18, 375.00, '', '', 'Active'),
(392, 13, 12, '2021-09-07', 833.33, 18, 375.00, '', '', 'Active'),
(393, 13, 13, '2021-10-07', 833.33, 18, 375.00, '', '', 'Active'),
(394, 13, 14, '2021-11-07', 833.33, 18, 375.00, '', '', 'Active'),
(395, 13, 15, '2021-12-07', 833.33, 18, 375.00, '', '', 'Active'),
(396, 13, 16, '2022-01-07', 833.33, 18, 375.00, '', '', 'Active'),
(397, 13, 17, '2022-02-07', 833.33, 18, 375.00, '', '', 'Active'),
(398, 13, 18, '2022-03-07', 833.33, 18, 375.00, '', '', 'Active'),
(399, 13, 19, '2022-04-07', 833.33, 18, 375.00, '', '', 'Active'),
(400, 13, 20, '2022-05-07', 833.33, 18, 375.00, '', '', 'Active'),
(401, 13, 21, '2022-06-07', 833.33, 18, 375.00, '', '', 'Active'),
(402, 13, 22, '2022-07-07', 833.33, 18, 375.00, '', '', 'Active'),
(403, 13, 23, '2022-08-07', 833.33, 18, 375.00, '', '', 'Active'),
(404, 13, 24, '2022-09-07', 833.33, 18, 375.00, '', '', 'Active'),
(405, 13, 25, '2022-10-07', 833.33, 18, 375.00, '', '', 'Active'),
(406, 13, 26, '2022-11-07', 833.33, 18, 375.00, '', '', 'Active'),
(407, 13, 27, '2022-12-07', 833.33, 18, 375.00, '', '', 'Active'),
(408, 13, 28, '2023-01-07', 833.33, 18, 375.00, '', '', 'Active'),
(409, 13, 29, '2023-02-07', 833.33, 18, 375.00, '', '', 'Active'),
(410, 13, 30, '2023-03-07', 833.33, 18, 375.00, '', '', 'Active'),
(411, 45, 1, '2020-07-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(412, 45, 2, '2020-08-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(413, 45, 3, '2020-09-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(414, 45, 4, '2020-10-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(415, 45, 5, '2020-11-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(416, 45, 6, '2020-12-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(417, 45, 7, '2021-01-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(418, 45, 8, '2021-02-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(419, 45, 9, '2021-03-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(420, 45, 10, '2021-04-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(421, 45, 11, '2021-05-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(422, 45, 12, '2021-06-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(423, 45, 13, '2021-07-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(424, 45, 14, '2021-08-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(425, 45, 15, '2021-09-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(426, 45, 16, '2021-10-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(427, 45, 17, '2021-11-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(428, 45, 18, '2021-12-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(429, 45, 19, '2022-01-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(430, 45, 20, '2022-02-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(431, 45, 21, '2022-03-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(432, 45, 22, '2022-04-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(433, 45, 23, '2022-05-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(434, 45, 24, '2022-06-01', 10416.67, 12, 2500.00, '', '', 'Active'),
(435, 46, 1, '2020-10-10', 2500.00, 15, 937.50, '', '', 'Active'),
(436, 46, 2, '2020-11-10', 2500.00, 15, 937.50, '', '', 'Active'),
(437, 46, 3, '2020-12-10', 2500.00, 15, 937.50, '', '', 'Active'),
(438, 46, 4, '2021-01-10', 2500.00, 15, 937.50, '', '', 'Active'),
(439, 46, 5, '2021-02-10', 2500.00, 15, 937.50, '', '', 'Active'),
(440, 46, 6, '2021-03-10', 2500.00, 15, 937.50, '', '', 'Active'),
(441, 46, 7, '2021-04-10', 2500.00, 15, 937.50, '', '', 'Active'),
(442, 46, 8, '2021-05-10', 2500.00, 15, 937.50, '', '', 'Active'),
(443, 46, 9, '2021-06-10', 2500.00, 15, 937.50, '', '', 'Active'),
(444, 46, 10, '2021-07-10', 2500.00, 15, 937.50, '', '', 'Active'),
(445, 46, 11, '2021-08-10', 2500.00, 15, 937.50, '', '', 'Active'),
(446, 46, 12, '2021-09-10', 2500.00, 15, 937.50, '', '', 'Active'),
(447, 46, 13, '2021-10-10', 2500.00, 15, 937.50, '', '', 'Active'),
(448, 46, 14, '2021-11-10', 2500.00, 15, 937.50, '', '', 'Active'),
(449, 46, 15, '2021-12-10', 2500.00, 15, 937.50, '', '', 'Active'),
(450, 46, 16, '2022-01-10', 2500.00, 15, 937.50, '', '', 'Active'),
(451, 46, 17, '2022-02-10', 2500.00, 15, 937.50, '', '', 'Active'),
(452, 46, 18, '2022-03-10', 2500.00, 15, 937.50, '', '', 'Active'),
(453, 46, 19, '2022-04-10', 2500.00, 15, 937.50, '', '', 'Active'),
(454, 46, 20, '2022-05-10', 2500.00, 15, 937.50, '', '', 'Active'),
(455, 46, 21, '2022-06-10', 2500.00, 15, 937.50, '', '', 'Active'),
(456, 46, 22, '2022-07-10', 2500.00, 15, 937.50, '', '', 'Active'),
(457, 46, 23, '2022-08-10', 2500.00, 15, 937.50, '', '', 'Active'),
(458, 46, 24, '2022-09-10', 2500.00, 15, 937.50, '', '', 'Active'),
(459, 46, 25, '2022-10-10', 2500.00, 15, 937.50, '', '', 'Active'),
(460, 46, 26, '2022-11-10', 2500.00, 15, 937.50, '', '', 'Active'),
(461, 46, 27, '2022-12-10', 2500.00, 15, 937.50, '', '', 'Active'),
(462, 46, 28, '2023-01-10', 2500.00, 15, 937.50, '', '', 'Active'),
(463, 46, 29, '2023-02-10', 2500.00, 15, 937.50, '', '', 'Active'),
(464, 46, 30, '2023-03-10', 2500.00, 15, 937.50, '', '', 'Active'),
(465, 47, 1, '2020-10-10', 1041.67, 12, 250.00, '', '', 'Active'),
(466, 47, 2, '2020-11-10', 1041.67, 12, 250.00, '', '', 'Active'),
(467, 47, 3, '2020-12-10', 1041.67, 12, 250.00, '', '', 'Active'),
(468, 47, 4, '2021-01-10', 1041.67, 12, 250.00, '', '', 'Active'),
(469, 47, 5, '2021-02-10', 1041.67, 12, 250.00, '', '', 'Active'),
(470, 47, 6, '2021-03-10', 1041.67, 12, 250.00, '', '', 'Active'),
(471, 47, 7, '2021-04-10', 1041.67, 12, 250.00, '', '', 'Active'),
(472, 47, 8, '2021-05-10', 1041.67, 12, 250.00, '', '', 'Active'),
(473, 47, 9, '2021-06-10', 1041.67, 12, 250.00, '', '', 'Active'),
(474, 47, 10, '2021-07-10', 1041.67, 12, 250.00, '', '', 'Active'),
(475, 47, 11, '2021-08-10', 1041.67, 12, 250.00, '', '', 'Active'),
(476, 47, 12, '2021-09-10', 1041.67, 12, 250.00, '', '', 'Active'),
(477, 47, 13, '2021-10-10', 1041.67, 12, 250.00, '', '', 'Active'),
(478, 47, 14, '2021-11-10', 1041.67, 12, 250.00, '', '', 'Active'),
(479, 47, 15, '2021-12-10', 1041.67, 12, 250.00, '', '', 'Active'),
(480, 47, 16, '2022-01-10', 1041.67, 12, 250.00, '', '', 'Active'),
(481, 47, 17, '2022-02-10', 1041.67, 12, 250.00, '', '', 'Active'),
(482, 47, 18, '2022-03-10', 1041.67, 12, 250.00, '', '', 'Active'),
(483, 47, 19, '2022-04-10', 1041.67, 12, 250.00, '', '', 'Active'),
(484, 47, 20, '2022-05-10', 1041.67, 12, 250.00, '', '', 'Active'),
(485, 47, 21, '2022-06-10', 1041.67, 12, 250.00, '', '', 'Active'),
(486, 47, 22, '2022-07-10', 1041.67, 12, 250.00, '', '', 'Active'),
(487, 47, 23, '2022-08-10', 1041.67, 12, 250.00, '', '', 'Active'),
(488, 47, 24, '2022-09-10', 1041.67, 12, 250.00, '', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `lpf_loanprocessingfee`
--

CREATE TABLE `lpf_loanprocessingfee` (
  `lpf_id` int(10) NOT NULL,
  `lpf_famt` double(20,2) NOT NULL,
  `lpf_tamt` double(20,2) NOT NULL,
  `lpf_amttype` varchar(20) NOT NULL,
  `lpf_amt` double(20,2) NOT NULL,
  `lpf_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lpf_loanprocessingfee`
--

INSERT INTO `lpf_loanprocessingfee` (`lpf_id`, `lpf_famt`, `lpf_tamt`, `lpf_amttype`, `lpf_amt`, `lpf_status`) VALUES
(3, 1000.00, 100000.00, 'Flat', 500.00, 'Active'),
(4, 100001.00, 300000.00, 'Percentage', 5.00, 'Active'),
(5, 300001.00, 2500000.00, 'Percentage', 4.00, 'Active'),
(6, 2500001.00, 10000000.00, 'Percentage', 3.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `ltr_loantransaction`
--

CREATE TABLE `ltr_loantransaction` (
  `ltr_id` bigint(20) NOT NULL,
  `lacc_id` int(10) NOT NULL,
  `lins_id` int(10) NOT NULL,
  `ltr_transdt` date NOT NULL,
  `ltr_transtype` varchar(20) NOT NULL,
  `ltr_billno` varchar(20) NOT NULL,
  `ltr_amt` double(10,2) NOT NULL,
  `ltr_paymenttype` varchar(20) NOT NULL,
  `ltr_chqno` varchar(25) NOT NULL,
  `ltr_bank` varchar(100) NOT NULL,
  `ltr_note` text NOT NULL,
  `ltr_status` varchar(10) NOT NULL,
  `ltr_cancellationtype` varchar(200) NOT NULL,
  `ltr_cancellationreason` text NOT NULL,
  `ltr_chq_bounce_id` int(10) NOT NULL,
  `ltr_del_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ltr_loantransaction`
--

INSERT INTO `ltr_loantransaction` (`ltr_id`, `lacc_id`, `lins_id`, `ltr_transdt`, `ltr_transtype`, `ltr_billno`, `ltr_amt`, `ltr_paymenttype`, `ltr_chqno`, `ltr_bank`, `ltr_note`, `ltr_status`, `ltr_cancellationtype`, `ltr_cancellationreason`, `ltr_chq_bounce_id`, `ltr_del_id`) VALUES
(248, 37, 242, '2020-10-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(249, 37, 242, '2020-10-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(250, 37, 243, '2020-11-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(251, 37, 243, '2020-11-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(252, 37, 244, '2020-12-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(253, 37, 244, '2020-12-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(254, 37, 245, '2021-01-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(255, 37, 245, '2021-01-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(256, 37, 246, '2021-02-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(257, 37, 246, '2021-02-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(258, 37, 247, '2021-03-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(259, 37, 247, '2021-03-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(260, 37, 248, '2021-04-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(261, 37, 248, '2021-04-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(262, 37, 249, '2021-05-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(263, 37, 249, '2021-05-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(264, 37, 250, '2021-06-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(265, 37, 250, '2021-06-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(266, 37, 251, '2021-07-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(267, 37, 251, '2021-07-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(268, 37, 252, '2021-08-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(269, 37, 252, '2021-08-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(270, 37, 253, '2021-09-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(271, 37, 253, '2021-09-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(272, 37, 254, '2021-10-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(273, 37, 254, '2021-10-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(274, 37, 255, '2021-11-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(275, 37, 255, '2021-11-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(276, 37, 256, '2021-12-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(277, 37, 256, '2021-12-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(278, 37, 257, '2022-01-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(279, 37, 257, '2022-01-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(280, 37, 258, '2022-02-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(281, 37, 258, '2022-02-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(282, 37, 259, '2022-03-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(283, 37, 259, '2022-03-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(284, 37, 260, '2022-04-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(285, 37, 260, '2022-04-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(286, 37, 261, '2022-05-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(287, 37, 261, '2022-05-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(288, 37, 262, '2022-06-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(289, 37, 262, '2022-06-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(290, 37, 263, '2022-07-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(291, 37, 263, '2022-07-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(292, 37, 264, '2022-08-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(293, 37, 264, '2022-08-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(294, 37, 265, '2022-09-02', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(295, 37, 265, '2022-09-02', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(298, 37, 242, '2020-09-02', 'Payment', '1', 125.00, 'VISA', '', '', 'a:5:{i:0;s:19:\"$_POST[paymenttype]\";i:1;s:18:\"$_POST[cardholder]\";i:2;s:18:\"$_POST[cardnumber]\";i:3;s:18:\"$_POST[expirydate]\";i:4;s:17:\"$_POST[cvvnumber]\";}', 'Active', '', '', 0, 0),
(299, 37, 242, '2020-09-02', 'Payment', '1', 125.00, 'VISA', '', '', 'a:5:{i:0;s:19:\"$_POST[paymenttype]\";i:1;s:18:\"$_POST[cardholder]\";i:2;s:18:\"$_POST[cardnumber]\";i:3;s:18:\"$_POST[expirydate]\";i:4;s:17:\"$_POST[cvvnumber]\";}', 'Active', '', '', 0, 0),
(300, 37, 242, '2020-09-02', 'Payment', '1', 125.00, 'VISA', '', '', 'a:5:{i:0;s:19:\"$_POST[paymenttype]\";i:1;s:18:\"$_POST[cardholder]\";i:2;s:18:\"$_POST[cardnumber]\";i:3;s:18:\"$_POST[expirydate]\";i:4;s:17:\"$_POST[cvvnumber]\";}', 'Active', '', '', 0, 0),
(301, 37, 242, '2020-09-02', 'Payment', '1', 125.00, 'VISA', '', '', 'a:5:{i:0;s:19:\"$_POST[paymenttype]\";i:1;s:18:\"$_POST[cardholder]\";i:2;s:18:\"$_POST[cardnumber]\";i:3;s:18:\"$_POST[expirydate]\";i:4;s:17:\"$_POST[cvvnumber]\";}', 'Active', '', '', 0, 0),
(302, 37, 242, '2020-09-02', 'Payment', '1', 125.00, 'VISA', '', '', 'a:5:{i:0;s:19:\"$_POST[paymenttype]\";i:1;s:18:\"$_POST[cardholder]\";i:2;s:18:\"$_POST[cardnumber]\";i:3;s:18:\"$_POST[expirydate]\";i:4;s:17:\"$_POST[cvvnumber]\";}', 'Active', '', '', 0, 0),
(303, 37, 242, '2020-09-02', 'Payment', '1', 125.00, 'VISA', '', '', 'a:5:{i:0;s:19:\"$_POST[paymenttype]\";i:1;s:18:\"$_POST[cardholder]\";i:2;s:18:\"$_POST[cardnumber]\";i:3;s:18:\"$_POST[expirydate]\";i:4;s:17:\"$_POST[cvvnumber]\";}', 'Active', '', '', 0, 0),
(304, 37, 242, '2020-09-02', 'Payment', '1', 100.00, 'VISA', '', '', 'a:5:{i:0;s:19:\"$_POST[paymenttype]\";i:1;s:18:\"$_POST[cardholder]\";i:2;s:18:\"$_POST[cardnumber]\";i:3;s:18:\"$_POST[expirydate]\";i:4;s:17:\"$_POST[cvvnumber]\";}', 'Active', '', '', 0, 0),
(307, 37, 242, '2020-09-02', 'Payment', '1', 12066.00, 'VISA', '', '', 'a:5:{i:0;s:19:\"$_POST[paymenttype]\";i:1;s:18:\"$_POST[cardholder]\";i:2;s:18:\"$_POST[cardnumber]\";i:3;s:18:\"$_POST[expirydate]\";i:4;s:17:\"$_POST[cvvnumber]\";}', 'Active', '', '', 0, 0),
(308, 37, 243, '2020-09-02', 'Payment', '1', 100.00, 'VISA', '', '', 'a:5:{i:0;s:19:\"$_POST[paymenttype]\";i:1;s:18:\"$_POST[cardholder]\";i:2;s:18:\"$_POST[cardnumber]\";i:3;s:18:\"$_POST[expirydate]\";i:4;s:17:\"$_POST[cvvnumber]\";}', 'Active', '', '', 0, 0),
(309, 37, 243, '2020-09-02', 'Payment', '9', 800.00, 'VISA', '', '', 'a:5:{i:0;s:19:\"$_POST[paymenttype]\";i:1;s:18:\"$_POST[cardholder]\";i:2;s:18:\"$_POST[cardnumber]\";i:3;s:18:\"$_POST[expirydate]\";i:4;s:17:\"$_POST[cvvnumber]\";}', 'Active', '', '', 0, 0),
(310, 37, 243, '2020-09-02', '', '0', 100.00, '', '', '', '', 'Active', '', '', 0, 0),
(311, 37, 243, '2020-09-02', 'Legal Case', '0', 200.00, '', '', '', 'For legal case No. 2333', 'Active', '', '', 0, 0),
(312, 37, 243, '2020-09-02', 'Cheque Bounce', '0', 150.00, '', '', '', 'For CHQ 2323335', 'Active', '', '', 0, 0),
(313, 37, 243, '2020-09-02', 'Others', '0', 100.00, '', '', '', 'For documentation', 'Active', '', '', 0, 0),
(314, 37, 243, '2020-09-02', 'Legal Case', '1', 50.00, '', '', '', 'For legal case No. 1334', 'Active', '', '', 0, 0),
(315, 37, 243, '2020-09-02', 'Legal Case', '2', 50.00, '', '', '', 'For legal case No. 1334', 'Active', '', '', 0, 0),
(316, 37, 243, '2020-09-02', 'Legal Case', '3', 450.00, '', '', '', '', 'Active', '', '', 0, 0),
(317, 33, 243, '2020-09-02', 'Cheque Bounce', '1', 500.00, '', '', '', 'for cheque bounce', 'Active', '', '', 0, 0),
(318, 37, 243, '2020-09-03', 'Payment', '10', 250.00, 'Master Card', '', '', 'a:5:{i:0;s:11:\"Master Card\";i:1;s:6:\"Pravin\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-02\";i:4;s:3:\"169\";}', 'Active', '', '', 0, 0),
(319, 37, 243, '2020-09-03', 'Legal Case', '4', 450.00, '', '', '', '', 'Active', '', '', 0, 0),
(320, 38, 266, '2020-10-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(321, 38, 266, '2020-10-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(322, 38, 267, '2020-11-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(323, 38, 267, '2020-11-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(324, 38, 268, '2020-12-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(325, 38, 268, '2020-12-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(326, 38, 269, '2021-01-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(327, 38, 269, '2021-01-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(328, 38, 270, '2021-02-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(329, 38, 270, '2021-02-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(330, 38, 271, '2021-03-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(331, 38, 271, '2021-03-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(332, 38, 272, '2021-04-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(333, 38, 272, '2021-04-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(334, 38, 273, '2021-05-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(335, 38, 273, '2021-05-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(336, 38, 274, '2021-06-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(337, 38, 274, '2021-06-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(338, 38, 275, '2021-07-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(339, 38, 275, '2021-07-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(340, 38, 276, '2021-08-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(341, 38, 276, '2021-08-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(342, 38, 277, '2021-09-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(343, 38, 277, '2021-09-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(344, 38, 278, '2021-10-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(345, 38, 278, '2021-10-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(346, 38, 279, '2021-11-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(347, 38, 279, '2021-11-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(348, 38, 280, '2021-12-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(349, 38, 280, '2021-12-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(350, 38, 281, '2022-01-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(351, 38, 281, '2022-01-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(352, 38, 282, '2022-02-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(353, 38, 282, '2022-02-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(354, 38, 283, '2022-03-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(355, 38, 283, '2022-03-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(356, 38, 284, '2022-04-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(357, 38, 284, '2022-04-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(358, 38, 285, '2022-05-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(359, 38, 285, '2022-05-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(360, 38, 286, '2022-06-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(361, 38, 286, '2022-06-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(362, 38, 287, '2022-07-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(363, 38, 287, '2022-07-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(364, 38, 288, '2022-08-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(365, 38, 288, '2022-08-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(366, 38, 289, '2022-09-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(367, 38, 289, '2022-09-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(368, 38, 290, '2022-10-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(369, 38, 290, '2022-10-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(370, 38, 291, '2022-11-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(371, 38, 291, '2022-11-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(372, 38, 292, '2022-12-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(373, 38, 292, '2022-12-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(374, 38, 293, '2023-01-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(375, 38, 293, '2023-01-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(376, 38, 294, '2023-02-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(377, 38, 294, '2023-02-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(378, 38, 295, '2023-03-03', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(379, 38, 295, '2023-03-03', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(380, 38, 266, '2020-09-03', 'Payment', '11', 10000.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:9:\"Raj kiran\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"159\";}', 'Active', '', '', 0, 0),
(381, 38, 266, '2020-09-03', 'Legal Case', '5', 500.00, '', '', '', 'Legal proceeding charge', 'Active', '', '', 0, 0),
(382, 38, 266, '2020-09-03', 'Cheque Bounce', '2', 650.00, '', '', '', 'Cheque bounce #8329', 'Active', '', '', 0, 0),
(383, 39, 296, '2020-02-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(384, 39, 296, '2020-02-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(385, 39, 297, '2020-03-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(386, 39, 297, '2020-03-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(387, 39, 298, '2020-04-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(388, 39, 298, '2020-04-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(389, 39, 299, '2020-05-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(390, 39, 299, '2020-05-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(391, 39, 300, '2020-06-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(392, 39, 300, '2020-06-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(393, 39, 301, '2020-07-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(394, 39, 301, '2020-07-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(395, 39, 302, '2020-08-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(396, 39, 302, '2020-08-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(397, 39, 303, '2020-09-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(398, 39, 303, '2020-09-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(399, 39, 304, '2020-10-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(400, 39, 304, '2020-10-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(401, 39, 305, '2020-11-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(402, 39, 305, '2020-11-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(403, 39, 306, '2020-12-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(404, 39, 306, '2020-12-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(405, 39, 307, '2021-01-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(406, 39, 307, '2021-01-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(407, 39, 308, '2021-02-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(408, 39, 308, '2021-02-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(409, 39, 309, '2021-03-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(410, 39, 309, '2021-03-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(411, 39, 310, '2021-04-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(412, 39, 310, '2021-04-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(413, 39, 311, '2021-05-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(414, 39, 311, '2021-05-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(415, 39, 312, '2021-06-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(416, 39, 312, '2021-06-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(417, 39, 313, '2021-07-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(418, 39, 313, '2021-07-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(419, 39, 314, '2021-08-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(420, 39, 314, '2021-08-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(421, 39, 315, '2021-09-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(422, 39, 315, '2021-09-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(423, 39, 316, '2021-10-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(424, 39, 316, '2021-10-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(425, 39, 317, '2021-11-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(426, 39, 317, '2021-11-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(427, 39, 318, '2021-12-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(428, 39, 318, '2021-12-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(429, 39, 319, '2022-01-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(430, 39, 319, '2022-01-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(431, 39, 320, '2022-02-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(432, 39, 320, '2022-02-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(433, 39, 321, '2022-03-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(434, 39, 321, '2022-03-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(435, 39, 322, '2022-04-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(436, 39, 322, '2022-04-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(437, 39, 323, '2022-05-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(438, 39, 323, '2022-05-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(439, 39, 324, '2022-06-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(440, 39, 324, '2022-06-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(441, 39, 325, '2022-07-03', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(442, 39, 325, '2022-07-03', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(457, 39, 296, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', '', '', '', 0, 0),
(458, 39, 297, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', '', '', '', 0, 0),
(459, 39, 298, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', '', '', '', 0, 0),
(460, 39, 299, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', '', '', '', 0, 0),
(461, 39, 300, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', '', '', '', 0, 0),
(462, 39, 301, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', '', '', '', 0, 0),
(463, 39, 302, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', '', '', '', 0, 0),
(464, 39, 296, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', 'Active', '', '', 0, 0),
(465, 39, 297, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', 'Active', '', '', 0, 0),
(466, 39, 298, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', 'Active', '', '', 0, 0),
(467, 39, 299, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', 'Active', '', '', 0, 0),
(468, 39, 300, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', 'Active', '', '', 0, 0),
(469, 39, 301, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', 'Active', '', '', 0, 0),
(470, 39, 302, '2020-09-03', 'Delay Payment', '0', 51.56, '', '', '', '', 'Active', '', '', 0, 0),
(471, 39, 296, '2020-09-04', 'Delay Payment', '0', 52.34, '', '', '', '', 'Active', '', '', 0, 0),
(472, 39, 297, '2020-09-04', 'Delay Payment', '0', 52.34, '', '', '', '', 'Active', '', '', 0, 0),
(473, 39, 298, '2020-09-04', 'Delay Payment', '0', 52.34, '', '', '', '', 'Active', '', '', 0, 0),
(474, 39, 299, '2020-09-04', 'Delay Payment', '0', 52.34, '', '', '', '', 'Active', '', '', 0, 0),
(475, 39, 300, '2020-09-04', 'Delay Payment', '0', 52.34, '', '', '', '', 'Active', '', '', 0, 0),
(476, 39, 301, '2020-09-04', 'Delay Payment', '0', 52.34, '', '', '', '', 'Active', '', '', 0, 0),
(477, 39, 302, '2020-09-04', 'Delay Payment', '0', 52.34, '', '', '', '', 'Active', '', '', 0, 0),
(478, 39, 303, '2020-09-04', 'Delay Payment', '0', 51.56, '', '', '', '', 'Active', '', '', 0, 0),
(479, 39, 296, '2020-09-03', 'Delay Payment', '0', 53.12, '', '', '', '', 'Active', '', '', 0, 0),
(480, 39, 297, '2020-09-03', 'Delay Payment', '0', 53.12, '', '', '', '', 'Active', '', '', 0, 0),
(481, 39, 298, '2020-09-03', 'Delay Payment', '0', 53.12, '', '', '', '', 'Active', '', '', 0, 0),
(482, 39, 299, '2020-09-03', 'Delay Payment', '0', 53.12, '', '', '', '', 'Active', '', '', 0, 0),
(483, 39, 300, '2020-09-03', 'Delay Payment', '0', 53.12, '', '', '', '', 'Active', '', '', 0, 0),
(484, 39, 301, '2020-09-03', 'Delay Payment', '0', 53.12, '', '', '', '', 'Active', '', '', 0, 0),
(485, 39, 302, '2020-09-03', 'Delay Payment', '0', 53.12, '', '', '', '', 'Active', '', '', 0, 0),
(486, 39, 296, '2020-09-03', 'Delay Payment', '0', 53.92, '', '', '', '', 'Active', '', '', 0, 0),
(487, 39, 297, '2020-09-03', 'Delay Payment', '0', 53.92, '', '', '', '', 'Active', '', '', 0, 0),
(488, 39, 298, '2020-09-03', 'Delay Payment', '0', 53.92, '', '', '', '', 'Active', '', '', 0, 0),
(489, 39, 299, '2020-09-03', 'Delay Payment', '0', 53.92, '', '', '', '', 'Active', '', '', 0, 0),
(490, 39, 300, '2020-09-03', 'Delay Payment', '0', 53.92, '', '', '', '', 'Active', '', '', 0, 0),
(491, 39, 301, '2020-09-03', 'Delay Payment', '0', 53.92, '', '', '', '', 'Active', '', '', 0, 0),
(492, 39, 302, '2020-09-03', 'Delay Payment', '0', 53.92, '', '', '', '', 'Active', '', '', 0, 0),
(493, 39, 296, '2020-10-07', 'Delay Payment', '0', 54.73, '', '', '', '', 'Active', '', '', 0, 0),
(494, 39, 297, '2020-10-07', 'Delay Payment', '0', 54.73, '', '', '', '', 'Active', '', '', 0, 0),
(495, 39, 298, '2020-10-07', 'Delay Payment', '0', 54.73, '', '', '', '', 'Active', '', '', 0, 0),
(496, 39, 299, '2020-10-07', 'Delay Payment', '0', 54.73, '', '', '', '', 'Active', '', '', 0, 0),
(497, 39, 300, '2020-10-07', 'Delay Payment', '0', 54.73, '', '', '', '', 'Active', '', '', 0, 0),
(498, 39, 301, '2020-10-07', 'Delay Payment', '0', 54.73, '', '', '', '', 'Active', '', '', 0, 0),
(499, 39, 302, '2020-10-07', 'Delay Payment', '0', 54.73, '', '', '', '', 'Active', '', '', 0, 0),
(500, 39, 303, '2020-10-07', 'Delay Payment', '0', 52.34, '', '', '', '', 'Active', '', '', 0, 0),
(501, 39, 304, '2020-10-07', 'Delay Payment', '0', 51.56, '', '', '', '', 'Active', '', '', 0, 0),
(502, 39, 296, '2020-02-20', 'Delay Payment', '0', 55.55, '', '', '', '', 'Active', '', '', 0, 0),
(503, 39, 296, '2020-03-05', 'Delay Payment', '0', 56.38, '', '', '', '', 'Active', '', '', 0, 0),
(504, 39, 297, '2020-03-05', 'Delay Payment', '0', 55.55, '', '', '', '', 'Active', '', '', 0, 0),
(505, 39, 296, '2020-04-05', 'Delay Payment', '0', 57.23, '', '', '', '', 'Active', '', '', 0, 0),
(506, 39, 297, '2020-04-05', 'Delay Payment', '0', 56.38, '', '', '', '', 'Active', '', '', 0, 0),
(507, 39, 298, '2020-04-05', 'Delay Payment', '0', 55.55, '', '', '', '', 'Active', '', '', 0, 0),
(508, 39, 296, '2020-05-06', 'Delay Payment', '0', 58.08, '', '', '', '', 'Active', '', '', 0, 0),
(509, 39, 297, '2020-05-06', 'Delay Payment', '0', 57.23, '', '', '', '', 'Active', '', '', 0, 0),
(510, 39, 298, '2020-05-06', 'Delay Payment', '0', 56.38, '', '', '', '', 'Active', '', '', 0, 0),
(511, 39, 299, '2020-05-06', 'Delay Payment', '0', 55.55, '', '', '', '', 'Active', '', '', 0, 0),
(512, 39, 296, '2020-09-07', 'Payment', '12', 100.00, 'Cash', ' ', ' ', 'Paid by cash', 'Active', '', '', 0, 0),
(513, 39, 296, '2020-09-07', 'Payment', '13', 2550.00, 'Cheque', '78954', 'ICICI', 'cheque payment', 'Active', '', '', 0, 0),
(514, 39, 296, '2020-09-07', 'Payment', '14', 250.00, 'Cash', ' ', ' ', 'Cash Payment', 'Active', '', '', 0, 0),
(515, 37, 243, '2020-09-07', 'Payment', '15', 100.00, 'Cash', ' ', ' ', 'This is test sms', 'Active', '', '', 0, 0),
(516, 37, 243, '2020-09-07', 'Payment', '16', 100.00, 'Cash', '', '', 'This is test sms', 'Active', '', '', 0, 0),
(517, 37, 243, '2020-09-07', 'Payment', '17', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(518, 37, 243, '2020-09-07', 'Payment', '18', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(519, 37, 243, '2020-09-07', 'Payment', '19', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(520, 37, 243, '2020-09-07', 'Payment', '20', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(521, 37, 243, '2020-09-07', 'Payment', '21', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(522, 37, 243, '2020-09-07', 'Payment', '22', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(523, 37, 243, '2020-09-07', 'Payment', '23', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(524, 37, 243, '2020-09-07', 'Payment', '24', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(525, 37, 243, '2020-09-07', 'Payment', '25', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(526, 37, 243, '2020-09-07', 'Payment', '26', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(527, 37, 243, '2020-09-07', 'Payment', '27', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(528, 37, 243, '2020-09-07', 'Payment', '28', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(529, 37, 243, '2020-09-07', 'Payment', '29', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(530, 37, 243, '2020-09-07', 'Payment', '30', 100.00, 'Cheque', '12345678', 'ICICI', 'Chque payment from client', 'Active', '', '', 0, 0),
(531, 37, 243, '2020-09-07', 'Payment', '31', 2500.00, 'Cash', ' ', ' ', 'Paid with itnerest', 'Active', '', '', 0, 0),
(532, 37, 243, '2020-09-07', 'Payment', '32', 2500.00, 'Cash', ' ', ' ', 'Paid with itnerest', 'Active', '', '', 0, 0),
(533, 37, 243, '2020-09-07', 'Payment', '33', 2500.00, 'Cash', ' ', ' ', 'Paid with itnerest', 'Active', '', '', 0, 0),
(534, 37, 243, '2020-09-07', 'Payment', '34', 2500.00, 'Cash', ' ', ' ', 'Paid with itnerest', 'Active', '', '', 0, 0),
(535, 37, 243, '2020-09-07', 'Payment', '35', 2500.00, 'Cash', ' ', ' ', 'Paid with itnerest', 'Active', '', '', 0, 0),
(536, 37, 243, '2020-09-07', 'Payment', '36', 2500.00, 'Cash', ' ', ' ', 'Paid with itnerest', 'Active', '', '', 0, 0),
(537, 37, 243, '2020-09-07', 'Payment', '37', 2500.00, 'Cash', ' ', ' ', 'Paid with itnerest', 'Active', '', '', 0, 0),
(538, 37, 244, '2020-09-07', 'Payment', '38', 112.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"528\";}', 'Active', '', '', 0, 0),
(539, 37, 244, '2020-09-07', 'Payment', '39', 125.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"528\";}', 'Active', '', '', 0, 0),
(540, 37, 244, '2020-09-07', 'Payment', '40', 125.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"528\";}', 'Active', '', '', 0, 0),
(541, 37, 244, '2020-09-07', 'Payment', '41', 125.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"528\";}', 'Active', '', '', 0, 0),
(542, 37, 244, '2020-09-07', 'Payment', '42', 125.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"528\";}', 'Active', '', '', 0, 0),
(543, 37, 244, '2020-09-07', 'Payment', '43', 125.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"528\";}', 'Active', '', '', 0, 0),
(544, 37, 244, '2020-09-07', 'Payment', '44', 150.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"528\";}', 'Active', '', '', 0, 0),
(545, 37, 244, '2020-09-07', 'Payment', '45', 150.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"528\";}', 'Active', '', '', 0, 0),
(546, 37, 244, '2020-09-07', 'Payment', '46', 150.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"528\";}', 'Active', '', '', 0, 0),
(547, 37, 244, '2020-09-07', 'Payment', '47', 150.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"528\";}', 'Active', '', '', 0, 0),
(548, 37, 244, '2020-09-07', 'Payment', '48', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(549, 37, 244, '2020-09-07', 'Payment', '49', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(550, 37, 244, '2020-09-07', 'Payment', '50', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(551, 37, 244, '2020-09-07', 'Payment', '51', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(552, 37, 244, '2020-09-07', 'Payment', '52', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(553, 37, 244, '2020-09-07', 'Payment', '53', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(554, 37, 244, '2020-09-07', 'Payment', '54', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(555, 37, 244, '2020-09-07', 'Payment', '55', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(556, 37, 244, '2020-09-07', 'Payment', '56', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(557, 37, 244, '2020-09-07', 'Payment', '57', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(558, 37, 244, '2020-09-07', 'Payment', '58', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(559, 37, 244, '2020-09-07', 'Payment', '59', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(560, 37, 244, '2020-09-07', 'Payment', '60', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(561, 37, 244, '2020-09-07', 'Payment', '61', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(562, 37, 244, '2020-09-07', 'Payment', '62', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(563, 37, 244, '2020-09-07', 'Payment', '63', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(564, 37, 244, '2020-09-07', 'Payment', '64', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(565, 37, 244, '2020-09-07', 'Payment', '65', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(566, 37, 244, '2020-09-07', 'Payment', '66', 175.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"PEter\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"158\";}', 'Active', '', '', 0, 0),
(567, 37, 244, '2020-09-07', 'Payment', '67', 110.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"divya\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"159\";}', 'Active', '', '', 0, 0),
(568, 37, 244, '2020-09-07', 'Payment', '68', 144.00, 'Cash', ' ', ' ', 'For pay', 'Active', '', '', 0, 0),
(569, 37, 244, '2020-09-07', 'Payment', '69', 144.00, 'Cash', ' ', ' ', 'For pay', 'Active', '', '', 0, 0),
(570, 37, 244, '2020-09-07', 'Payment', '70', 150.00, 'Cash', ' ', ' ', '', 'Active', '', '', 0, 0),
(571, 43, 326, '2020-10-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(572, 43, 326, '2020-10-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(573, 43, 327, '2020-11-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(574, 43, 327, '2020-11-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(575, 43, 328, '2020-12-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(576, 43, 328, '2020-12-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(577, 43, 329, '2021-01-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(578, 43, 329, '2021-01-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(579, 43, 330, '2021-02-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(580, 43, 330, '2021-02-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(581, 43, 331, '2021-03-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(582, 43, 331, '2021-03-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(583, 43, 332, '2021-04-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(584, 43, 332, '2021-04-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(585, 43, 333, '2021-05-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(586, 43, 333, '2021-05-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(587, 43, 334, '2021-06-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(588, 43, 334, '2021-06-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(589, 43, 335, '2021-07-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(590, 43, 335, '2021-07-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(591, 43, 336, '2021-08-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(592, 43, 336, '2021-08-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(593, 43, 337, '2021-09-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(594, 43, 337, '2021-09-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(595, 43, 338, '2021-10-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(596, 43, 338, '2021-10-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(597, 43, 339, '2021-11-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(598, 43, 339, '2021-11-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(599, 43, 340, '2021-12-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(600, 43, 340, '2021-12-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(601, 43, 341, '2022-01-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(602, 43, 341, '2022-01-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(603, 43, 342, '2022-02-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(604, 43, 342, '2022-02-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(605, 43, 343, '2022-03-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(606, 43, 343, '2022-03-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(607, 43, 344, '2022-04-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(608, 43, 344, '2022-04-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(609, 43, 345, '2022-05-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(610, 43, 345, '2022-05-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(611, 43, 346, '2022-06-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(612, 43, 346, '2022-06-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(613, 43, 347, '2022-07-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(614, 43, 347, '2022-07-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(615, 43, 348, '2022-08-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(616, 43, 348, '2022-08-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(617, 43, 349, '2022-09-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(618, 43, 349, '2022-09-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(619, 43, 350, '2022-10-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(620, 43, 350, '2022-10-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(621, 43, 351, '2022-11-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(622, 43, 351, '2022-11-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(623, 43, 352, '2022-12-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(624, 43, 352, '2022-12-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(625, 43, 353, '2023-01-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(626, 43, 353, '2023-01-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(627, 43, 354, '2023-02-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(628, 43, 354, '2023-02-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(629, 43, 355, '2023-03-07', 'Principal', '0', 8333.33, '', '', '', '', 'Active', '', '', 0, 0),
(630, 43, 355, '2023-03-07', 'Interest', '0', 3750.00, '', '', '', '', 'Active', '', '', 0, 0),
(631, 42, 356, '2020-10-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(632, 42, 356, '2020-10-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(633, 42, 357, '2020-11-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(634, 42, 357, '2020-11-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(635, 42, 358, '2020-12-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(636, 42, 358, '2020-12-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(637, 42, 359, '2021-01-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(638, 42, 359, '2021-01-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(639, 42, 360, '2021-02-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(640, 42, 360, '2021-02-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(641, 42, 361, '2021-03-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(642, 42, 361, '2021-03-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(643, 42, 362, '2021-04-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(644, 42, 362, '2021-04-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(645, 42, 363, '2021-05-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(646, 42, 363, '2021-05-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(647, 42, 364, '2021-06-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(648, 42, 364, '2021-06-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(649, 42, 365, '2021-07-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(650, 42, 365, '2021-07-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(651, 42, 366, '2021-08-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(652, 42, 366, '2021-08-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(653, 42, 367, '2021-09-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(654, 42, 367, '2021-09-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(655, 42, 368, '2021-10-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(656, 42, 368, '2021-10-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(657, 42, 369, '2021-11-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(658, 42, 369, '2021-11-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(659, 42, 370, '2021-12-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(660, 42, 370, '2021-12-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(661, 42, 371, '2022-01-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(662, 42, 371, '2022-01-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(663, 42, 372, '2022-02-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(664, 42, 372, '2022-02-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(665, 42, 373, '2022-03-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(666, 42, 373, '2022-03-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(667, 42, 374, '2022-04-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(668, 42, 374, '2022-04-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(669, 42, 375, '2022-05-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(670, 42, 375, '2022-05-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(671, 42, 376, '2022-06-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(672, 42, 376, '2022-06-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(673, 42, 377, '2022-07-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(674, 42, 377, '2022-07-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(675, 42, 378, '2022-08-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(676, 42, 378, '2022-08-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(677, 42, 379, '2022-09-07', 'Principal', '0', 2083.33, '', '', '', '', 'Active', '', '', 0, 0),
(678, 42, 379, '2022-09-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(679, 41, 380, '2020-10-07', 'Principal', '0', 20000.00, '', '', '', '', 'Active', '', '', 0, 0),
(680, 41, 380, '2020-10-07', 'Interest', '0', 500.00, '', '', '', '', 'Active', '', '', 0, 0),
(681, 43, 326, '2020-09-07', 'Payment', '71', 100.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890125647\";i:3;s:7:\"2021-01\";i:4;s:3:\"265\";}', 'Active', '', '', 0, 0),
(682, 43, 326, '2020-09-07', 'Payment', '72', 100.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890125647\";i:3;s:7:\"2021-01\";i:4;s:3:\"265\";}', 'Active', '', '', 0, 0),
(683, 13, 381, '2020-10-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(684, 13, 381, '2020-10-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(685, 13, 382, '2020-11-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(686, 13, 382, '2020-11-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(687, 13, 383, '2020-12-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(688, 13, 383, '2020-12-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(689, 13, 384, '2021-01-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(690, 13, 384, '2021-01-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(691, 13, 385, '2021-02-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(692, 13, 385, '2021-02-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(693, 13, 386, '2021-03-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(694, 13, 386, '2021-03-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(695, 13, 387, '2021-04-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(696, 13, 387, '2021-04-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(697, 13, 388, '2021-05-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(698, 13, 388, '2021-05-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(699, 13, 389, '2021-06-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(700, 13, 389, '2021-06-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(701, 13, 390, '2021-07-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(702, 13, 390, '2021-07-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(703, 13, 391, '2021-08-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(704, 13, 391, '2021-08-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(705, 13, 392, '2021-09-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(706, 13, 392, '2021-09-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(707, 13, 393, '2021-10-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(708, 13, 393, '2021-10-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(709, 13, 394, '2021-11-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(710, 13, 394, '2021-11-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(711, 13, 395, '2021-12-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(712, 13, 395, '2021-12-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(713, 13, 396, '2022-01-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(714, 13, 396, '2022-01-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(715, 13, 397, '2022-02-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(716, 13, 397, '2022-02-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(717, 13, 398, '2022-03-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(718, 13, 398, '2022-03-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(719, 13, 399, '2022-04-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(720, 13, 399, '2022-04-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(721, 13, 400, '2022-05-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(722, 13, 400, '2022-05-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0);
INSERT INTO `ltr_loantransaction` (`ltr_id`, `lacc_id`, `lins_id`, `ltr_transdt`, `ltr_transtype`, `ltr_billno`, `ltr_amt`, `ltr_paymenttype`, `ltr_chqno`, `ltr_bank`, `ltr_note`, `ltr_status`, `ltr_cancellationtype`, `ltr_cancellationreason`, `ltr_chq_bounce_id`, `ltr_del_id`) VALUES
(723, 13, 401, '2022-06-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(724, 13, 401, '2022-06-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(725, 13, 402, '2022-07-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(726, 13, 402, '2022-07-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(727, 13, 403, '2022-08-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(728, 13, 403, '2022-08-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(729, 13, 404, '2022-09-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(730, 13, 404, '2022-09-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(731, 13, 405, '2022-10-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(732, 13, 405, '2022-10-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(733, 13, 406, '2022-11-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(734, 13, 406, '2022-11-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(735, 13, 407, '2022-12-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(736, 13, 407, '2022-12-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(737, 13, 408, '2023-01-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(738, 13, 408, '2023-01-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(739, 13, 409, '2023-02-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(740, 13, 409, '2023-02-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(741, 13, 410, '2023-03-07', 'Principal', '0', 833.33, '', '', '', '', 'Active', '', '', 0, 0),
(742, 13, 410, '2023-03-07', 'Interest', '0', 375.00, '', '', '', '', 'Active', '', '', 0, 0),
(743, 45, 411, '2020-07-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(744, 45, 411, '2020-07-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(745, 45, 412, '2020-08-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(746, 45, 412, '2020-08-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(747, 45, 413, '2020-09-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(748, 45, 413, '2020-09-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(749, 45, 414, '2020-10-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(750, 45, 414, '2020-10-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(751, 45, 415, '2020-11-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(752, 45, 415, '2020-11-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(753, 45, 416, '2020-12-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(754, 45, 416, '2020-12-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(755, 45, 417, '2021-01-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(756, 45, 417, '2021-01-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(757, 45, 418, '2021-02-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(758, 45, 418, '2021-02-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(759, 45, 419, '2021-03-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(760, 45, 419, '2021-03-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(761, 45, 420, '2021-04-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(762, 45, 420, '2021-04-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(763, 45, 421, '2021-05-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(764, 45, 421, '2021-05-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(765, 45, 422, '2021-06-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(766, 45, 422, '2021-06-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(767, 45, 423, '2021-07-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(768, 45, 423, '2021-07-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(769, 45, 424, '2021-08-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(770, 45, 424, '2021-08-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(771, 45, 425, '2021-09-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(772, 45, 425, '2021-09-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(773, 45, 426, '2021-10-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(774, 45, 426, '2021-10-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(775, 45, 427, '2021-11-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(776, 45, 427, '2021-11-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(777, 45, 428, '2021-12-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(778, 45, 428, '2021-12-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(779, 45, 429, '2022-01-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(780, 45, 429, '2022-01-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(781, 45, 430, '2022-02-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(782, 45, 430, '2022-02-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(783, 45, 431, '2022-03-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(784, 45, 431, '2022-03-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(785, 45, 432, '2022-04-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(786, 45, 432, '2022-04-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(787, 45, 433, '2022-05-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(788, 45, 433, '2022-05-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(789, 45, 434, '2022-06-01', 'Principal', '0', 10416.67, '', '', '', '', 'Active', '', '', 0, 0),
(790, 45, 434, '2022-06-01', 'Interest', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(791, 45, 411, '2020-09-10', 'Delay Payment', '0', 193.75, '', '', '', '', 'Active', '', '', 0, 0),
(792, 45, 412, '2020-09-10', 'Delay Payment', '0', 193.75, '', '', '', '', 'Active', '', '', 0, 0),
(793, 45, 413, '2020-09-10', 'Delay Payment', '0', 193.75, '', '', '', '', 'Active', '', '', 0, 0),
(794, 45, 411, '2020-09-10', 'Payment', '73', 1000.00, '', '', '', 'a:5:{i:0;s:0:\"\";i:1;s:9:\"Raj kiran\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"159\";}', 'Active', '', '', 0, 0),
(795, 45, 411, '2020-09-10', 'Payment', '74', 1000.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:9:\"Raj kiran\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"159\";}', 'Active', '', '', 0, 0),
(796, 45, 411, '2020-07-10', 'Delay Payment', '0', 166.66, '', '', '', '', 'Active', '', '', 0, 0),
(797, 45, 411, '2020-08-10', 'Delay Payment', '0', 169.16, '', '', '', '', 'Active', '', '', 0, 0),
(798, 45, 412, '2020-08-10', 'Delay Payment', '0', 196.66, '', '', '', '', 'Active', '', '', 0, 0),
(799, 45, 411, '2020-09-10', 'Payment', '75', 11446.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:5:\"rejan\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"159\";}', 'Active', '', '', 0, 0),
(800, 45, 412, '2020-09-10', 'Payment', '76', 1000.00, 'Master Card', '', '', 'a:5:{i:0;s:11:\"Master Card\";i:1;s:9:\"Raj kiran\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"159\";}', 'Active', '', '', 0, 0),
(801, 45, 412, '2020-09-10', 'Payment', '77', 4000.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:9:\"Raj kiran\";i:2;s:16:\"1234567890253456\";i:3;s:7:\"2021-01\";i:4;s:3:\"159\";}', 'Active', '', '', 0, 0),
(803, 45, 412, '2020-09-10', 'Legal Case', '6', 500.00, '', '', '', 'For CHQ 2323335', 'Active', '', '', 0, 0),
(804, 45, 412, '2020-09-10', 'Legal Case', '7', 300.00, '', '', '', 'For legal case No. 2333', 'Active', '', '', 0, 0),
(805, 45, 412, '2020-09-10', 'Others', '1', 200.00, '', '', '', 'Service charge', 'Active', '', '', 0, 0),
(806, 45, 0, '2020-09-10', 'Foreclosure', '78', 267417.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2022-02\";i:4;s:3:\"159\";}', 'Active', '', '', 0, 0),
(807, 46, 435, '2020-10-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(808, 46, 435, '2020-10-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(809, 46, 436, '2020-11-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(810, 46, 436, '2020-11-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(811, 46, 437, '2020-12-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(812, 46, 437, '2020-12-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(813, 46, 438, '2021-01-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(814, 46, 438, '2021-01-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(815, 46, 439, '2021-02-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(816, 46, 439, '2021-02-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(817, 46, 440, '2021-03-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(818, 46, 440, '2021-03-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(819, 46, 441, '2021-04-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(820, 46, 441, '2021-04-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(821, 46, 442, '2021-05-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(822, 46, 442, '2021-05-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(823, 46, 443, '2021-06-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(824, 46, 443, '2021-06-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(825, 46, 444, '2021-07-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(826, 46, 444, '2021-07-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(827, 46, 445, '2021-08-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(828, 46, 445, '2021-08-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(829, 46, 446, '2021-09-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(830, 46, 446, '2021-09-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(831, 46, 447, '2021-10-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(832, 46, 447, '2021-10-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(833, 46, 448, '2021-11-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(834, 46, 448, '2021-11-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(835, 46, 449, '2021-12-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(836, 46, 449, '2021-12-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(837, 46, 450, '2022-01-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(838, 46, 450, '2022-01-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(839, 46, 451, '2022-02-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(840, 46, 451, '2022-02-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(841, 46, 452, '2022-03-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(842, 46, 452, '2022-03-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(843, 46, 453, '2022-04-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(844, 46, 453, '2022-04-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(845, 46, 454, '2022-05-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(846, 46, 454, '2022-05-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(847, 46, 455, '2022-06-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(848, 46, 455, '2022-06-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(849, 46, 456, '2022-07-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(850, 46, 456, '2022-07-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(851, 46, 457, '2022-08-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(852, 46, 457, '2022-08-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(853, 46, 458, '2022-09-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(854, 46, 458, '2022-09-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(855, 46, 459, '2022-10-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(856, 46, 459, '2022-10-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(857, 46, 460, '2022-11-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(858, 46, 460, '2022-11-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(859, 46, 461, '2022-12-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(860, 46, 461, '2022-12-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(861, 46, 462, '2023-01-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(862, 46, 462, '2023-01-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(863, 46, 463, '2023-02-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(864, 46, 463, '2023-02-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(865, 46, 464, '2023-03-10', 'Principal', '0', 2500.00, '', '', '', '', 'Active', '', '', 0, 0),
(866, 46, 464, '2023-03-10', 'Interest', '0', 937.50, '', '', '', '', 'Active', '', '', 0, 0),
(867, 46, 0, '2020-09-10', 'Foreclosure', '78', 89062.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"151\";}', 'Active', '', '', 0, 0),
(868, 47, 465, '2020-10-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(869, 47, 465, '2020-10-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(870, 47, 466, '2020-11-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(871, 47, 466, '2020-11-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(872, 47, 467, '2020-12-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(873, 47, 467, '2020-12-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(874, 47, 468, '2021-01-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(875, 47, 468, '2021-01-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(876, 47, 469, '2021-02-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(877, 47, 469, '2021-02-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(878, 47, 470, '2021-03-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(879, 47, 470, '2021-03-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(880, 47, 471, '2021-04-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(881, 47, 471, '2021-04-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(882, 47, 472, '2021-05-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(883, 47, 472, '2021-05-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(884, 47, 473, '2021-06-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(885, 47, 473, '2021-06-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(886, 47, 474, '2021-07-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(887, 47, 474, '2021-07-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(888, 47, 475, '2021-08-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(889, 47, 475, '2021-08-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(890, 47, 476, '2021-09-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(891, 47, 476, '2021-09-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(892, 47, 477, '2021-10-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(893, 47, 477, '2021-10-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(894, 47, 478, '2021-11-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(895, 47, 478, '2021-11-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(896, 47, 479, '2021-12-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(897, 47, 479, '2021-12-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(898, 47, 480, '2022-01-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(899, 47, 480, '2022-01-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(900, 47, 481, '2022-02-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(901, 47, 481, '2022-02-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(902, 47, 482, '2022-03-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(903, 47, 482, '2022-03-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(904, 47, 483, '2022-04-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(905, 47, 483, '2022-04-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(906, 47, 484, '2022-05-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(907, 47, 484, '2022-05-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(908, 47, 485, '2022-06-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(909, 47, 485, '2022-06-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(910, 47, 486, '2022-07-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(911, 47, 486, '2022-07-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(912, 47, 487, '2022-08-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(913, 47, 487, '2022-08-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(914, 47, 488, '2022-09-10', 'Principal', '0', 1041.67, '', '', '', '', 'Active', '', '', 0, 0),
(915, 47, 488, '2022-09-10', 'Interest', '0', 250.00, '', '', '', '', 'Active', '', '', 0, 0),
(916, 47, 465, '2020-09-10', 'Payment', '78', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"654\";}', 'Active', '', '', 0, 0),
(917, 47, 466, '2020-09-10', 'Payment', '79', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567894567890\";i:3;s:7:\"2021-01\";i:4;s:3:\"598\";}', 'Active', '', '', 0, 0),
(918, 47, 467, '2020-09-10', 'Payment', '80', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567894567890\";i:3;s:7:\"2021-01\";i:4;s:3:\"598\";}', 'Active', '', '', 0, 0),
(919, 47, 468, '2020-09-10', 'Payment', '81', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"654\";}', 'Active', '', '', 0, 0),
(920, 47, 469, '2020-09-10', 'Payment', '82', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"654\";}', 'Active', '', '', 0, 0),
(921, 47, 470, '2020-09-10', 'Payment', '84', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567894567890\";i:3;s:7:\"2021-01\";i:4;s:3:\"598\";}', 'Active', '', '', 0, 0),
(922, 47, 471, '2020-09-10', 'Payment', '83', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567894567890\";i:3;s:7:\"2021-01\";i:4;s:3:\"598\";}', 'Active', '', '', 0, 0),
(923, 47, 472, '2020-09-10', 'Payment', '85', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"654\";}', 'Active', '', '', 0, 0),
(924, 47, 473, '2020-09-10', 'Payment', '86', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"654\";}', 'Active', '', '', 0, 0),
(925, 47, 474, '2020-09-10', 'Payment', '87', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567894567890\";i:3;s:7:\"2021-01\";i:4;s:3:\"598\";}', 'Active', '', '', 0, 0),
(926, 47, 475, '2020-09-10', 'Payment', '88', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567894567890\";i:3;s:7:\"2021-01\";i:4;s:3:\"598\";}', 'Active', '', '', 0, 0),
(927, 47, 476, '2020-09-10', 'Payment', '89', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"654\";}', 'Active', '', '', 0, 0),
(928, 47, 477, '2020-09-10', 'Payment', '90', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"654\";}', 'Active', '', '', 0, 0),
(929, 47, 478, '2020-09-10', 'Payment', '91', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567894567890\";i:3;s:7:\"2021-01\";i:4;s:3:\"598\";}', 'Active', '', '', 0, 0),
(930, 47, 479, '2020-09-10', 'Payment', '92', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567894567890\";i:3;s:7:\"2021-01\";i:4;s:3:\"598\";}', 'Active', '', '', 0, 0),
(931, 47, 480, '2020-09-10', 'Payment', '93', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567894567890\";i:3;s:7:\"2021-01\";i:4;s:3:\"598\";}', 'Active', '', '', 0, 0),
(932, 47, 481, '2020-09-10', 'Payment', '94', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567894567890\";i:3;s:7:\"2021-01\";i:4;s:3:\"598\";}', 'Active', '', '', 0, 0),
(933, 47, 482, '2020-09-10', 'Payment', '95', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"654\";}', 'Active', '', '', 0, 0),
(934, 47, 483, '2020-09-10', 'Payment', '96', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:7:\"pruthvi\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2020-11\";i:4;s:3:\"654\";}', 'Active', '', '', 0, 0),
(935, 47, 484, '2020-09-10', 'Payment', '97', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567894567890\";i:3;s:7:\"2021-01\";i:4;s:3:\"598\";}', 'Active', '', '', 0, 0),
(936, 47, 485, '2020-09-10', 'Payment', '98', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567894567890\";i:3;s:7:\"2021-01\";i:4;s:3:\"598\";}', 'Active', '', '', 0, 0),
(937, 47, 486, '2020-09-10', 'Payment', '99', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"492\";}', 'Active', '', '', 0, 0),
(938, 47, 487, '2020-09-10', 'Payment', '100', 1291.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234567890123456\";i:3;s:7:\"2021-01\";i:4;s:3:\"159\";}', 'Active', '', '', 0, 0),
(939, 47, 488, '2020-09-10', 'Payment', '101', 10.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1234568789012345\";i:3;s:7:\"2021-01\";i:4;s:3:\"159\";}', 'Active', '', '', 0, 0),
(943, 47, 488, '2020-09-10', 'Payment', '102', 1281.00, 'VISA', '', '', 'a:5:{i:0;s:4:\"VISA\";i:1;s:14:\"Ankith K Desai\";i:2;s:16:\"1478529631147852\";i:3;s:7:\"2020-12\";i:4;s:3:\"596\";}', 'Active', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ltyp_loantypes`
--

CREATE TABLE `ltyp_loantypes` (
  `ltyp_id` int(10) NOT NULL,
  `ltyp_loantype` varchar(25) NOT NULL,
  `ltyp_icon` varchar(100) NOT NULL,
  `min_loanamt` double NOT NULL,
  `max_loanamt` double NOT NULL,
  `ltyp_maxmonth` int(10) NOT NULL,
  `ltyp_interestperc` float(10,2) NOT NULL,
  `ltyp_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ltyp_loantypes`
--

INSERT INTO `ltyp_loantypes` (`ltyp_id`, `ltyp_loantype`, `ltyp_icon`, `min_loanamt`, `max_loanamt`, `ltyp_maxmonth`, `ltyp_interestperc`, `ltyp_status`) VALUES
(4, 'Personal Loan', '566243100Personal Loan.jpg', 10000, 300000, 24, 12.00, 'Active'),
(5, 'Payday Loans', '781381647Payday Loans.jpg', 1000, 25000, 1, 30.00, 'Active'),
(6, 'Business loan', '26566business-loan-online.png', 15000, 1500000, 30, 18.00, 'Active'),
(7, 'Home Loan', '989656651Home Loan.jpg', 150000, 1500000, 15, 16.00, 'Active'),
(8, 'Education loan', '930332563Education loan.jpg', 100000, 1000000, 30, 14.00, 'Active'),
(9, 'Vehicle Loan', '565063197vehicle loan.jpg', 50000, 5000000, 30, 15.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `usr_user`
--

CREATE TABLE `usr_user` (
  `usr_id` int(10) NOT NULL,
  `usr_name` varchar(25) NOT NULL,
  `usr_login_id` varchar(25) NOT NULL,
  `usr_password` varchar(150) NOT NULL,
  `usr_contact` varchar(15) NOT NULL,
  `usr_emailid` varchar(100) NOT NULL,
  `usr_note` text NOT NULL,
  `usr_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usr_user`
--

INSERT INTO `usr_user` (`usr_id`, `usr_name`, `usr_login_id`, `usr_password`, `usr_contact`, `usr_emailid`, `usr_note`, `usr_status`) VALUES
(1, 'admin rajas', 'admin', 'admin', '78945612530', 'admin@gmail.com', 'Super Admin Record', 'Active'),
(2, 'Akash kumar', 'akashkumar', 'akashkumar', '78945612531', 'rajajrajaj@gmail.com', 'New record', 'Active'),
(4, 'Mahesh', 'mahesh', '123456789', '9874561230', 'mahesh@gmail.com', 'This is test record for user note', 'Active'),
(6, 'Aravinda MV', 'karna', '123456789', '78945614230', 'raja@gmail.com', 'Hello raja', 'Active'),
(7, 'Iliyas', 'iliyas', '123456789', '9874563321', 'iliyas@gmail.com', 'Iliyas Account', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `creditscore`
--
ALTER TABLE `creditscore`
  ADD PRIMARY KEY (`creditscore_id`);

--
-- Indexes for table `cst_customer`
--
ALTER TABLE `cst_customer`
  ADD PRIMARY KEY (`cst_id`),
  ADD UNIQUE KEY `cst_email` (`cst_email`);

--
-- Indexes for table `dpmt_delaypayment`
--
ALTER TABLE `dpmt_delaypayment`
  ADD PRIMARY KEY (`dpmt_id`);

--
-- Indexes for table `lacc_loanaccount`
--
ALTER TABLE `lacc_loanaccount`
  ADD PRIMARY KEY (`lacc_id`);

--
-- Indexes for table `lins_loaninstallment`
--
ALTER TABLE `lins_loaninstallment`
  ADD PRIMARY KEY (`lins_id`);

--
-- Indexes for table `lpf_loanprocessingfee`
--
ALTER TABLE `lpf_loanprocessingfee`
  ADD PRIMARY KEY (`lpf_id`);

--
-- Indexes for table `ltr_loantransaction`
--
ALTER TABLE `ltr_loantransaction`
  ADD PRIMARY KEY (`ltr_id`);

--
-- Indexes for table `ltyp_loantypes`
--
ALTER TABLE `ltyp_loantypes`
  ADD PRIMARY KEY (`ltyp_id`);

--
-- Indexes for table `usr_user`
--
ALTER TABLE `usr_user`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `creditscore`
--
ALTER TABLE `creditscore`
  MODIFY `creditscore_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cst_customer`
--
ALTER TABLE `cst_customer`
  MODIFY `cst_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `dpmt_delaypayment`
--
ALTER TABLE `dpmt_delaypayment`
  MODIFY `dpmt_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lacc_loanaccount`
--
ALTER TABLE `lacc_loanaccount`
  MODIFY `lacc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `lins_loaninstallment`
--
ALTER TABLE `lins_loaninstallment`
  MODIFY `lins_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT for table `lpf_loanprocessingfee`
--
ALTER TABLE `lpf_loanprocessingfee`
  MODIFY `lpf_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ltr_loantransaction`
--
ALTER TABLE `ltr_loantransaction`
  MODIFY `ltr_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=944;

--
-- AUTO_INCREMENT for table `ltyp_loantypes`
--
ALTER TABLE `ltyp_loantypes`
  MODIFY `ltyp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usr_user`
--
ALTER TABLE `usr_user`
  MODIFY `usr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
