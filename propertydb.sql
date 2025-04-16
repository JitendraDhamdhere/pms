-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2025 at 04:40 PM
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
-- Database: `propertydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Pending','Confirmed','Cancelled') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `property_id`, `user_id`, `booking_date`, `status`) VALUES
(1, 1, 5, '2025-04-10 20:07:48', 'Pending'),
(2, 3, 8, '2025-03-31 20:08:04', 'Confirmed'),
(3, 6, 9, '2025-04-09 20:08:14', 'Pending'),
(24, 21, 11, '2025-04-12 04:45:00', 'Confirmed'),
(25, 22, 12, '2025-04-13 09:00:00', 'Pending'),
(26, 23, 13, '2025-04-14 04:15:00', 'Confirmed'),
(27, 24, 14, '2025-04-15 11:30:00', 'Pending'),
(28, 25, 15, '2025-04-16 07:50:00', 'Confirmed'),
(29, 26, 16, '2025-04-13 05:40:00', 'Cancelled'),
(30, 27, 17, '2025-04-08 11:10:00', 'Confirmed'),
(31, 28, 18, '2025-04-09 09:55:00', 'Pending'),
(32, 2, 5, '2025-04-16 18:30:00', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `submitted_at`) VALUES
(1, 'Rahul Sharma', 'rahul.sharma@example.com', '9876543210', 'I am interested in the 2BHK apartment. Please share more details.', '2025-02-28 20:02:55'),
(2, 'Priya Verma', 'priya.verma@example.com', '9823456789', 'Can you provide the final price for the villa in Kothrud, Pune?', '2025-02-28 20:02:55'),
(3, 'Amit Khanna', 'amit.khanna@example.com', '9898989898', 'Is the commercial office space still available? I want to schedule a visit.', '2025-02-28 20:02:55'),
(4, 'Neha Desai', 'neha.desai@example.com', '9765432101', 'I would like to know if there are any discounts available on the penthouse.', '2025-02-28 20:02:55'),
(5, 'Rohan Patil', 'rohan.patil@example.com', '9856473829', 'What are the loan options available for purchasing this property?', '2025-02-28 20:02:55'),
(6, 'Jitendra Dhamdhere', 'jitendradhamdhere333@gmail.com', '9657795194', 'sdklfcsdokfcwesdx', '2025-04-11 18:55:35'),
(7, 'Jitendra Developer', 'jitendradevelopr333@gmail.com', '9657795472', 'enquiry form test', '2025-04-12 08:39:13'),
(8, 'Sonia Mehta', 'sonia.mehta@example.com', '9876512345', 'Interested in the office space in Magarpatta.', '2025-03-02 04:35:00'),
(9, 'Vikram Joshi', 'vikram.joshi@example.com', '9876501234', 'What is the maintenance cost for the apartment in Baner?', '2025-03-02 05:50:00'),
(10, 'Anjali Kulkarni', 'anjali.kulkarni@example.com', '9865432198', 'Looking to book a visit for the villa in Shivaji Nagar.', '2025-03-03 04:20:00'),
(11, 'Manish Rao', 'manish.rao@example.com', '9856789012', 'Is the land plot in Koregaon Park still available?', '2025-03-03 07:00:00'),
(12, 'Deepa Nair', 'deepa.nair@example.com', '9845671230', 'Can I get more pictures of the Wakad penthouse?', '2025-03-04 08:40:00'),
(13, 'Alok Verma', 'alok.verma@example.com', '9832109876', 'Need help understanding EMI options.', '2025-03-04 10:15:00'),
(14, 'Megha Shah', 'megha.shah@example.com', '9823456701', 'Please arrange a call with your agent.', '2025-03-05 05:45:00'),
(15, 'Nilesh Pawar', 'nilesh.pawar@example.com', '9812345670', 'What’s the registration cost for the property in Hadapsar?', '2025-03-05 07:30:00'),
(16, 'Tanvi Deshpande', 'tanvi.d@example.com', '9801234567', 'I’m ready to book the suburban house. Next steps?', '2025-03-06 05:00:00'),
(17, 'Aditya Rane', 'aditya.rane@example.com', '9798765432', 'Is there parking available in the downtown condo?', '2025-03-06 10:30:00'),
(18, 'Neel Joshi', 'neel.joshi@example.com', '9786543210', 'Can I schedule a visit for Sunday?', '2025-03-07 03:50:00'),
(19, 'Sneha Patil', 'sneha.patil@example.com', '9775432109', 'What are the legal charges for property transfer?', '2025-03-07 06:20:00'),
(20, 'Ravi Deshmukh', 'ravi.deshmukh@example.com', '9764321098', 'Need help with home loan application.', '2025-03-08 09:10:00'),
(21, 'Kavita Jain', 'kavita.jain@example.com', '9753210987', 'What is the carpet area for the Kharadi land?', '2025-03-08 10:05:00'),
(22, 'Pooja Goyal', 'pooja.goyal@example.com', '9742109876', 'Is there a clubhouse with the apartment?', '2025-03-09 07:55:00'),
(23, 'Rajiv Mehta', 'rajiv.mehta@example.com', '9731098765', 'I’d like to make an advance payment.', '2025-03-09 11:45:00'),
(24, 'Sagar Bhonsle', 'sagar.bhonsle@example.com', '9720987654', 'Can I customize the interiors?', '2025-03-10 04:30:00'),
(25, 'Ritika Kulkarni', 'ritika.k@example.com', '9719876543', 'How many balconies does the property have?', '2025-03-10 08:40:00'),
(26, 'Anup Shetty', 'anup.shetty@example.com', '9708765432', 'I want to cancel my booking. How to proceed?', '2025-03-11 05:30:00'),
(27, 'Isha Menon', 'isha.menon@example.com', '9697654321', 'Is the price negotiable for the villa?', '2025-03-11 06:50:00'),
(28, 'Jitendra Dhamdhere', 'jitendradhamdhere333@gmail.com', '9657795194', 'I want 2bhk flat in Talegoan for rent', '2025-04-13 18:38:07'),
(29, 'Jitendra Dhadhdhere', 'justtpnotes@gmail.com', '9657795194', 'test message for contact us', '2025-04-16 10:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image_url` longtext NOT NULL,
  `alt_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` enum('Apartment','House','Office','Land') NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `location` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `status` enum('Available','Sold','Rented') DEFAULT 'Available',
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `title`, `description`, `type`, `price`, `location`, `size`, `bedrooms`, `bathrooms`, `status`, `image`, `created_at`) VALUES
(1, 'Luxury Apartment in Downtown', 'A high-rise apartment with modern amenities and city views.', 'Apartment', 8500000.00, 'Kothrud, Pune', 1500, 3, 2, 'Available', 'image/property1.jpg', '2025-02-28 19:45:55'),
(2, 'Spacious Family Home', 'A perfect home for families with a large backyard.', 'House', 1200000.00, 'Baner, Pune', 3000, 4, 3, 'Available', 'image/property2.jpg', '2025-02-28 19:45:55'),
(3, 'Prime Office Space', 'An ideal office space for startups and enterprises.', 'Office', 5000000.00, 'Hinjewadi, Pune', 2000, 0, 2, 'Sold', 'image/property3.jpg', '2025-02-28 19:45:55'),
(4, 'Modern Penthouse', 'A luxurious penthouse with a private terrace and skyline views.', 'Apartment', 1800000.00, 'Wakad, Pune', 2200, 3, 3, 'Available', 'image/property4.jpg', '2025-02-28 19:45:55'),
(5, 'Cozy Suburban House', 'A beautiful home in a quiet neighborhood.', 'House', 9500000.00, 'Viman Nagar, Pune', 2500, 3, 2, 'Available', 'image/property5.jpg', '2025-02-28 19:45:55'),
(6, 'Commercial Land for Development', 'An excellent opportunity for developers.', 'Land', 300000.00, 'Kharadi, Pune', 15000, 0, 0, 'Available', 'image/property6.jpg', '2025-02-28 19:45:55'),
(7, 'Downtown Condo', 'A stylish condo in the heart of the city.', 'Apartment', 7500000.00, 'Hadapsar, Pune', 1200, 2, 2, 'Available', 'image/property7.jpg', '2025-02-28 19:45:55'),
(8, 'Luxury Office Tower Suite', 'A premium office space in a prestigious tower.', 'Office', 7000000.00, 'Magarpatta, Pune', 3500, 0, 3, 'Available', 'image/property8.jpg', '2025-02-28 19:45:55'),
(9, 'Beachfront Villa', 'A stunning villa with direct beach access.', 'House', 2500000.00, 'Shivaji Nagar, Pune', 5000, 5, 4, 'Available', 'image/property9.jpg', '2025-02-28 19:45:55'),
(10, 'Investment Land Plot', 'A strategically located land for future development.', 'Land', 4500000.00, 'Koregaon Park, Pune', 20000, 0, 0, 'Available', 'image/property10.jpg', '2025-02-28 19:45:55'),
(21, 'Elegant Studio Apartment', 'A compact and stylish studio perfect for bachelors or couples.', 'Apartment', 3200000.00, 'Bavdhan, Pune', 600, 1, 1, 'Available', 'image/property11.jpg', '2025-04-13 18:04:36'),
(22, 'Lakeview Bungalow', 'Spacious bungalow overlooking the lake with serene views.', 'House', 11500000.00, 'Pashan, Pune', 4000, 4, 4, 'Available', 'image/property12.jpg', '2025-04-13 18:04:36'),
(23, 'Tech Park Office Space', 'Modern office space in Pune’s leading IT hub.', 'Office', 9800000.00, 'Hinjewadi Phase 2, Pune', 5000, 0, 4, 'Available', 'image/property13.jpg', '2025-04-13 18:04:36'),
(24, 'Countryside Farmhouse', 'A peaceful farmhouse ideal for weekend getaways.', 'House', 6700000.00, 'Mulshi, Pune', 3500, 3, 2, 'Available', 'image/property14.jpg', '2025-04-13 18:04:36'),
(25, 'Boutique Commercial Plot', 'Prime commercial plot near major shopping district.', 'Land', 6000000.00, 'Camp, Pune', 18000, 0, 0, 'Available', 'image/property15.jpg', '2025-04-13 18:04:36'),
(26, 'High-Rise Residential Flat', 'Modern flat in a gated society with all amenities.', 'Apartment', 5400000.00, 'Katraj, Pune', 1300, 2, 2, 'Available', 'image/property16.jpg', '2025-04-13 18:04:36'),
(27, 'Budget Office Space', 'Affordable workspace for startups and small businesses.', 'Office', 3000000.00, 'Deccan, Pune', 1500, 0, 1, 'Available', 'image/property17.jpg', '2025-04-13 18:04:36'),
(28, 'Riverside Villa', 'Luxury villa with a view of the river and private garden.', 'House', 12500000.00, 'Sinhagad Road, Pune', 4500, 5, 4, 'Available', 'image/property18.jpg', '2025-04-13 18:04:36'),
(29, 'Industrial Land Plot', 'Large land plot ideal for setting up factories.', 'Land', 8000000.00, 'Chakan, Pune', 30000, 0, 0, 'Available', 'image/property19.jpg', '2025-04-13 18:04:36'),
(30, 'City Center Flat', 'Flat in the heart of Pune with excellent connectivity.', 'Apartment', 7200000.00, 'Shivaji Nagar, Pune', 1100, 2, 2, 'Available', 'image/property20.jpg', '2025-04-13 18:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `phone`, `username`, `password`, `created_at`) VALUES
(5, 'Jitu Dhamdhere', 'jitu@gmail.com', '89835 90589', 'Jitendra', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-02-28 19:55:14'),
(6, 'ram patil', 'ram@gmail.com', '9876565454', 'ram', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-02-28 19:57:19'),
(7, 'shyam Patil', 'shyam@gmail.com', '8765676768', 'shyam', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-02-28 19:57:38'),
(8, 'Jitendra Dhamdhere', 'jitendradhamdhere333@gmail.com', '9657795194', 'JItendraD', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-03-04 17:11:26'),
(9, 'urmila mam', 'um@gmail.com', '8767676767', 'urmilamam', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-04-12 08:40:13'),
(10, 'Ravi Shinde', 'ravi.shinde@example.com', '9876543210', 'ravi', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-04-13 18:00:55'),
(11, 'Sneha Kulkarni', 'sneha.k@example.com', '9123456780', 'sneha', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-04-13 18:00:55'),
(12, 'Vikram Deshmukh', 'vikram.d@example.com', '9988776655', 'vikram', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-04-13 18:00:55'),
(13, 'Pooja Jadhav', 'pooja.j@example.com', '9012345678', 'pooja', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-04-13 18:00:55'),
(14, 'Amit More', 'amit.more@example.com', '9765432109', 'amit', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-04-13 18:00:55'),
(15, 'Neha Pawar', 'neha.p@example.com', '9823456701', 'neha', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-04-13 18:00:55'),
(16, 'Suresh Kharat', 'suresh.k@example.com', '9908765432', 'suresh', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-04-13 18:00:55'),
(17, 'Priya Patil', 'priya.p@example.com', '9876054321', 'priya', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-04-13 18:00:55'),
(18, 'Aniket Joshi', 'aniket.j@example.com', '9234567890', 'aniket', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-04-13 18:00:55'),
(19, 'Swati Desai', 'swati.d@example.com', '9354678901', 'swati', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2025-04-13 18:00:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
