-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2023 at 11:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oahmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898989, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-05-23 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Email`, `Phone`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Manu', 'Sharma', 'manu@gmail.com', 9879879879, 'Tell me fee of play school', '2021-11-01 04:53:55', 1),
(2, 'Anuj', 'Kumar', 'ak@gmail.com', 1234567890, 'test', '2021-11-09 17:42:29', 1),
(3, 'kjhkjh', 'kjhkjh', 'gh@gmao.com', 6879879879, 'hjghgjhgjhghjghjgj ', '2022-05-27 10:45:14', 1),
(4, 'Anuj', 'Kumar', 'ak@gmail.coim', 1425362514, 'New test emssage ', '2022-06-05 09:43:45', 1),
(5, 'Milan', 'poudel', 'MILAN@gmail.com', 9875555555, ' \r\n.n vhdbvx, hssvabhegmmnchdbdnm ', '2023-09-15 16:37:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbldoctor`
--

CREATE TABLE `tbldoctor` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldoctor`
--

INSERT INTO `tbldoctor` (`id`, `name`, `username`, `password`) VALUES
(1, 'Doctor', 'doctor', 'doctor@123');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: center;\"><font color=\"#202124\" size=\"4\" face=\"georgia\"><b style=\"\">Old Age Home Management System!!</b></font></div><div style=\"text-align: center;\"><font color=\"#202124\" size=\"4\" face=\"georgia\"><b style=\"\"><br></b></font></div><div style=\"text-align: justify;\"><font face=\"georgia\"><font color=\"#202124\" size=\"4\" style=\"\">We care of our Elders.That is why we are here to help you and your loved ones facing difficulty in going about their daily routines. The elderly of the house need constant attention and care post-surgery or during the recuperating period. You cannot stay by their side every day, and there is nowhere else they would rather be than in the comforts of their home</font><font size=\"4\" style=\"\"><span style=\"color: rgb(122, 122, 122); text-align: justify;\">.</span></font></font></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'Bharatpur-11 chitwan, Nepal', 'milanpoudel@gmail.com', 9999999999, NULL, '10:30 am to 7:30 pm'),
(3, 'rules', 'Rules', '<div class=\"wpb_row vc_row-fluid vc_custom_1415091130045\" style=\"box-sizing: inherit; font-family: Asap, sans-serif; font-size: 14px;\"><div class=\"vc_col-sm-12 wpb_column column_container\" style=\"box-sizing: inherit;\"><div class=\"wpb_wrapper\" style=\"box-sizing: inherit;\"><div class=\"wpb_text_column wpb_content_element \" style=\"box-sizing: inherit;\"><div class=\"wpb_wrapper\" style=\"box-sizing: inherit;\"><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px;\"><li style=\"text-align: left; box-sizing: inherit;\"><font color=\"#000000\">Firearms and weapons are not allowed in premises.</font></li><li style=\"text-align: left; box-sizing: inherit;\"><font color=\"#000000\">Keeping pets are not allowed in premises .</font></li><li style=\"text-align: left; box-sizing: inherit;\"><font color=\"#000000\">Non Vegetarian Food is Prohibited</font></li><li style=\"text-align: left; box-sizing: inherit;\"><font color=\"#000000\">All residents shall maintain discipline and ensure that other residents are not disturbed by their any act.</font></li><li style=\"text-align: left; box-sizing: inherit;\"><font color=\"#000000\">our minimum lock in period is six month and after six month if discharge require than minimum two month notice require for refund of security.</font></li></ul></div></div></div></div></div><div class=\"wpb_row vc_row-fluid vc_custom_1415091139991\" style=\"box-sizing: inherit; font-family: Asap, sans-serif; font-size: 14px;\"><div class=\"vc_col-sm-12 wpb_column column_container\" style=\"box-sizing: inherit;\"><div class=\"wpb_wrapper\" style=\"box-sizing: inherit;\"><div id=\"section-14-1416982836\" class=\" dt-section-head left size-default\" style=\"box-sizing: inherit;\"><h4 class=\"section-main-title\" style=\"text-align: left; box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 600; font-size: 18px;\"><font color=\"#000000\">Rules for Visitors</font></h4><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px;\"><li style=\"text-align: left; box-sizing: inherit;\"><font color=\"#000000\">Visiting hours for the guest will be from 10am to 6pm , Only identified guests are allowed inside the home.</font></li><li style=\"text-align: left; box-sizing: inherit;\"><font color=\"#000000\">Guests are not allowed to stay overnight in their residentâ€™s without the permission from the management.</font></li></ul><h3 class=\"section-main-title\" style=\"text-align: left; box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-weight: 600; font-size: 20px;\"><font color=\"#000000\">In case of Emergency / Mishappening</font></h3></div><div class=\"wpb_text_column wpb_content_element \" style=\"box-sizing: inherit;\"><div class=\"wpb_wrapper\" style=\"box-sizing: inherit;\"><p align=\"justify\" style=\"text-align: left; box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><font color=\"#000000\">In case of any mishappening or any emergency situation with any resident, the management shall take steps to intimate the relatives/ next of kin immediately. We will also take the necessary steps as per the protocol to control the situation in safe and respected manner.</font></p></div></div></div></div></div>', NULL, NULL, NULL, ''),
(4, 'eligibility', 'Eligibility', '<h6><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; font-size: 14px;\"><li style=\"box-sizing: inherit;\"><font color=\"#000000\" style=\"\" face=\"georgia\">Minimum Age Required is 60 years.</font></li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; font-size: 14px;\"><li style=\"box-sizing: inherit;\"><font color=\"#000000\" face=\"georgia\">The resident should be Mentally Fit.</font></li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; font-size: 14px;\"><li style=\"box-sizing: inherit;\"><font color=\"#000000\" face=\"georgia\">The resident should not be suffering from any infectious or transferable disease.</font></li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; font-size: 14px;\"><li style=\"box-sizing: inherit;\"><font color=\"#000000\" face=\"georgia\">Nationality: Citizenship certificate for the Nepali Citizen</font></li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; font-size: 14px;\"><li style=\"box-sizing: inherit;\"><font color=\"#000000\" style=\"\" face=\"georgia\">A copy of the passport with visa for the foreign national.</font></li></ul></h6>', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblseniorcitizen`
--

CREATE TABLE `tblseniorcitizen` (
  `ID` int(5) NOT NULL,
  `RegistrationNumber` int(10) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `DateofBirth` date DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `CommunicationAddress` mediumtext DEFAULT NULL,
  `ProfilePic` varchar(250) DEFAULT NULL,
  `EmergencyAddress` mediumtext DEFAULT NULL,
  `EmergencyContactnumber` bigint(10) DEFAULT NULL,
  `AddedBy` varchar(100) DEFAULT NULL,
  `RegitrationDate` timestamp NULL DEFAULT current_timestamp(),
  `Health` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblseniorcitizen`
--

INSERT INTO `tblseniorcitizen` (`ID`, `RegistrationNumber`, `Name`, `DateofBirth`, `ContactNumber`, `CommunicationAddress`, `ProfilePic`, `EmergencyAddress`, `EmergencyContactnumber`, `AddedBy`, `RegitrationDate`, `Health`) VALUES
(7, 956485641, 'Milan Poudel', '1966-05-05', 9898989898, 'Bharatpur 12', 'd0096ec6c83575373e3a21d129ff8fef1694959798.jpg', 'Bharatpur 12', 986574123, 'admin', '2023-09-17 14:09:58', NULL),
(8, 625949710, 'ram', '1966-12-12', 9898989898, 'tandi', 'edab7ba7e203cd7576d1200465194ea81694981256.jpg', 'tandi', 98989898, 'admin', '2023-09-17 20:07:36', NULL),
(9, 711829654, 'hari', '1955-10-10', 123456789, '<br>', 'f3ccdd27d2000e3f9255a7e3e2c488001695958505.jpg', 'kalika 3', 123456789, 'admin', '2023-09-29 03:35:05', NULL),
(10, 469037497, 'kumar', '1950-01-01', 9865321477, 'tandi 12', 'f3ccdd27d2000e3f9255a7e3e2c488001695959000.jpg', 'tandi 12', 986574123, 'admin', '2023-09-29 03:43:20', NULL),
(11, 475225842, 'rambo', '1947-01-01', 9898989898, 'kalika 10', '18e2999891374a475d0687ca9f989d831695959314.jpg', 'kalika 10', 986574123, 'admin', '2023-09-29 03:48:34', 'HIV');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(5) NOT NULL,
  `ServiceTitle` varchar(250) DEFAULT NULL,
  `ServiceDescription` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceTitle`, `ServiceDescription`, `CreationDate`) VALUES
(1, 'Security Facilities', '<p align=\"justify\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 14px;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">Safety and security is an important responsibility of management, Old Age Home Bharatpur is well equiped with all safety and security features to provide safe and secure environment to the residents.</font></span></p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(153, 153, 153); font-size: 14px;\"><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">Emergency Alarm System.</font></span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">24Ã—7 well trained security Guard.</font></span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">CCTV Coverage of entire Building.</font></span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">Fire Alarm System &amp; Fire Extinguisher Available</font></span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">Emergency Button in all Rooms and Washrooms</font><font face=\"Asap, sans-serif\">.</font></span></li></ul>', '2022-05-26 06:22:10'),
(2, 'Medical Facilities', '<p align=\"justify\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 14px;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">Depending on the level of care required, our compassionate and caring staff provides around-the-clock personal care, assists with medical needs, health and exercise and also facilitates strong social connections. Our healthcare center is well-stocked with medicines and equipped to administer First Aid for most emergencies. Old Age Home Bharatpur provides the basic medical needs to the residents.</font></span></p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(153, 153, 153); font-size: 14px;\"><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">24Ã—7 Ambulance Facility</font></span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">Nurses available</font></span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">Doctors available</font></span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">Emergency care equipment available</font></span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">Physiotherapy &amp; Personal Care Assistance</font></span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">Wheel Chair Assistance.</font></span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">House Attendant</font></span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\"><font face=\"georgia\">Naturopathy.</font></span></li></ul>', '2022-05-26 06:22:52'),
(3, 'House Keeping Facilities', '<span style=\"color: rgb(0, 0, 0); font-size: 14px;\"><font face=\"georgia\">We have professionally trained, courteous housekeeping staff experienced in elderly care keeping, rather than just housekeeping. They are responsible for maintaining cleanliness of all living units as well as the common areas and to set the highest standard of hygience and sanitation of the facility.</font></span><br>', '2022-05-26 06:26:26'),
(8, 'Laundry', '<font face=\"georgia\" color=\"#000000\">We provide Laundry service as per your requirement. Charges for your personal clothes depend on the consumption and the varieties of the clothes.</font>', '2023-09-14 09:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `Fullname` varchar(250) NOT NULL,
  `mobilenumber` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `Fullname`, `mobilenumber`, `email`, `password`) VALUES
(1, 'name', 'phone', 'email@gmail.com', 'password'),
(2, 'Milan', '9898989898', 'Milan12@gmail.com', '123456789'),
(3, 'MIlan poudel', '9812345670', 'poudel@gmail.com', '142536'),
(4, 'MIlan poudel', '9812345670', 'poudel@gmail.com', '142536'),
(5, 'MIlan poudel', '9812345670', 'poudel@gmail.com', '142536'),
(6, 'MIlan poudel', '9812345670', 'poudel@gmail.com', '142536'),
(7, 'MIlan poudel', '9812345670', 'poudel@gmail.com', '142536'),
(8, 'MIlan poudel', '9812345670', 'poudel@gmail.com', '142536'),
(9, 'MIlan poudel', '9812345670', 'poudel@gmail.com', '142536'),
(10, 'MIlan poudel', '9812345670', 'poudel@gmail.com', '142536'),
(11, 'MIlan poudel', '9812345670', 'pritam123@gmail.com', '123456789'),
(12, 'MIlan poudel', '9812345670', 'pritam123@gmail.com', '123456789'),
(13, 'MIlan poudel', '9812345670', 'pritam123@gmail.com', '123456789'),
(14, 'Milan', '9865989898', 'poudel12@gmail.com', 'poudel12'),
(15, 'MIlan poudel', '564231', 'admin@123', '123456'),
(16, 'madan', '986474222', 'madan@gmail.com', 'madan'),
(17, 'milan', '9865321477', 'milan123@gmail.com', 'milan123'),
(18, 'MIlan poudel', '9854', 'email@gmail.com', '123'),
(19, 'MIlan poudel', '123456', 'poudel@gmail.com', '123'),
(20, 'MIlan poudel', '123', 'poudel@gmail.com', '123'),
(21, 'MIlan poudel', '9812345670', 'poudel@gmail.com', 'abc'),
(22, 'pawan', '9812345670', 'pawan@gmail.com', 'pawan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblseniorcitizen`
--
ALTER TABLE `tblseniorcitizen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblseniorcitizen`
--
ALTER TABLE `tblseniorcitizen`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
