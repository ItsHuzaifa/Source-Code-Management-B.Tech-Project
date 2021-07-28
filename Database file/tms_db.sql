-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2021 at 08:16 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int(30) NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `avatar`, `status`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(5, 'Wifi Based Secure Wireless Communication Using RSA', '												&lt;p&gt;&lt;span style=&quot;color: rgb(76, 76, 76); font-family: &amp;quot;Helvetica Neue&amp;quot;; font-size: 18px;&quot;&gt;The WiFi based secured wireless communication using RSA encryption allows us to communicate wirelessly with security feature. The data transfer during communication between two system is encrypted using RSA encryption which is highly secure.&lt;/span&gt;&lt;/p&gt;										', '1611688500_4040_FINAL_TEST.zip', 5, '2021-01-24', '2021-01-25', 11, '13,12', '2021-01-24 10:02:40'),
(6, 'Android Task Monitoring', '																														&lt;span style=&quot;color: rgb(76, 76, 76); font-family: &amp;quot;Helvetica Neue&amp;quot;; font-size: 18px;&quot;&gt;Modern day-to-day life of people in major cities is very demanding and the schedules are equally hectic. In such times, it is practically impossible to keep a track of all the activities/ appointments. Many a times, it happens that we may miss an important task; for example: taking medicines, attending a meeting, returning library books, paying the bills etc. And this cycle can keep going on endlessly.&lt;/span&gt;																				', '1611688440_1010TEST_FILE.zip', 0, '2021-01-24', '2021-01-26', 11, '13,12', '2021-01-24 11:11:08'),
(7, 'Secure Online Auction System', '						&lt;span style=&quot;color: rgb(76, 76, 76); font-family: &amp;quot;Helvetica Neue&amp;quot;; font-size: 18px;&quot;&gt;Online auction however is a different business model where the items are sold through price bidding. Usually bidding have start price and ending time. Potential buyers in auction and the winner is the one who bids the item for highest price. We treat the fraud detection with a binary classification. For buying product online user have to provide his personal details like email address, license number, PAN number etc. Only the valid user will have authority to bid. This prevents various frauds according in online shopping.&lt;/span&gt;					', '1611688500_3030_CHECK_TEST.zip', 0, '2021-01-24', '2021-01-25', 11, '12', '2021-01-24 12:23:13'),
(8, 'Cursor Movement On Object Motion', '																		&lt;span style=&quot;color: rgb(76, 76, 76); font-family: &amp;quot;Helvetica Neue&amp;quot;; font-size: 18px;&quot;&gt;Here we proposed a system where cursor move through desktop and action will occur based on hand gesture. System will apply object movement based on RGB color. System will detect RGB color object which will act as mouse. We had imported java awt in this application. This library is imported in order to work with cursor.&lt;/span&gt;										', '1611688440_2020_FILE_TEST.zip', 5, '2021-01-24', '2021-01-25', 11, '12', '2021-01-24 12:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'GitHub Clone', 'keshav.nanded11@gmail.com', '+919860977251', 'Nanded, Maharashtra', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Sample Task 1', '												&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Fusce ullamcorper mattis semper. Nunc vel risus ipsum. Sed maximus dapibus nisl non laoreet. Pellentesque quis mauris odio. Donec fermentum facilisis odio, sit amet aliquet purus scelerisque eget.&amp;nbsp;&lt;/span&gt;																', 3, '2020-12-03 11:08:58'),
(2, 1, 'Sample Task 2', 'Sample Task 2							', 1, '2020-12-03 13:50:15'),
(3, 2, 'Task Test', 'Sample', 1, '2020-12-03 13:52:25'),
(4, 2, 'test 23', 'Sample test 23', 1, '2020-12-03 13:52:40'),
(5, 5, 'Complete User Interface', '				UI complete			', 3, '2021-01-24 10:03:48'),
(6, 8, 'Issue form validation', '												complete this									', 3, '2021-01-24 12:30:35'),
(7, 6, 'Complete the Properly Backend Database', '&lt;p&gt;Create MySql Database before d&lt;span style=&quot;font-size: 1rem;&quot;&gt;eadline.&lt;/span&gt;&lt;/p&gt;', 2, '2021-01-24 15:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, 'no-image-available.png', '2020-11-26 10:57:04'),
(11, 'KESHAV', 'WAGHMARE', 'keshav@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2, '1611490020_user_1.jpg', '2021-01-24 09:54:52'),
(12, 'sachin', 'kharkade', 'sachin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 3, '1611489900_blog_3.jpg', '2021-01-24 09:56:46'),
(13, 'abhishek', 'supekar', 'abhishek@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 3, '1611489900_episode_2.jpg', '2021-01-24 09:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

CREATE TABLE `user_productivity` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `user_id` int(30) NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `avatar`, `user_id`, `time_rendered`, `date_created`) VALUES
(1, 1, 1, '							&lt;p&gt;Sample Progress&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Test 1&lt;/li&gt;&lt;li&gt;Test 2&lt;/li&gt;&lt;li&gt;Test 3&lt;/li&gt;&lt;/ul&gt;																			', 'Sample Progress', '2020-12-03', '08:00:00', '10:00:00', '', 1, 2, '2020-12-03 12:13:28'),
(2, 1, 1, '							Sample Progress						', 'Sample Progress 2', '2020-12-03', '13:00:00', '14:00:00', '', 1, 1, '2020-12-03 13:48:28'),
(3, 1, 2, '							Sample						', 'Test', '2020-12-03', '08:00:00', '09:00:00', '', 5, 1, '2020-12-03 13:57:22'),
(4, 1, 2, 'asdasdasd', 'Sample Progress', '2020-12-02', '08:00:00', '10:00:00', '', 2, 2, '2020-12-03 14:36:30'),
(5, 4, 0, '													', '', '0000-00-00', '00:00:00', '00:00:00', '', 8, 0, '2021-01-23 19:02:31'),
(6, 3, 0, '													', 'test website', '0000-00-00', '00:00:00', '00:00:00', '', 7, 0, '2021-01-23 19:03:50'),
(7, 5, 5, 'Complete on time', 'Complete ui', '2021-01-24', '12:30:00', '01:30:00', '', 12, -11, '2021-01-24 10:06:11'),
(8, 5, 5, 'Work in progress.', 'Complete ui', '2021-01-24', '12:08:00', '13:11:00', '', 13, 1.05, '2021-01-24 10:08:32'),
(9, 8, 6, 'Form validation issue finally resolve, we will upload source code very soon!', 'Complete ui', '2021-01-09', '14:31:00', '13:31:00', '', 12, -1, '2021-01-24 12:31:57'),
(10, 8, 6, 'Verifying of sbumission of form!', 'Complete ui', '2021-01-01', '16:22:00', '20:22:00', '', 12, 4, '2021-01-24 15:22:49'),
(11, 8, 6, 'Trying to resolve problem..', 'wwwwwww', '2021-01-01', '15:28:00', '20:28:00', '1611482280_result sem 6.png', 12, 5, '2021-01-24 15:28:58'),
(12, 6, 7, 'Upload your work students &amp;amp; specify it..', 'Upload the status of your work till now...', '2021-01-24', '16:46:00', '20:46:00', '', 1, 4, '2021-01-24 15:47:27'),
(13, 6, 7, 'I am almost complete the backend of MySQL Database of project, I will upload it in few days&amp;nbsp;													', 'Related MySQL Database(Backend)', '2021-01-24', '17:52:00', '20:52:00', '', 12, 3, '2021-01-24 15:52:38'),
(14, 6, 7, 'I am done with all completed work, I will upload on tommorow', 'Related Backend', '2021-01-24', '17:53:00', '20:53:00', '', 13, 3, '2021-01-24 15:54:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_productivity`
--
ALTER TABLE `user_productivity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_productivity`
--
ALTER TABLE `user_productivity`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
