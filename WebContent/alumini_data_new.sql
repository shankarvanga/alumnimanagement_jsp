-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 13, 2010 at 12:31 PM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alumini_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE IF NOT EXISTS `admin_details` (
  `id` int(10) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_pass` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `admin_name`, `admin_pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `alumni_details`
--

CREATE TABLE IF NOT EXISTS `alumni_details` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `yop` varchar(10) NOT NULL,
  `add1` varchar(200) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mob` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `alumni_details`
--

INSERT INTO `alumni_details` (`id`, `name`, `pass`, `branch`, `yop`, `add1`, `email`, `mob`) VALUES
(3, 'Arun Patil', 'seed123', 'IT', '1985', 'sadsd', '4565555444', 'arun@gmail.com'),
(5, 'Bhushan', 'bhushan', 'Computer', '1980', 'dsdsds-1', 'bhushan@gmail.com', '908890889');

-- --------------------------------------------------------

--
-- Table structure for table `alu_msg_details`
--

CREATE TABLE IF NOT EXISTS `alu_msg_details` (
  `id` int(10) NOT NULL auto_increment,
  `sid` int(10) NOT NULL,
  `rid` int(10) NOT NULL,
  `msg` varchar(250) NOT NULL,
  `date` varchar(20) NOT NULL,
  `fro` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `alu_msg_details`
--

INSERT INTO `alu_msg_details` (`id`, `sid`, `rid`, `msg`, `date`, `fro`) VALUES
(4, 3, 5, 'Hi Bhushan\r\nThis is Arun', '2010-03-13 17:58:34', 'Arun Patil');

-- --------------------------------------------------------

--
-- Table structure for table `friend_list`
--

CREATE TABLE IF NOT EXISTS `friend_list` (
  `sno` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `u_type` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_list`
--

INSERT INTO `friend_list` (`sno`, `u_id`, `f_id`, `u_type`) VALUES
(1, 1, 2, 'S'),
(2, 1, 3, 'S');

-- --------------------------------------------------------

--
-- Table structure for table `invitation`
--

CREATE TABLE IF NOT EXISTS `invitation` (
  `id` int(10) NOT NULL auto_increment,
  `heading` varchar(40) NOT NULL,
  `msg` varchar(250) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `invitation`
--

INSERT INTO `invitation` (`id`, `heading`, `msg`, `date`) VALUES
(1, 'call to function', 'calling all to function', '2010-02-24 22:04:50'),
(2, 'Smandan 2010', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut. Lorem ', '2010-02-26 18:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `msg_details`
--

CREATE TABLE IF NOT EXISTS `msg_details` (
  `id` int(10) NOT NULL auto_increment,
  `sid` int(10) NOT NULL,
  `rid` int(10) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `date` varchar(30) NOT NULL,
  `fro` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `msg_details`
--

INSERT INTO `msg_details` (`id`, `sid`, `rid`, `msg`, `date`, `fro`) VALUES
(7, 1, 5, 'Hi Anop.\r\nWhere r u?\r\n', '2010-03-13 13:00:39', 'Bhushan');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE IF NOT EXISTS `student_details` (
  `sid` int(10) NOT NULL auto_increment,
  `s_name` varchar(40) NOT NULL,
  `s_pass` varchar(25) NOT NULL,
  `branch_name` varchar(20) NOT NULL,
  `year` varchar(5) NOT NULL,
  `s_address` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `is_lock` varchar(1) NOT NULL,
  `is_login` varchar(1) NOT NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`sid`, `s_name`, `s_pass`, `branch_name`, `year`, `s_address`, `mobile`, `email`, `is_lock`, `is_login`) VALUES
(1, 'Bhushan', 'seed123', 'Computer', '1', '290 Shanoi  peth, Jalgaon', '9098787675', 'bhushan@gmail.com', 'N', 'N'),
(5, 'Anoop', 'anup', 'Computer', '1', 'dasdas', '909098899', 'anup@gmail.com', 'N', 'N'),
(3, 'Sachin', 'seed123', 'Computer', '3', '290 shani peth, Dhule', '9098787675', 'sachin@gmail.com', 'N', 'N');
