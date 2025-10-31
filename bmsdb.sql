-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2025 at 01:23 PM
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
-- Database: `bmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 1, '2021-05-26 18:30:00', '2021-11-11 16:23:15'),
(3, 'subadmin', 'f925916e2754e5e03f75dd58a5733251', 'sudamin@gmail.com', 0, '2021-11-10 18:28:11', '2022-03-27 05:39:27'),
(5, 'anujk3', 'f925916e2754e5e03f75dd58a5733251', 'ak@gmail.in', 0, '2022-03-28 17:27:23', '2022-03-28 17:27:35'),
(6, 'dengachuil@gmail.com', '1ccadbf07e7c9a5c70838a3dbaeb12bf', 'dengachuil@gmail.com', 0, '2025-10-29 12:09:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Programming', 'Advanced Java Programming ', '2021-06-05 18:30:00', '2025-10-26 11:55:40', 1),
(5, 'Programming', 'C structured programming Language', '2021-06-13 18:30:00', '2025-10-29 07:40:37', 0),
(6, 'Programming', 'Python programming Language', '2021-06-21 18:30:00', '2025-10-26 11:58:55', 1),
(7, 'Database Management Systems (DBMS)', 'Advanced Databases Management', '2021-06-21 18:30:00', '2025-10-29 11:06:03', 0),
(8, 'Database Management Systems (DBMS)', 'SQL server Administration', '2021-11-07 18:17:28', '2025-10-29 11:05:57', 0),
(10, 'Database Management Systems (DBMS)', 'MYSqL server ', '2022-03-28 17:29:11', '2025-10-29 11:05:55', 0),
(11, 'Database Management Systems (DBMS)', '<p> we conduct Advance Microsoft Access', '2025-10-17 12:15:44', '2025-10-26 12:02:22', 1),
(12, 'Graphic designs', 'design logos', '2025-10-26 12:08:55', '2025-10-29 11:05:50', 0),
(13, 'Computer Network and Security', 'cybers', '2025-10-26 12:09:25', '2025-10-29 11:05:53', 0),
(14, 'Scholars', 'i)	Academic research and thesis writing for purposes\r\nii)	Learning and intern programme\r\niii)	Online virtual coaching and certificate awards\r\n', '2025-10-29 11:11:01', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, 12, 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2021-11-20 18:30:00', 1),
(2, 12, 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2021-11-20 18:30:00', 1),
(3, 7, 'ABC', 'abc@test.com', 'This is sample text for testing.', '2021-11-20 18:30:00', 0),
(4, 7, 'Anuj', 'ak@gmail.com', 'This is a test comment.', '2022-03-26 10:10:51', 1),
(5, 7, 'Test user', 'test@gmail.com', 'This is a test comment.', '2022-03-28 17:25:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'DeSoba Technologies', 'DeSoba Technologies started as an on-line learning free tutorial with questions and answers session for learner\'s platform in 2018 at Star International University. This idea was owned by Mr. Santino Deng Achuil who was a University dean of ICT at Star International University (SIU). Deng later observed and adopted this initiative into a dream of this business plan today. \r\nThe DeSoba Technologies Company is an initiative developed to handle all kinds of real world problems in daily operational tasks of scholars, societies, and businesses to be resolved by Information Technology (IT). DeSoba Technologies implementation will help clients to render technological services and products to the target audience. Grounding all the aims and objectives, there is high demand of Information Technology services in South Sudan both private and public sector. Hence the implementation of DeSoba Technologies is a great business tool that is believe to be a source of financial profits.\r\n', '2021-06-29 18:30:00', '2025-10-29 06:37:45'),
(2, 'contactus', 'Contact Details', '<p><b>Address :&nbsp; </b>Hai Amarat-Thongpiny, Juba South Sudan</p>\r\n<p><b>Phone Number : </b>+211927271313 | +211987871313  | +211916573996</p>\r\n<p><b>Email -id : </b>Dengachuil@gmail.com</p>\r\n', '2021-06-29 18:30:00', '2025-10-26 12:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(7, 'C programming Language', 3, 4, '<p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">The A C programming platform consists of the necessary software tools to write, compile, and execute C code on a specific operating system. This platform includes a text editor for writing the code, a compiler to convert the code into an executable, and a debugger to find and fix errors.</span></p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The 24-year-old pacer picked up a niggle during India’s first T20I match against Ireland played on June 27 at the Malahide cricket ground in Dublin. As per the reports, he is likely to be available for the ODI series against England scheduled to start from July 12.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">In the first, Bumrah exhibited a phenomenal performance with the ball. In his quota of four overs, he conceded 19 runs and picked 2 wickets at an economy rate of 4.75.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Post his injury, he arrived at team’s optional training session on Thursday but didn’t train. Later, he was rested in the second face-off along with MS Dhoni, Shikhar Dhawan and Bhuvneshwar Kumar.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">As of now, no replacement has been announced. However, Umesh Yadav may be be given chance in the team in Bumrah’s absence.</p><p style=\"padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The first T20I match between India and England will be played at Old Trafford, Manchester on July 3.</p>', '2021-07-07 18:30:00', '2025-10-29 11:59:16', 1, 'C-programming-Language', 'f083eaa146ba983d06bccf95a7563265.jpg', 78, 'admin', 'admin'),
(10, 'Information Security ', 7, 9, '<h1 style=\"box-sizing: inherit; margin-top: 0px; padding: 0px; font-family: Roboto, sans-serif; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);\"><span itemprop=\"headline\" style=\"box-sizing: inherit;\">Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal</span>Tata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel Deal</h1>', '2021-06-30 18:30:00', '2025-10-29 11:02:02', 1, 'Information-Security-', 'e4e3fdf0ec28502dd5c187fb73792c5a.png', 8, 'admin', 'admin'),
(12, 'Shah holds meeting with NE states leaders in Manipur', 6, 7, '<p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">New Delhi: BJP president Amit Shah today held meetings with his party leaders who are in-charge of 11 Lok Sabha seats spread across seven northeast states as part of a drive to ensure that it wins the maximum number of these constituencies in the general election next year.</span><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><webviewcontentdata style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">Shah held separate meetings with Lok Sabha toli (group) of Arunachal Pradesh, Tripura, Meghalaya, Mizoram, Nagaland, Sikkim and Manipur in Manipur, the partys media head Anil Baluni said.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">Baluni said that Shah was in West Bengal for two days before he arrived in Manipur. The BJP chief would reach Odisha tomorrow.</webviewcontentdata><br></p>', '2021-06-30 18:30:00', '2025-10-29 11:09:23', 0, 'Shah-holds-meeting-with-NE-states-leaders-in-Manipur', '7fdc1a630c238af0815181f9faa190f5.jpg', 44, 'admin', NULL),
(13, 'Structured programming ', 3, 4, '<p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">C programming encompasses a range of fundamental concepts that form the basis of its procedural and structured nature.\r\nCore Concepts:\r\nVariables and Data Types: Variables are named storage locations that hold values. C is statically typed, requiring explicit declaration of data types like int (integers), float (single-precision floating-point), double (double-precision floating-point), char (characters), and void (absence of type).\r\nOperators: C utilizes various operators for arithmetic (+, -, *, /, %), relational (==, !=, <, >, <=, >=), logical (&&, ||, !), and bitwise operations.\r\nControl Structures: These direct the flow of program execution:\r\nConditional Statements: if, else if, else for decision-making.\r\nLooping Statements: for, while, do-while for repetitive execution.\r\nJump Statements: break, continue, goto for altering loop or program flow.\r\nFunctions: Reusable blocks of code that perform specific tasks. Every C program must have a main() function, the entry point of execution. Functions promote modularity and code reusability.\r\nArrays: Collections of elements of the same data type stored in contiguous memory locations. They are accessed using an index.\r\nPointers: Variables that store memory addresses of other variables. Pointers are crucial for dynamic memory allocation, efficient array manipulation, and passing data by reference to functions.\r\nStrings: In C, strings are essentially arrays of characters terminated by a null character (�). They are handled using character arrays and string manipulation functions.\r\n</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">Structures and Unions:\r\nStructures: User-defined data types that group together variables of different data types under a single name, allowing for the creation of complex data records.\r\nUnions: Similar to structures, but all members share the same memory location, optimizing memory usage when only one member is needed at a time.\r\nFile I/O: C provides functions for interacting with files, allowing programs to read from and write to external data storage.\r\nMemory Management: C offers functions like malloc(), calloc(), realloc(), and free() for dynamic memory allocation and deallocation, enabling flexible memory usage during program execution..</p>', '2021-11-10 18:50:09', '2025-10-29 11:42:29', 1, 'Structured-programming-', '38db61d2681e8cc7057e6b6d6647989c.jpg', 19, 'admin', 'admin'),
(15, 'Welcome to your center for an academic Research', 14, 14, 'DesSoba Technologies provides \r\nScholarly academic research to final year students which is a systematic, methodical investigation to answer a specific research question, which requires deep analysis, critical thinking, and the contribution of new knowledge to a field. It is conducted by scholars, who are experts in a subject area, and involves following strict academic standards such as peer evaluation, ethical review, proper citation, and using validated methods. The goal is not to find quick answers, but to build evidence-based insights and expand understanding within a discipline. \r\n\r\nKey characteristics of scholarly academic research\r\nSystematic and methodical: It follows a detailed and structured process, often responding to a specific question or hypothesis. \r\nCritical and analytical: It involves intensive investigation, critical analysis, and a high degree of objectivity. \r\nContribution to knowledge: A primary purpose is to make a contribution to the existing body of knowledge in a field, whether by uncovering new phenomena or testing existing theories. \r\nEvidence-based: All conclusions are based on observable, empirical, and measurable evidence. \r\nFollows standards: It is governed by academic standards, including the use of validated methods, peer review, and proper citations. \r\nInvolves scholars: The term \"scholar\" refers to an expert deeply involved in the study of a particular subject, often at an advanced level, who is dedicated to expanding knowledge in their field', '2025-10-29 11:19:05', '2025-10-29 11:20:30', 1, 'Welcome-to-your-center-for-an-academic-Research', 'cefb83a66bbce5311352e5fff19aaaa5.jpg', 1, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsite`
--

CREATE TABLE `tblsite` (
  `id` int(11) NOT NULL,
  `siteTitle` varchar(255) DEFAULT NULL,
  `siteLogo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsite`
--

INSERT INTO `tblsite` (`id`, `siteTitle`, `siteLogo`) VALUES
(1, 'DeSoba Technologies', '63b0b0e4465a8391c1416dc86961e8b81761719149.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 11, 'Advanced Databases Management', '<p>Advanced databases system training is one of the widely conducted activities', '2021-06-21 18:30:00', '2025-10-26 12:05:12', 1),
(4, 3, 'C programming Language', 'Structured programming \r\n\r\n', '2021-06-29 18:30:00', '2025-10-18 08:53:23', 1),
(5, 8, 'Microsoft access advanced databases', 'Microsoft Access', '2021-06-29 18:30:00', '2025-10-29 11:07:33', 0),
(6, 5, 'Structured Programming', 'Structured programming in c language is the most popular programming language widely used in ', '2021-06-30 18:30:00', '2025-10-29 06:10:46', 1),
(7, 12, 'Provide special graphic for your business solution', 'Information Technology businesses solution for all', '2021-06-30 18:30:00', '2025-10-29 11:40:02', 1),
(8, 12, 'Banners for your event', 'we sponsor the special events', '2021-06-30 18:30:00', '2025-10-29 07:41:12', 0),
(9, 7, 'Data Security', 'Data management and security ', '2021-06-30 18:30:00', '2025-10-29 06:09:30', 1),
(12, 10, 'Core PHP', 'mysql connection to databases', '2022-03-28 17:29:24', '2025-10-29 11:39:53', 1),
(13, 11, 'Programme description', 'Online learning platforms offer a wide variety of courses and resources for different learning needs, from academic subjects to professional development and creative skills. Popular options include Coursera, edX, and Udemy for diverse courses; LinkedIn Learning for professional skills; and Skillshare for creative and practical skills. Other platforms like Khan Academy provide free educational content, while MasterClass offers courses from experts in various fields. \r\nFor academic and career-focused learning\r\nCoursera: Offers academic and career-focused courses, sometimes leading to accredited certificates from universities.\r\nedX: Provides advanced academic education and verified certificates.\r\nUdacity: Focuses on technology and digital skills, often with nanodegree programs. \r\nFor professional development and creative skills\r\nLinkedIn Learning: Specializes in professional development, with certificates that can be added to your LinkedIn profile.\r\nSkillshare: Caters to creative professionals, with a subscription model for unlimited access to classes on design, writing, and other creative fields.\r\nMasterClass: Features courses taught by world-renowned experts and celebrities in their respective fields.\r\nUdemy: Offers a vast library of courses on a wide range of topics, with individual course purchases. \r\nFor free education and specific skills\r\nKhan Academy: Provides free online courses and lessons, particularly strong in math and science, with practice problems and AI-powered support.\r\nfreeCodeCamp: A non-profit offering free coding courses and certifications to help people learn to code.\r\natingi: An organization that provides free digital courses and certificates. ', '2025-10-18 08:47:48', NULL, 1),
(14, 14, 'Academic research and thesis writing for purposes', 'DesSoba Technologies provides \r\nScholarly academic research to final year students which is a systematic, methodical investigation to answer a specific research question, which requires deep analysis, critical thinking, and the contribution of new knowledge to a field. It is conducted by scholars, who are experts in a subject area, and involves following strict academic standards such as peer evaluation, ethical review, proper citation, and using validated methods. The goal is not to find quick answers, but to build evidence-based insights and expand understanding within a discipline. \r\n\r\nKey characteristics of scholarly academic research\r\nSystematic and methodical: It follows a detailed and structured process, often responding to a specific question or hypothesis. \r\nCritical and analytical: It involves intensive investigation, critical analysis, and a high degree of objectivity. \r\nContribution to knowledge: A primary purpose is to make a contribution to the existing body of knowledge in a field, whether by uncovering new phenomena or testing existing theories. \r\nEvidence-based: All conclusions are based on observable, empirical, and measurable evidence. \r\nFollows standards: It is governed by academic standards, including the use of validated methods, peer review, and proper citations. \r\nInvolves scholars: The term \"scholar\" refers to an expert deeply involved in the study of a particular subject, often at an advanced level, who is dedicated to expanding knowledge in their field', '2025-10-29 11:16:28', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `fullName` varchar(120) DEFAULT NULL,
  `subscriberEmail` varchar(125) DEFAULT NULL,
  `subscriptionDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `fullName`, `subscriberEmail`, `subscriptionDate`) VALUES
(3, 'Anuj kumar', 'ak@gmail.com', '2022-03-27 05:50:41'),
(4, 'John doe', 'john@gmail.com', '2022-03-28 17:32:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsite`
--
ALTER TABLE `tblsite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblsite`
--
ALTER TABLE `tblsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
