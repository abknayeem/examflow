-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 04:19 PM
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
-- Database: `examflow`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_class`
--

CREATE TABLE `add_class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_class`
--

INSERT INTO `add_class` (`class_id`, `class_name`, `status`) VALUES
(2, 'CSE-30th(Eve)', 'Enabled'),
(3, 'CSE-31st(Eve)', 'Enabled'),
(4, 'CSE-32th(Eve)', 'Enabled'),
(5, 'CSE-33th(Eve)', 'Enabled'),
(6, 'EEE-45th(Eve)', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `add_course`
--

CREATE TABLE `add_course` (
  `course_id` int(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `create_time` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_course`
--

INSERT INTO `add_course` (`course_id`, `course_name`, `create_time`, `status`) VALUES
(6, 'Computer Graphics & Multimedia', '03-12-2024 08:04', 'Enabled'),
(7, 'Machine Learning', '03-12-2024 08:04', 'Enabled'),
(8, 'Structured Programming', '03-12-2024 08:05', 'Enabled'),
(9, 'Computer Technology', '03-12-2024 08:06', 'Enabled'),
(10, 'Object Oriented Programming', '03-12-2024 08:07', 'Enabled'),
(11, 'Operating System', '03-12-2024 08:08', 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `add_exam`
--

CREATE TABLE `add_exam` (
  `exam_id` int(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `exam_time_limit` varchar(100) NOT NULL,
  `total_question` varchar(100) NOT NULL,
  `correct` varchar(100) NOT NULL,
  `wrong` varchar(100) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `exam_date` varchar(100) NOT NULL,
  `exam_time` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_exam`
--

INSERT INTO `add_exam` (`exam_id`, `course`, `exam_time_limit`, `total_question`, `correct`, `wrong`, `exam_title`, `exam_date`, `exam_time`, `status`) VALUES
(5, 'Structured Programming', '30', '10', '1', '1', 'CT-1 of SP', '2024-12-08', '16:24', 'Ended'),
(6, 'Object Oriented Programming', '10', '10', '1', '1', 'CT-1 of OOP', '2024-12-08', '17:15', 'Ended'),
(7, 'Computer Technology', '30', '10', '1', '1', 'CT-1 of CMT', '2024-12-21', '20:25', 'Ended'),
(8, 'Computer Graphics & Multimedia', '30', '10', '2', '1', 'CT-1 of CGM', '2024-12-21', '21:00', 'Ended');

-- --------------------------------------------------------

--
-- Table structure for table `add_question`
--

CREATE TABLE `add_question` (
  `question_id` int(100) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `question` varchar(10000) NOT NULL,
  `ans_1` varchar(100) NOT NULL,
  `ans_2` varchar(100) NOT NULL,
  `ans_3` varchar(100) NOT NULL,
  `ans_4` varchar(100) NOT NULL,
  `correct_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_question`
--

INSERT INTO `add_question` (`question_id`, `exam_title`, `course`, `question`, `ans_1`, `ans_2`, `ans_3`, `ans_4`, `correct_answer`) VALUES
(36, 'CT-1 of SP', 'Structured Programming', 'What is a structure in C language?', 'A structure is a collection of elements that can be of same datatype', 'Elements of a structure are called members', 'A structure is a collection of elements that can be of different datatype', 'All of the these', 'All of the these'),
(37, 'CT-1 of SP', 'Structured Programming', 'What is the size of a C structure?', 'C structure is always 128 bytes', 'Size of C structure is the size of largest elements', 'Size of C structure is the totatl bytes of all elements of structure', 'None of the above', 'Size of C structure is the totatl bytes of all elements of structure'),
(38, 'CT-1 of SP', 'Structured Programming', 'Choose a correct statement about C structure elements?', 'Structure elements are stored in contiguous memory locations', 'Structure elements are stored in register memory locations', 'Structure elements are stored on random free memory locations', 'None of the above', 'Structure elements are stored in contiguous memory locations'),
(39, 'CT-1 of SP', 'Structured Programming', 'A C structure or User defined datatype is also called ________.', 'Aggregate data type', 'Derived data type', 'Secondary data type', 'All the above', 'All the above'),
(40, 'CT-1 of SP', 'Structured Programming', 'What are the uses of C Structures?', 'Structure is used to implement Linked Lists, Stack and Queue data structures', 'Structures are used in Operating System functionality like Display and Input taking', 'Structure are used to exchange information with peripherals of PC', 'All the above', 'All the above'),
(41, 'CT-1 of SP', 'Structured Programming', 'Choose a correct statement about C structures.', 'A structure can contain same structure type member', 'You can define an unlimited number of members inside a structure', 'A structure can contain same structure type member', 'All the above', 'All the above'),
(42, 'CT-1 of SP', 'Structured Programming', 'Which of the following return-type cannot be used for a function in C?', 'char *', 'void', 'struct', 'None of the mentioned', 'None of the mentioned'),
(43, 'CT-1 of SP', 'Structured Programming', ' Which of the following is not possible under any scenario?', 's1 = &s2;', 's1 = s2;', '(*s1).number = 10;', 'None of the Mentioned', 'None of the Mentioned'),
(44, 'CT-1 of SP', 'Structured Programming', 'Which of the following operation is illegal in structures?', 'Dynamic allocation of memory for structure>', 'Typecasting of structure>', 'Pointer to a variable of the same structure>', 'All of the mentioned>', 'Typecasting of structure>'),
(45, 'CT-1 of SP', 'Structured Programming', 'Which of the following are themselves a collection of different data types?', 'Structure', 'String', 'Char', 'All of the Mentioned', 'Structure'),
(46, 'CT-1 of OOP', 'Object Oriented Programming', 'Who invented OOP?', 'Alan Kay', 'Dennis Ritchie', 'Andrea Ferro', 'Adele Goldberg', 'Alan Kay'),
(47, 'CT-1 of OOP', 'Object Oriented Programming', 'Which is not a feature of OOP in general definitions?', 'Duplicate/Redundant data', 'Code reusability', 'Modularity', 'Efficient Code', 'Duplicate/Redundant data'),
(48, 'CT-1 of OOP', 'Object Oriented Programming', 'Which was the first purely object oriented programming language developed?', 'Kotlin', 'C++', 'Java', 'SmallTalk', 'SmallTalk'),
(49, 'CT-1 of OOP', 'Object Oriented Programming', 'When OOP concept did first came into picture?', '1970’s', '1980’s', '1995', '1993', '1970’s'),
(50, 'CT-1 of OOP', 'Object Oriented Programming', 'Which feature of OOP indicates code reusability?', 'Abstraction', 'Inheritance', 'Polymorphism', 'Encapsulation', 'Inheritance'),
(51, 'CT-1 of OOP', 'Object Oriented Programming', 'Which header file is required in C++ to use OOP?', 'stdlib.h', 'iostream.h', 'stdio.h', 'OP can be used without using any header file', 'OP can be used without using any header file'),
(52, 'CT-1 of OOP', 'Object Oriented Programming', 'Why Java is Partially OOP language?', 'It allows code to be written outside classes', 'It does not support pointers', 'It doesn’t support all types of inheritance', 'It supports usual declaration of primitive data types', 'It supports usual declaration of primitive data types'),
(53, 'CT-1 of OOP', 'Object Oriented Programming', 'Which among the following doesn’t come under OOP concept?', 'Platform independent', 'Data hiding', 'Message passing', 'Data binding', 'Platform independent'),
(54, 'CT-1 of OOP', 'Object Oriented Programming', 'The feature by which one object can interact with another object is _____________', 'Message reading', 'Message Passing', 'Data transfer', 'Data Binding', 'Message Passing'),
(55, 'CT-1 of OOP', 'Object Oriented Programming', 'Which among the following, for a pure OOP language, is true?', 'The language must follow all the rules of OOP', 'The language should follow at least 1 feature of OOP', 'he language must follow only 3 features of OOP', 'The language should follow 3 or more features of OOP', 'The language must follow all the rules of OOP'),
(56, 'CT-1 of CMT', 'Computer Technology', 'A process is a _______.', 'Single thread of execution', 'Program in the execution', 'Program in the memory', 'Task', 'Program in the execution'),
(57, 'CT-1 of CMT', 'Computer Technology', 'The word processing feature that catches most random typographical errors and misspellings is known as _____.', 'Grammar checker', 'Word checker', 'Spell checker', 'None of the these', 'Spell checker'),
(58, 'CT-1 of CMT', 'Computer Technology', 'What is smallest unit of the information?', 'A byte', 'A bit', 'A block', 'A nibble', 'A bit'),
(59, 'CT-1 of CMT', 'Computer Technology', 'What is the decimal equivalent of the binary number 10111?', '21', '23', '39', '42', '23'),
(60, 'CT-1 of CMT', 'Computer Technology', 'What is the term for a temporary storage area that compensates for differences in data rate and data flow between devices?', 'Bus', 'Channel', 'Modem', 'Buffer', 'Buffer'),
(61, 'CT-1 of CMT', 'Computer Technology', 'How many color dots make up one color pixel on a screen?', '3', '8', '16', '265', '3'),
(62, 'CT-1 of CMT', 'Computer Technology', 'Which of the following values is the correct value of this hexadecimal code 1F.01B?', '35.0065918', '32.0065918', '31.0065918', '30.0065918', '31.0065918'),
(63, 'CT-1 of CMT', 'Computer Technology', 'How is the data stored on the diskette?', 'Ink', 'Laser bubbles', 'Circuits', 'Magnetism', 'Magnetism'),
(64, 'CT-1 of CMT', 'Computer Technology', 'Which of the following is the smallest visual element on a video monitor?', 'Character', 'Pixel', 'Byte', 'Bit', 'Pixel'),
(65, 'CT-1 of CMT', 'Computer Technology', 'Which of the following natural element is the primary element in computer chips?', 'Silicon', 'Carbon', 'Iron', 'Uranium', 'Silicon'),
(66, 'CT-1 of CGM', 'Computer Graphics & Multimedia', 'GUI stands for -', 'Graphics Uniform Interaction', 'Graphical User Interaction', 'Graphical User Interface', 'None of the Above', 'Graphical User Interface'),
(67, 'CT-1 of CGM', 'Computer Graphics & Multimedia', 'Graphics can be -', 'Simulation', 'Drawing', 'Movies, Photographs', 'All of the above', 'All of the above'),
(68, 'CT-1 of CGM', 'Computer Graphics & Multimedia', 'CAD stands for -', 'Computer Art Design', 'Computer-Aided Design', 'Car Art Design', 'None of the Above', 'Computer-Aided Design'),
(69, 'CT-1 of CGM', 'Computer Graphics & Multimedia', 'The components of Interactive computer graphics are -', 'A Monitor', 'Display Controller', 'Frame Buffer', 'All of the Above', 'All the Above'),
(70, 'CT-1 of CGM', 'Computer Graphics & Multimedia', 'A user can make any change in the image using -', 'Interactive Computer Graphics', 'Non-Interactive Computer Graphics', 'Both (a) & (b)', 'None of the Above', 'Interactive Computer Graphics'),
(71, 'CT-1 of CGM', 'Computer Graphics & Multimedia', 'The higher number of pixels gives us a ____ image -', 'Better', 'Worst', 'Smaller', 'None of the above', 'Better'),
(72, 'CT-1 of CGM', 'Computer Graphics & Multimedia', 'Which one of the following is the primarily used output device?', 'Video Monitor', 'Scanner', 'Speaker', 'Printer', 'Video Monitor'),
(73, 'CT-1 of CGM', 'Computer Graphics & Multimedia', 'Which one of the following terms is used for the area of the computer captured by an application?', 'Display', 'Window', 'Viewport', 'None of the above', 'Viewport'),
(74, 'CT-1 of CGM', 'Computer Graphics & Multimedia', 'Aspect Ratio can be defined as -', 'The ratio of the vertical points to horizontal points', 'of pixels', 'Both (a) & (b)', 'None of the above', 'The ratio of the vertical points to horizontal points'),
(75, 'CT-1 of CGM', 'Computer Graphics & Multimedia', 'Which of the following is not the pattern of line?', 'Dotted line', 'Dashed Line', 'Dark Line', 'All of the above', 'Dark Line');

-- --------------------------------------------------------

--
-- Table structure for table `add_student`
--

CREATE TABLE `add_student` (
  `std_id` int(100) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_student`
--

INSERT INTO `add_student` (`std_id`, `std_name`, `gender`, `dob`, `course`, `year`, `email`, `password`, `image`) VALUES
(2, 'Debobroto Rudra Pal (221-112-004)', 'Male', '1995-02-07', 'Computer Graphics & Multimedia', '3rd Year', 'debobroto@mail.com', '1234', ''),
(3, 'Sohanur Rahman Nishad (221-112-006)', 'Male', '1996-01-15', 'Computer Graphics & Multimedia', '3rd Year', 'nishad@mail.com', '1234', ''),
(4, 'Md Minhajul Islam (221-112-011)', 'Male', '1998-05-18', 'Computer Graphics & Multimedia', '3rd Year', 'minhaz@mail.com', '1234', ''),
(5, 'Md. Moudud Hossain (222-112-002)', 'Male', '1999-05-02', 'Machine Learning', '3rd Year', 'moudud@mail.com', '1234', ''),
(6, 'Shormi Sen (222-112-004)', 'Female', '2001-06-12', 'Machine Learning', '3rd Year', 'shormi@email.com', '1234', ''),
(7, 'Sristy Rani Das (222-112-005)', 'Female', '1999-12-14', 'Machine Learning', '3rd Year', 'sristy@mail.com', '1234', ''),
(8, ' Sultanul Arifin Emon (222-112-007)', 'Male', '2001-06-05', 'Machine Learning', '3rd Year', 'emon@mail.com', '1234', ''),
(9, 'Amit Chandra Joy (222-112-008)', 'Male', '1999-10-05', 'Machine Learning', '3rd Year', 'amit@mail.com', '1234', ''),
(10, 'Sakibul Islam (222-112-009)', 'Male', '1997-10-03', 'Machine Learning', '3rd Year', 'sakibul@mail.com', '1234', ''),
(11, 'Jannatul Ferdour Priya (222-112-010)', 'Female', '2002-06-04', 'Machine Learning', '3rd Year', 'priya@mail.com', '1234', ''),
(12, 'Shakil Ahmed (222-112-013)', 'Male', '2001-10-09', 'Machine Learning', '3rd Year', 'shakil@mail.com', '1234', ''),
(13, 'Al Jamil (222-112-016)', 'Male', '1999-06-15', 'Machine Learning', '3rd Year', 'jamil@mail.com', '1234', ''),
(14, 'Ahmad Bakhtiar Nayeem (222-112-017)', 'Male', '1999-12-12', 'Machine Learning', '3rd Year', 'nayeem@mail.com', '1234', ''),
(15, 'Sayed Md. Safiuddin Safi (231-112-002)', 'Male', '2000-06-05', 'Computer Technology', '2nd Year', 'safi@mail.com', '1234', ''),
(16, 'Mst.Tarin Akter (231-112-003)', 'Female', '2002-03-06', 'Computer Technology', '2nd Year', 'tarin@mail.com', '1234', ''),
(17, 'Md. Nazmus Shakib (231-112-005)', 'Male', '2000-06-05', 'Computer Technology', '2nd Year', 'shakib@mail.com', '1234', ''),
(18, 'Biplob Hasan Nibir  (231-112-006)', 'Male', '2002-10-08', 'Computer Technology', '2nd Year', 'biplob@mail.com', '1234', ''),
(19, 'Golam Kibria  (231-112-010)', 'Male', '2001-08-01', 'Computer Technology', '2nd Year', 'kibria@mail.com', '1234', ''),
(20, 'Md. Sakibur Rahman (231-112-011)', 'Male', '2003-05-19', 'Computer Technology', '2nd Year', 'sakibur@mail.com', '1234', ''),
(21, 'Muhit Kumar Das (231-112-012)', 'Male', '2002-10-14', 'Computer Technology', '2nd Year', 'muhit@mail.com', '1234', ''),
(22, 'S M Fahim Ahmed (232-112-002)', 'Male', '2004-05-30', 'Object Oriented Programming', '2nd Year', 'fahim@mail.com', '1234', ''),
(23, 'Md. Jubayer Ahmed (232-112-003)', 'Male', '2003-10-20', 'Object Oriented Programming', '2nd Year', 'jubayar@mail.com', '1234', ''),
(24, 'Abdullah Al Mahfuz (232-112-004)', 'Male', '1999-06-03', 'Object Oriented Programming', '2nd Year', 'mahfuz@mail.com', '1234', ''),
(25, 'Shuvo Dhar (232-112-005)', 'Male', '2004-02-16', 'Object Oriented Programming', '2nd Year', 'shuvo@mail.com', '1234', ''),
(26, 'Sungida Khanum Ria (232-112-006)', 'Female', '2003-10-21', 'Object Oriented Programming', '2nd Year', 'ria@mail.com', '1234', ''),
(27, 'Tanvir Hasan (232-112-007)', 'Male', '2002-10-22', 'Object Oriented Programming', '2nd Year', 'tanvir@mail.com', '1234', ''),
(28, 'Md. Jamil Ahamad Al Amin (232-112-008)', 'Male', '2003-05-04', 'Object Oriented Programming', '2nd Year', 'alamin@mail.com', '1234', ''),
(29, 'Md. Rumel Ahmed (232-112-009)', 'Male', '2001-05-06', 'Object Oriented Programming', '2nd Year', 'rumel@mail.com', '1234', ''),
(30, 'Mst. Sharmin Akter (232-112-010)', 'Female', '2001-05-28', 'Object Oriented Programming', '2nd Year', 'sharmin@mail.com', '1234', ''),
(31, 'Amita Rani Deb (232-112-011)', 'Female', '2003-01-31', 'Object Oriented Programming', '2nd Year', 'amita@mail.com', '1234', ''),
(32, 'Shtabdee Paul (232-112-014)', 'Female', '2002-07-24', 'Object Oriented Programming', '2nd Year', 'shtabdee@mail.com', '1234', ''),
(33, 'Eti Sarker(232-112-015)', 'Female', '2003-02-13', 'Object Oriented Programming', '2nd Year', 'eti@mail.com', '1234', ''),
(34, 'Rajat Sarker (232-112-016)', 'Male', '2003-05-19', 'Object Oriented Programming', '2nd Year', 'rajat@mail.com', '1234', ''),
(35, 'Md. Ishrakul Islam Efaz (232-112-017)', 'Male', '2002-09-16', 'Object Oriented Programming', '2nd Year', 'efaz@mail.com', '1234', ''),
(36, 'Muhaiminul Islam Himel (232-112-018)', 'Male', '2001-06-26', 'Object Oriented Programming', '2nd Year', 'himel@mail.com', '1234', ''),
(37, 'Jakir Chowdhury (231-142-001)', 'Male', '2002-09-16', 'Structured Programming', '2nd Year', 'jakir@mail.com', '1234', ''),
(38, 'Md. Maruf Hussain Jumman (231-142-002)', 'Male', '2002-05-05', 'Structured Programming', '2nd Year', 'maruf@mail.com', '1234', ''),
(39, 'Anupam Das (231-142-003)', 'Male', '2004-09-07', 'Structured Programming', '2nd Year', 'anupam@mail.com', '1234', ''),
(40, 'Md. Jahidul Islam Tareq (231-142-005)', 'Male', '2003-11-12', 'Structured Programming', '2nd Year', 'tareq@mail.com', '1234', ''),
(41, 'Abdullah al Masum (231-142-007)', 'Male', '2004-07-07', 'Structured Programming', '2nd Year', 'masum@mail.com', '1234', ''),
(42, 'Abdullah Md Saied (231-142-008)', 'Male', '2002-10-08', 'Structured Programming', '2nd Year', 'saied@mail.com', '1234', ''),
(43, 'Md. Forhad Ahamed (231-142-009)', 'Male', '2002-10-07', 'Structured Programming', '2nd Year', 'forhad@mail.com', '1234', ''),
(44, 'Ebrahim Khan (232-142-010)', 'Male', '2000-09-25', 'Structured Programming', '2nd Year', 'ebrahim@mail.com', '1234', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `adm_id` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `special_token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`adm_id`, `image`, `full_name`, `contact`, `emailid`, `password`, `special_token`) VALUES
(1, 'uploads/LyYJTf0gUF.png', 'Admin One', '01795663113', 'admin@examflow.com', '1234', 'MthPNTKv0n'),
(2, '', 'Admin2', '0186642217', 'admin2@examflow.com', '1234', 'dE9M2k73Wi');

-- --------------------------------------------------------

--
-- Table structure for table `assign_course`
--

CREATE TABLE `assign_course` (
  `assign_id` int(100) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `create_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `assign_course`
--

INSERT INTO `assign_course` (`assign_id`, `class_name`, `course_name`, `create_time`) VALUES
(2, 'CSE-30th(Eve)', 'Computer Graphics & Multimedia', '03-12-2024 12:09'),
(3, 'CSE-31st(Eve)', 'Machine Learning', '03-12-2024 12:09'),
(4, 'CSE-32th(Eve)', 'Computer Technology', '03-12-2024 12:10'),
(5, 'CSE-33th(Eve)', 'Object Oriented Programming', '03-12-2024 12:13'),
(6, 'EEE-45th(Eve)', 'Structured Programming', '03-12-2024 12:13');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `id` int(100) NOT NULL,
  `std_id` int(100) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `std_email` varchar(100) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `question` varchar(10000) NOT NULL,
  `answered` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`id`, `std_id`, `std_name`, `std_email`, `exam_title`, `question`, `answered`) VALUES
(1, 44, 'Ebrahim Khan (232-142-010)', 'ebrahim@mail.com', 'CT-1', 'Programming based on stepwise refinement process', 'C programming'),
(2, 44, 'Ebrahim Khan (232-142-010)', 'ebrahim@mail.com', 'CT-1', 'A ________ is a directed graph that describes the flow of execution control of the program.', 'Flow Graph'),
(3, 44, 'Ebrahim Khan (232-142-010)', 'ebrahim@mail.com', 'CT-1', 'Which of the following is a loop statement?', 'ELSE'),
(4, 44, 'Ebrahim Khan (232-142-010)', 'ebrahim@mail.com', 'CT-1', 'Semicolon is used after :', 'Function call'),
(5, 44, 'Ebrahim Khan (232-142-010)', 'ebrahim@mail.com', 'CT-1', 'Which of the following isn’t a loop statement?', ''),
(6, 44, 'Ebrahim Khan (232-142-010)', 'ebrahim@mail.com', 'CT-1', 'Which is valid C expression?', 'int my_num = 100000;'),
(7, 44, 'Ebrahim Khan (232-142-010)', 'ebrahim@mail.com', 'CT-1', 'A program should be ________', 'Secure'),
(8, 44, 'Ebrahim Khan (232-142-010)', 'ebrahim@mail.com', 'CT-1', 'What is the correct syntax of for statement?', 'for(initialization;condition;update)'),
(9, 44, 'Ebrahim Khan (232-142-010)', 'ebrahim@mail.com', 'CT-1', 'The number of values a function can return at a time?', '0'),
(10, 44, 'Ebrahim Khan (232-142-010)', 'ebrahim@mail.com', 'CT-1', 'Who is the father of C language?', 'James Gosling'),
(11, 42, 'Abdullah Md Saied (231-142-008)', 'saied@mail.com', 'CT-1 of SP', 'What is a structure in C language?', 'A structure is a collection of elements that can be of same datatype'),
(12, 42, 'Abdullah Md Saied (231-142-008)', 'saied@mail.com', 'CT-1 of SP', 'What is the size of a C structure?', ''),
(13, 42, 'Abdullah Md Saied (231-142-008)', 'saied@mail.com', 'CT-1 of SP', 'Choose a correct statement about C structure elements?', 'None of the above'),
(14, 42, 'Abdullah Md Saied (231-142-008)', 'saied@mail.com', 'CT-1 of SP', 'A C structure or User defined datatype is also called ________.', 'Secondary data type'),
(15, 42, 'Abdullah Md Saied (231-142-008)', 'saied@mail.com', 'CT-1 of SP', 'What are the uses of C Structures?', 'Structures are used in Operating System functionality like Display and Input taking'),
(16, 42, 'Abdullah Md Saied (231-142-008)', 'saied@mail.com', 'CT-1 of SP', 'Choose a correct statement about C structures.', 'You can define an unlimited number of members inside a structure'),
(17, 42, 'Abdullah Md Saied (231-142-008)', 'saied@mail.com', 'CT-1 of SP', 'Which of the following return-type cannot be used for a function in C?', 'char *'),
(18, 42, 'Abdullah Md Saied (231-142-008)', 'saied@mail.com', 'CT-1 of SP', ' Which of the following is not possible under any scenario?', '(*s1).number = 10;'),
(19, 42, 'Abdullah Md Saied (231-142-008)', 'saied@mail.com', 'CT-1 of SP', 'Which of the following operation is illegal in structures?', 'Dynamic allocation of memory for structure>'),
(20, 42, 'Abdullah Md Saied (231-142-008)', 'saied@mail.com', 'CT-1 of SP', 'Which of the following are themselves a collection of different data types?', 'String'),
(21, 43, 'Md. Forhad Ahamed (231-142-009)', 'forhad@mail.com', 'CT-1 of SP', 'What is a structure in C language?', 'Elements of a structure are called members'),
(22, 43, 'Md. Forhad Ahamed (231-142-009)', 'forhad@mail.com', 'CT-1 of SP', 'What is the size of a C structure?', 'None of the above'),
(23, 43, 'Md. Forhad Ahamed (231-142-009)', 'forhad@mail.com', 'CT-1 of SP', 'Choose a correct statement about C structure elements?', 'Structure elements are stored on random free memory locations'),
(24, 43, 'Md. Forhad Ahamed (231-142-009)', 'forhad@mail.com', 'CT-1 of SP', 'A C structure or User defined datatype is also called ________.', 'Derived data type'),
(25, 43, 'Md. Forhad Ahamed (231-142-009)', 'forhad@mail.com', 'CT-1 of SP', 'What are the uses of C Structures?', 'Structure are used to exchange information with peripherals of PC'),
(26, 43, 'Md. Forhad Ahamed (231-142-009)', 'forhad@mail.com', 'CT-1 of SP', 'Choose a correct statement about C structures.', 'You can define an unlimited number of members inside a structure'),
(27, 43, 'Md. Forhad Ahamed (231-142-009)', 'forhad@mail.com', 'CT-1 of SP', 'Which of the following return-type cannot be used for a function in C?', 'void'),
(28, 43, 'Md. Forhad Ahamed (231-142-009)', 'forhad@mail.com', 'CT-1 of SP', ' Which of the following is not possible under any scenario?', '(*s1).number = 10;'),
(29, 43, 'Md. Forhad Ahamed (231-142-009)', 'forhad@mail.com', 'CT-1 of SP', 'Which of the following operation is illegal in structures?', 'Typecasting of structure>'),
(30, 43, 'Md. Forhad Ahamed (231-142-009)', 'forhad@mail.com', 'CT-1 of SP', 'Which of the following are themselves a collection of different data types?', 'String'),
(31, 39, 'Anupam Das (231-142-003)', 'anupam@mail.com', 'CT-1 of SP', 'What is a structure in C language?', 'All of the these'),
(32, 39, 'Anupam Das (231-142-003)', 'anupam@mail.com', 'CT-1 of SP', 'What is the size of a C structure?', 'Size of C structure is the size of largest elements'),
(33, 39, 'Anupam Das (231-142-003)', 'anupam@mail.com', 'CT-1 of SP', 'Choose a correct statement about C structure elements?', 'Structure elements are stored on random free memory locations'),
(34, 39, 'Anupam Das (231-142-003)', 'anupam@mail.com', 'CT-1 of SP', 'A C structure or User defined datatype is also called ________.', 'Derived data type'),
(35, 39, 'Anupam Das (231-142-003)', 'anupam@mail.com', 'CT-1 of SP', 'What are the uses of C Structures?', 'Structures are used in Operating System functionality like Display and Input taking'),
(36, 39, 'Anupam Das (231-142-003)', 'anupam@mail.com', 'CT-1 of SP', 'Choose a correct statement about C structures.', 'A structure can contain same structure type member'),
(37, 39, 'Anupam Das (231-142-003)', 'anupam@mail.com', 'CT-1 of SP', 'Which of the following return-type cannot be used for a function in C?', 'None of the mentioned'),
(38, 39, 'Anupam Das (231-142-003)', 'anupam@mail.com', 'CT-1 of SP', ' Which of the following is not possible under any scenario?', '(*s1).number = 10;'),
(39, 39, 'Anupam Das (231-142-003)', 'anupam@mail.com', 'CT-1 of SP', 'Which of the following operation is illegal in structures?', 'Pointer to a variable of the same structure>'),
(40, 39, 'Anupam Das (231-142-003)', 'anupam@mail.com', 'CT-1 of SP', 'Which of the following are themselves a collection of different data types?', 'String'),
(41, 18, 'Biplob Hasan Nibir  (231-112-006)', 'biplob@mail.com', 'CT-1 of CMT', 'A process is a _______.', 'Program in the execution'),
(42, 18, 'Biplob Hasan Nibir  (231-112-006)', 'biplob@mail.com', 'CT-1 of CMT', 'The word processing feature that catches most random typographical errors and misspellings is known as _____.', 'Word checker'),
(43, 18, 'Biplob Hasan Nibir  (231-112-006)', 'biplob@mail.com', 'CT-1 of CMT', 'What is smallest unit of the information?', 'A byte'),
(44, 18, 'Biplob Hasan Nibir  (231-112-006)', 'biplob@mail.com', 'CT-1 of CMT', 'What is the decimal equivalent of the binary number 10111?', '21'),
(45, 18, 'Biplob Hasan Nibir  (231-112-006)', 'biplob@mail.com', 'CT-1 of CMT', 'What is the term for a temporary storage area that compensates for differences in data rate and data flow between devices?', 'Channel'),
(46, 18, 'Biplob Hasan Nibir  (231-112-006)', 'biplob@mail.com', 'CT-1 of CMT', 'How many color dots make up one color pixel on a screen?', '3'),
(47, 18, 'Biplob Hasan Nibir  (231-112-006)', 'biplob@mail.com', 'CT-1 of CMT', 'Which of the following values is the correct value of this hexadecimal code 1F.01B?', '31.0065918'),
(48, 18, 'Biplob Hasan Nibir  (231-112-006)', 'biplob@mail.com', 'CT-1 of CMT', 'How is the data stored on the diskette?', 'Ink'),
(49, 18, 'Biplob Hasan Nibir  (231-112-006)', 'biplob@mail.com', 'CT-1 of CMT', 'Which of the following is the smallest visual element on a video monitor?', 'Pixel'),
(50, 18, 'Biplob Hasan Nibir  (231-112-006)', 'biplob@mail.com', 'CT-1 of CMT', 'Which of the following natural element is the primary element in computer chips?', 'Silicon'),
(51, 16, 'Mst.Tarin Akter (231-112-003)', 'tarin@mail.com', 'CT-1 of CMT', 'A process is a _______.', 'Single thread of execution'),
(52, 16, 'Mst.Tarin Akter (231-112-003)', 'tarin@mail.com', 'CT-1 of CMT', 'The word processing feature that catches most random typographical errors and misspellings is known as _____.', 'Word checker'),
(53, 16, 'Mst.Tarin Akter (231-112-003)', 'tarin@mail.com', 'CT-1 of CMT', 'What is smallest unit of the information?', 'A byte'),
(54, 16, 'Mst.Tarin Akter (231-112-003)', 'tarin@mail.com', 'CT-1 of CMT', 'What is the decimal equivalent of the binary number 10111?', '21'),
(55, 16, 'Mst.Tarin Akter (231-112-003)', 'tarin@mail.com', 'CT-1 of CMT', 'What is the term for a temporary storage area that compensates for differences in data rate and data flow between devices?', 'Channel'),
(56, 16, 'Mst.Tarin Akter (231-112-003)', 'tarin@mail.com', 'CT-1 of CMT', 'How many color dots make up one color pixel on a screen?', '8'),
(57, 16, 'Mst.Tarin Akter (231-112-003)', 'tarin@mail.com', 'CT-1 of CMT', 'Which of the following values is the correct value of this hexadecimal code 1F.01B?', '31.0065918'),
(58, 16, 'Mst.Tarin Akter (231-112-003)', 'tarin@mail.com', 'CT-1 of CMT', 'How is the data stored on the diskette?', 'Circuits'),
(59, 16, 'Mst.Tarin Akter (231-112-003)', 'tarin@mail.com', 'CT-1 of CMT', 'Which of the following is the smallest visual element on a video monitor?', 'Pixel'),
(60, 16, 'Mst.Tarin Akter (231-112-003)', 'tarin@mail.com', 'CT-1 of CMT', 'Which of the following natural element is the primary element in computer chips?', 'Silicon'),
(61, 19, 'Golam Kibria  (231-112-010)', 'kibria@mail.com', 'CT-1 of CMT', 'A process is a _______.', 'Single thread of execution'),
(62, 19, 'Golam Kibria  (231-112-010)', 'kibria@mail.com', 'CT-1 of CMT', 'The word processing feature that catches most random typographical errors and misspellings is known as _____.', 'Spell checker'),
(63, 19, 'Golam Kibria  (231-112-010)', 'kibria@mail.com', 'CT-1 of CMT', 'What is smallest unit of the information?', 'A bit'),
(64, 19, 'Golam Kibria  (231-112-010)', 'kibria@mail.com', 'CT-1 of CMT', 'What is the decimal equivalent of the binary number 10111?', '21'),
(65, 19, 'Golam Kibria  (231-112-010)', 'kibria@mail.com', 'CT-1 of CMT', 'What is the term for a temporary storage area that compensates for differences in data rate and data flow between devices?', 'Channel'),
(66, 19, 'Golam Kibria  (231-112-010)', 'kibria@mail.com', 'CT-1 of CMT', 'How many color dots make up one color pixel on a screen?', '8'),
(67, 19, 'Golam Kibria  (231-112-010)', 'kibria@mail.com', 'CT-1 of CMT', 'Which of the following values is the correct value of this hexadecimal code 1F.01B?', '31.0065918'),
(68, 19, 'Golam Kibria  (231-112-010)', 'kibria@mail.com', 'CT-1 of CMT', 'How is the data stored on the diskette?', 'Laser bubbles'),
(69, 19, 'Golam Kibria  (231-112-010)', 'kibria@mail.com', 'CT-1 of CMT', 'Which of the following is the smallest visual element on a video monitor?', 'Pixel'),
(70, 19, 'Golam Kibria  (231-112-010)', 'kibria@mail.com', 'CT-1 of CMT', 'Which of the following natural element is the primary element in computer chips?', 'Carbon'),
(71, 2, 'Debobroto Rudra Pal (221-112-004)', 'debobroto@mail.com', 'CT-1 of CGM', 'GUI stands for -', 'Graphical User Interface'),
(72, 2, 'Debobroto Rudra Pal (221-112-004)', 'debobroto@mail.com', 'CT-1 of CGM', 'Graphics can be -', 'All of the above'),
(73, 2, 'Debobroto Rudra Pal (221-112-004)', 'debobroto@mail.com', 'CT-1 of CGM', 'CAD stands for -', 'Computer-Aided Design'),
(74, 2, 'Debobroto Rudra Pal (221-112-004)', 'debobroto@mail.com', 'CT-1 of CGM', 'The components of Interactive computer graphics are -', 'Display Controller'),
(75, 2, 'Debobroto Rudra Pal (221-112-004)', 'debobroto@mail.com', 'CT-1 of CGM', 'A user can make any change in the image using -', 'Interactive Computer Graphics'),
(76, 2, 'Debobroto Rudra Pal (221-112-004)', 'debobroto@mail.com', 'CT-1 of CGM', 'The higher number of pixels gives us a ____ image -', 'Worst'),
(77, 2, 'Debobroto Rudra Pal (221-112-004)', 'debobroto@mail.com', 'CT-1 of CGM', 'Which one of the following is the primarily used output device?', 'Video Monitor'),
(78, 2, 'Debobroto Rudra Pal (221-112-004)', 'debobroto@mail.com', 'CT-1 of CGM', 'Which one of the following terms is used for the area of the computer captured by an application?', 'Display'),
(79, 2, 'Debobroto Rudra Pal (221-112-004)', 'debobroto@mail.com', 'CT-1 of CGM', 'Aspect Ratio can be defined as -', 'The ratio of the vertical points to horizontal points'),
(80, 2, 'Debobroto Rudra Pal (221-112-004)', 'debobroto@mail.com', 'CT-1 of CGM', 'Which of the following is not the pattern of line?', 'Dotted line'),
(81, 3, 'Sohanur Rahman Nishad (221-112-006)', 'nishad@mail.com', 'CT-1 of CGM', 'GUI stands for -', 'Graphical User Interface'),
(82, 3, 'Sohanur Rahman Nishad (221-112-006)', 'nishad@mail.com', 'CT-1 of CGM', 'Graphics can be -', 'Drawing'),
(83, 3, 'Sohanur Rahman Nishad (221-112-006)', 'nishad@mail.com', 'CT-1 of CGM', 'CAD stands for -', 'Computer-Aided Design'),
(84, 3, 'Sohanur Rahman Nishad (221-112-006)', 'nishad@mail.com', 'CT-1 of CGM', 'The components of Interactive computer graphics are -', 'All of the Above'),
(85, 3, 'Sohanur Rahman Nishad (221-112-006)', 'nishad@mail.com', 'CT-1 of CGM', 'A user can make any change in the image using -', 'Non-Interactive Computer Graphics'),
(86, 3, 'Sohanur Rahman Nishad (221-112-006)', 'nishad@mail.com', 'CT-1 of CGM', 'The higher number of pixels gives us a ____ image -', 'Smaller'),
(87, 3, 'Sohanur Rahman Nishad (221-112-006)', 'nishad@mail.com', 'CT-1 of CGM', 'Which one of the following is the primarily used output device?', 'Scanner'),
(88, 3, 'Sohanur Rahman Nishad (221-112-006)', 'nishad@mail.com', 'CT-1 of CGM', 'Which one of the following terms is used for the area of the computer captured by an application?', 'Viewport'),
(89, 3, 'Sohanur Rahman Nishad (221-112-006)', 'nishad@mail.com', 'CT-1 of CGM', 'Aspect Ratio can be defined as -', 'The ratio of the vertical points to horizontal points'),
(90, 3, 'Sohanur Rahman Nishad (221-112-006)', 'nishad@mail.com', 'CT-1 of CGM', 'Which of the following is not the pattern of line?', 'Dark Line'),
(91, 4, 'Md Minhajul Islam (221-112-011)', 'minhaz@mail.com', 'CT-1 of CGM', 'GUI stands for -', 'Graphics Uniform Interaction'),
(92, 4, 'Md Minhajul Islam (221-112-011)', 'minhaz@mail.com', 'CT-1 of CGM', 'Graphics can be -', 'All of the above'),
(93, 4, 'Md Minhajul Islam (221-112-011)', 'minhaz@mail.com', 'CT-1 of CGM', 'CAD stands for -', 'Computer-Aided Design'),
(94, 4, 'Md Minhajul Islam (221-112-011)', 'minhaz@mail.com', 'CT-1 of CGM', 'The components of Interactive computer graphics are -', 'Display Controller'),
(95, 4, 'Md Minhajul Islam (221-112-011)', 'minhaz@mail.com', 'CT-1 of CGM', 'A user can make any change in the image using -', 'Interactive Computer Graphics'),
(96, 4, 'Md Minhajul Islam (221-112-011)', 'minhaz@mail.com', 'CT-1 of CGM', 'The higher number of pixels gives us a ____ image -', 'Better'),
(97, 4, 'Md Minhajul Islam (221-112-011)', 'minhaz@mail.com', 'CT-1 of CGM', 'Which one of the following is the primarily used output device?', 'Video Monitor'),
(98, 4, 'Md Minhajul Islam (221-112-011)', 'minhaz@mail.com', 'CT-1 of CGM', 'Which one of the following terms is used for the area of the computer captured by an application?', 'Display'),
(99, 4, 'Md Minhajul Islam (221-112-011)', 'minhaz@mail.com', 'CT-1 of CGM', 'Aspect Ratio can be defined as -', 'The ratio of the vertical points to horizontal points'),
(100, 4, 'Md Minhajul Islam (221-112-011)', 'minhaz@mail.com', 'CT-1 of CGM', 'Which of the following is not the pattern of line?', 'Dark Line');

-- --------------------------------------------------------

--
-- Table structure for table `std_exam_status`
--

CREATE TABLE `std_exam_status` (
  `status_id` int(100) NOT NULL,
  `std_id` int(100) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `std_email` varchar(100) NOT NULL,
  `exam_name` varchar(100) NOT NULL,
  `attendence_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `std_exam_status`
--

INSERT INTO `std_exam_status` (`status_id`, `std_id`, `std_name`, `std_email`, `exam_name`, `attendence_status`) VALUES
(1, 44, 'Ebrahim Khan (232-142-010)', 'ebrahim@mail.com', 'CT-1', 'Ended'),
(2, 42, 'Abdullah Md Saied (231-142-008)', 'saied@mail.com', 'CT-1 of SP', 'Ended'),
(3, 43, 'Md. Forhad Ahamed (231-142-009)', 'forhad@mail.com', 'CT-1 of SP', 'Ended'),
(4, 39, 'Anupam Das (231-142-003)', 'anupam@mail.com', 'CT-1 of SP', 'Ended'),
(5, 18, 'Biplob Hasan Nibir  (231-112-006)', 'biplob@mail.com', 'CT-1 of CMT', 'Ended'),
(6, 16, 'Mst.Tarin Akter (231-112-003)', 'tarin@mail.com', 'CT-1 of CMT', 'Ended'),
(7, 19, 'Golam Kibria  (231-112-010)', 'kibria@mail.com', 'CT-1 of CMT', 'Ended'),
(8, 2, 'Debobroto Rudra Pal (221-112-004)', 'debobroto@mail.com', 'CT-1 of CGM', 'Ended'),
(9, 3, 'Sohanur Rahman Nishad (221-112-006)', 'nishad@mail.com', 'CT-1 of CGM', 'Ended'),
(10, 4, 'Md Minhajul Islam (221-112-011)', 'minhaz@mail.com', 'CT-1 of CGM', 'Ended');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_class`
--
ALTER TABLE `add_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `add_course`
--
ALTER TABLE `add_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `add_exam`
--
ALTER TABLE `add_exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `add_question`
--
ALTER TABLE `add_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `add_student`
--
ALTER TABLE `add_student`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `admin_reg`
--
ALTER TABLE `admin_reg`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `assign_course`
--
ALTER TABLE `assign_course`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_exam_status`
--
ALTER TABLE `std_exam_status`
  ADD PRIMARY KEY (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_class`
--
ALTER TABLE `add_class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `add_course`
--
ALTER TABLE `add_course`
  MODIFY `course_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `add_exam`
--
ALTER TABLE `add_exam`
  MODIFY `exam_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `add_question`
--
ALTER TABLE `add_question`
  MODIFY `question_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `add_student`
--
ALTER TABLE `add_student`
  MODIFY `std_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `admin_reg`
--
ALTER TABLE `admin_reg`
  MODIFY `adm_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assign_course`
--
ALTER TABLE `assign_course`
  MODIFY `assign_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `std_exam_status`
--
ALTER TABLE `std_exam_status`
  MODIFY `status_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
