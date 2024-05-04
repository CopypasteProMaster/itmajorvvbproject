-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 01:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flasktest`
--
CREATE DATABASE IF NOT EXISTS `flasktest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `flasktest`;

-- --------------------------------------------------------

--
-- Table structure for table `knn`
--

CREATE TABLE `knn` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `filipino` varchar(900) NOT NULL,
  `english` varchar(900) NOT NULL,
  `pe` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `knn`
--

INSERT INTO `knn` (`id`, `name`, `filipino`, `english`, `pe`) VALUES
(22, 'popo', '79 80 80 89', '80 90 78 78', '89 79 79 79'),
(23, 'kopo', '90 90 91 87', '79 80 81 80', '80 87 80 87'),
(24, 'jerard', '80 86 84 88', '80 86 80 90', '90 90 89 89');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `age` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `name`, `age`, `gender`) VALUES
(1, 'popo', '24', 'male'),
(2, 'kopo', '21', 'male'),
(3, 'jerard', '13', 'female'),
(4, 'dom', '12', 'male'),
(5, 'cripspy', '11', 'male'),
(6, 'loar', '9', 'female'),
(7, 'dom', '12', 'male'),
(8, 'cripspy', '11', 'male'),
(9, 'loar', '9', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `subj`
--

CREATE TABLE `subj` (
  `id` int(11) NOT NULL,
  `sub` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subj`
--

INSERT INTO `subj` (`id`, `sub`) VALUES
(1, '90 89 88 77'),
(2, '75 75 75 75'),
(3, '97 96 98 90');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knn`
--
ALTER TABLE `knn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subj`
--
ALTER TABLE `subj`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `knn`
--
ALTER TABLE `knn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subj`
--
ALTER TABLE `subj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `food`
--
CREATE DATABASE IF NOT EXISTS `food` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `food`;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `deleted`) VALUES
(1, 'Item 1', 25, 1),
(2, 'Item 2', 45, 0),
(3, 'Item 3', 20, 0),
(4, 'Item 4', 15, 1),
(5, 'Item 5', 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `payment_type` varchar(16) NOT NULL DEFAULT 'Wallet',
  `total` int(11) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Yet to be delivered',
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `description`, `date`, `payment_type`, `total`, `status`, `deleted`) VALUES
(1, 2, 'Address 2', 'Sample Description 1', '2017-03-28 17:32:41', 'Wallet', 150, 'Yet to be delivered', 0),
(2, 2, 'New address 2', '', '2017-03-28 17:43:05', 'Wallet', 130, 'Cancelled by Customer', 1),
(3, 3, 'Address 3', 'Sample Description 2', '2017-03-28 19:49:33', 'Cash On Delivery', 130, 'Yet to be delivered', 0),
(4, 3, 'Address 3', '', '2017-03-28 19:52:01', 'Cash On Delivery', 130, 'Cancelled by Customer', 1),
(5, 3, 'New Address 3', '', '2017-03-28 20:47:28', 'Wallet', 285, 'Paused', 0),
(6, 3, 'New Address 3', '', '2017-03-30 00:43:31', 'Wallet', 325, 'Cancelled by Customer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`) VALUES
(1, 1, 2, 2, 90),
(2, 1, 3, 3, 60),
(3, 2, 2, 2, 90),
(4, 2, 3, 2, 40),
(5, 3, 2, 2, 90),
(6, 3, 3, 2, 40),
(7, 4, 2, 2, 90),
(8, 4, 3, 2, 40),
(9, 5, 2, 5, 225),
(10, 5, 3, 2, 40),
(11, 5, 5, 1, 20),
(12, 6, 2, 5, 225),
(13, 6, 3, 3, 60),
(14, 6, 5, 2, 40);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'Open',
  `type` varchar(30) NOT NULL DEFAULT 'Others',
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `poster_id`, `subject`, `description`, `status`, `type`, `date`, `deleted`) VALUES
(1, 2, 'Subject 1', 'New Description for Subject 1', 'Answered', 'Support', '2017-03-30 18:08:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_details`
--

CREATE TABLE `ticket_details` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ticket_details`
--

INSERT INTO `ticket_details` (`id`, `ticket_id`, `user_id`, `description`, `date`) VALUES
(1, 1, 2, 'New Description for Subject 1', '2017-03-30 18:08:51'),
(2, 1, 2, 'Reply-1 for Subject 1', '2017-03-30 19:59:09'),
(3, 1, 1, 'Reply-2 for Subject 1 from Administrator.', '2017-03-30 20:35:39'),
(4, 1, 1, 'Reply-3 for Subject 1 from Administrator.', '2017-03-30 20:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL DEFAULT 'Customer',
  `name` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `contact` bigint(11) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `password`, `email`, `address`, `contact`, `verified`, `deleted`) VALUES
(1, 'Administrator', 'Admin 1', 'admin', 'admin', '', 'Address 1', 9898000000, 1, 0),
(2, 'Customer', 'Customer 1', 'user1', 'pass1', 'mail2@example.com', 'Address 2', 9898000001, 1, 0),
(3, 'Customer', 'Customer 2', 'user2', 'pass2', 'mail3@example.com', 'Address 3', 9898000002, 1, 0),
(4, 'Customer', 'Customer 3', 'user3', 'pass3', '', '', 9898000003, 0, 0),
(5, 'Customer', 'Customer 4', 'user4', 'pass4', '', '', 9898000004, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `customer_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_details`
--

CREATE TABLE `wallet_details` (
  `id` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `number` varchar(16) NOT NULL,
  `cvv` int(3) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 2000
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wallet_details`
--

INSERT INTO `wallet_details` (`id`, `wallet_id`, `number`, `cvv`, `balance`) VALUES
(1, 1, '6155247490533921', 983, 3430),
(2, 2, '1887587142382050', 772, 1850),
(3, 3, '4595809639046830', 532, 1585),
(4, 4, '5475856443351234', 521, 2000),
(5, 5, '9076633115663264', 229, 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poster_id` (`poster_id`);

--
-- Indexes for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_id` (`wallet_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_details`
--
ALTER TABLE `ticket_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD CONSTRAINT `ticket_details_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  ADD CONSTRAINT `ticket_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD CONSTRAINT `wallet_details_ibfk_1` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);
--
-- Database: `fos_db`
--
CREATE DATABASE IF NOT EXISTS `fos_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fos_db`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_ip` varchar(20) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_ip`, `user_id`, `product_id`, `qty`) VALUES
(11, '', 2, 6, 2),
(14, '::1', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`) VALUES
(1, 'Beverages'),
(3, 'Best Sellers'),
(4, 'Meals'),
(5, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `mobile`, `email`, `status`) VALUES
(1, 'James Smith', 'adasdasd asdadasd', '4756463215', 'jsmith@sample.com', 1),
(2, 'James Smith', 'adasdasd asdadasd', '4756463215', 'jsmith@sample.com', 1),
(3, 'Claire Blake', 'Sample Address', '0912365487', 'cblake@mail.com', 1),
(4, 'admin admin', 'asaa4465', '4654654564', 'admin@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `qty`) VALUES
(1, 1, 3, 1),
(2, 1, 5, 1),
(3, 1, 3, 1),
(4, 1, 6, 3),
(5, 2, 1, 2),
(6, 3, 1, 2),
(7, 4, 5, 2),
(8, 4, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= unavailable, 2 Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `name`, `description`, `price`, `img_path`, `status`) VALUES
(1, 3, 'Diet Coke', 'In Can', 20, '1600652160_diet_coke.jpg', 1),
(3, 3, 'Lemon Iced Tea', 'Sample', 15, '1600652520_lemon iced tea.jpg', 1),
(4, 4, 'Chicken', 'Sample only', 150, '1600652880_chicken.jpg', 1),
(5, 3, 'Steak', 'Sample 2', 200, '1600652880_steak.jpg', 1),
(6, 4, 'Chicken2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 250, '1600656600_checken2.jpg', 1),
(7, 4, 'Food 101', 'Ut volutpat arcu sed ex sagittis, non pulvinar justo euismod. Mauris ligula urna, tristique ut nisi in, gravida fermentum sapien. Duis feugiat pulvinar tellus nec lacinia. Ut non erat vitae arcu bibendum elementum quis in est. Aliquam vel tristique massa. Vivamus lacinia massa nisl, molestie consectetur ex lobortis in. Nulla blandit nulla in purus luctus dictum. Quisque orci ligula, rhoncus sit amet justo at, consectetur dignissim eros.', 55, '1673245740_food-bg.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Online Food Ordering System V2', 'info@sample.com', '+6948 8542 623', '1673244660_food-bg.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;ABOUT US&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/b&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#x2019;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;h2 style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;Where does it come from?&lt;/h2&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400;&quot;&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;'),
(2, 'admin', 'admin@gmail.com', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` text NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin', 1),
(2, 'Staff', 'staff', '$2y$10$DJbGDnA6bkOiS0TW08R5FOPruw0wRW4maShgWK8k6FlEfgNjbXsvm', 2),
(3, 'admin', 'admin', 'admin123', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `username` varchar(200) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `username`, `mobile`, `address`) VALUES
(1, 'James', 'Smith', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', '', '4756463215', 'adasdasd asdadasd'),
(2, 'admin', 'admin', 'admin@gmail.com', 'abcd', 'admin', '0912365487', 'Sample Address'),
(3, 'admin', 'admin', 'admin@gmail.com', '$2y$10$BTDkglzcjoIvUTT6juOwZ.wfNnz8wMn6sQZZsR7P91Iczmlp8PJOe', '', '4654654564', 'asaa4465'),
(4, '21212112', 'ric', 'pocoace123@gmail.com', 'poco', '', '353453454', 'sadsadsadsd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `mydatabase`
--
CREATE DATABASE IF NOT EXISTS `mydatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `role`, `status`) VALUES
(49, 'rods', 'pbkdf2:sha256:260000$7PqtX5AXJfGfOSma$4756ec6a81dd67937d578b9e69bd2087a271fa56a2d6b727b94987d1dea9d56d', 'superadmin', 'active'),
(71, 'sample', 'pbkdf2:sha256:260000$Pj3WfdayzStVWbmF$d7f1ea3f246d99a4c8d8f42444b9ea344486c0bb1469ed6b483e4e9aa6eb079c', 'admin', 'active'),
(72, 'Test', 'pbkdf2:sha256:260000$dFvEcKFrPTfB7sxQ$345033f1873962884083af9ebdb0d30381376d78107fab20da676aa18c9a8a19', 'admin', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- Database: `odfs_db`
--
CREATE DATABASE IF NOT EXISTS `odfs_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `odfs_db`;

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'PHP', 'PHP is an open-source server-side scripting language that many devs use for web development. It is also a general-purpose language that you can use to make lots of projects, including Graphical User Interfaces (GUIs).', 1, 0, '2022-05-16 10:02:41', '2022-05-16 10:02:41'),
(2, 'VB.NET', 'Visual Basic, originally called Visual Basic .NET, is a multi-paradigm, object-oriented programming language, implemented on .NET, Mono, and the .NET Framework. Microsoft launched VB.NET in 2002 as the successor to its original Visual Basic language.', 1, 0, '2022-05-16 10:03:27', '2022-05-16 10:03:27'),
(3, 'Python', 'Python is a high-level, interpreted, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically-typed and garbage-collected.', 1, 0, '2022-05-16 10:03:48', '2022-05-16 10:03:48'),
(4, 'JavaScript', 'JavaScript, often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. Over 97% of websites use JavaScript on the client side for web page behavior, often incorporating third-party libraries.', 1, 0, '2022-05-16 10:04:11', '2022-05-16 10:04:11'),
(5, 'test', 'test', 1, 1, '2022-05-16 10:04:54', '2022-05-16 10:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `comment_list`
--

CREATE TABLE `comment_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_list`
--

CREATE TABLE `post_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_list`
--

INSERT INTO `post_list` (`id`, `user_id`, `category_id`, `title`, `content`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(5, 6, 1, 'oten', '<p><strike>assasasasasa asasasas</strike>&nbsp;asas asas asas</p>', 1, 0, '2024-01-09 11:19:50', '2024-01-09 11:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Discussion Forum Site'),
(6, 'short_name', 'ODFS - PHP'),
(11, 'logo', 'uploads/logo.png?v=1652665183'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1652665183');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='2';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(6, 'poco', '', 'ace', 'poco', '1932880abe218508418ca7c3f09baf48', NULL, NULL, 2, '2024-01-09 11:18:54', '2024-01-09 11:18:54'),
(7, 'mer', '', 'mer', 'mer', '2af9ef9aaa6d32873e51431d5cdd3dfb', NULL, NULL, 2, '2024-01-09 11:37:51', '2024-01-09 11:37:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_list`
--
ALTER TABLE `comment_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `post_list`
--
ALTER TABLE `post_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comment_list`
--
ALTER TABLE `comment_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_list`
--
ALTER TABLE `post_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_list`
--
ALTER TABLE `comment_list`
  ADD CONSTRAINT `post_id_fk_cl` FOREIGN KEY (`post_id`) REFERENCES `post_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_fk_cl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `post_list`
--
ALTER TABLE `post_list`
  ADD CONSTRAINT `category_id_fk_tl` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_fk_tl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `onlinefoodorder`
--
CREATE DATABASE IF NOT EXISTS `onlinefoodorder` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onlinefoodorder`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(9, 'Liam Johnson', 'liam', 'E10ADC3949BA59ABBE56E057F20F883E'),
(10, 'Ramsey', 'ramsey', 'E10ADC3949BA59ABBE56E057F20F883E'),
(13, 'test123', 'admin123', '0192023a7bbd73250516f069df18b500'),
(14, 'poco1', 'poco', '4a2dd6ed7c852515337481d912aa4e48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(10, 'Pasta', 'Food_Category_948.jpg', 'Yes', 'Yes'),
(11, 'Sandwich', 'Food_Category_536.jpg', 'Yes', 'Yes'),
(12, 'jolibee', 'Food_Category_809.png', 'Yes', 'Yes'),
(13, 'mang inasal', 'Food_Category_972.png', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(5, 'Duck carnitas', 'A log of glistening orange-scented duck shreds that you pull apart and lump onto warm tortillas and eat until there’s no more. The meat is braised in Coca-Cola. And you thought chefs had stopped using Coke.', 9.00, 'Food-Name-2590.jpg', 4, 'Yes', 'Yes'),
(9, 'Chicken Wrap', 'Crispy flour tortilla loaded with juicy chicken, bacon, lettuce, avocado and cheese drizzled with a delicious spicy Ranch dressing.', 5.00, 'Food-Name-3461.jpg', 9, 'Yes', 'Yes'),
(10, 'Cheeseburger', 'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty.', 4.00, 'Food-Name-433.jpeg', 5, 'Yes', 'Yes'),
(17, 'Supermeal', 'spaghetti coke and chiken', 102.00, 'Food-Name-4018.png', 12, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(2, 'Best Burger', 4.00, 4, 16.00, '2020-11-30 03:52:43', 'Delivered', 'Kelly Dillard', '7896547800', 'kelly@gmail.com', '308 Post Avenue'),
(3, 'Mixed Pizza', 10.00, 2, 20.00, '2020-11-30 04:07:17', 'Delivered', 'Thomas Gilchrist', '7410001450', 'thom@gmail.com', '1277 Sunburst Drive'),
(4, 'Mixed Pizza', 10.00, 1, 10.00, '2021-05-04 01:35:34', 'Delivered', 'Martha Woods', '78540001200', 'marthagmail.com', '478 Avenue Street'),
(6, 'Chicken Wrap', 7.00, 1, 7.00, '2021-07-20 06:10:37', 'Delivered', 'Charlie', '7458965550', 'charlie@gmail.com', '3140 Bartlett Avenue'),
(7, 'Cheeseburger', 4.00, 2, 8.00, '2021-07-20 06:40:21', 'On Delivery', 'Claudia Hedley', '7451114400', 'hedley@gmail.com', '1119 Kinney Street'),
(8, 'Smoky BBQ Pizza', 6.00, 1, 6.00, '2021-07-20 06:40:57', 'Ordered', 'Vernon Vargas', '7414744440', 'venno@gmail.com', '1234 Hazelwood Avenue'),
(9, 'Chicken Wrap', 5.00, 4, 20.00, '2021-07-20 07:06:06', 'Cancelled', 'Carlos Grayson', '7401456980', 'carlos@gmail.com', '2969 Hartland Avenue'),
(10, 'Grilled Cheese Sandwich', 3.00, 4, 12.00, '2021-07-20 07:11:06', 'Delivered', 'Jonathan Caudill', '7410256996', 'jonathan@gmail.com', '1959 Limer Street'),
(17, 'Duck carnitas', 9.00, 30, 270.00, '2024-01-09 02:14:50', 'Ordered', 'poco ace', '09099286185', 'pocoace123@gmail.com', 'jhnsajkdajshdhasdasd'),
(18, 'Cheeseburger', 4.00, 14, 56.00, '2024-01-09 02:40:03', 'Ordered', 'jajajaja', '323232323223', 'pocoace123@gmail.com', 'dfgdfgdfgdfgdg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'itmajordatabase', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"flasktest\",\"food\",\"fos_db\",\"mydatabase\",\"odfs_db\",\"onlinefoodorder\",\"phpmyadmin\",\"test\",\"vb\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"vb\",\"table\":\"rec_1\"},{\"db\":\"vb\",\"table\":\"bdo_pro_order\"},{\"db\":\"vb\",\"table\":\"rec\"},{\"db\":\"vb\",\"table\":\"dbo_product\"},{\"db\":\"vb\",\"table\":\"itmajor\"},{\"db\":\"vb\",\"table\":\"vb_crudwithpic\"},{\"db\":\"vb\",\"table\":\"vb_crud\"},{\"db\":\"vb\",\"table\":\"images\"},{\"db\":\"mydatabase\",\"table\":\"admins\"},{\"db\":\"odfs_db\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'vb', 'itmajor', '[]', '2024-04-30 05:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

--
-- Dumping data for table `pma__tracking`
--

INSERT INTO `pma__tracking` (`db_name`, `table_name`, `version`, `date_created`, `date_updated`, `schema_snapshot`, `schema_sql`, `data_sql`, `tracking`, `tracking_active`) VALUES
('vb', 'bdo_pro_order', 1, '2024-04-30 21:29:21', '2024-05-02 21:58:05', 'a:2:{s:7:\"COLUMNS\";a:10:{i:0;a:8:{s:5:\"Field\";s:2:\"ID\";s:4:\"Type\";s:7:\"int(11)\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:3:\"PRI\";s:7:\"Default\";N;s:5:\"Extra\";s:14:\"auto_increment\";s:7:\"Comment\";s:0:\"\";}i:1;a:8:{s:5:\"Field\";s:6:\"PRO_ID\";s:4:\"Type\";s:12:\"varchar(200)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:3:\"MUL\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:2;a:8:{s:5:\"Field\";s:8:\"FULLNAME\";s:4:\"Type\";s:12:\"varchar(200)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:3;a:8:{s:5:\"Field\";s:7:\"ADDRESS\";s:4:\"Type\";s:12:\"varchar(200)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:4;a:8:{s:5:\"Field\";s:7:\"CONTACT\";s:4:\"Type\";s:12:\"varchar(200)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:5;a:8:{s:5:\"Field\";s:7:\"PRO_PUR\";s:4:\"Type\";s:12:\"varchar(200)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:6;a:8:{s:5:\"Field\";s:7:\"BALANCE\";s:4:\"Type\";s:8:\"int(200)\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:7;a:8:{s:5:\"Field\";s:8:\"QUANTITY\";s:4:\"Type\";s:12:\"varchar(200)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:8;a:8:{s:5:\"Field\";s:5:\"PRICE\";s:4:\"Type\";s:12:\"varchar(200)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:9;a:8:{s:5:\"Field\";s:9:\"DATE_PAID\";s:4:\"Type\";s:4:\"date\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}}s:7:\"INDEXES\";a:2:{i:0;a:13:{s:5:\"Table\";s:13:\"bdo_pro_order\";s:10:\"Non_unique\";s:1:\"0\";s:8:\"Key_name\";s:7:\"PRIMARY\";s:12:\"Seq_in_index\";s:1:\"1\";s:11:\"Column_name\";s:2:\"ID\";s:9:\"Collation\";s:1:\"A\";s:11:\"Cardinality\";s:1:\"0\";s:8:\"Sub_part\";N;s:6:\"Packed\";N;s:4:\"Null\";s:0:\"\";s:10:\"Index_type\";s:5:\"BTREE\";s:7:\"Comment\";s:0:\"\";s:13:\"Index_comment\";s:0:\"\";}i:1;a:13:{s:5:\"Table\";s:13:\"bdo_pro_order\";s:10:\"Non_unique\";s:1:\"1\";s:8:\"Key_name\";s:6:\"PRO_ID\";s:12:\"Seq_in_index\";s:1:\"1\";s:11:\"Column_name\";s:6:\"PRO_ID\";s:9:\"Collation\";s:1:\"A\";s:11:\"Cardinality\";s:1:\"0\";s:8:\"Sub_part\";N;s:6:\"Packed\";N;s:4:\"Null\";s:3:\"YES\";s:10:\"Index_type\";s:5:\"BTREE\";s:7:\"Comment\";s:0:\"\";s:13:\"Index_comment\";s:0:\"\";}}}', '# log 2024-04-30 21:29:21 root\nDROP TABLE IF EXISTS `bdo_pro_order`;\n# log 2024-04-30 21:29:21 root\n\nCREATE TABLE `bdo_pro_order` (\n  `ID` int(11) NOT NULL,\n  `PRO_ID` varchar(200) DEFAULT NULL,\n  `FULLNAME` varchar(200) NOT NULL,\n  `ADDRESS` varchar(200) NOT NULL,\n  `CONTACT` varchar(200) NOT NULL,\n  `PRO_PUR` varchar(200) NOT NULL,\n  `BALANCE` int(200) NOT NULL,\n  `QUANTITY` varchar(200) DEFAULT NULL,\n  `PRICE` varchar(200) DEFAULT NULL,\n  `DATE_PAID` date NOT NULL\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;\n\n# log 2024-04-30 21:30:32 root\nALTER TABLE `bdo_pro_order` ADD `COSTUMER_ID` VARCHAR(100) NOT NULL AFTER `PRO_ID`;\n# log 2024-04-30 21:31:14 root\nALTER TABLE `bdo_pro_order` DROP `ID`;\n# log 2024-04-30 21:31:26 root\nALTER TABLE `bdo_pro_order` ADD `ID` INT NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (`ID`);\n# log 2024-04-30 21:32:04 root\nALTER TABLE `bdo_pro_order` CHANGE `ID` `ID` INT(11) NOT NULL;\n# log 2024-04-30 21:32:11 root\nALTER TABLE `bdo_pro_order` DROP `ID`;\n# log 2024-04-30 21:32:24 root\nALTER TABLE `bdo_pro_order` ADD `ID` INT NOT NULL FIRST;\n# log 2024-04-30 21:35:02 root\nALTER TABLE `bdo_pro_order` CHANGE `ID` `ID` INT(11) NULL AUTO_INCREMENT, add PRIMARY KEY (`ID`);\n# log 2024-04-30 21:38:20 root\nALTER TABLE `bdo_pro_order` ADD `PAID` INT(100) NOT NULL AFTER `BALANCE`;\n# log 2024-04-30 21:40:34 root\nALTER TABLE `bdo_pro_order` CHANGE `ID` `ID` INT(11) NOT NULL;\n# log 2024-04-30 21:40:59 root\nALTER TABLE `bdo_pro_order` CHANGE `ID` `ID` INT(11) NULL AUTO_INCREMENT;\n# log 2024-04-30 21:42:02 root\nALTER TABLE `bdo_pro_order` DROP `ID`;\n# log 2024-04-30 21:43:07 root\nALTER TABLE `bdo_pro_order` ADD `ID` INT NOT NULL FIRST;\n# log 2024-04-30 21:43:37 root\nALTER TABLE `bdo_pro_order` CHANGE `ID` `ID` INT(11) NOT NULL AUTO_INCREMENT, add PRIMARY KEY (`ID`);\n# log 2024-04-30 21:43:55 root\nALTER TABLE `bdo_pro_order` CHANGE `ID` `ID` INT(11) NOT NULL AUTO_INCREMENT;\n# log 2024-04-30 21:43:55 root\nALTER TABLE `bdo_pro_order` CHANGE `ID` `ID` INT(11) NOT NULL AUTO_INCREMENT;\n# log 2024-04-30 21:46:57 root\nALTER TABLE `bdo_pro_order` DROP `COSTUMER_ID`;\n# log 2024-04-30 21:48:08 root\nALTER TABLE `bdo_pro_order` ADD `COSTUMER_ID` INT(100) NOT NULL AFTER `PRO_ID`;\n# log 2024-04-30 21:54:18 root\nALTER TABLE `bdo_pro_order` DROP `ID`;\n# log 2024-04-30 21:54:21 root\nALTER TABLE `bdo_pro_order` DROP `DATE_PAID`;\n# log 2024-04-30 21:54:23 root\nALTER TABLE `bdo_pro_order` DROP `PRICE`;\n# log 2024-04-30 21:54:25 root\nALTER TABLE `bdo_pro_order` DROP `QUANTITY`;\n# log 2024-04-30 21:54:27 root\nALTER TABLE `bdo_pro_order` DROP `PAID`;\n# log 2024-04-30 21:54:29 root\nALTER TABLE `bdo_pro_order` DROP `BALANCE`;\n# log 2024-04-30 21:54:39 root\nALTER TABLE `bdo_pro_order` DROP `COSTUMER_ID`;\n# log 2024-04-30 21:54:41 root\nALTER TABLE `bdo_pro_order` DROP `FULLNAME`;\n# log 2024-04-30 21:54:43 root\nALTER TABLE `bdo_pro_order` DROP `ADDRESS`;\n# log 2024-04-30 21:54:45 root\nALTER TABLE `bdo_pro_order` DROP `CONTACT`;\n# log 2024-04-30 21:54:47 root\nALTER TABLE `bdo_pro_order` DROP `PRO_PUR`;\n# log 2024-04-30 21:55:37 root\nALTER TABLE `bdo_pro_order` DROP INDEX `PRO_ID`, ADD INDEX `PRO_ID` (`PRO_ID`) USING BTREE;\n# log 2024-04-30 22:02:18 root\nALTER TABLE `bdo_pro_order` ADD `ID` INT NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (`ID`);\n# log 2024-04-30 22:03:45 root\nALTER TABLE `bdo_pro_order` ADD `COSTUMER_ID` VARCHAR(100) NOT NULL AFTER `PRO_ID`, ADD `FULLNAME` VARCHAR(200) NOT NULL AFTER `COSTUMER_ID`, ADD `ADDRESS` VARCHAR(200) NOT NULL AFTER `FULLNAME`, ADD `CONTACT` VARCHAR(200) NOT NULL AFTER `ADDRESS`, ADD `PRODUCT_PUR` VARCHAR(200) NOT NULL AFTER `CONTACT`;\n# log 2024-04-30 22:04:59 root\nALTER TABLE `bdo_pro_order` ADD `PAID` INT(100) NOT NULL AFTER `PRODUCT_PUR`, ADD `DATE_PAID` DATE NOT NULL AFTER `PAID`, ADD `QUANTITY` INT(10) NOT NULL AFTER `DATE_PAID`, ADD `BALANCE` INT(100) NOT NULL AFTER `QUANTITY`;\n# log 2024-04-30 22:13:09 root\nALTER TABLE `bdo_pro_order` ;\n# log 2024-04-30 22:13:10 root\nALTER TABLE `bdo_pro_order` ;\n# log 2024-04-30 22:17:43 root\nALTER TABLE `bdo_pro_order` DROP INDEX `PRO_ID`;\n# log 2024-04-30 22:18:20 root\nALTER TABLE `bdo_pro_order` DROP `ID`;\n# log 2024-04-30 22:19:46 root\nALTER TABLE `bdo_pro_order` DROP `PRO_ID`;\n# log 2024-04-30 22:23:58 root\nALTER TABLE `bdo_pro_order` ADD `PRO_ID` VARCHAR(100) NOT NULL FIRST;\n# log 2024-04-30 22:24:13 root\nALTER TABLE bdo_pro_order\r\nADD CONSTRAINT fk_bdo_pro_order_pro_id\r\nFOREIGN KEY (PRO_ID) \r\nREFERENCES dbo_product(PRO_ID);\n# log 2024-04-30 22:24:30 root\nALTER TABLE `bdo_pro_order` ADD PRIMARY KEY(`COSTUMER_ID`);\n# log 2024-04-30 22:37:01 root\nALTER TABLE `bdo_pro_order` DROP PRIMARY KEY, ADD PRIMARY KEY (`FULLNAME`, `PRO_ID`) USING BTREE;\n# log 2024-04-30 22:37:14 root\nALTER TABLE `bdo_pro_order` DROP PRIMARY KEY, ADD PRIMARY KEY (`FULLNAME`) USING BTREE;\n# log 2024-04-30 22:37:14 root\nALTER TABLE `bdo_pro_order` DROP PRIMARY KEY, ADD PRIMARY KEY (`FULLNAME`) USING BTREE;\n# log 2024-04-30 22:38:16 root\nALTER TABLE `bdo_pro_order` DROP `FULLNAME`;\n# log 2024-04-30 22:38:33 root\nALTER TABLE `bdo_pro_order` ADD `FULLNAME` VARCHAR(200) NOT NULL AFTER `COSTUMER_ID`;\n# log 2024-04-30 22:39:37 root\nALTER TABLE `bdo_pro_order` ADD PRIMARY KEY(`COSTUMER_ID`);\n# log 2024-05-01 06:41:49 root\nALTER TABLE `bdo_pro_order` CHANGE `DATE_PAID` `DATE_PAID` VARCHAR(2) NOT NULL;\n# log 2024-05-01 06:41:56 root\nALTER TABLE `bdo_pro_order` CHANGE `DATE_PAID` `DATE_PAID` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;\n# log 2024-05-01 17:36:59 root\nALTER TABLE `bdo_pro_order` DROP PRIMARY KEY, ADD PRIMARY KEY (`COSTUMER_ID`) USING BTREE;\n# log 2024-05-01 17:37:51 root\nALTER TABLE `bdo_pro_order` DROP `COSTUMER_ID`;\n# log 2024-05-01 17:38:16 root\nALTER TABLE `bdo_pro_order` ADD `COSTUMER_ID` VARCHAR(100) NOT NULL AFTER `PRO_ID`;\n# log 2024-05-01 17:43:44 root\nALTER TABLE `bdo_pro_order` ADD UNIQUE  (`PRO_ID`, `COSTUMER_ID`);\n# log 2024-05-01 22:20:47 root\nALTER TABLE `bdo_pro_order` ADD PRIMARY KEY(`COSTUMER_ID`);\n# log 2024-05-01 22:21:05 root\nALTER TABLE `bdo_pro_order` DROP INDEX `PRO_ID`, ADD UNIQUE `PRO_ID` (`PRO_ID`) USING BTREE;\n# log 2024-05-01 22:24:31 root\nALTER TABLE `bdo_pro_order` DROP PRIMARY KEY;\n# log 2024-05-01 22:24:44 root\nALTER TABLE `bdo_pro_order` DROP INDEX `PRO_ID`, ADD UNIQUE `PRO_ID` (`PRO_ID`, `COSTUMER_ID`) USING BTREE;\n# log 2024-05-01 22:29:11 root\nALTER TABLE `bdo_pro_order` ADD PRIMARY KEY(`COSTUMER_ID`);\n# log 2024-05-01 22:30:06 root\nALTER TABLE `bdo_pro_order` DROP PRIMARY KEY;\n# log 2024-05-02 21:16:54 root\nALTER TABLE `bdo_pro_order` DROP INDEX `PRO_ID`, ADD UNIQUE `PRO_ID` (`PRO_ID`) USING BTREE;\n# log 2024-05-02 21:16:55 root\nALTER TABLE `bdo_pro_order` DROP INDEX `PRO_ID`, ADD UNIQUE `PRO_ID` (`PRO_ID`) USING BTREE;\n# log 2024-05-02 21:17:13 root\nALTER TABLE `bdo_pro_order` ADD PRIMARY KEY(`COSTUMER_ID`);\n# log 2024-05-02 21:29:52 root\nALTER TABLE `bdo_pro_order` DROP PRIMARY KEY, ADD UNIQUE `costumer_id_bdo_pro_order` (`COSTUMER_ID`) USING BTREE;\n# log 2024-05-02 21:30:45 root\nALTER TABLE `bdo_pro_order` DROP INDEX `costumer_id_bdo_pro_order`, ADD UNIQUE `costumer_id_bdo_pro_order` (`COSTUMER_ID`(100)) USING BTREE;\n# log 2024-05-02 21:57:01 root\nALTER TABLE `bdo_pro_order` DROP INDEX `costumer_id_bdo_pro_order`;\n# log 2024-05-02 21:57:07 root\nALTER TABLE `bdo_pro_order` ADD PRIMARY KEY(`COSTUMER_ID`);\n# log 2024-05-02 21:57:57 root\nALTER TABLE `bdo_pro_order` DROP PRIMARY KEY;\n# log 2024-05-02 21:58:05 root\nALTER TABLE `bdo_pro_order` ADD UNIQUE  (`COSTUMER_ID`);\n# log 2024-05-02 21:58:05 root\nALTER TABLE `bdo_pro_order` ADD UNIQUE  (`COSTUMER_ID`);', '\n\n# log 2024-04-30 21:33:08 root\nINSERT INTO `bdo_pro_order` (`ID`, `PRO_ID`, `COSTUMER_ID`, `FULLNAME`, `ADDRESS`, `CONTACT`, `PRO_PUR`, `BALANCE`, `QUANTITY`, `PRICE`, `DATE_PAID`) VALUES (\'\', NULL, \'1111\', \'AAAAA\', \'AAAA\', \'\', \'AAAA\', \'89000\', \'1\', \'340000\', \'\');\n\n# log 2024-04-30 21:34:40 root\nINSERT INTO `bdo_pro_order` (`ID`, `PRO_ID`, `COSTUMER_ID`, `FULLNAME`, `ADDRESS`, `CONTACT`, `PRO_PUR`, `BALANCE`, `QUANTITY`, `PRICE`, `DATE_PAID`) VALUES (\'\', \'0001\', \'01010101\', \'JJJJ\', \'JJJJ\', \'09090909\', \'AASASA\', \'\', \'1\', \'80000\', \'2024-04-10\');\n\n# log 2024-04-30 21:35:22 root\nUPDATE `bdo_pro_order` SET `PRO_ID` = \'0001\' WHERE `bdo_pro_order`.`ID` = 1;\n\n# log 2024-04-30 21:37:37 root\nUPDATE `bdo_pro_order` SET `BALANCE` = \'40000\' WHERE `bdo_pro_order`.`ID` = 2;\n\n# log 2024-04-30 21:39:46 root\nUPDATE `bdo_pro_order` SET `BALANCE` = \'300000\', `PAID` = \'40000\', `DATE_PAID` = \'2024-04-10\' WHERE `bdo_pro_order`.`ID` = 1;\n\n# log 2024-04-30 21:53:55 root\nDELETE FROM `bdo_pro_order` WHERE `bdo_pro_order`.`ID` = 1 LIMIT 1;\n# log 2024-04-30 21:53:55 root\nDELETE FROM `bdo_pro_order` WHERE `bdo_pro_order`.`ID` = 2 LIMIT 1;\n# log 2024-05-01 06:37:02 root\nUPDATE `bdo_pro_order` SET `DATE_PAID` = \'2024-04-04\' WHERE `bdo_pro_order`.`COSTUMER_ID` = \'10000001\';\n\n# log 2024-05-01 17:43:26 root\nDELETE FROM `bdo_pro_order`;\n# log 2024-05-01 19:25:15 root\nDELETE FROM `bdo_pro_order` WHERE `bdo_pro_order`.`PRO_ID` = \'0001\' AND `bdo_pro_order`.`COSTUMER_ID` = \'10000001\' LIMIT 1;\n# log 2024-05-01 19:25:15 root\nDELETE FROM `bdo_pro_order` WHERE `bdo_pro_order`.`PRO_ID` = \'0004\' AND `bdo_pro_order`.`COSTUMER_ID` = \'10000001\' LIMIT 1;\n# log 2024-05-01 19:25:15 root\nDELETE FROM `bdo_pro_order` WHERE `bdo_pro_order`.`PRO_ID` = \'0004\' AND `bdo_pro_order`.`COSTUMER_ID` = \'10000002\' LIMIT 1;\n# log 2024-05-01 22:20:38 root\nDELETE FROM `bdo_pro_order` WHERE `bdo_pro_order`.`PRO_ID` = \'0004\' AND `bdo_pro_order`.`COSTUMER_ID` = \'10001\' LIMIT 1;\n# log 2024-05-01 22:20:38 root\nDELETE FROM `bdo_pro_order` WHERE `bdo_pro_order`.`PRO_ID` = \'0005\' AND `bdo_pro_order`.`COSTUMER_ID` = \'10002\' LIMIT 1;\n# log 2024-05-01 22:20:38 root\nDELETE FROM `bdo_pro_order` WHERE `bdo_pro_order`.`PRO_ID` = \'0005\' AND `bdo_pro_order`.`COSTUMER_ID` = \'10003\' LIMIT 1;\n# log 2024-05-02 21:16:19 root\nDELETE FROM `bdo_pro_order` WHERE `bdo_pro_order`.`PRO_ID` = \'0005\' AND `bdo_pro_order`.`COSTUMER_ID` = \'10001\' LIMIT 1;\n# log 2024-05-02 21:16:19 root\nDELETE FROM `bdo_pro_order` WHERE `bdo_pro_order`.`PRO_ID` = \'0005\' AND `bdo_pro_order`.`COSTUMER_ID` = \'10002\' LIMIT 1;', 'UPDATE,INSERT,DELETE,TRUNCATE,CREATE TABLE,ALTER TABLE,RENAME TABLE,DROP TABLE,CREATE INDEX,DROP INDEX', 1),
('vb', 'rec', 1, '2024-05-01 22:30:29', '2024-05-02 22:14:47', 'a:2:{s:7:\"COLUMNS\";a:5:{i:0;a:8:{s:5:\"Field\";s:11:\"COSTUMER_ID\";s:4:\"Type\";s:12:\"varchar(100)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:3:\"PRI\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:1;a:8:{s:5:\"Field\";s:8:\"FULLNAME\";s:4:\"Type\";s:12:\"varchar(100)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:2;a:8:{s:5:\"Field\";s:4:\"PAID\";s:4:\"Type\";s:8:\"int(100)\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:3;a:8:{s:5:\"Field\";s:7:\"BALANCE\";s:4:\"Type\";s:8:\"int(100)\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}i:4;a:8:{s:5:\"Field\";s:4:\"DATE\";s:4:\"Type\";s:12:\"varchar(200)\";s:9:\"Collation\";s:18:\"utf8mb4_general_ci\";s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:0:\"\";}}s:7:\"INDEXES\";a:1:{i:0;a:13:{s:5:\"Table\";s:3:\"rec\";s:10:\"Non_unique\";s:1:\"0\";s:8:\"Key_name\";s:25:\"costumer_id_bdo_pro_order\";s:12:\"Seq_in_index\";s:1:\"1\";s:11:\"Column_name\";s:11:\"COSTUMER_ID\";s:9:\"Collation\";s:1:\"A\";s:11:\"Cardinality\";s:1:\"1\";s:8:\"Sub_part\";N;s:6:\"Packed\";N;s:4:\"Null\";s:0:\"\";s:10:\"Index_type\";s:5:\"BTREE\";s:7:\"Comment\";s:0:\"\";s:13:\"Index_comment\";s:0:\"\";}}}', '# log 2024-05-01 22:30:29 root\nDROP TABLE IF EXISTS `rec`;\n# log 2024-05-01 22:30:29 root\n\nCREATE TABLE `rec` (\n  `COSTUMER_ID` varchar(100) NOT NULL,\n  `FULLNAME` varchar(100) NOT NULL,\n  `PAID` int(100) NOT NULL,\n  `BALANCE` int(100) NOT NULL,\n  `DATE` varchar(200) NOT NULL\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;\n\n# log 2024-05-02 21:17:42 root\nALTER TABLE `rec` DROP INDEX `costumer_id_bdo_pro_order`, ADD UNIQUE `costumer_id_bdo_pro_order` (`COSTUMER_ID`) USING BTREE;\n# log 2024-05-02 22:14:47 root\nALTER TABLE `rec` ADD `PRO_ID` VARCHAR(100) NOT NULL FIRST;', '\n\n# log 2024-05-02 21:17:24 root\nDELETE FROM `rec` WHERE `rec`.`COSTUMER_ID` = \'10002\' LIMIT 1;', 'UPDATE,INSERT,DELETE,TRUNCATE,CREATE TABLE,ALTER TABLE,RENAME TABLE,DROP TABLE,CREATE INDEX,DROP INDEX', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-04 23:22:52', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `vb`
--
CREATE DATABASE IF NOT EXISTS `vb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vb`;

-- --------------------------------------------------------

--
-- Table structure for table `bdo_pro_order`
--

CREATE TABLE `bdo_pro_order` (
  `PRO_ID` varchar(100) NOT NULL,
  `COSTUMER_ID` varchar(100) NOT NULL,
  `FULLNAME` varchar(200) NOT NULL,
  `ADDRESS` varchar(200) NOT NULL,
  `CONTACT` varchar(200) NOT NULL,
  `PRODUCT_PUR` varchar(200) NOT NULL,
  `PAID` int(100) NOT NULL,
  `DATE_PAID` varchar(200) NOT NULL,
  `QUANTITY` int(10) NOT NULL,
  `BALANCE` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bdo_pro_order`
--

INSERT INTO `bdo_pro_order` (`PRO_ID`, `COSTUMER_ID`, `FULLNAME`, `ADDRESS`, `CONTACT`, `PRODUCT_PUR`, `PAID`, `DATE_PAID`, `QUANTITY`, `BALANCE`) VALUES
('0003', '10002', 'bb ace', 'kkkkkkkkk', '09090909090', 'MCP9000 Volkswagen (VW)', 20000, 'Thursday, May 2, 2024', 1, 100000),
('0005', '10001', 'poco ace', 'jjjjjj', '09090909', 'Hannah-T500 Chevrolet', 20000, 'Thursday, May 2, 2024', 1, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `COSTUMER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbo_product`
--

CREATE TABLE `dbo_product` (
  `PRO_ID` varchar(200) NOT NULL,
  `PRO_NAME` varchar(200) NOT NULL,
  `PRO_GRP` varchar(200) NOT NULL,
  `UNITS_STK` int(200) NOT NULL,
  `STATUS` tinyint(1) NOT NULL,
  `PRICE` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dbo_product`
--

INSERT INTO `dbo_product` (`PRO_ID`, `PRO_NAME`, `PRO_GRP`, `UNITS_STK`, `STATUS`, `PRICE`) VALUES
('0001', 'RIO-1045', 'Mercedes-Benz', 20, 1, '450,000'),
('0002', 'JWP-399', 'Volkswagen (VW)', 34, 1, '340,000.34'),
('0003', 'MCP9000', 'Volkswagen (VW)', 32, 1, '120000'),
('0004', 'VB-790-ti-1000', 'Subaru', 12, 1, '100000'),
('0005', 'Hannah-T500', 'Chevrolet', 12, 1, '120,000');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ID` int(11) NOT NULL,
  `MULTI` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ID`, `MULTI`) VALUES
(45, '04f2d6b4-3289-4acc-a3eb-720873197dc0.jpg 04cebefe-4e52-466f-a38c-65830e75fece.jpg '),
(46, '842cb75d-a1af-439b-915a-91466b6f08d0.jpg 1a84bb15-8a70-48eb-9595-9b211a94eca7.jpg a82c49a2-3d34-43a6-9b76-aafbe4fd7945.jpg '),
(47, '0ad03ab9-e656-4240-aab3-ccf0ee0770ab.jpg 82a14265-a4a7-483b-9a89-9ee16d8749af.jpg '),
(48, 'fc2ef58f-2d0b-4958-8699-9b1676e8ea68.jpg '),
(49, ''),
(50, '40b91e14-8dbe-488e-a019-7348254ba580.jpg '),
(51, 'a5938c61-fd73-4f32-a035-d37234d6e3a9.jpg '),
(52, ''),
(53, '38876aab-122f-4c39-93c5-c01e77dda264.jpg '),
(54, '03b80e15-e357-473a-837f-bd1a78bef085.jpg '),
(55, 'ce56b455-209c-42a7-b34e-95ca883f6cd1.jpg '),
(56, 'c0d3d5e1-2330-44c1-a5c6-af04b6cfdb4e.jpg '),
(57, 'ac0599ee-e897-4620-b1a3-dead22735065.jpg '),
(58, '19feabe0-2d7e-4e6f-973c-3f718f8d18c8.jpg '),
(59, '147dde7e-fcf7-45e9-8682-98ef3822a9a1.jpg '),
(60, '77bdd364-05c9-4a79-b2da-cd60b53f18bc.jpg 47f99be7-ad59-44ed-9ebf-54fc07fb7f44.jpg e1119527-f531-4d95-99e1-8edfbf9c34bb.jpg ');

-- --------------------------------------------------------

--
-- Table structure for table `itmajor`
--

CREATE TABLE `itmajor` (
  `ID` int(11) NOT NULL,
  `FIRSTNAME` varchar(250) NOT NULL,
  `MIDDLENAME` varchar(100) NOT NULL,
  `LASTNAME` varchar(250) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `STATUS` varchar(40) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PHONE` varchar(100) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itmajor`
--

INSERT INTO `itmajor` (`ID`, `FIRSTNAME`, `MIDDLENAME`, `LASTNAME`, `GENDER`, `STATUS`, `BIRTHDATE`, `EMAIL`, `PHONE`, `ADDRESS`) VALUES
(1, 'HELLO', 'J', 'worldNEW', 'Male', 'Married', '1999-12-27', 'hello@gmail.com', '0909090909090', '1234 street');

-- --------------------------------------------------------

--
-- Table structure for table `rec`
--

CREATE TABLE `rec` (
  `PRO_ID` varchar(100) NOT NULL,
  `COSTUMER_ID` varchar(100) NOT NULL,
  `FULLNAME` varchar(100) NOT NULL,
  `PAID` int(100) NOT NULL,
  `BALANCE` int(100) NOT NULL,
  `DATE` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rec_1`
--

CREATE TABLE `rec_1` (
  `ID` int(11) NOT NULL,
  `PRO_ID` varchar(100) NOT NULL,
  `COSTUMER_ID` varchar(100) NOT NULL,
  `FULLNAME` varchar(255) DEFAULT NULL,
  `PAID` varchar(100) DEFAULT NULL,
  `BALANCE` varchar(100) DEFAULT NULL,
  `DATE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec_1`
--

INSERT INTO `rec_1` (`ID`, `PRO_ID`, `COSTUMER_ID`, `FULLNAME`, `PAID`, `BALANCE`, `DATE`) VALUES
(9, '0003', '10002', 'bb ace', '20000', '40000', 'Thursday, May 2, 2024'),
(10, '0005', '10001', 'poco ace', '20000', '80000', 'Thursday, May 2, 2024');

-- --------------------------------------------------------

--
-- Table structure for table `vb_crud`
--

CREATE TABLE `vb_crud` (
  `ID` int(11) NOT NULL,
  `PRONO` varchar(255) NOT NULL,
  `PRONAME` varchar(255) NOT NULL,
  `PRICE` decimal(10,0) NOT NULL,
  `PROGROUP` varchar(100) NOT NULL,
  `EXPDATE` date NOT NULL,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vb_crud`
--

INSERT INTO `vb_crud` (`ID`, `PRONO`, `PRONAME`, `PRICE`, `PROGROUP`, `EXPDATE`, `STATUS`) VALUES
(2, '102', 'oishi', 12, 'Junk foods', '2026-02-04', 0),
(7, '14', 'Scanorchips', 13, 'Junk foods', '2026-03-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vb_crudwithpic`
--

CREATE TABLE `vb_crudwithpic` (
  `ID` int(11) NOT NULL,
  `PRONO` varchar(250) NOT NULL,
  `PRONAME` varchar(250) NOT NULL,
  `PRICE` float NOT NULL,
  `PROGROUP` varchar(100) NOT NULL,
  `EXPDATE` date NOT NULL,
  `STATUS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vb_crudwithpic`
--

INSERT INTO `vb_crudwithpic` (`ID`, `PRONO`, `PRONAME`, `PRICE`, `PROGROUP`, `EXPDATE`, `STATUS`) VALUES
(1, '122831', 'tattoos', 1.1, 'Junk foods', '2024-03-09', 1),
(4, '0001', 'bwcp-10000', 120000, 'Junk foods', '2022-04-01', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bdo_pro_order`
--
ALTER TABLE `bdo_pro_order`
  ADD UNIQUE KEY `PRO_ID` (`PRO_ID`) USING BTREE,
  ADD UNIQUE KEY `COSTUMER_ID` (`COSTUMER_ID`),
  ADD UNIQUE KEY `COSTUMER_ID_2` (`COSTUMER_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`COSTUMER_ID`);

--
-- Indexes for table `dbo_product`
--
ALTER TABLE `dbo_product`
  ADD PRIMARY KEY (`PRO_ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `itmajor`
--
ALTER TABLE `itmajor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rec`
--
ALTER TABLE `rec`
  ADD UNIQUE KEY `costumer_id_bdo_pro_order` (`COSTUMER_ID`) USING BTREE;

--
-- Indexes for table `rec_1`
--
ALTER TABLE `rec_1`
  ADD PRIMARY KEY (`ID`);
ALTER TABLE `rec_1` ADD FULLTEXT KEY `from_bdo_pro_order` (`COSTUMER_ID`);

--
-- Indexes for table `vb_crud`
--
ALTER TABLE `vb_crud`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vb_crudwithpic`
--
ALTER TABLE `vb_crudwithpic`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `itmajor`
--
ALTER TABLE `itmajor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rec_1`
--
ALTER TABLE `rec_1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vb_crud`
--
ALTER TABLE `vb_crud`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vb_crudwithpic`
--
ALTER TABLE `vb_crudwithpic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bdo_pro_order`
--
ALTER TABLE `bdo_pro_order`
  ADD CONSTRAINT `bdo_pro_order_ibfk_1` FOREIGN KEY (`PRO_ID`) REFERENCES `dbo_product` (`PRO_ID`),
  ADD CONSTRAINT `fk_bdo_pro_order_pro_id` FOREIGN KEY (`PRO_ID`) REFERENCES `dbo_product` (`PRO_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
