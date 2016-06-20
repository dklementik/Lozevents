-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- G√©n√©r√© le :  Jeu 26 Mai 2016 √† 15:11
-- Version du serveur :  5.6.30-0ubuntu0.15.10.1
-- Version de PHP :  5.6.11-1ubuntu3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de donn√©es :  `lozevents`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add userena registration', 7, 'add_userenasignup'),
(20, 'Can change userena registration', 7, 'change_userenasignup'),
(21, 'Can delete userena registration', 7, 'delete_userenasignup'),
(22, 'Can add user object permission', 8, 'add_userobjectpermission'),
(23, 'Can change user object permission', 8, 'change_userobjectpermission'),
(24, 'Can delete user object permission', 8, 'delete_userobjectpermission'),
(25, 'Can add group object permission', 9, 'add_groupobjectpermission'),
(26, 'Can change group object permission', 9, 'change_groupobjectpermission'),
(27, 'Can delete group object permission', 9, 'delete_groupobjectpermission'),
(28, 'Can add source', 10, 'add_source'),
(29, 'Can change source', 10, 'change_source'),
(30, 'Can delete source', 10, 'delete_source'),
(31, 'Can add thumbnail', 11, 'add_thumbnail'),
(32, 'Can change thumbnail', 11, 'change_thumbnail'),
(33, 'Can delete thumbnail', 11, 'delete_thumbnail'),
(34, 'Can add thumbnail dimensions', 12, 'add_thumbnaildimensions'),
(35, 'Can change thumbnail dimensions', 12, 'change_thumbnaildimensions'),
(36, 'Can delete thumbnail dimensions', 12, 'delete_thumbnaildimensions'),
(37, 'Can add site', 13, 'add_site'),
(38, 'Can change site', 13, 'change_site'),
(39, 'Can delete site', 13, 'delete_site'),
(40, 'Can add loz profile', 14, 'add_lozprofile'),
(41, 'Can change loz profile', 14, 'change_lozprofile'),
(42, 'Can delete loz profile', 14, 'delete_lozprofile'),
(43, 'Can view profile', 14, 'view_profile'),
(44, 'Can add profile part', 15, 'add_profilepart'),
(45, 'Can change profile part', 15, 'change_profilepart'),
(46, 'Can delete profile part', 15, 'delete_profilepart'),
(47, 'Can add profile pro', 16, 'add_profilepro'),
(48, 'Can change profile pro', 16, 'change_profilepro'),
(49, 'Can delete profile pro', 16, 'delete_profilepro'),
(50, 'Can add address', 17, 'add_address'),
(51, 'Can change address', 17, 'change_address'),
(52, 'Can delete address', 17, 'delete_address'),
(53, 'Can add categorie', 18, 'add_categorie'),
(54, 'Can change categorie', 18, 'change_categorie'),
(55, 'Can delete categorie', 18, 'delete_categorie'),
(56, 'Can add event', 19, 'add_event'),
(57, 'Can change event', 19, 'change_event'),
(58, 'Can delete event', 19, 'delete_event'),
(59, 'Can change profile', 14, 'change_profile'),
(60, 'Can delete profile', 14, 'delete_profile');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(-1, '!kfjZNoZAOINS7SF8hv1TZrsMLBwo9Bydr3DtzjrU', NULL, 0, 'AnonymousUser', '', '', '', 0, 1, '2016-05-26 12:51:10.579310'),
(1, 'pbkdf2_sha256$24000$lODPNhoBVB36$czolz+NMygtDupZDEUWbtlEFOuvOCZbnc0i2TSy0TUI=', '2016-05-26 12:53:40.925490', 1, 'admin', '', '', 'admin@plop.fr', 1, 1, '2016-05-26 12:52:36.897980'),
(2, 'pbkdf2_sha256$24000$LZgcO3mBj2Dw$7JBwqmSX/KfxTjl3CIm37X4Pyw3902xd8oGG/3hwV5Y=', NULL, 0, 'plop', '', '', 'plop@hotmail.fr', 0, 1, '2016-05-26 12:54:11.941308'),
(3, 'pbkdf2_sha256$24000$A3ota9g32Awu$i+ZR+fJb3mnY9t5B2c7CvK5c0vkI4Tro/jODzlmO8Z0=', NULL, 0, 'plop2', '', '', 'plop2@hotmail.fr', 0, 1, '2016-05-26 12:54:36.046435'),
(4, 'pbkdf2_sha256$24000$z7ZYR1bHkIun$P4njIjeVSRyYUywAO8Hp1q8K34ILM/l6QLTiVlLmoJ0=', NULL, 0, 'plop3', '', '', 'plop3@hotmail.fr', 0, 1, '2016-05-26 12:55:22.337762'),
(5, 'pbkdf2_sha256$24000$7VzaIxGjZ9MO$SPdfMcAby/Pp5O2yWtgHlu1IPFNXQfHa9FuNf+ULp2s=', '2016-05-26 12:57:17.729261', 0, 'plop4', '', '', 'plop4@hotmail.fr', 0, 1, '2016-05-26 12:57:17.389588'),
(6, 'pbkdf2_sha256$24000$Dc8uUlgyCnl4$Yfl2la/XiLsllVkj4Zn5K4aKuPJZIdbIGyhqWgNBZiE=', '2016-05-26 13:02:51.571857', 0, 'azerty', '', '', 'plop12@hotmail.fr', 0, 1, '2016-05-26 13:02:51.143015'),
(7, 'pbkdf2_sha256$24000$HtwdiUipYKLd$rAvIUpsfarrR8wHcHsu5pl3wroXjctWK+I53Co45WpQ=', '2016-05-26 13:09:15.241355', 0, 'fdsffds', '', '', 'sdfdsf@dfsdsf.fr', 0, 1, '2016-05-26 13:09:14.863407');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2016-05-26 12:53:46.963658', '1', 'Plop', 1, 'Ajout.', 18, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'easy_thumbnails', 'source'),
(11, 'easy_thumbnails', 'thumbnail'),
(12, 'easy_thumbnails', 'thumbnaildimensions'),
(9, 'guardian', 'groupobjectpermission'),
(8, 'guardian', 'userobjectpermission'),
(17, 'lozapp', 'address'),
(18, 'lozapp', 'categorie'),
(19, 'lozapp', 'event'),
(14, 'lozprofile', 'lozprofile'),
(15, 'lozprofile', 'profilepart'),
(16, 'lozprofile', 'profilepro'),
(6, 'sessions', 'session'),
(13, 'sites', 'site'),
(7, 'userena', 'userenasignup');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-05-26 12:51:09.814867'),
(2, 'auth', '0001_initial', '2016-05-26 12:51:09.900414'),
(3, 'admin', '0001_initial', '2016-05-26 12:51:09.923768'),
(4, 'admin', '0002_logentry_remove_auto_add', '2016-05-26 12:51:09.937532'),
(5, 'contenttypes', '0002_remove_content_type_name', '2016-05-26 12:51:09.998959'),
(6, 'auth', '0002_alter_permission_name_max_length', '2016-05-26 12:51:10.013608'),
(7, 'auth', '0003_alter_user_email_max_length', '2016-05-26 12:51:10.029354'),
(8, 'auth', '0004_alter_user_username_opts', '2016-05-26 12:51:10.039902'),
(9, 'auth', '0005_alter_user_last_login_null', '2016-05-26 12:51:10.054016'),
(10, 'auth', '0006_require_contenttypes_0002', '2016-05-26 12:51:10.055529'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2016-05-26 12:51:10.067273'),
(12, 'easy_thumbnails', '0001_initial', '2016-05-26 12:51:10.106603'),
(13, 'easy_thumbnails', '0002_thumbnaildimensions', '2016-05-26 12:51:10.122472'),
(14, 'guardian', '0001_initial', '2016-05-26 12:51:10.219151'),
(15, 'lozapp', '0001_initial', '2016-05-26 12:51:10.280861'),
(16, 'lozprofile', '0001_initial', '2016-05-26 12:51:10.390246'),
(17, 'lozapp', '0002_event_pro', '2016-05-26 12:51:10.427259'),
(18, 'sessions', '0001_initial', '2016-05-26 12:51:10.437082'),
(19, 'sites', '0001_initial', '2016-05-26 12:51:10.444239'),
(20, 'sites', '0002_alter_domain_unique', '2016-05-26 12:51:10.452673'),
(21, 'userena', '0001_initial', '2016-05-26 12:51:10.486236'),
(22, 'userena', '0002_auto_20160510_1154', '2016-05-26 12:51:10.537990');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('e2ynndw6gbk29fipmgyqqthqvjy3jlkl', 'YzdlMDUxOWFjYTM0NzQ3ZGQ3YWU1MjdhZmNlMGY4YzRiOTRiNTFlOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ4MTc1YTk5ZDg1ZDg4ODg4MzllODI5ZmUzZDY0NGE5NWYxZjBkNzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2VyZW5hLmJhY2tlbmRzLlVzZXJlbmFBdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiNyJ9', '2016-06-09 13:09:15.242516'),
('jpc1iqlks406bc32g33ulhyok15kcg9p', 'YjQ4YWEwZTBlNTNiZmY1YTI3M2M2N2ZmODk0NjUzMzc2NzdhODFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjgxYjc2NzQwZDljYzRjNmU3ODBlOTcwNmM5NTlkNDM1OWI4MTQzZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-09 12:53:40.927990');

-- --------------------------------------------------------

--
-- Structure de la table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'localhost', 'example.com');

-- --------------------------------------------------------

--
-- Structure de la table `easy_thumbnails_source`
--

CREATE TABLE IF NOT EXISTS `easy_thumbnails_source` (
  `id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `easy_thumbnails_thumbnail`
--

CREATE TABLE IF NOT EXISTS `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `easy_thumbnails_thumbnaildimensions`
--

CREATE TABLE IF NOT EXISTS `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `guardian_groupobjectpermission`
--

CREATE TABLE IF NOT EXISTS `guardian_groupobjectpermission` (
  `id` int(11) NOT NULL,
  `object_pk` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `guardian_userobjectpermission`
--

CREATE TABLE IF NOT EXISTS `guardian_userobjectpermission` (
  `id` int(11) NOT NULL,
  `object_pk` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `guardian_userobjectpermission`
--

INSERT INTO `guardian_userobjectpermission` (`id`, `object_pk`, `content_type_id`, `permission_id`, `user_id`) VALUES
(1, '1', 14, 43, 2),
(2, '1', 14, 59, 2),
(3, '1', 14, 60, 2),
(4, '2', 4, 11, 2),
(5, '2', 4, 12, 2),
(6, '3', 14, 43, 3),
(7, '3', 14, 59, 3),
(8, '3', 14, 60, 3),
(9, '3', 4, 11, 3),
(10, '3', 4, 12, 3),
(11, '4', 14, 43, 4),
(12, '4', 14, 59, 4),
(13, '4', 14, 60, 4),
(14, '4', 4, 11, 4),
(15, '4', 4, 12, 4),
(16, '5', 14, 43, 5),
(17, '5', 14, 59, 5),
(18, '5', 14, 60, 5),
(19, '5', 4, 11, 5),
(20, '5', 4, 12, 5),
(21, '6', 14, 43, 6),
(22, '6', 14, 59, 6),
(23, '6', 14, 60, 6),
(24, '6', 4, 11, 6),
(25, '6', 4, 12, 6),
(26, '7', 14, 43, 7),
(27, '7', 14, 59, 7),
(28, '7', 14, 60, 7),
(29, '7', 4, 11, 7),
(30, '7', 4, 12, 7);

-- --------------------------------------------------------

--
-- Structure de la table `lozapp_address`
--

CREATE TABLE IF NOT EXISTS `lozapp_address` (
  `id` int(11) NOT NULL,
  `zipcode` varchar(5) NOT NULL,
  `city` varchar(100) NOT NULL,
  `street` varchar(45) NOT NULL,
  `poly` point DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lozapp_address`
--

INSERT INTO `lozapp_address` (`id`, `zipcode`, `city`, `street`, `poly`) VALUES
(1, '48000', 'mende', '10 avenue foch', '\0\0\0\0\0\0\0√¢}ö⁄@èiah]F@'),
(2, '48000', 'mende', '10 avenue foch', '\0\0\0\0\0\0\0√¢}ö⁄@èiah]F@'),
(3, '34410', 'sauvian', '12 rue des hortensias', '\0\0\0\0\0\0\0‚raI^\n@\0\n‰»π•E@'),
(4, '34410', 'sauvian', '12 rue des hortensias', '\0\0\0\0\0\0\0‚raI^\n@\0\n‰»π•E@');

-- --------------------------------------------------------

--
-- Structure de la table `lozapp_categorie`
--

CREATE TABLE IF NOT EXISTS `lozapp_categorie` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lozapp_categorie`
--

INSERT INTO `lozapp_categorie` (`id`, `name`) VALUES
(1, 'Plop');

-- --------------------------------------------------------

--
-- Structure de la table `lozapp_event`
--

CREATE TABLE IF NOT EXISTS `lozapp_event` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `begin_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `desc` longtext NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `date_creation` datetime(6) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `is_validated` tinyint(1) NOT NULL,
  `addr_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lozapp_event_participant`
--

CREATE TABLE IF NOT EXISTS `lozapp_event_participant` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lozprofile_lozprofile`
--

CREATE TABLE IF NOT EXISTS `lozprofile_lozprofile` (
  `id` int(11) NOT NULL,
  `mugshot` varchar(100) NOT NULL,
  `privacy` varchar(15) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lozprofile_lozprofile`
--

INSERT INTO `lozprofile_lozprofile` (`id`, `mugshot`, `privacy`, `address_id`, `user_id`) VALUES
(1, '', 'registered', NULL, 2),
(2, '', 'registered', NULL, 1),
(3, '', 'registered', NULL, 3),
(4, '', 'registered', NULL, 4),
(5, '', 'registered', 2, 5),
(6, '', 'registered', 3, 6),
(7, '', 'registered', 4, 7);

-- --------------------------------------------------------

--
-- Structure de la table `lozprofile_lozprofile_favorite_categories`
--

CREATE TABLE IF NOT EXISTS `lozprofile_lozprofile_favorite_categories` (
  `id` int(11) NOT NULL,
  `lozprofile_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lozprofile_lozprofile_favorite_categories`
--

INSERT INTO `lozprofile_lozprofile_favorite_categories` (`id`, `lozprofile_id`, `categorie_id`) VALUES
(1, 5, 1),
(2, 6, 1),
(3, 7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `lozprofile_profilepart`
--

CREATE TABLE IF NOT EXISTS `lozprofile_profilepart` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lozprofile_profilepart`
--

INSERT INTO `lozprofile_profilepart` (`id`, `profile_id`) VALUES
(1, 5),
(2, 7);

-- --------------------------------------------------------

--
-- Structure de la table `lozprofile_profilepro`
--

CREATE TABLE IF NOT EXISTS `lozprofile_profilepro` (
  `id` int(11) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `siret` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lozprofile_profilepro`
--

INSERT INTO `lozprofile_profilepro` (`id`, `company_name`, `siret`, `number`, `profile_id`) VALUES
(1, 'azert', 545545, 45454545, 6);

-- --------------------------------------------------------

--
-- Structure de la table `userena_userenasignup`
--

CREATE TABLE IF NOT EXISTS `userena_userenasignup` (
  `id` int(11) NOT NULL,
  `last_active` datetime(6) DEFAULT NULL,
  `activation_key` varchar(40) NOT NULL,
  `activation_notification_send` tinyint(1) NOT NULL,
  `email_unconfirmed` varchar(254) NOT NULL,
  `email_confirmation_key` varchar(40) NOT NULL,
  `email_confirmation_key_created` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `userena_userenasignup`
--

INSERT INTO `userena_userenasignup` (`id`, `last_active`, `activation_key`, `activation_notification_send`, `email_unconfirmed`, `email_confirmation_key`, `email_confirmation_key_created`, `user_id`) VALUES
(1, NULL, 'a44e4425e8ac1394edb61b9c4a0d9a246ec8dbc4', 0, '', '', NULL, 3),
(2, NULL, '83ea6386c3610fe7ff4391046efbae49e835ae96', 0, '', '', NULL, 4),
(3, NULL, '643779b535b420d8f2076b9b80d4bfa4bb3f4c5a', 0, '', '', NULL, 5),
(4, NULL, '80aae7e718651a329c60332e61d078a88ad1ba67', 0, '', '', NULL, 6),
(5, NULL, 'bdcd6870519b063592e324ed34e8b3ff091e256d', 0, '', '', NULL, 7);

--
-- Index pour les tables export√©es
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Index pour la table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Index pour la table `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_source_storage_hash_481ce32d_uniq` (`storage_hash`,`name`),
  ADD KEY `easy_thumbnails_source_b454e115` (`storage_hash`),
  ADD KEY `easy_thumbnails_source_b068931c` (`name`);

--
-- Index pour la table `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_thumbnail_storage_hash_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  ADD KEY `easy_thumbnails__source_id_5b57bc77_fk_easy_thumbnails_source_id` (`source_id`),
  ADD KEY `easy_thumbnails_thumbnail_b454e115` (`storage_hash`),
  ADD KEY `easy_thumbnails_thumbnail_b068931c` (`name`);

--
-- Index pour la table `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thumbnail_id` (`thumbnail_id`);

--
-- Index pour la table `guardian_groupobjectpermission`
--
ALTER TABLE `guardian_groupobjectpermission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guardian_groupobjectpermission_group_id_3f189f7c_uniq` (`group_id`,`permission_id`,`object_pk`),
  ADD KEY `guardian_grou_content_type_id_7ade36b8_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `guardian_groupobjec_permission_id_36572738_fk_auth_permission_id` (`permission_id`);

--
-- Index pour la table `guardian_userobjectpermission`
--
ALTER TABLE `guardian_userobjectpermission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guardian_userobjectpermission_user_id_b0b3d2fc_uniq` (`user_id`,`permission_id`,`object_pk`),
  ADD KEY `guardian_user_content_type_id_2e892405_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `guardian_userobject_permission_id_71807bfc_fk_auth_permission_id` (`permission_id`);

--
-- Index pour la table `lozapp_address`
--
ALTER TABLE `lozapp_address`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lozapp_categorie`
--
ALTER TABLE `lozapp_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lozapp_event`
--
ALTER TABLE `lozapp_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lozapp_event_addr_id_62b68e93_fk_lozapp_address_id` (`addr_id`),
  ADD KEY `lozapp_event_categorie_id_4da91e06_fk_lozapp_categorie_id` (`categorie_id`),
  ADD KEY `lozapp_event_2dbcba41` (`slug`),
  ADD KEY `lozapp_event_87d6f5a9` (`pro_id`);

--
-- Index pour la table `lozapp_event_participant`
--
ALTER TABLE `lozapp_event_participant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lozapp_event_participant_event_id_dd0cd23b_uniq` (`event_id`,`user_id`),
  ADD KEY `lozapp_event_participant_user_id_a4ef9a7a_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `lozprofile_lozprofile`
--
ALTER TABLE `lozprofile_lozprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `lozprofile_lozprofile_address_id_5061f265_fk_lozapp_address_id` (`address_id`);

--
-- Index pour la table `lozprofile_lozprofile_favorite_categories`
--
ALTER TABLE `lozprofile_lozprofile_favorite_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lozprofile_lozprofile_favorite_categ_lozprofile_id_715037b1_uniq` (`lozprofile_id`,`categorie_id`),
  ADD KEY `lozprofile_lozprofi_categorie_id_1eb6f00b_fk_lozapp_categorie_id` (`categorie_id`);

--
-- Index pour la table `lozprofile_profilepart`
--
ALTER TABLE `lozprofile_profilepart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_id` (`profile_id`);

--
-- Index pour la table `lozprofile_profilepro`
--
ALTER TABLE `lozprofile_profilepro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_id` (`profile_id`);

--
-- Index pour la table `userena_userenasignup`
--
ALTER TABLE `userena_userenasignup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT pour les tables export√©es
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `guardian_groupobjectpermission`
--
ALTER TABLE `guardian_groupobjectpermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `guardian_userobjectpermission`
--
ALTER TABLE `guardian_userobjectpermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `lozapp_address`
--
ALTER TABLE `lozapp_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `lozapp_categorie`
--
ALTER TABLE `lozapp_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `lozapp_event`
--
ALTER TABLE `lozapp_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `lozapp_event_participant`
--
ALTER TABLE `lozapp_event_participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `lozprofile_lozprofile`
--
ALTER TABLE `lozprofile_lozprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `lozprofile_lozprofile_favorite_categories`
--
ALTER TABLE `lozprofile_lozprofile_favorite_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `lozprofile_profilepart`
--
ALTER TABLE `lozprofile_profilepart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `lozprofile_profilepro`
--
ALTER TABLE `lozprofile_profilepro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `userena_userenasignup`
--
ALTER TABLE `userena_userenasignup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Contraintes pour les tables export√©es
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD CONSTRAINT `easy_thumbnails__source_id_5b57bc77_fk_easy_thumbnails_source_id` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`);

--
-- Contraintes pour la table `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD CONSTRAINT `easy_thumb_thumbnail_id_c3a0c549_fk_easy_thumbnails_thumbnail_id` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`);

--
-- Contraintes pour la table `guardian_groupobjectpermission`
--
ALTER TABLE `guardian_groupobjectpermission`
  ADD CONSTRAINT `guardian_grou_content_type_id_7ade36b8_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `guardian_groupobjec_permission_id_36572738_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `guardian_groupobjectpermissio_group_id_4bbbfb62_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `guardian_userobjectpermission`
--
ALTER TABLE `guardian_userobjectpermission`
  ADD CONSTRAINT `guardian_user_content_type_id_2e892405_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `guardian_userobject_permission_id_71807bfc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `guardian_userobjectpermission_user_id_d5c1e964_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `lozapp_event`
--
ALTER TABLE `lozapp_event`
  ADD CONSTRAINT `lozapp_event_addr_id_62b68e93_fk_lozapp_address_id` FOREIGN KEY (`addr_id`) REFERENCES `lozapp_address` (`id`),
  ADD CONSTRAINT `lozapp_event_categorie_id_4da91e06_fk_lozapp_categorie_id` FOREIGN KEY (`categorie_id`) REFERENCES `lozapp_categorie` (`id`),
  ADD CONSTRAINT `lozapp_event_pro_id_e547eb90_fk_lozprofile_profilepro_id` FOREIGN KEY (`pro_id`) REFERENCES `lozprofile_profilepro` (`id`);

--
-- Contraintes pour la table `lozapp_event_participant`
--
ALTER TABLE `lozapp_event_participant`
  ADD CONSTRAINT `lozapp_event_participant_event_id_10cadcb8_fk_lozapp_event_id` FOREIGN KEY (`event_id`) REFERENCES `lozapp_event` (`id`),
  ADD CONSTRAINT `lozapp_event_participant_user_id_a4ef9a7a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `lozprofile_lozprofile`
--
ALTER TABLE `lozprofile_lozprofile`
  ADD CONSTRAINT `lozprofile_lozprofile_address_id_5061f265_fk_lozapp_address_id` FOREIGN KEY (`address_id`) REFERENCES `lozapp_address` (`id`),
  ADD CONSTRAINT `lozprofile_lozprofile_user_id_2deb88e1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `lozprofile_lozprofile_favorite_categories`
--
ALTER TABLE `lozprofile_lozprofile_favorite_categories`
  ADD CONSTRAINT `lozprofile_lo_lozprofile_id_aed5b97e_fk_lozprofile_lozprofile_id` FOREIGN KEY (`lozprofile_id`) REFERENCES `lozprofile_lozprofile` (`id`),
  ADD CONSTRAINT `lozprofile_lozprofi_categorie_id_1eb6f00b_fk_lozapp_categorie_id` FOREIGN KEY (`categorie_id`) REFERENCES `lozapp_categorie` (`id`);

--
-- Contraintes pour la table `lozprofile_profilepart`
--
ALTER TABLE `lozprofile_profilepart`
  ADD CONSTRAINT `lozprofile_profi_profile_id_208ba158_fk_lozprofile_lozprofile_id` FOREIGN KEY (`profile_id`) REFERENCES `lozprofile_lozprofile` (`id`);

--
-- Contraintes pour la table `lozprofile_profilepro`
--
ALTER TABLE `lozprofile_profilepro`
  ADD CONSTRAINT `lozprofile_profi_profile_id_62d78c83_fk_lozprofile_lozprofile_id` FOREIGN KEY (`profile_id`) REFERENCES `lozprofile_lozprofile` (`id`);

--
-- Contraintes pour la table `userena_userenasignup`
--
ALTER TABLE `userena_userenasignup`
  ADD CONSTRAINT `userena_userenasignup_user_id_2c4ec74f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
