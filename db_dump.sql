-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 04 2020 г., 12:38
-- Версия сервера: 10.4.15-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u464262023_itdelo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(45, 'action_scheduler/migration_hook', 'complete', '2020-03-19 16:49:51', '2020-03-19 16:49:51', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1584636591;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1584636591;}', 1, 1, '2020-03-19 16:49:55', '2020-03-19 19:49:55', 0, NULL),
(46, 'action_scheduler/migration_hook', 'pending', '2020-03-19 17:14:31', '2020-03-19 17:14:31', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1584638071;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1584638071;}', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 45, 'действие создано', '2020-03-19 16:49:51', '2020-03-19 16:49:51'),
(2, 45, 'действие началось через Async Request', '2020-03-19 16:49:55', '2020-03-19 16:49:55'),
(3, 45, 'действие завершено через Async Request', '2020-03-19 16:49:55', '2020-03-19 16:49:55'),
(4, 46, 'действие создано', '2020-03-19 17:14:31', '2020-03-19 17:14:31');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.kunstnik.com/itdelo', 'yes'),
(2, 'home', 'http://www.kunstnik.com/itdelo', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 't030626@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:21:\"polylang/polylang.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:21:\"safe-svg/safe-svg.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:65:\"C:\\xampp\\htdocs\\itdelo/wp-content/themes/business-ezone/index.php\";i:1;s:66:\"C:\\xampp\\htdocs\\itdelo/wp-content/themes/business-ezone/header.php\";i:2;s:73:\"C:\\xampp\\htdocs\\itdelo/wp-content/themes/business-ezone/template-home.php\";i:4;s:65:\"C:\\xampp\\htdocs\\itdelo/wp-content/themes/business-ezone/style.css\";i:5;s:70:\"C:\\xampp\\htdocs\\itdelo/wp-content/themes/business-ezone/front-page.php\";}', 'no'),
(40, 'template', 'business-ezone', 'yes'),
(41, 'stylesheet', 'business-ezone', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:7:{i:2;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:4;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:6;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '14', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '261', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1615203391', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:10:\"Поиск\";}i:4;a:1:{s:5:\"title\";s:10:\"Поиск\";}}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:13:\"right-sidebar\";a:3:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:9:{i:1607082594;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607082632;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607083971;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607109170;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607109171;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1607109189;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607109190;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607109191;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584041287;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-4\";i:1;s:8:\"search-3\";i:2;s:6:\"text-5\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-6\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-7\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(143, 'can_compress_scripts', '1', 'no'),
(149, 'theme_mods_twentyseventeen', 'a:7:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}s:7:\"panel_1\";i:15;s:7:\"panel_2\";i:7;s:7:\"panel_3\";i:9;s:7:\"panel_4\";i:8;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584082701;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-4\";i:1;s:8:\"search-3\";i:2;s:6:\"text-5\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-6\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-7\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(151, 'current_theme', 'Business Ezone', 'yes'),
(152, 'theme_switched', '', 'yes'),
(153, 'theme_switched_via_customizer', '', 'yes'),
(154, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(155, 'customize_stashed_theme_mods', 'a:1:{s:12:\"twentytwenty\";a:3:{s:27:\"nav_menu_locations[primary]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-1;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-03-12 19:26:56\";}s:28:\"nav_menu_locations[expanded]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-5;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-03-12 19:26:56\";}s:26:\"nav_menu_locations[social]\";a:5:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-9;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-03-12 19:26:56\";}}}', 'no'),
(166, 'theme_mods_viktor-lite', 'a:9:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"mainmenu\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:6:\"ffffff\";s:11:\"brand_color\";s:7:\"#ff9e3d\";s:12:\"header_image\";s:21:\"random-uploaded-image\";s:16:\"v_copyright_text\";s:25:\"Copyright by kunstnik.com\";s:15:\"footer_bg_color\";s:7:\"#020202\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584084608;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:4:{i:0;s:6:\"text-4\";i:1;s:8:\"search-3\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}}}}', 'yes'),
(190, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584648269;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:4:{i:0;s:6:\"text-4\";i:1;s:8:\"search-3\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}}}}', 'yes'),
(205, 'recently_activated', 'a:0:{}', 'yes'),
(212, 'action_scheduler_hybrid_store_demarkation', '44', 'yes'),
(213, 'schema-ActionScheduler_StoreSchema', '3.0.1584636585', 'yes'),
(214, 'schema-ActionScheduler_LoggerSchema', '2.0.1584636585', 'yes'),
(217, 'woocommerce_store_address', '', 'yes'),
(218, 'woocommerce_store_address_2', '', 'yes'),
(219, 'woocommerce_store_city', '', 'yes'),
(220, 'woocommerce_default_country', 'GB', 'yes'),
(221, 'woocommerce_store_postcode', '', 'yes'),
(222, 'woocommerce_allowed_countries', 'all', 'yes'),
(223, 'woocommerce_all_except_countries', '', 'yes'),
(224, 'woocommerce_specific_allowed_countries', '', 'yes'),
(225, 'woocommerce_ship_to_countries', '', 'yes'),
(226, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(227, 'woocommerce_default_customer_address', 'base', 'yes'),
(228, 'woocommerce_calc_taxes', 'no', 'yes'),
(229, 'woocommerce_enable_coupons', 'yes', 'yes'),
(230, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(231, 'woocommerce_currency', 'GBP', 'yes'),
(232, 'woocommerce_currency_pos', 'left', 'yes'),
(233, 'woocommerce_price_thousand_sep', ',', 'yes'),
(234, 'woocommerce_price_decimal_sep', '.', 'yes'),
(235, 'woocommerce_price_num_decimals', '2', 'yes'),
(236, 'woocommerce_shop_page_id', '', 'yes'),
(237, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(238, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(239, 'woocommerce_placeholder_image', '44', 'yes'),
(240, 'woocommerce_weight_unit', 'kg', 'yes'),
(241, 'woocommerce_dimension_unit', 'cm', 'yes'),
(242, 'woocommerce_enable_reviews', 'yes', 'yes'),
(243, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(244, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(245, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(246, 'woocommerce_review_rating_required', 'yes', 'no'),
(247, 'woocommerce_manage_stock', 'yes', 'yes'),
(248, 'woocommerce_hold_stock_minutes', '60', 'no'),
(249, 'woocommerce_notify_low_stock', 'yes', 'no'),
(250, 'woocommerce_notify_no_stock', 'yes', 'no'),
(251, 'woocommerce_stock_email_recipient', 't030626@gmail.com', 'no'),
(252, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(253, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(254, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(255, 'woocommerce_stock_format', '', 'yes'),
(256, 'woocommerce_file_download_method', 'force', 'no'),
(257, 'woocommerce_downloads_require_login', 'no', 'no'),
(258, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(259, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(260, 'woocommerce_prices_include_tax', 'no', 'yes'),
(261, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(262, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(263, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(264, 'woocommerce_tax_classes', '', 'yes'),
(265, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(266, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(267, 'woocommerce_price_display_suffix', '', 'yes'),
(268, 'woocommerce_tax_total_display', 'itemized', 'no'),
(269, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(270, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(271, 'woocommerce_ship_to_destination', 'billing', 'no'),
(272, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(273, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(274, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(275, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(276, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(277, 'woocommerce_registration_generate_username', 'yes', 'no'),
(278, 'woocommerce_registration_generate_password', 'yes', 'no'),
(279, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(280, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(281, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(282, 'woocommerce_registration_privacy_policy_text', 'Ваши личные данные будут использоваться для упрощения вашей работы с сайтом, управления доступом к вашей учётной записи и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(283, 'woocommerce_checkout_privacy_policy_text', 'Ваши личные данные будут использоваться для обработки ваших заказов, упрощения вашей работы с сайтом и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(284, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(285, 'woocommerce_trash_pending_orders', '', 'no'),
(286, 'woocommerce_trash_failed_orders', '', 'no'),
(287, 'woocommerce_trash_cancelled_orders', '', 'no'),
(288, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(289, 'woocommerce_email_from_name', 'IT delo', 'no'),
(290, 'woocommerce_email_from_address', 't030626@gmail.com', 'no'),
(291, 'woocommerce_email_header_image', '', 'no'),
(292, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(293, 'woocommerce_email_base_color', '#96588a', 'no'),
(294, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(295, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(296, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(297, 'woocommerce_cart_page_id', '', 'no'),
(298, 'woocommerce_checkout_page_id', '', 'no'),
(299, 'woocommerce_myaccount_page_id', '', 'no'),
(300, 'woocommerce_terms_page_id', '', 'no'),
(301, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(302, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(303, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(304, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(305, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(306, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(307, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(308, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(309, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(310, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(311, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(312, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(313, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(314, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(315, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(316, 'woocommerce_api_enabled', 'no', 'yes'),
(317, 'woocommerce_allow_tracking', 'no', 'no'),
(318, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(319, 'woocommerce_single_image_width', '600', 'yes'),
(320, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(321, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(322, 'woocommerce_demo_store', 'no', 'no'),
(323, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(324, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(325, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(326, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(327, 'product_cat_children', 'a:0:{}', 'yes'),
(328, 'default_product_cat', '18', 'yes'),
(329, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:\"install\";i:1;s:20:\"no_secure_connection\";}', 'yes'),
(332, 'woocommerce_version', '4.0.0', 'yes'),
(333, 'woocommerce_db_version', '4.0.0', 'yes'),
(334, 'action_scheduler_lock_async-request-runner', '1584638129', 'yes'),
(335, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"ZpNU9ddrFKYOJ9GaEvQueqNWmVSCffjY\";}', 'yes'),
(336, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(337, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(338, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(339, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(340, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(341, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(342, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(343, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(344, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(345, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(346, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(347, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(348, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(349, 'woocommerce_onboarding_opt_in', 'yes', 'yes'),
(353, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(357, 'woocommerce_admin_version', '1.0.0', 'yes'),
(358, 'woocommerce_admin_install_timestamp', '1584636595', 'yes'),
(359, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(361, 'woocommerce_admin_last_orders_milestone', '0', 'yes'),
(362, 'woocommerce_setup_ab_wc_admin_onboarding', 'b', 'yes'),
(364, 'woocommerce_onboarding_profile', 'a:2:{s:9:\"completed\";b:0;s:7:\"plugins\";s:9:\"installed\";}', 'yes'),
(424, 'do_activate', '0', 'yes'),
(574, 'theme_mods_geschaft-business', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584908281;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}s:9:\"sidebar-2\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(577, 'theme_mods_airi', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584648558;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:4:{i:0;s:6:\"text-4\";i:1;s:8:\"search-3\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(578, 'widget_athemes_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(579, 'elementor_disable_color_schemes', 'yes', 'yes'),
(580, 'elementor_disable_typography_schemes', 'yes', 'yes'),
(582, 'theme_mods_business-ezone', 'a:75:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:22;s:9:\"secondary\";i:28;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584908065;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:13:\"right-sidebar\";a:4:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}}}s:11:\"custom_logo\";i:264;s:28:\"business_ezone_slider_post_2\";s:3:\"238\";s:28:\"business_ezone_slider_post_3\";s:3:\"240\";s:31:\"business_ezone_slider_animation\";s:5:\"slide\";s:29:\"business_ezone_feature_post_2\";s:3:\"272\";s:29:\"business_ezone_feature_post_3\";s:3:\"274\";s:29:\"business_ezone_feature_icon_1\";s:11:\"fa fa-phone\";s:29:\"business_ezone_feature_icon_2\";s:13:\"fa fa-clock-o\";s:29:\"business_ezone_feature_icon_3\";s:15:\"fa fa-ambulance\";s:33:\"business_ezone_ed_welcome_section\";b:1;s:34:\"business_ezone_ed_featured_section\";b:1;s:30:\"business_ezone_ed_blog_section\";b:0;s:29:\"business_ezone_service_icon_1\";s:13:\"fa fa-desktop\";s:29:\"business_ezone_service_post_2\";s:2:\"75\";s:29:\"business_ezone_service_icon_2\";s:13:\"fa fa-sitemap\";s:29:\"business_ezone_service_post_3\";s:2:\"72\";s:29:\"business_ezone_service_icon_3\";s:12:\"fa fa-wrench\";s:29:\"business_ezone_service_post_4\";s:2:\"69\";s:29:\"business_ezone_service_icon_4\";s:16:\"fa fa-get-pocket\";s:29:\"business_ezone_service_post_6\";s:0:\"\";s:28:\"business_ezone_ed_breadcrumb\";b:0;s:16:\"background_color\";s:6:\"ffffff\";s:29:\"business_ezone_ed_cta_section\";b:1;s:38:\"business_ezone_ed_testimonials_section\";b:0;s:37:\"business_ezone_portfolio_section_page\";s:3:\"117\";s:29:\"business_ezone_service_post_5\";s:0:\"\";s:39:\"business_ezone_service_section_readmore\";s:47:\"Подробнее о наших услугах\";s:30:\"business_ezone_slider_readmore\";s:0:\"\";s:34:\"business_ezone_slider_contact_text\";s:31:\"Отправить запрос\";s:33:\"business_ezone_slider_contact_url\";s:25:\"/itdelo/контакты/\";s:31:\"business_ezone_cta_section_page\";s:3:\"196\";s:37:\"business_ezone_cta_section_button_one\";s:9:\"О нас\";s:37:\"business_ezone_cta_section_button_two\";s:31:\"Отправить запрос\";s:33:\"business_ezone_cta_button_one_url\";s:18:\"/itdelo/о-нас/\";s:33:\"business_ezone_cta_button_two_url\";s:25:\"/itdelo/контакты/\";s:35:\"business_ezone_ed_portfolio_section\";b:1;s:36:\"business_ezone_blog_section_readmore\";s:26:\"Перейти в блог\";s:31:\"business_ezone_blog_section_url\";s:17:\"/itdelo/блог/\";s:33:\"business_ezone_blog_section_title\";s:3:\"156\";s:35:\"business_ezone_service_section_page\";s:3:\"160\";s:34:\"business_ezone_service_section_url\";s:32:\"/itdelo/наши%20услуги/\";s:36:\"business_ezone_blog_section_category\";s:2:\"20\";s:29:\"business_ezone_feature_post_1\";s:3:\"270\";s:28:\"business_ezone_slider_post_1\";s:3:\"242\";s:26:\"business_ezone_slider_auto\";b:1;s:27:\"business_ezone_slider_pager\";b:1;s:29:\"business_ezone_slider_caption\";b:1;s:28:\"business_ezone_slider_speeds\";i:4000;s:27:\"business_ezone_slider_pause\";i:6;s:29:\"business_ezone_service_post_1\";s:2:\"78\";s:31:\"business_ezone_portfolio_post_2\";s:0:\"\";s:31:\"business_ezone_portfolio_post_3\";s:0:\"\";s:31:\"business_ezone_portfolio_post_4\";s:0:\"\";s:31:\"business_ezone_portfolio_post_5\";s:0:\"\";s:31:\"business_ezone_portfolio_post_6\";s:0:\"\";s:41:\"business_ezone_portfolio_section_readmore\";s:0:\"\";s:36:\"business_ezone_portfolio_section_url\";s:32:\"/itdelo/наши%20работы/\";s:34:\"business_ezone_teams_section_title\";s:3:\"210\";s:28:\"business_ezone_team_category\";s:2:\"23\";s:41:\"business_ezone_testimonials_section_title\";s:3:\"234\";s:35:\"business_ezone_testimonial_category\";s:2:\"24\";s:24:\"business_ezone_ed_social\";b:0;s:23:\"business_ezone_facebook\";s:0:\"\";s:22:\"business_ezone_twitter\";s:0:\"\";s:23:\"business_ezone_linkedin\";s:0:\"\";s:24:\"business_ezone_instagram\";s:0:\"\";s:21:\"business_ezone_google\";s:0:\"\";s:31:\"business_ezone_portfolio_post_1\";s:0:\"\";s:31:\"business_ezone_ed_teams_section\";b:0;s:24:\"business_ezone_pinterest\";s:0:\"\";s:22:\"business_ezone_youtube\";s:0:\"\";}', 'yes'),
(583, 'widget_business_ezone_featured_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(584, 'widget_business_ezone_listed_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(585, 'widget_business_ezone_social_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(611, 'theme_mods_generatepress', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"font_body_category\";s:10:\"sans-serif\";s:18:\"font_body_variants\";s:70:\"300,300italic,regular,italic,600,600italic,700,700italic,800,800italic\";s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584907354;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-6\";}s:6:\"header\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:8:\"footer-5\";a:0:{}s:10:\"footer-bar\";a:0:{}s:7:\"top-bar\";a:0:{}}}}', 'yes'),
(612, 'generate_settings', 'a:42:{s:10:\"hide_title\";s:0:\"\";s:12:\"hide_tagline\";s:0:\"\";s:4:\"logo\";s:0:\"\";s:25:\"inline_logo_site_branding\";b:0;s:11:\"retina_logo\";s:0:\"\";s:10:\"logo_width\";s:0:\"\";s:13:\"top_bar_width\";s:4:\"full\";s:19:\"top_bar_inner_width\";s:9:\"contained\";s:17:\"top_bar_alignment\";s:5:\"right\";s:15:\"container_width\";s:4:\"1100\";s:19:\"container_alignment\";s:5:\"boxes\";s:21:\"header_layout_setting\";s:12:\"fluid-header\";s:18:\"header_inner_width\";s:9:\"contained\";s:21:\"nav_alignment_setting\";s:4:\"left\";s:24:\"header_alignment_setting\";s:4:\"left\";s:18:\"nav_layout_setting\";s:9:\"fluid-nav\";s:15:\"nav_inner_width\";s:9:\"contained\";s:20:\"nav_position_setting\";s:16:\"nav-below-header\";s:14:\"nav_drop_point\";s:0:\"\";s:17:\"nav_dropdown_type\";s:5:\"hover\";s:22:\"nav_dropdown_direction\";s:5:\"right\";s:10:\"nav_search\";s:7:\"disable\";s:22:\"content_layout_setting\";s:19:\"separate-containers\";s:14:\"layout_setting\";s:13:\"right-sidebar\";s:19:\"blog_layout_setting\";s:13:\"right-sidebar\";s:21:\"single_layout_setting\";s:13:\"right-sidebar\";s:12:\"post_content\";s:4:\"full\";s:21:\"footer_layout_setting\";s:12:\"fluid-footer\";s:18:\"footer_inner_width\";s:9:\"contained\";s:21:\"footer_widget_setting\";s:1:\"3\";s:20:\"footer_bar_alignment\";s:5:\"right\";s:11:\"back_to_top\";s:0:\"\";s:16:\"background_color\";s:7:\"#efefef\";s:10:\"text_color\";s:7:\"#3a3a3a\";s:10:\"link_color\";s:7:\"#1e73be\";s:16:\"link_color_hover\";s:7:\"#000000\";s:18:\"link_color_visited\";s:0:\"\";s:23:\"font_awesome_essentials\";b:0;s:5:\"icons\";s:4:\"font\";s:11:\"combine_css\";b:0;s:17:\"dynamic_css_cache\";b:0;s:9:\"font_body\";s:9:\"Open Sans\";}', 'yes'),
(613, 'generate_migration_settings', 'a:5:{s:11:\"combine_css\";s:4:\"done\";s:31:\"font_awesome_essentials_updated\";s:4:\"true\";s:22:\"skip_dynamic_css_cache\";s:4:\"true\";s:20:\"default_font_updated\";s:4:\"true\";s:25:\"blog_post_content_preview\";s:4:\"true\";}', 'yes'),
(614, 'generate_dynamic_css_output', 'body{background-color:#efefef;color:#3a3a3a;}a, a:visited{color:#1e73be;}a:hover, a:focus, a:active{color:#000000;}body .grid-container{max-width:1100px;}.wp-block-group__inner-container{max-width:1100px;margin-left:auto;margin-right:auto;}body, button, input, select, textarea{font-family:-apple-system, system-ui, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\";}.entry-content > [class*=\"wp-block-\"]:not(:last-child){margin-bottom:1.5em;}.main-navigation .main-nav ul ul li a{font-size:14px;}@media (max-width:768px){.main-title{font-size:30px;}h1{font-size:30px;}h2{font-size:25px;}}.top-bar{background-color:#636363;color:#ffffff;}.top-bar a,.top-bar a:visited{color:#ffffff;}.top-bar a:hover{color:#303030;}.site-header{background-color:#ffffff;color:#3a3a3a;}.site-header a,.site-header a:visited{color:#3a3a3a;}.main-title a,.main-title a:hover,.main-title a:visited{color:#222222;}.site-description{color:#757575;}.main-navigation,.main-navigation ul ul{background-color:#222222;}.main-navigation .main-nav ul li a,.menu-toggle{color:#ffffff;}.main-navigation .main-nav ul li:hover > a,.main-navigation .main-nav ul li:focus > a, .main-navigation .main-nav ul li.sfHover > a{color:#ffffff;background-color:#3f3f3f;}button.menu-toggle:hover,button.menu-toggle:focus,.main-navigation .mobile-bar-items a,.main-navigation .mobile-bar-items a:hover,.main-navigation .mobile-bar-items a:focus{color:#ffffff;}.main-navigation .main-nav ul li[class*=\"current-menu-\"] > a{color:#ffffff;background-color:#3f3f3f;}.main-navigation .main-nav ul li[class*=\"current-menu-\"] > a:hover,.main-navigation .main-nav ul li[class*=\"current-menu-\"].sfHover > a{color:#ffffff;background-color:#3f3f3f;}.navigation-search input[type=\"search\"],.navigation-search input[type=\"search\"]:active, .navigation-search input[type=\"search\"]:focus, .main-navigation .main-nav ul li.search-item.active > a{color:#ffffff;background-color:#3f3f3f;}.main-navigation ul ul{background-color:#3f3f3f;}.main-navigation .main-nav ul ul li a{color:#ffffff;}.main-navigation .main-nav ul ul li:hover > a,.main-navigation .main-nav ul ul li:focus > a,.main-navigation .main-nav ul ul li.sfHover > a{color:#ffffff;background-color:#4f4f4f;}.main-navigation .main-nav ul ul li[class*=\"current-menu-\"] > a{color:#ffffff;background-color:#4f4f4f;}.main-navigation .main-nav ul ul li[class*=\"current-menu-\"] > a:hover,.main-navigation .main-nav ul ul li[class*=\"current-menu-\"].sfHover > a{color:#ffffff;background-color:#4f4f4f;}.separate-containers .inside-article, .separate-containers .comments-area, .separate-containers .page-header, .one-container .container, .separate-containers .paging-navigation, .inside-page-header{background-color:#ffffff;}.entry-meta{color:#595959;}.entry-meta a,.entry-meta a:visited{color:#595959;}.entry-meta a:hover{color:#1e73be;}.sidebar .widget{background-color:#ffffff;}.sidebar .widget .widget-title{color:#000000;}.footer-widgets{background-color:#ffffff;}.footer-widgets .widget-title{color:#000000;}.site-info{color:#ffffff;background-color:#222222;}.site-info a,.site-info a:visited{color:#ffffff;}.site-info a:hover{color:#606060;}.footer-bar .widget_nav_menu .current-menu-item a{color:#606060;}input[type=\"text\"],input[type=\"email\"],input[type=\"url\"],input[type=\"password\"],input[type=\"search\"],input[type=\"tel\"],input[type=\"number\"],textarea,select{color:#666666;background-color:#fafafa;border-color:#cccccc;}input[type=\"text\"]:focus,input[type=\"email\"]:focus,input[type=\"url\"]:focus,input[type=\"password\"]:focus,input[type=\"search\"]:focus,input[type=\"tel\"]:focus,input[type=\"number\"]:focus,textarea:focus,select:focus{color:#666666;background-color:#ffffff;border-color:#bfbfbf;}button,html input[type=\"button\"],input[type=\"reset\"],input[type=\"submit\"],a.button,a.button:visited,a.wp-block-button__link:not(.has-background){color:#ffffff;background-color:#666666;}button:hover,html input[type=\"button\"]:hover,input[type=\"reset\"]:hover,input[type=\"submit\"]:hover,a.button:hover,button:focus,html input[type=\"button\"]:focus,input[type=\"reset\"]:focus,input[type=\"submit\"]:focus,a.button:focus,a.wp-block-button__link:not(.has-background):active,a.wp-block-button__link:not(.has-background):focus,a.wp-block-button__link:not(.has-background):hover{color:#ffffff;background-color:#3f3f3f;}.generate-back-to-top,.generate-back-to-top:visited{background-color:rgba( 0,0,0,0.4 );color:#ffffff;}.generate-back-to-top:hover,.generate-back-to-top:focus{background-color:rgba( 0,0,0,0.6 );color:#ffffff;}.entry-content .alignwide, body:not(.no-sidebar) .entry-content .alignfull{margin-left:-40px;width:calc(100% + 80px);max-width:calc(100% + 80px);}.rtl .menu-item-has-children .dropdown-menu-toggle{padding-left:20px;}.rtl .main-navigation .main-nav ul li.menu-item-has-children > a{padding-right:20px;}@media (max-width:768px){.separate-containers .inside-article, .separate-containers .comments-area, .separate-containers .page-header, .separate-containers .paging-navigation, .one-container .site-content, .inside-page-header, .wp-block-group__inner-container{padding:30px;}.entry-content .alignwide, body:not(.no-sidebar) .entry-content .alignfull{margin-left:-30px;width:calc(100% + 60px);max-width:calc(100% + 60px);}}.one-container .sidebar .widget{padding:0px;}', 'yes'),
(615, 'generate_dynamic_css_cached_version', '2.4.2', 'yes'),
(616, 'generate_db_version', '2.4.2', 'no'),
(617, 'generate_update_core_typography', 'true', 'yes'),
(619, 'theme_mods_the-computer-repair', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584907482;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-6\";}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:12:\"social-links\";a:0:{}s:24:\"woocommerce-shop-sidebar\";a:0:{}s:26:\"woocommerce-single-sidebar\";a:0:{}}}}', 'yes'),
(620, 'widget_the_computer_repair_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(622, 'theme_mods_business-point', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584912081;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}s:21:\"home-page-widget-area\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}s:13:\"site_identity\";s:9:\"logo-desc\";s:11:\"custom_logo\";i:56;s:13:\"slider_status\";b:1;s:13:\"slider_page_1\";i:14;}', 'yes'),
(623, 'widget_business-point-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(624, 'widget_business-point-latest-news', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(625, 'widget_business-point-cta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(626, 'widget_business-point-services', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(627, 'widget_business-point-newsletter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(628, 'widget_business-point-advanced-recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(631, 'theme_mods_ample-business', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584907615;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}s:16:\"homepage_widgets\";a:0:{}s:10:\"footerinfo\";a:0:{}s:7:\"footer1\";a:0:{}s:7:\"footer2\";a:0:{}s:7:\"footer3\";a:0:{}s:7:\"footer4\";a:0:{}}}}', 'yes'),
(632, 'widget_business_services_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(633, 'widget_ample-business-quote-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(634, 'widget_business_team_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(635, 'widget_business_testimonials_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(636, 'widget_ample-business-recent-post-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(637, 'widget_ample-business-our-work-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(638, 'widget_ample_business-info-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(639, 'widget_ample-business-events-post-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(640, 'widget_ample-business-notice-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(643, 'theme_mods_expert-carpenter', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584907663;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(645, 'theme_mods_clean-enterprise', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584907751;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}}}}', 'yes'),
(646, 'widget_ct-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(648, 'theme_mods_it-solutions', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584907809;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}s:4:\"fc-1\";a:0:{}s:4:\"fc-2\";a:0:{}s:4:\"fc-3\";a:0:{}s:4:\"fc-4\";a:0:{}}}}', 'yes'),
(650, 'theme_mods_multi-mobile-app', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584907920;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(652, 'theme_mods_moesia', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584907969;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}}}}', 'yes'),
(654, 'theme_mods_biz-ezone', 'a:1:{i:0;b:0;}', 'yes'),
(658, 'theme_mods_futurio', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584908111;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:6:\"text-7\";i:9;s:8:\"search-4\";}s:15:\"futurio-sidebar\";a:4:{i:0;s:8:\"search-3\";i:1;s:6:\"text-4\";i:2;s:6:\"text-5\";i:3;s:6:\"text-6\";}s:23:\"futurio-archive-sidebar\";a:0:{}s:17:\"futurio-menu-area\";a:0:{}s:19:\"futurio-footer-area\";a:0:{}}}}', 'yes'),
(763, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.8\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1585044876;s:7:\"version\";s:5:\"5.1.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(811, 'scholarship_theme_installed_time', '1585130869', 'yes'),
(812, 'widget_scholarship_call_to_action', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(813, 'widget_scholarship_grid_layout', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(814, 'widget_scholarship_latest_blog', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(815, 'widget_scholarship_portfolio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(816, 'widget_scholarship_sponsors', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(817, 'widget_scholarship_team', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(818, 'widget_scholarship_testimonials', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(819, 'theme_mods_scholarship', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(1706, 'polylang', 'a:16:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";b:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"2.7.2\";s:16:\"first_activation\";i:1587146530;s:12:\"default_lang\";s:2:\"ru\";s:9:\"nav_menus\";a:1:{s:14:\"business-ezone\";a:2:{s:7:\"primary\";a:2:{s:2:\"ru\";i:22;s:2:\"en\";i:45;}s:9:\"secondary\";a:2:{s:2:\"ru\";i:28;s:2:\"en\";i:28;}}}s:16:\"previous_version\";s:5:\"2.7.1\";}', 'yes'),
(1707, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(1708, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1713, 'rewrite_rules', 'a:174:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:52:\"(en)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(en)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"(en)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(en)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"(en)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"(en)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"(en)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"(en)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"(en)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=ru&post_format=$matches[1]&feed=$matches[2]\";s:45:\"(en)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=ru&post_format=$matches[1]&feed=$matches[2]\";s:26:\"(en)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=ru&post_format=$matches[1]&embed=true\";s:38:\"(en)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=ru&post_format=$matches[1]&paged=$matches[2]\";s:20:\"(en)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=ru&post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:37:\"(en)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=ru&&feed=$matches[1]\";s:32:\"(en)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=ru&&feed=$matches[1]\";s:13:\"(en)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=ru&&embed=true\";s:25:\"(en)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=ru&&paged=$matches[1]\";s:32:\"(en)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?lang=$matches[1]&&page_id=14&cpage=$matches[2]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:47:\"index.php?lang=ru&&page_id=14&cpage=$matches[1]\";s:7:\"(en)/?$\";s:26:\"index.php?lang=$matches[1]\";s:46:\"(en)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=ru&&feed=$matches[1]&withcomments=1\";s:41:\"(en)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=ru&&feed=$matches[1]&withcomments=1\";s:22:\"(en)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=ru&&embed=true\";s:49:\"(en)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=ru&s=$matches[1]&feed=$matches[2]\";s:44:\"(en)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=ru&s=$matches[1]&feed=$matches[2]\";s:25:\"(en)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=ru&s=$matches[1]&embed=true\";s:37:\"(en)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=ru&s=$matches[1]&paged=$matches[2]\";s:19:\"(en)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=ru&s=$matches[1]\";s:52:\"(en)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=ru&author_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=ru&author_name=$matches[1]&feed=$matches[2]\";s:28:\"(en)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=ru&author_name=$matches[1]&embed=true\";s:40:\"(en)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=ru&author_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=ru&author_name=$matches[1]\";s:74:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"(en)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"(en)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"(en)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"(en)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"(en)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"(en)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"(en)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"(en)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"(en)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:63:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:73:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:93:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:69:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:108:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:102:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&tb=1\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:82:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:77:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:70:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&paged=$matches[6]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:77:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&cpage=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:66:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&page=$matches[6]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:52:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:62:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:82:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:58:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&cpage=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:43:\"(en)/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:32:\"(en)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(en)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(en)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(en)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(en)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(en)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(en)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:25:\"(en)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:45:\"(en)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:40:\"(en)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:33:\"(en)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:40:\"(en)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:29:\"(en)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(1715, 'category_children', 'a:0:{}', 'yes'),
(1722, 'pll_dismissed_notices', 'a:1:{i:0;s:6:\"wizard\";}', 'yes'),
(2142, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"t030626@gmail.com\";s:7:\"version\";s:5:\"5.3.6\";s:9:\"timestamp\";i:1604129239;}', 'no'),
(3736, '_transient_is_multi_author', '0', 'yes'),
(3747, '_transient_business_ezone_categories', '2', 'yes'),
(3785, '_transient_pll_languages_list', 'a:2:{i:0;a:26:{s:7:\"term_id\";i:29;s:4:\"name\";s:14:\"Русский\";s:4:\"slug\";s:2:\"ru\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:29;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"ru_RU\";s:6:\"parent\";i:0;s:5:\"count\";i:56;s:10:\"tl_term_id\";i:30;s:19:\"tl_term_taxonomy_id\";i:30;s:8:\"tl_count\";i:8;s:6:\"locale\";R:9;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"ru-RU\";s:8:\"facebook\";s:5:\"ru_RU\";s:8:\"flag_url\";s:72:\"https://www.kunstnik.com/itdelo/wp-content/plugins/polylang/flags/ru.png\";s:4:\"flag\";s:663:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAE2SURBVHjaYvz69T8DAvz79w9CQVj/0MCffwwAAcQClObiAin6/x+okxHMgPCAbOb//5n+I4EXL74ABBALxGSwagTjPzbAyMgItAQggBg9Pf9nZPx//x7kjL9////9C2QAyf9//qCQQCQkxFhY+BEggFi2b/+nq8v46BEDSPQ3w+8//3//BqFfv9BJeXmQEwACCOSkP38YgHy4Bog0RN0vIOMXVOTPH6Cv/gEEEEgDxFKgHEgDXCmGDUAE1AAQQCybGZg1f/d8//XsH0jTn3+///z79RtE/v4NZfz68xfI/vOX+4/0ZoZFAAHE4gYMvD+3/v2+h91wCANo9Z+/jH9VxBkYAAKIBRg9TL//MEhKAuWAogxgZzGC2CCfgUggAoYdGAEVAwQQ41egu5AQAyoXTQoIAAIMAD+JZR7YOGEWAAAAAElFTkSuQmCC\" title=\"Русский\" alt=\"Русский\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:32:\"https://www.kunstnik.com/itdelo/\";s:10:\"search_url\";s:32:\"https://www.kunstnik.com/itdelo/\";s:4:\"host\";N;s:5:\"mo_id\";s:3:\"288\";s:13:\"page_on_front\";i:14;s:14:\"page_for_posts\";b:0;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"ru\";}i:1;a:26:{s:7:\"term_id\";i:32;s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:32;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"en_GB\";s:6:\"parent\";i:0;s:5:\"count\";i:16;s:10:\"tl_term_id\";i:33;s:19:\"tl_term_taxonomy_id\";i:33;s:8:\"tl_count\";i:1;s:6:\"locale\";R:35;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-GB\";s:8:\"facebook\";s:5:\"en_GB\";s:8:\"flag_url\";s:72:\"https://www.kunstnik.com/itdelo/wp-content/plugins/polylang/flags/gb.png\";s:4:\"flag\";s:889:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAflJREFUeNpinDRzn5qN3uFDt16+YWBg+Pv339+KGN0rbVP+//2rW5tf0Hfy/2+mr99+yKpyOl3Ydt8njEWIn8f9zj639NC7j78eP//8739GVUUhNUNuhl8//ysKeZrJ/v7z10Zb2PTQTIY1XZO2Xmfad+f7XgkXxuUrVB6cjPVXef78JyMjA8PFuwyX7gAZj97+T2e9o3d4BWNp84K1NzubTjAB3fH0+fv6N3qP/ir9bW6ozNQCijB8/8zw/TuQ7r4/ndvN5mZgkpPXiis3Pv34+ZPh5t23//79Rwehof/9/NDEgMrOXHvJcrllgpoRN8PFOwy/fzP8+gUlgZI/f/5xcPj/69e/37//AUX+/mXRkN555gsOG2xt/5hZQMwF4r9///75++f3nz8nr75gSms82jfvQnT6zqvXPjC8e/srJQHo9P9fvwNtAHmG4f8zZ6dDc3bIyM2LTNlsbtfM9OPHH3FhtqUz3eXX9H+cOy9ZMB2o6t/Pn0DHMPz/b+2wXGTvPlPGFxdcD+mZyjP8+8MUE6sa7a/xo6Pykn1s4zdzIZ6///8zMGpKM2pKAB0jqy4UE7/msKat6Jw5mafrsxNtWZ6/fjvNLW29qv25pQd///n+5+/fxDDVbcc//P/zx/36m5Ub9zL8+7t66yEROcHK7q5bldMBAgwADcRBCuVLfoEAAAAASUVORK5CYII=\" title=\"English\" alt=\"English\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:51:\"https://www.kunstnik.com/itdelo/en/it-delo-english/\";s:10:\"search_url\";s:35:\"https://www.kunstnik.com/itdelo/en/\";s:4:\"host\";N;s:5:\"mo_id\";s:3:\"289\";s:13:\"page_on_front\";i:290;s:14:\"page_for_posts\";b:0;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"gb\";}}', 'yes'),
(3792, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.5.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.2\";s:7:\"version\";s:5:\"5.5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.4\";s:7:\"version\";s:5:\"5.4.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1607075909;s:15:\"version_checked\";s:5:\"5.3.6\";s:12:\"translations\";a:0:{}}', 'no'),
(4055, '_site_transient_timeout_theme_roots', '1607077714', 'no'),
(4056, '_site_transient_theme_roots', 'a:49:{s:4:\"airi\";s:7:\"/themes\";s:14:\"ample-business\";s:7:\"/themes\";s:7:\"arowana\";s:7:\"/themes\";s:9:\"biz-ezone\";s:7:\"/themes\";s:8:\"bizwhoop\";s:7:\"/themes\";s:21:\"builders-landing-page\";s:7:\"/themes\";s:14:\"business-ezone\";s:7:\"/themes\";s:14:\"business-point\";s:7:\"/themes\";s:10:\"businessup\";s:7:\"/themes\";s:7:\"chaplin\";s:7:\"/themes\";s:16:\"clean-enterprise\";s:7:\"/themes\";s:25:\"construction-landing-page\";s:7:\"/themes\";s:14:\"corporate-plus\";s:7:\"/themes\";s:15:\"di-multipurpose\";s:7:\"/themes\";s:9:\"empowerwp\";s:7:\"/themes\";s:13:\"envo-business\";s:7:\"/themes\";s:16:\"expert-carpenter\";s:7:\"/themes\";s:6:\"fabify\";s:7:\"/themes\";s:10:\"fixit-lite\";s:7:\"/themes\";s:7:\"futurio\";s:7:\"/themes\";s:13:\"generatepress\";s:7:\"/themes\";s:17:\"geschaft-business\";s:7:\"/themes\";s:9:\"healthexx\";s:7:\"/themes\";s:12:\"it-solutions\";s:7:\"/themes\";s:6:\"kahuna\";s:7:\"/themes\";s:13:\"law-firm-lite\";s:7:\"/themes\";s:9:\"mesmerize\";s:7:\"/themes\";s:16:\"minimal-business\";s:7:\"/themes\";s:6:\"moesia\";s:7:\"/themes\";s:16:\"multi-mobile-app\";s:7:\"/themes\";s:8:\"onepress\";s:7:\"/themes\";s:10:\"proficient\";s:7:\"/themes\";s:11:\"scholarship\";s:7:\"/themes\";s:5:\"short\";s:7:\"/themes\";s:6:\"specia\";s:7:\"/themes\";s:6:\"square\";s:7:\"/themes\";s:8:\"startbiz\";s:7:\"/themes\";s:8:\"startkit\";s:7:\"/themes\";s:19:\"the-computer-repair\";s:7:\"/themes\";s:7:\"trusted\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:7:\"uncover\";s:7:\"/themes\";s:11:\"viktor-lite\";s:7:\"/themes\";s:11:\"vw-one-page\";s:7:\"/themes\";s:10:\"vw-startup\";s:7:\"/themes\";s:15:\"web-development\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4057, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1607075916;s:7:\"checked\";a:49:{s:4:\"airi\";s:6:\"1.0.10\";s:14:\"ample-business\";s:5:\"1.0.2\";s:7:\"arowana\";s:6:\"2.0.10\";s:9:\"biz-ezone\";s:5:\"1.0.7\";s:8:\"bizwhoop\";s:3:\"1.6\";s:21:\"builders-landing-page\";s:5:\"1.0.4\";s:14:\"business-ezone\";s:5:\"1.1.5\";s:14:\"business-point\";s:5:\"2.1.4\";s:10:\"businessup\";s:5:\"2.2.3\";s:7:\"chaplin\";s:5:\"2.2.4\";s:16:\"clean-enterprise\";s:5:\"1.0.4\";s:25:\"construction-landing-page\";s:5:\"1.2.3\";s:14:\"corporate-plus\";s:5:\"3.0.0\";s:15:\"di-multipurpose\";s:5:\"1.0.5\";s:9:\"empowerwp\";s:6:\"1.0.12\";s:13:\"envo-business\";s:5:\"1.0.7\";s:16:\"expert-carpenter\";s:3:\"0.3\";s:6:\"fabify\";s:6:\"3.0.15\";s:10:\"fixit-lite\";s:3:\"1.1\";s:7:\"futurio\";s:6:\"1.2.17\";s:13:\"generatepress\";s:5:\"2.4.2\";s:17:\"geschaft-business\";s:3:\"0.4\";s:9:\"healthexx\";s:5:\"1.0.7\";s:12:\"it-solutions\";s:3:\"1.2\";s:6:\"kahuna\";s:7:\"1.6.0.1\";s:13:\"law-firm-lite\";s:3:\"0.4\";s:9:\"mesmerize\";s:6:\"1.6.90\";s:16:\"minimal-business\";s:5:\"1.0.7\";s:6:\"moesia\";s:4:\"1.51\";s:16:\"multi-mobile-app\";s:3:\"0.2\";s:8:\"onepress\";s:5:\"2.2.4\";s:10:\"proficient\";s:6:\"3.0.15\";s:11:\"scholarship\";s:5:\"1.1.1\";s:5:\"short\";s:3:\"1.1\";s:6:\"specia\";s:6:\"3.1.18\";s:6:\"square\";s:5:\"1.6.4\";s:8:\"startbiz\";s:5:\"2.0.9\";s:8:\"startkit\";s:6:\"2.0.13\";s:19:\"the-computer-repair\";s:5:\"0.3.3\";s:7:\"trusted\";s:3:\"1.7\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";s:7:\"uncover\";s:6:\"1.0.11\";s:11:\"viktor-lite\";s:5:\"1.2.9\";s:11:\"vw-one-page\";s:5:\"0.4.9\";s:10:\"vw-startup\";s:5:\"0.5.9\";s:15:\"web-development\";s:5:\"1.0.8\";}s:8:\"response\";a:42:{s:4:\"airi\";a:6:{s:5:\"theme\";s:4:\"airi\";s:11:\"new_version\";s:6:\"1.0.13\";s:3:\"url\";s:34:\"https://wordpress.org/themes/airi/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/airi.1.0.13.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"ample-business\";a:6:{s:5:\"theme\";s:14:\"ample-business\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/ample-business/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/ample-business.1.0.6.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.2\";}s:7:\"arowana\";a:6:{s:5:\"theme\";s:7:\"arowana\";s:11:\"new_version\";s:6:\"2.0.36\";s:3:\"url\";s:37:\"https://wordpress.org/themes/arowana/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/arowana.2.0.36.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:8:\"bizwhoop\";a:6:{s:5:\"theme\";s:8:\"bizwhoop\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:38:\"https://wordpress.org/themes/bizwhoop/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/bizwhoop.1.6.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:21:\"builders-landing-page\";a:6:{s:5:\"theme\";s:21:\"builders-landing-page\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:51:\"https://wordpress.org/themes/builders-landing-page/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/theme/builders-landing-page.1.0.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"business-point\";a:6:{s:5:\"theme\";s:14:\"business-point\";s:11:\"new_version\";s:5:\"2.1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/business-point/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/business-point.2.1.5.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:10:\"businessup\";a:6:{s:5:\"theme\";s:10:\"businessup\";s:11:\"new_version\";s:7:\"2.2.9.3\";s:3:\"url\";s:40:\"https://wordpress.org/themes/businessup/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/businessup.2.2.9.3.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:7:\"chaplin\";a:6:{s:5:\"theme\";s:7:\"chaplin\";s:11:\"new_version\";s:6:\"2.5.17\";s:3:\"url\";s:37:\"https://wordpress.org/themes/chaplin/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/chaplin.2.5.17.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.4\";}s:16:\"clean-enterprise\";a:6:{s:5:\"theme\";s:16:\"clean-enterprise\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/clean-enterprise/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/clean-enterprise.1.1.zip\";s:8:\"requires\";s:3:\"5.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:25:\"construction-landing-page\";a:6:{s:5:\"theme\";s:25:\"construction-landing-page\";s:11:\"new_version\";s:5:\"1.2.5\";s:3:\"url\";s:55:\"https://wordpress.org/themes/construction-landing-page/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/theme/construction-landing-page.1.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"corporate-plus\";a:6:{s:5:\"theme\";s:14:\"corporate-plus\";s:11:\"new_version\";s:5:\"3.0.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/corporate-plus/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/corporate-plus.3.0.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:6:\"5.6.20\";}s:15:\"di-multipurpose\";a:6:{s:5:\"theme\";s:15:\"di-multipurpose\";s:11:\"new_version\";s:5:\"1.1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/di-multipurpose/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/di-multipurpose.1.1.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";}s:16:\"expert-carpenter\";a:6:{s:5:\"theme\";s:16:\"expert-carpenter\";s:11:\"new_version\";s:5:\"0.3.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/expert-carpenter/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/theme/expert-carpenter.0.3.3.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:6:\"7.2.14\";}s:6:\"fabify\";a:6:{s:5:\"theme\";s:6:\"fabify\";s:11:\"new_version\";s:6:\"3.0.38\";s:3:\"url\";s:36:\"https://wordpress.org/themes/fabify/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/fabify.3.0.38.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:10:\"fixit-lite\";a:6:{s:5:\"theme\";s:10:\"fixit-lite\";s:11:\"new_version\";s:5:\"1.1.1\";s:3:\"url\";s:40:\"https://wordpress.org/themes/fixit-lite/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/fixit-lite.1.1.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:6:\"7.2.14\";}s:7:\"futurio\";a:6:{s:5:\"theme\";s:7:\"futurio\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:37:\"https://wordpress.org/themes/futurio/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/futurio.1.3.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"generatepress\";a:6:{s:5:\"theme\";s:13:\"generatepress\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/generatepress/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/generatepress.3.0.2.zip\";s:8:\"requires\";s:5:\"4.5.0\";s:12:\"requires_php\";s:5:\"5.4.0\";}s:17:\"geschaft-business\";a:6:{s:5:\"theme\";s:17:\"geschaft-business\";s:11:\"new_version\";s:5:\"0.4.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/geschaft-business/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/geschaft-business.0.4.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:6:\"7.2.14\";}s:9:\"healthexx\";a:6:{s:5:\"theme\";s:9:\"healthexx\";s:11:\"new_version\";s:5:\"1.0.9\";s:3:\"url\";s:39:\"https://wordpress.org/themes/healthexx/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/healthexx.1.0.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"it-solutions\";a:6:{s:5:\"theme\";s:12:\"it-solutions\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:42:\"https://wordpress.org/themes/it-solutions/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/it-solutions.1.3.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:6:\"kahuna\";a:6:{s:5:\"theme\";s:6:\"kahuna\";s:11:\"new_version\";s:7:\"1.6.1.1\";s:3:\"url\";s:36:\"https://wordpress.org/themes/kahuna/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/kahuna.1.6.1.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.3\";}s:13:\"law-firm-lite\";a:6:{s:5:\"theme\";s:13:\"law-firm-lite\";s:11:\"new_version\";s:5:\"0.4.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/law-firm-lite/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/law-firm-lite.0.4.7.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:6:\"7.2.14\";}s:9:\"mesmerize\";a:6:{s:5:\"theme\";s:9:\"mesmerize\";s:11:\"new_version\";s:6:\"1.6.97\";s:3:\"url\";s:39:\"https://wordpress.org/themes/mesmerize/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/mesmerize.1.6.97.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:6:\"moesia\";a:6:{s:5:\"theme\";s:6:\"moesia\";s:11:\"new_version\";s:4:\"1.52\";s:3:\"url\";s:36:\"https://wordpress.org/themes/moesia/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/moesia.1.52.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:16:\"multi-mobile-app\";a:6:{s:5:\"theme\";s:16:\"multi-mobile-app\";s:11:\"new_version\";s:5:\"0.2.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/multi-mobile-app/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/theme/multi-mobile-app.0.2.3.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:6:\"7.2.14\";}s:8:\"onepress\";a:6:{s:5:\"theme\";s:8:\"onepress\";s:11:\"new_version\";s:5:\"2.2.5\";s:3:\"url\";s:38:\"https://wordpress.org/themes/onepress/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/onepress.2.2.5.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:10:\"proficient\";a:6:{s:5:\"theme\";s:10:\"proficient\";s:11:\"new_version\";s:6:\"3.0.37\";s:3:\"url\";s:40:\"https://wordpress.org/themes/proficient/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/proficient.3.0.37.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:11:\"scholarship\";a:6:{s:5:\"theme\";s:11:\"scholarship\";s:11:\"new_version\";s:5:\"1.1.3\";s:3:\"url\";s:41:\"https://wordpress.org/themes/scholarship/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/scholarship.1.1.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:5:\"short\";a:6:{s:5:\"theme\";s:5:\"short\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:35:\"https://wordpress.org/themes/short/\";s:7:\"package\";s:51:\"https://downloads.wordpress.org/theme/short.1.4.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:6:\"specia\";a:6:{s:5:\"theme\";s:6:\"specia\";s:11:\"new_version\";s:6:\"3.1.50\";s:3:\"url\";s:36:\"https://wordpress.org/themes/specia/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/specia.3.1.50.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:6:\"square\";a:6:{s:5:\"theme\";s:6:\"square\";s:11:\"new_version\";s:5:\"1.8.1\";s:3:\"url\";s:36:\"https://wordpress.org/themes/square/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/square.1.8.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:8:\"startbiz\";a:6:{s:5:\"theme\";s:8:\"startbiz\";s:11:\"new_version\";s:6:\"2.0.32\";s:3:\"url\";s:38:\"https://wordpress.org/themes/startbiz/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/startbiz.2.0.32.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:8:\"startkit\";a:6:{s:5:\"theme\";s:8:\"startkit\";s:11:\"new_version\";s:6:\"2.0.54\";s:3:\"url\";s:38:\"https://wordpress.org/themes/startkit/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/startkit.2.0.54.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:19:\"the-computer-repair\";a:6:{s:5:\"theme\";s:19:\"the-computer-repair\";s:11:\"new_version\";s:5:\"0.4.5\";s:3:\"url\";s:49:\"https://wordpress.org/themes/the-computer-repair/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/theme/the-computer-repair.0.4.5.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:6:\"7.2.14\";}s:7:\"trusted\";a:6:{s:5:\"theme\";s:7:\"trusted\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:37:\"https://wordpress.org/themes/trusted/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/trusted.1.7.2.zip\";s:8:\"requires\";s:3:\"4.5\";s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.2.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:11:\"vw-one-page\";a:6:{s:5:\"theme\";s:11:\"vw-one-page\";s:11:\"new_version\";s:5:\"0.5.8\";s:3:\"url\";s:41:\"https://wordpress.org/themes/vw-one-page/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/vw-one-page.0.5.8.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:6:\"7.2.14\";}s:10:\"vw-startup\";a:6:{s:5:\"theme\";s:10:\"vw-startup\";s:11:\"new_version\";s:5:\"0.6.7\";s:3:\"url\";s:40:\"https://wordpress.org/themes/vw-startup/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/vw-startup.0.6.7.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:6:\"7.2.14\";}s:15:\"web-development\";a:6:{s:5:\"theme\";s:15:\"web-development\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/web-development/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/web-development.1.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(4058, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1607075917;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.8\";s:21:\"polylang/polylang.php\";s:5:\"2.7.2\";s:21:\"safe-svg/safe-svg.php\";s:5:\"1.9.8\";}s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"2.8.4\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.2.8.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"1.9.9\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.1.9.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=1706191\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=1706191\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=1706191\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.4\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_wp_attached_file', '2020/03/2020-landscape-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2020/03/2020-landscape-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentytwenty'),
(11, 7, '_customize_changeset_uuid', 'a67e22a7-01c5-41d6-b990-5349135b185a'),
(13, 8, '_customize_changeset_uuid', 'a67e22a7-01c5-41d6-b990-5349135b185a'),
(17, 11, '_wp_attached_file', '2020/03/espresso.jpg'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2020/03/espresso.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"espresso-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 11, '_starter_content_theme', 'twentyseventeen'),
(21, 12, '_wp_attached_file', '2020/03/sandwich.jpg'),
(22, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2020/03/sandwich.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"sandwich-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 12, '_starter_content_theme', 'twentyseventeen'),
(25, 13, '_wp_attached_file', '2020/03/coffee.jpg'),
(26, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2020/03/coffee.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"coffee-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 13, '_starter_content_theme', 'twentyseventeen'),
(30, 14, '_customize_changeset_uuid', 'a67e22a7-01c5-41d6-b990-5349135b185a'),
(66, 26, '_menu_item_type', 'custom'),
(67, 26, '_menu_item_menu_item_parent', '0'),
(68, 26, '_menu_item_object_id', '26'),
(69, 26, '_menu_item_object', 'custom'),
(70, 26, '_menu_item_target', ''),
(71, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 26, '_menu_item_xfn', ''),
(73, 26, '_menu_item_url', 'https://www.yelp.com'),
(74, 27, '_menu_item_type', 'custom'),
(75, 27, '_menu_item_menu_item_parent', '0'),
(76, 27, '_menu_item_object_id', '27'),
(77, 27, '_menu_item_object', 'custom'),
(78, 27, '_menu_item_target', ''),
(79, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 27, '_menu_item_xfn', ''),
(81, 27, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(82, 28, '_menu_item_type', 'custom'),
(83, 28, '_menu_item_menu_item_parent', '0'),
(84, 28, '_menu_item_object_id', '28'),
(85, 28, '_menu_item_object', 'custom'),
(86, 28, '_menu_item_target', ''),
(87, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 28, '_menu_item_xfn', ''),
(89, 28, '_menu_item_url', 'https://twitter.com/wordpress'),
(90, 29, '_menu_item_type', 'custom'),
(91, 29, '_menu_item_menu_item_parent', '0'),
(92, 29, '_menu_item_object_id', '29'),
(93, 29, '_menu_item_object', 'custom'),
(94, 29, '_menu_item_target', ''),
(95, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 29, '_menu_item_xfn', ''),
(97, 29, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(98, 30, '_menu_item_type', 'custom'),
(99, 30, '_menu_item_menu_item_parent', '0'),
(100, 30, '_menu_item_object_id', '30'),
(101, 30, '_menu_item_object', 'custom'),
(102, 30, '_menu_item_target', ''),
(103, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 30, '_menu_item_xfn', ''),
(105, 30, '_menu_item_url', 'mailto:wordpress@example.com'),
(106, 31, '_menu_item_type', 'custom'),
(107, 31, '_menu_item_menu_item_parent', '0'),
(108, 31, '_menu_item_object_id', '31'),
(109, 31, '_menu_item_object', 'custom'),
(110, 31, '_menu_item_target', ''),
(111, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 31, '_menu_item_xfn', ''),
(113, 31, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(114, 32, '_menu_item_type', 'custom'),
(115, 32, '_menu_item_menu_item_parent', '0'),
(116, 32, '_menu_item_object_id', '32'),
(117, 32, '_menu_item_object', 'custom'),
(118, 32, '_menu_item_target', ''),
(119, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 32, '_menu_item_xfn', ''),
(121, 32, '_menu_item_url', 'https://twitter.com/wordpress'),
(122, 33, '_menu_item_type', 'custom'),
(123, 33, '_menu_item_menu_item_parent', '0'),
(124, 33, '_menu_item_object_id', '33'),
(125, 33, '_menu_item_object', 'custom'),
(126, 33, '_menu_item_target', ''),
(127, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 33, '_menu_item_xfn', ''),
(129, 33, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(130, 34, '_menu_item_type', 'custom'),
(131, 34, '_menu_item_menu_item_parent', '0'),
(132, 34, '_menu_item_object_id', '34'),
(133, 34, '_menu_item_object', 'custom'),
(134, 34, '_menu_item_target', ''),
(135, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 34, '_menu_item_xfn', ''),
(137, 34, '_menu_item_url', 'mailto:wordpress@example.com'),
(141, 35, '_wp_attached_file', '2020/03/audi1.jpg'),
(142, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1250;s:6:\"height\";i:704;s:4:\"file\";s:17:\"2020/03/audi1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"audi1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"audi1-1024x577.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"audi1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"audi1-768x433.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:433;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"audi1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 8, '_edit_lock', '1585392602:1'),
(157, 42, '_wp_attached_file', '2020/03/header-img.jpg'),
(158, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1120;s:6:\"height\";i:500;s:4:\"file\";s:22:\"2020/03/header-img.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"header-img-300x134.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"header-img-1024x457.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"header-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"header-img-768x343.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:343;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"viktor-lite-blog\";a:4:{s:4:\"file\";s:22:\"header-img-394x237.jpg\";s:5:\"width\";i:394;s:6:\"height\";i:237;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"viktor-lite-single-blog\";a:4:{s:4:\"file\";s:22:\"header-img-848x414.jpg\";s:5:\"width\";i:848;s:6:\"height\";i:414;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 42, '_wp_attachment_custom_header_last_used_viktor-lite', '1584084278'),
(160, 42, '_wp_attachment_is_custom_header', 'viktor-lite'),
(165, 14, '_edit_lock', '1587146821:1'),
(166, 44, '_wp_attached_file', 'woocommerce-placeholder.png'),
(167, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 7, '_edit_lock', '1597385293:1'),
(185, 7, '_edit_last', '1'),
(186, 7, '_wp_page_template', 'default'),
(187, 8, '_edit_last', '1'),
(188, 8, '_wp_page_template', 'default'),
(189, 7, 'business_ezone_sidebar_layout', 'right-sidebar'),
(192, 42, '_wp_attachment_is_custom_background', 'business-point'),
(197, 52, '_wp_attached_file', '2020/03/logo-e1584910240561.png'),
(198, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:57;s:6:\"height\";i:70;s:4:\"file\";s:31:\"2020/03/logo-e1584910240561.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"business-point-small\";a:4:{s:4:\"file\";s:16:\"logo-221x235.png\";s:5:\"width\";i:221;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 52, '_edit_lock', '1584959962:1'),
(200, 52, '_edit_last', '1'),
(201, 53, '_wp_attached_file', '2020/03/cropped-logo.png'),
(202, 53, '_wp_attachment_context', 'custom-logo'),
(203, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:70;s:4:\"file\";s:24:\"2020/03/cropped-logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-logo-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 52, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:221;s:6:\"height\";i:271;s:4:\"file\";s:8:\"logo.png\";}}'),
(207, 55, '_wp_attached_file', '2020/03/logo-1.png'),
(208, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:831;s:6:\"height\";i:265;s:4:\"file\";s:18:\"2020/03/logo-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo-1-300x96.png\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"logo-1-768x245.png\";s:5:\"width\";i:768;s:6:\"height\";i:245;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"business-point-long\";a:4:{s:4:\"file\";s:18:\"logo-1-370x265.png\";s:5:\"width\";i:370;s:6:\"height\";i:265;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"business-point-small\";a:4:{s:4:\"file\";s:18:\"logo-1-370x235.png\";s:5:\"width\";i:370;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 55, '_edit_lock', '1584910829:1'),
(210, 55, '_edit_last', '1'),
(211, 56, '_wp_attached_file', '2020/03/cropped-logo-1.png'),
(212, 56, '_wp_attachment_context', 'custom-logo'),
(213, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:70;s:4:\"file\";s:26:\"2020/03/cropped-logo-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logo-1-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 60, '_wp_attached_file', '2020/03/Lighthouse.jpg'),
(221, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:22:\"2020/03/Lighthouse.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Lighthouse-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Lighthouse-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Lighthouse-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"business-point-long\";a:4:{s:4:\"file\";s:22:\"Lighthouse-370x500.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-point-small\";a:4:{s:4:\"file\";s:22:\"Lighthouse-370x235.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:10:\"Tom Alphin\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1202729571\";s:9:\"copyright\";s:24:\"© Microsoft Corporation\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 60, '_wp_attachment_is_custom_background', 'business-point'),
(227, 64, '_wp_attached_file', '2020/03/cropped-logo-e1584910240561.png'),
(228, 64, '_wp_attachment_context', 'custom-logo'),
(229, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:57;s:6:\"height\";i:70;s:4:\"file\";s:39:\"2020/03/cropped-logo-e1584910240561.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(237, 69, '_edit_lock', '1585219314:1'),
(238, 70, '_wp_attached_file', '2020/03/pexels-photo-442150.jpeg'),
(239, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2250;s:6:\"height\";i:1500;s:4:\"file\";s:32:\"2020/03/pexels-photo-442150.jpeg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"pexels-photo-442150-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"pexels-photo-442150-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"pexels-photo-442150-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"pexels-photo-442150-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:33:\"pexels-photo-442150-1400x550.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:32:\"pexels-photo-442150-833x474.jpeg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:33:\"pexels-photo-442150-1110x474.jpeg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:32:\"pexels-photo-442150-560x360.jpeg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:30:\"pexels-photo-442150-78x78.jpeg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:32:\"pexels-photo-442150-230x230.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:32:\"pexels-photo-442150-360x240.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:32:\"pexels-photo-442150-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:32:\"pexels-photo-442150-360x480.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(240, 69, '_edit_last', '1'),
(243, 72, '_edit_lock', '1585219334:1'),
(244, 73, '_wp_attached_file', '2020/03/it_help-scaled.jpg'),
(245, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:26:\"2020/03/it_help-scaled.jpg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"it_help-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"it_help-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"it_help-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"it_help-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"it_help-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"it_help-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:20:\"it_help-1400x550.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:19:\"it_help-833x474.jpg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:20:\"it_help-1110x474.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:19:\"it_help-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:17:\"it_help-78x78.jpg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:19:\"it_help-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:19:\"it_help-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:19:\"it_help-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:19:\"it_help-360x480.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"it_help.jpg\";}'),
(248, 75, '_edit_lock', '1585219352:1'),
(249, 76, '_wp_attached_file', '2020/03/pexels-photo-442150-1.jpeg'),
(250, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2250;s:6:\"height\";i:1500;s:4:\"file\";s:34:\"2020/03/pexels-photo-442150-1.jpeg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"pexels-photo-442150-1-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-1-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"pexels-photo-442150-1-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:36:\"pexels-photo-442150-1-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:35:\"pexels-photo-442150-1-1400x550.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-1-833x474.jpeg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:35:\"pexels-photo-442150-1-1110x474.jpeg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-1-560x360.jpeg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:32:\"pexels-photo-442150-1-78x78.jpeg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-1-230x230.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-1-360x240.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-1-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-1-360x480.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(251, 78, '_edit_lock', '1585219677:1'),
(252, 79, '_wp_attached_file', '2020/03/technology-computer-chips-gigabyte.jpg'),
(253, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2250;s:6:\"height\";i:1500;s:4:\"file\";s:46:\"2020/03/technology-computer-chips-gigabyte.jpg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"technology-computer-chips-gigabyte-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"technology-computer-chips-gigabyte-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"technology-computer-chips-gigabyte-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"technology-computer-chips-gigabyte-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:48:\"technology-computer-chips-gigabyte-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:48:\"technology-computer-chips-gigabyte-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:47:\"technology-computer-chips-gigabyte-1400x550.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:46:\"technology-computer-chips-gigabyte-833x474.jpg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:47:\"technology-computer-chips-gigabyte-1110x474.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:46:\"technology-computer-chips-gigabyte-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:44:\"technology-computer-chips-gigabyte-78x78.jpg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:46:\"technology-computer-chips-gigabyte-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:46:\"technology-computer-chips-gigabyte-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:46:\"technology-computer-chips-gigabyte-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:46:\"technology-computer-chips-gigabyte-360x480.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 75, '_edit_last', '1'),
(281, 90, '_wp_attached_file', '2020/03/logo-2-e1584960180903.png'),
(282, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:213;s:6:\"height\";i:208;s:4:\"file\";s:33:\"2020/03/logo-2-e1584960180903.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo-2-300x96.png\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"logo-2-e1584960180903-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"logo-2-768x245.png\";s:5:\"width\";i:768;s:6:\"height\";i:245;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:18:\"logo-2-560x265.png\";s:5:\"width\";i:560;s:6:\"height\";i:265;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:31:\"logo-2-e1584960180903-78x78.png\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:18:\"logo-2-230x230.png\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:18:\"logo-2-360x240.png\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:33:\"logo-2-e1584960180903-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:18:\"logo-2-360x265.png\";s:5:\"width\";i:360;s:6:\"height\";i:265;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 90, '_edit_lock', '1584960064:1'),
(284, 90, '_wp_attachment_backup_sizes', 'a:10:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:831;s:6:\"height\";i:265;s:4:\"file\";s:10:\"logo-2.png\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:18:\"logo-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:17:\"logo-2-300x96.png\";s:5:\"width\";i:300;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:18:\"logo-2-768x245.png\";s:5:\"width\";i:768;s:6:\"height\";i:245;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"business-ezone-welcome-orig\";a:4:{s:4:\"file\";s:18:\"logo-2-560x265.png\";s:5:\"width\";i:560;s:6:\"height\";i:265;s:9:\"mime-type\";s:9:\"image/png\";}s:31:\"business-ezone-recent-post-orig\";a:4:{s:4:\"file\";s:16:\"logo-2-78x78.png\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"business-ezone-portfolio-orig\";a:4:{s:4:\"file\";s:18:\"logo-2-230x230.png\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"business-ezone-three-col-orig\";a:4:{s:4:\"file\";s:18:\"logo-2-360x240.png\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:34:\"business-ezone-services-thumb-orig\";a:4:{s:4:\"file\";s:18:\"logo-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"business-ezone-teams-orig\";a:4:{s:4:\"file\";s:18:\"logo-2-360x265.png\";s:5:\"width\";i:360;s:6:\"height\";i:265;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(285, 90, '_edit_last', '1'),
(286, 91, '_wp_attached_file', '2020/03/cropped-logo-e1584910240561-1.png'),
(287, 91, '_wp_attachment_context', 'custom-logo'),
(288, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:57;s:6:\"height\";i:57;s:4:\"file\";s:41:\"2020/03/cropped-logo-e1584910240561-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 14, '_edit_last', '1'),
(308, 14, 'business_ezone_sidebar_layout', 'right-sidebar'),
(309, 100, '_wp_attached_file', '2020/03/pexels-photo-2422293-scaled.jpeg'),
(310, 100, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1819;s:4:\"file\";s:40:\"2020/03/pexels-photo-2422293-scaled.jpeg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2422293-300x213.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-2422293-1024x728.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:728;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2422293-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2422293-768x546.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:546;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-1536x1091.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1091;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-2048x1455.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1455;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:34:\"pexels-photo-2422293-1400x550.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2422293-833x474.jpeg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:34:\"pexels-photo-2422293-1110x474.jpeg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2422293-560x360.jpeg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:31:\"pexels-photo-2422293-78x78.jpeg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2422293-230x230.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2422293-360x240.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2422293-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2422293-360x480.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:25:\"pexels-photo-2422293.jpeg\";}'),
(311, 101, '_wp_attached_file', '2020/03/pexels-photo-2422293-1-scaled.jpeg'),
(312, 101, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1819;s:4:\"file\";s:42:\"2020/03/pexels-photo-2422293-1-scaled.jpeg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-1-300x213.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"pexels-photo-2422293-1-1024x728.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:728;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-1-768x546.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:546;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:37:\"pexels-photo-2422293-1-1536x1091.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1091;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:37:\"pexels-photo-2422293-1-2048x1455.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1455;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:36:\"pexels-photo-2422293-1-1400x550.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-1-833x474.jpeg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:36:\"pexels-photo-2422293-1-1110x474.jpeg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-1-560x360.jpeg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2422293-1-78x78.jpeg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-1-230x230.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-1-360x240.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-1-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-1-360x480.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:27:\"pexels-photo-2422293-1.jpeg\";}'),
(313, 105, '_form', '<label> Ваше имя (обязательно)\n    [text* your-name] </label>\n\n<label> Ваш e-mail (обязательно)\n    [email* your-email] </label>\n\n<label> Тема\n    [text your-subject] </label>\n\n<label> Сообщение\n    [textarea your-message] </label>\n\n[submit \"Отправить\"]'),
(314, 105, '_mail', 'a:8:{s:7:\"subject\";s:24:\"IT DELO \"[your-subject]\"\";s:6:\"sender\";s:27:\"IT DELO <t030626@gmail.com>\";s:4:\"body\";s:193:\"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта IT DELO (http://localhost/itdelo)\";s:9:\"recipient\";s:17:\"t030626@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(315, 105, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"IT DELO \"[your-subject]\"\";s:6:\"sender\";s:27:\"IT DELO <t030626@gmail.com>\";s:4:\"body\";s:134:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта IT DELO (http://localhost/itdelo)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:27:\"Reply-To: t030626@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(316, 105, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";}'),
(317, 105, '_additional_settings', NULL),
(318, 105, '_locale', 'ru_RU'),
(319, 106, '_form', '<label> Ваше имя (обязательно)\n    [text* your-name] </label>\n\n<label> Ваш e-mail (обязательно)\n    [email* your-email] </label>\n\n<label> Тема\n    [text your-subject] </label>\n\n<label> Сообщение\n    [textarea your-message] </label>\n\n[submit \"Отправить\"]'),
(320, 106, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:24:\"IT DELO \"[your-subject]\"\";s:6:\"sender\";s:27:\"IT DELO <t030626@gmail.com>\";s:9:\"recipient\";s:17:\"t030626@gmail.com\";s:4:\"body\";s:193:\"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта IT DELO (http://localhost/itdelo)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(321, 106, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"IT DELO \"[your-subject]\"\";s:6:\"sender\";s:27:\"IT DELO <t030626@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:134:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта IT DELO (http://localhost/itdelo)\";s:18:\"additional_headers\";s:27:\"Reply-To: t030626@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(322, 106, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(323, 106, '_additional_settings', ''),
(324, 106, '_locale', 'ru_RU'),
(325, 8, 'business_ezone_sidebar_layout', 'right-sidebar'),
(326, 108, '_wp_attached_file', '2020/03/logo-3-e1585034893229.png'),
(327, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:33:\"2020/03/logo-3-e1585034893229.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:16:\"logo-3-78x78.png\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:18:\"logo-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(330, 108, '_edit_lock', '1585034778:1'),
(331, 108, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:220;s:6:\"height\";i:220;s:4:\"file\";s:10:\"logo-3.png\";}}'),
(332, 108, '_edit_last', '1'),
(333, 110, '_wp_attached_file', '2020/03/logo-4-e1585035408386.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(334, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:33:\"2020/03/logo-4-e1585035408386.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:16:\"logo-4-78x78.png\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:18:\"logo-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(337, 110, '_edit_lock', '1585035327:1'),
(338, 110, '_wp_attachment_backup_sizes', 'a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:219;s:6:\"height\";i:219;s:4:\"file\";s:10:\"logo-4.png\";}s:18:\"full-1585035408386\";a:3:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:25:\"logo-4-e1585035371849.png\";}}'),
(339, 110, '_edit_last', '1'),
(340, 112, '_wp_attached_file', '2020/03/logo-5-e1585035498283.png'),
(341, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:33:\"2020/03/logo-5-e1585035498283.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:16:\"logo-5-78x78.png\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:18:\"logo-5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(342, 112, '_edit_lock', '1585035399:1'),
(343, 112, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:219;s:6:\"height\";i:219;s:4:\"file\";s:10:\"logo-5.png\";}}'),
(344, 112, '_edit_last', '1'),
(353, 117, '_edit_lock', '1589284892:1'),
(354, 117, '_edit_last', '1'),
(355, 117, '_wp_page_template', 'default'),
(358, 120, '_wp_attached_file', '2020/03/comp_repair-scaled.jpeg'),
(359, 120, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:31:\"2020/03/comp_repair-scaled.jpeg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"comp_repair-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"comp_repair-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"comp_repair-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"comp_repair-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"comp_repair-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"comp_repair-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:25:\"comp_repair-1400x550.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:24:\"comp_repair-833x474.jpeg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:25:\"comp_repair-1110x474.jpeg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:24:\"comp_repair-560x360.jpeg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:22:\"comp_repair-78x78.jpeg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:24:\"comp_repair-230x230.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:24:\"comp_repair-360x240.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:24:\"comp_repair-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:24:\"comp_repair-360x480.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"comp_repair.jpeg\";}'),
(360, 121, '_wp_attached_file', '2020/03/it_help-1-scaled.jpg'),
(361, 121, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2020/03/it_help-1-scaled.jpg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"it_help-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"it_help-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"it_help-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"it_help-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"it_help-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"it_help-1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:22:\"it_help-1-1400x550.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:21:\"it_help-1-833x474.jpg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:22:\"it_help-1-1110x474.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:21:\"it_help-1-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:19:\"it_help-1-78x78.jpg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:21:\"it_help-1-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:21:\"it_help-1-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:21:\"it_help-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:21:\"it_help-1-360x480.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"it_help-1.jpg\";}'),
(362, 122, '_wp_attached_file', '2020/03/pexels-photo-442150-2.jpeg'),
(363, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2250;s:6:\"height\";i:1500;s:4:\"file\";s:34:\"2020/03/pexels-photo-442150-2.jpeg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-2-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"pexels-photo-442150-2-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-2-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"pexels-photo-442150-2-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:36:\"pexels-photo-442150-2-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:35:\"pexels-photo-442150-2-1400x550.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-2-833x474.jpeg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:35:\"pexels-photo-442150-2-1110x474.jpeg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-2-560x360.jpeg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:32:\"pexels-photo-442150-2-78x78.jpeg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-2-230x230.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-2-360x240.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-2-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:34:\"pexels-photo-442150-2-360x480.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(364, 123, '_wp_attached_file', '2020/03/pexels-photo-2422293-2-scaled.jpeg'),
(365, 123, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1819;s:4:\"file\";s:42:\"2020/03/pexels-photo-2422293-2-scaled.jpeg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-2-300x213.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"pexels-photo-2422293-2-1024x728.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:728;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-2-768x546.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:546;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:37:\"pexels-photo-2422293-2-1536x1091.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1091;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:37:\"pexels-photo-2422293-2-2048x1455.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1455;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:36:\"pexels-photo-2422293-2-1400x550.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-2-833x474.jpeg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:36:\"pexels-photo-2422293-2-1110x474.jpeg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-2-560x360.jpeg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2422293-2-78x78.jpeg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-2-230x230.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-2-360x240.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-2-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2422293-2-360x480.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:27:\"pexels-photo-2422293-2.jpeg\";}'),
(366, 124, '_wp_attached_file', '2020/03/pexels-photo-2451645-scaled.jpeg'),
(367, 124, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:40:\"2020/03/pexels-photo-2451645-scaled.jpeg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2451645-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-2451645-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2451645-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2451645-768x513.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2451645-1536x1025.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:35:\"pexels-photo-2451645-2048x1367.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:34:\"pexels-photo-2451645-1400x550.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2451645-833x474.jpeg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:34:\"pexels-photo-2451645-1110x474.jpeg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2451645-560x360.jpeg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:31:\"pexels-photo-2451645-78x78.jpeg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2451645-230x230.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2451645-360x240.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2451645-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2451645-360x480.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:25:\"pexels-photo-2451645.jpeg\";}'),
(368, 125, '_wp_attached_file', '2020/03/pexels-photo-2582937.jpeg'),
(369, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1500;s:4:\"file\";s:33:\"2020/03/pexels-photo-2582937.jpeg\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2582937-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-2582937-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2582937-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-2582937-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:34:\"pexels-photo-2582937-1000x550.jpeg\";s:5:\"width\";i:1000;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2582937-833x474.jpeg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:34:\"pexels-photo-2582937-1000x474.jpeg\";s:5:\"width\";i:1000;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2582937-560x360.jpeg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:31:\"pexels-photo-2582937-78x78.jpeg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2582937-230x230.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2582937-360x240.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2582937-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2582937-360x480.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 127, '_wp_attached_file', '2020/03/pexels-photo-2657669.jpeg'),
(371, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:33:\"2020/03/pexels-photo-2657669.jpeg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2657669-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2657669-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2657669-500x474.jpeg\";s:5:\"width\";i:500;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2657669-500x474.jpeg\";s:5:\"width\";i:500;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2657669-500x360.jpeg\";s:5:\"width\";i:500;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:31:\"pexels-photo-2657669-78x78.jpeg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2657669-230x230.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2657669-360x240.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2657669-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:33:\"pexels-photo-2657669-360x480.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(372, 128, '_wp_attached_file', '2020/03/technology-computer-chips-gigabyte-1.jpg'),
(373, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2250;s:6:\"height\";i:1500;s:4:\"file\";s:48:\"2020/03/technology-computer-chips-gigabyte-1.jpg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"technology-computer-chips-gigabyte-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"technology-computer-chips-gigabyte-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"technology-computer-chips-gigabyte-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"technology-computer-chips-gigabyte-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:50:\"technology-computer-chips-gigabyte-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:50:\"technology-computer-chips-gigabyte-1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:49:\"technology-computer-chips-gigabyte-1-1400x550.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:48:\"technology-computer-chips-gigabyte-1-833x474.jpg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:49:\"technology-computer-chips-gigabyte-1-1110x474.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:48:\"technology-computer-chips-gigabyte-1-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:46:\"technology-computer-chips-gigabyte-1-78x78.jpg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:48:\"technology-computer-chips-gigabyte-1-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:48:\"technology-computer-chips-gigabyte-1-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:48:\"technology-computer-chips-gigabyte-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:48:\"technology-computer-chips-gigabyte-1-360x480.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(374, 117, 'business_ezone_sidebar_layout', 'right-sidebar'),
(375, 130, '_wp_attached_file', '2020/03/logo-6.png'),
(376, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:143;s:4:\"file\";s:18:\"2020/03/logo-6.png\";s:5:\"sizes\";a:2:{s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:16:\"logo-6-78x78.png\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:18:\"logo-6-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(377, 131, '_wp_attached_file', '2020/03/cropped-logo-6.png'),
(378, 131, '_wp_attachment_context', 'custom-logo'),
(379, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:143;s:4:\"file\";s:26:\"2020/03/cropped-logo-6.png\";s:5:\"sizes\";a:2:{s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:24:\"cropped-logo-6-78x78.png\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:26:\"cropped-logo-6-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 133, '_wp_attached_file', '2020/03/logo-7-e1585135394376.png'),
(382, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:70;s:6:\"height\";i:80;s:4:\"file\";s:33:\"2020/03/logo-7-e1585135394376.png\";s:5:\"sizes\";a:2:{s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:16:\"logo-7-78x78.png\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:18:\"logo-7-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 134, '_wp_attached_file', '2020/03/cropped-logo-7.png'),
(384, 134, '_wp_attachment_context', 'custom-logo'),
(385, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:143;s:4:\"file\";s:26:\"2020/03/cropped-logo-7.png\";s:5:\"sizes\";a:2:{s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:24:\"cropped-logo-7-78x78.png\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:26:\"cropped-logo-7-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(386, 135, '_wp_attached_file', '2020/03/cropped-logo-7-1.png'),
(387, 135, '_wp_attachment_context', 'custom-logo'),
(388, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:143;s:4:\"file\";s:28:\"2020/03/cropped-logo-7-1.png\";s:5:\"sizes\";a:2:{s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:26:\"cropped-logo-7-1-78x78.png\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:28:\"cropped-logo-7-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(391, 133, '_edit_lock', '1585142925:1'),
(392, 133, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:125;s:6:\"height\";i:143;s:4:\"file\";s:10:\"logo-7.png\";}}'),
(393, 133, '_edit_last', '1'),
(442, 156, '_edit_lock', '1585205459:1'),
(443, 156, '_edit_last', '1'),
(444, 156, 'business_ezone_sidebar_layout', 'right-sidebar'),
(453, 75, '_thumbnail_id', '76'),
(456, 78, '_thumbnail_id', '128'),
(459, 72, '_thumbnail_id', '121'),
(462, 69, '_thumbnail_id', '76'),
(463, 160, '_edit_lock', '1585205881:1'),
(464, 160, '_edit_last', '1'),
(465, 160, 'business_ezone_sidebar_layout', 'right-sidebar'),
(472, 72, '_edit_last', '1'),
(477, 163, '_edit_lock', '1585205643:1'),
(478, 164, '_wp_attached_file', '2020/03/photo-1562447208-3d5f81e66179.jpg'),
(479, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1934;s:6:\"height\";i:1451;s:4:\"file\";s:41:\"2020/03/photo-1562447208-3d5f81e66179.jpg\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"photo-1562447208-3d5f81e66179-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"photo-1562447208-3d5f81e66179-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"photo-1562447208-3d5f81e66179-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"photo-1562447208-3d5f81e66179-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:43:\"photo-1562447208-3d5f81e66179-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:42:\"photo-1562447208-3d5f81e66179-1400x550.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:41:\"photo-1562447208-3d5f81e66179-833x474.jpg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:42:\"photo-1562447208-3d5f81e66179-1110x474.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:41:\"photo-1562447208-3d5f81e66179-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:39:\"photo-1562447208-3d5f81e66179-78x78.jpg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:41:\"photo-1562447208-3d5f81e66179-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:41:\"photo-1562447208-3d5f81e66179-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:41:\"photo-1562447208-3d5f81e66179-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:41:\"photo-1562447208-3d5f81e66179-360x480.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(482, 166, '_edit_lock', '1585205533:1'),
(483, 167, '_wp_attached_file', '2020/03/photo-1564065145804-d59f005ce6d0.jpg'),
(484, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2075;s:6:\"height\";i:1806;s:4:\"file\";s:44:\"2020/03/photo-1564065145804-d59f005ce6d0.jpg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1564065145804-d59f005ce6d0-300x261.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1564065145804-d59f005ce6d0-1024x891.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:891;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1564065145804-d59f005ce6d0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1564065145804-d59f005ce6d0-768x668.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:668;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"photo-1564065145804-d59f005ce6d0-1536x1337.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1337;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"photo-1564065145804-d59f005ce6d0-2048x1783.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1783;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:45:\"photo-1564065145804-d59f005ce6d0-1400x550.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:44:\"photo-1564065145804-d59f005ce6d0-833x474.jpg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:45:\"photo-1564065145804-d59f005ce6d0-1110x474.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:44:\"photo-1564065145804-d59f005ce6d0-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:42:\"photo-1564065145804-d59f005ce6d0-78x78.jpg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:44:\"photo-1564065145804-d59f005ce6d0-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:44:\"photo-1564065145804-d59f005ce6d0-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:44:\"photo-1564065145804-d59f005ce6d0-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:44:\"photo-1564065145804-d59f005ce6d0-360x480.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(487, 166, '_thumbnail_id', '167'),
(488, 163, '_edit_last', '1'),
(493, 163, '_thumbnail_id', '164'),
(494, 169, '_edit_lock', '1585205496:1'),
(495, 170, '_wp_attached_file', '2020/03/photo-1575665943605-0ca57289b58b.jpg'),
(496, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1950;s:6:\"height\";i:1300;s:4:\"file\";s:44:\"2020/03/photo-1575665943605-0ca57289b58b.jpg\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1575665943605-0ca57289b58b-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1575665943605-0ca57289b58b-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1575665943605-0ca57289b58b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1575665943605-0ca57289b58b-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"photo-1575665943605-0ca57289b58b-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:45:\"photo-1575665943605-0ca57289b58b-1400x550.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:44:\"photo-1575665943605-0ca57289b58b-833x474.jpg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:45:\"photo-1575665943605-0ca57289b58b-1110x474.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:44:\"photo-1575665943605-0ca57289b58b-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:42:\"photo-1575665943605-0ca57289b58b-78x78.jpg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:44:\"photo-1575665943605-0ca57289b58b-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:44:\"photo-1575665943605-0ca57289b58b-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:44:\"photo-1575665943605-0ca57289b58b-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:44:\"photo-1575665943605-0ca57289b58b-360x480.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(499, 169, '_thumbnail_id', '170'),
(521, 187, '_edit_lock', '1585206289:1'),
(524, 187, '_thumbnail_id', '70'),
(525, 187, '_edit_last', '1'),
(528, 189, '_edit_lock', '1585206245:1'),
(531, 189, '_thumbnail_id', '125'),
(532, 191, '_edit_lock', '1585206315:1'),
(535, 191, '_thumbnail_id', '120'),
(544, 196, '_edit_lock', '1585207007:1'),
(545, 196, '_edit_last', '1'),
(546, 196, 'business_ezone_sidebar_layout', 'right-sidebar'),
(579, 206, '_menu_item_type', 'post_type'),
(580, 206, '_menu_item_menu_item_parent', '0'),
(581, 206, '_menu_item_object_id', '14'),
(582, 206, '_menu_item_object', 'page'),
(583, 206, '_menu_item_target', ''),
(584, 206, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(585, 206, '_menu_item_xfn', ''),
(586, 206, '_menu_item_url', ''),
(595, 208, '_menu_item_type', 'post_type'),
(596, 208, '_menu_item_menu_item_parent', '0'),
(597, 208, '_menu_item_object_id', '8'),
(598, 208, '_menu_item_object', 'page'),
(599, 208, '_menu_item_target', ''),
(600, 208, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(601, 208, '_menu_item_xfn', ''),
(602, 208, '_menu_item_url', ''),
(607, 210, '_edit_lock', '1585208949:1'),
(608, 210, '_edit_last', '1'),
(609, 210, 'business_ezone_sidebar_layout', 'right-sidebar'),
(611, 213, '_edit_lock', '1585209564:1'),
(614, 213, '_thumbnail_id', '124'),
(615, 213, '_edit_last', '1'),
(620, 216, '_edit_lock', '1585209607:1'),
(621, 217, '_wp_attached_file', '2020/03/photo-1483389127117-b6a2102724ae.jpg'),
(622, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1934;s:6:\"height\";i:1451;s:4:\"file\";s:44:\"2020/03/photo-1483389127117-b6a2102724ae.jpg\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1483389127117-b6a2102724ae-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1483389127117-b6a2102724ae-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1483389127117-b6a2102724ae-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1483389127117-b6a2102724ae-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"photo-1483389127117-b6a2102724ae-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:45:\"photo-1483389127117-b6a2102724ae-1400x550.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:44:\"photo-1483389127117-b6a2102724ae-833x474.jpg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:45:\"photo-1483389127117-b6a2102724ae-1110x474.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:44:\"photo-1483389127117-b6a2102724ae-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:42:\"photo-1483389127117-b6a2102724ae-78x78.jpg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:44:\"photo-1483389127117-b6a2102724ae-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:44:\"photo-1483389127117-b6a2102724ae-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:44:\"photo-1483389127117-b6a2102724ae-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:44:\"photo-1483389127117-b6a2102724ae-360x480.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(625, 216, '_thumbnail_id', '217'),
(626, 219, '_edit_lock', '1585210078:1'),
(627, 220, '_wp_attached_file', '2020/03/photo-1497493292307-31c376b6e479.jpg'),
(628, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1951;s:6:\"height\";i:1301;s:4:\"file\";s:44:\"2020/03/photo-1497493292307-31c376b6e479.jpg\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1497493292307-31c376b6e479-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1497493292307-31c376b6e479-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1497493292307-31c376b6e479-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1497493292307-31c376b6e479-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"photo-1497493292307-31c376b6e479-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:45:\"photo-1497493292307-31c376b6e479-1400x550.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:44:\"photo-1497493292307-31c376b6e479-833x474.jpg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:45:\"photo-1497493292307-31c376b6e479-1110x474.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:44:\"photo-1497493292307-31c376b6e479-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:42:\"photo-1497493292307-31c376b6e479-78x78.jpg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:44:\"photo-1497493292307-31c376b6e479-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:44:\"photo-1497493292307-31c376b6e479-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:44:\"photo-1497493292307-31c376b6e479-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:44:\"photo-1497493292307-31c376b6e479-360x480.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(631, 219, '_thumbnail_id', '220'),
(638, 225, '_edit_lock', '1585210543:1'),
(639, 226, '_wp_attached_file', '2020/03/photo-1556761175-4b46a572b786.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(640, 226, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1934;s:6:\"height\";i:1450;s:4:\"file\";s:41:\"2020/03/photo-1556761175-4b46a572b786.jpg\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"photo-1556761175-4b46a572b786-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"photo-1556761175-4b46a572b786-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"photo-1556761175-4b46a572b786-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"photo-1556761175-4b46a572b786-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:43:\"photo-1556761175-4b46a572b786-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:42:\"photo-1556761175-4b46a572b786-1400x550.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:41:\"photo-1556761175-4b46a572b786-833x474.jpg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:42:\"photo-1556761175-4b46a572b786-1110x474.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:41:\"photo-1556761175-4b46a572b786-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:39:\"photo-1556761175-4b46a572b786-78x78.jpg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:41:\"photo-1556761175-4b46a572b786-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:41:\"photo-1556761175-4b46a572b786-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:41:\"photo-1556761175-4b46a572b786-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:41:\"photo-1556761175-4b46a572b786-360x480.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(641, 227, '_wp_attached_file', '2020/03/photo-1563536310477-c7b4e3a800c2-scaled.jpg'),
(642, 227, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:51:\"2020/03/photo-1563536310477-c7b4e3a800c2-scaled.jpg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1563536310477-c7b4e3a800c2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1563536310477-c7b4e3a800c2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1563536310477-c7b4e3a800c2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"photo-1563536310477-c7b4e3a800c2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"photo-1563536310477-c7b4e3a800c2-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"photo-1563536310477-c7b4e3a800c2-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:45:\"photo-1563536310477-c7b4e3a800c2-1400x550.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:44:\"photo-1563536310477-c7b4e3a800c2-833x474.jpg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:45:\"photo-1563536310477-c7b4e3a800c2-1110x474.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:44:\"photo-1563536310477-c7b4e3a800c2-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:42:\"photo-1563536310477-c7b4e3a800c2-78x78.jpg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:44:\"photo-1563536310477-c7b4e3a800c2-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:44:\"photo-1563536310477-c7b4e3a800c2-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:44:\"photo-1563536310477-c7b4e3a800c2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:44:\"photo-1563536310477-c7b4e3a800c2-360x480.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:36:\"photo-1563536310477-c7b4e3a800c2.jpg\";}'),
(643, 228, '_wp_attached_file', '2020/03/photo-1569012871812-f38ee64cd54c.jpg'),
(644, 228, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1950;s:6:\"height\";i:1300;s:4:\"file\";s:44:\"2020/03/photo-1569012871812-f38ee64cd54c.jpg\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1569012871812-f38ee64cd54c-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1569012871812-f38ee64cd54c-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1569012871812-f38ee64cd54c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1569012871812-f38ee64cd54c-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"photo-1569012871812-f38ee64cd54c-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:45:\"photo-1569012871812-f38ee64cd54c-1400x550.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:44:\"photo-1569012871812-f38ee64cd54c-833x474.jpg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:45:\"photo-1569012871812-f38ee64cd54c-1110x474.jpg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:44:\"photo-1569012871812-f38ee64cd54c-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:42:\"photo-1569012871812-f38ee64cd54c-78x78.jpg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:44:\"photo-1569012871812-f38ee64cd54c-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:44:\"photo-1569012871812-f38ee64cd54c-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:44:\"photo-1569012871812-f38ee64cd54c-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:44:\"photo-1569012871812-f38ee64cd54c-360x480.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(647, 225, '_thumbnail_id', '228'),
(648, 230, '_edit_lock', '1585210342:1'),
(651, 230, '_thumbnail_id', '227'),
(652, 232, '_edit_lock', '1585210385:1'),
(655, 232, '_thumbnail_id', '226'),
(656, 225, '_edit_last', '1'),
(659, 234, '_edit_lock', '1585210617:1'),
(660, 234, '_edit_last', '1'),
(661, 234, 'business_ezone_sidebar_layout', 'right-sidebar'),
(665, 238, '_edit_lock', '1585994330:1'),
(668, 240, '_edit_lock', '1585994307:1'),
(671, 242, '_edit_lock', '1585994277:1'),
(684, 248, '_wp_attached_file', '2020/03/pexels-photo-3534471.jpeg'),
(685, 248, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:2250;s:4:\"file\";s:33:\"2020/03/pexels-photo-3534471.jpeg\";s:5:\"sizes\";a:15:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"pexels-photo-3534471-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-3534471-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"pexels-photo-3534471-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"pexels-photo-3534471-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:35:\"pexels-photo-3534471-1024x1536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:35:\"pexels-photo-3534471-1365x2048.jpeg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"business-ezone-slider\";a:4:{s:4:\"file\";s:34:\"pexels-photo-3534471-1400x550.jpeg\";s:5:\"width\";i:1400;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"business-ezone-with-sidebar\";a:4:{s:4:\"file\";s:33:\"pexels-photo-3534471-833x474.jpeg\";s:5:\"width\";i:833;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"business-ezone-without-sidebar\";a:4:{s:4:\"file\";s:34:\"pexels-photo-3534471-1110x474.jpeg\";s:5:\"width\";i:1110;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"business-ezone-welcome\";a:4:{s:4:\"file\";s:33:\"pexels-photo-3534471-560x360.jpeg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:31:\"pexels-photo-3534471-78x78.jpeg\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:33:\"pexels-photo-3534471-230x230.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:33:\"pexels-photo-3534471-360x240.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:33:\"pexels-photo-3534471-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"business-ezone-teams\";a:4:{s:4:\"file\";s:33:\"pexels-photo-3534471-360x480.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(688, 242, '_thumbnail_id', '128'),
(691, 240, '_thumbnail_id', '121'),
(694, 238, '_thumbnail_id', '248'),
(714, 259, '_wp_attached_file', '2020/03/logo5.svg'),
(715, 259, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:70;s:6:\"height\";i:80;s:4:\"file\";s:18:\"/2020/03/logo5.svg\";s:5:\"sizes\";a:15:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:21:\"business-ezone-slider\";a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:550;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:27:\"business-ezone-with-sidebar\";a:5:{s:5:\"width\";i:833;s:6:\"height\";i:474;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:30:\"business-ezone-without-sidebar\";a:5:{s:5:\"width\";i:1110;s:6:\"height\";i:474;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:22:\"business-ezone-welcome\";a:5:{s:5:\"width\";i:560;s:6:\"height\";i:360;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:26:\"business-ezone-recent-post\";a:5:{s:5:\"width\";i:78;s:6:\"height\";i:78;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:24:\"business-ezone-portfolio\";a:5:{s:5:\"width\";i:230;s:6:\"height\";i:230;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:24:\"business-ezone-three-col\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:240;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:29:\"business-ezone-services-thumb\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:20:\"business-ezone-teams\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:480;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(718, 261, '_wp_attached_file', '2020/03/icon.png'),
(719, 261, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:302;s:6:\"height\";i:302;s:4:\"file\";s:16:\"2020/03/icon.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"icon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"business-ezone-recent-post\";a:4:{s:4:\"file\";s:14:\"icon-78x78.png\";s:5:\"width\";i:78;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"business-ezone-portfolio\";a:4:{s:4:\"file\";s:16:\"icon-230x230.png\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"business-ezone-three-col\";a:4:{s:4:\"file\";s:16:\"icon-302x240.png\";s:5:\"width\";i:302;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"business-ezone-services-thumb\";a:4:{s:4:\"file\";s:16:\"icon-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(724, 264, '_wp_attached_file', '2020/03/logo6.svg'),
(725, 264, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:70;s:6:\"height\";i:80;s:4:\"file\";s:18:\"/2020/03/logo6.svg\";s:5:\"sizes\";a:15:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:21:\"business-ezone-slider\";a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:550;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:27:\"business-ezone-with-sidebar\";a:5:{s:5:\"width\";i:833;s:6:\"height\";i:474;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:30:\"business-ezone-without-sidebar\";a:5:{s:5:\"width\";i:1110;s:6:\"height\";i:474;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:22:\"business-ezone-welcome\";a:5:{s:5:\"width\";i:560;s:6:\"height\";i:360;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:26:\"business-ezone-recent-post\";a:5:{s:5:\"width\";i:78;s:6:\"height\";i:78;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:24:\"business-ezone-portfolio\";a:5:{s:5:\"width\";i:230;s:6:\"height\";i:230;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:24:\"business-ezone-three-col\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:240;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:29:\"business-ezone-services-thumb\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:20:\"business-ezone-teams\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:480;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"logo6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(734, 270, '_edit_lock', '1585994365:1'),
(737, 272, '_edit_lock', '1585994746:1'),
(740, 274, '_edit_lock', '1587143721:1'),
(763, 284, '_menu_item_type', 'post_type'),
(764, 284, '_menu_item_menu_item_parent', '0'),
(765, 284, '_menu_item_object_id', '117'),
(766, 284, '_menu_item_object', 'page'),
(767, 284, '_menu_item_target', ''),
(768, 284, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(769, 284, '_menu_item_xfn', ''),
(770, 284, '_menu_item_url', ''),
(778, 288, '_pll_strings_translations', 'a:0:{}'),
(779, 289, '_pll_strings_translations', 'a:0:{}'),
(780, 291, '_menu_item_type', 'custom'),
(781, 291, '_menu_item_menu_item_parent', '0'),
(782, 291, '_menu_item_object_id', '291'),
(783, 291, '_menu_item_object', 'custom'),
(784, 291, '_menu_item_target', ''),
(785, 291, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(786, 291, '_menu_item_xfn', ''),
(787, 291, '_menu_item_url', '#pll_switcher'),
(789, 291, '_pll_menu_item', 'a:6:{s:22:\"hide_if_no_translation\";i:0;s:12:\"hide_current\";i:0;s:10:\"force_home\";i:0;s:10:\"show_flags\";i:0;s:10:\"show_names\";i:1;s:8:\"dropdown\";i:0;}'),
(792, 290, '_edit_lock', '1587146799:1'),
(793, 290, '_edit_last', '1'),
(794, 290, 'business_ezone_sidebar_layout', 'right-sidebar'),
(795, 295, 'business_ezone_sidebar_layout', 'right-sidebar'),
(796, 295, '_wp_page_template', 'default'),
(797, 295, '_edit_lock', '1587146909:1'),
(798, 295, '_edit_last', '1'),
(799, 297, '_menu_item_type', 'post_type'),
(800, 297, '_menu_item_menu_item_parent', '0'),
(801, 297, '_menu_item_object_id', '7'),
(802, 297, '_menu_item_object', 'page'),
(803, 297, '_menu_item_target', ''),
(804, 297, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(805, 297, '_menu_item_xfn', ''),
(806, 297, '_menu_item_url', ''),
(808, 298, '_menu_item_type', 'post_type'),
(809, 298, '_menu_item_menu_item_parent', '0'),
(810, 298, '_menu_item_object_id', '295'),
(811, 298, '_menu_item_object', 'page'),
(812, 298, '_menu_item_target', ''),
(813, 298, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(814, 298, '_menu_item_xfn', ''),
(815, 298, '_menu_item_url', ''),
(817, 299, '_menu_item_type', 'post_type'),
(818, 299, '_menu_item_menu_item_parent', '0'),
(819, 299, '_menu_item_object_id', '290'),
(820, 299, '_menu_item_object', 'page'),
(821, 299, '_menu_item_target', ''),
(822, 299, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(823, 299, '_menu_item_xfn', ''),
(824, 299, '_menu_item_url', ''),
(826, 300, 'business_ezone_sidebar_layout', 'right-sidebar'),
(827, 300, '_wp_page_template', 'default'),
(828, 300, '_edit_lock', '1587147421:1'),
(829, 300, '_edit_last', '1'),
(833, 302, 'business_ezone_sidebar_layout', 'right-sidebar'),
(834, 302, '_wp_page_template', 'default'),
(835, 302, '_edit_lock', '1587147497:1'),
(836, 302, '_edit_last', '1'),
(837, 304, '_menu_item_type', 'post_type'),
(838, 304, '_menu_item_menu_item_parent', '0'),
(839, 304, '_menu_item_object_id', '302'),
(840, 304, '_menu_item_object', 'page'),
(841, 304, '_menu_item_target', ''),
(842, 304, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(843, 304, '_menu_item_xfn', ''),
(844, 304, '_menu_item_url', ''),
(846, 305, '_menu_item_type', 'post_type'),
(847, 305, '_menu_item_menu_item_parent', '0'),
(848, 305, '_menu_item_object_id', '300'),
(849, 305, '_menu_item_object', 'page'),
(850, 305, '_menu_item_target', ''),
(851, 305, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(852, 305, '_menu_item_xfn', ''),
(853, 305, '_menu_item_url', ''),
(855, 306, 'business_ezone_sidebar_layout', 'right-sidebar'),
(856, 306, '_edit_lock', '1587147692:1'),
(857, 306, '_edit_last', '1'),
(858, 308, 'business_ezone_sidebar_layout', 'right-sidebar'),
(859, 308, '_edit_lock', '1587147753:1'),
(860, 308, '_edit_last', '1'),
(861, 310, '_thumbnail_id', '128'),
(862, 310, '_edit_lock', '1587147816:1'),
(865, 310, '_edit_last', '1'),
(868, 312, '_thumbnail_id', '76'),
(869, 312, '_edit_lock', '1587147853:1'),
(872, 312, '_edit_last', '1'),
(875, 314, '_thumbnail_id', '121'),
(876, 314, '_edit_lock', '1587147910:1'),
(879, 314, '_edit_last', '1'),
(882, 316, '_thumbnail_id', '76'),
(883, 316, '_edit_lock', '1587147940:1'),
(886, 316, '_edit_last', '1'),
(889, 318, '_edit_lock', '1587148037:1'),
(892, 318, '_edit_last', '1'),
(895, 320, '_edit_lock', '1587148060:1'),
(898, 320, '_edit_last', '1'),
(901, 322, '_edit_lock', '1587148084:1'),
(904, 322, '_edit_last', '1'),
(911, 326, '_thumbnail_id', '128'),
(912, 326, '_edit_lock', '1587148248:1'),
(915, 326, '_edit_last', '1'),
(918, 328, '_thumbnail_id', '121'),
(919, 328, '_edit_lock', '1587148267:1'),
(922, 328, '_edit_last', '1'),
(925, 330, '_thumbnail_id', '248'),
(926, 330, '_edit_lock', '1587148454:1'),
(929, 330, '_edit_last', '1'),
(930, 330, '_pingme', '1'),
(931, 330, '_encloseme', '1'),
(934, 336, '_wp_attached_file', '2020/08/pink-rose_watercolor-scaled.jpg'),
(935, 336, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:39:\"2020/08/pink-rose_watercolor-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"pink-rose_watercolor-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"pink-rose_watercolor-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"pink-rose_watercolor-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"pink-rose_watercolor-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"pink-rose_watercolor-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:34:\"pink-rose_watercolor-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:24:\"pink-rose_watercolor.jpg\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2020-03-12 22:28:07', '2020-03-12 19:28:07', '', 'Обновлённая UMoMA открывает двери', '', 'inherit', 'open', 'closed', '', '%d0%be%d0%b1%d0%bd%d0%be%d0%b2%d0%bb%d1%91%d0%bd%d0%bd%d0%b0%d1%8f-umoma-%d0%be%d1%82%d0%ba%d1%80%d1%8b%d0%b2%d0%b0%d0%b5%d1%82-%d0%b4%d0%b2%d0%b5%d1%80%d0%b8', '', '', '2020-03-12 22:28:07', '2020-03-12 19:28:07', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2020-03-12 22:28:07', '2020-03-12 19:28:07', '<!-- wp:paragraph -->\n<p>Новый текст</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:cover {\"url\":\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293-1-scaled.jpeg\",\"id\":101} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-image:url(http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293-1-scaled.jpeg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Введите заголовок...\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'О нас', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%bd%d0%b0%d1%81', '', '', '2020-08-13 18:12:55', '2020-08-13 15:12:55', '', 0, 'http://localhost/itdelo/?page_id=7', 1, 'page', '', 0),
(8, 1, '2020-03-12 22:28:07', '2020-03-12 19:28:07', '<!-- wp:paragraph -->\n<p>Отправьте нам запрос и укажите свои данные. Мы свяжемся с вами при первой же возможности.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"106\" title=\"Отправить запрос\"]\n<!-- /wp:shortcode -->', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2020-03-25 20:59:34', '2020-03-25 17:59:34', '', 0, 'http://localhost/itdelo/?page_id=8', 2, 'page', '', 0),
(11, 1, '2020-03-12 22:28:07', '2020-03-12 19:28:07', '', 'Эспрессо', '', 'inherit', 'open', 'closed', '', '%d1%8d%d1%81%d0%bf%d1%80%d0%b5%d1%81%d1%81%d0%be', '', '', '2020-03-12 22:28:07', '2020-03-12 19:28:07', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2020-03-12 22:28:07', '2020-03-12 19:28:07', '', 'Сэндвич', '', 'inherit', 'open', 'closed', '', '%d1%81%d1%8d%d0%bd%d0%b4%d0%b2%d0%b8%d1%87', '', '', '2020-03-12 22:28:07', '2020-03-12 19:28:07', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2020-03-12 22:28:07', '2020-03-12 19:28:07', '', 'Кофе', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%be%d1%84%d0%b5', '', '', '2020-03-12 22:28:07', '2020-03-12 19:28:07', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2020-03-12 22:28:07', '2020-03-12 19:28:07', '<!-- wp:paragraph -->\n<p>Добро пожаловать на наш сайт!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий </p>\n<!-- /wp:paragraph -->', 'Главная страница', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2020-04-17 21:07:00', '2020-04-17 18:07:00', '', 0, 'http://localhost/itdelo/?page_id=14', 0, 'page', '', 0),
(17, 1, '2020-03-12 22:28:07', '2020-03-12 19:28:07', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-12 22:28:07', '2020-03-12 19:28:07', '', 7, 'http://localhost/itdelo/2020/03/12/7-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-03-12 22:28:07', '2020-03-12 19:28:07', '<!-- wp:paragraph -->\n<p>Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.</p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-03-12 22:28:07', '2020-03-12 19:28:07', '', 8, 'http://localhost/itdelo/2020/03/12/8-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-03-12 22:28:07', '2020-03-12 19:28:07', '<!-- wp:paragraph -->\n<p>Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.</p>\n<!-- /wp:paragraph -->', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-12 22:28:07', '2020-03-12 19:28:07', '', 14, 'http://localhost/itdelo/2020/03/12/14-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-03-12 22:28:08', '2020-03-12 19:28:08', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2020-03-12 22:28:08', '2020-03-12 19:28:08', '', 0, 'http://localhost/itdelo/2020/03/12/yelp/', 0, 'nav_menu_item', '', 0),
(27, 1, '2020-03-12 22:28:08', '2020-03-12 19:28:08', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2020-03-12 22:28:08', '2020-03-12 19:28:08', '', 0, 'http://localhost/itdelo/2020/03/12/facebook/', 1, 'nav_menu_item', '', 0),
(28, 1, '2020-03-12 22:28:08', '2020-03-12 19:28:08', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2020-03-12 22:28:08', '2020-03-12 19:28:08', '', 0, 'http://localhost/itdelo/2020/03/12/twitter/', 2, 'nav_menu_item', '', 0),
(29, 1, '2020-03-12 22:28:08', '2020-03-12 19:28:08', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-03-12 22:28:08', '2020-03-12 19:28:08', '', 0, 'http://localhost/itdelo/2020/03/12/instagram/', 3, 'nav_menu_item', '', 0),
(30, 1, '2020-03-12 22:28:09', '2020-03-12 19:28:09', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2020-03-12 22:28:09', '2020-03-12 19:28:09', '', 0, 'http://localhost/itdelo/2020/03/12/email/', 4, 'nav_menu_item', '', 0),
(31, 1, '2020-03-12 22:28:09', '2020-03-12 19:28:09', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook-2', '', '', '2020-03-12 22:28:09', '2020-03-12 19:28:09', '', 0, 'http://localhost/itdelo/2020/03/12/facebook-2/', 1, 'nav_menu_item', '', 0),
(32, 1, '2020-03-12 22:28:09', '2020-03-12 19:28:09', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter-2', '', '', '2020-03-12 22:28:09', '2020-03-12 19:28:09', '', 0, 'http://localhost/itdelo/2020/03/12/twitter-2/', 2, 'nav_menu_item', '', 0),
(33, 1, '2020-03-12 22:28:09', '2020-03-12 19:28:09', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram-2', '', '', '2020-03-12 22:28:09', '2020-03-12 19:28:09', '', 0, 'http://localhost/itdelo/2020/03/12/instagram-2/', 3, 'nav_menu_item', '', 0),
(34, 1, '2020-03-12 22:28:09', '2020-03-12 19:28:09', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email-2', '', '', '2020-03-12 22:28:09', '2020-03-12 19:28:09', '', 0, 'http://localhost/itdelo/2020/03/12/email-2/', 4, 'nav_menu_item', '', 0),
(35, 1, '2020-03-12 22:29:41', '2020-03-12 19:29:41', '', 'audi1', '', 'inherit', 'open', 'closed', '', 'audi1', '', '', '2020-03-12 22:29:41', '2020-03-12 19:29:41', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/audi1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-03-13 10:24:11', '2020-03-13 07:24:11', '', 'header-img', 'провода', 'inherit', 'open', 'closed', '', 'header-img', '', '', '2020-03-19 23:07:21', '2020-03-19 20:07:21', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/header-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-03-19 19:49:48', '2020-03-19 16:49:48', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-03-19 19:49:48', '2020-03-19 16:49:48', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2020-03-22 23:47:12', '2020-03-22 20:47:12', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-03-23 13:41:37', '2020-03-23 10:41:37', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/logo.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2020-03-22 23:49:39', '2020-03-22 20:49:39', 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2020-03-22 23:49:39', '2020-03-22 20:49:39', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2020-03-22 23:59:10', '2020-03-22 20:59:10', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2020-03-22 23:59:32', '2020-03-22 20:59:32', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/logo-1.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2020-03-23 00:00:13', '2020-03-22 21:00:13', 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2020-03-23 00:00:13', '2020-03-22 21:00:13', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2020-03-23 00:04:10', '2020-03-22 21:04:10', '', 'Lighthouse', '', 'inherit', 'open', 'closed', '', 'lighthouse', '', '', '2020-03-23 00:04:10', '2020-03-22 21:04:10', '', 14, 'http://localhost/itdelo/wp-content/uploads/2020/03/Lighthouse.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-03-23 11:39:55', '2020-03-23 08:39:55', 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo-e1584910240561.png', 'cropped-logo-e1584910240561.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-e1584910240561-png', '', '', '2020-03-23 11:39:55', '2020-03-23 08:39:55', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo-e1584910240561.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2020-03-23 12:11:37', '2020-03-23 09:11:37', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Безопасность', '', 'publish', 'open', 'open', '', 'computer-services-and-repair', '', '', '2020-03-26 13:44:02', '2020-03-26 10:44:02', '', 0, 'http://localhost/itdelo/?p=69', 0, 'post', '', 0),
(70, 1, '2020-03-23 12:06:03', '2020-03-23 09:06:03', '', 'pexels-photo-442150', '', 'inherit', 'open', 'closed', '', 'pexels-photo-442150', '', '', '2020-03-23 12:06:03', '2020-03-23 09:06:03', '', 69, 'http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-442150.jpeg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2020-03-23 12:11:37', '2020-03-23 09:11:37', '<!-- wp:image {\"id\":70,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-442150-1024x683.jpeg\" alt=\"\" class=\"wp-image-70\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Computer Services and Repair', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-03-23 12:11:37', '2020-03-23 09:11:37', '', 69, 'http://localhost/itdelo/2020/03/23/69-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-03-23 12:13:48', '2020-03-23 09:13:48', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'IT Поддержка', '', 'publish', 'open', 'open', '', 'it-support', '', '', '2020-03-26 13:44:32', '2020-03-26 10:44:32', '', 0, 'http://localhost/itdelo/?p=72', 0, 'post', '', 0),
(73, 1, '2020-03-23 12:13:04', '2020-03-23 09:13:04', '', 'it_help', '', 'inherit', 'open', 'closed', '', 'it_help', '', '', '2020-03-23 12:13:04', '2020-03-23 09:13:04', '', 72, 'http://localhost/itdelo/wp-content/uploads/2020/03/it_help.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-03-23 12:13:32', '2020-03-23 09:13:32', '<!-- wp:image {\"id\":73,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/it_help-1024x683.jpg\" alt=\"\" class=\"wp-image-73\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'IT Support', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2020-03-23 12:13:32', '2020-03-23 09:13:32', '', 72, 'http://localhost/itdelo/2020/03/23/72-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-03-23 12:14:43', '2020-03-23 09:14:43', '<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Сети', '', 'publish', 'open', 'open', '', 'network-administration', '', '', '2020-03-26 13:44:52', '2020-03-26 10:44:52', '', 0, 'http://localhost/itdelo/?p=75', 0, 'post', '', 0),
(76, 1, '2020-03-23 12:14:29', '2020-03-23 09:14:29', '', 'pexels-photo-442150-1', '', 'inherit', 'open', 'closed', '', 'pexels-photo-442150-1', '', '', '2020-03-23 12:14:29', '2020-03-23 09:14:29', '', 75, 'http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-442150-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2020-03-23 12:14:43', '2020-03-23 09:14:43', '<!-- wp:image {\"id\":76,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-442150-1-1024x683.jpeg\" alt=\"\" class=\"wp-image-76\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Network Administration', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-03-23 12:14:43', '2020-03-23 09:14:43', '', 75, 'http://localhost/itdelo/2020/03/23/75-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-03-23 12:15:42', '2020-03-23 09:15:42', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Компьютеры', '', 'publish', 'open', 'open', '', 'custom-computers', '', '', '2020-03-26 13:45:08', '2020-03-26 10:45:08', '', 0, 'http://localhost/itdelo/?p=78', 0, 'post', '', 0),
(79, 1, '2020-03-23 12:15:17', '2020-03-23 09:15:17', '', 'technology-computer-chips-gigabyte', '', 'inherit', 'open', 'closed', '', 'technology-computer-chips-gigabyte', '', '', '2020-03-23 12:15:17', '2020-03-23 09:15:17', '', 78, 'http://localhost/itdelo/wp-content/uploads/2020/03/technology-computer-chips-gigabyte.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2020-03-23 12:15:36', '2020-03-23 09:15:36', '<!-- wp:image {\"id\":79,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/technology-computer-chips-gigabyte-1024x683.jpg\" alt=\"\" class=\"wp-image-79\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Custom Computers', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-03-23 12:15:36', '2020-03-23 09:15:36', '', 78, 'http://localhost/itdelo/2020/03/23/78-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-03-23 13:42:14', '2020-03-23 10:42:14', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-3', '', '', '2020-03-23 13:43:05', '2020-03-23 10:43:05', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/logo-2.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2020-03-23 13:44:20', '2020-03-23 10:44:20', 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo-e1584910240561-1.png', 'cropped-logo-e1584910240561-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-e1584910240561-1-png', '', '', '2020-03-23 13:44:20', '2020-03-23 10:44:20', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo-e1584910240561-1.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2020-03-24 09:29:57', '2020-03-24 06:29:57', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Добро пожаловать!', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-24 09:29:57', '2020-03-24 06:29:57', '', 14, 'http://localhost/itdelo/2020/03/24/14-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-03-24 09:31:26', '2020-03-24 06:31:26', '', 'pexels-photo-2422293', '', 'inherit', 'open', 'closed', '', 'pexels-photo-2422293', '', '', '2020-03-24 09:31:26', '2020-03-24 06:31:26', '', 7, 'http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293.jpeg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2020-03-24 09:31:39', '2020-03-24 06:31:39', '', 'pexels-photo-2422293-1', '', 'inherit', 'open', 'closed', '', 'pexels-photo-2422293-1', '', '', '2020-03-24 09:31:39', '2020-03-24 06:31:39', '', 7, 'http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2020-03-24 09:31:56', '2020-03-24 06:31:56', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:cover {\"url\":\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293-scaled.jpeg\",\"id\":100} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-image:url(http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293-scaled.jpeg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Введите заголовок...\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-24 09:31:56', '2020-03-24 06:31:56', '', 7, 'http://localhost/itdelo/2020/03/24/7-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2020-03-24 09:32:51', '2020-03-24 06:32:51', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:cover {\"url\":\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293-1-scaled.jpeg\",\"id\":101} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-image:url(http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293-1-scaled.jpeg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Введите заголовок...\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-24 09:32:51', '2020-03-24 06:32:51', '', 7, 'http://localhost/itdelo/2020/03/24/7-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2020-03-24 09:34:19', '2020-03-24 06:34:19', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-24 09:34:19', '2020-03-24 06:34:19', '', 14, 'http://localhost/itdelo/2020/03/24/14-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2020-03-24 10:14:35', '2020-03-24 07:14:35', '<label> Ваше имя (обязательно)\n    [text* your-name] </label>\n\n<label> Ваш e-mail (обязательно)\n    [email* your-email] </label>\n\n<label> Тема\n    [text your-subject] </label>\n\n<label> Сообщение\n    [textarea your-message] </label>\n\n[submit \"Отправить\"]\nIT DELO \"[your-subject]\"\nIT DELO <t030626@gmail.com>\nОт: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта IT DELO (http://localhost/itdelo)\nt030626@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nIT DELO \"[your-subject]\"\nIT DELO <t030626@gmail.com>\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта IT DELO (http://localhost/itdelo)\n[your-email]\nReply-To: t030626@gmail.com\n\n0\n0\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.', 'Контактная форма 1', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1', '', '', '2020-03-24 10:14:35', '2020-03-24 07:14:35', '', 0, 'http://localhost/itdelo/?post_type=wpcf7_contact_form&p=105', 0, 'wpcf7_contact_form', '', 0),
(106, 1, '2020-03-24 10:15:47', '2020-03-24 07:15:47', '<label> Ваше имя (обязательно)\r\n    [text* your-name] </label>\r\n\r\n<label> Ваш e-mail (обязательно)\r\n    [email* your-email] </label>\r\n\r\n<label> Тема\r\n    [text your-subject] </label>\r\n\r\n<label> Сообщение\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Отправить\"]\n1\nIT DELO \"[your-subject]\"\nIT DELO <t030626@gmail.com>\nt030626@gmail.com\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта IT DELO (http://localhost/itdelo)\nReply-To: [your-email]\n\n\n\n\nIT DELO \"[your-subject]\"\nIT DELO <t030626@gmail.com>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта IT DELO (http://localhost/itdelo)\nReply-To: t030626@gmail.com\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Отправить запрос', '', 'publish', 'closed', 'closed', '', '%d0%be%d1%82%d0%bf%d1%80%d0%b0%d0%b2%d0%b8%d1%82%d1%8c-%d0%b7%d0%b0%d0%bf%d1%80%d0%be%d1%81', '', '', '2020-03-24 10:15:54', '2020-03-24 07:15:54', '', 0, 'http://localhost/itdelo/?post_type=wpcf7_contact_form&#038;p=106', 0, 'wpcf7_contact_form', '', 0),
(107, 1, '2020-03-24 10:18:26', '2020-03-24 07:18:26', '<!-- wp:paragraph -->\n<p>Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"106\" title=\"Отправить запрос\"]\n<!-- /wp:shortcode -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-03-24 10:18:26', '2020-03-24 07:18:26', '', 8, 'http://localhost/itdelo/2020/03/24/8-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2020-03-24 10:26:56', '2020-03-24 07:26:56', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-4', '', '', '2020-03-24 10:28:21', '2020-03-24 07:28:21', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/logo-3.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2020-03-24 10:35:36', '2020-03-24 07:35:36', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-5', '', '', '2020-03-24 10:36:50', '2020-03-24 07:36:50', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/logo-4.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2020-03-24 10:38:00', '2020-03-24 07:38:00', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-6', '', '', '2020-03-24 10:38:21', '2020-03-24 07:38:21', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/logo-5.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2020-03-24 10:47:01', '2020-03-24 07:47:01', '<!-- wp:paragraph -->\n<p>Этот раздел находится в стадии разработки.</p>\n<!-- /wp:paragraph -->', 'Портфолио', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0%d1%88%d0%b8-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b', '', '', '2020-05-12 15:02:27', '2020-05-12 12:02:27', '', 0, 'http://localhost/itdelo/?page_id=117', 0, 'page', '', 0),
(118, 1, '2020-03-24 10:50:00', '2020-03-24 07:50:00', '<!-- wp:gallery -->\n<figure class=\"wp-block-gallery columns-0 is-cropped\"><ul class=\"blocks-gallery-grid\"></ul></figure>\n<!-- /wp:gallery -->', 'Наши работы', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2020-03-24 10:50:00', '2020-03-24 07:50:00', '', 117, 'http://localhost/itdelo/2020/03/24/117-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2020-03-24 10:52:55', '2020-03-24 07:52:55', '', 'comp_repair', '', 'inherit', 'open', 'closed', '', 'comp_repair', '', '', '2020-03-24 10:52:55', '2020-03-24 07:52:55', '', 117, 'http://localhost/itdelo/wp-content/uploads/2020/03/comp_repair.jpeg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2020-03-24 10:53:23', '2020-03-24 07:53:23', '', 'it_help-1', '', 'inherit', 'open', 'closed', '', 'it_help-1', '', '', '2020-03-24 10:53:23', '2020-03-24 07:53:23', '', 117, 'http://localhost/itdelo/wp-content/uploads/2020/03/it_help-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2020-03-24 10:53:50', '2020-03-24 07:53:50', '', 'pexels-photo-442150-2', '', 'inherit', 'open', 'closed', '', 'pexels-photo-442150-2', '', '', '2020-03-24 10:53:50', '2020-03-24 07:53:50', '', 117, 'http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-442150-2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2020-03-24 10:54:05', '2020-03-24 07:54:05', '', 'pexels-photo-2422293-2', '', 'inherit', 'open', 'closed', '', 'pexels-photo-2422293-2', '', '', '2020-03-24 10:54:05', '2020-03-24 07:54:05', '', 117, 'http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293-2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2020-03-24 10:54:33', '2020-03-24 07:54:33', '', 'pexels-photo-2451645', '', 'inherit', 'open', 'closed', '', 'pexels-photo-2451645', '', '', '2020-03-24 10:54:33', '2020-03-24 07:54:33', '', 117, 'http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2451645.jpeg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2020-03-24 10:55:01', '2020-03-24 07:55:01', '', 'pexels-photo-2582937', '', 'inherit', 'open', 'closed', '', 'pexels-photo-2582937', '', '', '2020-03-24 10:55:01', '2020-03-24 07:55:01', '', 117, 'http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2582937.jpeg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2020-03-24 10:55:07', '2020-03-24 07:55:07', '', 'pexels-photo-2657669', '', 'inherit', 'open', 'closed', '', 'pexels-photo-2657669', '', '', '2020-03-24 10:55:07', '2020-03-24 07:55:07', '', 117, 'http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2657669.jpeg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2020-03-24 10:55:09', '2020-03-24 07:55:09', '', 'technology-computer-chips-gigabyte-1', '', 'inherit', 'open', 'closed', '', 'technology-computer-chips-gigabyte-1', '', '', '2020-03-24 10:55:09', '2020-03-24 07:55:09', '', 117, 'http://localhost/itdelo/wp-content/uploads/2020/03/technology-computer-chips-gigabyte-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2020-03-24 11:06:53', '2020-03-24 08:06:53', '<!-- wp:gallery {\"ids\":[120,121,122,123,124,125,127,128]} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/comp_repair-1024x683.jpeg\" alt=\"\" data-id=\"120\" data-full-url=\"http://localhost/itdelo/wp-content/uploads/2020/03/comp_repair-scaled.jpeg\" data-link=\"http://localhost/itdelo/%d0%bd%d0%b0%d1%88%d0%b8-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b/comp_repair/\" class=\"wp-image-120\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/it_help-1-1024x683.jpg\" alt=\"\" data-id=\"121\" data-full-url=\"http://localhost/itdelo/wp-content/uploads/2020/03/it_help-1-scaled.jpg\" data-link=\"http://localhost/itdelo/%d0%bd%d0%b0%d1%88%d0%b8-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b/it_help-1/\" class=\"wp-image-121\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-442150-2-1024x683.jpeg\" alt=\"\" data-id=\"122\" data-full-url=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-442150-2.jpeg\" data-link=\"http://localhost/itdelo/%d0%bd%d0%b0%d1%88%d0%b8-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b/pexels-photo-442150-2/\" class=\"wp-image-122\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293-2-1024x728.jpeg\" alt=\"\" data-id=\"123\" data-full-url=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293-2-scaled.jpeg\" data-link=\"http://localhost/itdelo/%d0%bd%d0%b0%d1%88%d0%b8-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b/pexels-photo-2422293-2/\" class=\"wp-image-123\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2451645-1024x683.jpeg\" alt=\"\" data-id=\"124\" data-full-url=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2451645-scaled.jpeg\" data-link=\"http://localhost/itdelo/%d0%bd%d0%b0%d1%88%d0%b8-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b/pexels-photo-2451645/\" class=\"wp-image-124\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2582937-683x1024.jpeg\" alt=\"\" data-id=\"125\" data-full-url=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2582937.jpeg\" data-link=\"http://localhost/itdelo/%d0%bd%d0%b0%d1%88%d0%b8-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b/pexels-photo-2582937/\" class=\"wp-image-125\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2657669.jpeg\" alt=\"\" data-id=\"127\" data-full-url=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2657669.jpeg\" data-link=\"http://localhost/itdelo/%d0%bd%d0%b0%d1%88%d0%b8-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b/pexels-photo-2657669/\" class=\"wp-image-127\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/technology-computer-chips-gigabyte-1-1024x683.jpg\" alt=\"\" data-id=\"128\" data-full-url=\"http://localhost/itdelo/wp-content/uploads/2020/03/technology-computer-chips-gigabyte-1.jpg\" data-link=\"http://localhost/itdelo/%d0%bd%d0%b0%d1%88%d0%b8-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b/technology-computer-chips-gigabyte-1/\" class=\"wp-image-128\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Наши работы', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2020-03-24 11:06:53', '2020-03-24 08:06:53', '', 117, 'http://localhost/itdelo/2020/03/24/117-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2020-03-25 13:51:23', '2020-03-25 10:51:23', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-7', '', '', '2020-03-25 13:51:23', '2020-03-25 10:51:23', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/logo-6.png', 0, 'attachment', 'image/png', 0),
(131, 1, '2020-03-25 13:51:40', '2020-03-25 10:51:40', 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo-6.png', 'cropped-logo-6.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-6-png', '', '', '2020-03-25 13:51:40', '2020-03-25 10:51:40', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo-6.png', 0, 'attachment', 'image/png', 0),
(133, 1, '2020-03-25 13:53:12', '2020-03-25 10:53:12', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-8', '', '', '2020-03-25 14:23:26', '2020-03-25 11:23:26', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/logo-7.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2020-03-25 13:53:22', '2020-03-25 10:53:22', 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo-7.png', 'cropped-logo-7.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-7-png', '', '', '2020-03-25 13:53:22', '2020-03-25 10:53:22', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo-7.png', 0, 'attachment', 'image/png', 0),
(135, 1, '2020-03-25 13:55:03', '2020-03-25 10:55:03', 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo-7-1.png', 'cropped-logo-7-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-7-1-png', '', '', '2020-03-25 13:55:03', '2020-03-25 10:55:03', '', 0, 'http://localhost/itdelo/wp-content/uploads/2020/03/cropped-logo-7-1.png', 0, 'attachment', 'image/png', 0),
(137, 1, '2020-03-25 19:26:49', '2020-03-25 16:26:49', '<!-- wp:image {\"id\":79,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/technology-computer-chips-gigabyte-1024x683.jpg\" alt=\"\" class=\"wp-image-79\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'Компьютеры', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-03-25 19:26:49', '2020-03-25 16:26:49', '', 78, 'http://localhost/itdelo/2020/03/25/78-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2020-03-25 19:29:21', '2020-03-25 16:29:21', '<!-- wp:image {\"id\":79,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/technology-computer-chips-gigabyte-1024x683.jpg\" alt=\"\" class=\"wp-image-79\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Компьютеры', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-03-25 19:29:21', '2020-03-25 16:29:21', '', 78, 'http://localhost/itdelo/2020/03/25/78-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(139, 1, '2020-03-25 19:30:26', '2020-03-25 16:30:26', '<!-- wp:image {\"id\":76,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-442150-1-1024x683.jpeg\" alt=\"\" class=\"wp-image-76\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Сети', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-03-25 19:30:26', '2020-03-25 16:30:26', '', 75, 'http://localhost/itdelo/2020/03/25/75-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2020-03-25 19:31:23', '2020-03-25 16:31:23', '<!-- wp:image {\"id\":73,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/it_help-1024x683.jpg\" alt=\"\" class=\"wp-image-73\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'IT Поддержка', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2020-03-25 19:31:23', '2020-03-25 16:31:23', '', 72, 'http://localhost/itdelo/2020/03/25/72-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2020-03-25 19:32:02', '2020-03-25 16:32:02', '<!-- wp:image {\"id\":70,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-442150-1024x683.jpeg\" alt=\"\" class=\"wp-image-70\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Безопасность', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-03-25 19:32:02', '2020-03-25 16:32:02', '', 69, 'http://localhost/itdelo/2020/03/25/69-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2020-03-25 20:23:10', '2020-03-25 17:23:10', '<!-- wp:paragraph -->\n<p>Добро пожаловать на наш сайт!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий </p>\n<!-- /wp:paragraph -->', 'IT DELO', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-25 20:23:10', '2020-03-25 17:23:10', '', 14, 'http://localhost/itdelo/2020/03/25/14-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2020-03-25 20:59:33', '2020-03-25 17:59:33', '<!-- wp:paragraph -->\n<p>Отправьте нам запрос и укажите свои данные. Мы свяжемся с вами при первой же возможности.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"106\" title=\"Отправить запрос\"]\n<!-- /wp:shortcode -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-03-25 20:59:33', '2020-03-25 17:59:33', '', 8, 'http://localhost/itdelo/2020/03/25/8-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2020-03-25 21:21:57', '2020-03-25 18:21:57', '<!-- wp:paragraph -->\n<p>Здесь вы сможете прочитать наши последние новости</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:latest-posts {\"categories\":\"20\",\"displayPostContent\":true,\"excerptLength\":36,\"displayPostDate\":true} /-->', 'Блог', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%bb%d0%be%d0%b3', '', '', '2020-03-26 09:52:23', '2020-03-26 06:52:23', '', 0, 'http://localhost/itdelo/?page_id=156', 0, 'page', '', 0),
(157, 1, '2020-03-25 21:21:57', '2020-03-25 18:21:57', '<!-- wp:paragraph -->\n<p>Здесь вы сможете прочитать наши последние новости</p>\n<!-- /wp:paragraph -->', 'Блог', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2020-03-25 21:21:57', '2020-03-25 18:21:57', '', 156, 'http://localhost/itdelo/2020/03/25/156-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2020-03-25 21:37:40', '2020-03-25 18:37:40', '<!-- wp:latest-posts {\"align\":\"center\",\"categories\":\"19\",\"postLayout\":\"grid\",\"columns\":4} /-->', 'Наши услуги', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0%d1%88%d0%b8-%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8', '', '', '2020-03-26 09:59:10', '2020-03-26 06:59:10', '', 0, 'http://localhost/itdelo/?page_id=160', 0, 'page', '', 0),
(161, 1, '2020-03-25 21:37:40', '2020-03-25 18:37:40', '<!-- wp:paragraph -->\n<p>Это наши услуги.</p>\n<!-- /wp:paragraph -->', 'Наши услуги', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2020-03-25 21:37:40', '2020-03-25 18:37:40', '', 160, 'http://localhost/itdelo/2020/03/25/160-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2020-03-25 21:43:05', '2020-03-25 18:43:05', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Новость 1', '', 'publish', 'open', 'open', '', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d1%8c-1', '', '', '2020-03-26 09:54:57', '2020-03-26 06:54:57', '', 0, 'http://localhost/itdelo/?p=163', 0, 'post', '', 0),
(164, 1, '2020-03-25 21:42:44', '2020-03-25 18:42:44', '', 'photo-1562447208-3d5f81e66179', '', 'inherit', 'open', 'closed', '', 'photo-1562447208-3d5f81e66179', '', '', '2020-03-25 21:42:44', '2020-03-25 18:42:44', '', 163, 'http://localhost/itdelo/wp-content/uploads/2020/03/photo-1562447208-3d5f81e66179.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2020-03-25 21:43:05', '2020-03-25 18:43:05', '<!-- wp:image {\"id\":164,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/photo-1562447208-3d5f81e66179-1024x768.jpg\" alt=\"\" class=\"wp-image-164\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>адача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Новость 1', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2020-03-25 21:43:05', '2020-03-25 18:43:05', '', 163, 'http://localhost/itdelo/2020/03/25/163-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2020-03-25 21:44:11', '2020-03-25 18:44:11', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Новость 2', '', 'publish', 'open', 'open', '', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d1%8c-2', '', '', '2020-03-26 09:54:33', '2020-03-26 06:54:33', '', 0, 'http://localhost/itdelo/?p=166', 0, 'post', '', 0),
(167, 1, '2020-03-25 21:43:39', '2020-03-25 18:43:39', '', 'photo-1564065145804-d59f005ce6d0', '', 'inherit', 'open', 'closed', '', 'photo-1564065145804-d59f005ce6d0', '', '', '2020-03-25 21:43:39', '2020-03-25 18:43:39', '', 166, 'http://localhost/itdelo/wp-content/uploads/2020/03/photo-1564065145804-d59f005ce6d0.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2020-03-25 21:44:11', '2020-03-25 18:44:11', '<!-- wp:image {\"id\":167,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/photo-1564065145804-d59f005ce6d0-1024x891.jpg\" alt=\"\" class=\"wp-image-167\"/><figcaption>Картинка</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>адача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Новость 2', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2020-03-25 21:44:11', '2020-03-25 18:44:11', '', 166, 'http://localhost/itdelo/2020/03/25/166-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2020-03-25 21:45:47', '2020-03-25 18:45:47', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Новость 3', '', 'publish', 'open', 'open', '', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d1%8c-3', '', '', '2020-03-26 09:53:58', '2020-03-26 06:53:58', '', 0, 'http://localhost/itdelo/?p=169', 0, 'post', '', 0),
(170, 1, '2020-03-25 21:45:22', '2020-03-25 18:45:22', '', 'photo-1575665943605-0ca57289b58b', '', 'inherit', 'open', 'closed', '', 'photo-1575665943605-0ca57289b58b', '', '', '2020-03-25 21:45:22', '2020-03-25 18:45:22', '', 169, 'http://localhost/itdelo/wp-content/uploads/2020/03/photo-1575665943605-0ca57289b58b.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2020-03-25 21:45:47', '2020-03-25 18:45:47', '<!-- wp:image {\"id\":170,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/itdelo/wp-content/uploads/2020/03/photo-1575665943605-0ca57289b58b-1024x683.jpg\" alt=\"\" class=\"wp-image-170\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>адача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Новость 3', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2020-03-25 21:45:47', '2020-03-25 18:45:47', '', 169, 'http://localhost/itdelo/2020/03/25/169-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2020-03-26 09:52:12', '2020-03-26 06:52:12', '<!-- wp:paragraph -->\n<p>Здесь вы сможете прочитать наши последние новости</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:latest-posts {\"categories\":\"20\",\"displayPostContent\":true,\"excerptLength\":36,\"displayPostDate\":true} /-->', 'Блог', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2020-03-26 09:52:12', '2020-03-26 06:52:12', '', 156, 'http://localhost/itdelo/2020/03/26/156-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2020-03-26 09:53:58', '2020-03-26 06:53:58', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Новость 3', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2020-03-26 09:53:58', '2020-03-26 06:53:58', '', 169, 'http://localhost/itdelo/2020/03/26/169-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2020-03-26 09:54:18', '2020-03-26 06:54:18', '<!-- wp:paragraph -->\n<p>адача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Новость 2', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2020-03-26 09:54:18', '2020-03-26 06:54:18', '', 166, 'http://localhost/itdelo/2020/03/26/166-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2020-03-26 09:54:33', '2020-03-26 06:54:33', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Новость 2', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2020-03-26 09:54:33', '2020-03-26 06:54:33', '', 166, 'http://localhost/itdelo/2020/03/26/166-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2020-03-26 09:54:57', '2020-03-26 06:54:57', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Новость 1', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2020-03-26 09:54:57', '2020-03-26 06:54:57', '', 163, 'http://localhost/itdelo/2020/03/26/163-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2020-03-26 09:57:56', '2020-03-26 06:57:56', '<!-- wp:paragraph -->\n<p>Это наши услуги.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:latest-posts {\"align\":\"center\",\"categories\":\"19\",\"postLayout\":\"grid\"} /-->', 'Наши услуги', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2020-03-26 09:57:56', '2020-03-26 06:57:56', '', 160, 'http://localhost/itdelo/2020/03/26/160-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2020-03-26 09:59:08', '2020-03-26 06:59:08', '<!-- wp:latest-posts {\"align\":\"center\",\"categories\":\"19\",\"postLayout\":\"grid\",\"columns\":4} /-->', 'Наши услуги', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2020-03-26 09:59:08', '2020-03-26 06:59:08', '', 160, 'http://localhost/itdelo/2020/03/26/160-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2020-03-26 10:01:00', '2020-03-26 07:01:00', '', 'Наши работы', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2020-03-26 10:01:00', '2020-03-26 07:01:00', '', 117, 'http://localhost/itdelo/2020/03/26/117-revision-v1/', 0, 'revision', '', 0),
(187, 1, '2020-03-26 10:03:50', '2020-03-26 07:03:50', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Настройка серверов в компании Х', '', 'publish', 'open', 'open', '', '%d0%bd%d0%b0%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%b0-%d1%81%d0%b5%d1%80%d0%b2%d0%b5%d1%80%d0%be%d0%b2-%d0%b2-%d0%ba%d0%be%d0%bc%d0%bf%d0%b0%d0%bd%d0%b8%d0%b8-%d1%85', '', '', '2020-03-26 10:04:48', '2020-03-26 07:04:48', '', 0, 'http://localhost/itdelo/?p=187', 0, 'post', '', 0),
(188, 1, '2020-03-26 10:03:50', '2020-03-26 07:03:50', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Настройка серверов в компании Х', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2020-03-26 10:03:50', '2020-03-26 07:03:50', '', 187, 'http://localhost/itdelo/2020/03/26/187-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2020-03-26 10:06:12', '2020-03-26 07:06:12', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Сделанная работа 2', '', 'publish', 'open', 'open', '', '%d1%81%d0%b4%d0%b5%d0%bb%d0%b0%d0%bd%d0%bd%d0%b0%d1%8f-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%b0-2', '', '', '2020-03-26 10:06:12', '2020-03-26 07:06:12', '', 0, 'http://localhost/itdelo/?p=189', 0, 'post', '', 0),
(190, 1, '2020-03-26 10:06:12', '2020-03-26 07:06:12', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Сделанная работа 2', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2020-03-26 10:06:12', '2020-03-26 07:06:12', '', 189, 'http://localhost/itdelo/2020/03/26/189-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2020-03-26 10:07:27', '2020-03-26 07:07:27', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Сделанная работа 3', '', 'publish', 'open', 'open', '', '%d1%81%d0%b4%d0%b5%d0%bb%d0%b0%d0%bd%d0%bd%d0%b0%d1%8f-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%b0-3', '', '', '2020-03-26 10:07:27', '2020-03-26 07:07:27', '', 0, 'http://localhost/itdelo/?p=191', 0, 'post', '', 0),
(192, 1, '2020-03-26 10:07:27', '2020-03-26 07:07:27', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Сделанная работа 3', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2020-03-26 10:07:27', '2020-03-26 07:07:27', '', 191, 'http://localhost/itdelo/2020/03/26/191-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2020-03-26 10:16:44', '2020-03-26 07:16:44', '<!-- wp:paragraph -->\n<p>Отправьте нам запрос прямо сейчас!</p>\n<!-- /wp:paragraph -->', 'Доверьтесь специалистам!', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%b2%d0%b5%d1%80%d1%8c%d1%82%d0%b5%d1%81%d1%8c-%d1%81%d0%bf%d0%b5%d1%86%d0%b8%d0%b0%d0%bb%d0%b8%d1%81%d1%82%d0%b0%d0%bc', '', '', '2020-03-26 10:16:46', '2020-03-26 07:16:46', '', 0, 'http://localhost/itdelo/?page_id=196', 0, 'page', '', 0),
(197, 1, '2020-03-26 10:16:44', '2020-03-26 07:16:44', '<!-- wp:paragraph -->\n<p>Отправьте нам запрос прямо сейчас!</p>\n<!-- /wp:paragraph -->', 'Доверьтесь специалистам!', '', 'inherit', 'closed', 'closed', '', '196-revision-v1', '', '', '2020-03-26 10:16:44', '2020-03-26 07:16:44', '', 196, 'http://localhost/itdelo/2020/03/26/196-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2020-03-26 10:34:47', '2020-03-26 07:34:47', '<!-- wp:latest-posts {\"categories\":\"21\",\"excerptLength\":29} /-->', 'Наши работы', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2020-03-26 10:34:47', '2020-03-26 07:34:47', '', 117, 'http://localhost/itdelo/2020/03/26/117-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2020-03-26 10:40:02', '2020-03-26 07:40:02', ' ', '', '', 'publish', 'closed', 'closed', '', '206', '', '', '2020-04-17 21:13:57', '2020-04-17 18:13:57', '', 0, 'http://localhost/itdelo/2020/03/26/206/', 1, 'nav_menu_item', '', 0),
(208, 1, '2020-03-26 10:40:03', '2020-03-26 07:40:03', ' ', '', '', 'publish', 'closed', 'closed', '', '208', '', '', '2020-04-17 21:13:57', '2020-04-17 18:13:57', '', 0, 'http://localhost/itdelo/2020/03/26/208/', 3, 'nav_menu_item', '', 0),
(210, 1, '2020-03-26 10:49:05', '2020-03-26 07:49:05', '', 'Наша команда', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0%d1%88%d0%b0-%d0%ba%d0%be%d0%bc%d0%b0%d0%bd%d0%b4%d0%b0', '', '', '2020-03-26 10:49:07', '2020-03-26 07:49:07', '', 0, 'http://localhost/itdelo/?page_id=210', 0, 'page', '', 0),
(211, 1, '2020-03-26 10:49:05', '2020-03-26 07:49:05', '', 'Наша команда', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2020-03-26 10:49:05', '2020-03-26 07:49:05', '', 210, 'http://localhost/itdelo/2020/03/26/210-revision-v1/', 0, 'revision', '', 0),
(213, 1, '2020-03-26 10:51:33', '2020-03-26 07:51:33', '<!-- wp:paragraph -->\n<p>Специалист по IT-технологиям.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий.  </p>\n<!-- /wp:paragraph -->', 'Василий Иванов', '', 'publish', 'open', 'open', '', '%d0%b2%d0%b0%d1%81%d0%b8%d0%bb%d0%b8%d0%b9-%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2', '', '', '2020-03-26 11:01:40', '2020-03-26 08:01:40', '', 0, 'http://localhost/itdelo/?p=213', 0, 'post', '', 0),
(214, 1, '2020-03-26 10:51:33', '2020-03-26 07:51:33', '<!-- wp:paragraph -->\n<p>Специалист по IT-технологиям.  Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий.  </p>\n<!-- /wp:paragraph -->', 'Василий Иванов', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2020-03-26 10:51:33', '2020-03-26 07:51:33', '', 213, 'http://localhost/itdelo/2020/03/26/213-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2020-03-26 10:56:59', '2020-03-26 07:56:59', '<!-- wp:paragraph -->\n<p> Программист.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий.  </p>\n<!-- /wp:paragraph -->', 'Иван Петров', '', 'publish', 'open', 'open', '', '%d0%b8%d0%b2%d0%b0%d0%bd-%d0%bf%d0%b5%d1%82%d1%80%d0%be%d0%b2', '', '', '2020-03-26 11:02:24', '2020-03-26 08:02:24', '', 0, 'http://localhost/itdelo/?p=216', 0, 'post', '', 0),
(217, 1, '2020-03-26 10:56:38', '2020-03-26 07:56:38', '', 'photo-1483389127117-b6a2102724ae', '', 'inherit', 'open', 'closed', '', 'photo-1483389127117-b6a2102724ae', '', '', '2020-03-26 10:56:38', '2020-03-26 07:56:38', '', 216, 'http://localhost/itdelo/wp-content/uploads/2020/03/photo-1483389127117-b6a2102724ae.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2020-03-26 10:56:59', '2020-03-26 07:56:59', '<!-- wp:paragraph -->\n<p> Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий.  </p>\n<!-- /wp:paragraph -->', 'Иван Петров', '', 'inherit', 'closed', 'closed', '', '216-revision-v1', '', '', '2020-03-26 10:56:59', '2020-03-26 07:56:59', '', 216, 'http://localhost/itdelo/2020/03/26/216-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(219, 1, '2020-03-26 11:00:19', '2020-03-26 08:00:19', '<!-- wp:paragraph -->\n<p> Системный администратор.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий.  </p>\n<!-- /wp:paragraph -->', 'Джон Смит', '', 'publish', 'open', 'open', '', '%d0%b4%d0%b6%d0%be%d0%bd-%d1%81%d0%bc%d0%b8%d1%82', '', '', '2020-03-26 11:03:00', '2020-03-26 08:03:00', '', 0, 'http://localhost/itdelo/?p=219', 0, 'post', '', 0),
(220, 1, '2020-03-26 11:00:04', '2020-03-26 08:00:04', '', 'photo-1497493292307-31c376b6e479', '', 'inherit', 'open', 'closed', '', 'photo-1497493292307-31c376b6e479', '', '', '2020-03-26 11:00:04', '2020-03-26 08:00:04', '', 219, 'http://localhost/itdelo/wp-content/uploads/2020/03/photo-1497493292307-31c376b6e479.jpg', 0, 'attachment', 'image/jpeg', 0),
(221, 1, '2020-03-26 11:00:19', '2020-03-26 08:00:19', '<!-- wp:paragraph -->\n<p> Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий.  </p>\n<!-- /wp:paragraph -->', 'Джон Смит', '', 'inherit', 'closed', 'closed', '', '219-revision-v1', '', '', '2020-03-26 11:00:19', '2020-03-26 08:00:19', '', 219, 'http://localhost/itdelo/2020/03/26/219-revision-v1/', 0, 'revision', '', 0),
(222, 1, '2020-03-26 11:01:40', '2020-03-26 08:01:40', '<!-- wp:paragraph -->\n<p>Специалист по IT-технологиям.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий.  </p>\n<!-- /wp:paragraph -->', 'Василий Иванов', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2020-03-26 11:01:40', '2020-03-26 08:01:40', '', 213, 'http://localhost/itdelo/2020/03/26/213-revision-v1/', 0, 'revision', '', 0),
(223, 1, '2020-03-26 11:02:24', '2020-03-26 08:02:24', '<!-- wp:paragraph -->\n<p> Программист.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий.  </p>\n<!-- /wp:paragraph -->', 'Иван Петров', '', 'inherit', 'closed', 'closed', '', '216-revision-v1', '', '', '2020-03-26 11:02:24', '2020-03-26 08:02:24', '', 216, 'http://localhost/itdelo/2020/03/26/216-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2020-03-26 11:03:00', '2020-03-26 08:03:00', '<!-- wp:paragraph -->\n<p> Системный администратор.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий.  </p>\n<!-- /wp:paragraph -->', 'Джон Смит', '', 'inherit', 'closed', 'closed', '', '219-revision-v1', '', '', '2020-03-26 11:03:00', '2020-03-26 08:03:00', '', 219, 'http://localhost/itdelo/2020/03/26/219-revision-v1/', 0, 'revision', '', 0),
(225, 1, '2020-03-26 11:14:01', '2020-03-26 08:14:01', '<!-- wp:paragraph -->\n<p> Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий. </p>\n<!-- /wp:paragraph -->', 'Отзыв 1', '', 'publish', 'open', 'open', '', '%d0%be%d1%82%d0%b7%d1%8b%d0%b2-1', '', '', '2020-03-26 11:15:43', '2020-03-26 08:15:43', '', 0, 'http://localhost/itdelo/?p=225', 0, 'post', '', 0),
(226, 1, '2020-03-26 11:12:48', '2020-03-26 08:12:48', '', 'photo-1556761175-4b46a572b786', '', 'inherit', 'open', 'closed', '', 'photo-1556761175-4b46a572b786', '', '', '2020-03-26 11:12:48', '2020-03-26 08:12:48', '', 225, 'http://localhost/itdelo/wp-content/uploads/2020/03/photo-1556761175-4b46a572b786.jpg', 0, 'attachment', 'image/jpeg', 0),
(227, 1, '2020-03-26 11:13:00', '2020-03-26 08:13:00', '', 'photo-1563536310477-c7b4e3a800c2', '', 'inherit', 'open', 'closed', '', 'photo-1563536310477-c7b4e3a800c2', '', '', '2020-03-26 11:13:00', '2020-03-26 08:13:00', '', 225, 'http://localhost/itdelo/wp-content/uploads/2020/03/photo-1563536310477-c7b4e3a800c2.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2020-03-26 11:13:23', '2020-03-26 08:13:23', '', 'photo-1569012871812-f38ee64cd54c', '', 'inherit', 'open', 'closed', '', 'photo-1569012871812-f38ee64cd54c', '', '', '2020-03-26 11:13:23', '2020-03-26 08:13:23', '', 225, 'http://localhost/itdelo/wp-content/uploads/2020/03/photo-1569012871812-f38ee64cd54c.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 1, '2020-03-26 11:14:01', '2020-03-26 08:14:01', '<!-- wp:paragraph -->\n<p> Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий. </p>\n<!-- /wp:paragraph -->', 'Отзыв 1', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2020-03-26 11:14:01', '2020-03-26 08:14:01', '', 225, 'http://localhost/itdelo/2020/03/26/225-revision-v1/', 0, 'revision', '', 0),
(230, 1, '2020-03-26 11:14:44', '2020-03-26 08:14:44', '<!-- wp:paragraph -->\n<p> Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач. </p>\n<!-- /wp:paragraph -->', 'Отзыв 2', '', 'publish', 'open', 'open', '', '%d0%be%d1%82%d0%b7%d1%8b%d0%b2-2', '', '', '2020-03-26 11:14:44', '2020-03-26 08:14:44', '', 0, 'http://localhost/itdelo/?p=230', 0, 'post', '', 0),
(231, 1, '2020-03-26 11:14:44', '2020-03-26 08:14:44', '<!-- wp:paragraph -->\n<p> Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач. </p>\n<!-- /wp:paragraph -->', 'Отзыв 2', '', 'inherit', 'closed', 'closed', '', '230-revision-v1', '', '', '2020-03-26 11:14:44', '2020-03-26 08:14:44', '', 230, 'http://localhost/itdelo/2020/03/26/230-revision-v1/', 0, 'revision', '', 0),
(232, 1, '2020-03-26 11:15:26', '2020-03-26 08:15:26', '<!-- wp:paragraph -->\n<p> Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития. </p>\n<!-- /wp:paragraph -->', 'Отзыв 3', '', 'publish', 'open', 'open', '', '%d0%be%d1%82%d0%b7%d1%8b%d0%b2-3', '', '', '2020-03-26 11:15:26', '2020-03-26 08:15:26', '', 0, 'http://localhost/itdelo/?p=232', 0, 'post', '', 0),
(233, 1, '2020-03-26 11:15:26', '2020-03-26 08:15:26', '<!-- wp:paragraph -->\n<p> Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития. </p>\n<!-- /wp:paragraph -->', 'Отзыв 3', '', 'inherit', 'closed', 'closed', '', '232-revision-v1', '', '', '2020-03-26 11:15:26', '2020-03-26 08:15:26', '', 232, 'http://localhost/itdelo/2020/03/26/232-revision-v1/', 0, 'revision', '', 0),
(234, 1, '2020-03-26 11:16:54', '2020-03-26 08:16:54', '', 'Отзывы наших клиентов', '', 'publish', 'closed', 'closed', '', '%d0%be%d1%82%d0%b7%d1%8b%d0%b2%d1%8b-%d0%bd%d0%b0%d1%88%d0%b8%d1%85-%d0%ba%d0%bb%d0%b8%d0%b5%d0%bd%d1%82%d0%be%d0%b2', '', '', '2020-03-26 11:16:56', '2020-03-26 08:16:56', '', 0, 'http://localhost/itdelo/?page_id=234', 0, 'page', '', 0),
(235, 1, '2020-03-26 11:16:54', '2020-03-26 08:16:54', '', 'Отзывы наших клиентов', '', 'inherit', 'closed', 'closed', '', '234-revision-v1', '', '', '2020-03-26 11:16:54', '2020-03-26 08:16:54', '', 234, 'http://localhost/itdelo/2020/03/26/234-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2020-03-26 11:21:57', '2020-03-26 08:21:57', '', 'Богатый опыт в IT-сфере', '', 'publish', 'open', 'open', '', '%d0%b1%d0%be%d0%b3%d0%b0%d1%82%d1%8b%d0%b9-%d0%be%d0%bf%d1%8b%d1%82-%d0%b2-it-%d1%81%d1%84%d0%b5%d1%80%d0%b5', '', '', '2020-04-04 13:01:06', '2020-04-04 10:01:06', '', 0, 'http://localhost/itdelo/?p=238', 0, 'post', '', 0),
(239, 1, '2020-03-26 11:21:57', '2020-03-26 08:21:57', '<!-- wp:paragraph -->\n<p> Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития.  </p>\n<!-- /wp:paragraph -->', 'Богатый опыт в IT-сфере', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2020-03-26 11:21:57', '2020-03-26 08:21:57', '', 238, 'http://localhost/itdelo/2020/03/26/238-revision-v1/', 0, 'revision', '', 0),
(240, 1, '2020-03-26 11:22:40', '2020-03-26 08:22:40', '', 'Индивидуальный подход', '', 'publish', 'open', 'open', '', '%d0%b8%d0%bd%d0%b4%d0%b8%d0%b2%d0%b8%d0%b4%d1%83%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d0%b9-%d0%bf%d0%be%d0%b4%d1%85%d0%be%d0%b4', '', '', '2020-04-04 13:00:48', '2020-04-04 10:00:48', '', 0, 'http://localhost/itdelo/?p=240', 0, 'post', '', 0),
(241, 1, '2020-03-26 11:22:40', '2020-03-26 08:22:40', '<!-- wp:paragraph -->\n<p> Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития.  </p>\n<!-- /wp:paragraph -->', 'Индивидуальный подход', '', 'inherit', 'closed', 'closed', '', '240-revision-v1', '', '', '2020-03-26 11:22:40', '2020-03-26 08:22:40', '', 240, 'http://localhost/itdelo/2020/03/26/240-revision-v1/', 0, 'revision', '', 0),
(242, 1, '2020-03-26 11:23:22', '2020-03-26 08:23:22', '', 'Гарантия качества', '', 'publish', 'open', 'open', '', '%d0%b3%d0%b0%d1%80%d0%b0%d0%bd%d1%82%d0%b8%d1%8f-%d0%ba%d0%b0%d1%87%d0%b5%d1%81%d1%82%d0%b2%d0%b0', '', '', '2020-04-04 13:00:19', '2020-04-04 10:00:19', '', 0, 'http://localhost/itdelo/?p=242', 0, 'post', '', 0),
(243, 1, '2020-03-26 11:23:22', '2020-03-26 08:23:22', '<!-- wp:paragraph -->\n<p> Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития.  </p>\n<!-- /wp:paragraph -->', 'Гарантия качества', '', 'inherit', 'closed', 'closed', '', '242-revision-v1', '', '', '2020-03-26 11:23:22', '2020-03-26 08:23:22', '', 242, 'http://localhost/itdelo/2020/03/26/242-revision-v1/', 0, 'revision', '', 0),
(248, 1, '2020-03-26 13:33:07', '2020-03-26 10:33:07', '', 'pexels-photo-3534471', '', 'inherit', 'open', 'closed', '', 'pexels-photo-3534471', '', '', '2020-03-26 13:33:07', '2020-03-26 10:33:07', '', 242, 'http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-3534471.jpeg', 0, 'attachment', 'image/jpeg', 0),
(249, 1, '2020-03-26 13:33:38', '2020-03-26 10:33:38', '<!-- wp:paragraph -->\n<p> Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития.&nbsp; </p>\n<!-- /wp:paragraph -->', 'Гарантия качества', '', 'inherit', 'closed', 'closed', '', '242-revision-v1', '', '', '2020-03-26 13:33:38', '2020-03-26 10:33:38', '', 242, 'http://localhost/itdelo/2020/03/26/242-revision-v1/', 0, 'revision', '', 0),
(250, 1, '2020-03-26 13:34:19', '2020-03-26 10:34:19', '<!-- wp:paragraph -->\n<p> Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития.&nbsp; </p>\n<!-- /wp:paragraph -->', 'Индивидуальный подход', '', 'inherit', 'closed', 'closed', '', '240-revision-v1', '', '', '2020-03-26 13:34:19', '2020-03-26 10:34:19', '', 240, 'http://localhost/itdelo/2020/03/26/240-revision-v1/', 0, 'revision', '', 0),
(251, 1, '2020-03-26 13:34:56', '2020-03-26 10:34:56', '<!-- wp:paragraph -->\n<p> Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития.&nbsp; </p>\n<!-- /wp:paragraph -->', 'Богатый опыт в IT-сфере', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2020-03-26 13:34:56', '2020-03-26 10:34:56', '', 238, 'http://localhost/itdelo/2020/03/26/238-revision-v1/', 0, 'revision', '', 0),
(253, 1, '2020-03-26 13:44:02', '2020-03-26 10:44:02', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Безопасность', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-03-26 13:44:02', '2020-03-26 10:44:02', '', 69, 'http://localhost/itdelo/2020/03/26/69-revision-v1/', 0, 'revision', '', 0),
(254, 1, '2020-03-26 13:44:32', '2020-03-26 10:44:32', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'IT Поддержка', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2020-03-26 13:44:32', '2020-03-26 10:44:32', '', 72, 'http://localhost/itdelo/2020/03/26/72-revision-v1/', 0, 'revision', '', 0),
(255, 1, '2020-03-26 13:44:52', '2020-03-26 10:44:52', '<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Сети', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-03-26 13:44:52', '2020-03-26 10:44:52', '', 75, 'http://localhost/itdelo/2020/03/26/75-revision-v1/', 0, 'revision', '', 0),
(256, 1, '2020-03-26 13:45:08', '2020-03-26 10:45:08', '<!-- wp:paragraph -->\n<p>Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение дальнейших направлений развития. Товарищи! консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Таким образом реализация намеченных плановых заданий требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет оценить значение систем массового участия. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа форм развития.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание существенных финансовых и административных условий.</p>\n<!-- /wp:paragraph -->', 'Компьютеры', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-03-26 13:45:08', '2020-03-26 10:45:08', '', 78, 'http://localhost/itdelo/2020/03/26/78-revision-v1/', 0, 'revision', '', 0),
(259, 1, '2020-03-27 17:19:31', '2020-03-27 14:19:31', '', 'logo5', '', 'inherit', 'open', 'closed', '', 'logo5', '', '', '2020-03-27 17:19:31', '2020-03-27 14:19:31', '', 0, 'http://www.kunstnik.com/wp-content/uploads/2020/03/logo5.svg', 0, 'attachment', 'image/svg+xml', 0),
(261, 1, '2020-03-27 17:27:52', '2020-03-27 14:27:52', '', 'icon', '', 'inherit', 'open', 'closed', '', 'icon', '', '', '2020-03-27 17:27:52', '2020-03-27 14:27:52', '', 0, 'http://www.kunstnik.com/wp-content/uploads/2020/03/icon.png', 0, 'attachment', 'image/png', 0),
(264, 1, '2020-03-29 14:10:06', '2020-03-29 11:10:06', '', 'logo6', '', 'inherit', 'open', 'closed', '', 'logo6', '', '', '2020-03-29 14:10:06', '2020-03-29 11:10:06', '', 0, 'http://www.kunstnik.com/wp-content/uploads/2020/03/logo6.svg', 0, 'attachment', 'image/svg+xml', 0),
(267, 1, '2020-04-04 13:00:19', '2020-04-04 10:00:19', '', 'Гарантия качества', '', 'inherit', 'closed', 'closed', '', '242-revision-v1', '', '', '2020-04-04 13:00:19', '2020-04-04 10:00:19', '', 242, 'http://www.kunstnik.com/2020/04/04/242-revision-v1/', 0, 'revision', '', 0),
(268, 1, '2020-04-04 13:00:48', '2020-04-04 10:00:48', '', 'Индивидуальный подход', '', 'inherit', 'closed', 'closed', '', '240-revision-v1', '', '', '2020-04-04 13:00:48', '2020-04-04 10:00:48', '', 240, 'http://www.kunstnik.com/2020/04/04/240-revision-v1/', 0, 'revision', '', 0),
(269, 1, '2020-04-04 13:01:06', '2020-04-04 10:01:06', '', 'Богатый опыт в IT-сфере', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2020-04-04 13:01:06', '2020-04-04 10:01:06', '', 238, 'http://www.kunstnik.com/2020/04/04/238-revision-v1/', 0, 'revision', '', 0),
(270, 1, '2020-04-04 13:01:45', '2020-04-04 10:01:45', '<!-- wp:paragraph -->\n<p>+372 53353535</p>\n<!-- /wp:paragraph -->', 'Позвоните нам', '', 'publish', 'open', 'open', '', '%d0%bf%d0%be%d0%b7%d0%b2%d0%be%d0%bd%d0%b8%d1%82%d0%b5-%d0%bd%d0%b0%d0%bc', '', '', '2020-04-04 13:01:45', '2020-04-04 10:01:45', '', 0, 'http://www.kunstnik.com/?p=270', 0, 'post', '', 0),
(271, 1, '2020-04-04 13:01:45', '2020-04-04 10:01:45', '<!-- wp:paragraph -->\n<p>+372 53353535</p>\n<!-- /wp:paragraph -->', 'Позвоните нам', '', 'inherit', 'closed', 'closed', '', '270-revision-v1', '', '', '2020-04-04 13:01:45', '2020-04-04 10:01:45', '', 270, 'http://www.kunstnik.com/2020/04/04/270-revision-v1/', 0, 'revision', '', 0),
(272, 1, '2020-04-04 13:08:06', '2020-04-04 10:08:06', '<!-- wp:html -->\n<table class=\"working-hours-table\">\n  <tr>\n   <td>Пн. - Пт.</td>\n   <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n   <td>9:00 - 18:00</td>\n  </tr>\n  <tr>\n   <td>Сб. - Вс.</td>\n   <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n   <td>11:00 - 16:00</td>\n  </tr>\n</table>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Часы работы', '', 'publish', 'open', 'open', '', '%d1%87%d0%b0%d1%81%d1%8b-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b', '', '', '2020-04-04 13:08:06', '2020-04-04 10:08:06', '', 0, 'http://www.kunstnik.com/?p=272', 0, 'post', '', 0),
(273, 1, '2020-04-04 13:08:06', '2020-04-04 10:08:06', '<!-- wp:html -->\n<table class=\"working-hours-table\">\n  <tr>\n   <td>Пн. - Пт.</td>\n   <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n   <td>9:00 - 18:00</td>\n  </tr>\n  <tr>\n   <td>Сб. - Вс.</td>\n   <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>\n   <td>11:00 - 16:00</td>\n  </tr>\n</table>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Часы работы', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2020-04-04 13:08:06', '2020-04-04 10:08:06', '', 272, 'http://www.kunstnik.com/2020/04/04/272-revision-v1/', 0, 'revision', '', 0),
(274, 1, '2020-04-04 13:08:56', '2020-04-04 10:08:56', '<!-- wp:paragraph -->\n<p>Наш специалист может приехать к вам в офис.</p>\n<!-- /wp:paragraph -->', 'Выезд к вам в офис', '', 'publish', 'open', 'open', '', '%d0%b2%d1%8b%d0%b5%d0%b7%d0%b4-%d1%81%d0%bf%d0%b5%d1%86%d0%b8%d0%b0%d0%bb%d0%b8%d1%81%d1%82%d0%b0-%d0%bd%d0%b0-%d0%b4%d0%be%d0%bc', '', '', '2020-04-17 20:10:22', '2020-04-17 17:10:22', '', 0, 'http://www.kunstnik.com/?p=274', 0, 'post', '', 0),
(275, 1, '2020-04-04 13:08:56', '2020-04-04 10:08:56', '<!-- wp:paragraph -->\n<p>Наш специалист может приехать к вам домой.</p>\n<!-- /wp:paragraph -->', 'Выезд специалиста на дом', '', 'inherit', 'closed', 'closed', '', '274-revision-v1', '', '', '2020-04-04 13:08:56', '2020-04-04 10:08:56', '', 274, 'http://www.kunstnik.com/2020/04/04/274-revision-v1/', 0, 'revision', '', 0),
(279, 1, '2020-04-17 19:10:11', '2020-04-17 16:10:11', '<!-- wp:paragraph -->\n<p>Этот раздел находится в стадии разработки.</p>\n<!-- /wp:paragraph -->', 'Портфолио', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2020-04-17 19:10:11', '2020-04-17 16:10:11', '', 117, 'http://www.kunstnik.com/2020/04/17/117-revision-v1/', 0, 'revision', '', 0),
(284, 1, '2020-04-17 19:58:17', '2020-04-17 16:58:17', ' ', '', '', 'publish', 'closed', 'closed', '', '284', '', '', '2020-04-17 21:13:57', '2020-04-17 18:13:57', '', 0, 'http://www.kunstnik.com/?p=284', 2, 'nav_menu_item', '', 0),
(285, 1, '2020-04-17 20:06:26', '2020-04-17 17:06:26', '<!-- wp:paragraph -->\n<p>Наш специалист может приехать к вам в офис.</p>\n<!-- /wp:paragraph -->', 'Выезд к вам в офис', '', 'inherit', 'closed', 'closed', '', '274-revision-v1', '', '', '2020-04-17 20:06:26', '2020-04-17 17:06:26', '', 274, 'http://www.kunstnik.com/2020/04/17/274-revision-v1/', 0, 'revision', '', 0),
(286, 1, '2020-04-17 20:09:31', '2020-04-17 17:09:31', '<!-- wp:paragraph -->\n<p>Наш специалист может приехать к вам в офис.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"><strong>Прайс-лист</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"\"><tbody><tr><td>Наименование услуги</td><td>Стоимость</td></tr><tr><td>Переустановка ОС</td><td>100</td></tr><tr><td></td><td></td></tr><tr><td></td><td></td></tr><tr><td></td><td></td></tr><tr><td></td><td></td></tr><tr><td></td><td></td></tr><tr><td></td><td></td></tr></tbody></table></figure>\n<!-- /wp:table -->', 'Выезд к вам в офис', '', 'inherit', 'closed', 'closed', '', '274-revision-v1', '', '', '2020-04-17 20:09:31', '2020-04-17 17:09:31', '', 274, 'http://www.kunstnik.com/2020/04/17/274-revision-v1/', 0, 'revision', '', 0),
(287, 1, '2020-04-17 20:10:22', '2020-04-17 17:10:22', '<!-- wp:paragraph -->\n<p>Наш специалист может приехать к вам в офис.</p>\n<!-- /wp:paragraph -->', 'Выезд к вам в офис', '', 'inherit', 'closed', 'closed', '', '274-revision-v1', '', '', '2020-04-17 20:10:22', '2020-04-17 17:10:22', '', 274, 'http://www.kunstnik.com/2020/04/17/274-revision-v1/', 0, 'revision', '', 0),
(288, 1, '2020-04-17 21:02:44', '2020-04-17 18:02:44', '', 'polylang_mo_29', '', 'private', 'closed', 'closed', '', 'polylang_mo_29', '', '', '2020-04-17 21:02:44', '2020-04-17 18:02:44', '', 0, 'http://www.kunstnik.com/?post_type=polylang_mo&p=288', 0, 'polylang_mo', '', 0),
(289, 1, '2020-04-17 21:02:44', '2020-04-17 18:02:44', '', 'polylang_mo_32', '', 'private', 'closed', 'closed', '', 'polylang_mo_32', '', '', '2020-04-17 21:02:44', '2020-04-17 18:02:44', '', 0, 'http://www.kunstnik.com/?post_type=polylang_mo&p=289', 0, 'polylang_mo', '', 0),
(290, 1, '2020-04-17 21:03:10', '2020-04-17 18:03:10', '<!-- wp:paragraph -->\n<p>Welcome to our website.</p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'publish', 'closed', 'closed', '', 'it-delo-english', '', '', '2020-04-17 21:07:43', '2020-04-17 18:07:43', '', 0, 'http://www.kunstnik.com/it-delo-english/', 0, 'page', '', 0),
(291, 1, '2020-04-17 21:03:46', '2020-04-17 18:03:46', '', 'Languages', '', 'publish', 'closed', 'closed', '', 'languages', '', '', '2020-05-16 17:34:43', '2020-05-16 14:34:43', '', 0, 'http://www.kunstnik.com/?p=291', 1, 'nav_menu_item', '', 0),
(293, 1, '2020-04-17 21:06:56', '2020-04-17 18:06:56', '<!-- wp:paragraph -->\n<p>Добро пожаловать на наш сайт!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности позволяет оценить значение систем массового участия. Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности играет важную роль в формировании существенных финансовых и административных условий </p>\n<!-- /wp:paragraph -->', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-04-17 21:06:56', '2020-04-17 18:06:56', '', 14, 'http://www.kunstnik.com/2020/04/17/14-revision-v1/', 0, 'revision', '', 0),
(294, 1, '2020-04-17 21:07:39', '2020-04-17 18:07:39', '<!-- wp:paragraph -->\n<p>Welcome to our website.</p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '290-revision-v1', '', '', '2020-04-17 21:07:39', '2020-04-17 18:07:39', '', 290, 'http://www.kunstnik.com/2020/04/17/290-revision-v1/', 0, 'revision', '', 0),
(295, 1, '2020-04-17 21:10:04', '2020-04-17 18:10:04', '<!-- wp:paragraph -->\n<p>Hello. Here will be the text about us.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2020-04-17 21:10:05', '2020-04-17 18:10:05', '', 0, 'http://www.kunstnik.com/?page_id=295', 1, 'page', '', 0),
(296, 1, '2020-04-17 21:10:04', '2020-04-17 18:10:04', '<!-- wp:paragraph -->\n<p>Hello. Here will be the text about us.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '295-revision-v1', '', '', '2020-04-17 21:10:04', '2020-04-17 18:10:04', '', 295, 'http://www.kunstnik.com/2020/04/17/295-revision-v1/', 0, 'revision', '', 0),
(297, 1, '2020-04-17 21:13:57', '2020-04-17 18:13:57', ' ', '', '', 'publish', 'closed', 'closed', '', '297', '', '', '2020-04-17 21:13:57', '2020-04-17 18:13:57', '', 0, 'http://www.kunstnik.com/?p=297', 4, 'nav_menu_item', '', 0),
(298, 1, '2020-04-17 21:15:20', '2020-04-17 18:15:20', ' ', '', '', 'publish', 'closed', 'closed', '', '298', '', '', '2020-04-17 21:18:42', '2020-04-17 18:18:42', '', 0, 'http://www.kunstnik.com/?p=298', 2, 'nav_menu_item', '', 0),
(299, 1, '2020-04-17 21:15:20', '2020-04-17 18:15:20', ' ', '', '', 'publish', 'closed', 'closed', '', '299', '', '', '2020-04-17 21:18:42', '2020-04-17 18:18:42', '', 0, 'http://www.kunstnik.com/?p=299', 1, 'nav_menu_item', '', 0),
(300, 1, '2020-04-17 21:16:59', '2020-04-17 18:16:59', '<!-- wp:paragraph -->\n<p>This section of our website is under construction.</p>\n<!-- /wp:paragraph -->', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2020-04-17 21:17:00', '2020-04-17 18:17:00', '', 0, 'http://www.kunstnik.com/?page_id=300', 0, 'page', '', 0),
(301, 1, '2020-04-17 21:16:59', '2020-04-17 18:16:59', '<!-- wp:paragraph -->\n<p>This section of our website is under construction.</p>\n<!-- /wp:paragraph -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '300-revision-v1', '', '', '2020-04-17 21:16:59', '2020-04-17 18:16:59', '', 300, 'http://www.kunstnik.com/2020/04/17/300-revision-v1/', 0, 'revision', '', 0),
(302, 1, '2020-04-17 21:18:16', '2020-04-17 18:18:16', '<!-- wp:paragraph -->\n<p>Phone 53535353</p>\n<!-- /wp:paragraph -->', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2020-04-17 21:18:17', '2020-04-17 18:18:17', '', 0, 'http://www.kunstnik.com/?page_id=302', 2, 'page', '', 0),
(303, 1, '2020-04-17 21:18:16', '2020-04-17 18:18:16', '<!-- wp:paragraph -->\n<p>Phone 53535353</p>\n<!-- /wp:paragraph -->', 'Contacts', '', 'inherit', 'closed', 'closed', '', '302-revision-v1', '', '', '2020-04-17 21:18:16', '2020-04-17 18:18:16', '', 302, 'http://www.kunstnik.com/2020/04/17/302-revision-v1/', 0, 'revision', '', 0),
(304, 1, '2020-04-17 21:18:42', '2020-04-17 18:18:42', ' ', '', '', 'publish', 'closed', 'closed', '', '304', '', '', '2020-04-17 21:18:42', '2020-04-17 18:18:42', '', 0, 'http://www.kunstnik.com/?p=304', 4, 'nav_menu_item', '', 0),
(305, 1, '2020-04-17 21:18:42', '2020-04-17 18:18:42', ' ', '', '', 'publish', 'closed', 'closed', '', '305', '', '', '2020-04-17 21:18:42', '2020-04-17 18:18:42', '', 0, 'http://www.kunstnik.com/?p=305', 3, 'nav_menu_item', '', 0),
(306, 1, '2020-04-17 21:21:31', '2020-04-17 18:21:31', '', 'Our services', '', 'publish', 'closed', 'closed', '', 'our-services', '', '', '2020-04-17 21:21:31', '2020-04-17 18:21:31', '', 0, 'http://www.kunstnik.com/?page_id=306', 0, 'page', '', 0),
(307, 1, '2020-04-17 21:21:31', '2020-04-17 18:21:31', '', 'Our services', '', 'inherit', 'closed', 'closed', '', '306-revision-v1', '', '', '2020-04-17 21:21:31', '2020-04-17 18:21:31', '', 306, 'http://www.kunstnik.com/2020/04/17/306-revision-v1/', 0, 'revision', '', 0),
(308, 1, '2020-04-17 21:22:32', '2020-04-17 18:22:32', '', 'Trust the experts', '', 'publish', 'closed', 'closed', '', 'trust-the-experts', '', '', '2020-04-17 21:22:32', '2020-04-17 18:22:32', '', 0, 'http://www.kunstnik.com/?page_id=308', 0, 'page', '', 0),
(309, 1, '2020-04-17 21:22:32', '2020-04-17 18:22:32', '', 'Trust the experts', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2020-04-17 21:22:32', '2020-04-17 18:22:32', '', 308, 'http://www.kunstnik.com/2020/04/17/308-revision-v1/', 0, 'revision', '', 0),
(310, 1, '2020-04-17 21:23:35', '2020-04-17 18:23:35', '', 'Computers', '', 'publish', 'open', 'open', '', 'computers', '', '', '2020-04-17 21:23:36', '2020-04-17 18:23:36', '', 0, 'http://www.kunstnik.com/?p=310', 0, 'post', '', 0),
(311, 1, '2020-04-17 21:23:35', '2020-04-17 18:23:35', '', 'Computers', '', 'inherit', 'closed', 'closed', '', '310-revision-v1', '', '', '2020-04-17 21:23:35', '2020-04-17 18:23:35', '', 310, 'http://www.kunstnik.com/2020/04/17/310-revision-v1/', 0, 'revision', '', 0),
(312, 1, '2020-04-17 21:24:11', '2020-04-17 18:24:11', '', 'Networks', '', 'publish', 'open', 'open', '', 'networks', '', '', '2020-04-17 21:24:12', '2020-04-17 18:24:12', '', 0, 'http://www.kunstnik.com/?p=312', 0, 'post', '', 0),
(313, 1, '2020-04-17 21:24:11', '2020-04-17 18:24:11', '', 'Networks', '', 'inherit', 'closed', 'closed', '', '312-revision-v1', '', '', '2020-04-17 21:24:11', '2020-04-17 18:24:11', '', 312, 'http://www.kunstnik.com/2020/04/17/312-revision-v1/', 0, 'revision', '', 0),
(314, 1, '2020-04-17 21:25:08', '2020-04-17 18:25:08', '', 'IT Support', '', 'publish', 'open', 'open', '', 'it-support-2', '', '', '2020-04-17 21:25:09', '2020-04-17 18:25:09', '', 0, 'http://www.kunstnik.com/?p=314', 0, 'post', '', 0),
(315, 1, '2020-04-17 21:25:08', '2020-04-17 18:25:08', '', 'IT Support', '', 'inherit', 'closed', 'closed', '', '314-revision-v1', '', '', '2020-04-17 21:25:08', '2020-04-17 18:25:08', '', 314, 'http://www.kunstnik.com/2020/04/17/314-revision-v1/', 0, 'revision', '', 0),
(316, 1, '2020-04-17 21:25:39', '2020-04-17 18:25:39', '', 'Security', '', 'publish', 'open', 'open', '', 'security', '', '', '2020-04-17 21:25:40', '2020-04-17 18:25:40', '', 0, 'http://www.kunstnik.com/?p=316', 0, 'post', '', 0),
(317, 1, '2020-04-17 21:25:39', '2020-04-17 18:25:39', '', 'Security', '', 'inherit', 'closed', 'closed', '', '316-revision-v1', '', '', '2020-04-17 21:25:39', '2020-04-17 18:25:39', '', 316, 'http://www.kunstnik.com/2020/04/17/316-revision-v1/', 0, 'revision', '', 0),
(318, 1, '2020-04-17 21:27:16', '2020-04-17 18:27:16', '', 'Invite us to your company', '', 'publish', 'open', 'open', '', 'invite-us-to-your-company', '', '', '2020-04-17 21:27:17', '2020-04-17 18:27:17', '', 0, 'http://www.kunstnik.com/?p=318', 0, 'post', '', 0),
(319, 1, '2020-04-17 21:27:16', '2020-04-17 18:27:16', '', 'Invite us to your company', '', 'inherit', 'closed', 'closed', '', '318-revision-v1', '', '', '2020-04-17 21:27:16', '2020-04-17 18:27:16', '', 318, 'http://www.kunstnik.com/2020/04/17/318-revision-v1/', 0, 'revision', '', 0),
(320, 1, '2020-04-17 21:27:38', '2020-04-17 18:27:38', '', 'Working hours', '', 'publish', 'open', 'open', '', 'working-hours', '', '', '2020-04-17 21:27:39', '2020-04-17 18:27:39', '', 0, 'http://www.kunstnik.com/?p=320', 0, 'post', '', 0),
(321, 1, '2020-04-17 21:27:38', '2020-04-17 18:27:38', '', 'Working hours', '', 'inherit', 'closed', 'closed', '', '320-revision-v1', '', '', '2020-04-17 21:27:38', '2020-04-17 18:27:38', '', 320, 'http://www.kunstnik.com/2020/04/17/320-revision-v1/', 0, 'revision', '', 0),
(322, 1, '2020-04-17 21:28:03', '2020-04-17 18:28:03', '<!-- wp:paragraph -->\n<p>53535353</p>\n<!-- /wp:paragraph -->', 'Call us', '', 'publish', 'open', 'open', '', 'call-us', '', '', '2020-04-17 21:28:04', '2020-04-17 18:28:04', '', 0, 'http://www.kunstnik.com/?p=322', 0, 'post', '', 0),
(323, 1, '2020-04-17 21:28:03', '2020-04-17 18:28:03', '<!-- wp:paragraph -->\n<p>53535353</p>\n<!-- /wp:paragraph -->', 'Call us', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2020-04-17 21:28:03', '2020-04-17 18:28:03', '', 322, 'http://www.kunstnik.com/2020/04/17/322-revision-v1/', 0, 'revision', '', 0),
(326, 1, '2020-04-17 21:30:46', '2020-04-17 18:30:46', '', 'Quality guarantee', '', 'publish', 'open', 'open', '', 'quality-guarantee', '', '', '2020-04-17 21:30:48', '2020-04-17 18:30:48', '', 0, 'http://www.kunstnik.com/?p=326', 0, 'post', '', 0),
(327, 1, '2020-04-17 21:30:46', '2020-04-17 18:30:46', '', 'Quality guarantee', '', 'inherit', 'closed', 'closed', '', '326-revision-v1', '', '', '2020-04-17 21:30:46', '2020-04-17 18:30:46', '', 326, 'http://www.kunstnik.com/2020/04/17/326-revision-v1/', 0, 'revision', '', 0),
(328, 1, '2020-04-17 21:31:05', '2020-04-17 18:31:05', '', 'Individual approach', '', 'publish', 'open', 'open', '', 'individual-approach', '', '', '2020-04-17 21:31:07', '2020-04-17 18:31:07', '', 0, 'http://www.kunstnik.com/?p=328', 0, 'post', '', 0),
(329, 1, '2020-04-17 21:31:05', '2020-04-17 18:31:05', '', 'Individual approach', '', 'inherit', 'closed', 'closed', '', '328-revision-v1', '', '', '2020-04-17 21:31:05', '2020-04-17 18:31:05', '', 328, 'http://www.kunstnik.com/2020/04/17/328-revision-v1/', 0, 'revision', '', 0),
(330, 1, '2020-04-17 21:31:31', '2020-04-17 18:31:31', '', 'Rich experience in IT', '', 'publish', 'open', 'open', '', 'rich-experience-in-it', '', '', '2020-04-17 21:31:32', '2020-04-17 18:31:32', '', 0, 'http://www.kunstnik.com/?p=330', 0, 'post', '', 0),
(331, 1, '2020-04-17 21:31:31', '2020-04-17 18:31:31', '', 'Rich experience in IT', '', 'inherit', 'closed', 'closed', '', '330-revision-v1', '', '', '2020-04-17 21:31:31', '2020-04-17 18:31:31', '', 330, 'http://www.kunstnik.com/2020/04/17/330-revision-v1/', 0, 'revision', '', 0),
(335, 1, '2020-08-13 18:12:51', '2020-08-13 15:12:51', '<!-- wp:paragraph -->\n<p>Новый текст</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:cover {\"url\":\"http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293-1-scaled.jpeg\",\"id\":101} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-image:url(http://localhost/itdelo/wp-content/uploads/2020/03/pexels-photo-2422293-1-scaled.jpeg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Введите заголовок...\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-08-13 18:12:51', '2020-08-13 15:12:51', '', 7, 'http://www.kunstnik.com/itdelo/2020/08/13/7-revision-v1/', 0, 'revision', '', 0),
(336, 1, '2020-08-13 18:14:46', '2020-08-13 15:14:46', '', 'pink-rose_watercolor', '', 'inherit', 'open', 'closed', '', 'pink-rose_watercolor', '', '', '2020-08-13 18:14:46', '2020-08-13 15:14:46', '', 7, 'http://www.kunstnik.com/itdelo/wp-content/uploads/2020/08/pink-rose_watercolor.jpg', 0, 'attachment', 'image/jpeg', 0),
(337, 1, '2020-08-13 18:15:55', '2020-08-13 15:15:55', '<!-- wp:paragraph -->\n<p>Новый текст</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea  commodo consequat. Duis aute irure dolor in reprehenderit in voluptate  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint  occaecat cupidatat non proident, sunt in culpa qui officia deserunt  mollit anim id est laborum. </p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2020-08-13 18:15:55', '2020-08-13 15:15:55', '', 7, 'http://www.kunstnik.com/itdelo/2020/08/13/7-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(3, 'Меню социальных ссылок', '%d0%bc%d0%b5%d0%bd%d1%8e-%d1%81%d0%be%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d1%85-%d1%81%d1%81%d1%8b%d0%bb%d0%be%d0%ba', 0),
(4, 'Меню социальных ссылок (2)', '%d0%bc%d0%b5%d0%bd%d1%8e-%d1%81%d0%be%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d1%85-%d1%81%d1%81%d1%8b%d0%bb%d0%be%d0%ba-2', 0),
(5, 'simple', 'simple', 0),
(6, 'grouped', 'grouped', 0),
(7, 'variable', 'variable', 0),
(8, 'external', 'external', 0),
(9, 'exclude-from-search', 'exclude-from-search', 0),
(10, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(11, 'featured', 'featured', 0),
(12, 'outofstock', 'outofstock', 0),
(13, 'rated-1', 'rated-1', 0),
(14, 'rated-2', 'rated-2', 0),
(15, 'rated-3', 'rated-3', 0),
(16, 'rated-4', 'rated-4', 0),
(17, 'rated-5', 'rated-5', 0),
(18, 'Uncategorized', 'uncategorized', 0),
(19, 'Услуги', 'services', 0),
(20, 'Новости', 'news', 0),
(21, 'Портфолио', 'portfolio', 0),
(22, 'Главное меню', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(23, 'команда', 'team', 0),
(24, 'отзывы', 'reviews', 0),
(25, 'Баннер текст', 'banner-text', 0),
(26, 'Социальные ссылки', '%d1%81%d0%be%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d1%81%d1%81%d1%8b%d0%bb%d0%ba%d0%b8', 0),
(27, 'featured', 'featured', 0),
(28, 'Языки', '%d1%8f%d0%b7%d1%8b%d0%ba%d0%b8', 0),
(29, 'Русский', 'ru', 0),
(30, 'Русский', 'pll_ru', 0),
(31, 'pll_5e99ef445fcc1', 'pll_5e99ef445fcc1', 0),
(32, 'English', 'en', 0),
(33, 'English', 'pll_en', 0),
(34, 'Uncategorized', 'uncategorized-en', 0),
(36, 'pll_5e99ef53dd929', 'pll_5e99ef53dd929', 0),
(37, 'pll_5e99ef53dd941', 'pll_5e99ef53dd941', 0),
(38, 'pll_5e99ef53dd94f', 'pll_5e99ef53dd94f', 0),
(39, 'pll_5e99ef53dd95a', 'pll_5e99ef53dd95a', 0),
(40, 'pll_5e99ef53dd966', 'pll_5e99ef53dd966', 0),
(41, 'pll_5e99ef53dd971', 'pll_5e99ef53dd971', 0),
(42, 'pll_5e99ef53dd988', 'pll_5e99ef53dd988', 0),
(43, 'pll_5e99ef5e40c91', 'pll_5e99ef5e40c91', 0),
(44, 'pll_5e99f0fd7c62e', 'pll_5e99f0fd7c62e', 0),
(45, 'Главное меню English', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e-english', 0),
(46, 'pll_5e99f29cd35c9', 'pll_5e99f29cd35c9', 0),
(47, 'pll_5e99f2e936398', 'pll_5e99f2e936398', 0),
(48, 'pll_5e99f3abb58d0', 'pll_5e99f3abb58d0', 0),
(49, 'pll_5e99f3e8ab3d4', 'pll_5e99f3e8ab3d4', 0),
(50, 'pll_5e99f4280d623', 'pll_5e99f4280d623', 0),
(51, 'pll_5e99f44cae00d', 'pll_5e99f44cae00d', 0),
(52, 'pll_5e99f4858be40', 'pll_5e99f4858be40', 0),
(53, 'pll_5e99f4a48bb9a', 'pll_5e99f4a48bb9a', 0),
(54, 'pll_5e99f50521d9b', 'pll_5e99f50521d9b', 0),
(55, 'pll_5e99f51ba2054', 'pll_5e99f51ba2054', 0),
(56, 'pll_5e99f5340119f', 'pll_5e99f5340119f', 0),
(57, 'pll_5e99f5d8542aa', 'pll_5e99f5d8542aa', 0),
(58, 'pll_5e99f5eb2fdb5', 'pll_5e99f5eb2fdb5', 0),
(59, 'pll_5e99f604e9b8e', 'pll_5e99f604e9b8e', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 30, 0),
(1, 31, 0),
(5, 29, 0),
(7, 29, 0),
(7, 44, 0),
(8, 29, 0),
(8, 47, 0),
(11, 29, 0),
(12, 29, 0),
(13, 29, 0),
(14, 29, 0),
(14, 43, 0),
(19, 30, 0),
(19, 36, 0),
(20, 30, 0),
(20, 37, 0),
(21, 30, 0),
(21, 38, 0),
(23, 30, 0),
(23, 39, 0),
(24, 30, 0),
(24, 40, 0),
(25, 30, 0),
(25, 41, 0),
(26, 3, 0),
(27, 3, 0),
(27, 30, 0),
(27, 42, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(31, 4, 0),
(32, 4, 0),
(33, 4, 0),
(34, 4, 0),
(34, 31, 0),
(34, 33, 0),
(35, 29, 0),
(42, 29, 0),
(44, 29, 0),
(52, 29, 0),
(53, 29, 0),
(55, 29, 0),
(56, 29, 0),
(60, 29, 0),
(64, 29, 0),
(69, 19, 0),
(69, 29, 0),
(69, 53, 0),
(70, 29, 0),
(72, 19, 0),
(72, 29, 0),
(72, 52, 0),
(73, 29, 0),
(75, 19, 0),
(75, 29, 0),
(75, 51, 0),
(76, 29, 0),
(78, 19, 0),
(78, 29, 0),
(78, 50, 0),
(79, 29, 0),
(90, 29, 0),
(91, 29, 0),
(100, 29, 0),
(101, 29, 0),
(108, 29, 0),
(110, 29, 0),
(112, 29, 0),
(117, 29, 0),
(117, 46, 0),
(120, 29, 0),
(121, 29, 0),
(122, 29, 0),
(123, 29, 0),
(124, 29, 0),
(125, 29, 0),
(127, 29, 0),
(128, 29, 0),
(130, 29, 0),
(131, 29, 0),
(133, 29, 0),
(134, 29, 0),
(135, 29, 0),
(156, 29, 0),
(160, 29, 0),
(160, 48, 0),
(163, 20, 0),
(163, 29, 0),
(164, 29, 0),
(166, 20, 0),
(166, 29, 0),
(167, 29, 0),
(169, 20, 0),
(169, 29, 0),
(170, 29, 0),
(187, 21, 0),
(187, 29, 0),
(189, 21, 0),
(189, 29, 0),
(191, 21, 0),
(191, 29, 0),
(196, 29, 0),
(196, 49, 0),
(206, 22, 0),
(208, 22, 0),
(210, 29, 0),
(213, 23, 0),
(213, 29, 0),
(216, 23, 0),
(216, 29, 0),
(217, 29, 0),
(219, 23, 0),
(219, 29, 0),
(220, 29, 0),
(225, 24, 0),
(225, 29, 0),
(226, 29, 0),
(227, 29, 0),
(228, 29, 0),
(230, 24, 0),
(230, 29, 0),
(232, 24, 0),
(232, 29, 0),
(234, 29, 0),
(238, 25, 0),
(238, 29, 0),
(238, 59, 0),
(240, 25, 0),
(240, 29, 0),
(240, 58, 0),
(242, 25, 0),
(242, 29, 0),
(242, 57, 0),
(248, 29, 0),
(259, 29, 0),
(261, 29, 0),
(264, 29, 0),
(270, 27, 0),
(270, 29, 0),
(270, 56, 0),
(272, 27, 0),
(272, 29, 0),
(272, 55, 0),
(274, 27, 0),
(274, 29, 0),
(274, 54, 0),
(284, 22, 0),
(290, 32, 0),
(290, 43, 0),
(291, 28, 0),
(295, 32, 0),
(295, 44, 0),
(297, 22, 0),
(298, 45, 0),
(299, 45, 0),
(300, 32, 0),
(300, 46, 0),
(302, 32, 0),
(302, 47, 0),
(304, 45, 0),
(305, 45, 0),
(306, 32, 0),
(306, 48, 0),
(308, 32, 0),
(308, 49, 0),
(310, 32, 0),
(310, 34, 0),
(310, 50, 0),
(312, 32, 0),
(312, 34, 0),
(312, 51, 0),
(314, 32, 0),
(314, 34, 0),
(314, 52, 0),
(316, 32, 0),
(316, 34, 0),
(316, 53, 0),
(318, 32, 0),
(318, 34, 0),
(318, 54, 0),
(320, 32, 0),
(320, 34, 0),
(320, 55, 0),
(322, 32, 0),
(322, 34, 0),
(322, 56, 0),
(326, 32, 0),
(326, 34, 0),
(326, 57, 0),
(328, 32, 0),
(328, 34, 0),
(328, 58, 0),
(330, 32, 0),
(330, 34, 0),
(330, 59, 0),
(336, 29, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_cat', '', 0, 0),
(19, 19, 'category', '', 0, 4),
(20, 20, 'category', '', 0, 3),
(21, 21, 'category', '', 0, 3),
(22, 22, 'nav_menu', '', 0, 4),
(23, 23, 'category', '', 0, 3),
(24, 24, 'category', '', 0, 3),
(25, 25, 'category', '', 0, 3),
(26, 26, 'nav_menu', '', 0, 0),
(27, 27, 'category', '', 0, 3),
(28, 28, 'nav_menu', '', 0, 1),
(29, 29, 'language', 'a:3:{s:6:\"locale\";s:5:\"ru_RU\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"ru\";}', 0, 56),
(30, 30, 'term_language', '', 0, 8),
(31, 31, 'term_translations', 'a:2:{s:2:\"ru\";i:1;s:2:\"en\";i:34;}', 0, 2),
(32, 32, 'language', 'a:3:{s:6:\"locale\";s:5:\"en_GB\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"gb\";}', 0, 16),
(33, 33, 'term_language', '', 0, 1),
(34, 34, 'category', '', 0, 10),
(36, 36, 'term_translations', 'a:1:{s:2:\"ru\";i:19;}', 0, 1),
(37, 37, 'term_translations', 'a:1:{s:2:\"ru\";i:20;}', 0, 1),
(38, 38, 'term_translations', 'a:1:{s:2:\"ru\";i:21;}', 0, 1),
(39, 39, 'term_translations', 'a:1:{s:2:\"ru\";i:23;}', 0, 1),
(40, 40, 'term_translations', 'a:1:{s:2:\"ru\";i:24;}', 0, 1),
(41, 41, 'term_translations', 'a:1:{s:2:\"ru\";i:25;}', 0, 1),
(42, 42, 'term_translations', 'a:1:{s:2:\"ru\";i:27;}', 0, 1),
(43, 43, 'post_translations', 'a:2:{s:2:\"ru\";i:14;s:2:\"en\";i:290;}', 0, 2),
(44, 44, 'post_translations', 'a:2:{s:2:\"en\";i:295;s:2:\"ru\";i:7;}', 0, 2),
(45, 45, 'nav_menu', '', 0, 4),
(46, 46, 'post_translations', 'a:2:{s:2:\"en\";i:300;s:2:\"ru\";i:117;}', 0, 2),
(47, 47, 'post_translations', 'a:2:{s:2:\"en\";i:302;s:2:\"ru\";i:8;}', 0, 2),
(48, 48, 'post_translations', 'a:2:{s:2:\"en\";i:306;s:2:\"ru\";i:160;}', 0, 2),
(49, 49, 'post_translations', 'a:2:{s:2:\"en\";i:308;s:2:\"ru\";i:196;}', 0, 2),
(50, 50, 'post_translations', 'a:2:{s:2:\"en\";i:310;s:2:\"ru\";i:78;}', 0, 2),
(51, 51, 'post_translations', 'a:2:{s:2:\"en\";i:312;s:2:\"ru\";i:75;}', 0, 2),
(52, 52, 'post_translations', 'a:2:{s:2:\"en\";i:314;s:2:\"ru\";i:72;}', 0, 2),
(53, 53, 'post_translations', 'a:2:{s:2:\"en\";i:316;s:2:\"ru\";i:69;}', 0, 2),
(54, 54, 'post_translations', 'a:2:{s:2:\"en\";i:318;s:2:\"ru\";i:274;}', 0, 2),
(55, 55, 'post_translations', 'a:2:{s:2:\"en\";i:320;s:2:\"ru\";i:272;}', 0, 2),
(56, 56, 'post_translations', 'a:2:{s:2:\"en\";i:322;s:2:\"ru\";i:270;}', 0, 2),
(57, 57, 'post_translations', 'a:2:{s:2:\"en\";i:326;s:2:\"ru\";i:242;}', 0, 2),
(58, 58, 'post_translations', 'a:2:{s:2:\"en\";i:328;s:2:\"ru\";i:240;}', 0, 2),
(59, 59, 'post_translations', 'a:2:{s:2:\"en\";i:330;s:2:\"ru\";i:238;}', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '341'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(19, 1, 'wp_user-settings-time', '1585323093'),
(20, 1, '_woocommerce_tracks_anon_id', 'woo:+AUDkXkIbFIoB7g0ESC7m3cD'),
(21, 1, 'nav_menu_recently_edited', '22'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(24, 1, 'closedpostboxes_attachment', 'a:0:{}'),
(25, 1, 'metaboxhidden_attachment', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(26, 1, 'meta-box-order_attachment', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:46:\"commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(27, 1, 'screen_layout_attachment', '2'),
(28, 1, 'session_tokens', 'a:1:{s:64:\"0b5c3de35081eb9d8b8f8a274d216ac7dc68dcab163e50cf1ab6d512b1d91eba\";a:4:{s:10:\"expiration\";i:1604422261;s:2:\"ip\";s:38:\"2001:7d0:82b5:4f80:dd63:a784:cedf:ac25\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604249461;}}'),
(29, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:20:\"2001:7d0:82b5:4f80::\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BY2t9YvMnqHCEwmG8vRmJFG.6U3742/', 'admin', 't030626@gmail.com', '', '2020-03-12 19:12:49', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-welcome-note', 'info', 'en_US', 'Новые возможности', 'Добро пожаловать в новую среду WooCommerce! В этом новом выпуске вы сможете на специальной консоли увидеть, как работает ваш магазин, управлять важными аспектами вашего бизнеса (такими как управление заказами, запасами, отзывами) из любой точки интерфейса, разобраться в данных, поступающих из вашего магазина, с помощью совершенно нового раздела аналитики и многое другое!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-03-19 16:49:55', NULL, 0),
(2, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Подключиться к WooCommerce.com', 'Подключайтесь, чтобы получать важные уведомления о продукте и обновления.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-03-19 16:49:55', NULL, 0),
(3, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Добро пожаловать в WooCommerce! Настройте свой магазин и начните продавать', 'Мы поможем вам пройти самые важные этапы, чтобы ваш магазин заработал.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-03-19 16:50:30', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'learn-more', 'Узнать больше', 'https://woocommerce.wordpress.com/', 'actioned', 0),
(2, 2, 'connect', 'Подключить', '?page=wc-addons&section=helper', 'actioned', 0),
(3, 3, 'continue-profiler', 'Продолжить настройку магазина', 'http://localhost/itdelo/wp-admin/admin.php?page=wc-admin&enable_onboarding=1', 'unactioned', 1),
(4, 3, 'skip-profiler', 'Пропустить установку', 'http://localhost/itdelo/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Пониженная ставка', '%d0%bf%d0%be%d0%bd%d0%b8%d0%b6%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0'),
(2, 'Нулевая ставка', '%d0%bd%d1%83%d0%bb%d0%b5%d0%b2%d0%b0%d1%8f-%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:705:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:17:\"t030626@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1584809394);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Индексы таблицы `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Индексы таблицы `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Индексы таблицы `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Индексы таблицы `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Индексы таблицы `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Индексы таблицы `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Индексы таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4060;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=936;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
