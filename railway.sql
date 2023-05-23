-- phpMyAdmin SQL Dump
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2021 at 14:42 PM
-- Server version: 3.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rail`
--

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE IF NOT EXISTS passengers (
  p_id int(30) NOT NULL AUTO_INCREMENT,
  p_fname varchar(30) DEFAULT NULL,
  p_lname varchar(30) DEFAULT NULL,
  p_age varchar(30) DEFAULT NULL,
  p_contact varchar(20) DEFAULT NULL,
  p_gender varchar(30) DEFAULT NULL,
  email varchar(30) NOT NULL,
  password varchar(30) NOT NULL,
  t_no int(11) DEFAULT NULL,
  PRIMARY KEY (p_id),
  UNIQUE KEY p_id (p_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `passengers`
--

INSERT INTO passengers (p_id, p_fname, p_lname, p_age, p_phone, p_gender, email, password, t_no) VALUES
(1, 'Praveen', 'Patil', '20', '8983729909', 'Male', 'praveenpatil@gmail.com', '903jks92', 34561),
(2, 'Menaka', 'Hosuru', '29', '9832109837', 'Female', 'Menaka123@llt.in', 'kjak9Ajer', NULL),
(3, 'Chanchala', 'Kumari', '56','9876898510', 'Female', 'Chanchin@gmail.com', '987uiL09', NULL),
(4, 'Sakshi', 'Shekar', '42', '8734298473', 'Female', 'sakshisakku@llt.in', 'li83dkdh6y', NULL),
(5, 'Ankitha', 'Singh', '20', '8974321984', 'Female', 'kumariankitha@gmail.com', 'ankitha234', 31456),
(6, 'Omkar', 'Raj', '20', '9833255498', 'Male', 'omkarraj@dypatil.ac.in', 'dypatilstudent', 31456),
(7, 'Ananya', 'M B', '14', '8937288390', 'Female', 'ananyamb@gmail.com', 'ananyamb123', 31456),
(8, 'Pareekshith', 'Pal', '56', '9983321110', 'Male', 'Papakipari@gmail.com', 'angelpriya', 16205);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS staff (
  s_id int(11) NOT NULL AUTO_INCREMENT,
  s_fname varchar(10) DEFAULT NULL,
  s_lname varchar(10) DEFAULT NULL,
  s_department varchar(20) NOT NULL,
  s_salary int(11) DEFAULT NULL,
  PRIMARY KEY (s_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `passengers`
--

INSERT INTO staff (s_id, s_fname, s_lname, s_department, s_salary) VALUES
(001, 'Bharath','Singh', 'Engineering', 50000),
(002, 'Kamala', 'Roopini', 'Signal maintenance', 30000),
(003, 'Menaka', 'Dattatreya', 'Accounts', 45000),
(004, 'Suresh', 'Kumar', 'Telecommunication', 30000),
(005, 'Govind', 'Mehta', 'Mechanical', 40000),
(006, 'Binod', 'Acharya', 'Managment', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE IF NOT EXISTS station (
  s_no int(11) NOT NULL,
  s_name varchar(20) DEFAULT NULL,
  s_no_of_platforms varchar(20) DEFAULT NULL,
  PRIMARY KEY (s_no)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station`
--

INSERT INTO station (s_no, s_name, s_no_of_platforms) VALUES
(1, 'Mandya', '6'),
(2, 'Patna Junction', '10'),
(3, 'Mysuru', '8'),
(4, 'Hyderabad', '11'),
(5, 'Bangaluru', '12'),
(6, 'Sasaram', '9'),
(7,'Faridabad', '10'),
(8, 'Habra', '6'),
(9, 'Ajmer', '6'),
(10, 'Tirupati','12'),
(11, 'Chennai', '11');

-- --------------------------------------------------------
--
-- Table structure for table `trains`
--

CREATE TABLE IF NOT EXISTS trains (
  t_no decimal(5,0) NOT NULL,
  t_name varchar(30) DEFAULT NULL,
  t_source varchar(30) DEFAULT NULL,
  t_destination varchar(30) DEFAULT NULL,
  t_type varchar(30) DEFAULT NULL,
  t_status varchar(20) DEFAULT 'On time',
  no_of_seats int(11) DEFAULT NULL,
  t_duration int(11) DEFAULT NULL,
  tr_fare int(11) DEFAULT NULL,
  PRIMARY KEY (t_no)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trains`
--

INSERT INTO trains (t_no, t_name, t_source, t_destination, t_type, t_status, no_of_seats, t_duration, tr_fare) VALUES
(16205, 'Ajanta', 'Manmad', 'Secunderabad', 'Express', 'On time', 550, 20, 345),
(34561, 'Pushpak', 'Lucknow', 'Mumbai CST', 'Express', 'On time', 800, 24, 567),
(12859, 'Karnataka', 'Bengaluru', 'New Delhi', 'Express', 'On time', 500, 25, 678),
(12951, 'Rajdhani', 'Mumbai Central', 'Delhi', 'Superfast', 'On time', 700, 15, 234),
(31456, 'Mysore Express', 'Mysuru', 'Bengaluru', 'Express', 'On time', 565, 21, 650),
(87623, 'Taj Express', 'Hazrat Nizamuddin', 'Jhansi', 'Express', 'On time', 245, 10, 456),
(77986, 'Tippu Express', 'Bengaluru', 'Mysuru', 'Express', 'On time', 565, 20, 156),
(34565, 'Gujarat Mail', 'Ahmedabad', 'Mumbai Central', 'Passenger', 'On time', 335, 13, 675),
(56787, 'Deccan Express', 'Mumbai', 'Pune', 'Express', 'On time', 415, 15, 734),
(78987, 'Ananya Express', 'Sealdas', 'Udaipur', 'Express', 'On time', 330, 9, 785),
(66723, 'Gomti Express', 'Lucknow NR', 'New Delhi', 'Express', 'On time', 665, 5, 245),
(98734, 'Jan Shatabdi', 'Patna', 'Rachi', 'Super fast', 'On time', 600, 25, 950),
(88432, 'Shanthi Express', 'Indore', 'Ghandhi Nagar Capital', 'Express', 'On time', 700, 16, 123),
(67345, 'Udyan Express', 'Mumbai CST', 'Bengaluru', 'Express', 'On time', 450, 25, 898),
(78362, 'West Coast Express', 'Chennai', 'Mangaluru', 'Express', 'On time', 345, 26, 983),
(87345, 'Sanghamitra', 'Bengaluru', 'Patna', 'Super fast Express', 'On time', 600, 30, 837),
(67321, 'Poorna Express', 'Ernakulam', 'Pune', 'Express', 'On time', 600, 25, 971),
(88765, 'Hussain Tawar Express', 'Hyderabad', 'Mumbai', 'Express', 'On time', 445, 28, 780),
(33454, 'Gyan Ganga', 'Pune', 'Darbhanga', 'Passenger', 'On time', 445, 30, 990);



CREATE TABLE IF NOT EXISTS bookings (
  PNR decimal(10,0) NOT NULL,
  t_status varchar(20) NOT NULL DEFAULT 'Waiting',
  t_fare int(11) DEFAULT NULL,
  p_id int(20) NOT NULL,
  UNIQUE KEY PNR (PNR)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data for table `tickets`
--

INSERT INTO bookings (PNR, t_status, t_fare, p_id) VALUES
(8056124359, 'Confirmed', 650, 5),
(8851599875, 'Confirmed', 567, 1),
(7934523789, 'Confirmed', 650, 7),
(6735276547, 'Confirmed', 650, 6),
(7648372847, 'Confirmed', 345, 8);





/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
