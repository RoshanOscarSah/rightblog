-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2020 at 11:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rightblog`
--

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
  `id` int(11) NOT NULL,
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
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add creator', 7, 'add_creator'),
(26, 'Can change creator', 7, 'change_creator'),
(27, 'Can delete creator', 7, 'delete_creator'),
(28, 'Can view creator', 7, 'view_creator'),
(29, 'Can add creators', 8, 'add_creators'),
(30, 'Can change creators', 8, 'change_creators'),
(31, 'Can delete creators', 8, 'delete_creators'),
(32, 'Can view creators', 8, 'view_creators'),
(33, 'Can add comments', 9, 'add_comments'),
(34, 'Can change comments', 9, 'change_comments'),
(35, 'Can delete comments', 9, 'delete_comments'),
(36, 'Can view comments', 9, 'view_comments');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$VXoUYiyJ6qjZ$Fhz14FozHvy0dWpm199yIitjB5EkPQc4ZhnxPMVJQIM=', NULL, 0, 'tutituhun', 'Leonard Flynn', 'Mallory House', 'livu@mailinator.com', 0, 1, '2020-02-08 05:23:52.325614'),
(2, 'pbkdf2_sha256$150000$kAWitNIr5PCq$FtRsogeHsWSPIXe9nrEpp8zj935DtNibjW1GNN7PJ2E=', NULL, 0, 'bycujyxy', 'Marcia Leonard', 'Barbara Mccormick', 'befa@mailinator.net', 0, 1, '2020-02-08 05:25:08.054830'),
(3, 'pbkdf2_sha256$150000$1mDos1mRp6Bo$KrynjyF+qvdAr8WWSYgKtitGejJF21rhX8FFP52Nlsw=', NULL, 0, 'suzipo', 'Gary Mcfarland', 'Chase Jordan', 'faze@mailinator.com', 0, 1, '2020-02-08 05:25:40.794165'),
(4, 'pbkdf2_sha256$150000$ezQ5K5KqVw2G$RqeXkPo/njeI7Fjm+VDofnq7Cje5o8N0vGl2FfUrsB4=', NULL, 0, 'beserar', 'Alexandra Guerrero', 'Zachary Miranda', 'vizyvyf@mailinator.net', 0, 1, '2020-02-08 05:27:00.433975'),
(5, 'pbkdf2_sha256$150000$GjydUPWVeb7P$nT4G9pWIE4sIPEz15qpju3PfXbmhuzrGylju5pb5saY=', NULL, 0, 'lybafemu', 'Daria Golden', 'Lenore Savage', 'rupafe@mailinator.net', 0, 1, '2020-02-08 05:27:29.767105'),
(6, 'pbkdf2_sha256$180000$gmSzA97K3rPw$lPQoId2vesxzxdP98tvNKhLCuX6CooPnxHfyTVkbtMQ=', '2020-02-09 14:22:33.097495', 0, 'sushmita', 'Sushmita', 'Budhathoki', 'susshmita101@yahoo.com', 0, 1, '2020-02-08 05:29:24.672008'),
(7, 'pbkdf2_sha256$150000$9NZ6xJTXQ1Ib$NTv84L1DXsoF+fvbhDDBjSbH/xPFStqzbSqY8lNDcwI=', NULL, 0, 'famuqu', 'Germaine English', 'Candace Benton', 'qibovoleje@mailinator.net', 0, 1, '2020-02-08 07:22:06.477719'),
(8, 'pbkdf2_sha256$150000$UpU5Yqd9iabL$pigbAQ9cBHdiqFAyIYZZpyOxcj5BejJNsIZNimeFrh0=', NULL, 0, 'fipyb', 'Jerry Hester', 'Allegra Wiggins', 'lifuty@mailinator.com', 0, 1, '2020-02-09 03:12:49.952967'),
(9, 'pbkdf2_sha256$180000$YbU7RdbAwbYT$uWZZtrVJBR2VSP/wKt/MSLkWlJxp7wwUhqeeKwqkHaA=', '2020-02-10 05:52:53.228811', 0, 'destiny2jannat', 'Roshan', 'Sah', 'RoshanSah729@gmail.com', 0, 1, '2020-02-09 17:03:21.282392');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
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
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'users', 'comments'),
(7, 'users', 'creator'),
(8, 'users', 'creators');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-07 15:02:59.691418'),
(2, 'auth', '0001_initial', '2020-02-07 15:03:01.011196'),
(3, 'admin', '0001_initial', '2020-02-07 15:03:09.036730'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-07 15:03:10.393055'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-07 15:03:10.446001'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-07 15:03:11.178273'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-07 15:03:12.213154'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-07 15:03:12.367052'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-07 15:03:12.451244'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-07 15:03:13.871645'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-07 15:03:13.902859'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-07 15:03:13.918519'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-07 15:03:14.034356'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-07 15:03:14.156498'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-07 15:03:14.272519'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-07 15:03:14.335019'),
(17, 'sessions', '0001_initial', '2020-02-07 15:03:14.557320'),
(18, 'users', '0001_initial', '2020-02-08 08:50:09.521611'),
(19, 'users', '0002_auto_20200208_1556', '2020-02-08 10:12:00.883891'),
(20, 'users', '0003_auto_20200208_1630', '2020-02-08 10:45:41.053975'),
(21, 'users', '0004_remove_creator_date', '2020-02-08 10:55:54.647658'),
(22, 'users', '0005_creator_date', '2020-02-08 10:55:54.903618'),
(23, 'users', '0006_auto_20200208_1701', '2020-02-08 11:16:53.719511'),
(24, 'users', '0007_auto_20200208_1724', '2020-02-08 11:39:57.377151'),
(25, 'users', '0008_auto_20200208_1748', '2020-02-08 12:04:36.482409'),
(26, 'users', '0009_creators_discription', '2020-02-08 12:04:37.194298'),
(27, 'users', '0010_auto_20200208_1753', '2020-02-08 12:08:28.586363'),
(28, 'users', '0011_comments', '2020-02-08 18:16:19.598835');

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
('12e0nb8sen7mk73o3pbas1193i3h3boi', 'ZWNkNTg1YmY3ZTllM2QxMzhmZTBjNWIyMDYzYjFjMWNhM2Q0ZDM2NDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzkwNjgwOTk4NmExNjY1NGM1MDVhNWE4MTFjNmViYzJmZTA0MDA5In0=', '2020-02-22 09:15:06.887171'),
('14dqt9qhvxw6f1rgr3ac3scog2b1mbz4', 'ZTFiMmFmOGQwZGIxYWRiMDVmOGE0NGY5OTIzZGIyMzQyYmU5N2YxYjp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzI4MDdmYWZkMDdhZjYzNzliYmVmYmFmMTQ4M2ViYWJmNTMyMmIxIn0=', '2020-02-23 17:17:09.869247'),
('ij9fistwkxg473ijzxqwpsmx260p10bd', 'ZWNkNTg1YmY3ZTllM2QxMzhmZTBjNWIyMDYzYjFjMWNhM2Q0ZDM2NDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzkwNjgwOTk4NmExNjY1NGM1MDVhNWE4MTFjNmViYzJmZTA0MDA5In0=', '2020-02-22 06:31:03.184099'),
('jdafe0rbgkv09hrkmq3s2qrz5cp4gn65', 'ZWNkNTg1YmY3ZTllM2QxMzhmZTBjNWIyMDYzYjFjMWNhM2Q0ZDM2NDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzkwNjgwOTk4NmExNjY1NGM1MDVhNWE4MTFjNmViYzJmZTA0MDA5In0=', '2020-02-23 05:43:33.392271');

-- --------------------------------------------------------

--
-- Table structure for table `users_comments`
--

CREATE TABLE `users_comments` (
  `id` int(11) NOT NULL,
  `blog_id` varchar(500) NOT NULL,
  `full_name` varchar(500) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_comments`
--

INSERT INTO `users_comments` (`id`, `blog_id`, `full_name`, `comment`, `date`) VALUES
(1, '9', 'Sushmita Budhathoki', 'Nice topic. No more throws, pillows, or wall art that you love and then leave a few weeks later. ', '2020-02-09'),
(8, '9', 'Sushmita Budhathoki', 'For those who might be unfamiliar with the term, minimalism is a design concept that strips things down to their bare essentials – a chair will just be a chair, not a chair/cup holder/sculpture. Minimalism seeks to bring out the core of our interiors', '2020-02-09'),
(9, '9', 'Sushmita Budhathoki', 'Depending on how you incorporate minimalism into your home, you can save hundreds of dollars on the little accent pieces that you don’t buy. ', '2020-02-09'),
(22, '30', 'Roshan Sah', 'This is nice blog!', '2020-02-09'),
(23, '9', 'Roshan Sah', 'hello world!', '2020-02-09'),
(24, '9', 'Roshan Sah', 'sdfgh', '2020-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `users_creators`
--

CREATE TABLE `users_creators` (
  `id` int(11) NOT NULL,
  `full_name` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `topic` varchar(500) NOT NULL,
  `category` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `discription` varchar(7000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_creators`
--

INSERT INTO `users_creators` (`id`, `full_name`, `image`, `topic`, `category`, `date`, `discription`) VALUES
(9, 'Sushmita Budhathoki', 'Sushmita Budhathoki_877_avian-400.jpg', '3 Benefits of Minimalism In Interior Design.', 'DESIGN', '2020-02-08', ' Design aficionado will know that minimalism is a growing trend among modern interior designers. But why is minimalism so popular? For those who might be unfamiliar with the term, minimalism is a design concept that strips things down to their bare essentials – a chair will just be a chair, not a chair/cup holder/sculpture. Minimalism seeks to bring out the core of our interiors, enhancing their functionality while minimizing the unnecessary details and flourishes.\r\n\r\nSome people have argued that along with stripping design of its “extras”, minimalism also strips it of its style. Without the little details that makes every piece unique, how can you create an inviting, beautiful space? We’re here to tell you that minimalism can achieve just this, if the right balance is achieved. Here are three benefits of minimalism that we think you’ll love, even if you only incorporate it into one room or add minimalist elements slowly to your home.\r\n\r\nReduced clutter and more peace of mind. Minimalism is all about trimming the fat of the often excessive modern design trends. A fully minimalist room will naturally be clutter-free, as clutter is hidden by chunky cabinets and concealed closets. Along with less clutter, a minimalist room will give you a subtle peace of mind, as you survey complete Zen in your surroundings.\r\nMinimalism is money-saving. Depending on how you incorporate minimalism into your home, you can save hundreds of dollars on the little accent pieces that you don’t buy. No more throws, pillows, or wall art that you love and then leave a few weeks later.\r\nSimply space. Minimalism will free up the space in your home, making it look larger and more inviting. You’ll love walking into your living room and taking a sweeping look across a wide-open space.'),
(10, 'Sushmita Budhathoki', 'Sushmita Budhathoki_544_tulips-400.jpg', '10 Interesting Facts About Caffeine.', 'HEALTH', '2020-02-08', 'People may not think of caffeine as the most popular mood-altering drug in the world, even those who use it daily, by drinking coffee, tea, sodas or energy drinks as part of their routine. \r\n\r\nYet many of us depend on regular doses of 1,3,7 trimethylxanthine, the chemical name for a bitter white powder known as caffeine, to help wake us up, keep us alert and get us through the daily grind.\r\n\r\nWhether it\'s brewed from a K-Cup, sipped in sweet tea, savored in chocolate or downed in cola, caffeine is a mild stimulant to the central nervous system that has become a regular fixture in everyday life. \r\n\r\nIn moderate amounts, caffeine has been shown to have positive effects on people\'s bodies and minds. There\'s some evidence that caffeine may help improve memory, enhance workouts and boost concentration.'),
(11, 'Sushmita Budhathoki', 'Sushmita Budhathoki_997_music-400.jpg', 'The Power of Music to Reduce Stress.', 'HEALTH', '2020-02-08', 'The soothing power of music is well-established. It has a unique link to our emotions, so can be an extremely effective stress management tool.\r\n\r\nListening to music can have a tremendously relaxing effect on our minds and bodies, especially slow, quiet classical music. This type of music can have a beneficial effect on our physiological functions, slowing the pulse and heart rate, lowering blood pressure, and decreasing the levels of stress hormones. Music, in short, can act as a powerful stress management tool in our lives.\r\n\r\nAs music can absorb our attention, it acts as a distraction at the same time it helps to explore emotions. This means it can be a great aid to meditation, helping to prevent the mind wandering.\r\n\r\nMusical preference varies widely between individuals, so only you can decide what you like and what is suitable for each mood. But even if you don’t usually listen to classical music it may be worth giving it a try when selecting the most calming music.\r\n\r\nWhen people are very stressed, there is a tendency to avoid actively listening to music. Perhaps it feels like a waste of time, not helping to achieve anything. But as we know, productivity increases when stress is reduced, so this is another area where you can gain vast rewards. It just takes a small effort to begin with.'),
(12, 'Sushmita Budhathoki', 'Sushmita Budhathoki_934_watch-400.jpg', 'The Pomodoro Technique Really Works.', 'MANAGEMENT', '2020-02-08', 'Admittedly, I’ve never been big on productivity hacks and tricks. Instead, I keep things pretty simple. I take a look at my planner (yes, a real paper planner—not my phone), jot down a list of things I want to get done that day, and then start hustling.\r\n\r\nBut, after hearing so much chatter about the Pomodoro Technique, I figured I should at least do my due diligence and give it a try. I listened to so many different people rant and rave about how it helped them greatly improve their focus and increase their productivity. So, I thought testing it out couldn’t hurt—and, if all went well, maybe I’d even identify a new tactic for tackling my never-ending to-do list.\r\n\r\nNeedless to say, testing it out is exactly what I did. In fact, I utilized this time management method for an entire week in order to share my findings. And, like any good journalist would, I kicked things back old school and used the scientific method to share my results. If only my sixth grade science teacher could see me now.\r\n\r\n\r\n\r\nWhat Is the Pomodoro Technique?\r\nThe Pomodoro Technique is a time management system that encourages people to work with the time they have—rather than against it. Using this method, you break your workday into 25-minute chunks separated by five-minute breaks. These intervals are referred to as pomodoros. After about four pomodoros, you take a longer break of about 15 to 20 minutes.'),
(13, 'Sushmita Budhathoki', 'Sushmita Budhathoki_43_wheel-400.jpg', 'Visiting Theme Parks Improves Your Health.', 'LIFESTYLE', '2020-02-08', 'Walk miles without even realizing it\r\nContrary to being called a park , theme parks cover vast areas up to 100 sq. miles! Because they can be so large, a lot of walking is involved in visiting a theme park. A typical visit often involves a lot of backtracking and zig-zagging to get from one ride or show to another, and depending on the size of the theme park, you should expect to walk an average of 5 to 10 miles. This will help you burn around 500 to 1000 calories.\r\n\r\nBurn calories while riding the crazy rides\r\nThough the most you’re doing on a roller coaster is sitting and screaming your lungs, you actually do burn calories while on the rides. There aren’t many more enjoyable ways to burn off fat. A team of scientists, artists, engineers and designers known as the Thrill Laboratory conducted a study and determined that certain attractions in Thorpe Park in the UK helped riders burn between around 40 and 70 calories.'),
(14, 'Sushmita Budhathoki', 'Sushmita Budhathoki_715_guitarist-400.jpg', 'What Your Music Preference Says About You and Your Personality.', 'MUSIC', '2020-02-08', 'Music plays an important role in the lives of people all of the world, which is why many wonder what individual factors might influence musical preferences. Could the contents of your playlist, for example, reveal something about your personality? People listen to music as a way to set the mood, to motivate a workout, or even to gain inspiration. How much are those choices influenced by underlying personality traits?\r\n\r\nPersonality Traits Linked to Musical Styles\r\nOne large-scale study conducted by researchers at Heriot-Watt University looked at more than 36,000 participants from all over the world. Participants were asked to rate more than 104 different musical styles in addition to offering information about aspects of their personalities.\r\n\r\nAccording to researcher Adrian North, the reason people sometimes feel defensive about their taste in music might be related to how much it relates to attitudes and personality. North suggests that people do define themselves through music and use it as a means to relate to other people. His research points to the connection that people often make between who they are as an individual and their musical tastes.\r\n\r\nKeep in mind that these are the results published in only one study rather than being replicated and validated by a variety of researchers and different study designs.'),
(15, 'Sushmita Budhathoki', 'Sushmita Budhathoki_394_jump-800.jpg', 'Create Meaningful Family Moments.', 'RELATIONSHIPS', '2020-02-08', 'Encourage everyone to get their hands dirty by digging a patch to plant flowers or vegetables in the backyard. Tuck tender seedlings into the ground and watch them grow and blossom—like your kids are doing every day. As they witness green shoots turn into stunning plants, your whole family will gain a new respect for the natural world, all while learning patience and perseverance as you divvy up the tasks of keeping the garden weed-free, well-watered, and strong. And if someone squeals upon discovering a squirmy garden worm? That\'s a hilarious family moment for the scrapbook!\r\nYou can set the budget and a suggest geographically convenient location but let your kids research attractions, coordinate travel times, and check the weather forecast. If you live in the Mid-Atlantic, for example, you might suggest Colonial Williamsburg, and your children’s itinerary could include an archaeological dig, meeting farm animals at the Peyton Randolph Yard, viewing 19th-century toys at the Rockefeller Folk Art Museum, and kid-centric tours of the former capital and royal governor’s palace. They\'ll feel proud, trusted, and independent as they take on a leadership role in the family, and you\'ll be proud to spend a wonderful day together with the children at the helm.'),
(16, 'Sushmita Budhathoki', 'Sushmita Budhathoki_787_flowers-400.jpg', 'Gardening: The Secret to Happiness.', 'LIFESTYLE', '2020-02-08', 'I opened my eyes to gardening when I turned 39. More than a decade earlier we had moved into a terraced house with a lush, mature garden. I imagined that, like wallpaper, it would stay that way with little care or effort from me. It didn\'t – it grew wild and sad. Things died, weeds took over. Even then, with my frantic urban life and my tired urban heart, I barely noticed. I remember sitting with my babies on the brown lawn one summer\'s evening and asking my husband (who loathes gardening, but at least recognised a duty of care) if he really had to make so much noise with that watering can.\r\n\r\nThe change, when it came, was sudden and immense. Was it simply middle age? All I know is that one day I wasn\'t seeing, and the next day, it was all there. The magnolia with its huge creamy blossoms like birds in flight. The Michaelmas daisies, choked by convolvulus. The poor roses, leggy and parched and crying out for help. I got down on my hands and knees and scratched around in the soil, wondering what was weed and what was seedling – and realised that I knew nothing.\r\n\r\nSo I got myself a book. It happened to be Urban Jungle by Monty Don. Don is as gifted a writer as he is a gardener, and he took me straight back to the person I\'d forgotten I once was: a kid who used to dig around at the bottom of the garden in her anorak. A girl who noticed the seasons, the calling of birds, the smell of sap on the air. Finding that person again has been one of the most intense and comforting experiences of the last few years.'),
(17, 'Sushmita Budhathoki', 'Sushmita Budhathoki_841_woodcraft-400.jpg', 'An Examination of Minimalistic Design.', 'CREATIVITY', '2020-02-08', 'Minimalism in design has been around for some time, and today it seems to be a welcome alternative to overly busy and unnecessarily cluttered websites, posters, ads, and logos. For those new to this art form, the concept of minimalism is mostly concerned with stripping away excess and strategically placing remaining elements. The result can be a calming, yet powerful design that is streamlined to convey its message. You can find minimalism in all art forms, from architecture to fashion to logo design.\r\n\r\nTo get the most out of a minimalist design, whether it be for something as small as a logo or large as a billboard, be sure to use the right elements correctly. Color, layout, white space, graphics &  typography all play an important role in minimalism. Below we look at these principles of design and how they relate to minimalism.'),
(18, 'Sushmita Budhathoki', 'Sushmita Budhathoki_175_fuji-400.jpg', 'What Skills Are Required For a Photographer?', 'CREATIVITY', '2020-02-08', 'With high-quality cameras on smartphones, it may seem at first glance that paying for photographers is a thing of the past. As photography has become more popular, demand has also risen for better quality photography and for those that shoot professionally. Weddings, newborn photography, family lifestyle shoots, and even military homecomings have breathed new life into the professional photography industry.\r\n\r\nPhotography can be an art, a hobby, or just a way of documenting your own life. For some, photography is a career. Professional photographers work in a variety of fields, from advertising to journalism. They can also work independently, doing portraiture or creating and selling prints for display.\r\n\r\nWhat Skills Do You Need to Be a Photographer?\r\nYou don’t need a special degree to become a professional photographer, though an art degree can certainly help you hone your skill. Most simply develop skills using professional equipment and then begin taking pictures. Many of the top-selling photographers in the world taught themselves.\r\n\r\nHowever, competition can be fierce. The very fact that anyone with a camera can take pictures means you’ll have to be exceptional in some way or another to be noticed.\r\n\r\nOne way to stand out when applying for jobs is to emphasize that you have skills that employers are looking for in a photographer.\r\n\r\nTypes of Photography Skills\r\nHardware and Software\r\nTo be a successful photographer these days, you need to know the latest technologies. This includes developments in both hardware and software.\r\n\r\nHardware, in this case, refers to cameras, lenses, tripods, lights, and all the other physical equipment a photographer might use. Some of that equipment is extremely complicated to use until mastered. Just as an aspiring poet must first be fluent in the language he or she uses for composition, so must you become fluent in the tools you use. Naturally, professional cameras have unique pros and cons, as well as which optics are best used with a specific camera or location.\r\n\r\nIt is possible to create great pictures by pointing and shooting, but you will have more control and more options the more you know about manual camera settings.'),
(19, 'Sushmita Budhathoki', 'Sushmita Budhathoki_748_beetle-400.jpg', 'Throwback To The Good Old Days.', 'LIFESTYLE', '2020-02-08', 'From time to time those that have come before us such as our moms, dads, and grandparents will reminisce on the good old days. A time when there was no Internet so one had to read the newspaper for updates, write rather than type during class, go to the library for research, knock for a friend, use snail mail, etc. For me such thoughts have made the understanding of the phrase, “the good old days” quite blurred. The fact is the so-called “good old days” was a time that seems astronomically different, slow paced, and quite frankly dull compared to today. That is, since I can remember the Internet has always been apart of my life, practically advancing its growth as I have grown. The Internet has revolutionized today’s society changing our…show more content…\r\nCommunication and networking for any purpose such as work, friendship, relationship, interests, employment, business, etc. has drastically changed with the Internet. It has become a much easier, quicker, and more effective process. Another example of the benefits of the Internet is that of information acquisition and preservation. Back in the “good old days” acquiring information about an unfamiliar subject, or learning anything for that matter required a knowledgeable individual, a class, or a trip to the library. However, since the birth of the Internet and the development of Google by Larry Page and Sergey Brin all that has changed drastically. With Google we now have the ability to search for anything we desire at the click of a button. '),
(20, 'Sushmita Budhathoki', 'Sushmita Budhathoki_316_sydney-400.jpg', 'Planning Your First Trip To Sydney.', 'TRAVELS', '2020-02-08', 'Australia\'s largest city is also the jumping-off point for exploring Australia, and the city with the most inbound flights from North America. Here are some essential tips to plan and enjoy your visit.\r\n\r\nAirfare tips\r\n\r\nOctober to March is Sydney\'s busiest tourism period, when the weather is most pleasant. Airfares are cheaper for travel during Australia\'s winter months (the North American summer), and higher for the Australian summer, with the southern hemisphere\'s spring and fall being shoulder season. Qantas offers the most non-stop flights, including some on Airbus A380 aircraft from Dallas and L.A. Air New Zealand also flies to Sydney (sign up for both airlines\' e-mail alerts since they often send out promo codes with discounts of $200-$300) as does United and Virgin Australia. Expect to pay anywhere from $1,200 to $1,600 or more round-trip in economy class from the U.S. West Coast, depending on season and whatever discounts you can find. Hotel plus air package deals can sometimes provide extra value, but always be sure to compare. Qantas also sells \"Walkabout\" air passes with discounted fares throughout Australia.\r\n\r\nGetting through the airport\r\n\r\nU.S. citizens must get an electronic visa online at least two weeks before travel for AUD $20. If you have an \"electronic passport\" with a microchip, look for the kiosks at immigration for a quicker entry into the country. You need to fill out an immigration card on entry, as well upon leaving the country. The train from the airport costs $21, round-trip.\r\n\r\nGetting around the city\r\n\r\nSydney is very walkable—it\'s basically flat, and the streets are well marked. (Warning: Pedestrians do not jaywalk, and police are not hesitant to fine you for doing so. And be sure to look both ways crossing streets—they drive on the left here.) Newsstands sell the recently introduced Opal Card, a stored-value transit card similar to London\'s Oyster Card and the cheapest and most convenient way to access public transportation. The daily maximum you\'ll pay for travel is capped at $15 for adults, $7.50 for children, or $60/$30 for a week\'s worth of travel, which includes buses, trains and ferries. As for taxis, they are metered and in egalitarian Sydney, where everyone is a \"mate,\" people still ride in the front seat with the driver. Uber has come to town, and is gaining popularity.\r\n');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users_comments`
--
ALTER TABLE `users_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_creators`
--
ALTER TABLE `users_creators`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users_comments`
--
ALTER TABLE `users_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users_creators`
--
ALTER TABLE `users_creators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
