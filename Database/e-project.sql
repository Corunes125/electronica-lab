-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 10:09 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `criptbl`
--

CREATE TABLE `criptbl` (
  `crip_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `crip_remarks` varchar(255) NOT NULL,
  `crip_result` varchar(255) NOT NULL DEFAULT 'Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `criptbl`
--

INSERT INTO `criptbl` (`crip_id`, `product_id`, `crip_remarks`, `crip_result`) VALUES
(1, 'PRO_44398_1', 'product is so good', 'send'),
(2, 'PRO_55105_5', 'product is not market compatible', 'reture'),
(3, 'PRO_46531_3', 'excellent quality Headset', 'send'),
(4, 'PRO_11623_2', 'doorbell is good', 'send'),
(5, 'PRO_99325_6', 'Market compatible Product', 'send');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_desc` varchar(50) NOT NULL,
  `p_img` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_id`, `p_name`, `p_price`, `p_desc`, `p_img`, `status`) VALUES
(1, 'PRO_44398_1', 'curling iron', 3500, 'My curling iron always blows a fuse.', '61vLr9xIQ7L._SL1500_.jpg', 'sending'),
(2, 'PRO_11623_2', 'smart doorbell camera ', 5000, 'A smart doorbell camera guards your front doorstep', 'image.jpg', 'sending'),
(3, 'PRO_46531_3', 'Headset', 1500, 'The headset, which has a 6-foot cable, plugs into ', 'Gaming-Headset.jpg', 'sending'),
(4, 'PRO_29284_4', 'Projector', 8000, 'used an overhead projector to illustrate her talk.', '61JfRdgFMRL._AC_SY450_.jpg', 'sending'),
(5, 'PRO_55105_5', 'Rice cooker', 2000, 'Our products cover rice cooker, roaster oven, enam', 'Rice-cooker-01.jpeg', 'sending'),
(6, 'PRO_99325_6', 'Robotic vacuum cleaner', 12000, 'A robotic vacuum cleaner often called a Roomba as ', 'A robotic vacuum cleaner.jpeg', 'sending'),
(184, 'PRO_82798_184', 'Electric stove', 2500, 'What is the power of this electric stove?', 'portable-electric-stove-black.jpg', 'pending'),
(185, 'PRO_39940_185', 'Oil-free fryer', 15000, 'bought an oil-free fryer to cook healthily', 'Proscenic-T22-Oil-Free-Air-Fryer-478408-0.jpg', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `srstbl`
--

CREATE TABLE `srstbl` (
  `srs_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `srs_result` varchar(255) NOT NULL DEFAULT 'Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `srstbl`
--

INSERT INTO `srstbl` (`srs_id`, `product_id`, `remarks`, `srs_result`) VALUES
(1, 'PRO_44398_1', 'product is good', 'pass'),
(2, 'PRO_11623_2', 'product is failure', 'pass'),
(18, 'PRO_46531_3', 'product is good', 'pass'),
(19, 'PRO_55105_5', 'product is very good', 'fail'),
(20, 'PRO_29284_4', 'product is fail', 'Default'),
(21, 'PRO_99325_6', 'Robotic Vacuum Cleaner in so good', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_type` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `status`, `role_type`, `photo`) VALUES
(1, 'Muhammad Fahad', 'crip@gmail.com', 'f38f00dfbd05fd3ea2da3191b37f5720d280e58b', 'connected', 'crip', 'profile/1652507040.jpg'),
(2, 'Muhammad Taha', 'ali@gmail.com', 'e697ef18d3fa82e0fcd427a989a86c694b547c64', 'connected', 'admin', 'profile/1652647933.jpg'),
(3, 'Amna', 'srs@gmail.com', 'd3583d2cd52c6032dd97fff2f442739d44074a79', 'connected', 'srs', 'profile/1652507552.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `criptbl`
--
ALTER TABLE `criptbl`
  ADD PRIMARY KEY (`crip_id`),
  ADD KEY `crip-testing_fk` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Indexes for table `srstbl`
--
ALTER TABLE `srstbl`
  ADD PRIMARY KEY (`srs_id`),
  ADD KEY `srs_fk` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `criptbl`
--
ALTER TABLE `criptbl`
  MODIFY `crip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `srstbl`
--
ALTER TABLE `srstbl`
  MODIFY `srs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `criptbl`
--
ALTER TABLE `criptbl`
  ADD CONSTRAINT `crip-testing_fk` FOREIGN KEY (`product_id`) REFERENCES `srstbl` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `srstbl`
--
ALTER TABLE `srstbl`
  ADD CONSTRAINT `srs_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
