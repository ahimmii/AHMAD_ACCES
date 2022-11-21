-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 12:57 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahmad_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Login` varchar(40) DEFAULT NULL,
  `Password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Login`, `Password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin2', 'admin2'),
(3, 'admin3', 'admin3'),
(8, 'xxxxx', 'xxxxx');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$XMW5lShVBQELaa6lWdJml7$UP+n8QdFMhHNMxe+WV06prdE6X23IDlhYDXoY8e50ak=', '2022-11-18 13:13:34.000000', 1, 'admin', '', '', 'himmi4@live.fr', 1, 1, '2022-11-16 01:44:40.000000'),
(2, 'pbkdf2_sha256$390000$YXKID7bxPOOaU6z1vhxYjU$8U1yoV9SjNL1IAZ37Nptq4ON4D2QbMC4NiP/otE1KQ4=', '2022-11-18 14:23:40.429463', 1, 'ahmad', '', '', '', 1, 1, '2022-11-17 22:03:38.555520');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `id_B` int(11) NOT NULL,
  `Id_order` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-18 01:17:04.365772', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 2),
(2, '2022-11-18 02:10:29.517375', '9', 'Loginmodel object (9)', 3, '', 9, 2),
(3, '2022-11-18 02:22:22.117119', '1', 'Loginmodel object (1)', 1, '[{\"added\": {}}]', 9, 2),
(4, '2022-11-18 02:23:52.254032', '2', 'Loginmodel object (2)', 1, '[{\"added\": {}}]', 9, 2),
(5, '2022-11-18 02:48:17.042281', '3', 'stockmodel object (3)', 1, '[{\"added\": {}}]', 10, 2),
(6, '2022-11-18 02:49:21.799319', '3', 'stockmodel object (3)', 3, '', 10, 2),
(7, '2022-11-18 02:58:46.278858', '2', 'stockmodel object (2)', 1, '[{\"added\": {}}]', 10, 2),
(8, '2022-11-18 19:03:52.292193', '2', 'ordermodel object (2)', 1, '[{\"added\": {}}]', 11, 2),
(9, '2022-11-18 20:29:22.409463', '2', 'stockmodel object (2)', 2, '[{\"changed\": {\"fields\": [\"Datetimes\"]}}]', 13, 2),
(10, '2022-11-18 20:30:32.220326', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 2),
(11, '2022-11-19 14:51:57.279284', '3', 'stockmodel object (3)', 1, '[{\"added\": {}}]', 13, 2),
(12, '2022-11-19 14:53:01.175326', '4', 'stockmodel object (4)', 1, '[{\"added\": {}}]', 13, 2),
(13, '2022-11-19 14:54:15.086362', '5', 'stockmodel object (5)', 1, '[{\"added\": {}}]', 13, 2),
(14, '2022-11-19 14:55:17.577673', '6', 'stockmodel object (6)', 1, '[{\"added\": {}}]', 13, 2),
(15, '2022-11-19 14:56:17.961088', '7', 'stockmodel object (7)', 1, '[{\"added\": {}}]', 13, 2),
(16, '2022-11-19 14:57:08.842449', '8', 'stockmodel object (8)', 1, '[{\"added\": {}}]', 13, 2),
(17, '2022-11-19 14:57:49.295860', '9', 'stockmodel object (9)', 1, '[{\"added\": {}}]', 13, 2),
(18, '2022-11-19 14:58:37.825700', '10', 'stockmodel object (10)', 1, '[{\"added\": {}}]', 13, 2),
(19, '2022-11-19 14:59:31.796113', '11', 'stockmodel object (11)', 1, '[{\"added\": {}}]', 13, 2),
(20, '2022-11-19 15:00:18.132883', '12', 'stockmodel object (12)', 1, '[{\"added\": {}}]', 13, 2),
(21, '2022-11-19 15:01:02.096309', '13', 'stockmodel object (13)', 1, '[{\"added\": {}}]', 13, 2),
(22, '2022-11-19 15:02:03.131535', '14', 'stockmodel object (14)', 1, '[{\"added\": {}}]', 13, 2),
(23, '2022-11-19 15:03:00.753124', '15', 'stockmodel object (15)', 1, '[{\"added\": {}}]', 13, 2),
(24, '2022-11-19 15:03:56.322126', '16', 'stockmodel object (16)', 1, '[{\"added\": {}}]', 13, 2),
(25, '2022-11-19 15:04:33.348774', '17', 'stockmodel object (17)', 1, '[{\"added\": {}}]', 13, 2),
(26, '2022-11-19 15:05:16.036013', '18', 'stockmodel object (18)', 1, '[{\"added\": {}}]', 13, 2),
(27, '2022-11-19 15:06:20.111360', '19', 'stockmodel object (19)', 1, '[{\"added\": {}}]', 13, 2),
(28, '2022-11-19 15:07:03.554155', '20', 'stockmodel object (20)', 1, '[{\"added\": {}}]', 13, 2),
(29, '2022-11-19 15:07:38.816114', '21', 'stockmodel object (21)', 1, '[{\"added\": {}}]', 13, 2),
(30, '2022-11-19 15:08:31.623724', '22', 'stockmodel object (22)', 1, '[{\"added\": {}}]', 13, 2),
(31, '2022-11-19 15:09:23.229564', '23', 'stockmodel object (23)', 1, '[{\"added\": {}}]', 13, 2),
(32, '2022-11-19 15:10:08.516635', '24', 'stockmodel object (24)', 1, '[{\"added\": {}}]', 13, 2),
(33, '2022-11-19 15:11:57.667077', '18', 'stockmodel object (18)', 2, '[{\"changed\": {\"fields\": [\"Qte\"]}}]', 13, 2),
(34, '2022-11-19 15:15:02.327665', '25', 'stockmodel object (25)', 1, '[{\"added\": {}}]', 13, 2),
(35, '2022-11-19 15:16:15.562614', '26', 'stockmodel object (26)', 1, '[{\"added\": {}}]', 13, 2),
(36, '2022-11-19 15:16:38.322335', '18', 'stockmodel object (18)', 2, '[{\"changed\": {\"fields\": [\"Qte\"]}}]', 13, 2),
(37, '2022-11-19 15:17:30.478701', '27', 'stockmodel object (27)', 1, '[{\"added\": {}}]', 13, 2),
(38, '2022-11-19 15:18:01.803688', '28', 'stockmodel object (28)', 1, '[{\"added\": {}}]', 13, 2),
(39, '2022-11-19 15:18:52.960478', '27', 'stockmodel object (27)', 2, '[{\"changed\": {\"fields\": [\"Qte\"]}}]', 13, 2),
(40, '2022-11-19 15:19:29.738444', '29', 'stockmodel object (29)', 1, '[{\"added\": {}}]', 13, 2),
(41, '2022-11-19 15:20:30.152167', '30', 'stockmodel object (30)', 1, '[{\"added\": {}}]', 13, 2),
(42, '2022-11-19 15:22:01.453191', '31', 'stockmodel object (31)', 1, '[{\"added\": {}}]', 13, 2),
(43, '2022-11-19 15:22:41.029742', '32', 'stockmodel object (32)', 1, '[{\"added\": {}}]', 13, 2),
(44, '2022-11-19 15:23:31.745800', '33', 'stockmodel object (33)', 1, '[{\"added\": {}}]', 13, 2),
(45, '2022-11-19 15:24:51.786094', '34', 'stockmodel object (34)', 1, '[{\"added\": {}}]', 13, 2),
(46, '2022-11-19 15:25:41.464690', '35', 'stockmodel object (35)', 1, '[{\"added\": {}}]', 13, 2),
(47, '2022-11-19 15:26:34.315327', '36', 'stockmodel object (36)', 1, '[{\"added\": {}}]', 13, 2),
(48, '2022-11-19 15:28:45.508498', '37', 'stockmodel object (37)', 1, '[{\"added\": {}}]', 13, 2),
(49, '2022-11-19 15:29:46.264259', '10', 'stockmodel object (10)', 2, '[{\"changed\": {\"fields\": [\"Qte\"]}}]', 13, 2),
(50, '2022-11-19 15:30:20.027650', '38', 'stockmodel object (38)', 1, '[{\"added\": {}}]', 13, 2),
(51, '2022-11-19 15:31:32.383589', '2', 'stockmodel object (2)', 3, '', 13, 2),
(52, '2022-11-19 15:31:32.389627', '1', 'stockmodel object (1)', 3, '', 13, 2),
(53, '2022-11-19 15:34:08.982557', '39', 'stockmodel object (39)', 1, '[{\"added\": {}}]', 13, 2),
(54, '2022-11-19 15:34:53.360292', '29', 'stockmodel object (29)', 2, '[{\"changed\": {\"fields\": [\"Qte\"]}}]', 13, 2),
(55, '2022-11-19 15:35:19.308656', '18', 'stockmodel object (18)', 2, '[{\"changed\": {\"fields\": [\"Qte\"]}}]', 13, 2),
(56, '2022-11-19 15:35:39.982197', '3', 'stockmodel object (3)', 2, '[{\"changed\": {\"fields\": [\"Qte\"]}}]', 13, 2),
(57, '2022-11-19 15:36:16.030505', '40', 'stockmodel object (40)', 1, '[{\"added\": {}}]', 13, 2),
(58, '2022-11-19 15:36:59.994053', '41', 'stockmodel object (41)', 1, '[{\"added\": {}}]', 13, 2),
(59, '2022-11-19 15:37:29.708140', '42', 'stockmodel object (42)', 1, '[{\"added\": {}}]', 13, 2),
(60, '2022-11-19 15:38:25.566291', '43', 'stockmodel object (43)', 1, '[{\"added\": {}}]', 13, 2),
(61, '2022-11-19 15:39:06.563408', '44', 'stockmodel object (44)', 1, '[{\"added\": {}}]', 13, 2),
(62, '2022-11-19 15:39:34.495959', '45', 'stockmodel object (45)', 1, '[{\"added\": {}}]', 13, 2),
(63, '2022-11-19 15:40:09.160446', '7', 'stockmodel object (7)', 2, '[{\"changed\": {\"fields\": [\"Qte\"]}}]', 13, 2),
(64, '2022-11-19 15:40:52.573638', '36', 'stockmodel object (36)', 2, '[{\"changed\": {\"fields\": [\"Qte\"]}}]', 13, 2),
(65, '2022-11-19 15:41:33.991275', '15', 'stockmodel object (15)', 2, '[{\"changed\": {\"fields\": [\"Qte\"]}}]', 13, 2),
(66, '2022-11-19 15:42:09.957694', '46', 'stockmodel object (46)', 1, '[{\"added\": {}}]', 13, 2),
(67, '2022-11-19 15:42:24.745540', '46', 'stockmodel object (46)', 2, '[{\"changed\": {\"fields\": [\"Product\"]}}]', 13, 2),
(68, '2022-11-19 15:44:19.493621', '47', 'stockmodel object (47)', 1, '[{\"added\": {}}]', 13, 2),
(69, '2022-11-20 00:42:14.438453', '3', 'ordermodel object (3)', 1, '[{\"added\": {}}]', 11, 2),
(70, '2022-11-20 00:45:16.717252', '3', 'ordermodel object (3)', 3, '', 11, 2),
(71, '2022-11-20 00:51:10.384639', '4', 'ordermodel object (4)', 1, '[{\"added\": {}}]', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'about', 'about'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'contact', 'contact'),
(5, 'contenttypes', 'contenttype'),
(11, 'Dashboard', 'ordermodel'),
(12, 'Dashboard', 'stockmodel'),
(9, 'Login', 'loginmodel'),
(10, 'Login', 'stockmodel'),
(6, 'sessions', 'session'),
(13, 'Stock', 'stockmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-16 01:41:45.684541'),
(2, 'auth', '0001_initial', '2022-11-16 01:41:46.200924'),
(3, 'admin', '0001_initial', '2022-11-16 01:41:46.320379'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-16 01:41:46.329194'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-16 01:41:46.347909'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-16 01:41:46.402799'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-16 01:41:46.447734'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-16 01:41:46.462512'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-16 01:41:46.471408'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-16 01:41:46.513104'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-16 01:41:46.517835'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-16 01:41:46.524638'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-16 01:41:46.542501'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-16 01:41:46.556641'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-16 01:41:46.573559'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-16 01:41:46.582377'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-16 01:41:46.598252'),
(18, 'sessions', '0001_initial', '2022-11-16 01:41:46.635974');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0ya0v7vmvo2278b147kxuq3fu195f5ct', 'e30:1ovoC3:cxTAOLfFw88J3gUgSpV-obMvXC-POR5ZLflndcyykrA', '2022-12-01 23:21:15.160677'),
('blq6r2taecn32q3zvvfrrl0ogq5883ra', '.eJxVjMsOwiAQRf-FtSFAebp07zeQgRmkaiAp7cr479qkC93ec859sQjbWuM2aIkzsjNT7PS7JcgPajvAO7Rb57m3dZkT3xV-0MGvHel5Ody_gwqjfmunsxDokjZIoCcqTmIyPmgZJCmfQExopA3KZ6utKT4YXSSZooJNIDN7fwDYdjeA:1ow2HM:l4jPyBpUHwggI4QIuHfRsQUMl5Y2lKj4PTjCeLKP1FM', '2022-12-02 14:23:40.434984'),
('ge4e11bq1xgbxw67u5030ig1qusa388y', 'e30:1ovoEQ:QAsfEaaoG2YM7tyhZ3geh82YaNLAbpw-SR5I8cScR7Q', '2022-12-01 23:23:42.156475'),
('nxsbeuda9lduotpttsxu1t7lmmo70j7c', '.eJxVjMsOwiAQRf-FtSFAebp07zeQgRmkaiAp7cr479qkC93ec859sQjbWuM2aIkzsjNT7PS7JcgPajvAO7Rb57m3dZkT3xV-0MGvHel5Ody_gwqjfmunsxDokjZIoCcqTmIyPmgZJCmfQExopA3KZ6utKT4YXSSZooJNIDN7fwDYdjeA:1ow1qQ:Zp8xxb0r32RDSAHQq5qDqvxb4DNgMeePuqZwjmF7pYw', '2022-12-02 13:55:50.060812'),
('wviw4jadfwhrxgiw7rmj9wf9bw0znnzw', 'e30:1ovoDC:sJms3Q5UEyaxKARYeVnl9bUbt7hkRSYJa6JZ1iE0jZU', '2022-12-01 23:22:26.115382');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Id_orders` int(11) NOT NULL,
  `Id_P_id` int(11) NOT NULL,
  `qte` int(11) NOT NULL,
  `Su_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `Id_ord` int(11) NOT NULL,
  `Id_P` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `Id_P` int(11) NOT NULL,
  `Product` varchar(250) DEFAULT NULL,
  `Qte` int(11) DEFAULT NULL,
  `B_Price` float DEFAULT NULL,
  `S_price` float DEFAULT NULL,
  `codebar` varchar(80) DEFAULT NULL,
  `datetimes` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`Id_P`, `Product`, `Qte`, `B_Price`, `S_price`, `codebar`, `datetimes`) VALUES
(3, '4D tapi tp 2008 plus', 6, 270, 300, '8697414513046', '2022-11-19 14:49:43'),
(4, '4D tapi p3 2016 plus', 8, 270, 300, '8697414512728', '2022-11-19 14:52:58'),
(5, '4D tapi DUSTER 2010-17', 4, 270, 300, '8697414513312', '2022-11-19 14:54:13'),
(6, '4D tapi BRLLENGO 2017 PLUS', 5, 270, 300, '8697414512230', '2022-11-19 14:55:15'),
(7, '4D tapi QASHQAI 2014-2021', 4, 270, 300, '8697414513435', '2022-11-19 14:56:16'),
(8, '4D FOCUS 4 2019', 2, 270, 300, '8697414512018', '2022-11-19 14:57:07'),
(9, '4D TAPI I20 2020+', 2, 270, 300, '8697414512797', '2022-11-19 14:57:38'),
(10, '4D TAPI CADDY 2010-2020', 5, 270, 300, '8697414513558', '2022-11-19 14:58:36'),
(11, '4D TAPI C-HR 2016-2019', 2, 270, 300, '8697414512513', '2022-11-19 14:59:20'),
(12, 'DUSTER 4X4 4X2 2018+', 2, 270, 300, '8697414512278', '2022-11-19 15:00:16'),
(13, '4D TAPI FIESTA 2018+', 3, 270, 300, '8697414512971', '2022-11-19 15:01:00'),
(14, '4D TAPI BIPPER 2007+', 3, 270, 300, '8697414513107', '2022-11-19 15:02:01'),
(15, '4D TAPI I20 2015-2020', 3, 270, 300, '8697414513381', '2022-11-19 15:02:58'),
(16, '4D TAPI BERLINGO 2008-18', 3, 270, 300, '8697414513039', '2022-11-19 15:03:47'),
(17, '4D TAPI T-CROSS 2019', 2, 270, 300, '8697414512872', '2022-11-19 15:04:31'),
(18, 'POLO 2017+', 7, 270, 300, '8697414513732', '2022-11-19 15:05:13'),
(19, '4D TAPI KADJAR 2015+', 3, 270, 300, '8697414513442', '2022-11-19 15:06:18'),
(20, '4D TAPI SCALA 2020+', 1, 270, 300, '8697414512100', '2022-11-19 15:06:59'),
(21, '4D TAPI Q2 2015+', 1, 270, 300, '8697414512216', '2022-11-19 15:07:35'),
(22, '4D TAPI Q3 2018+', 1, 270, 300, '8697414512902', '2022-11-19 15:08:18'),
(23, '4D TAPI GOLF 8 TSI', 2, 270, 300, '8697414512438', '2022-11-19 15:09:19'),
(24, 'GOLF 8 eTSI 2021+', 2, 270, 300, '8697414512544', '2022-11-19 15:10:04'),
(25, 'LEON 4 eTSI 2021+', 2, 270, 300, '8697414512766', '2022-11-19 15:14:56'),
(26, 'SANDERO III 2021+', 2, 270, 300, '8697414512469', '2022-11-19 15:16:12'),
(27, 'SANDERO II 2013-20', 3, 270, 300, '8697414512292', '2022-11-19 15:17:27'),
(28, 'TALIANT 2021+', 3, 270, 300, '8697414512858', '2022-11-19 15:17:59'),
(29, 'CLIO 5 2019+', 2, 270, 300, '8697414512087', '2022-11-19 15:19:27'),
(30, '4D TAPI 2008 2019+', 1, 270, 300, '8697414512155', '2022-11-19 15:20:20'),
(31, '3008 2016+', 1, 270, 300, '8697414513978', '2022-11-19 15:21:06'),
(32, 'OCTACIA 2013-2020', 1, 270, 300, '8697414513145', '2022-11-19 15:22:37'),
(33, 'C3 AIRCROSS 2018+', 1, 270, 300, '8697414512179', '2022-11-19 15:23:28'),
(34, 'CLIO 4 2012-1019', 4, 270, 300, '8697414513299', '2022-11-19 15:24:47'),
(35, 'TUCSON 2016-2020', 2, 270, 300, '8697414513336', '2022-11-19 15:25:37'),
(36, 'KUGA 2020-2021', 3, 360, 400, '7697453512643', '2022-11-19 15:26:28'),
(37, 'C-HR 2020+', 1, 270, 300, '8697414512841', '2022-11-19 15:28:41'),
(38, 'DOKKER 2012+', 4, 270, 300, '8697414512599', '2022-11-19 15:30:16'),
(39, 'EGEA HB /SW 2016+', 2, 270, 300, '8697414512407', '2022-11-19 15:34:04'),
(40, 'IX35 2010-2015', 1, 270, 300, '8697414513459', '2022-11-19 15:36:12'),
(41, 'MEGANE 3 2009-2015', 1, 270, 300, '8697414513275', '2022-11-19 15:36:55'),
(42, 'MEGANE IV 2016+', 1, 270, 300, '8697414513497', '2022-11-19 15:37:26'),
(43, 'C4 III HB 2021+', 1, 270, 300, '8697414512445', '2022-11-19 15:38:20'),
(44, 'GOLF 7 2013-2020', 1, 270, 300, '8697414513121', '2022-11-19 15:39:00'),
(45, 'IBIZA 5 2017+', 1, 270, 300, '8697414513701', '2022-11-19 15:39:31'),
(46, '4D TAPI OCTAVIA 2013-2020', 1, 270, 300, '8697414513145', '2022-11-19 15:42:05'),
(47, 'PIONEER 650WMax TS-A6980F', 6, 600, 620, '884938409896', '2022-11-19 15:43:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id_B`),
  ADD KEY `Id_order` (`Id_order`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Id_orders`),
  ADD KEY `Id_P_id` (`Id_P_id`) USING BTREE;

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`Id_ord`),
  ADD KEY `Id_P` (`Id_P`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`Id_P`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `id_B` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `Id_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `Id_ord` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `Id_P` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`Id_order`) REFERENCES `order` (`Id_orders`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`Id_P_id`) REFERENCES `stock` (`Id_P`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`Id_P`) REFERENCES `stock` (`Id_P`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
