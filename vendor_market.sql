-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 03:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vendor_market`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `customerID`) VALUES
(8, 8),
(9, 9),
(10, 10),
(11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart_product`
--

CREATE TABLE `cart_product` (
  `cartID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `receival_datetime` datetime DEFAULT NULL,
  `isPaid` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_product`
--

INSERT INTO `cart_product` (`cartID`, `productID`, `quantity`, `address`, `receival_datetime`, `isPaid`) VALUES
(8, 6, 3, NULL, '2024-06-14 18:49:00', 'Yes'),
(8, 1, 3, NULL, '2024-06-15 18:51:00', 'Yes'),
(8, 7, 3, NULL, '2024-06-14 18:52:00', 'Yes'),
(8, 6, 1, NULL, '2024-06-14 18:54:00', 'Yes'),
(8, 1, 3, NULL, '2024-06-20 19:56:00', 'Yes'),
(8, 6, 2, NULL, '2024-06-14 22:08:00', 'Yes'),
(8, 7, 2, NULL, '2024-06-14 21:28:00', 'Yes'),
(8, 6, 2, NULL, '2024-06-14 21:28:00', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `cart_service`
--

CREATE TABLE `cart_service` (
  `cartID` int(11) DEFAULT NULL,
  `serviceID` int(11) DEFAULT NULL,
  `bookDateTime` datetime DEFAULT NULL,
  `isPaid` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_service`
--

INSERT INTO `cart_service` (`cartID`, `serviceID`, `bookDateTime`, `isPaid`) VALUES
(8, 6, '2024-06-14 18:53:00', 'Yes'),
(8, 1, '2024-06-30 18:53:00', 'Yes'),
(8, 1, '2024-07-15 19:02:00', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `communityID` int(11) NOT NULL,
  `communityName` varchar(50) DEFAULT NULL,
  `communityDesc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`communityID`, `communityName`, `communityDesc`) VALUES
(1, 'Kolej Mat Kilau', 'Untuk pelajar-pelajar Mat Kilau'),
(2, 'Kolej Tun Teja', 'Untuk pelajar-pelajar Tun Teja'),
(4, 'Kolej Tun Teja 2', 'Untuk pelajar-pelajar Tun Teja 2'),
(5, 'Kedai Runcit Raub', 'Menjual barangan runcit di UiTM Raub'),
(6, 'Anak Muda Raub', 'Komuniti usahawan terdiri daripada anak-anak muda Raub'),
(7, 'Persatuan Pakar IT', 'DIketuai En Shahmin bin Mohamad Fariz'),
(8, 'Persatuan Pakar Bahasa', 'Ketua: Shahmin Fariz');

-- --------------------------------------------------------

--
-- Table structure for table `community_leader`
--

CREATE TABLE `community_leader` (
  `leaderID` int(11) NOT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `communityID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `community_leader`
--

INSERT INTO `community_leader` (`leaderID`, `vendorID`, `communityID`) VALUES
(1, 13, 1),
(2, 13, 2),
(3, 13, 4),
(4, 14, 5),
(5, 16, 6),
(6, 13, 7),
(7, 13, 8);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `name`, `email`, `username`, `pword`) VALUES
(8, 'Muhammad Hazeeq Aiman', 'muhdhazeeq137@gmail.com', 'hazeeq123', '$2y$10$DaJwc2tso7/fLxD3fR1eouGF3NVkZ4s65r3/zFundISvso320ABlO'),
(9, 'Abu', 'abu@gmail.com', 'abu123', '$2y$10$c1dwjkkOW0IBcOunXZSawuuW1KGyriZHG/Y4ohEkQu6rSYEPcck.a'),
(10, 'Akim', 'akim@gmail.com', 'akim123', '$2y$10$eYBsBL3eBd0oWNuLA5ygLe2RzhCI0g5etJP1m5MQZEzAfCHxG2Ham'),
(11, 'Aisyah', 'aisyah@gmail.com', 'aisyah123', '$2y$10$2E6rHt4LDvC0oKbVJ30g/etLEwDSPCH9D9K9fDLdla3JM1BuPpbi6');

-- --------------------------------------------------------

--
-- Table structure for table `customer_community`
--

CREATE TABLE `customer_community` (
  `customerID` int(11) NOT NULL,
  `communityID` int(11) NOT NULL,
  `joinDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_community`
--

INSERT INTO `customer_community` (`customerID`, `communityID`, `joinDate`) VALUES
(8, 1, '2024-06-14'),
(8, 2, '2024-06-14'),
(8, 4, '2024-06-14'),
(8, 5, '2024-06-14'),
(8, 6, '2024-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `productName` varchar(50) DEFAULT NULL,
  `productDesc` varchar(100) DEFAULT NULL,
  `qtyInStock` int(11) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `vendorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `productName`, `productDesc`, `qtyInStock`, `price`, `image`, `vendorID`) VALUES
(1, 'Nasi Lemak', 'Sambal pedas sikit noh', 2, 1.50, 'coconut shake.jpg', 13),
(2, 'Pau Ayam', 'Inti gebu ni', 44, 2.00, 'iron2.jpg', 13),
(4, 'Nasi Goreng', 'Semua style ada', 29, 3.00, 'nasi-goreng-recipe.jpg', 14),
(6, 'Jus Tembikai', 'Jus segar diperah, hanya tembikai yang manis', 22, 2.00, 'pngtree-iced-delicious-watermelon-juice-refreshing-drink-photography-map-with-pictures-picture-image_1512916.jpg', 14),
(7, 'Air kelapa', 'SEGAR SEGAR SEGAR!', 37, 3.00, 'airkelapa.jpg', 13),
(8, 'Keropok Bika Ayam', 'Ayam bakar sedap', 46, 2.00, 'keropok bika.jpeg', 13),
(10, 'Coconut Shake', 'Coconut fresh', 80, 4.00, '', 13);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serviceID` int(11) NOT NULL,
  `serviceName` varchar(50) DEFAULT NULL,
  `serviceDesc` varchar(100) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serviceID`, `serviceName`, `serviceDesc`, `price`, `vendorID`, `status`, `image`) VALUES
(1, 'Massage PADU', 'MASSAGE HILANG SAKIT SENDI', 10.00, 13, 'Empty', 'coway-7-step-massage-chair-care-service.png'),
(6, 'Gunting rambut', 'Barber boleh sediakan pelbagai bentuk rambut untuk anda', 18.00, 13, 'Busy', 'G.png'),
(7, 'Catering (Pakej A)', 'Menyediakan catering untuk 200 orang', 100.00, 14, 'Busy', 'catering-dishes-1024x694.jpg'),
(8, 'Rental Car', 'Semua kereta berwarna merah sahaja. Harga berdasarkan per 24 jam.', 150.00, 13, 'Empty', '');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pword` varchar(100) DEFAULT NULL,
  `businessName` varchar(50) DEFAULT NULL,
  `businessDesc` varchar(200) DEFAULT NULL,
  `businessType` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `phoneNum` varchar(15) DEFAULT NULL,
  `doDelivery` varchar(3) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorID`, `name`, `email`, `username`, `pword`, `businessName`, `businessDesc`, `businessType`, `location`, `phoneNum`, `doDelivery`, `image`) VALUES
(13, 'Pok Du', 'tekun@gmail.com', 'TekunMart', '$2y$10$R9dJpStg1NeDcYRpR13wn.WPYP40YGg8VaGUkIstbtG6IRcr6YQyK', 'Tekun Mart Enterprise', 'Kedai runcit kegemaran anda', 'Food', 'Sebelah kedai Kak Su', '01154555766', 'No', 'cstore-minit-interior.jpg'),
(14, 'Kak Su', 'kaksu@gmail.com', 'KakSu', '$2y$10$x/xJTqSqUd6NFleVNIOgk.eHsB3AUvJLxvLTQN0EwiRkPbeWEt8f.', 'Kedai Makan Kak Su', 'Semua masak panas-panas noh', 'Food', 'Medan Selera UiTM Raub', '0163573322', 'No', 'images (2).jpg'),
(15, 'Syakir', 'toasterbro@gmail.com', 'ToasterBro', '$2y$10$bOcNGHY0aYQa76xvLwJwlOqRb6MmeRPzvgh0sBOxgI7UMv64TC4Vm', 'Toaster Bro', 'Menjual roti bakar terbaik di pasaran', 'Food', 'Kolej Mat Kilau, Tingkat 5, Rumah 10', '0129986622', 'Yes', '15717721__dOsKxN495yaDPoicA-AWXBp6cgG0JAbNqAYFOm-RAU.jpg'),
(16, 'Shahmin', 'PrinterBoss@gmail.com', 'PrinterBoss', '$2y$10$5leXf/3Wcm/tgBmzd8y37umSi.b8GeH419tPOZAJqZIhH/tpPwk3a', 'Printer Boss', 'Servis mencetak kertas untuk pelajar', 'Craft', 'Kolej Mat Kilau, Tingkat 4, Rumah 9', '0137726622', 'Yes', 'images (3).jpg'),
(17, 'Tok Wi', 'bundleTok@gmail.com', 'BundleTok', '$2y$10$ejcOIybs6ggT7fl165DMFeWpyGT3UhlfZtC34cwFjKqt6ZyVrZ9ru', 'Bundle Tok', 'Menjual pakaian-pakaian terpakai dengan harga murah untuk pelajar', 'Clothing', 'Kolej Tun Teja 1, Tingkat 6, Rumah 3', '0122422588', 'No', 'aa63.jpg'),
(19, 'abu', 'a@gmail.com', 'abu1234', '$2y$10$kM57EImsWfQRTTD0Cy8.pe2axGFbi3oyDQallh7nKYag.pPxl4gVy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'En Shahril', 'pk@gmail.com', 'pk123', '$2y$10$XS.IpETZy5F2GVguGBZEJ.nvA3kkCCJJqPE0NMLLh/TIBcTdd/zuC', 'Pokok Kelapa', 'Kedai mamak', 'Food', 'Raub', '0121221221', 'No', 'keropok bika 2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_community`
--

CREATE TABLE `vendor_community` (
  `vendorID` int(11) NOT NULL,
  `communityID` int(11) NOT NULL,
  `joinDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_community`
--

INSERT INTO `vendor_community` (`vendorID`, `communityID`, `joinDate`) VALUES
(13, 1, '2024-06-14'),
(13, 2, '2024-06-14'),
(13, 4, '2024-06-14'),
(13, 5, '2024-06-06'),
(13, 6, '2024-06-14'),
(13, 7, '2024-06-14'),
(13, 8, '2024-06-14'),
(14, 5, '2024-06-06'),
(15, 5, '2024-06-12'),
(15, 6, '2024-06-14'),
(16, 5, '2024-06-12'),
(16, 7, '2024-06-14'),
(17, 5, '2024-06-12'),
(20, 6, '2024-06-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `cart_product`
--
ALTER TABLE `cart_product`
  ADD KEY `cartID` (`cartID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `cart_service`
--
ALTER TABLE `cart_service`
  ADD KEY `cartID` (`cartID`),
  ADD KEY `serviceID` (`serviceID`);

--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`communityID`);

--
-- Indexes for table `community_leader`
--
ALTER TABLE `community_leader`
  ADD PRIMARY KEY (`leaderID`),
  ADD KEY `vendorID` (`vendorID`),
  ADD KEY `communityID` (`communityID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD UNIQUE KEY `c_email` (`email`),
  ADD UNIQUE KEY `c_username` (`username`);

--
-- Indexes for table `customer_community`
--
ALTER TABLE `customer_community`
  ADD PRIMARY KEY (`customerID`,`communityID`),
  ADD KEY `communityID` (`communityID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `vendorID` (`vendorID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serviceID`),
  ADD KEY `vendorID` (`vendorID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`),
  ADD UNIQUE KEY `v_email` (`email`),
  ADD UNIQUE KEY `v_username` (`username`),
  ADD KEY `businessName` (`businessName`) USING BTREE;

--
-- Indexes for table `vendor_community`
--
ALTER TABLE `vendor_community`
  ADD PRIMARY KEY (`vendorID`,`communityID`),
  ADD KEY `communityID` (`communityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `communityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `community_leader`
--
ALTER TABLE `community_leader`
  MODIFY `leaderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`);

--
-- Constraints for table `cart_product`
--
ALTER TABLE `cart_product`
  ADD CONSTRAINT `cart_product_ibfk_1` FOREIGN KEY (`cartID`) REFERENCES `cart` (`cartID`),
  ADD CONSTRAINT `cart_product_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`);

--
-- Constraints for table `cart_service`
--
ALTER TABLE `cart_service`
  ADD CONSTRAINT `cart_service_ibfk_1` FOREIGN KEY (`cartID`) REFERENCES `cart` (`cartID`),
  ADD CONSTRAINT `cart_service_ibfk_2` FOREIGN KEY (`serviceID`) REFERENCES `services` (`serviceID`);

--
-- Constraints for table `community_leader`
--
ALTER TABLE `community_leader`
  ADD CONSTRAINT `community_leader_ibfk_1` FOREIGN KEY (`vendorID`) REFERENCES `vendor` (`vendorID`),
  ADD CONSTRAINT `community_leader_ibfk_2` FOREIGN KEY (`communityID`) REFERENCES `community` (`communityID`);

--
-- Constraints for table `customer_community`
--
ALTER TABLE `customer_community`
  ADD CONSTRAINT `customer_community_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `customer_community_ibfk_2` FOREIGN KEY (`communityID`) REFERENCES `community` (`communityID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`vendorID`) REFERENCES `vendor` (`vendorID`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`vendorID`) REFERENCES `vendor` (`vendorID`);

--
-- Constraints for table `vendor_community`
--
ALTER TABLE `vendor_community`
  ADD CONSTRAINT `vendor_community_ibfk_1` FOREIGN KEY (`vendorID`) REFERENCES `vendor` (`vendorID`),
  ADD CONSTRAINT `vendor_community_ibfk_2` FOREIGN KEY (`communityID`) REFERENCES `community` (`communityID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
