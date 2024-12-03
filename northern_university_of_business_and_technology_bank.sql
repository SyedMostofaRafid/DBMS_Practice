SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `northern_university_of_business_and_technology_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `Account_number` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Account_type` varchar(50) NOT NULL,
  `Balance` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`Account_number`, `Customer_id`, `Account_type`, `Balance`) VALUES
(1111, 1001, 'Savings', 1000.00),
(2222, 1002, 'Checking', 5000.00),
(3333, 1003, 'Savings', 2500.00),
(4444, 1004, 'Checking', 3000.00),
(5555, 1005, 'Savings', 1500.00);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_id` varchar(10) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_id`, `branch_name`, `address`, `phone_number`) VALUES
('B1', 'Main Branch', '123 Main St', '555-1111'),
('B2', 'Elm Street Branch', '456 Elm St', '555-2222'),
('B3', 'Oak Street Branch', '789 Oak St', '555-3333'),
('B4', 'Pine Street Branch', '234 Pine St', '555-4444'),
('B5', 'Cedar Street Branch', '567 Cedar St', '555-5555');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `Customer_ID` int(11) NOT NULL,
  `Customer_Name` varchar(100) NOT NULL,
  `Customer_Address` text NOT NULL,
  `Customer_Phone_Number` varchar(15) NOT NULL,
  `Customer_Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`Customer_ID`, `Customer_Name`, `Customer_Address`, `Customer_Phone_Number`, `Customer_Email`) VALUES
(1001, 'John Doe', '123 Main St', '555-1212', 'johndoe@email.com'),
(1002, 'Jane Smith', '456 Elm St', '555-3434', 'janesmith@email.com'),
(1003, 'Michael Johnson', '789 Oak St', '555-5656', 'michaeljohnson@email.com'),
(1004, 'Emily Davis', '234 Pine St', '555-7878', 'emilydavis@email.com'),
(1005, 'David Lee', '567 Cedar St', '555-9090', 'davidlee@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `Loan_ID` varchar(10) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Loan_Amount` decimal(10,2) NOT NULL,
  `Interest_Rate` decimal(4,2) NOT NULL,
  `Term` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`Loan_ID`, `Customer_ID`, `Loan_Amount`, `Interest_Rate`, `Term`) VALUES
('L1', 1001, 10000.00, 5.00, 5),
('L2', 1002, 20000.00, 4.50, 3),
('L3', 1003, 15000.00, 6.00, 4),
('L4', 1004, 8000.00, 3.50, 2),
('L5', 1005, 12000.00, 5.50, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`Account_number`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`Loan_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
