-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 03:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_member`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `product_price` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `product_code` varchar(10) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `pmode` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `products` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `amount_paid` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(22, 'Chanatip Chaipakdee', 'skylegoch003@gmail.com', '0657465229', '601/271 ?.????\r\n????????', 'cod', 'MeatBall(1)', '80'),
(23, 'Chanatip Chaipakdee', 'skylegoch003@gmail.com', '0657465229', '601/271 ?.????\r\n????????', 'cod', 'MeatBall(1)', '80'),
(24, 'Chanatip Chaipakdee', 'skylegoch003@gmail.com', '0657465229', '601/271 ?.????\r\n????????', 'cod', 'MeatBall(1), Pork Steak(1)', '200'),
(25, 'Chanatip Chaipakdee', 'skylegoch003@gmail.com', 'dasdas', '601/271 ?.????\r\n????????', 'qr', '', '0'),
(26, 'Chanatip Chaipakdee', 'skylegoch003@gmail.com', '0657465229', '601/271 ?.????\r\n????????', 'cod', 'MeatBall(1)', '80'),
(27, 'Chanatip Chaipakdee', 'skylegoch003@gmail.com', '+66628459959', '601/271 ?.????\r\n????????', 'cod', '', '0'),
(28, 'Chanatip Chaipakdee', 'skylegoch003@gmail.com', '0657465229', '601/271 ?.????\r\n????????', 'netbanking', 'MeatBall(1), Pork Steak(1)', '200'),
(29, 'Chanatip Chaipakdee', 'skylegoch003@gmail.com', '0657465229', '601/271 ?.????\r\n????????', 'cod', 'MeatBall(1), Pork Steak(1)', '200'),
(30, 'Chanatip Chaipakdee', 'skylegoch003@gmail.com', '+66628459959', '601/271 ?.????\r\n????????', 'netbanking', 'Pork Steak(1), MeatBall(1), Spaghetti(1), Dolly Steak(1), Pepsi(1)', '390'),
(31, 'Chanatip Chaipakdee', 'skylegoch003@gmail.com', '0657465229', '601/271 ?.????\r\n????????', 'cod', 'MeatBall(1), Pork Steak(1), Nugget(1), Pepsi(1)', '280'),
(32, 'สกาย', 'skypower@gmail.com', '0657465229', '601/271 ต.คูคต\r\nบ้านเช่า', 'qr code', 'Salmon Steak(1), Nugget(1), Pepsi(1)', '190'),
(33, 'Chanatip Chaipakdee', 'skylegoch003@gmail.com', '+66628459959', '601/271 ต.คูคต\r\nบ้านเช่า', 'cards', 'Pork Steak(1)', '120'),
(34, 'Chanatip Chaipakdee', 'skylegoch003@gmail.com', '0657465229', '601/271 ต.คูคต\r\nบ้านเช่า', 'cod', 'Pork Steak(1), Pepsi(10)', '320'),
(35, 'กดเหกเ', 'fsad@mail.com', 'หดเเ', 'ดกเดก', 'netbanking', 'Pork Steak(1)', '120');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `product_price` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `product_code` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`) VALUES
(1, 'Pork Steak', '120', 1, 'img/prok.jpg', '001'),
(2, 'MeatBall', '80', 1, 'img/meatball.jpg', '002'),
(3, 'Spaghetti', '80', 1, 'img/spa.jpg', '003'),
(4, 'Dolly Steak', '90', 1, 'img/donlee.jpg', '004'),
(5, 'Beef Steak', '130', 1, 'img/beef.jpg', '005'),
(6, 'Salmon Steak', '110', 1, 'img/salmon.jpg', '006'),
(7, 'TBonePork Steak', '100', 1, 'img/TBoneProk.jpg', '007'),
(8, 'Fish Cripy Steak', '60', 1, 'img/FishCripy.jpg', '008'),
(9, 'Chicken Steak', '70', 1, 'img/chikensteak.jpg', '009'),
(10, 'French Fries', '50', 1, 'img/frenchfire.jpg', '010'),
(11, 'Nugget', '60', 1, 'img/nugget.jfif', '011'),
(12, 'Cheese Ball', '60', 1, 'img/ball.jpg', '012'),
(13, 'Salad', '50', 1, 'img/salad.jpg', '013'),
(14, 'Water', '10', 1, 'img/water.jpg', '014'),
(15, 'Pepsi', '20', 1, 'img/pep.jpg', '015'),
(16, 'Coca Cola', '20', 1, 'img/coke.jpg', '016');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'sky', 'skylegoch003@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'table01', 'table01@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'test123', '123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
