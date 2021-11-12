-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 11, 2021 at 10:38 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ktron bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(100) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Prosenjit', 'alphadas@gmail.com', 50007),
(2, 'Kamal', 'kamal5@gmail.com', 30021),
(3, 'Namami', 'namamishah@gmail.com', 39977),
(4, 'Priyanka', 'priyanka12@gmail.com', 10297),
(5, 'Shobhit', 'shobhitjain@gmail.com', 40147),
(6, 'Ram', 'singhram@gmail.com', 19985),
(7, 'Deepak', 'deepak1298@gmail.com', 49991),
(8, 'Juhi', 'sharmajuhi99@gmail.com', 39958),
(9, 'Naman', 'dixitnaman88@gmail.com', 30000),
(10, 'Tapan', 'tapan4@gmail.com', 49946);

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetails`
--

CREATE TABLE `transactiondetails` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactiondetails`
--

INSERT INTO `transactiondetails` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(2, 'prosenjit', 'Deepak', 9, '2021-04-08 18:08:56'),
(3, 'Namami', 'Juhi', 100, '2021-04-08 14:55:43'),
(4, 'Ram', 'Tapan', 1, '2021-04-08 14:58:55'),
(5, 'prosenjit', 'Kamal', 5000, '2021-06-03 21:49:16'),
(6, 'Kamal', 'prosenjit', 5000, '2021-06-05 20:41:06'),
(7, 'prosenjit', 'Kamlesh', 5000, '2021-06-05 23:34:40'),
(8, 'Kamal', 'prosenjit', 5000, '2021-06-06 10:42:24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
