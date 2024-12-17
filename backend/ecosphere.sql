-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 01:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecosphere`
--

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `hashtags` text NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id`, `user_id`, `uname`, `title`, `caption`, `image_url`, `hashtags`, `createdAt`, `updatedAt`) VALUES
(6, 1, 'daffa', 'TEST', 'lorem ipsum ulala slebew', NULL, '#test #example #miaw', '2024-12-06 20:55:47', '2024-12-06 20:55:47'),
(11, 5, 'sumbul', 'PRE-FINAL PRESENTATION', 'lorem ipsum aaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, '#a6 #miaw #s19m4 #slibauw', '2024-12-09 03:15:06', '2024-12-09 03:15:06'),
(30, 5, 'sumbul', 'What eco-friendly DIY projects have you tried recently?', 'update test', NULL, '#ecosphere', '2024-12-11 03:13:36', '2024-12-12 15:15:49'),
(35, 7, 'user_eco', 'TEST12345', 'lorem ipsum', NULL, '#12345', '2024-12-15 16:36:19', '2024-12-15 16:39:21'),
(46, 8, 'user_test123', 'Mengubah Rumah Menjadi Tempat Tinggal Ramah Lingkungan', 'Mengubah rumah biasa menjadi rumah ramah lingkungan bukanlah hal yang sulit, kok! Dengan langkah-langkah kecil, kita bisa membantu melindungi bumi dan sekaligus menghemat pengeluaran sehari-hari.\n\nSalah satu langkah pertama yang bisa kita ambil adalah mengganti lampu biasa dengan lampu LED yang hemat energi. Selain itu, cobalah menggunakan peralatan rumah tangga dengan label hemat energi (energy star). Dengan cara ini, kita bisa mengurangi konsumsi listrik secara signifikan.\n\nDi bagian dapur, mulai biasakan membawa tas belanja sendiri dan hindari penggunaan plastik sekali pakai. Kalau ada barang yang tidak terpakai, jangan langsung dibuang. Mungkin bisa di-upcycle menjadi barang baru yang bermanfaat, seperti pot tanaman atau dekorasi rumah! 🌱\n\nPunya halaman atau balkon? Manfaatkan untuk menanam tanaman hijau atau sayuran. Selain membantu mengurangi jejak karbon, suasana rumah jadi lebih asri dan sejuk. Jangan lupa, air hujan juga bisa ditampung untuk menyiram tanaman atau kebutuhan lainnya.\n\nBagaimana dengan kalian? Sudah mulai langkah kecil apa untuk membuat rumah lebih eco-friendly? Yuk, berbagi cerita dan tips kalian di kolom komentar! 🌍✨', NULL, '#EcoFriendlyLiving #RumahHijau #HematEnergi #SustainableLiving #GoGreenTogether #EcspherForum #ZeroWasteJourney', '2024-12-16 20:00:56', '2024-12-16 20:00:56'),
(55, 9, 'ade', '💡 Belajar dari Alam 🌱', 'Hidup ini seperti tanaman kecil yang kita rawat. Setiap hari adalah proses—menanam, menyiram, dan menunggu. Kadang ada badai yang merusak, kadang matahari terlalu terik, tapi setiap tantangan adalah bagian dari perjalanan. Sama seperti hidup, kita perlu usaha, kesabaran, dan keyakinan bahwa waktu yang tepat akan datang.\r\n\r\nHari ini mungkin terasa berat, langkah-langkahmu mungkin terasa kecil, tapi jangan lupa bahwa setiap langkah itu membawa kamu lebih dekat pada tujuan. Percayalah pada prosesnya, karena yang indah tidak pernah tercipta dalam satu malam.\r\n\r\nSemangat untuk terus bertumbuh, seperti pohon yang akarnya kuat dan cabangnya menjulang tinggi. 🌳✨', '/uploads/forum_images/1734432229752.jpg', '#MotivasiHidup #BelajarDariAlam #SelfGrowth #SemangatHidup #ProsesBerkembang #HidupSeimbang #JanganMenyerah #PohonKehidupan #LangkahKecil #HidupBahagia #PercayaProses #MentalHealthAwareness #PositivityJourney #InspireOthers #QuotesOfTheDay', '2024-12-17 10:43:49', '2024-12-17 10:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `forum_id`, `user_id`, `createdAt`, `updatedAt`) VALUES
(16, 35, 8, '2024-12-16 12:59:34', '2024-12-16 12:59:34'),
(20, 30, 8, '2024-12-16 13:26:25', '2024-12-16 13:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `reply_text` text NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `forum_id`, `user_id`, `uname`, `reply_text`, `createdAt`, `updatedAt`) VALUES
(1, 30, 5, 'sumbul', 'cek123', '2024-12-13 14:05:22', '2024-12-13 14:05:22'),
(2, 30, 5, 'sumbul', 'test', '2024-12-13 14:05:55', '2024-12-13 14:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `refresh_token`, `profile_image`, `createdAt`, `updatedAt`) VALUES
(1, 'M Daffa', 'daffa', 'daffa@gmail.com', '$2b$10$ZGieW90MlMNbAXPawMwDHe7qnKzyOUuh/0vscBPYrZFaaKvvnbPrm', NULL, NULL, '2024-12-06 13:36:19', '2024-12-06 13:36:19'),
(2, 'Nur Fadillah DwI Rahma', 'dillanfdr', 'dilla@gmail.com', '$2b$10$Xsi1Zk1EMmGs7xnoIjxZMe6Ao5PeNTaWJ26CvE8.QK/RNC77OH8Be', NULL, NULL, '2024-12-06 13:36:49', '2024-12-06 13:36:49'),
(3, 'user test ke 99x', 'bloewbewy', 'lala@gmail.com', '$2b$10$VedY1Gdcam8LkGs9yRvB0OqRfntiVT2dDDv0/jDXmW5LGbfFqxWL2', NULL, '/profiles/1734421938280.jpeg', '2024-12-07 16:52:05', '2024-12-17 07:52:18'),
(5, 'Muhammad Sumbul', 'sumbul', 'sumbul@gmail.com', '$2b$10$6/1WNim1XxUPg/g6K0pAq.xqKWLvl34uXL09EoNmWdBXm4S2/lBa6', NULL, '/profiles/1734008796038.jpg', '2024-12-09 03:13:25', '2024-12-12 13:06:36'),
(6, 'Ecosphere', 'ecosphere', 'eco@gmail.com', '$2b$10$rsyNjd6aO1/NX42JqD63CeLvA38yQ9uCEToA2.voevtcBpPO2hy9C', NULL, NULL, '2024-12-14 14:52:22', '2024-12-14 14:52:22'),
(7, 'user eco', 'user_eco', 'mdaffa@gmail.com', '$2b$10$YE1/U/8PUDctNNbFitbuO.XTnwMoNU2SxRZuFTHUfDD3CsA572k1u', NULL, '/profiles/1734279626655.jpeg', '2024-12-15 16:18:47', '2024-12-15 16:20:26'),
(8, 'user user', 'user_test123', 'test@gmail.com', '$2b$10$EUW.RwwdXWGPNrlG09iKqe4wA9oVAH7XtGjnzZph8ZnsHvbIPplya', NULL, '/profiles/1734375909196.jpeg', '2024-12-16 03:02:43', '2024-12-16 19:05:09'),
(9, 'user test ke 99x', 'ade', 'ade@gmail.com', '$2b$10$lzMcSDn0JKVfge9shvq6COGRwo8n2TToeqiY5s0.zV5gZ/I6JK3bm', NULL, '/profiles/1734432154193.jpeg', '2024-12-17 09:20:52', '2024-12-17 10:42:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `uname` (`uname`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `uname` (`uname`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_ibfk_2` FOREIGN KEY (`uname`) REFERENCES `users` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `replies_ibfk_3` FOREIGN KEY (`uname`) REFERENCES `users` (`username`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
