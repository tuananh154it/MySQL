-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 05:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techmaster_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `class_id`, `attendance_date`, `status`) VALUES
(1, 1, 1, '2023-06-20', 'Đi học'),
(2, 2, 1, '2023-06-20', 'Đi học'),
(3, 3, 2, '2023-06-20', 'Đi học'),
(4, 4, 2, '2023-06-20', 'Đi học'),
(5, 5, 3, '2023-06-20', 'Đi học'),
(6, 6, 3, '2023-06-20', 'Đi học'),
(7, 7, 4, '2023-06-20', 'Đi học'),
(8, 8, 4, '2023-06-20', 'Đi học'),
(9, 9, 5, '2023-06-20', 'Đi học'),
(10, 10, 5, '2023-06-20', 'Đi học');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_at` date DEFAULT current_timestamp(),
  `update_at` date DEFAULT NULL,
  `delete_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `course_id`, `status`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'Lớp học Java cơ bản - A1', 1, 'Hoạt động', '2023-06-20', NULL, NULL),
(2, 'Lớp học Java cơ bản - A2', 1, 'Hoạt động', '2023-06-20', NULL, NULL),
(3, 'Lớp học C++ nâng cao - B1', 2, 'Hoạt động', '2023-06-20', NULL, NULL),
(4, 'Lớp học C++ nâng cao - B2', 2, 'Hoạt động', '2023-06-20', NULL, NULL),
(5, 'Lớp học Python căn bản - C1', 3, 'Hoạt động', '2023-06-20', NULL, NULL),
(6, 'Lớp học Python căn bản - C2', 3, 'Hoạt động', '2023-06-20', NULL, NULL),
(7, 'Lớp học Web Development - D1', 4, 'Hoạt động', '2023-06-20', NULL, NULL),
(8, 'Lớp học Web Development - D2', 4, 'Hoạt động', '2023-06-20', NULL, NULL),
(9, 'Lớp học Machine Learning - E1', 5, 'Hoạt động', '2023-06-20', NULL, NULL),
(10, 'Lớp học Machine Learning - E2', 5, 'Hoạt động', '2023-06-20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_at` date DEFAULT current_timestamp(),
  `update_at` date DEFAULT NULL,
  `delete_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `status`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'Khóa học Java cơ bản', 'Hoạt động', '2023-06-20', NULL, NULL),
(2, 'Khóa học C++ nâng cao', 'Hoạt động', '2023-06-20', NULL, NULL),
(3, 'Khóa học Python căn bản', 'Hoạt động', '2023-06-20', NULL, NULL),
(4, 'Khóa học Web Development', 'Hoạt động', '2023-06-20', NULL, NULL),
(5, 'Khóa học Machine Learning', 'Hoạt động', '2023-06-20', NULL, NULL),
(6, 'Khóa học Data Science', 'Hoạt động', '2023-06-20', NULL, NULL),
(7, 'Khóa học UX/UI Design', 'Hoạt động', '2023-06-20', NULL, NULL),
(8, 'Khóa học Digital Marketing', 'Hoạt động', '2023-06-20', NULL, NULL),
(9, 'Khóa học Project Management', 'Hoạt động', '2023-06-20', NULL, NULL),
(10, 'Khóa học Agile Development', 'Hoạt động', '2023-06-20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_at` date DEFAULT current_timestamp(),
  `update_at` date DEFAULT NULL,
  `delete_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`id`, `title`, `content`, `class_id`, `status`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'Bài tập Java cơ bản - E1', 'Viết chương trình tính tổng hai số', 1, 'Hoạt động', '2023-06-20', NULL, NULL),
(2, 'Bài tập Java cơ bản - E2', 'Viết chương trình in ra dãy Fibonacci', 1, 'Hoạt động', '2023-06-20', NULL, NULL),
(3, 'Bài tập C++ nâng cao - E1', 'Viết chương trình quản lý danh sách sinh viên', 2, 'Hoạt động', '2023-06-20', NULL, NULL),
(4, 'Bài tập C++ nâng cao - E2', 'Viết chương trình sắp xếp mảng số nguyên', 2, 'Hoạt động', '2023-06-20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE `functions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `functions`
--

INSERT INTO `functions` (`id`, `name`) VALUES
(4, 'Quản lý bài giảng'),
(6, 'Quản lý bài tập'),
(2, 'Quản lý khoá học'),
(3, 'Quản lý lớp học'),
(1, 'Quản lý người dùng'),
(5, 'Quản lý điểm danh');

-- --------------------------------------------------------

--
-- Table structure for table `function_roles`
--

CREATE TABLE `function_roles` (
  `role_id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `function_roles`
--

INSERT INTO `function_roles` (`role_id`, `function_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 5),
(3, 6),
(4, 1),
(4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_at` date DEFAULT current_timestamp(),
  `update_at` date DEFAULT NULL,
  `delete_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `class_id`, `status`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'Bài giảng Java cơ bản - L1', 1, 'Hoạt động', '2023-06-20', NULL, NULL),
(2, 'Bài giảng Java cơ bản - L2', 1, 'Hoạt động', '2023-06-20', NULL, NULL),
(3, 'Bài giảng C++ nâng cao - L1', 2, 'Hoạt động', '2023-06-20', NULL, NULL),
(4, 'Bài giảng C++ nâng cao - L2', 2, 'Hoạt động', '2023-06-20', NULL, NULL),
(5, 'Bài giảng Python căn bản - L1', 3, 'Hoạt động', '2023-06-20', NULL, NULL),
(6, 'Bài giảng Python căn bản - L2', 3, 'Hoạt động', '2023-06-20', NULL, NULL),
(7, 'Bài giảng Web Development - L1', 4, 'Hoạt động', '2023-06-20', NULL, NULL),
(8, 'Bài giảng Web Development - L2', 4, 'Hoạt động', '2023-06-20', NULL, NULL),
(9, 'Bài giảng Machine Learning - L1', 5, 'Hoạt động', '2023-06-20', NULL, NULL),
(10, 'Bài giảng Machine Learning - L2', 5, 'Hoạt động', '2023-06-20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(4, 'staff'),
(3, 'student'),
(2, 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE `solutions` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exercises_id` int(11) NOT NULL,
  `link` text NOT NULL,
  `note` text DEFAULT NULL,
  `submission_time` time DEFAULT current_timestamp(),
  `score` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solutions`
--

INSERT INTO `solutions` (`id`, `student_id`, `exercises_id`, `link`, `note`, `submission_time`, `score`) VALUES
(1, 1, 1, 'https://example.com/solution1', 'Bài tập đã hoàn thành', '09:30:00', 9.5),
(2, 2, 1, 'https://example.com/solution2', 'Bài tập đã hoàn thành', '09:35:00', 8.75),
(3, 3, 2, 'https://example.com/solution3', 'Bài tập chưa hoàn thành', '10:00:00', NULL),
(4, 4, 2, 'https://example.com/solution4', 'Bài tập đã hoàn thành', '10:10:00', 7.5);

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`user_id`, `class_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cccd` varchar(15) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_at` date DEFAULT current_timestamp(),
  `update_at` date DEFAULT NULL,
  `delete_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phoneNumber`, `gmail`, `password`, `cccd`, `address`, `role_id`, `status`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'Nguyễn Văn A', '0987654321', 'nguyenvana@gmail.com', 'password123', '123456789012345', 'Hà Nội', 1, 'Hoạt động', '2023-06-20', NULL, NULL),
(2, 'Trần Thị B', '0123456789', 'tranthib@gmail.com', 'password456', '234567890123456', 'Hồ Chí Minh', 2, 'Hoạt động', '2023-06-20', NULL, NULL),
(3, 'Lê Quang C', '0909090909', 'lequangc@gmail.com', 'password789', '345678901234567', 'Đà Nẵng', 3, 'Hoạt động', '2023-06-20', NULL, NULL),
(4, 'Phạm Thị D', '0777777777', 'phamthid@gmail.com', 'passwordabc', '456789012345678', 'Hải Phòng', 2, 'Hoạt động', '2023-06-20', NULL, NULL),
(5, 'Hoàng Văn E', '0888888888', 'hoangvane@gmail.com', 'passworddef', '567890123456789', 'Bình Dương', 1, 'Hoạt động', '2023-06-20', NULL, NULL),
(6, 'Nguyễn Thị F', '0999999999', 'nguyenthif@gmail.com', 'passwordxyz', '678901234567890', 'Vũng Tàu', 3, 'Hoạt động', '2023-06-20', NULL, NULL),
(7, 'Võ Văn G', '0666666666', 'vovang@gmail.com', 'passwordmno', '789012345678901', 'Cần Thơ', 1, 'Hoạt động', '2023-06-20', NULL, NULL),
(8, 'Trương Thị H', '0555555555', 'truongthih@gmail.com', 'passwordpqr', '890123456789012', 'An Giang', 2, 'Hoạt động', '2023-06-20', NULL, NULL),
(9, 'Mai Văn I', '0333333333', 'maivani@gmail.com', 'passwordstu', '901234567890123', 'Nghệ An', 3, 'Hoạt động', '2023-06-20', NULL, NULL),
(10, 'Đinh Thị K', '0444444444', 'dinhthik@gmail.com', 'passwordvwx', '012345678901234', 'Hà Tĩnh', 1, 'Hoạt động', '2023-06-20', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_class_course` (`course_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `functions`
--
ALTER TABLE `functions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `function_roles`
--
ALTER TABLE `function_roles`
  ADD PRIMARY KEY (`role_id`,`function_id`),
  ADD KEY `function_id` (`function_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `exercises_id` (`exercises_id`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`user_id`,`class_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gmail` (`gmail`),
  ADD UNIQUE KEY `cccd` (`cccd`),
  ADD KEY `fk_user_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `functions`
--
ALTER TABLE `functions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `fk_class_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `exercises`
--
ALTER TABLE `exercises`
  ADD CONSTRAINT `exercises_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

--
-- Constraints for table `function_roles`
--
ALTER TABLE `function_roles`
  ADD CONSTRAINT `function_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `function_roles_ibfk_2` FOREIGN KEY (`function_id`) REFERENCES `functions` (`id`);

--
-- Constraints for table `solutions`
--
ALTER TABLE `solutions`
  ADD CONSTRAINT `solutions_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `solutions_ibfk_2` FOREIGN KEY (`exercises_id`) REFERENCES `exercises` (`id`);

--
-- Constraints for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD CONSTRAINT `student_classes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_classes_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
