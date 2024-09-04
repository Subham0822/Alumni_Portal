-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2024 at 09:02 AM
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
-- Database: `alumni_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnus_bio`
--

CREATE TABLE `alumnus_bio` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `batch` year(4) NOT NULL,
  `course_id` int(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `connected_to` text NOT NULL,
  `avatar` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Unverified, 1= Verified',
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumnus_bio`
--

INSERT INTO `alumnus_bio` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `batch`, `course_id`, `email`, `connected_to`, `avatar`, `status`, `date_created`) VALUES
(9, 'Subham', '', 'Rakshit', 'Male', '2000', 10, 'rwik0822@gmail.com', 'HIT-K', '1725390000_user6.jpg', 1, '2024-09-04'),
(10, 'Sabyasachi', '', 'Ganguli', 'Male', '2002', 7, 'sabyasachiganguli@icloud.com', 'HIT-K', '1725390000_user5.jpg', 1, '2024-09-04'),
(11, 'Aritra', '', 'Banerjee', 'Male', '2004', 11, 'aritrabanerjee@gmail.com', 'HIT-K', '1725390060_user4.jpg', 1, '2024-09-04'),
(12, 'Kishalay', '', 'Kamar', 'Male', '2006', 8, 'kishalaykamar@gmail.com', 'HIT-K', '1725390060_user3.jpg', 1, '2024-09-04'),
(13, 'Asmita', '', 'Banerjee', 'Female', '2008', 9, 'asmitabanerjee@gmail.com', 'HIT-K', '1725390120_user1.jpg', 1, '2024-09-04'),
(14, 'Sadhitra', '', 'Mondal', 'Male', '2024', 12, 'sadhitramondal@gmail.com', 'HIT-K', '1725390180_user2.jpg', 1, '2024-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(30) NOT NULL,
  `company` varchar(250) NOT NULL,
  `location` text NOT NULL,
  `job_title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `company`, `location`, `job_title`, `description`, `user_id`, `date_created`) VALUES
(1, 'IT Company', 'Home-Based', 'Web Developer', '&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis eu volutpat odio facilisis mauris sit amet massa vitae. In tellus integer feugiat scelerisque varius morbi enim. Orci eu lobortis elementum nibh tellus molestie nunc. Vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Eleifend donec pretium vulputate sapien nec. Enim praesent elementum facilisis leo vel fringilla est ullamcorper. Quam adipiscing vitae proin sagittis nisl rhoncus. Sed viverra ipsum nunc aliquet bibendum. Enim ut sem viverra aliquet eget sit amet tellus. Integer feugiat scelerisque varius morbi enim nunc faucibus.&lt;/p&gt;&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Viverra justo nec ultrices dui. Leo vel orci porta non pulvinar neque laoreet. Id semper risus in hendrerit gravida rutrum quisque non tellus. Sit amet consectetur adipiscing elit ut. Id neque aliquam vestibulum morbi blandit cursus risus. Tristique senectus et netus et malesuada. Amet aliquam id diam maecenas ultricies mi eget mauris. Morbi tristique senectus et netus et malesuada. Diam phasellus vestibulum lorem sed risus. Tempor orci dapibus ultrices in. Mi sit amet mauris commodo quis imperdiet. Quisque sagittis purus sit amet volutpat. Vehicula ipsum a arcu cursus. Ornare quam viverra orci sagittis eu volutpat odio facilisis. Id volutpat lacus laoreet non curabitur. Cursus euismod quis viverra nibh cras pulvinar mattis nunc. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget nulla facilisi etiam dignissim diam quis enim lobortis. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet.&lt;/p&gt;', 3, '2020-10-15 14:14:27'),
(3, 'pornhu8b', 'jhop er pashe', 'panu dorectopr', '&lt;b&gt;&lt;i&gt;sex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxxsex sex sexxx&lt;/i&gt;&lt;/b&gt;', 4, '2024-09-03 13:03:09'),
(5, 'hitk', 'cme', 'sweeper', '&lt;ul&gt;&lt;li&gt;&lt;b&gt;&lt;u&gt;&lt;span style=&quot;font-size:24px;&quot;&gt;bathroom er flush not working. need a freelancer je mukh diye thik kore debe.&amp;nbsp;&lt;/span&gt;&lt;/u&gt;&lt;/b&gt;&lt;/li&gt;&lt;li&gt;&lt;b&gt;&lt;u&gt;&lt;span style=&quot;font-size:24px;&quot;&gt;olpo poisha debo&lt;/span&gt;&lt;/u&gt;&lt;/b&gt;&lt;/li&gt;&lt;li&gt;&lt;b&gt;&lt;u&gt;&lt;span style=&quot;font-size:24px;&quot;&gt;no beedi. only ganja&lt;/span&gt;&lt;/u&gt;&lt;/b&gt;&lt;/li&gt;&lt;/ul&gt;', 4, '2024-09-03 08:40:53'),
(7, 'Tech Innovations Inc.', 'Mumbai', 'Software Developer', '&lt;h5&gt;&lt;b&gt;Tech Innovations Inc. is seeking a skilled Software Developer to join our dynamic team. The ideal candidate will have experience in developing web and mobile applications, proficiency in JavaScript, and a solid understanding of front-end and back-end technologies. You will collaborate with cross-functional teams to design, develop, and implement innovative software solutions that meet our clients&amp;#x2019; needs. This is an excellent opportunity for a motivated developer to grow in a fast-paced, cutting-edge environment.&lt;/b&gt;&lt;/h5&gt;', 1, '2024-09-04 00:40:49'),
(8, 'Green Energy Solutions', 'Delhi', 'Project Manager', '&lt;b&gt;Green Energy Solutions is looking for a Project Manager to oversee our renewable energy projects. The successful candidate will have experience in managing large-scale projects, particularly in the energy sector. You will be responsible for coordinating with various stakeholders, managing budgets, and ensuring projects are completed on time and within scope. This role requires strong leadership skills, attention to detail, and a passion for sustainability. If you&rsquo;re ready to make a difference in the green energy space, we want to hear from you.&lt;/b&gt;', 10, '2024-09-04 00:41:29'),
(9, 'Global Finance Corp.', 'Pune', 'Financial Analyst', '&lt;b&gt;Global Finance Corp. is hiring a Financial Analyst to join our corporate finance team. The ideal candidate will have a background in financial analysis, forecasting, and reporting. You will analyze financial data, create financial models, and provide insights to support decision-making. This role requires strong analytical skills, proficiency in Excel and financial software, and the ability to work under tight deadlines. This position offers a great opportunity for growth and professional development within a leading finance company.&lt;/b&gt;', 11, '2024-09-04 00:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` text NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `about`) VALUES
(7, 'B.Tech CSE AI/ML', ''),
(8, 'B.Tech CSE DS', ''),
(9, 'B.Tech CSE IOT', ''),
(10, 'B.Tech CSE ', ''),
(11, 'B.Tech AEIE', ''),
(12, 'B.Tech CSE IT', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `schedule` datetime NOT NULL,
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `schedule`, `banner`, `date_created`) VALUES
(4, 'Alumni Networking Night', '&lt;h3&gt;&lt;b&gt;Join us for an evening of networking with fellow alumni from various industries. This event is designed to foster connections, share experiences, and explore potential collaborations. Whether you are looking to expand your professional network or simply reconnect with old friends, this night promises to be engaging and beneficial for all attendees.&lt;/b&gt;&lt;/h3&gt;', '2024-09-04 15:00:00', '1725389820_event1.jpg', '2024-09-04 00:27:02'),
(5, 'Annual Alumni Reunion', '&lt;h3&gt;&lt;b&gt;Celebrate memories and milestones at the &lt;u&gt;Annual Alumni Reunion&lt;/u&gt;! This day-long event will feature keynote speeches, a campus tour, and a special lunch. It&rsquo;s a perfect opportunity to reminisce about your college days, catch up with classmates, and see how the campus has evolved. Don&rsquo;t miss this chance to reconnect and relive the best moments of your college experience.&lt;/b&gt;&lt;/h3&gt;', '2024-12-05 15:00:00', '1725389880_event.jpg', '2024-09-04 00:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `event_commits`
--

CREATE TABLE `event_commits` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_commits`
--

INSERT INTO `event_commits` (`id`, `event_id`, `user_id`) VALUES
(1, 1, 3),
(2, 2, 4),
(3, 1, 4),
(4, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `topic_id`, `comment`, `user_id`, `date_created`) VALUES
(1, 3, 'Sample updated Comment', 3, '2020-10-15 15:46:03'),
(3, 3, 'Sample', 1, '2020-10-16 08:48:02'),
(5, 0, '', 1, '2020-10-16 09:49:34'),
(6, 1, '&lt;span style=&quot;color:rgb(180,95,6);font-size:28px;&quot;&gt;&lt;i style=&quot;color:rgb(180,95,6);font-size:28px;&quot;&gt;hello.... ghontuuuu&lt;/i&gt;&lt;/span&gt;', 4, '2024-09-03 13:13:14'),
(7, 4, 'hello. admin me&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, '2024-09-03 13:16:40'),
(8, 3, 'bhery good', 4, '2024-09-03 08:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`id`, `title`, `description`, `user_id`, `date_created`) VALUES
(2, 'Sample Topic 2', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/span&gt;', 3, '2020-10-15 15:20:51'),
(3, 'Sample Topic 3', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Vivamus gravida nunc orci. Proin ut tristique odio. Nulla suscipit ipsum arcu, a luctus lorem vulputate et. Maecenas magna lorem, tempor id ultrices id, vehicula eu diam. Aliquam erat volutpat. Praesent in sem tincidunt, mattis odio nec, ultrices justo. Vivamus sit amet sapien ornare tortor porttitor congue vel et lorem. In interdum eget metus ut sagittis. In accumsan nec purus vel ornare. Quisque non scelerisque libero, et aliquam risus. Mauris tincidunt ullamcorper efficitur. Nullam venenatis in massa et elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In mollis, tortor sed pellentesque ultrices, sem sem interdum lectus, a laoreet nulla lacus at risus. Ut placerat orci at enim fermentum, eget pretium ante pharetra. Nam id nunc congue augue feugiat egestas.&lt;/span&gt;', 3, '2020-10-15 15:22:30'),
(6, 'c++', 'sabyaschi sabyaschi sabyaschi sabyaschi sabyaschi sabyaschi sabyaschi sabyaschi sabyaschi sabyaschi sabyaschi&amp;nbsp;', 4, '2024-09-03 13:15:49'),
(7, 'hackathon', '&lt;pre&gt;&lt;b&gt;how to win???&lt;/b&gt;&lt;/pre&gt;', 4, '2024-09-03 08:42:20'),
(8, 'Career Advice and Job Opportunities', '&lt;b&gt;&lt;i&gt;This forum is a dedicated space for alumni to share career advice, discuss job opportunities, and seek guidance on professional development. Whether you&rsquo;re looking to switch careers, seeking tips for job interviews, or want to share your experience with others, this is the place to connect and collaborate with fellow alumni. Let&amp;#x2019;s help each other grow and succeed in our professional journeys!&lt;/i&gt;&lt;/b&gt;', 11, '2024-09-04 00:43:55'),
(9, 'Alumni Success Stories and Mentorship', '&lt;h4&gt;&lt;i&gt;&lt;u&gt;In this forum, alumni are invited to share their success stories, milestones, and lessons learned since graduation. It&rsquo;s also a great place to connect with potential mentors or offer mentorship to recent graduates. Whether you&rsquo;ve started your own business, achieved a major career goal, or simply have valuable insights to share, join the conversation and inspire the next generation of alumni!&lt;/u&gt;&lt;/i&gt;&lt;/h4&gt;', 14, '2024-09-04 00:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(30) NOT NULL,
  `about` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `about`, `created`) VALUES
(1, 'Batch 2000', '2020-10-15 13:08:27'),
(2, 'Batch 2002', '2020-10-15 13:15:37'),
(3, 'Batch 2004', '2020-10-15 13:15:45'),
(4, 'Batch 2006', '2020-10-15 13:15:53'),
(5, 'Batch 2008', '2020-10-15 13:16:07'),
(6, 'Batch 2024', '2024-09-03 08:48:39');

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
(1, 'Alumni Portal', 'admin@heritage.edu', '123-456-789', '1725388740_background.jpg', '&lt;h4&gt;&lt;b&gt;Welcome to the Alumni Portal!&lt;h4&gt;Our platform is designed to connect alumni, foster lifelong relationships, and create a thriving community where past and present students can engage, collaborate, and contribute. At [University/Institute Name], we believe that the journey doesn&rsquo;t end at graduation. The Alumni Association serves as a bridge that links our alumni with the institution and with each other, providing a space for networking, mentorship, career support, and more.&lt;br&gt;&lt;h4&gt;&lt;b&gt;Our Mission:&lt;/b&gt;Our mission is to cultivate a dynamic and supportive alumni community that remains engaged with the [University/Institute Name] throughout their lives. We aim to provide opportunities for professional growth, personal development, and meaningful contributions to the institution and society.&lt;br&gt;&lt;h4&gt;&lt;b&gt;What We Offer:&lt;/b&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;Networking Opportunities:&lt;/b&gt; Connect with fellow alumni across industries and geographies, share experiences, and collaborate on professional projects.&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;Career Support:&lt;/b&gt; Access job postings, career advice, and mentorship programs to help you advance in your professional life.&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;Events and Reunions:&lt;/b&gt; Stay informed about upcoming alumni events, reunions, and workshops that offer valuable opportunities for connection and learning.&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;Success Stories:&lt;/b&gt; Discover and share inspiring success stories from fellow alumni, celebrating their achievements and contributions.&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;Philanthropy:&lt;/b&gt; Participate in initiatives that support the growth and development through donations and volunteer efforts.&lt;/li&gt;&lt;/ul&gt;&lt;/h4&gt;&lt;/h4&gt;&lt;/h4&gt;&lt;/h4&gt;&lt;h4&gt;&lt;b&gt;Join Us:&lt;/b&gt;Whether you&rsquo;re looking to reconnect with old friends, give back to the community, or seek professional advice, our platform is here to support you. Join today and be part of a vibrant network that continues to make an impact long after graduation.&lt;/h4&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Alumni officer, 3= alumnus',
  `auto_generated_pass` text NOT NULL,
  `alumnus_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `auto_generated_pass`, `alumnus_id`) VALUES
(1, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 1, '', 0),
(10, 'Subham Rakshit', 'rwik0822@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 3, '', 9),
(11, 'Sabyasachi Ganguli', 'sabyasachiganguli@icloud.com', '81dc9bdb52d04dc20036dbd8313ed055', 3, '', 10),
(12, 'Aritra Banerjee', 'aritrabanerjee@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 3, '', 11),
(13, 'Kishalay Kamar', 'kishalaykamar@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 3, '', 12),
(14, 'Asmita Banerjee', 'asmitabanerjee@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 3, '', 13),
(15, 'Sadhitra Mondal', 'sadhitramondal@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 3, '', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_commits`
--
ALTER TABLE `event_commits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event_commits`
--
ALTER TABLE `event_commits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
