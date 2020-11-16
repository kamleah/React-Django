-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 08:23 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user registraton', 7, 'add_userregistraton'),
(26, 'Can change user registraton', 7, 'change_userregistraton'),
(27, 'Can delete user registraton', 7, 'delete_userregistraton'),
(28, 'Can view user registraton', 7, 'view_userregistraton'),
(29, 'Can add book', 8, 'add_book'),
(30, 'Can change book', 8, 'change_book'),
(31, 'Can delete book', 8, 'delete_book'),
(32, 'Can view book', 8, 'view_book'),
(33, 'Can add add products', 9, 'add_addproducts'),
(34, 'Can change add products', 9, 'change_addproducts'),
(35, 'Can delete add products', 9, 'delete_addproducts'),
(36, 'Can view add products', 9, 'view_addproducts'),
(37, 'Can add add cart', 10, 'add_addcart'),
(38, 'Can change add cart', 10, 'change_addcart'),
(39, 'Can delete add cart', 10, 'delete_addcart'),
(40, 'Can view add cart', 10, 'view_addcart'),
(41, 'Can add marks model', 11, 'add_marksmodel'),
(42, 'Can change marks model', 11, 'change_marksmodel'),
(43, 'Can delete marks model', 11, 'delete_marksmodel'),
(44, 'Can view marks model', 11, 'view_marksmodel'),
(45, 'Can add studentmodel', 12, 'add_studentmodel'),
(46, 'Can change studentmodel', 12, 'change_studentmodel'),
(47, 'Can delete studentmodel', 12, 'delete_studentmodel'),
(48, 'Can view studentmodel', 12, 'view_studentmodel'),
(49, 'Can add Token', 13, 'add_token'),
(50, 'Can change Token', 13, 'change_token'),
(51, 'Can delete Token', 13, 'delete_token'),
(52, 'Can view Token', 13, 'view_token'),
(53, 'Can add token', 14, 'add_tokenproxy'),
(54, 'Can change token', 14, 'change_tokenproxy'),
(55, 'Can delete token', 14, 'delete_tokenproxy'),
(56, 'Can view token', 14, 'view_tokenproxy'),
(57, 'Can add user1', 15, 'add_user1'),
(58, 'Can change user1', 15, 'change_user1'),
(59, 'Can delete user1', 15, 'delete_user1'),
(60, 'Can view user1', 15, 'view_user1'),
(61, 'Can add auth token', 16, 'add_authtoken'),
(62, 'Can change auth token', 16, 'change_authtoken'),
(63, 'Can delete auth token', 16, 'delete_authtoken'),
(64, 'Can view auth token', 16, 'view_authtoken');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$xOAm9KVkBSBZ$3HK8S7BRWAvfQfY7bTJ3pceXQ4k/wEFpbfnaq1W/PLc=', '2020-11-13 10:05:49.553126', 1, 'kamlesh', '', '', 'kamleshgupta594@gmail.com', 1, 1, '2020-11-10 08:30:31.813857'),
(5, 'pbkdf2_sha256$180000$Hu39C2ncrMkO$t5xtS4W0OIYeK4sdqCYMJPUEjAPnlzeQqKuvfL1Ezvs=', NULL, 0, 'seeta', 'seeta', 'chauhan', 'seeta@gmail.com', 0, 1, '2020-11-11 05:31:23.054914'),
(9, 'rajan', NULL, 0, 'rajan', 'rajan', 'rajan', 'rajan@gmail.com', 0, 1, '2020-11-11 05:46:32.081659'),
(10, 'pbkdf2_sha256$180000$jcPtGiDeP1fK$AOr0/IbduNZVxjQ+QNl7OlpBIzUxs9Lxv6+E/ysxCOs=', NULL, 0, 'kamal', '', '', 'kamal@gmail.com', 0, 1, '2020-11-11 09:13:05.856586'),
(11, 'pbkdf2_sha256$180000$UVXyou0v2grZ$SROih8yd0Jgzg4WjfWHat5P/UfPDKtsgcAhP7ChSNc4=', NULL, 0, 'kalyan', '', '', 'kalyan@gmail.com', 0, 1, '2020-11-11 09:14:28.827246'),
(12, 'pbkdf2_sha256$180000$FfGUEGaEntkH$Pl1WIWQMyI4sBJ6LTpc6d/L2Djd93YEhNPiM+plmbWA=', '2020-11-11 10:10:38.928674', 0, 'kamleshgupta', '', '', 'kamlesh@g.com', 0, 1, '2020-11-11 09:17:04.198139');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(11) NOT NULL,
  `shopID` int(11) NOT NULL,
  `productName` text NOT NULL,
  `productID` int(11) NOT NULL,
  `productImage` text NOT NULL,
  `productPrice` int(11) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `shopID`, `productName`, `productID`, `productImage`, `productPrice`, `quantity`, `price`) VALUES
(49, 1, 'Dell Laptop', 2, '/media/productImg/dell.jpg', 52000, 12, 624000);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(10, 'api', 'addcart'),
(9, 'api', 'addproducts'),
(8, 'api', 'book'),
(11, 'api', 'marksmodel'),
(12, 'api', 'studentmodel'),
(15, 'api', 'user1'),
(7, 'api', 'userregistraton'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(13, 'authtoken', 'token'),
(14, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
(16, 'knox', 'authtoken'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-10-25 03:42:41.176839'),
(2, 'auth', '0001_initial', '2020-10-25 03:42:45.626696'),
(3, 'admin', '0001_initial', '2020-10-25 03:43:08.379981'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-10-25 03:43:14.146907'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-10-25 03:43:14.203030'),
(6, 'api', '0001_initial', '2020-10-25 03:43:14.726877'),
(7, 'contenttypes', '0002_remove_content_type_name', '2020-10-25 03:43:16.438056'),
(8, 'auth', '0002_alter_permission_name_max_length', '2020-10-25 03:43:16.790331'),
(9, 'auth', '0003_alter_user_email_max_length', '2020-10-25 03:43:17.196318'),
(10, 'auth', '0004_alter_user_username_opts', '2020-10-25 03:43:17.292308'),
(11, 'auth', '0005_alter_user_last_login_null', '2020-10-25 03:43:18.568977'),
(12, 'auth', '0006_require_contenttypes_0002', '2020-10-25 03:43:18.664971'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2020-10-25 03:43:18.800963'),
(14, 'auth', '0008_alter_user_username_max_length', '2020-10-25 03:43:19.000941'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2020-10-25 03:43:19.440904'),
(16, 'auth', '0010_alter_group_name_max_length', '2020-10-25 03:43:19.720887'),
(17, 'auth', '0011_update_proxy_permissions', '2020-10-25 03:43:19.816895'),
(18, 'sessions', '0001_initial', '2020-10-25 03:43:20.496815'),
(19, 'api', '0002_book', '2020-10-25 07:55:26.735627'),
(20, 'api', '0003_remove_book_title', '2020-10-27 09:39:30.100736'),
(21, 'api', '0002_addproducts', '2020-10-31 04:49:46.168602'),
(22, 'api', '0003_addcart', '2020-11-02 04:53:53.435241'),
(23, 'api', '0002_marksmodel_studentmodel', '2020-11-02 09:07:03.297881'),
(24, 'authtoken', '0001_initial', '2020-11-10 06:19:54.754279'),
(25, 'authtoken', '0002_auto_20160226_1747', '2020-11-10 06:19:57.144916'),
(26, 'authtoken', '0003_tokenproxy', '2020-11-10 06:19:57.191790'),
(27, 'knox', '0001_initial', '2020-11-11 09:13:30.198795'),
(28, 'knox', '0002_auto_20150916_1425', '2020-11-11 09:13:32.030245'),
(29, 'knox', '0003_auto_20150916_1526', '2020-11-11 09:13:33.208836'),
(30, 'knox', '0004_authtoken_expires', '2020-11-11 09:13:33.417716'),
(31, 'knox', '0005_authtoken_token_key', '2020-11-11 09:13:33.634619'),
(32, 'knox', '0006_auto_20160818_0932', '2020-11-11 09:13:36.209677'),
(33, 'knox', '0007_auto_20190111_0542', '2020-11-11 09:13:36.410563');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0i1irzw97neen7obe1diovoy5m59ot1i', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 10:04:30.323794'),
('0ps3v7cqau2mjkoisuq2v9w9zzr1x6dj', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:25:14.447959'),
('16dk0kfxlqbk1si13ga653n5vocbgtih', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:55:48.852810'),
('1qslnt0ffgcrjn2kfi5w9jaxw8ou3qao', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:08:41.238840'),
('1uolru80m0rn3zomv2peffkklg05bez7', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 10:04:31.002006'),
('2azjogx30o4fngacll7hb0qr2hjispam', 'YjhjMGU2YmRjZjljMjkxNzJkMTdlNWIyMTk4NGZkZjBhZjJhMmIxMDp7fQ==', '2020-11-27 08:45:16.896863'),
('44v8fy79kfibji0v2zreqip0v9dwgnah', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:57:47.767638'),
('47ggo2c4mprxl7w2r6xl2jrs73lsp85g', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:41:00.441628'),
('51n83cp5i8h8ah8a8ak9q11bw065c7pz', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:48:00.830382'),
('57a0ffwhj3w581jjzwwupi3fxfycxcoa', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:14:37.278118'),
('606cgsuu5oc6pkg2u9n0t68snip5v3vw', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:40:40.844451'),
('68px8ysyvglnx924uq3gnbe0rtdpmci0', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:26:12.690672'),
('6h7mdkwug43exx7i33lermhne39eowyg', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:59:31.536724'),
('73ws3ts0dkkqm1wf34y1wfnrfxee07q0', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:36:47.124211'),
('7am1yt4w17hqm81pseczkrm16wa5a916', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:25:37.178798'),
('7umhvwp07fd3xo3bquyivk5kyzjcaotz', 'Y2I1MTJhZjg5MTAwOTQ5OGEwZDhmMDljNjkxNjdlMjA5MDQxNzQ4Yzp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDZhNDljNGMwNDJlOGVkYWMyNDIyMjQzZjc4MmRhMDgwNTBlNjE0NyJ9', '2020-11-25 10:10:39.131558'),
('8o6kzqp8p71zit1m28tu85oc3cqa52r9', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:08:20.153909'),
('8v6uz41sgpdwamv8fru8zs1iddi99l8m', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 11:11:08.111127'),
('91tnppbnff5pitmyte2vkwecn6b4ymnp', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:59:21.659487'),
('967f18yod9l3ax0t8f21yr0qojxztnka', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:28:43.335020'),
('9edbpv16o6bj6kiecui0g85a4h91zsch', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:37:48.989359'),
('9xb42bd4xnabgayz37hs20kvz978r78q', 'Y2I1MTJhZjg5MTAwOTQ5OGEwZDhmMDljNjkxNjdlMjA5MDQxNzQ4Yzp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDZhNDljNGMwNDJlOGVkYWMyNDIyMjQzZjc4MmRhMDgwNTBlNjE0NyJ9', '2020-11-25 09:39:18.309188'),
('amg126biyhtkzg9qgh3lc5zqfc7swgjh', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:46:58.559011'),
('aqjvtaubnicj3fvn01t3hd95eguewuqn', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:48:24.905340'),
('ax4iybsnahjgnmyyrkq20lqjwnhl6ksa', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 10:00:58.809040'),
('b2nk1oppgny4i3kdi14mkydvsbi01lm4', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:39:01.293092'),
('bqzlcerrknvp5sqgwkbd7ta4i27aqfyc', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:11:21.469762'),
('c573zllofduk385dw2jk9vdituf3u3z9', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:14:29.694833'),
('cg84toghdnkecb5v1gv5ovpcwy2emu8e', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:32:44.865903'),
('cs1qvk0d5eojs2q1c5xdtnqamm2bdsu4', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:28:42.017394'),
('dblem83hs5ffwba48wasksgn9f6laf1p', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:24:00.148602'),
('dd51psz9do89fcqq3a1o34a80y6kvmfw', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:12:51.138005'),
('e268nq3polqm0t1xldf0l9cn1yvdcz7w', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:59:11.822852'),
('efjyvjf8k8438e949hubwxm8s50fgvju', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 10:04:26.538327'),
('et0psusw7i3nky722k0ze69qo5faoq6y', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:51:32.841955'),
('fh3hjvz2zecfnkljq8oq94bh6et4sc00', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 11:02:02.057820'),
('fthihlwjdi6c29jrspyxvu7v7qzilhjv', 'YjhjMGU2YmRjZjljMjkxNzJkMTdlNWIyMTk4NGZkZjBhZjJhMmIxMDp7fQ==', '2020-11-27 08:49:23.310069'),
('glvtupfu6o4a71wm9wdg8kgpy7c0xsog', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:10:54.203269'),
('gskel76zrlnc2get7yiztyt36jrw6e7s', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:00:58.608330'),
('h0kc7e9mq3ac88rh8hkcs5z1ayuyw1aq', 'Y2I1MTJhZjg5MTAwOTQ5OGEwZDhmMDljNjkxNjdlMjA5MDQxNzQ4Yzp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDZhNDljNGMwNDJlOGVkYWMyNDIyMjQzZjc4MmRhMDgwNTBlNjE0NyJ9', '2020-11-25 09:38:29.731794'),
('hiashkxtwohru8c04jginjrws1qjn4pr', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:26:02.591460'),
('hkclpnoh0cmwpy7rtugorsrkv4dk39hl', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 10:01:30.412386'),
('hyw2rf4k2lctg5wpau7va5h82ljwo210', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 11:08:19.783477'),
('i2itvumm2392nbzpedvxtdlrx87yxxjs', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:49:59.354812'),
('i6zosxucw0yw8catzxgcsc5q2ii2b2am', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 11:00:28.919765'),
('i7tgku2102xfhw14am94o6qo9qs7eh01', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:47:04.291586'),
('j33k4fpvrbja0et63ynr2wlmh5ybfofs', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 10:05:49.631128'),
('jpbdchmfncpm6ium0vfz94584r22qnvj', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:53:00.691652'),
('ju8srazpk71d9392uidtiblota0cilml', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:51:36.271656'),
('jwujpwg5ut80fe7v4l5zdtw0lttfeipr', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:14:43.332169'),
('jxhxwlktam1uwg5vdxus6rg8u5itgsm9', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:59:23.749494'),
('k3i5uxv5m3lalfsdt4d17lutw1q6r1mg', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:09:24.062824'),
('k5wrril55s5o96olv4i5n5fo14dczgqx', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:02:56.250319'),
('kceoemwqkxr3rg8x5nbxhjue8s9zgn3g', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:22:42.147760'),
('ke05w8yobm8zckcdhkwk0u335ww3vf3z', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:10:07.553941'),
('kmsj3sd1wnzpxjyy0sndzpogh64ur9cd', 'YjhjMGU2YmRjZjljMjkxNzJkMTdlNWIyMTk4NGZkZjBhZjJhMmIxMDp7fQ==', '2020-11-27 08:46:46.430027'),
('krygn8f1ohttwdy2wp23n33pcer7446i', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:57:31.442277'),
('l2zvo4jerq9cdl1hg2uloccwyog8pi1n', 'Y2I1MTJhZjg5MTAwOTQ5OGEwZDhmMDljNjkxNjdlMjA5MDQxNzQ4Yzp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDZhNDljNGMwNDJlOGVkYWMyNDIyMjQzZjc4MmRhMDgwNTBlNjE0NyJ9', '2020-11-25 09:37:35.499837'),
('l4ufoqn7m0iu1fuziizgad1gmibd4cyx', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:37:47.132408'),
('l9q7nyxy02x32u5hkzldmofv3dxobyga', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:28:37.193772'),
('ldbt5ir5dqrqtss6moor7xlbpl2kcp1f', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:26:56.482025'),
('leky1bbnskt7i6fae242l37eqjs1z4dj', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:37:45.930088'),
('lvwbvqfauax02b3kqew025kiefjzqj88', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:57:11.538346'),
('lzqisq46ffh9k5xgh5zc6rqp31nl9er2', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 10:04:29.457419'),
('naw3tkftr6fwv3mawpsqzjc3mvns72dp', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:24:32.937893'),
('nn4p1kie3ujus8x4rkptn0kn77p3c30n', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:28:45.334942'),
('nz1ju3ovabf6xd4gdugnh5dat1ozxonf', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:23:24.046328'),
('ob8qnivo3llc3d8qayt6xiwywr7wiz7u', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:28:48.364994'),
('p3k261qxpja10ehu1o4xqq6mrywjfixz', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:40:39.029359'),
('p5wj1yoq3crjdrumbr10pfjosw1wat79', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:14:36.354839'),
('pnb7ynf0z08qhj1hrdpzqtf3dgs5hfl7', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:04:26.037035'),
('pviaqcnep42p6qmr6yfgvbucf1j78cre', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 10:01:01.877396'),
('qej358vziwf85a7phzmind1wdqcbvfa7', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:37:48.552604'),
('ql0t61m3vwt76fnr75wk4l5z6401e5z6', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:17:45.022255'),
('qr1k7d3dps33z0uotxfklh44ocupx07j', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:40:06.841147'),
('rb14059jzpk0ugl2lhhtyjoky4hp8c8t', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:28:31.228074'),
('rcb1t83pfd05tzrif1m1t214bdfbhyzv', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:56:38.031310'),
('rq1rqh15lgt6kslx7oypx4uwpos4cg8c', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 10:02:11.796928'),
('s3zldfjaxs6jy9rb2xgb1hdiqtn5nlqt', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:01:13.599011'),
('s7lu0f30yf5tolnk9dovjrgijbg0uyx2', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:50:07.563255'),
('s7q9zharxezdz8qsrh3bqyicy5fedemw', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:26:14.322292'),
('sdm7j8fflxrhavau6grvol7ibf06tvmz', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:53:05.451227'),
('sw6uum5hhw39y6kgoxm6tk9gzhz4abfx', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:49:49.994068'),
('t1e77x3o51424kotbmz8boakdatwz7ai', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:05:30.571966'),
('t9cvcwewrboq8ey5znb70aou6pu7e382', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:59:23.776478'),
('t9qdplzlv5qbhjso2j56wmy6bwel7nc9', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:59:18.566248'),
('te5tgr0e2qx8x8amj4cezndk505ys28f', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:37:48.083870'),
('tj9kgwt4gutwlh0mw4b1uzg7il08br0v', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:54:37.725204'),
('tuid1ybbtqcviat31qkl6aumx0vohcoh', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:25:25.630602'),
('un7a8itri6s5f9g8vzwmlvo2klaliujy', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 10:12:50.521261'),
('vbnmi2xcxl3wv4aanq12oxka27e4ghlg', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:50:15.874285'),
('vmrkug9jllic2bcfhekiyrlm19dmyssj', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:04:32.033658'),
('w6nz3fypk25t3ijxxcagv5v2k23n342n', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:03:30.733805'),
('wjdug8c7fwp8r4nmcdnawsczpddigcu4', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 11:04:15.863992'),
('wu14fy89mq4x91brrhci9fvwutm4ycjy', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:27:14.123776'),
('wxgigar371y55t1wz7khviojbfrj07ul', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:58:41.079751'),
('wzadenh43c6w3omzshs6j3nogdzetqly', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:37:49.591018'),
('xh62vwbfv7srcg270x5omjtrb9h6x67b', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:07:48.217152'),
('xp0mkjgpm9dysvxky21mjxos2akonfai', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:53:20.351085'),
('ycilgrskssyc7psom8y76bj3o5uzx1wh', 'YjhjMGU2YmRjZjljMjkxNzJkMTdlNWIyMTk4NGZkZjBhZjJhMmIxMDp7fQ==', '2020-11-27 08:49:32.660621'),
('yr036wfqp0wv0a24re9ga5ftz80vd6tz', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 08:40:37.130108'),
('yxppetlgfznv3rkzy70darkzc8nrhifv', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:59:20.218858'),
('zo9utca090zsrz4d65njrba3meuoa0qe', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-27 09:59:22.751120'),
('zzybro60r6o6tjdfqzgnicd6i4gnm2vi', 'NjVhZjQ3MzRiZjNkOWNhYzA1MjdmM2EwMzUzZDI2YjkwNTM5NWQyMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWI0Y2E2Nzg5MzVlM2Q2ZTBkZDc3MTE2MDk3ZGFhMWZkNTI4M2E3In0=', '2020-11-25 11:07:36.402616');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `address` text NOT NULL,
  `covers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `title`, `address`, `covers`) VALUES
(1, 'Shubhaam Digital Photo Studio', 'Vitthal Nagar Near Ratan Talkies', 'covers/Screenshot_2019-06-12-23-24-35-49_V2rN985.png'),
(2, 'GuptaJI Food Corner', 'Bhandari Compound, OPP: National Milk Center', 'covers/Screenshot_2020-07-05-15-34-02-61.png'),
(3, 'National Milk Center', 'Bhandari Compound, Near Shree Ram Hotel', 'covers/IMG-20200705-WA0005.jpg'),
(4, 'Badshah Milk Center', 'Bhandari Compound, OPP: Namtional Milk Center', 'covers/IMG-20200705-WA0004.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `knox_authtoken`
--

CREATE TABLE `knox_authtoken` (
  `digest` varchar(128) NOT NULL,
  `salt` varchar(16) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expiry` datetime(6) DEFAULT NULL,
  `token_key` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `knox_authtoken`
--

INSERT INTO `knox_authtoken` (`digest`, `salt`, `created`, `user_id`, `expiry`, `token_key`) VALUES
('08c32f4629d5a02a7a773e38bbfd8241c072b54a238367dec353cc6e571b692ae2612f25bab6ba5c9fc78bb63e5a25c336457e0a0db5fa12ee69b1bc8b7dd029', '7b23190ec3d1f43e', '2020-11-13 10:04:26.508344', 1, '2020-11-13 20:04:26.507344', '0d12bd80'),
('0a1fb57ac8bba0e555842daa3cfa69961342b32b2c482f375cb4e1037adaac4cafbe238879d2d45df464b722fda3a23df333f4b29909942f584e5e19f11f69c9', '081afeae9f0a8081', '2020-11-13 09:54:37.692054', 1, '2020-11-13 19:54:37.691050', '20170de3'),
('0d0139dbcc70725c89ceea0e54f631c6a4105c12365ee43d613f10c011269b198e976f868666f118eabfbfae8aa7694e3ff388f236c2dcaa59c8d251df015da9', 'fbb6a5d111436b71', '2020-11-13 08:25:25.470691', 1, '2020-11-13 18:25:25.469692', 'd9cb1d03'),
('0de912a8a65ae3981daadaf164aa80369cec6a90eb8008a4ef18bd3df18be5878aaa3df6b5b339beae34b544f9c71d6a0d53aa178974d4cf2f2958da139fdda3', '25f3d23dce499e30', '2020-11-11 09:14:29.400921', 11, '2020-11-11 19:14:29.399921', '3630dfe9'),
('0e051cacb6a2e2dfbf9b6ad7483b7d6ec99af224b87ba1e67103c1293335c92ee7222dd2c556c5b5090eb7b6ef178aa7596aa643215df48de806fddf30946401', '42aa32f5614a879d', '2020-11-13 09:46:58.509016', 1, '2020-11-13 19:46:58.508015', '8d88cc64'),
('116c3812c33776271cb534bf7e30e87a5642cd7fcd94acfcf38340807b228bc87c394e6176d0aa058ce283e85c61234a6d9aa8fce4676e26a848c89a3422de64', '85e452481ab26a54', '2020-11-13 08:37:48.509631', 1, '2020-11-13 18:37:48.509631', '65d0373e'),
('140a9103d90b58a741bf9939616cfeeeab993f6fc7c452cf3a55954e0a96f66eb0cbaa6c4ff3044e36d7066c8a34078867c9f516592467cc3e41d79942f2933b', 'd8035aad98182dd2', '2020-11-11 10:28:45.293966', 1, '2020-11-11 20:28:45.292965', 'c64313af'),
('1499ec5c74a6fd57eb51ad2d1460b29fd51436a86cd7cb75b4741f52f68669afc88eeca6d2f4c30f08f3d4f0afab28c2da558b7eb42aec909966a0549067c0c5', '9cd700915ffd328f', '2020-11-13 09:04:31.994681', 1, '2020-11-13 19:04:31.993681', '24ec7e0d'),
('14fe2c8d358e4e21e1c2cbb5cb0b660f59b03473551935d12f3d9739b27149cf63df54688b9759747f7a53b71cf31e253ad4173cf4b57e2e56e7791c61e5db6e', '75f3ab5fdadd224d', '2020-11-13 09:59:23.724508', 1, '2020-11-13 19:59:23.723509', '3de4bc4b'),
('15014873e1bc191eab6c05cb7c80d6292c12b9abb762f3da4a5d5aba33f3697305ab089d2081c80b348066d1f20abfc8916581523386bbaf228d0165b31b834b', '675c9b85ec2bdf3c', '2020-11-13 08:26:14.258328', 1, '2020-11-13 18:26:14.258328', '382efe44'),
('16c492cce6feb31175c050a71584b3b8efc162396239fca5b859c5989d36275339466740d1781ec987e42b79069e5ed2f46dcc5140b1fa5d254c9e18f44d3702', '2f44ec5095ac1fce', '2020-11-13 09:12:51.107022', 1, '2020-11-13 19:12:51.106022', 'ee1d23b0'),
('1b703f7feb6f5ce003320733cd1f09338b3ba77ae0a7c13a21c36ce67f2c63505b43f446134b564464fbf4e807b17bb1c360026791679dc66b77c00b32b47c01', '34b8c1e40a9eea58', '2020-11-11 09:23:34.060582', 12, '2020-11-11 19:23:34.060582', '5170ba3a'),
('1cb36586bc9596a0df05a51c0c064a83eb245638c18bf935b3c637fb435c9fb3a428a8f9b46d5849cb92efb826649a6a13ce84dafa5df0fcc4bd0bcb22a23451', 'e12a4acc6871fecc', '2020-11-11 09:38:29.503924', 12, '2020-11-11 19:38:29.502922', 'd8e582a0'),
('1ff58dd728fc7db64b4b46861c7311f6d8a471dc4b524c1e6025b325a52b14713ea18101d4d3fbcf7190b863d2fd294ea9df9a8d9c7bd84fc90ab2c85ad1cfef', '9e221f49b1696b63', '2020-11-13 08:48:24.803397', 1, '2020-11-13 18:48:24.803397', 'c7327f5e'),
('214ac833ce130e40088d1346bae7e6daaf1b9bb8207002560786864065e4633544614c25e08ae86489f12fee85f3b8811a6d7ff69ff58303e7e187be0a37a735', '344414dfc2036f60', '2020-11-13 09:51:32.826963', 1, '2020-11-13 19:51:32.825965', '56a59c5c'),
('22f4d464a9a159d6c48fbd057d1d8ac36baf355d470d24732868cc0d83ede44d88b835d0035f3f6e4d38925562ec1174cc06188e875506e6d54e4cad24216c17', 'ed48fae82a2a5cb2', '2020-11-13 08:40:37.087135', 1, '2020-11-13 18:40:37.087135', 'abc8a33b'),
('24b141cfed242d1a3974b3c21613aa4dbc05bd866128e9d1853845192828cce37e1cca71daaa3466ac4d9f1c995f5e977bf9dae7d53b45da90740c48ad6ea757', '7eb140d38e2fa23a', '2020-11-11 10:28:37.156792', 1, '2020-11-11 20:28:37.156792', '8cdf3281'),
('251c84956dd2e0bf147d573b94d20aa8463b117dfa17984a2a1e2a1371fbd89e33a566a6594ae99b3a103b7d0cb55e35d6b3a606c03b9e08efddad3d3e65c877', '3d255dff41b76cd5', '2020-11-11 11:07:36.344645', 1, '2020-11-11 21:07:36.344645', '4b2c84e8'),
('25545f49ee865812a8a0329a2da340185c38d8ca060768108980a84975b4a0f215a7ea40fff12cbc9a4fb0620aeeb10af1ccfde19926a8284aef19ea7e7eef7e', 'acd8e5c1dc94531b', '2020-11-13 09:04:26.023044', 1, '2020-11-13 19:04:26.022044', '707d03b5'),
('29d3d39942a6cc80885a92a5415a1a79de41a42f2aad5497e0f89f1150b4b4a63107fd25bdc53f639e920754214b631b8307476cc8441848fc0052e69c92e632', 'c4c3af17b081f1a3', '2020-11-13 09:01:13.565029', 1, '2020-11-13 19:01:13.564035', '83a1ff27'),
('29e1f6999b0e5f9f839a8a47c9f8facb1849d93690da7a42cb6e3847cfa7c10f53b06bd759423c0daa8a9ff85a387e43a690713fdf3a8a889e07c317c65873c6', 'b565a6a79f7ac865', '2020-11-13 08:37:49.547042', 1, '2020-11-13 18:37:49.547042', '6b90add8'),
('303ab8e405a814a79101ddc35207eac1b05882810cedcc78fb4066d297844646896ff27d344ab814225e1f06ccd484f50eac7ccd64d899fd18ae9335463ed0e5', '1abf84b47ce2e4df', '2020-11-13 08:50:07.535269', 1, '2020-11-13 18:50:07.534269', '31506909'),
('338fc1f755f0dff103c93024421292388778411e1b58ccd9fe37797b4ff5cb06836ca241496546b795b0430e5773717513f947baff52f06acab04cc323705b1a', '78699a3db5809788', '2020-11-11 09:39:18.218086', 12, '2020-11-11 19:39:18.218086', 'bf8e1bb2'),
('350f560c8104b3865c647b9012340b50065e04c16f6742f7a4ad84b1f57199df9c7beb4ff8bf204cb6eb00f926d05d1325b15922193a9280c1c9d3b9f1e16d77', '6b5a7ca800b74c7a', '2020-11-13 09:24:00.120618', 1, '2020-11-13 19:24:00.120618', '9ca27923'),
('352f9aef8a4b38d6282af37a00ea55119176316a3240ceea6ced1f7f6ad8cc9548d797f9c404038d4bdc0c42443dc4c379f2e0e592a2957de40bc68ff1ffa132', '35b0a1b1f150279b', '2020-11-13 10:02:11.768962', 1, '2020-11-13 20:02:11.768962', '8af93727'),
('3594de16bbb482f127f65ef8231f07b13fe090c853632337b5befbe5c6ce49c3a5df57f9d22d8a603dcca6a6c1cbff77c4378b12fb7423940d1785db3e107675', 'b785a063fb22519a', '2020-11-13 10:04:30.983034', 1, '2020-11-13 20:04:30.983034', 'a0ada09b'),
('367992b8007f156068e17351727ed416e7d140db91ea0feecc6a15c232dc40729c331a3afc612997c703a07ac92e6f86a631e3ed6a70a082bdf231aa5f04f75e', 'a90f0f9eed319ace', '2020-11-13 10:00:58.786072', 1, '2020-11-13 20:00:58.786072', '463bea96'),
('36c475c6fd465221ba323d6e32e3fe4e45c7ca40c1726180f339a0602731d773d3704a970771cd40aed18d7e216f3b3a5e87106a8e8fb18d0b26d293964808b9', 'ed9ff910e508731f', '2020-11-13 09:27:14.072265', 1, '2020-11-13 19:27:14.071265', 'cf711c5c'),
('3a2d29a2895c20b7c9ee2fb8300cb97005052f58cd53cd9d56a8fac3ca359655bb7c97178a69d924560803228c1abbb47750b20d31a663a6cd451d18cdf609fa', 'df064b4a3152da70', '2020-11-13 09:26:02.539485', 1, '2020-11-13 19:26:02.539485', '515bbae2'),
('3ed11874b3c74bc60cabe8b820dacc486c28653bb310b18320cc0bc3f34087888f008156c18bb60929d6ffdf9eb5fea42ee735ae34d2793786064ccbb35e830e', '8cf93bb9811eacd2', '2020-11-13 09:25:37.163807', 1, '2020-11-13 19:25:37.163807', 'd1e1d176'),
('3f85195988304aa7467a15336682b80dcd84defccc7a335d46256342806f7d5b3b87cdc3ed870903c0745cb9f32a0c4e10d67d9c1add074c8fa29bf44b780b34', 'dcdfe0e73c0d9a44', '2020-11-13 08:46:46.584979', 1, '2020-11-13 18:46:46.583978', '8bacd4dc'),
('4519dabeeb565f150c437299adf7e697d2e4d61488712395a14d87ad926d459e607f3f9b995d85fd4165f50f3cd8e9e47b1b30cf540bf4caaecbbd8c01bef000', '97da4ce0b6e42aa6', '2020-11-13 08:40:40.656558', 1, '2020-11-13 18:40:40.655557', '0c98685c'),
('4580c08dc5595144e17838dbcf6a6e3560cc780f42da269ba4b5d334960712342ed22330c23dc65c1d4626735a2ed948a4f02675de35c57a3032740a42e4535a', '49c75aac0725f2f9', '2020-11-13 09:24:32.914924', 1, '2020-11-13 19:24:32.913907', '03a5f760'),
('45e685b4d431a732bfbf1ad570502340856f2f2885746bfbb890acfe59a5bfbe05e33b767da08ea4c501ddcecb866a5f0b7b92dea2f9e62830c1afb4d9014671', 'eee623e3f5af836e', '2020-11-13 09:58:41.010696', 1, '2020-11-13 19:58:41.009697', '1f7576f3'),
('48ded6e866df419341d06688b55cb15e317924b403ba083acac0b7b253a673ab802d27653841046fa5cb75d933e3be1e0ae478e303fd17ce98f4bf4ccdcc9b27', '0d0b494a3b9c57a6', '2020-11-11 10:28:48.304028', 1, '2020-11-11 20:28:48.304028', 'a31b3c7d'),
('4bc6c3943e1e87a4ada76092d1ced9f7ecfe5e61c7b004db2447e03924c7e0e4d75f287c10c597d4e638d6e2e2332ad6a7e13ad2b2319476400247d7013d4074', '90c7513f06041e51', '2020-11-13 09:55:48.827823', 1, '2020-11-13 19:55:48.826824', 'f5bc5491'),
('4d1c44ba80365ebb98a762cbc9de8049984faaf01e4ef5373d42767eb4a9d5ec8cb9f1ad7890638447d44e30d14d2dacee6b829e0a26cf71058873b84fb04765', 'd5620907a0405f11', '2020-11-13 10:04:30.290395', 1, '2020-11-13 20:04:30.290395', '38c26dc6'),
('4d247c2e2c148218b774ffc44a6796af11bccd51436e8bbae12b6c61a35e9107458a799eca65b8c2c88c748e5235bc9a746a204d0a6a820a63662f091a70b7dd', 'bd304ae00ff809bb', '2020-11-13 08:39:01.007254', 1, '2020-11-13 18:39:01.007254', '60a75d81'),
('4dd7d017e03fd5717001f91ede858837efcd72a38d55da8dda6352f4f7b4649f7d08d5eadd0bab721609ed0ae10ef7e25c252642d2f98bccb87fb189e6928bc6', '0c462c73e701b692', '2020-11-13 08:26:12.463800', 1, '2020-11-13 18:26:12.463800', '7b3eaeea'),
('4dde1bf7003b14d684fcf9f28b7a3b37c72245391d87425b79ef9af27934f9d1e73aea0a45fd47c204c1900df1d71be82693773513261162d5041a8e990df450', '0248ccf7ec4f1339', '2020-11-13 08:36:47.084233', 1, '2020-11-13 18:36:47.083232', 'fa66a1de'),
('52524edbe994cfa3d581c78ccd4c2f1f6525bd2de0f501b35cf38baefccce980da3494d6f0dc6b966825270ac1c37354f806736b4db0defa03ce6098fea59008', 'b88e105248eea040', '2020-11-13 09:48:00.800372', 1, '2020-11-13 19:48:00.799373', '45555f24'),
('54e0f3d4b2175e8f814dae4b0958cba29b71bcb487c22c8804f6986fb6996b3ea4b2139d22b0e5ec51cb461f36699fe1b1797984a2df70cb0e719f4147b64c10', '28becc2ca8710e8e', '2020-11-13 09:05:30.498009', 1, '2020-11-13 19:05:30.498009', '593db8f4'),
('54f7b99368e6000f460d06ddc56462b2961c1dec95cd6a1a9831bd096a1ec4a67d2a33335fc15824791fe33f06aef7c5f3ffe257445242c0c92b1c04a060db6c', 'b69b406178d9b785', '2020-11-13 08:40:38.942083', 1, '2020-11-13 18:40:38.942083', 'd72d5152'),
('5646497e5411891cd46ccc934150d5d46a84451727b5a778385c12d1b275c56657b6b37308da0ecdbaf5a261677f7545b4b83d59658477efb332265408cb076e', 'f17a14f01f8cadd3', '2020-11-11 09:23:06.860208', 12, '2020-11-11 19:23:06.859767', '27fc2f8c'),
('5890f772b83ced5b7873c73ed950d35619c1915d99b5cb919eedf2365d1f7edeb3a78e26d3e10958a89fe70b2d02fc595a8c8d860402aad559f4fdbe67316e2d', 'f2c0ef06da90e09a', '2020-11-11 10:28:43.086159', 1, '2020-11-11 20:28:43.085160', '2b1ade3d'),
('5a48a467acb666ff3a51060cc49be380f4b6d2868fc5c36389a856a2f7f6a0b46985bdb57498b5ef937a0a985a57da13111d3933ee8420c03b2513e10a005cae', 'cc78e659bbd6834b', '2020-11-11 10:28:31.158604', 1, '2020-11-11 20:28:31.156604', 'e4dfec3e'),
('5b46ce942380b5c2eb7e96ba87fe6240c2d0497d0b5a96aa3bb89d7029bb62e9e5f519ec2864bbd8eb69bea38fa631f3283f2bfe6f531f8d9cdc483ea37b890a', 'ea564a235fc06c0b', '2020-11-13 09:49:49.946643', 1, '2020-11-13 19:49:49.945643', '789d8767'),
('5d5cb02d710bf5537a07f5daaa09ccc2ca67125adc0789f0b788ee4d3535cf42260c692c7f33d76c165d3be0f3f9157f2618c31085b4785f4f62e83796ba6c7b', '0949bc8548f011bf', '2020-11-13 09:14:29.675846', 1, '2020-11-13 19:14:29.674846', '99c1e4b5'),
('625bf23949310e18b6911e5d73e8cdf4c0b03d022592517c75830c81cb300ad25aa0e3439dca3b65fb0a97ce805a39601c6264461d635b8a0973a5e6fc6f1b45', '6d50c6b98d754cf4', '2020-11-11 10:53:04.939995', 1, '2020-11-11 20:53:04.938995', '218a9a62'),
('635d3c7beb7ebcfe81485f8e8dbb1dacd8d8b1a0d35ea087bdbb083ab8323b7b264d79abc9e45bc03feb6870b05d46d9e90eb99ec9d418f5fef39c51bf941727', 'f6606bcfb688fd51', '2020-11-13 08:37:45.828146', 1, '2020-11-13 18:37:45.827145', '328277ab'),
('65b4c5d1a1c52444930fd5c3b0dac37bd4d8d39de2cc802e998d703627c45258feca162cf503ffe52378778f3ecc0c890551faee69328138c4c7775dbe27e9b2', 'e2e91bffd4ca0cd9', '2020-11-13 09:02:56.215340', 1, '2020-11-13 19:02:56.215340', 'a309824a'),
('6ce3f653802ba4f8d5bc251dc5824ce592b27a88475817a100b0f71cb4a8bf900f819654748d9f0f1ac8bce1390e5991f55332b6c8162788199fdac6e1c80a61', '5bdfa8c0fa0d5249', '2020-11-13 09:59:20.201868', 1, '2020-11-13 19:59:20.201868', '8c2b66a0'),
('6f499d66d11d553ca728db048f95b2521e03ad5291ee0cbe2519a7dda98f339919737aa399f129541db7355d97636e6d1d803abcc0aa20a77c87b5327da9c932', '48d8f3d5360503a9', '2020-11-13 08:49:59.283852', 1, '2020-11-13 18:49:59.282851', 'c4862af3'),
('7b6f6e1a500fff86684bbcec892e9f5bd9840db1d45319fdeee746fd5c88426e7cb068c6f1a911aaad6dd33303ed9ec7cf83de8c0bfbfc2ea7ed287aad3c8bb4', '49760233c20a34d7', '2020-11-11 09:17:04.602912', 12, '2020-11-11 19:17:04.601910', 'c10518b6'),
('7cc4cee28a74c028a6148c4345e8af6e0852d97d536b0a206cf28c3cf2af75751a38cfa65b714d55600962ba9352736634401ab71d65a9c394d38e216b3984fb', '6f4dc42fc18401ca', '2020-11-11 10:10:07.448975', 1, '2020-11-11 20:10:07.447974', 'b8d9b70e'),
('80679d904ef2ab2e1dc04d51766f73e9c10a815cf588c834ecf9f832d2b3c9d3725b58e0cc765ce4cab0608f5e4fdfa38884863c73b5cd8442937b85ac976b9c', '326a5075eb5556b6', '2020-11-13 08:41:00.372667', 1, '2020-11-13 18:41:00.371667', '65e91648'),
('8088c0c65a1fabc89ceb6f55d05a48f643d3239a091433fd19a49e66f6055f19e91e88739ac4ee42b144a15b5a860dc39f560591468e3f9a9f12e899a7716d3d', 'cfe48bbaa533d39d', '2020-11-13 09:59:18.505288', 1, '2020-11-13 19:59:18.505288', '1b2f5a51'),
('84a796d54bd7c52a31dff767fdbe96e5759489c3cf09e87206d33430d4fad429ee6824a6dc683723ee313de95a36004588005dbf3ea90fb6f0883b74eb5ba911', 'b38845ddd2871a87', '2020-11-13 08:37:47.096427', 1, '2020-11-13 18:37:47.096427', '05ef00ba'),
('853e4928438ddb43bbd28c2c278849ceef78ab53618e321daafe3f4cd447511556f062b6a8114251852b40ecebba4654f46a50aeef34329be5b2658e472231a4', 'e7f6d329e6eb8086', '2020-11-13 09:26:56.459036', 1, '2020-11-13 19:26:56.459036', '18ef4efa'),
('8616333cbf741d6df97a2e4015880da9a21de2201ac13bec820be3aaa8169439903fd45cf1ada505c0a196e433f1a0205586c143929b561143418b05a44cda3c', '09946c093caf1770', '2020-11-13 09:59:31.505600', 1, '2020-11-13 19:59:31.504583', '2499a2c7'),
('8753949fb824d5c02345f0924186362a98b03fcc535c876362e5c5cb149ff178744c9b0f508d015febd8f2cfa9eeb762b02698967332c100946138ea8ec2d075', '247dc6fd1841ba14', '2020-11-13 08:51:36.243673', 1, '2020-11-13 18:51:36.243673', 'd688740c'),
('8c0a9ee0b7e3b43c3a8ce479de1e698beb3d95c37d899c01d813a82ce13b23b5ee6716e88194bfcb4247da6ccd1f7b7ef5a31984db0f4cf218a0233f9523ab3a', '7b6457caf3bf5d1d', '2020-11-13 09:03:30.707821', 1, '2020-11-13 19:03:30.707821', 'b822de64'),
('8d04dce9f718af242d7477d1a5157b3aceef22ad136e33e681ee0ef3301a4ec252a713de8dbcdf802a6b6dfb3100fa3e9b9015c692fb73e33459125ce32e2f63', 'd7101923a2614c04', '2020-11-13 09:10:54.169289', 1, '2020-11-13 19:10:54.169289', '3cf19360'),
('8dae88136fef08d24f35281aab42b550de7630e795f6805d2399b95afd606ce65c316dc7dc190a2909ed5346dd91be90be1967e2c36c16ce9a6bcfdaa28bef8c', '7d5befb3a97047d7', '2020-11-13 08:37:48.944383', 1, '2020-11-13 18:37:48.944383', 'e0635d50'),
('935147ab2ad28ba4a189e97ee9c0153a312fae2a9a5565c18f817591b6ddf88e2fe49b947e714b942e2ba20091140ce86bd19918705cab45385ee6a98acd1d69', '5bc3db47a23e8343', '2020-11-13 09:22:42.128771', 1, '2020-11-13 19:22:42.127770', '2fefb0b8'),
('9420ba0c87c50c044da1d2f42858bcd0c0fc8e0b59a59bf5d14d10e0b24488ad27e6a69fc2f22763f33373509376c8e71f2c3eb72b5660f4ed36f98306222ddc', '7df6be6c18e22996', '2020-11-11 10:28:41.782526', 1, '2020-11-11 20:28:41.781527', 'f4e2ca4c'),
('9768cdd34fb7751ebc54c709222da9d94888713fef7fcaf9c1b131caa273f43b6922f8f2495c43d065aa554179a935076da1332fd0f4455f579fcbeaef9ff230', 'e565bfcf1d50ffc9', '2020-11-13 09:53:20.310107', 1, '2020-11-13 19:53:20.310107', 'a8b0e827'),
('9a5ad84b961e4b344fe03e3c0044d37c556b10477ac1a32327eb9a88cdf5a81854f4f02c0dd3b392a742f3caaae6cfb2740febbb4699393449412147a2e28aae', 'f61c89a30d979ff0', '2020-11-13 10:04:29.439431', 1, '2020-11-13 20:04:29.439431', 'aee5e2f2'),
('9ad464c4c2de4d49db2b4e6665d6eb054d4d5ee4aa63a8cdaee4758cc985743323de3e1f4467b1ffa9ba2c67d39d770da4fc034df1de0b0ae295d594a749156e', '8ae1f03da03346bf', '2020-11-13 09:14:36.334822', 1, '2020-11-13 19:14:36.333823', 'a98ef7e0'),
('a2512685e323f42f403c1264ea7cc4bf4da69a6dd18320857efb6510acb21efcfca4a58d7b7240766fbfafc61a123e131cb17b56a4811fcd29cb0468f6bbe6d2', '58d5a9bab74c2fb4', '2020-11-13 09:23:23.982364', 1, '2020-11-13 19:23:23.982364', '5caa1726'),
('a4e4e8ac844ff993d1a2fb908406dd343d6826f503622b4442cdc0bb6ce077a3cbee19106d7311e6a0611680894a9da9437295702d87109a8d2e3d18721d255e', 'f3f1ea6f20dc2966', '2020-11-11 10:12:50.452301', 1, '2020-11-11 20:12:50.452301', 'd207fc30'),
('a89508ed0e3513f9b86339ae804d9978794e768bd04138b2453c6d988429db74e5f810d0811c60072da7e6d1d7b4e0071b0153feb955327c51174590d8467d5a', '3dba302d1f7da955', '2020-11-13 09:09:24.038835', 1, '2020-11-13 19:09:24.037835', '584afb7c'),
('aada4cef1d257b79f4fbb89b81c4e44eba6b12999c4ec667ed781680c986586dc016df85f2ce00bfc0bb002d9611acace28522c93de76d82191958894ddd0ec0', 'c20258e43f8e76a2', '2020-11-13 09:25:14.419043', 1, '2020-11-13 19:25:14.419043', '7714590e'),
('abb80c00a0d72af528333cbbe6b220657755d28847796639c3578feaaf368276cf00e8c44d26504bad9d4b1d9d8500a4cf9dc3e82004a90399419a1718f53b44', '805b6dcf68e0a92d', '2020-11-13 08:37:48.054887', 1, '2020-11-13 18:37:48.053886', 'b7182742'),
('acc05e0cb0fa640966737e7c99c130477e3ef065c7b0db0ce5d101d8d5fdb085a344c89a386502b18fdaaf4ef115f71898a0a01d9e80a7c76e24f627bd2b946c', '7c50bda7d27a8216', '2020-11-11 11:02:01.587087', 1, '2020-11-11 21:02:01.587087', '4e28f8bb'),
('ad035d6f318409ea226f5c6606180a87fe1042085536b8798e02e50fb1d2ef6c76276134bb5adbe555a67e50fa515d50605098c34d7f485d53a00f8596d1a7fd', 'e48b8eb6b60b11fb', '2020-11-11 09:55:17.348761', 1, '2020-11-11 19:55:17.347762', '5a933260'),
('b22190f648322359c563369b93ed97471a4ea98998cb60b20ee8b4cb2ebe26dd308f8fe37ac4972026adb62a1b95a3a01f94e0f7deed670c61e4e35d28a7df36', '7253296681f2b76c', '2020-11-13 08:53:00.665669', 1, '2020-11-13 18:53:00.664667', 'd7d95dad'),
('b984cad404993dbbcd9360964ca7af6c62e51c38970f525c8e0c00dd22fd5264b25e1d3d356bc8d7d91871f8d5286b46d19cff99ed3483d16dd1e5f63291c9e1', 'fd03610cf4813cb1', '2020-11-13 08:56:37.909198', 1, '2020-11-13 18:56:37.909198', '05af6f76'),
('bb2a53f41c84e1353f4684bb6ce0848afcb93b6d1d9b52de9c627b6de69cafc64d60de3ccdfa55487cbc1b1d7a200e8a778b23dfa6088ababb14d718dd86f9a3', '2fbe5a2d03505725', '2020-11-11 10:17:44.678061', 1, '2020-11-11 20:17:44.677060', '8a43a070'),
('be2d383c697b43ff6ee49c83d3a955938c4e73a67a7ae8a3d25c4777917ebc34442f1ecee3a3d63a3b21c819a778161d09624177361e165ee286932c66e724d0', '141e1c8533317a03', '2020-11-13 10:01:30.347424', 1, '2020-11-13 20:01:30.346424', '46ec9657'),
('bedc814804262b500d191fe1bfcaee0a2f3d86261e049dbbb4782d89d84070c077afe3fb1df6a61a1836fe713082c1ec486051484860702c737c1a287a268b01', 'f972562e5928562f', '2020-11-13 09:14:43.311183', 1, '2020-11-13 19:14:43.311183', '14a8284c'),
('c193b1c5312e3705193c9d0b8a751ffa1f52bdc83525db629e0728d71b52f51da2b4cacac2ddf031ef8daf87b754a8240b229ce81d5486b523855653c5b03d65', 'e9aa4cff563f0b5e', '2020-11-11 10:10:38.859732', 12, '2020-11-11 20:10:38.858711', '88e969df'),
('c2140d81ada80fc01ff8c0c6c514252dce3e337016ef72a65340ab279add792a8e9db1630fcbf2925ec2915fe3b7f20deb1118919ee82df64b614aea69a97351', '1f6da783b7c16c97', '2020-11-11 11:04:15.812020', 1, '2020-11-11 21:04:15.811033', 'd5d605c3'),
('c7ee24c2f142453a08bf3a1e9975d6c0857bc796381ce3df30dbc991df969cb1173fb08f3f31dac0f3e1e72371753adc90bcc52e8bac91a03b70a391932161cc', '9d1ba18a732c2091', '2020-11-13 09:00:58.592340', 1, '2020-11-13 19:00:58.591341', 'f3afcd42'),
('c8dc0f4c8566f63255355a3afc59436dd15715f0004bd07c9ed21712ef8cec2a6c18bc47a1e8e77b29e873fe43d930a9e5a408d4a63570f17fc4625c53fb96e2', '0dac8a1282b438e0', '2020-11-13 10:05:49.611139', 1, '2020-11-13 20:05:49.611139', '68d51353'),
('c908837adc5e7572f91b11c46118e648265888a29ed76465e5038859b983bf061d93f28534cb0a534df6ca46dc055f6c1f089b508d967f9fdbd58e25b3bd3fee', '8dc36c84d6c20188', '2020-11-13 09:07:48.199163', 1, '2020-11-13 19:07:48.199163', '31b8684d'),
('c94861244810180c3668ef309438b5499ad6a37490077aa1cc708cbb90da2cb9bef3690b64bfdbee76b0c7dcca4fd961ccd78b2e3207c66e0a96f873e1bfb7a3', '14279c68b55fe66b', '2020-11-13 08:57:11.511362', 1, '2020-11-13 18:57:11.510363', 'e86467b1'),
('cf7dcfdaf11e573f7f27f48cf3427fe83af431651f283ec00fc20e8ea5abbac24fce7c741cee734ed7a7ab42bc34a8d9b58e975ce442f3a28ae17ef66ca57182', 'ddd5d940cbfcd262', '2020-11-13 09:14:37.188170', 1, '2020-11-13 19:14:37.188170', '96d2fce7'),
('d8f1f7afb1a498be1d5effb91bf5c5911c306082858824e797927adafed1d143830004c47044719915ed881f4847a508029c2c4a0ee146cf41deb8771a9ec5c2', '08e6151ea6402d54', '2020-11-11 11:00:28.834812', 1, '2020-11-11 21:00:28.833812', '9303d285'),
('da632418bc4d7597d07f7e4c4c338a87b325b6894d8b98b5344e59ab86aca9398cda104940a2d9ee0046b3b698131d4083edbc7d262567ab9a8f956f641bac85', 'ca14f127d7e55745', '2020-11-13 09:47:04.265618', 1, '2020-11-13 19:47:04.265618', '75398261'),
('dc79f1e2446448bb5c996f3b65077e3fa839291f78d434b963284f99cbcb83b1c7abe946619bf94995b061fb0e260eda035e47a57d02e8acfe6f1b7be65411e2', '094c34185d23be8a', '2020-11-13 08:57:31.330295', 1, '2020-11-13 18:57:31.329295', 'e82d727c'),
('de7c4e198207d56f07f24e54ce1da093d69194dc68f3730534fa3e05be8cce453399e4fe638c33995ca3075f1e34085df68a3b836dce44ced0ef39055c1c5450', '5b4bb49b34b19115', '2020-11-13 08:40:06.795172', 1, '2020-11-13 18:40:06.794172', 'e29efb16'),
('e3e2ee3151f9fc14747b0e534a0f72f757fe6e363bd186897e3750680ca729fae1dfa8166a27ed8bc4e9a1f8755c19e59d6272b999266159fbdbcab1392f1623', 'c10ddc34ff030ed2', '2020-11-11 10:57:47.632715', 1, '2020-11-11 20:57:47.631716', '757d34cc'),
('e6259ed884f1fec6891a293dde1cf6fd27219da328f7a91d77cf654e022e872a14210f652af987e66849c7cfd03da37d069994ce63278bd33ad82d515f7cd94a', '8c9d0d30a84792b1', '2020-11-13 10:01:01.846130', 1, '2020-11-13 20:01:01.846130', 'bd560c62'),
('eaccc6b661dabdf9be4833536c92c63b3d3cd8d954cd5fc6481ce0cdc85475ed357bd4319404a2a08dca08441d880cd73df9a4214d28403ee54d1a7caa61e20a', 'd926fda3d9b0ede2', '2020-11-13 09:08:41.190866', 1, '2020-11-13 19:08:41.189866', 'da53703b'),
('ec929fd26385b1c99339824992986f1b8567c3906d273d0ac862cceccb3e6749513ecc6fa7d9446aa21226052be09469140d7fd297395e720c1be8003ed19de7', 'dd12544559853e06', '2020-11-11 10:59:11.771880', 1, '2020-11-11 20:59:11.770879', 'ab80745f'),
('edd7f6c3bb00335bab36fae06c637407739a02effd71a23c2b181f2146bc90ed1c3456efc176078e88aac5d6eb00192b0b055a61cad26f775c76ac53b93a7c96', '558222f32dc62b82', '2020-11-13 09:50:15.845283', 1, '2020-11-13 19:50:15.845283', 'dafd2adb'),
('edf97182db2173681278a8d4366ff394b878846ce5fa01abb1e7240925532fa1d74acf754bb3b4237e6e59d276b5dd21d6f3c755f2a7633ba2995f2acb24a927', '9560141fd7f8017f', '2020-11-13 09:59:22.728153', 1, '2020-11-13 19:59:22.728153', '6ad1c5eb'),
('ee945eadf8b8eaebb30ebb9f8d1ce91f1628b466417c4486d4d7655332b2839a141816faa16711ae60c3eedde85408698d2b613ecd7bac845ace2ca0a846a97c', '4f79bd3f4e3d03a8', '2020-11-11 11:08:19.732506', 1, '2020-11-11 21:08:19.731506', '21caa19a'),
('f84c9de16030ae6821a51d62d6118a5f41e340b30a10a0b3e58aaa5c3b92cb58ec59e7569d7a797cc2a986af5c3a614efc299a5848e65c45ced38026c131efed', 'f09025e9b923b7e6', '2020-11-11 09:56:02.163936', 1, '2020-11-11 19:56:02.163936', '28b82c72'),
('fa018ef4ec76b03cab4c1c18b76ac612e84534430355ce81b8ae444543d8d594db80d0217c485cb53e5277bcb7e515f49779d3effa966c73f90854fa4c16053b', 'e4d9c389abafcfc8', '2020-11-11 11:11:08.066153', 1, '2020-11-11 21:11:08.065153', 'b8c8c5c0'),
('fb1ce87babe29c357ca588149d71adb490b39dc5aff8e2c5b555b8a5a49c3b3c244df60999cc6bcb8ed5556420deddc51aa6c4b4f6efcda4b65057cde926bdc2', 'e1acff4b66040907', '2020-11-11 10:32:44.738947', 1, '2020-11-11 20:32:44.738947', 'd12e645f'),
('fc508362ddcd78aabc398e32fa1ffec0eeffb0fe3996331e79cc61949424215492dcdc3d44c50b4000f08efc6d4eef115b3968c07628bb2a86f86d7938f95515', '37ab597e80555357', '2020-11-13 09:08:20.126924', 1, '2020-11-13 19:08:20.125924', 'a1944b66'),
('fca9eb8ffd6d5b1ff4efdddcd1a6b33ed0fe7864f9eccb6d71fe0158d26906ac45593de6fad1d44bc029c18f1e983e8ac837aed91f557cc498d778de54f2ee1a', '6fddf2fbb92bdde2', '2020-11-13 09:59:23.739500', 1, '2020-11-13 19:59:23.738501', 'f9f1373d'),
('fccc031a9ca54ee287deaa122d9726b3a4daa0461a35c63c83ee9801a0137b9f34584d24ac3a68faf68e5e21ef26c737fb7a13125c58beeebf2a755e58352d2c', '02c7b5e5992290ad', '2020-11-11 10:11:21.425762', 1, '2020-11-11 20:11:21.424763', 'd4528da8'),
('fd80503340dd1fa9e59916c3294d540adbf5788fd66e2a7f5f721babeee761abdc39e4bf25ee69dbbe8070745bbd3f04b296502e5dc282ba6f5da9a1a7118d60', '61e9a20cee633d0e', '2020-11-13 09:59:21.635501', 1, '2020-11-13 19:59:21.635501', '4db89f2f'),
('ff38e87bcf828392dbc87335441c5e38fceb5c3506da1a463efd4b06280dfa460c1f700ad9427bd88280a9f992f070526ecf38cd400600e4c91d7a964e155eb7', '7c2f17062028af76', '2020-11-11 09:37:35.422880', 12, '2020-11-11 19:37:35.422880', 'bbd7c0dc');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `shopID` varchar(100) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productPrice` bigint(20) NOT NULL,
  `productImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `shopID`, `productName`, `productPrice`, `productImage`) VALUES
(1, ' 1', 'Lenovo Laptop', 45000, 'productImg/lenove.jpg'),
(2, '1', 'Dell Laptop', 52000, 'productImg/dell.jpg'),
(3, '1', 'HP', 45200, 'productImg/HP.jpg'),
(4, '1', 'asus', 45000, 'productImg/asus.jpg'),
(5, '1', 'Vivo', 14220, 'productImg/lenove_g3Y6WKg.jpg'),
(6, '2', 'Lenovo', 7854, 'productImg/lenove_xHJmnns.jpg'),
(7, '3', 'asus', 4785, 'productImg/asus_5L1spl3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`) VALUES
(8, 'kamlesh', 'kamlesh', 'kamlesh', 'kamlesh@gmail.com', 'kamlesh'),
(9, 'karan', 'karan', 'gupta', 'karan@gmail.com', 'karan');

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` text NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `UserFirstName` varchar(100) NOT NULL,
  `UserMiddleName` varchar(100) NOT NULL,
  `UserLastName` varchar(100) NOT NULL,
  `UserContactNo` varchar(100) NOT NULL,
  `UserAddress` varchar(250) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `UserPassword` varchar(100) NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `UserFirstName`, `UserMiddleName`, `UserLastName`, `UserContactNo`, `UserAddress`, `UserEmail`, `UserPassword`, `token`) VALUES
(1, 'Kamlesh', 'Shubhnarayan', 'Gupta', '7798319661', 'Bhiwandi', 'kamlesh@gmail.com', 'kamlesh', ''),
(2, 'Seeta', 'MunaiLal', 'Chauhan', '7385103303', 'Mansarover', 'sia@gmail.com', 'sia', ''),
(3, 'karan', 'kamlesh', 'gupta', '778956452', 'bhiwandi', 'karan@gmail.com', 'karan', ''),
(4, 'kalayan', 'bhiwandi', 'maharashtra', '4545', 'nhu', 'kalyan@gmail.coom', 'kamlyan', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`);

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
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knox_authtoken`
--
ALTER TABLE `knox_authtoken`
  ADD PRIMARY KEY (`digest`),
  ADD UNIQUE KEY `salt` (`salt`),
  ADD KEY `knox_authtoken_user_id_e5a5d899_fk_auth_user_id` (`user_id`),
  ADD KEY `knox_authtoken_token_key_8f4f7d47` (`token_key`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
-- Constraints for table `knox_authtoken`
--
ALTER TABLE `knox_authtoken`
  ADD CONSTRAINT `knox_authtoken_user_id_e5a5d899_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
