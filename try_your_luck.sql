-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 29, 2024 at 04:42 AM
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
-- Database: `try_your_luck`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `img` text NOT NULL DEFAULT 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOMAAADeCAMAAAD4tEcNAAAAgVBMVEXu7u4AAABmZmbz8/Ojo6NhYWFqamrj4+OYmJjx8fHm5uZjY2NdXV13d3dycnLGxsaFhYV9fX2Li4tSUlLa2tqVlZUqKiqpqaltbW3MzMxZWVlISEixsbEjIyMvLy+CgoILCwsVFRW/v788PDywsLBDQ0MbGxv///89PT1NTU01NTV3vw3CAAAEOklEQVR4nO3cCXOaQBjGcV9czuVcFjlEQYxpk+//AbviEQ9M0olNXPr8xpmagBn/7vIO6XQ6mQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD8M9P7+OmM90zD4h7CR46cWtww+NeoH2A9dqMh7a+SxqM32u4Xf4Zrj79xgsYfh8ZPQuOP+5tGdzodPnU0ja5b1p0cbBlL47QsKt+vhDdw9kgaXemrezbDMIOBgyNpnAZ9omH4+XXOOBrVMu4SDV6MtjE6NBrVaBvLY6M5msar7/HDXhUjaXTt8uJNT5+qXaIvr0/XsdH1Ej+6eNeuU6lf+U2/G6jRsNGdBKbhX61kKYrQGbzR0a/R9VSimp+Xke72798G55N2jWqjmrsBerldb9Kt8Zio5svNSPd8PXVrfEs0+K2VdL3m7NZcr8Z+3Ly5Gjy7k7zAD08jtWrcj5uTyIGVdL2QGzw8eZlOjSfX4vHO7SpSfQ68/yXLPh7RqHEg0eCXg6dfxf5IcHyhPo1DiVeDZ7+K/RIfr0ltGi/GzfDgOUlU+YdIXRqvxs3Q4Dlu1EPk7rWaNA5v1IvBc7aKxm7wbF+sR+O7iYfBc7GK/ZE+UoPGydndzc2VvFrF/sD2mtSgUa3EzWvxsF5q8Awl9oNnqkHj9Pa4eeN3g4nblbS9h2/0Ptqo+5bhxO01Ka1Hb5TNZxLfwcOHX8dPbNQPPXrjrT04psZ7QOMPQyMatWk0zHswHrrRuY9Hbvwf/o0uAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD81+70P2w8sgkbvwmNHxrHAY3jsG8MVkTF6/Xhlyw4/bINv+Et3d2+MbKI3OM3y8OTmc27nOrjgVVJGto38k49zKjcPJcyFr+6VSkZRTKRRMvol5hLaVEuO4ooMr7njcU09/snm1n/R8LSdHdkYZ2fyRORV5kTCFYI0QixSRlfMkHqsXO4HkvqUvlilZ2vls2mjlMU2gsStqzaiOQzyaCmIIy679qtNTlVnCxZkjOTcaepySqtxlkLJxXJguLts5ecZQ45lObqM5kv1X7jYZ21NT2ZbZ69BsZ5Y23YNIlFEC1oqRrlK7GsI/OFNvI52m7ejsXUzqT8rkYzcERe5rRJfjNiNfmZyFbquknIkgG1ORUNdXEyr1dxu4pDYtQGMT2RP8ue1BdVnKvg88bUZdQJR8Sd2p+en3ShXJc095L6qfXWNRPlqwxLqyR7YDL9E7KwmjiIRSGyIGNUByzz8yZhTZixeZrHJmuyOJ7Xqelnjl9YMybCNFY7NHQCxsvQd9jmvJHU+q8SFc6bGaUJ+fGSTHUxNAVRyClMWvodp8Rpk35T41p98LP+QZXaW4uqXWwWKc3UY7FcHp6tZoxoPqdZS+sXWra0VO+val8rk+ZrumjU1urDM/Rv/BgaxwGN4/AH6s9mPGHx5tYAAAAASUVORK5CYII=',
  `price` int(11) UNSIGNED NOT NULL,
  `target` bigint(20) UNSIGNED NOT NULL,
  `sd` date NOT NULL DEFAULT current_timestamp(),
  `about` text NOT NULL,
  `is_end` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `img`, `price`, `target`, `sd`, `about`, `is_end`) VALUES
(16, 'School Bag', 'https://media.istockphoto.com/id/1886884898/photo/yellow-backpack-suspended-in-air-on-blue-background.webp?a=1&b=1&s=612x612&w=0&k=20&c=Q0cKwSQoQ28e17ty7-LN07OzH_Uprib0NpnZRtT33CA=', 500, 1, '2024-10-06', 'when 1 tickets sold then declare Winner', 1),
(17, 'Lunch BOx', 'https://media.istockphoto.com/id/1397286350/photo/top-view-of-a-lunch-box-on-color-background.webp?a=1&b=1&s=612x612&w=0&k=20&c=W7J79OMcL_8egd4JHxkd9h37JvcXP1GrkSZCrrs5NM0=', 20, 4, '2024-10-06', 'when 4 tickets sold then declare Winner', 0),
(18, 'Water Bottol', 'https://images.unsplash.com/photo-1530711654140-23ef9ad45094?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHdhdGVyJTIwYm90dGxlfGVufDB8fDB8fHww', 9, 5, '2024-10-06', 'when 5 tickets sold then declare Winner', 0),
(19, 'Badminton Kit', 'https://images.unsplash.com/photo-1721760886982-3c643f05813d?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGJhZG1pbnRvbiUyMGtpdHxlbnwwfHwwfHx8MA%3D%3D', 7, 10, '2024-10-06', 'when 10 tickets sold then declare Winner', 0),
(20, 'stationery items', 'https://media.istockphoto.com/id/1298288294/photo/various-stationery-arranged-in-order.jpg?s=1024x1024&w=is&k=20&c=aWqX_RYQyg5JYHTtdFyaLcmBTzPfQBHnd-i-J4Gz9VA=', 5, 11, '2024-10-06', 'when 11 tickets sold then declare Winner', 0),
(21, 'volleyball', 'https://media.istockphoto.com/id/618341990/photo/volleyball-ball-isolated-on-white-background.webp?a=1&b=1&s=612x612&w=0&k=20&c=UrWV10e1sReO8wi9qrV8zKW1NPzby0oFn9E0hMhZYSk=', 11, 5, '2024-10-06', 'when 5 tickets sold then declare Winner', 0),
(22, 'T-Shirt', 'https://wisetrolley.com/wp-content/uploads/2020/09/Apna-Time-Aayega-T-shirt-Black-4.jpg', 25, 3, '2024-10-17', 'max ticket sell 5', 0),
(23, 'I Phone 16 PRO MAX', 'data:image/jpeg;base64,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', 50000, 1, '2024-11-16', 'target only one ticket', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) UNSIGNED NOT NULL,
  `pay_id` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `pay_id`, `user_id`, `item_id`, `date`) VALUES
(16, 'pay_P5oF6UJTBknxFz', 32, 19, '2024-10-06 21:26:55'),
(17, 'pay_P5pYvMKikQf9TF', 32, 18, '2024-10-06 22:44:22'),
(18, 'pay_P6AeyqCmruVZl5', 33, 19, '2024-10-07 19:22:42'),
(19, 'pay_PA7qQk4s8ssRmR', 33, 21, '2024-10-17 19:13:27'),
(20, 'pay_PA7r4X7FICAerB', 33, 21, '2024-10-17 19:14:03'),
(21, 'pay_PLsD29SrObHi34', 34, 22, '2024-11-16 11:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `photo` text NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `password`, `email`, `dob`, `phone_no`, `photo`) VALUES
(27, 'minaxi', '774d34d9e117cabebc8bf570a9b786b9', 'minaxi@gmail.com', '2024-10-17', '', 'lofi-girl-5120x2880-14892.jpg'),
(28, 'ratnesh singh', 'e867c749580357a5da2b20967b2ee867', 'ratnesh@gmail.com', '2024-10-11', '', 'img173681481728193598.jpg'),
(29, 'amarjeet', 'ce89baf749a129e94727c43b98587264', 'amarjeet@gmail.com', '2024-10-12', '', 'img510034461728194854.png'),
(32, 'hiteshkumar', '80e2235fd9a018996178a07a6a3f4fff', 'hiteshchaudhary811818@gmail.com', '2024-10-22', '', 'img90951941728213957.jpg'),
(33, 'amarjeet', '81dc9bdb52d04dc20036dbd8313ed055', 'amarjeetmadurana78@gmail.com', '2024-10-10', '', 'img224620351729172323.jpg'),
(34, 'Sonu Singh', '4e30015972cf87afde77736250a252be', 'sonusingh2008128@gmail.com', '2024-11-01', '', 'img310767721731737216.png'),
(35, 'aneri patel', 'b99bc1dfc243462a5519f481502e5e44', 'anerikumari.patel36198@paruluniversity.ac.in', '2024-10-29', '', 'img762317631731744734.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `id` int(10) UNSIGNED NOT NULL,
  `winner_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `lucky_no` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`id`, `winner_id`, `item_id`, `lucky_no`, `date`) VALUES
(10, 27, 16, 15, '2024-10-06'),
(11, 35, 23, 22, '2024-11-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
