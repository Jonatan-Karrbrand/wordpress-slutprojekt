-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2018 at 10:03 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT
= 0;
START TRANSACTION;
SET time_zone
= "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_slutprojekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta`
(
  `meta_id` bigint
(20) UNSIGNED NOT NULL,
  `comment_id` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar
(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments`
(
  `comment_ID` bigint
(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar
(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar
(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int
(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar
(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar
(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar
(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint
(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`
comment_ID`,
`comment_post_ID
`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'En kommentarsförfattare', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-12-18 10:38:15', '2018-12-18 09:38:15', 'Hej, Det här är en kommentar.\nFör att komma igång med moderering, redigering och radering av kommentarer, besök sidan för kommentarer i adminpanelen.\nKommentarsförfattares visningsbilder kommer från <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links`
(
  `link_id` bigint
(20) UNSIGNED NOT NULL,
  `link_url` varchar
(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar
(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar
(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar
(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar
(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar
(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint
(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int
(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar
(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar
(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options`
(
  `option_id` bigint
(20) UNSIGNED NOT NULL,
  `option_name` varchar
(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar
(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`
option_id`,
`option_name
`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt', 'yes'),
(2, 'home', 'http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt', 'yes'),
(3, 'blogname', 'wordpress-slutprojekt', 'yes'),
(4, 'blogdescription', 'En till WordPress-webbplats', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test@hotmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'Y-m-d H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:8:\"butik/?$\";s:27:\"index.php?post_type=product\";s:38:\"butik/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:33:\"butik/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:25:\"butik/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"produkt-kategori/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"produkt-kategori/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"produkt-kategori/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"produkt-kategori/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"produkt-kategori/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:53:\"produkt-tagg/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:48:\"produkt-tagg/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:29:\"produkt-tagg/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:41:\"produkt-tagg/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:23:\"produkt-tagg/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"produkt/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produkt/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produkt/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produkt/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produkt/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produkt/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produkt/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produkt/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produkt/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produkt/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produkt/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produkt/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produkt/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produkt/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produkt/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produkt/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produkt/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produkt/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produkt/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produkt/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produkt/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produkt/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:19:\"jetpack/jetpack.php\";i:1;s:45:\"woocommerce-services/woocommerce-services.php\";i:2;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/Stockholm', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'sv_SE', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:14:{i:1545127396;a:1:{s:25:\"delete_version_transients\";a:1:{s:32:\"c8642391bf5e197940d7392febcbea8f\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;s:10:\"1545127366\";}}}}i:1545127406;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1545129496;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1545130164;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1545130361;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1545137364;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545148164;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1545169096;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1545174000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545212308;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545212964;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545212974;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546300800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(120, '_site_transient_timeout_theme_roots', '1545128561', 'no'),
(121, '_site_transient_theme_roots', 'a:4:{s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(126, '_site_transient_timeout_browser_e0b7751b8040fb7c8de50ddf95d10645', '1545730711', 'no'),
(127, '_site_transient_browser_e0b7751b8040fb7c8de50ddf95d10645', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"64.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, 'can_compress_scripts', '0', 'no'),
(130, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1545169116', 'no'),
(131, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no'),
(132, '_transient_timeout_feed_28715d71ac4c9959532fa55dcd9977b7', '1545169116', 'no');
INSERT INTO `wp_options` (`
option_id`,
`option_name
`, `option_value`, `autoload`) VALUES
(133, '_transient_feed_28715d71ac4c9959532fa55dcd9977b7', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Blog | Svenska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://sv.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"Releasearkiv för WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 13 Dec 2018 13:41:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"sv-SE\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0.2-RC1-44259\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"Säkerhetsuppdatering släppt 2018-12-13. Bakåtkompatibilitet påverkas.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://sv.wordpress.org/2018/12/13/sakerhetsuppdatering-slappt-2018-12-13-bakatkompatibilitet-paverkas/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:112:\"https://sv.wordpress.org/2018/12/13/sakerhetsuppdatering-slappt-2018-12-13-bakatkompatibilitet-paverkas/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 13 Dec 2018 13:41:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1265\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:439:\"Natten till idag, 13 december 2018 släpptes en säkerhetsuppdatering (version 5.0.1) för WordPress. Motsvarande säkerhetsuppdatering har även gjorts som version 4.9.9 och för alla huvudversioner tillbaka till 3.7-grenen. Webbplatser som använder standardinställningarna kommer att försöka uppdatera sig själva automatiskt under dagen. Om din webbplats av någon anledning inte uppdateras automatiskt bör du se till att [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1050:\"<p>Natten till idag, 13 december 2018 släpptes en säkerhetsuppdatering (version 5.0.1) för WordPress. Motsvarande säkerhetsuppdatering har även gjorts som version 4.9.9 och för alla huvudversioner tillbaka till 3.7-grenen.</p>\n<p>Webbplatser som använder standardinställningarna kommer att försöka uppdatera sig själva automatiskt under dagen. Om din webbplats av någon anledning inte uppdateras automatiskt bör du se till att uppdatera manuellt när du kommer åt.</p>\n<p>Denna uppdatering innebär att WordPress på ett par ställen ”under huven” beter sig en aning annorlunda. Vanliga användare kan råka ut för att WordPress nu kontrollerar att innehållet i en fil man laddar upp stämmer överens med ändelsen på filnamnet.</p>\n<p>Mer information finns att läsa i <a href=\"https://wordpress.org/news/2018/12/wordpress-5-0-1-security-release/\">den officiella nyhetsnotisen</a> och i <a href=\"https://make.wordpress.org/core/2018/12/13/backwards-compatibility-breaks-in-5-0-1/\">den tekniska notisen för utvecklare</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"https://sv.wordpress.org/2018/12/13/sakerhetsuppdatering-slappt-2018-12-13-bakatkompatibilitet-paverkas/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"Snart släpps WordPress 5.0 med ny redigerare – Några saker att tänka på innan du uppdaterar\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:126:\"https://sv.wordpress.org/2018/12/05/snart-slapps-wordpress-5-0-med-ny-redigerare-nagra-saker-att-tanka-pa-innan-du-uppdaterar/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:135:\"https://sv.wordpress.org/2018/12/05/snart-slapps-wordpress-5-0-med-ny-redigerare-nagra-saker-att-tanka-pa-innan-du-uppdaterar/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 04 Dec 2018 23:52:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1257\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:428:\"Om allt går enligt planerna kommer uppdateringen till WordPress 5.0 att släppas torsdag den 6 december 2018 (troligtvis under kvällen eller natten mot fredagen). Standardinställningen i WordPress är att uppdatering till ny huvudversion av WordPress (4.9, 5.0, 5.1 o.s.v.) sker först när administratören själv väljer att genomföra uppdateringen via administrationspanelen: Hem – Uppdateringar. Förutom att [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1892:\"<p>Om allt går enligt planerna kommer uppdateringen till WordPress 5.0 att släppas torsdag den 6 december 2018 (troligtvis under kvällen eller natten mot fredagen).</p>\n<p>Standardinställningen i WordPress är att uppdatering till ny huvudversion av WordPress (4.9, 5.0, 5.1 o.s.v.) sker först när administratören själv väljer att genomföra uppdateringen via administrationspanelen: Hem – Uppdateringar.</p>\n<p>Förutom att WordPress 5.0 innehåller nödvändiga justeringar för att WordPress ska fungera väl med PHP 7.3 (som släpps i dagarna) handlar denna version om en enda sak:<br />\n<strong>En helt ny redigeringsmiljö, baserad på innehållsblock.</strong></p>\n<p>Redigeraren har utvecklats och provkörts under kodnamnet ”Gutenberg”, och nu anser utvecklarna att tiden är mogen för de stora massorna att ta klivet över till den nya redigeringsmiljön.</p>\n<p>WordPress.com har gjort en beskrivning av blockredigeraren som du hittar på <a href=\"https://sv.support.wordpress.com/wordpress-redigerare/\">https://sv.support.wordpress.com/wordpress-redigerare/</a></p>\n<p>Innan du uppdaterar till WordPress 5.0 kan det vara god idé att kontrollera om dina tillägg och ditt tema är förberedda för den nya redigeraren.</p>\n<p>I synnerhet gäller detta om din webbplats på olika sätt modifierar den normala redigeringsmiljön, t.ex. genom att lägga till extra knappar i redigeraren och liknande.</p>\n<p>Om så skulle vara fallet kan (och bör) du fortfarande uppdatera till version 5.0, men då kan det finnas anledning att installera <a href=\"https://sv.wordpress.org/plugins/classic-editor/\">tillägget Classic Editor</a> för att fortsätta med den klassiska redigeraren tills dina tillägg, ditt tema (och du själv) är ikapp.</p>\n<p>Du kan provköra Gutenberg här: <a href=\"https://sv.wordpress.org/gutenberg/\">https://sv.wordpress.org/gutenberg/</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"https://sv.wordpress.org/2018/12/05/snart-slapps-wordpress-5-0-med-ny-redigerare-nagra-saker-att-tanka-pa-innan-du-uppdaterar/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"Biljetter till WordCamp Nordic 2019 släppta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://sv.wordpress.org/2018/11/12/biljetter-till-wordcamp-nordic-2019-slappta/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://sv.wordpress.org/2018/11/12/biljetter-till-wordcamp-nordic-2019-slappta/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Nov 2018 14:21:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:7:\"Meetups\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1250\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:321:\"Nu är biljetterna till WordCamp Nordic släppta! Eventet går av stapeln 7-8 mars 2019 och riktar sig till alla länder i norden. Ett bra tillfälle att träffa våra norska, finska, danska och isländska WordPress-kollegor. Läs mer om eventet här. Biljetterna går år fort, missa inte chansen! Köp biljetterna här!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Stanislav Khromov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1069:\"\n<figure class=\"wp-block-image\"><img src=\"https://sv.wordpress.org/files/2018/11/Screen-Shot-2018-11-12-at-12.50.20-copy.jpg\" alt=\"\" class=\"wp-image-1252\" srcset=\"https://sv.wordpress.org/files/2018/11/Screen-Shot-2018-11-12-at-12.50.20-copy.jpg 2860w, https://sv.wordpress.org/files/2018/11/Screen-Shot-2018-11-12-at-12.50.20-copy-300x150.jpg 300w, https://sv.wordpress.org/files/2018/11/Screen-Shot-2018-11-12-at-12.50.20-copy-768x383.jpg 768w, https://sv.wordpress.org/files/2018/11/Screen-Shot-2018-11-12-at-12.50.20-copy-1024x511.jpg 1024w\" sizes=\"(max-width: 2860px) 100vw, 2860px\" /></figure>\n\n\n\n<p>Nu är biljetterna till WordCamp Nordic släppta! Eventet går av stapeln <strong>7-8 mars 2019</strong> och riktar sig till alla länder i norden. Ett bra tillfälle att träffa våra norska, finska, danska och isländska WordPress-kollegor. <a href=\"https://2019.nordic.wordcamp.org/\">Läs mer om eventet här</a>. Biljetterna går år fort, missa inte chansen!<br></p>\n\n\n\n<h3><a href=\"https://2019.nordic.wordcamp.org/tickets/\">Köp biljetterna här!</a></h3>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://sv.wordpress.org/2018/11/12/biljetter-till-wordcamp-nordic-2019-slappta/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"WordPress-träff i Stockholm den 13 November – lär dig bygga webbplatser med nya blockredigeraren Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:141:\"https://sv.wordpress.org/2018/11/06/wordpress-traff-i-stockholm-den-13-november-lar-dig-bygga-webbplatser-med-nya-blockredigeraren-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:149:\"https://sv.wordpress.org/2018/11/06/wordpress-traff-i-stockholm-den-13-november-lar-dig-bygga-webbplatser-med-nya-blockredigeraren-gutenberg/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Nov 2018 12:22:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Meetups\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1243\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:365:\"Nu är det dags för ett nytt Meetup i Stockholm och precis som förra gången så kommer bland annat den nya blockredigeraren (Gutenberg) att stå på schemat. Senare i november planerar man att lansera version 5.0 av WordPress med den nya blockredigeraren som utvecklats under kodnamnet ”Gutenberg”. Redan nu har många tillägg anpassats och blivit [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Stanislav Khromov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6882:\"\n<figure class=\"wp-block-image\"><img src=\"https://sv.wordpress.org/files/2018/11/gutenberg-first-impressions.jpg\" alt=\"\" class=\"wp-image-1244\" srcset=\"https://sv.wordpress.org/files/2018/11/gutenberg-first-impressions.jpg 1200w, https://sv.wordpress.org/files/2018/11/gutenberg-first-impressions-300x158.jpg 300w, https://sv.wordpress.org/files/2018/11/gutenberg-first-impressions-768x403.jpg 768w, https://sv.wordpress.org/files/2018/11/gutenberg-first-impressions-1024x538.jpg 1024w\" sizes=\"(max-width: 1200px) 100vw, 1200px\" /><figcaption>Montage: Matt Cromwell</figcaption></figure>\n\n\n\n<p>Nu är det dags för ett nytt Meetup i Stockholm och precis som förra gången så kommer bland annat den nya blockredigeraren (Gutenberg) att stå på schemat.</p>\n\n\n\n<p>Senare i november planerar man att lansera version 5.0 av WordPress med den nya blockredigeraren som utvecklats under kodnamnet ”Gutenberg”. Redan nu har många tillägg anpassats och blivit kompatibla med Gutenberg.<br><br>Ett av dessa tillägg är Advanced Custom Fields som i sin senaste version låter användare bygga Gutenberg-block på ett mycket enkelt sätt, något som ger helt nya möjligheter för folk som bygger hemsidor.</p>\n\n\n\n<h3>Schema</h3>\n\n\n\n<p><strong>18:00</strong><br>Dörrarna öppnas</p>\n\n\n\n<p><strong>18:15</strong><br>Johan Falk &#8211; Gutenberg och WordPress 5.0 &#8211; vad händer?</p>\n\n\n\n<p><strong>18:25</strong> <br>Stanislav Khromov &#8211; Bygg Gutenberg-block med Advanced Custom Fields (Workshop)<br><br><em>I workshopen som ges under kvällen får man möjlighet att bygga egna Gutenberg-block. (Förkunskapskrav: Inga, dock hjälper det om du har varit inne och ändrat på mallar i tex. ett child theme. Ta med egen dator och en fungerande WordPress-installation du kan koda i. )</em></p>\n\n\n\n<p><strong>19:15</strong><br>Paus med något enkelt att äta</p>\n\n\n\n<p><strong>20:00</strong><br>Jonathan Sulo &#8211; WordPress-tilläggen som ditt webbhotell fruktar<br><br>Prestandaexpert på Servebolt med över 20 års erfarenhet från kända webbhotell, såsom Loopia, Binero och FS Data, visar hur man ska och inte ska arbeta med tillägg i WordPress. Han berättar om de mest resurskrävande tilläggen och visar på bättre alternativ, samt visar hur man enkelt felsöker tillägg och långsamma WordPress-sidor.</p>\n\n\n\n<p><strong>20:45</strong><br>Kvällen avslutas<br></p>\n\n\n\n<h3>Anmälan</h3>\n\n\n\n<p>Träffen är kostnadsfri. Anmälan sker på Meetup.com <a href=\"https://www.meetup.com/WordPress-Stockholm/events/256145105/\">via följande länk</a>. <br></p>\n\n\n\n<figure class=\"wp-block-embed-meetup-com wp-block-embed is-type-rich is-provider-meetup\"><div class=\"wp-block-embed__wrapper\">\n<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style><div id=\"meetup_oembed\" style=\"height:328px\">     <div style=\"max-height:288px;overflow:hidden\">          <h3>Lär dig att bygga sajter med Gutenberg och Advanced Custom Fields + bra tillägg</h3>          <p style=\"margin:5px 0;font-size:16px\">Tuesday, Nov 13, 2018,  6:00 PM</p>          <p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\">Foo Café  Internetstiftelsen i Sverige (IIS) </span><br /><span style=\"font-size:12px;\">Hammarby Kaj 10D  SE-12030 Stockholm Stockholm, SE</span></p>          <span style=\"color:#4F8A10;font-size:16px;\">39 WordPressers Attending</span>           <div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">               <div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/b/f/9/5/thumb_276709045.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/b/4/a/7/thumb_274366247.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/8/8/8/b/thumb_264934955.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/8/e/9/4/thumb_273876500.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/e/9/d/0/thumb_263879856.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/6/e/2/2/thumb_275788194.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/b/2/a/c/thumb_280725740.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/2/f/e/7/thumb_276732263.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/1/2/8/0/thumb_280204736.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/9/9/0/8/thumb_282159176.jpeg\" /></div>          </div>          <p style=\"line-height:16px\">Sent i November planeras den nya versionen av WordPress med Gutenberg-redigeraren att komma. Redan nu har många tillägg anpassat sig och blivit kompatibla med Gutenberg. Ett av dessa tillägg är Advanced Custom Fields som i senaste versionen låter användare bygga Gutenberg-block på ett mycket enkelt sätt, vilket skapar helt nya möjligheter för folk &#8230;</p>     </div>     <p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/WordPress-Stockholm/events/256145105/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p></div>\n</div></figure>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:146:\"https://sv.wordpress.org/2018/11/06/wordpress-traff-i-stockholm-den-13-november-lar-dig-bygga-webbplatser-med-nya-blockredigeraren-gutenberg/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"WordPress 5.0 med ny redigeringsmiljö snart klart – beta-version 2 är nu släppt för testning\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://sv.wordpress.org/2018/10/30/wordpress-5-0-med-ny-redigeringsmiljo-snart-klart-beta-version-2-ar-nu-slappt-for-testning/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:135:\"https://sv.wordpress.org/2018/10/30/wordpress-5-0-med-ny-redigeringsmiljo-snart-klart-beta-version-2-ar-nu-slappt-for-testning/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 30 Oct 2018 12:06:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1238\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:403:\"Om allt går enligt planerna kommer WordPress 5.0 att lanseras runt den 19 november. Den stora nyheten denna gång är att WordPress introducerar Blockredigeraren, en helt ny redigeringsmiljö. Blockredigeraren har under utvecklingen gått under ”kodnamnet” Gutenberg, och man kan redan nu provköra det genom att installera tillägget Gutenberg. Vissa teman och tillägg kan behöva göra [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2231:\"<p>Om allt går enligt planerna kommer WordPress 5.0 att lanseras runt den 19 november.</p>\n<p>Den stora nyheten denna gång är att WordPress introducerar Blockredigeraren, en helt ny redigeringsmiljö. Blockredigeraren har under utvecklingen gått under ”kodnamnet” Gutenberg, och man kan redan nu provköra det genom att installera tillägget <a href=\"https://sv.wordpress.org/plugins/gutenberg/\">Gutenberg</a>.</p>\n<p>Vissa teman och tillägg kan behöva göra vissa anpassningar för att fungera tillsammans med den nya redigeringsmiljön. I synnerhet gäller detta tillägg som använder separata dialogrutor med meta-data.</p>\n<p>Om du av någon anledning inte är redo att ta steget över till den nya redigeringsmiljön, men ändå vill fortsätta att använda den senaste versionen av WordPress, kan du installera tillägget <a href=\"https://sv.wordpress.org/plugins/classic-editor/\">Classic Editor</a> som ger dig tillgång till den klassiska redigeringsmiljön även i fortsättningen och antingen blockerar blockredigeraren helt och hållet, eller ger dig möjlighet att välja mellan de olika miljöerna från gång till gång.</p>\n<p>Du kan redan nu provköra WordPress 5.0. Beta-version nummer släpptes natten till idag. Mer information finns här: https://wordpress.org/news/2018/10/wordpress-5-0-beta-2/<br />\nEtt par rekommendationer:</p>\n<ul>\n<li>Beta-versioner är avsedda för testning och det är troligt att de innehåller en del fel. Installera dem alltså helst inte på din riktiga webbplats. Om du ändå gör det, se gärna till att spara undan en säkerhetskopia av webbplatsens databas och filer först.</li>\n<li>Om du är utvecklare av tillägg och/eller teman kan du behöva kolla att allt fungerar som det ska tillsammans med blockredigeraren. Vissa objekt har fått ändrade namn i jämförelse med Gutenberg, och även Gutenberg har utvecklats en hel del under det senaste året. Så även om ditt tillägg fungerar bra tillsammans med Gutenberg kan du behöva provköra det i WordPress 5.0 <strong>utan</strong> Gutenberg för att kolla en gång extra.</li>\n</ul>\n<p>I ovanstående länk finns mer information och även uppgifter om hur du kan rapportera eventuella fel som du hittar.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:132:\"https://sv.wordpress.org/2018/10/30/wordpress-5-0-med-ny-redigeringsmiljo-snart-klart-beta-version-2-ar-nu-slappt-for-testning/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WordPress-träff i Västerås den 20 september\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://sv.wordpress.org/2018/09/17/wordpress-traff-i-vasteras-den-20-september/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://sv.wordpress.org/2018/09/17/wordpress-traff-i-vasteras-den-20-september/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 17 Sep 2018 15:14:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1230\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:334:\"WordPress kommer i en ny version &#8211; 5.0 och vi reder ut vad det innebär för redaktörer, utvecklare och alla som kommer i kontakt med verktyget. Kom och träffas över en läsk eller öl tillsammans med oss andra i Meetup-gruppen. Vi träffas på torsdag den 20 september kl 18 hos Grafikfabriken på Slottsgatan 27 i [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Stanislav Khromov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4562:\"\n<p>WordPress kommer i en ny version &#8211; 5.0 och vi reder ut vad det innebär för redaktörer, utvecklare och alla som kommer i kontakt med verktyget. Kom och träffas över en läsk eller öl tillsammans med oss andra i Meetup-gruppen. Vi träffas på torsdag den 20 september kl 18 hos Grafikfabriken på Slottsgatan 27 i Västerås.<br /></p>\n\n\n\n<p>Anmälan är gratis och görs via nedanstående länk. Du måste först bli medlem i Meetup-gruppen innan du kan anmäla dig till evenemanget.</p>\n\n\n\n<figure class=\"wp-block-embed-meetup-com wp-block-embed is-type-rich is-provider-meetup\">\n<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style><div id=\"meetup_oembed\" style=\"height:302px\">     <div style=\"max-height:262px;overflow:hidden\">          <h3>Nya WordPress version 5 med Gutenberg</h3>          <p style=\"margin:5px 0;font-size:16px\">Thursday, Sep 20, 2018,  6:00 PM</p>          <p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\">Grafikfabriken</span><br /><span style=\"font-size:12px;\">Slottsgatan 27 Västerås, SE</span></p>          <span style=\"color:#4F8A10;font-size:16px;\">14 Members Attending</span>           <div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">               <div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/e/0/2/3/thumb_276657379.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/4/5/a/thumb_271554362.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/4/e/b/8/thumb_110780152.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/7/1/0/4/thumb_152308932.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/5/8/9/0/thumb_144322672.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/8/f/6/thumb_262975542.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/a/b/e/e/thumb_277304014.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/c/f/b/6/thumb_276713174.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/c/e/1/2/thumb_250612754.jpeg\" /></div>          </div>          <p style=\"line-height:16px\">WordPress kommer i en ny version (5) och vi reder ut vad det innebär för redaktörer, utvecklare och alla som kommer i kontakt med verktyget. Kom och träffas över en öl tillsammans med oss andra i Meetup-gruppen. Denna gång träffas vi hos Grafikfabriken på Slottsgatan 27 i Västerås. De sponsrar med öl och tilltugg. Vi kör igång kl 18 med några talar&#8230;</p>     </div>     <p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/WordPress-Westeros/events/254122245/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p></div>\n</figure>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://sv.wordpress.org/2018/09/17/wordpress-traff-i-vasteras-den-20-september/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"WordPress-träff i Stockholm den 4 september\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://sv.wordpress.org/2018/09/01/wordpress-traff-i-stockholm-den-4-september/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://sv.wordpress.org/2018/09/01/wordpress-traff-i-stockholm-den-4-september/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 31 Aug 2018 22:28:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1223\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:402:\"Efter en avslappnad sommar bjuder gruppen WordPress Stockholm in till höstens första träff, som handlar om Gutenberg &#8211; det nya redigeringsgränssnittet som inom kort kommer till WordPress. Bland annat kommer det köras en repris av diskussionspanelen om Gutenberg från WordCamp Norrköping med Andreas Ek, Marie Hogebrandt, Johan Falk och Stanislav Khromov. Träffen är som vanligt [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Stanislav Khromov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4963:\"\n<p>Efter en avslappnad sommar bjuder gruppen <a href=\"https://www.meetup.com/WordPress-Stockholm/\">WordPress Stockholm</a> in till höstens första träff, som handlar om <a href=\"https://wordpress.org/gutenberg/\">Gutenberg</a> &#8211; det nya redigeringsgränssnittet som inom kort kommer till WordPress.</p>\n\n\n\n<p>Bland annat kommer det köras en repris av diskussionspanelen om Gutenberg från <a href=\"https://2018.norrkoping.wordcamp.org/\">WordCamp Norrköping</a> med Andreas Ek, Marie Hogebrandt, Johan Falk och Stanislav Khromov.</p>\n\n\n\n<p>Träffen är som vanligt gratis och anmälan görs <a href=\"https://www.meetup.com/WordPress-Stockholm/events/254126588/\">här</a> eller via nedanstående länk:</p>\n\n\n\n<p></p>\n\n\n\n<figure class=\"wp-block-embed-meetup-com wp-block-embed is-type-rich is-provider-meetup\">\n<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style><div id=\"meetup_oembed\" style=\"height:328px\">     <div style=\"max-height:288px;overflow:hidden\">          <h3>Gutenberg &#8211; The new editor in WordPress is coming</h3>          <p style=\"margin:5px 0;font-size:16px\">Tuesday, Sep 4, 2018,  6:00 PM</p>          <p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\">Foo Café  Internetstiftelsen i Sverige (IIS) </span><br /><span style=\"font-size:12px;\">Hammarby Kaj 10D  SE-12030 Stockholm Stockholm, SE</span></p>          <span style=\"color:#4F8A10;font-size:16px;\">65 WordPressers Attending</span>           <div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">               <div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/3/3/b/b/thumb_280153243.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/b/e/e/c/thumb_280128876.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/1/8/0/2/thumb_265746146.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/6/a/d/0/thumb_269367344.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/2/9/9/8/thumb_277210648.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/d/5/a/thumb_274976666.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/1/e/9/4/thumb_280147828.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/d/a/f/thumb_269336751.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/e/4/5/b/thumb_270418459.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/4/3/b/0/thumb_272597328.jpeg\" /></div>          </div>          <p style=\"line-height:16px\">Gutenberg represents the biggest change in WordPress interfaces since it was created. With Gutenberg there are many opportunities but also some risks. At this meetup we will dive in to these possibilities, what will it mean for the future and also existing websites. Agenda: * 18:00 Welcome mingle * 18:15 Brief overview of Gutenberg &#8211; Background, fe&#8230;</p>     </div>     <p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/WordPress-Stockholm/events/254126588/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p></div>\n</figure>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://sv.wordpress.org/2018/09/01/wordpress-traff-i-stockholm-den-4-september/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WordPress 4.9.8 – Dags att prova den kommande redigeringsmiljön\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://sv.wordpress.org/2018/08/03/wordpress-4-9-8-dags-att-prova-den-kommande-redigeringsmiljon/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"https://sv.wordpress.org/2018/08/03/wordpress-4-9-8-dags-att-prova-den-kommande-redigeringsmiljon/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 Aug 2018 18:24:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1219\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:447:\"WordPress 4.9.8 släpptes igår. Om standardinställningarna inte ändrats, kommer webbplatser som använder någon tidigare version av 4.9.x att uppdateras automatiskt till 4.9.8. Denna version innehåller en del korrigeringar och förbättringar för integritetsfunktionaliteten som introducerades i WordPress 4.9.6. Men den stora nyheten nu är att den kommande redigeringsmiljön, Gutenberg, är mogen för full testkörning, det är [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1262:\"<p>WordPress 4.9.8 släpptes igår. Om standardinställningarna inte ändrats, kommer webbplatser som använder någon tidigare version av 4.9.x att uppdateras automatiskt till 4.9.8.</p>\n<p>Denna version innehåller en del korrigeringar och förbättringar för integritetsfunktionaliteten som introducerades i WordPress 4.9.6.</p>\n<p>Men den stora nyheten nu är att den kommande redigeringsmiljön, Gutenberg, är mogen för full testkörning, det är bara att installera tillägget <a href=\"https://sv.wordpress.org/plugins/gutenberg/\">Gutenberg</a>. Samtidigt ges här möjlighet att blockera automatisk övergång till den nya redigeraren med hjälp av ett annat tillägg, <a href=\"https://sv.wordpress.org/plugins/classic-editor/\">Classic Editor</a>. (Det kan t.ex. behövas om du använder olika utökningar till redigeringsmiljön och dessa utökningar ännu inte är förberedda för Gutenberg.)</p>\n<p>Observera att om du redigerar en sida eller ett inlägg med Gutenberg finns det risk att delar av innehållet efteråt inte går att redigera i den klassiska redigeraren. Undvik alltså att testa Gutenberg på &#8221;gammalt innehåll&#8221; som kan behöva uppdateras igen om du inte är beredd att ta klivet in i WordPress framtid redan idag.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://sv.wordpress.org/2018/08/03/wordpress-4-9-8-dags-att-prova-den-kommande-redigeringsmiljon/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"Säkerhetsuppdatering: WordPress 4.9.7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://sv.wordpress.org/2018/07/06/sakerhetsuppdatering-wordpress-4-9-7/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://sv.wordpress.org/2018/07/06/sakerhetsuppdatering-wordpress-4-9-7/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Jul 2018 07:59:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1202\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:436:\"I gårkväll (5 juli 2018) släpptes WordPress 4.9.7 som är en säkerhetsuppdatering. Samtidigt lanserades även säkerhetsuppdateringar för tidigare versioner av WordPress, från och med version 3.7. Många WordPress-installationer har automatiskt installerat denna säkerhetsuppdatering, men du bör kolla att så verkligen skett. Om du behöver uppdatera din WordPress-installation manuellt kan du i de flesta fall enkelt [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:809:\"<p>I gårkväll (5 juli 2018) släpptes WordPress 4.9.7 som är en säkerhetsuppdatering. Samtidigt lanserades även säkerhetsuppdateringar för tidigare versioner av WordPress, från och med version 3.7.</p>\n<p>Många WordPress-installationer har automatiskt installerat denna säkerhetsuppdatering, men du bör kolla att så verkligen skett.<br />\nOm du behöver uppdatera din WordPress-installation manuellt kan du i de flesta fall enkelt göra detta via din admin-panel i WordPress.</p>\n<p>Mer detaljerad information om denna uppdatering finns i tillkännagivandet i den officiella WordPress-bloggen: <a href=\"https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/\">https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/</a> (på engelska)</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://sv.wordpress.org/2018/07/06/sakerhetsuppdatering-wordpress-4-9-7/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WordPress-träff i Arvika tisdag 19 Juni\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://sv.wordpress.org/2018/06/13/wordpress-traff-i-arvika-tisdag-19-juni/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://sv.wordpress.org/2018/06/13/wordpress-traff-i-arvika-tisdag-19-juni/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 13 Jun 2018 17:34:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1151\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:367:\"Den 19 juni är det dags för WordPress-träff i Arvika. Det finns fortfarande platser kvar! För att anmäla sig behöver man ha ett konto på Meetup.com (gratis) och registrera sig via länken i detta meddelande. Vi passade på att sätta oss ner med Niklas Högefjord, upphovsmannen bakom Meetup-gruppen ”WordPress Arvika”. Hej Niklas! Hur kommer det [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Stanislav Khromov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6812:\"\n<p>Den 19 juni är det dags för WordPress-träff i Arvika. Det finns fortfarande platser kvar! För att anmäla sig behöver man ha ett konto på Meetup.com (gratis) och registrera sig <a href=\"https://www.meetup.com/WordPress-Arvika/events/251347657/\">via länken i detta meddelande.</a></p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://sv.wordpress.org/files/2018/06/highres_437716472.jpeg\" alt=\"\" class=\"wp-image-1183\" srcset=\"https://sv.wordpress.org/files/2018/06/highres_437716472.jpeg 1980w, https://sv.wordpress.org/files/2018/06/highres_437716472-300x225.jpeg 300w, https://sv.wordpress.org/files/2018/06/highres_437716472-768x576.jpeg 768w, https://sv.wordpress.org/files/2018/06/highres_437716472-1024x768.jpeg 1024w, https://sv.wordpress.org/files/2018/06/highres_437716472-440x330.jpeg 440w\" sizes=\"(max-width: 1980px) 100vw, 1980px\" />\n	<figcaption>Bilden ovan är från ett tidigare Meetup i Stockholm.</figcaption>\n</figure>\n\n\n\n<p>Vi passade på att sätta oss ner med Niklas Högefjord, upphovsmannen bakom Meetup-gruppen ”WordPress Arvika”.</p>\n\n\n\n<figure class=\"wp-block-image alignright is-resized\"><img src=\"https://sv.wordpress.org/files/2018/06/niklas-768x859.jpg\" alt=\"\" class=\"wp-image-1177\" width=\"284\" height=\"317\" srcset=\"https://sv.wordpress.org/files/2018/06/niklas-768x859.jpg 768w, https://sv.wordpress.org/files/2018/06/niklas-268x300.jpg 268w, https://sv.wordpress.org/files/2018/06/niklas.jpg 858w\" sizes=\"(max-width: 284px) 100vw, 284px\" />\n	<figcaption>Niklas Högefjord</figcaption>\n</figure>\n\n\n\n<p><strong>Hej Niklas! Hur kommer det sig att du startade meetup-gruppen WordPress Arvika?</strong></p>\n\n\n\n<p>Vi jobbar med WordPress på mitt företag Krokedil och jag har via det lärt känna den community som finns kring WordPress. Jag tyckte därför att det vore kul att försöka sprida samma anda kring open source, men på ett lokalt plan.</p>\n\n\n\n<p><strong>Vilka målgrupper riktar ni er till?</strong></p>\n\n\n\n<p>Det är en kombination av utvecklare och rena användare av WordPress. Det kan ibland vara svårt eftersom vi är en ganska liten grupp.</p>\n\n\n\n<p><strong>Hur tror du att communityt kommer utveckla sig framöver?</strong></p>\n\n\n\n<p>Jag hoppas att vi kommer att se fler lokala meetups och WordCamps för att på så vis sprida information och kunskap på ett smidigt sätt. Det tror jag är nyckeln till en stark community.</p>\n\n\n\n<p><strong>Vad skulle du ge för råd till folksom går i tankarna att antingen gå på meetup eller starta sin egen Meetup-grupp?</strong></p>\n\n\n\n<p>Håll koll på <a href=\"https://meetup.com\">meetup.com</a> om du är intresserad av att hitta och delta i meetups. Om du själv vill dra igång en grupp så är det bra att börja så enkelt som möjligt. På bloggen <a href=\"https://make.wordpress.org/community/\">WordPress Make Community</a> kan du läsa mer om hur man kommer igång.</p>\n\n\n\n<p>Länk till eventet:</p>\n\n\n\n<figure class=\"wp-block-embed-meetup-com wp-block-embed is-type-rich is-provider-meetup\">\n	<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style><div id=\"meetup_oembed\" style=\"height:302px\">     <div style=\"max-height:262px;overflow:hidden\">          <h3>Composerbaserad WordPress-utveckling</h3>          <p style=\"margin:5px 0;font-size:16px\">Tuesday, Jun 19, 2018,  6:00 PM</p>          <p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\">Krokedil Produktionsbyrå</span><br /><span style=\"font-size:12px;\">Hamngatan 2 Arvika, SE</span></p>          <span style=\"color:#4F8A10;font-size:16px;\">8 WordPressers Attending</span>           <div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">               <div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/8/7/f/2/thumb_81454802.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/3/0/2/5/thumb_276912325.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/8/3/d/8/thumb_147753752.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/c/e/1/2/thumb_250612754.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/6/7/4/0/thumb_278006432.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/a/5/d/7/thumb_266742455.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/e/a/e/thumb_242217006.jpeg\" /></div>          </div>          <p style=\"line-height:16px\">Det var väldigt längesedan vi höll en WordPress-meetup i Arvika, men nu är det dags igen :). &#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;- Composerbaserad wp-utveckling Vi går genom teori och praktik kring composerbaserad wp-utveckling. Från noll till deploy Oderland, är det möjligt på 10 minuter? Andreas Ek hjälper andra företag med strukturerad &#8230;</p>     </div>     <p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/WordPress-Arvika/events/251347657/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p></div>\n</figure>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://sv.wordpress.org/2018/06/13/wordpress-traff-i-arvika-tisdag-19-juni/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://sv.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 18 Dec 2018 09:38:45 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Thu, 06 Dec 2018 08:24:37 GMT\";s:4:\"link\";s:61:\"<https://sv.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20181218093518\";}', 'no');
INSERT INTO `wp_options` (`
option_id`,
`option_name
`, `option_value`, `autoload`) VALUES
(134, '_transient_timeout_feed_mod_28715d71ac4c9959532fa55dcd9977b7', '1545169116', 'no'),
(135, '_transient_feed_mod_28715d71ac4c9959532fa55dcd9977b7', '1545125916', 'no'),
(136, '_transient_timeout_feed_ac467b35805e07a3d26981964ea9343b', '1545169117', 'no');
INSERT INTO `wp_options` (`
option_id`,
`option_name
`, `option_value`, `autoload`) VALUES
(137, '_transient_feed_ac467b35805e07a3d26981964ea9343b', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Svenska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://sv.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"Releasearkiv för WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 13 Dec 2018 13:41:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"sv-SE\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0.2-RC1-44259\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:9:{i:0;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"Snart släpps WordPress 5.0 med ny redigerare – Några saker att tänka på innan du uppdaterar\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:126:\"https://sv.wordpress.org/2018/12/05/snart-slapps-wordpress-5-0-med-ny-redigerare-nagra-saker-att-tanka-pa-innan-du-uppdaterar/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:135:\"https://sv.wordpress.org/2018/12/05/snart-slapps-wordpress-5-0-med-ny-redigerare-nagra-saker-att-tanka-pa-innan-du-uppdaterar/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 04 Dec 2018 23:52:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1257\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:428:\"Om allt går enligt planerna kommer uppdateringen till WordPress 5.0 att släppas torsdag den 6 december 2018 (troligtvis under kvällen eller natten mot fredagen). Standardinställningen i WordPress är att uppdatering till ny huvudversion av WordPress (4.9, 5.0, 5.1 o.s.v.) sker först när administratören själv väljer att genomföra uppdateringen via administrationspanelen: Hem – Uppdateringar. Förutom att [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1892:\"<p>Om allt går enligt planerna kommer uppdateringen till WordPress 5.0 att släppas torsdag den 6 december 2018 (troligtvis under kvällen eller natten mot fredagen).</p>\n<p>Standardinställningen i WordPress är att uppdatering till ny huvudversion av WordPress (4.9, 5.0, 5.1 o.s.v.) sker först när administratören själv väljer att genomföra uppdateringen via administrationspanelen: Hem – Uppdateringar.</p>\n<p>Förutom att WordPress 5.0 innehåller nödvändiga justeringar för att WordPress ska fungera väl med PHP 7.3 (som släpps i dagarna) handlar denna version om en enda sak:<br />\n<strong>En helt ny redigeringsmiljö, baserad på innehållsblock.</strong></p>\n<p>Redigeraren har utvecklats och provkörts under kodnamnet ”Gutenberg”, och nu anser utvecklarna att tiden är mogen för de stora massorna att ta klivet över till den nya redigeringsmiljön.</p>\n<p>WordPress.com har gjort en beskrivning av blockredigeraren som du hittar på <a href=\"https://sv.support.wordpress.com/wordpress-redigerare/\">https://sv.support.wordpress.com/wordpress-redigerare/</a></p>\n<p>Innan du uppdaterar till WordPress 5.0 kan det vara god idé att kontrollera om dina tillägg och ditt tema är förberedda för den nya redigeraren.</p>\n<p>I synnerhet gäller detta om din webbplats på olika sätt modifierar den normala redigeringsmiljön, t.ex. genom att lägga till extra knappar i redigeraren och liknande.</p>\n<p>Om så skulle vara fallet kan (och bör) du fortfarande uppdatera till version 5.0, men då kan det finnas anledning att installera <a href=\"https://sv.wordpress.org/plugins/classic-editor/\">tillägget Classic Editor</a> för att fortsätta med den klassiska redigeraren tills dina tillägg, ditt tema (och du själv) är ikapp.</p>\n<p>Du kan provköra Gutenberg här: <a href=\"https://sv.wordpress.org/gutenberg/\">https://sv.wordpress.org/gutenberg/</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"https://sv.wordpress.org/2018/12/05/snart-slapps-wordpress-5-0-med-ny-redigerare-nagra-saker-att-tanka-pa-innan-du-uppdaterar/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"Biljetter till WordCamp Nordic 2019 släppta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://sv.wordpress.org/2018/11/12/biljetter-till-wordcamp-nordic-2019-slappta/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://sv.wordpress.org/2018/11/12/biljetter-till-wordcamp-nordic-2019-slappta/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Nov 2018 14:21:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:7:\"Meetups\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1250\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:321:\"Nu är biljetterna till WordCamp Nordic släppta! Eventet går av stapeln 7-8 mars 2019 och riktar sig till alla länder i norden. Ett bra tillfälle att träffa våra norska, finska, danska och isländska WordPress-kollegor. Läs mer om eventet här. Biljetterna går år fort, missa inte chansen! Köp biljetterna här!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Stanislav Khromov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1069:\"\n<figure class=\"wp-block-image\"><img src=\"https://sv.wordpress.org/files/2018/11/Screen-Shot-2018-11-12-at-12.50.20-copy.jpg\" alt=\"\" class=\"wp-image-1252\" srcset=\"https://sv.wordpress.org/files/2018/11/Screen-Shot-2018-11-12-at-12.50.20-copy.jpg 2860w, https://sv.wordpress.org/files/2018/11/Screen-Shot-2018-11-12-at-12.50.20-copy-300x150.jpg 300w, https://sv.wordpress.org/files/2018/11/Screen-Shot-2018-11-12-at-12.50.20-copy-768x383.jpg 768w, https://sv.wordpress.org/files/2018/11/Screen-Shot-2018-11-12-at-12.50.20-copy-1024x511.jpg 1024w\" sizes=\"(max-width: 2860px) 100vw, 2860px\" /></figure>\n\n\n\n<p>Nu är biljetterna till WordCamp Nordic släppta! Eventet går av stapeln <strong>7-8 mars 2019</strong> och riktar sig till alla länder i norden. Ett bra tillfälle att träffa våra norska, finska, danska och isländska WordPress-kollegor. <a href=\"https://2019.nordic.wordcamp.org/\">Läs mer om eventet här</a>. Biljetterna går år fort, missa inte chansen!<br></p>\n\n\n\n<h3><a href=\"https://2019.nordic.wordcamp.org/tickets/\">Köp biljetterna här!</a></h3>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://sv.wordpress.org/2018/11/12/biljetter-till-wordcamp-nordic-2019-slappta/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"WordPress-träff i Stockholm den 13 November – lär dig bygga webbplatser med nya blockredigeraren Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:141:\"https://sv.wordpress.org/2018/11/06/wordpress-traff-i-stockholm-den-13-november-lar-dig-bygga-webbplatser-med-nya-blockredigeraren-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:149:\"https://sv.wordpress.org/2018/11/06/wordpress-traff-i-stockholm-den-13-november-lar-dig-bygga-webbplatser-med-nya-blockredigeraren-gutenberg/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Nov 2018 12:22:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Meetups\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1243\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:365:\"Nu är det dags för ett nytt Meetup i Stockholm och precis som förra gången så kommer bland annat den nya blockredigeraren (Gutenberg) att stå på schemat. Senare i november planerar man att lansera version 5.0 av WordPress med den nya blockredigeraren som utvecklats under kodnamnet ”Gutenberg”. Redan nu har många tillägg anpassats och blivit [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Stanislav Khromov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6882:\"\n<figure class=\"wp-block-image\"><img src=\"https://sv.wordpress.org/files/2018/11/gutenberg-first-impressions.jpg\" alt=\"\" class=\"wp-image-1244\" srcset=\"https://sv.wordpress.org/files/2018/11/gutenberg-first-impressions.jpg 1200w, https://sv.wordpress.org/files/2018/11/gutenberg-first-impressions-300x158.jpg 300w, https://sv.wordpress.org/files/2018/11/gutenberg-first-impressions-768x403.jpg 768w, https://sv.wordpress.org/files/2018/11/gutenberg-first-impressions-1024x538.jpg 1024w\" sizes=\"(max-width: 1200px) 100vw, 1200px\" /><figcaption>Montage: Matt Cromwell</figcaption></figure>\n\n\n\n<p>Nu är det dags för ett nytt Meetup i Stockholm och precis som förra gången så kommer bland annat den nya blockredigeraren (Gutenberg) att stå på schemat.</p>\n\n\n\n<p>Senare i november planerar man att lansera version 5.0 av WordPress med den nya blockredigeraren som utvecklats under kodnamnet ”Gutenberg”. Redan nu har många tillägg anpassats och blivit kompatibla med Gutenberg.<br><br>Ett av dessa tillägg är Advanced Custom Fields som i sin senaste version låter användare bygga Gutenberg-block på ett mycket enkelt sätt, något som ger helt nya möjligheter för folk som bygger hemsidor.</p>\n\n\n\n<h3>Schema</h3>\n\n\n\n<p><strong>18:00</strong><br>Dörrarna öppnas</p>\n\n\n\n<p><strong>18:15</strong><br>Johan Falk &#8211; Gutenberg och WordPress 5.0 &#8211; vad händer?</p>\n\n\n\n<p><strong>18:25</strong> <br>Stanislav Khromov &#8211; Bygg Gutenberg-block med Advanced Custom Fields (Workshop)<br><br><em>I workshopen som ges under kvällen får man möjlighet att bygga egna Gutenberg-block. (Förkunskapskrav: Inga, dock hjälper det om du har varit inne och ändrat på mallar i tex. ett child theme. Ta med egen dator och en fungerande WordPress-installation du kan koda i. )</em></p>\n\n\n\n<p><strong>19:15</strong><br>Paus med något enkelt att äta</p>\n\n\n\n<p><strong>20:00</strong><br>Jonathan Sulo &#8211; WordPress-tilläggen som ditt webbhotell fruktar<br><br>Prestandaexpert på Servebolt med över 20 års erfarenhet från kända webbhotell, såsom Loopia, Binero och FS Data, visar hur man ska och inte ska arbeta med tillägg i WordPress. Han berättar om de mest resurskrävande tilläggen och visar på bättre alternativ, samt visar hur man enkelt felsöker tillägg och långsamma WordPress-sidor.</p>\n\n\n\n<p><strong>20:45</strong><br>Kvällen avslutas<br></p>\n\n\n\n<h3>Anmälan</h3>\n\n\n\n<p>Träffen är kostnadsfri. Anmälan sker på Meetup.com <a href=\"https://www.meetup.com/WordPress-Stockholm/events/256145105/\">via följande länk</a>. <br></p>\n\n\n\n<figure class=\"wp-block-embed-meetup-com wp-block-embed is-type-rich is-provider-meetup\"><div class=\"wp-block-embed__wrapper\">\n<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style><div id=\"meetup_oembed\" style=\"height:328px\">     <div style=\"max-height:288px;overflow:hidden\">          <h3>Lär dig att bygga sajter med Gutenberg och Advanced Custom Fields + bra tillägg</h3>          <p style=\"margin:5px 0;font-size:16px\">Tuesday, Nov 13, 2018,  6:00 PM</p>          <p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\">Foo Café  Internetstiftelsen i Sverige (IIS) </span><br /><span style=\"font-size:12px;\">Hammarby Kaj 10D  SE-12030 Stockholm Stockholm, SE</span></p>          <span style=\"color:#4F8A10;font-size:16px;\">39 WordPressers Attending</span>           <div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">               <div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/b/f/9/5/thumb_276709045.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/b/4/a/7/thumb_274366247.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/8/8/8/b/thumb_264934955.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/8/e/9/4/thumb_273876500.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/e/9/d/0/thumb_263879856.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/6/e/2/2/thumb_275788194.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/b/2/a/c/thumb_280725740.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/2/f/e/7/thumb_276732263.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/1/2/8/0/thumb_280204736.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/9/9/0/8/thumb_282159176.jpeg\" /></div>          </div>          <p style=\"line-height:16px\">Sent i November planeras den nya versionen av WordPress med Gutenberg-redigeraren att komma. Redan nu har många tillägg anpassat sig och blivit kompatibla med Gutenberg. Ett av dessa tillägg är Advanced Custom Fields som i senaste versionen låter användare bygga Gutenberg-block på ett mycket enkelt sätt, vilket skapar helt nya möjligheter för folk &#8230;</p>     </div>     <p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/WordPress-Stockholm/events/256145105/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p></div>\n</div></figure>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:146:\"https://sv.wordpress.org/2018/11/06/wordpress-traff-i-stockholm-den-13-november-lar-dig-bygga-webbplatser-med-nya-blockredigeraren-gutenberg/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"WordPress 5.0 med ny redigeringsmiljö snart klart – beta-version 2 är nu släppt för testning\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://sv.wordpress.org/2018/10/30/wordpress-5-0-med-ny-redigeringsmiljo-snart-klart-beta-version-2-ar-nu-slappt-for-testning/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:135:\"https://sv.wordpress.org/2018/10/30/wordpress-5-0-med-ny-redigeringsmiljo-snart-klart-beta-version-2-ar-nu-slappt-for-testning/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 30 Oct 2018 12:06:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1238\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:403:\"Om allt går enligt planerna kommer WordPress 5.0 att lanseras runt den 19 november. Den stora nyheten denna gång är att WordPress introducerar Blockredigeraren, en helt ny redigeringsmiljö. Blockredigeraren har under utvecklingen gått under ”kodnamnet” Gutenberg, och man kan redan nu provköra det genom att installera tillägget Gutenberg. Vissa teman och tillägg kan behöva göra [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2231:\"<p>Om allt går enligt planerna kommer WordPress 5.0 att lanseras runt den 19 november.</p>\n<p>Den stora nyheten denna gång är att WordPress introducerar Blockredigeraren, en helt ny redigeringsmiljö. Blockredigeraren har under utvecklingen gått under ”kodnamnet” Gutenberg, och man kan redan nu provköra det genom att installera tillägget <a href=\"https://sv.wordpress.org/plugins/gutenberg/\">Gutenberg</a>.</p>\n<p>Vissa teman och tillägg kan behöva göra vissa anpassningar för att fungera tillsammans med den nya redigeringsmiljön. I synnerhet gäller detta tillägg som använder separata dialogrutor med meta-data.</p>\n<p>Om du av någon anledning inte är redo att ta steget över till den nya redigeringsmiljön, men ändå vill fortsätta att använda den senaste versionen av WordPress, kan du installera tillägget <a href=\"https://sv.wordpress.org/plugins/classic-editor/\">Classic Editor</a> som ger dig tillgång till den klassiska redigeringsmiljön även i fortsättningen och antingen blockerar blockredigeraren helt och hållet, eller ger dig möjlighet att välja mellan de olika miljöerna från gång till gång.</p>\n<p>Du kan redan nu provköra WordPress 5.0. Beta-version nummer släpptes natten till idag. Mer information finns här: https://wordpress.org/news/2018/10/wordpress-5-0-beta-2/<br />\nEtt par rekommendationer:</p>\n<ul>\n<li>Beta-versioner är avsedda för testning och det är troligt att de innehåller en del fel. Installera dem alltså helst inte på din riktiga webbplats. Om du ändå gör det, se gärna till att spara undan en säkerhetskopia av webbplatsens databas och filer först.</li>\n<li>Om du är utvecklare av tillägg och/eller teman kan du behöva kolla att allt fungerar som det ska tillsammans med blockredigeraren. Vissa objekt har fått ändrade namn i jämförelse med Gutenberg, och även Gutenberg har utvecklats en hel del under det senaste året. Så även om ditt tillägg fungerar bra tillsammans med Gutenberg kan du behöva provköra det i WordPress 5.0 <strong>utan</strong> Gutenberg för att kolla en gång extra.</li>\n</ul>\n<p>I ovanstående länk finns mer information och även uppgifter om hur du kan rapportera eventuella fel som du hittar.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:132:\"https://sv.wordpress.org/2018/10/30/wordpress-5-0-med-ny-redigeringsmiljo-snart-klart-beta-version-2-ar-nu-slappt-for-testning/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WordPress-träff i Västerås den 20 september\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://sv.wordpress.org/2018/09/17/wordpress-traff-i-vasteras-den-20-september/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://sv.wordpress.org/2018/09/17/wordpress-traff-i-vasteras-den-20-september/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 17 Sep 2018 15:14:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1230\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:334:\"WordPress kommer i en ny version &#8211; 5.0 och vi reder ut vad det innebär för redaktörer, utvecklare och alla som kommer i kontakt med verktyget. Kom och träffas över en läsk eller öl tillsammans med oss andra i Meetup-gruppen. Vi träffas på torsdag den 20 september kl 18 hos Grafikfabriken på Slottsgatan 27 i [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Stanislav Khromov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4562:\"\n<p>WordPress kommer i en ny version &#8211; 5.0 och vi reder ut vad det innebär för redaktörer, utvecklare och alla som kommer i kontakt med verktyget. Kom och träffas över en läsk eller öl tillsammans med oss andra i Meetup-gruppen. Vi träffas på torsdag den 20 september kl 18 hos Grafikfabriken på Slottsgatan 27 i Västerås.<br /></p>\n\n\n\n<p>Anmälan är gratis och görs via nedanstående länk. Du måste först bli medlem i Meetup-gruppen innan du kan anmäla dig till evenemanget.</p>\n\n\n\n<figure class=\"wp-block-embed-meetup-com wp-block-embed is-type-rich is-provider-meetup\">\n<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style><div id=\"meetup_oembed\" style=\"height:302px\">     <div style=\"max-height:262px;overflow:hidden\">          <h3>Nya WordPress version 5 med Gutenberg</h3>          <p style=\"margin:5px 0;font-size:16px\">Thursday, Sep 20, 2018,  6:00 PM</p>          <p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\">Grafikfabriken</span><br /><span style=\"font-size:12px;\">Slottsgatan 27 Västerås, SE</span></p>          <span style=\"color:#4F8A10;font-size:16px;\">14 Members Attending</span>           <div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">               <div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/e/0/2/3/thumb_276657379.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/4/5/a/thumb_271554362.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/4/e/b/8/thumb_110780152.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/7/1/0/4/thumb_152308932.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/5/8/9/0/thumb_144322672.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/8/f/6/thumb_262975542.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/a/b/e/e/thumb_277304014.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/c/f/b/6/thumb_276713174.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/c/e/1/2/thumb_250612754.jpeg\" /></div>          </div>          <p style=\"line-height:16px\">WordPress kommer i en ny version (5) och vi reder ut vad det innebär för redaktörer, utvecklare och alla som kommer i kontakt med verktyget. Kom och träffas över en öl tillsammans med oss andra i Meetup-gruppen. Denna gång träffas vi hos Grafikfabriken på Slottsgatan 27 i Västerås. De sponsrar med öl och tilltugg. Vi kör igång kl 18 med några talar&#8230;</p>     </div>     <p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/WordPress-Westeros/events/254122245/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p></div>\n</figure>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://sv.wordpress.org/2018/09/17/wordpress-traff-i-vasteras-den-20-september/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"WordPress-träff i Stockholm den 4 september\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://sv.wordpress.org/2018/09/01/wordpress-traff-i-stockholm-den-4-september/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://sv.wordpress.org/2018/09/01/wordpress-traff-i-stockholm-den-4-september/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 31 Aug 2018 22:28:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1223\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:402:\"Efter en avslappnad sommar bjuder gruppen WordPress Stockholm in till höstens första träff, som handlar om Gutenberg &#8211; det nya redigeringsgränssnittet som inom kort kommer till WordPress. Bland annat kommer det köras en repris av diskussionspanelen om Gutenberg från WordCamp Norrköping med Andreas Ek, Marie Hogebrandt, Johan Falk och Stanislav Khromov. Träffen är som vanligt [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Stanislav Khromov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4963:\"\n<p>Efter en avslappnad sommar bjuder gruppen <a href=\"https://www.meetup.com/WordPress-Stockholm/\">WordPress Stockholm</a> in till höstens första träff, som handlar om <a href=\"https://wordpress.org/gutenberg/\">Gutenberg</a> &#8211; det nya redigeringsgränssnittet som inom kort kommer till WordPress.</p>\n\n\n\n<p>Bland annat kommer det köras en repris av diskussionspanelen om Gutenberg från <a href=\"https://2018.norrkoping.wordcamp.org/\">WordCamp Norrköping</a> med Andreas Ek, Marie Hogebrandt, Johan Falk och Stanislav Khromov.</p>\n\n\n\n<p>Träffen är som vanligt gratis och anmälan görs <a href=\"https://www.meetup.com/WordPress-Stockholm/events/254126588/\">här</a> eller via nedanstående länk:</p>\n\n\n\n<p></p>\n\n\n\n<figure class=\"wp-block-embed-meetup-com wp-block-embed is-type-rich is-provider-meetup\">\n<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style><div id=\"meetup_oembed\" style=\"height:328px\">     <div style=\"max-height:288px;overflow:hidden\">          <h3>Gutenberg &#8211; The new editor in WordPress is coming</h3>          <p style=\"margin:5px 0;font-size:16px\">Tuesday, Sep 4, 2018,  6:00 PM</p>          <p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\">Foo Café  Internetstiftelsen i Sverige (IIS) </span><br /><span style=\"font-size:12px;\">Hammarby Kaj 10D  SE-12030 Stockholm Stockholm, SE</span></p>          <span style=\"color:#4F8A10;font-size:16px;\">65 WordPressers Attending</span>           <div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">               <div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/3/3/b/b/thumb_280153243.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/b/e/e/c/thumb_280128876.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/1/8/0/2/thumb_265746146.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/6/a/d/0/thumb_269367344.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/2/9/9/8/thumb_277210648.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/d/5/a/thumb_274976666.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/1/e/9/4/thumb_280147828.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/d/a/f/thumb_269336751.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/e/4/5/b/thumb_270418459.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/4/3/b/0/thumb_272597328.jpeg\" /></div>          </div>          <p style=\"line-height:16px\">Gutenberg represents the biggest change in WordPress interfaces since it was created. With Gutenberg there are many opportunities but also some risks. At this meetup we will dive in to these possibilities, what will it mean for the future and also existing websites. Agenda: * 18:00 Welcome mingle * 18:15 Brief overview of Gutenberg &#8211; Background, fe&#8230;</p>     </div>     <p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/WordPress-Stockholm/events/254126588/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p></div>\n</figure>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://sv.wordpress.org/2018/09/01/wordpress-traff-i-stockholm-den-4-september/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WordPress 4.9.8 – Dags att prova den kommande redigeringsmiljön\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://sv.wordpress.org/2018/08/03/wordpress-4-9-8-dags-att-prova-den-kommande-redigeringsmiljon/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"https://sv.wordpress.org/2018/08/03/wordpress-4-9-8-dags-att-prova-den-kommande-redigeringsmiljon/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 Aug 2018 18:24:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1219\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:447:\"WordPress 4.9.8 släpptes igår. Om standardinställningarna inte ändrats, kommer webbplatser som använder någon tidigare version av 4.9.x att uppdateras automatiskt till 4.9.8. Denna version innehåller en del korrigeringar och förbättringar för integritetsfunktionaliteten som introducerades i WordPress 4.9.6. Men den stora nyheten nu är att den kommande redigeringsmiljön, Gutenberg, är mogen för full testkörning, det är [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1262:\"<p>WordPress 4.9.8 släpptes igår. Om standardinställningarna inte ändrats, kommer webbplatser som använder någon tidigare version av 4.9.x att uppdateras automatiskt till 4.9.8.</p>\n<p>Denna version innehåller en del korrigeringar och förbättringar för integritetsfunktionaliteten som introducerades i WordPress 4.9.6.</p>\n<p>Men den stora nyheten nu är att den kommande redigeringsmiljön, Gutenberg, är mogen för full testkörning, det är bara att installera tillägget <a href=\"https://sv.wordpress.org/plugins/gutenberg/\">Gutenberg</a>. Samtidigt ges här möjlighet att blockera automatisk övergång till den nya redigeraren med hjälp av ett annat tillägg, <a href=\"https://sv.wordpress.org/plugins/classic-editor/\">Classic Editor</a>. (Det kan t.ex. behövas om du använder olika utökningar till redigeringsmiljön och dessa utökningar ännu inte är förberedda för Gutenberg.)</p>\n<p>Observera att om du redigerar en sida eller ett inlägg med Gutenberg finns det risk att delar av innehållet efteråt inte går att redigera i den klassiska redigeraren. Undvik alltså att testa Gutenberg på &#8221;gammalt innehåll&#8221; som kan behöva uppdateras igen om du inte är beredd att ta klivet in i WordPress framtid redan idag.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://sv.wordpress.org/2018/08/03/wordpress-4-9-8-dags-att-prova-den-kommande-redigeringsmiljon/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"Säkerhetsuppdatering: WordPress 4.9.7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://sv.wordpress.org/2018/07/06/sakerhetsuppdatering-wordpress-4-9-7/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://sv.wordpress.org/2018/07/06/sakerhetsuppdatering-wordpress-4-9-7/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Jul 2018 07:59:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1202\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:436:\"I gårkväll (5 juli 2018) släpptes WordPress 4.9.7 som är en säkerhetsuppdatering. Samtidigt lanserades även säkerhetsuppdateringar för tidigare versioner av WordPress, från och med version 3.7. Många WordPress-installationer har automatiskt installerat denna säkerhetsuppdatering, men du bör kolla att så verkligen skett. Om du behöver uppdatera din WordPress-installation manuellt kan du i de flesta fall enkelt [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Tor-Bjorn Fjellner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:809:\"<p>I gårkväll (5 juli 2018) släpptes WordPress 4.9.7 som är en säkerhetsuppdatering. Samtidigt lanserades även säkerhetsuppdateringar för tidigare versioner av WordPress, från och med version 3.7.</p>\n<p>Många WordPress-installationer har automatiskt installerat denna säkerhetsuppdatering, men du bör kolla att så verkligen skett.<br />\nOm du behöver uppdatera din WordPress-installation manuellt kan du i de flesta fall enkelt göra detta via din admin-panel i WordPress.</p>\n<p>Mer detaljerad information om denna uppdatering finns i tillkännagivandet i den officiella WordPress-bloggen: <a href=\"https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/\">https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/</a> (på engelska)</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://sv.wordpress.org/2018/07/06/sakerhetsuppdatering-wordpress-4-9-7/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WordPress-träff i Arvika tisdag 19 Juni\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://sv.wordpress.org/2018/06/13/wordpress-traff-i-arvika-tisdag-19-juni/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://sv.wordpress.org/2018/06/13/wordpress-traff-i-arvika-tisdag-19-juni/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 13 Jun 2018 17:34:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress Sverige\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://sv.wordpress.org/?p=1151\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:367:\"Den 19 juni är det dags för WordPress-träff i Arvika. Det finns fortfarande platser kvar! För att anmäla sig behöver man ha ett konto på Meetup.com (gratis) och registrera sig via länken i detta meddelande. Vi passade på att sätta oss ner med Niklas Högefjord, upphovsmannen bakom Meetup-gruppen ”WordPress Arvika”. Hej Niklas! Hur kommer det [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Stanislav Khromov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6812:\"\n<p>Den 19 juni är det dags för WordPress-träff i Arvika. Det finns fortfarande platser kvar! För att anmäla sig behöver man ha ett konto på Meetup.com (gratis) och registrera sig <a href=\"https://www.meetup.com/WordPress-Arvika/events/251347657/\">via länken i detta meddelande.</a></p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://sv.wordpress.org/files/2018/06/highres_437716472.jpeg\" alt=\"\" class=\"wp-image-1183\" srcset=\"https://sv.wordpress.org/files/2018/06/highres_437716472.jpeg 1980w, https://sv.wordpress.org/files/2018/06/highres_437716472-300x225.jpeg 300w, https://sv.wordpress.org/files/2018/06/highres_437716472-768x576.jpeg 768w, https://sv.wordpress.org/files/2018/06/highres_437716472-1024x768.jpeg 1024w, https://sv.wordpress.org/files/2018/06/highres_437716472-440x330.jpeg 440w\" sizes=\"(max-width: 1980px) 100vw, 1980px\" />\n	<figcaption>Bilden ovan är från ett tidigare Meetup i Stockholm.</figcaption>\n</figure>\n\n\n\n<p>Vi passade på att sätta oss ner med Niklas Högefjord, upphovsmannen bakom Meetup-gruppen ”WordPress Arvika”.</p>\n\n\n\n<figure class=\"wp-block-image alignright is-resized\"><img src=\"https://sv.wordpress.org/files/2018/06/niklas-768x859.jpg\" alt=\"\" class=\"wp-image-1177\" width=\"284\" height=\"317\" srcset=\"https://sv.wordpress.org/files/2018/06/niklas-768x859.jpg 768w, https://sv.wordpress.org/files/2018/06/niklas-268x300.jpg 268w, https://sv.wordpress.org/files/2018/06/niklas.jpg 858w\" sizes=\"(max-width: 284px) 100vw, 284px\" />\n	<figcaption>Niklas Högefjord</figcaption>\n</figure>\n\n\n\n<p><strong>Hej Niklas! Hur kommer det sig att du startade meetup-gruppen WordPress Arvika?</strong></p>\n\n\n\n<p>Vi jobbar med WordPress på mitt företag Krokedil och jag har via det lärt känna den community som finns kring WordPress. Jag tyckte därför att det vore kul att försöka sprida samma anda kring open source, men på ett lokalt plan.</p>\n\n\n\n<p><strong>Vilka målgrupper riktar ni er till?</strong></p>\n\n\n\n<p>Det är en kombination av utvecklare och rena användare av WordPress. Det kan ibland vara svårt eftersom vi är en ganska liten grupp.</p>\n\n\n\n<p><strong>Hur tror du att communityt kommer utveckla sig framöver?</strong></p>\n\n\n\n<p>Jag hoppas att vi kommer att se fler lokala meetups och WordCamps för att på så vis sprida information och kunskap på ett smidigt sätt. Det tror jag är nyckeln till en stark community.</p>\n\n\n\n<p><strong>Vad skulle du ge för råd till folksom går i tankarna att antingen gå på meetup eller starta sin egen Meetup-grupp?</strong></p>\n\n\n\n<p>Håll koll på <a href=\"https://meetup.com\">meetup.com</a> om du är intresserad av att hitta och delta i meetups. Om du själv vill dra igång en grupp så är det bra att börja så enkelt som möjligt. På bloggen <a href=\"https://make.wordpress.org/community/\">WordPress Make Community</a> kan du läsa mer om hur man kommer igång.</p>\n\n\n\n<p>Länk till eventet:</p>\n\n\n\n<figure class=\"wp-block-embed-meetup-com wp-block-embed is-type-rich is-provider-meetup\">\n	<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style><div id=\"meetup_oembed\" style=\"height:302px\">     <div style=\"max-height:262px;overflow:hidden\">          <h3>Composerbaserad WordPress-utveckling</h3>          <p style=\"margin:5px 0;font-size:16px\">Tuesday, Jun 19, 2018,  6:00 PM</p>          <p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\">Krokedil Produktionsbyrå</span><br /><span style=\"font-size:12px;\">Hamngatan 2 Arvika, SE</span></p>          <span style=\"color:#4F8A10;font-size:16px;\">8 WordPressers Attending</span>           <div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">               <div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/8/7/f/2/thumb_81454802.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/3/0/2/5/thumb_276912325.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/8/3/d/8/thumb_147753752.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/c/e/1/2/thumb_250612754.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/6/7/4/0/thumb_278006432.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/a/5/d/7/thumb_266742455.jpeg\" /></div><div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/e/a/e/thumb_242217006.jpeg\" /></div>          </div>          <p style=\"line-height:16px\">Det var väldigt längesedan vi höll en WordPress-meetup i Arvika, men nu är det dags igen :). &#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;- Composerbaserad wp-utveckling Vi går genom teori och praktik kring composerbaserad wp-utveckling. Från noll till deploy Oderland, är det möjligt på 10 minuter? Andreas Ek hjälper andra företag med strukturerad &#8230;</p>     </div>     <p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/WordPress-Arvika/events/251347657/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p></div>\n</figure>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://sv.wordpress.org/2018/06/13/wordpress-traff-i-arvika-tisdag-19-juni/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:30:\"https://sv.wordpress.org/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:10:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 18 Dec 2018 09:38:45 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:11:\"x-container\";s:11:\"wpsv_1e5ea3\";s:13:\"x-proxy-cache\";s:12:\"HIT P: A: N:\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:15:\"x-edge-location\";s:5:\"se-b1\";s:12:\"x-powered-by\";s:6:\"Seravo\";}}s:5:\"build\";s:14:\"20181218093518\";}', 'no');
INSERT INTO `wp_options` (`
option_id`,
`option_name
`, `option_value`, `autoload`) VALUES
(138, '_transient_timeout_feed_mod_ac467b35805e07a3d26981964ea9343b', '1545169117', 'no'),
(139, '_transient_feed_mod_ac467b35805e07a3d26981964ea9343b', '1545125917', 'no'),
(140, '_transient_timeout_dash_v2_deb48e951d337ba449b723bfa93a381d', '1545169117', 'no'),
(141, '_transient_dash_v2_deb48e951d337ba449b723bfa93a381d', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'
https:
//sv.wordpress.org/2018/12/13/sakerhetsuppdatering-slappt-2018-12-13-bakatkompatibilitet-paverkas/\'>Säkerhetsuppdatering släppt 2018-12-13. Bakåtkompatibilitet påverkas.</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'
https:
//sv.wordpress.org/2018/12/05/snart-slapps-wordpress-5-0-med-ny-redigerare-nagra-saker-att-tanka-pa-innan-du-uppdaterar/\'>Snart släpps WordPress 5.0 med ny redigerare – Några saker att tänka på innan du uppdaterar</a></li><li><a class=\'rsswidget\' href=\'
https:
//sv.wordpress.org/2018/11/12/biljetter-till-wordcamp-nordic-2019-slappta/\'>Biljetter till WordCamp Nordic 2019 släppta</a></li><li><a class=\'rsswidget\' href=\'
https:
//sv.wordpress.org/2018/11/06/wordpress-traff-i-stockholm-den-13-november-lar-dig-bygga-webbplatser-med-nya-blockredigeraren-gutenberg/\'>WordPress-träff i Stockholm den 13 November – lär dig bygga webbplatser med nya blockredigeraren Gutenberg</a></li></ul></div>', 'no'),
(142, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/sv_SE/wordpress-5.0.1.zip\";s:6:\"locale\";s:5:\"sv_SE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/sv_SE/wordpress-5.0.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.1\";s:7:\"version\";s:5:\"5.0.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.1\";s:7:\"version\";s:5:\"5.0.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.1\";s:7:\"version\";s:5:\"5.0.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1545125920;s:15:\"version_checked\";s:5:\"4.9.9\";s:12:\"translations\";a:0:{}}', 'no'),
(143, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1545125921;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.1.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.8.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.6.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(145, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:16:\"test@hotmail.com\";s:7:\"version\";s:5:\"4.9.9\";s:9:\"timestamp\";i:1545125922;}', 'no'),
(147, '_transient_timeout_plugin_slugs', '1545212952', 'no'),
(148, '_transient_plugin_slugs', 'a:6:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:9:\"hello.php\";i:3;s:19:\"jetpack/jetpack.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:45:\"woocommerce-services/woocommerce-services.php\";}', 'no'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'woocommerce_store_address', 'göteborgsgatan', 'yes'),
(153, 'woocommerce_store_address_2', '', 'yes'),
(154, 'woocommerce_store_city', 'Göteborg', 'yes'),
(155, 'woocommerce_default_country', 'SE:*', 'yes'),
(156, 'woocommerce_store_postcode', '440 13', 'yes'),
(157, 'woocommerce_allowed_countries', 'all', 'yes'),
(158, 'woocommerce_all_except_countries', '', 'yes'),
(159, 'woocommerce_specific_allowed_countries', '', 'yes'),
(160, 'woocommerce_ship_to_countries', '', 'yes'),
(161, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(162, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(163, 'woocommerce_calc_taxes', 'yes', 'yes'),
(164, 'woocommerce_enable_coupons', 'yes', 'yes'),
(165, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(166, 'woocommerce_currency', 'SEK', 'yes'),
(167, 'woocommerce_currency_pos', 'left', 'yes'),
(168, 'woocommerce_price_thousand_sep', ',', 'yes'),
(169, 'woocommerce_price_decimal_sep', '.', 'yes'),
(170, 'woocommerce_price_num_decimals', '2', 'yes'),
(171, 'woocommerce_shop_page_id', '5', 'yes'),
(172, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(173, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(174, 'woocommerce_placeholder_image', '', 'yes'),
(175, 'woocommerce_weight_unit', 'kg', 'yes'),
(176, 'woocommerce_dimension_unit', 'cm', 'yes'),
(177, 'woocommerce_enable_reviews', 'yes', 'yes'),
(178, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(179, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(180, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(181, 'woocommerce_review_rating_required', 'yes', 'no'),
(182, 'woocommerce_manage_stock', 'yes', 'yes'),
(183, 'woocommerce_hold_stock_minutes', '60', 'no'),
(184, 'woocommerce_notify_low_stock', 'yes', 'no'),
(185, 'woocommerce_notify_no_stock', 'yes', 'no'),
(186, 'woocommerce_stock_email_recipient', 'test@hotmail.com', 'no'),
(187, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(188, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(189, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(190, 'woocommerce_stock_format', '', 'yes'),
(191, 'woocommerce_file_download_method', 'force', 'no'),
(192, 'woocommerce_downloads_require_login', 'no', 'no'),
(193, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(194, 'woocommerce_prices_include_tax', 'no', 'yes'),
(195, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(196, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(197, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(198, 'woocommerce_tax_classes', 'Reducerad moms\r\nIngen moms', 'yes'),
(199, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(200, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(201, 'woocommerce_price_display_suffix', '', 'yes'),
(202, 'woocommerce_tax_total_display', 'itemized', 'no'),
(203, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(204, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(205, 'woocommerce_ship_to_destination', 'billing', 'no'),
(206, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(207, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(208, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(209, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(210, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(211, 'woocommerce_registration_generate_username', 'yes', 'no'),
(212, 'woocommerce_registration_generate_password', 'yes', 'no'),
(213, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(214, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(215, 'woocommerce_registration_privacy_policy_text', 'Dina personuppgifter kommer användas för att förbättra din upplevelse på webbplatsen, hantera åtkomst till ditt konto och för andra ändamål som beskrivs i vår [privacy_policy].', 'yes'),
(216, 'woocommerce_checkout_privacy_policy_text', 'Dina personuppgifter kommer användas för att behandla din beställning, förbättra din upplevelse på webbplatsen och för andra ändamål som beskrivs i vår [privacy_policy].', 'yes'),
(217, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(218, 'woocommerce_trash_pending_orders', '', 'no'),
(219, 'woocommerce_trash_failed_orders', '', 'no'),
(220, 'woocommerce_trash_cancelled_orders', '', 'no'),
(221, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(222, 'woocommerce_email_from_name', 'wordpress-slutprojekt', 'no'),
(223, 'woocommerce_email_from_address', 'test@hotmail.com', 'no'),
(224, 'woocommerce_email_header_image', '', 'no'),
(225, 'woocommerce_email_footer_text', '{site_title}<br/>Powered by <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(226, 'woocommerce_email_base_color', '#96588a', 'no'),
(227, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(228, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(229, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(230, 'woocommerce_cart_page_id', '6', 'yes'),
(231, 'woocommerce_checkout_page_id', '7', 'yes'),
(232, 'woocommerce_myaccount_page_id', '8', 'yes'),
(233, 'woocommerce_terms_page_id', '', 'no'),
(234, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(235, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(236, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(237, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(238, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(239, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(240, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(241, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(242, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(243, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(244, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(245, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(246, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(247, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(248, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(249, 'woocommerce_api_enabled', 'no', 'yes'),
(250, 'woocommerce_single_image_width', '600', 'yes'),
(251, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(252, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(253, 'woocommerce_demo_store', 'no', 'no'),
(254, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produkt\";s:13:\"category_base\";s:16:\"produkt-kategori\";s:8:\"tag_base\";s:12:\"produkt-tagg\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(255, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(256, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(257, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(259, 'default_product_cat', '15', 'yes'),
(262, 'woocommerce_version', '3.5.2', 'yes'),
(263, 'woocommerce_db_version', '3.5.2', 'yes'),
(264, 'woocommerce_admin_notices', 'a:1:{i:1;s:20:\"no_secure_connection\";}', 'yes'),
(265, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(266, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(281, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(283, '_transient_timeout_external_ip_address_127.0.0.1', '1545731372', 'no'),
(284, '_transient_external_ip_address_127.0.0.1', '31.15.37.246', 'no'),
(288, 'woocommerce_product_type', 'physical', 'yes'),
(289, 'woocommerce_allow_tracking', 'no', 'yes'),
(290, 'woocommerce_klarna_checkout_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(291, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(292, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:2:\"no\";s:14:\"create_account\";b:0;s:5:\"email\";b:0;}', 'yes'),
(293, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(294, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(295, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(297, '_transient_shipping-transient-version', '1545126720', 'yes'),
(298, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Fast pris\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:3:\"100\";}', 'yes'),
(299, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Fast pris\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:3:\"100\";}', 'yes'),
(301, 'woocommerce_setup_automated_taxes', '1', 'yes'),
(304, 'current_theme', 'Storefront', 'yes'),
(305, 'theme_mods_storefront', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(306, 'theme_switched', '', 'yes'),
(307, '_transient_timeout_jetpack_idc_allowed', '1545130357', 'no'),
(308, '_transient_jetpack_idc_allowed', '1', 'no'),
(309, 'jetpack_activated', '1', 'yes'),
(310, '_transient_timeout_activated_jetpack', '1545126763', 'no'),
(311, '_transient_activated_jetpack', '1', 'no'),
(312, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(313, '_transient_timeout_jetpack_file_data_6.8.1', '1547632360', 'no');
INSERT INTO `wp_options` (`
option_id`,
`option_name
`, `option_value`, `autoload`) VALUES
(314, '_transient_jetpack_file_data_6.8.1', 'a:60:{s:32:\"c22c48d7cfe9d38dff2864cfea64636a\";a:15:{s:4:\"name\";s:20:\"Spelling and Grammar\";s:11:\"description\";s:39:\"Check your spelling, style, and grammar\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"6\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:115:\"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"933d4f6d290580156e0652ce850af1b2\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"fb5c4814ddc3946a3f22cc838fcb2af3\";a:15:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:14:\"jumpstart_desc\";s:79:\"Brings your photos and images to life as full-size, easily navigable galleries.\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5813eda53235a9a81a69b1f6a4a15db6\";a:15:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7ef4ca32a1c84fc10ef50c8293cae5df\";a:15:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:80:\"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c5331bfc2648dfeeebe486736d79a72c\";a:15:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:57:\"Insert a customizable contact form anywhere on your site.\";s:14:\"jumpstart_desc\";s:111:\"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:18:\"Writing, Jumpstart\";s:25:\"additional_search_queries\";s:44:\"contact, form, grunion, feedback, submission\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"707c77d2e8cb0c12d094e5423c8beda8\";a:15:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cd499b1678cfe3aabfc8ca0d3eb7e8b9\";a:15:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:53:\"Tweak your site’s CSS without modifying your theme.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d266d6546645f42cf52a66387699c50\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d436678d5e010ac6b0f157aa1021554\";a:15:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c9ff765b826940496a65c0f927a594a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"092b94702bb483a5472578283c2103d6\";a:15:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"6bd77e09440df2b63044cf8cb7963773\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ee1a10e2ef5733ab19eb1eb552d5ecb3\";a:15:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:14:\"jumpstart_desc\";s:131:\"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"284c08538b0bdc266315b2cf80b9c044\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0ce5c3ac630dea9f41215e48bb0f52f3\";a:15:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"87da2858d4f9cadb6a44fdcf32e8d2b5\";a:15:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"004962cb7cb9ec2b64769ac4df509217\";a:15:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:57:\"Use LaTeX markup for complex equations and other geekery.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7f408184bee8850d439c01322867e72c\";a:15:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:16:\"Lazy load images\";s:14:\"jumpstart_desc\";s:164:\"Lazy-loading images improve your site\'s speed and
create a smoother viewing experience. Images will load as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:33:\"mobile, theme, performance, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ad914b747f382ae918ed3b37077d4a1\";a:15:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b347263e3470979442ebf0514e41e893\";a:15:{s:4:\"name\";s:6:\"Manage\";s:11:\"description\";s:54:\"Manage all of your sites from a centralized dashboard.\";s:14:\"jumpstart_desc\";s:151:\"Helps you remotely manage plugins, turn on automated updates, and more from <a href=\"https://wordpress.com/plugins/\" target=\"_blank\">wordpress.com</a>.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"3\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:35:\"Centralized Management, Recommended\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:26:\"manage, management, remote\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"589982245aa6f495b72ab7cf57a1a48e\";a:15:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3bec8e063d637bc285018241b783725\";a:15:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar
with a useful toolbar to quickly manage your site via WordPress.com.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6ab1c3e749bcfba2dedbaebe6c9fc614\";a:15:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b7be7da643ec641511839ecc6afb6def\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d54f83ff429a8a37ace796de98459411\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0f8b373fa12c825162c0b0bc20b8bbdd\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d7b0750cb34a4a72a44fa67790de639\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f07fde8db279ffb0116c727df72c6374\";a:15:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:61:\"Receive immediate notifications
if your site goes down, 24/7.\";s:14:\"jumpstart_desc\";s:61:\"Receive immediate notifications
if your site goes down, 24/7.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:37:\"monitor, uptime, downtime, monitoring\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"136a5445a49150db75472862f3d3aefb\";a:15:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"395d8ae651afabb54d1e98440674b384\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0b7b5e3ff80355a67c5485b0d00cd1a2\";a:15:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:36:\"Serve static assets from our servers\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:46:\"photon, image, cdn, performance, speed, assets\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4484ac68583fbbaab0ef698cdc986950\";a:15:{s:4:\"name\";s:6:\"Photon\";s:11:\"description\";s:29:\"Serve images from our servers\";s:14:\"jumpstart_desc\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance
with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Jumpstart, Appearance\";s:25:\"additional_search_queries\";s:38:\"photon, image, cdn, performance, speed\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6f30193afa5b1360e3fa2676501b5e3a\";a:15:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"3e9f8bd3755d92e8e5d06966a957beb8\";a:15:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:41:\"Block suspicious-looking sign in activity\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:65:\"security, secure, protection, botnet, brute force, protect, login\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0cacc8ab2145ad11cb54d181a98aa550\";a:15:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:27:\"Automated social marketing.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:101:\"facebook, twitter, google+, googleplus, google, tumblr, linkedin, social, tweet, connections, sharing\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a528c2f803a92c5c2effa67cd33ab33a\";a:15:{s:4:\"name\";s:20:\"Progressive Web Apps\";s:11:\"description\";s:85:\"Speed up and improve the reliability of your site using the latest in web technology.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"18\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:26:\"manifest, pwa, progressive\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"329b8efce059081d46936ece0c6736b3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5fdd42d482712fbdaf000b28ea7adce9\";a:15:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:64:\"Increase page views by showing related content to your visitors.\";s:14:\"jumpstart_desc\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:22:\"related, related posts\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c5096ef610018e98a8bcccfbea4471e\";a:15:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:41:\"Enhanced search, powered by Elasticsearch\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:6:\"search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"0d81dd7df3ad2f245e84fd4fb66bf829\";a:15:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"32aaa676b3b6c9f3ef22430e1e0bca24\";a:15:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:37:\"Allow visitors to share your content.\";s:14:\"jumpstart_desc\";s:116:\"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:141:\"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this,
print, reddit, tumblr\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"948472b453cda59b38bb7c37af889af0\";a:15:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:50:\"Embed media from popular sites without any coding.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d00a6ca0a79fbe893275aaf6ed6ae42\";a:15:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:54:\"
Create short and simple links for all posts and pages.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"372e711395f23c466e04d4fd07f73099\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ea687cec293289a2a3e5f0459e79768\";a:15:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2fe9dc2c7389d4f0825a0b23bc8b19d1\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e7cf8a7e0f151ccf7cbdc6d8f118f316\";a:15:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:62:\"Allow users to log into this site using WordPress.com accounts\";s:14:\"jumpstart_desc\";s:98:\"Lets you log in to all your Jetpack-enabled sites
with one click using your WordPress.com account.\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"34fb073ed896af853ed48bd5739240cb\";a:15:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8de0dfff24a17cf0fa0011dfc691a3f3\";a:15:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:87:\"Allow users to subscribe to your posts and comments and receive notifications via email\";s:14:\"jumpstart_desc\";s:126:\"Give visitors two easy subscription options —
while commenting, or via a separate email subscription widget you can display.\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4744f348db095538d3edcacb0ed99c89\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d89db0d934b39f86065ff58e73594070\";a:15:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:14:\"jumpstart_desc\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"01987a7ba5e19786f2992501add8181a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"20459cc462babfc5a82adf6b34f6e8b1\";a:15:{s:4:\"name\";s:12:\"Data Backups\";s:11:\"description\";s:54:\"Off-site backups, security scans, and automatic fixes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:28:\"vaultpress,
backup, security\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"836245eb0a8f0c5272542305a88940c1\";a:15:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e94397a5c47c1be995eff613e65a674f\";a:15:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:27:\"Fast, ad-free video hosting\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:25:\"video, videos, videopress\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"032cd76e08467c732ccb026efda0c9cd\";a:15:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9b3e84beedf2e96f1ac5dd6498d2b1aa\";a:15:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:54:\"Add images, Twitter streams, and more to your sidebar.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7724fd9600745cf93e37cc09282e1a37\";a:15:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}s:32:\"5b8f8e5b5a1887e3c0393cb78d5143a3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}}', 'no'),
(315, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(316, 'storefront_nux_fresh_site', '0', 'yes'),
(317, 'woocommerce_catalog_rows', '4', 'yes'),
(318, 'woocommerce_catalog_columns', '3', 'yes'),
(319, 'jetpack_available_modules', 'a:1:{s:5:\"6.8.1\";a:44:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(320, 'jetpack_options', 'a:4:{s:7:\"version\";s:16:\"6.8.1:1545126757\";s:11:\"old_version\";s:16:\"6.8.1:1545126757\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:9;}', 'yes'),
(321, '_transient_timeout__woocommerce_helper_subscriptions', '1545127661', 'no'),
(322, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(323, '_transient_timeout__woocommerce_helper_updates', '1545169961', 'no'),
(324, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1545126761;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(325, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1545126761;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"6.8.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.6.8.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.5.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.18.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.18.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(326, 'jetpack_sync_settings_disable', '0', 'yes'),
(327, 'jetpack_testimonial', '0', 'yes'),
(328, 'do_activate', '0', 'yes'),
(329, '_transient_timeout_jetpack_https_test', '1545213165', 'no'),
(330, '_transient_jetpack_https_test', '1', 'no'),
(331, '_transient_timeout_jetpack_https_test_message', '1545213165', 'no'),
(332, '_transient_jetpack_https_test_message', '', 'no'),
(333, '_transient_timeout_wc_report_sales_by_date', '1545213220', 'no'),
(334, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"b3472da417043aaf4c03a600da9db45d\";a:0:{}s:32:\"a23289cda6580ad791f81b39421ffd88\";a:0:{}s:32:\"43a8370627d07cb6d944f6bbee8cd549\";a:0:{}s:32:\"bb21d1f0d3d8841a02d21e5c6cab4242\";N;s:32:\"775f57e5f8934e740b48265b5461d482\";a:0:{}s:32:\"df200b71507c5cd9ed1edde1f60cb2c5\";a:0:{}s:32:\"3211fd6e7257568307e77a689ada2b82\";a:0:{}s:32:\"b95caecad6916699aec2e9e410e87cca\";a:0:{}}', 'no'),
(335, '_transient_timeout_wc_admin_report', '1545213220', 'no'),
(336, '_transient_wc_admin_report', 'a:1:{s:32:\"09d1448075245ecd8e856a68ba727502\";a:0:{}}', 'no'),
(341, 'storefront_nux_dismissed', '1', 'yes'),
(342, '_transient_product_query-transient-version', '1545127366', 'yes'),
(350, 'product_cat_children', 'a:1:{i:16;a:1:{i:0;i:17;}}', 'yes'),
(353, '_transient_product-transient-version', '1545127366', 'yes'),
(354, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta`
(
  `meta_id` bigint
(20) UNSIGNED NOT NULL,
  `post_id` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar
(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`
meta_id`,
`post_id
`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 9, '_wc_review_count', '0'),
(4, 9, '_wc_rating_count', 'a:0:{}'),
(5, 9, '_wc_average_rating', '0'),
(6, 9, '_edit_last', '1'),
(7, 9, '_edit_lock', '1545127369:1'),
(8, 10, '_wp_attached_file', '2018/12/BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos.png'),
(9, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:786;s:6:\"height\";i:587;s:4:\"file\";s:61:\"2018/12/BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:61:\"BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos-768x574.png\";s:5:\"width\";i:768;s:6:\"height\";i:574;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:61:\"BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:61:\"BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos-416x311.png\";s:5:\"width\";i:416;s:6:\"height\";i:311;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:61:\"BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:61:\"BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:61:\"BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos-416x311.png\";s:5:\"width\";i:416;s:6:\"height\";i:311;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:61:\"BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 9, '_thumbnail_id', '10'),
(11, 9, '_sku', ''),
(12, 9, '_regular_price', '9990'),
(13, 9, '_sale_price', ''),
(14, 9, '_sale_price_dates_from', ''),
(15, 9, '_sale_price_dates_to', ''),
(16, 9, 'total_sales', '0'),
(17, 9, '_tax_status', 'taxable'),
(18, 9, '_tax_class', ''),
(19, 9, '_manage_stock', 'yes'),
(20, 9, '_backorders', 'no'),
(21, 9, '_low_stock_amount', '10'),
(22, 9, '_sold_individually', 'no'),
(23, 9, '_weight', '20'),
(24, 9, '_length', ''),
(25, 9, '_width', ''),
(26, 9, '_height', ''),
(27, 9, '_upsell_ids', 'a:0:{}'),
(28, 9, '_crosssell_ids', 'a:0:{}'),
(29, 9, '_purchase_note', ''),
(30, 9, '_default_attributes', 'a:0:{}'),
(31, 9, '_virtual', 'no'),
(32, 9, '_downloadable', 'no'),
(33, 9, '_product_image_gallery', ''),
(34, 9, '_download_limit', '-1'),
(35, 9, '_download_expiry', '-1'),
(36, 9, '_stock', '100'),
(37, 9, '_stock_status', 'instock'),
(38, 9, '_product_version', '3.5.2'),
(39, 9, '_price', '9990');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts`
(
  `ID` bigint
(20) UNSIGNED NOT NULL,
  `post_author` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar
(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar
(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar
(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar
(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar
(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int
(11) NOT NULL DEFAULT '0',
  `post_type` varchar
(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar
(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint
(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`
ID`,
`post_author
`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-12-18 10:38:15', '2018-12-18 09:38:15', 'Välkommen till WordPress. Det här är ditt första inlägg. Redigera eller radera det. Sedan kan du börja skriva!', 'Hej världen!', '', 'publish', 'open', 'open', '', 'hej-varlden', '', '', '2018-12-18 10:38:15', '2018-12-18 09:38:15', '', 0, 'http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt/?p=1', 0, 'post', '', 1),
(2, 1, '2018-12-18 10:38:15', '2018-12-18 09:38:15', 'Detta är en exempelsida. Den skiljer sig från ett blogginlägg genom att den finns kvar på samma plats och troligen kommer att synas i din webbplatsnavigering (i de flesta teman). De flesta börjar med en Om-sida som presenterar dem för potentiella besökare. Den skulle t.ex kunna ha följande innehåll: \n\n<blockquote> Hej där! Jag är cykelbud på dagen, blivande skådespelare på natten och detta är min blogg. Jag bor i Örebro, har en katt som heter Lurv och jag gillar Pina Coladas. (och att simma i Göta kanal).</blockquote>\n\n... eller något liknande detta:\n\n<blockquote>Företaget AB grundades 1971 och har sedan dess varit den största leverantören av grunk-manicker på den svenska marknaden. FAB finns i utkanten av Grönköping, har drygt 20000 anställda och läser veckobladet varje år.</blockquote>\n\nSom ny WordPress-användare bör du gå till <a href=\"http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt/wp-admin/\">din adminpanel</a> för att ta bort denna sida och sedan skapa nya sidor för ditt innehåll. Ha det så kul!', 'Exempelsida', '', 'publish', 'closed', 'open', '', 'exempelsida', '', '', '2018-12-18 10:38:15', '2018-12-18 09:38:15', '', 0, 'http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-12-18 10:38:15', '2018-12-18 09:38:15', '<h2>Vilka vi är</h2><p>Vår webbplatsadress är: http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt.</p><h2>Vilka personuppgifter vi samlar in och varför vi samlar in dem</h2><h3>Kommentarer</h3><p>När besökare lämnar kommentarer på webbplatsen samlar vi in de uppgifter som visas i kommentarsformuläret samt besökarens ip-adress och user agent-sträng som hjälp för detektering av skräpmeddelanden.</p><p>En anonymiserad sträng som skapats utifrån din e-postadress (även kallat hash-värde) kan komma att sändas till tjänsten Gravatar för att avgöra om du finns registrerad där. Integritetspolicyn för tjänsten Gravatar finns på https://automattic.com/privacy/. När din kommentar har godkänts kommer din profilbild att visas publikt tillsammans med din kommentar.</p><h3>Media</h3><p>Om du laddar upp bilder till webbplatsen bör du undvika att ladda upp bilder där EXIF-data inkluderar data från GPS-lokalisering.  Besökare till webbplatsen kan ladda ned och ta fram alla positioneringsuppgifter från bilder på webbplatsen.</p><h3>Kontaktformulär</h3><h3>Cookie-filer</h3><p>Om du lämnar en kommentar på vår webbplats kan du välja att spara ditt namn, din e-postadress och webbplatsadress i cookie-filer. Detta är för din bekvämlighet för att du inte ska behöva fylla i dessa uppgifter igen nästa gång du skriver en kommentar. Dessa cookie-filer gäller i ett år.</p><p>Om du har ett konto och loggar in på denna webbplats kommer vi att skapa en tillfällig cookie-fil för att kontrollera om din webbläsare accepterar cookie-filer. Denna cookie-fil innehåller ingen personligt identifierbar information och försvinner när du stänger din webbläsare.</p><p>När du loggar in kommer vi dessutom att skapa flera cookie-filer för att spara information om din inloggning och dina val för utformning av skärmlayouten. Cookie-filer för inloggning gäller i två dagar och cookie-filer för layoutval gäller i ett år. Om du kryssar i ”Kom ihåg mig” kommer din cookie att finnas kvar i två veckor. Om du loggar ut från ditt konto kommer cookie-filerna för inloggning att tas bort.</p><p>Om du redigerar eller publicerar en artikel kommer en extra cookie-fil att sparas i din webbläsare. Denna cookie-fil innehåller inga personuppgifter utan anger endast inläggs-ID för den artikel du just redigerade. Den gäller under 1 dygn.</p><h3>Inbäddad innehåll från andra webbplatser</h3><p>Artiklar på denna webbplats kan innehålla inbäddat innehåll (exempelvis videoklipp, bilder, artiklar o.s.v.). Inbäddat innehåll från andra webbplatser beter sig precis på samma sätt som om besökaren har besökt den andra webbplatsen.</p><p>Dessa webbplatser kan samla in uppgifter om dig, använda cookie-filer, bädda in ytterligare spårning från tredje part och övervaka din interaktion med sagda inbäddade innehåll, inklusive spårning av din interaktion med detta inbäddade innehåll om du har ett konto och är inloggad på webbplatsen i fråga.</p><h3>Analys</h3><h2>Vilka vi delar dina data med</h2><h2>Hur länge vi behåller era uppgifter</h2><p>Om du skriver en kommentar kommer kommentaren och dess metadata att sparas utan tidsgräns. Anledningen till detta är att vi behöver kunna hitta och godkänna uppföljningskommentarer automatiskt och inte lägga dem i kö för granskning.</p><p>För användare som registrerar sig på er webbplats (om sådana finns) sparar vi även de personuppgifter de anger i sin användarprofil. Alla användare kan se, redigera eller radera sina personuppgifter när som helst (med undantaget att de inte kan ändra sitt användarnamn). Även webbplatsens administratörer kan se och redigera denna information.</p><h2>Vilka rättigheter du har över dina data</h2><p>Om du har ett konto eller har skrivit några kommentarer på denna webbplats kan du begära en exportfil med de personuppgifter vi har om dig, inklusive alla uppgifter du har gett oss. Du kan också begära att vi tar bort alla personuppgifter vi har om dig. Detta omfattar inte eventuella uppgifter som vi är tvungna att spara av administrativa, legala eller säkerhetsändamål.</p><h2>Vart vi skickar dina upgifter</h2><p>Kommentarer från besökare kanske kontrolleras via en automatiserad tjänst för detektering av skräppost.</p><h2>Din kontaktinformation</h2><h2>Ytterligare information</h2><h3>Hur vi skyddar din information</h3><h3>Vilka procedurer vi har för dataläckor</h3><h3>Från vilka utomstående parter vi tar emot data</h3><h3>Vilket automatiserat beslutsfattande och/eller profilskapande vi gör med våra användaruppgifter</h3><h3> Branschkrav om delgivning av information</h3>', 'Integritetspolicy', '', 'draft', 'closed', 'open', '', 'Integritetspolicy', '', '', '2018-12-18 10:38:15', '2018-12-18 09:38:15', '', 0, 'http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-12-18 10:38:31', '0000-00-00 00:00:00', '', 'Automatiskt utkast', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-18 10:38:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt/?p=4', 0, 'post', '', 0),
(5, 1, '2018-12-18 10:51:00', '2018-12-18 09:51:00', '', 'Webbutik', '', 'publish', 'closed', 'closed', '', 'butik', '', '', '2018-12-18 10:51:00', '2018-12-18 09:51:00', '', 0, 'http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt/butik/', 0, 'page', '', 0),
(6, 1, '2018-12-18 10:51:00', '2018-12-18 09:51:00', '[woocommerce_cart]', 'Varukorg', '', 'publish', 'closed', 'closed', '', 'varukorg', '', '', '2018-12-18 10:51:00', '2018-12-18 09:51:00', '', 0, 'http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt/varukorg/', 0, 'page', '', 0),
(7, 1, '2018-12-18 10:51:00', '2018-12-18 09:51:00', '[woocommerce_checkout]', 'Till kassan', '', 'publish', 'closed', 'closed', '', 'kassan', '', '', '2018-12-18 10:51:00', '2018-12-18 09:51:00', '', 0, 'http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt/kassan/', 0, 'page', '', 0),
(8, 1, '2018-12-18 10:51:00', '2018-12-18 09:51:00', '[woocommerce_my_account]', 'Mitt konto', '', 'publish', 'closed', 'closed', '', 'mitt-konto', '', '', '2018-12-18 10:51:00', '2018-12-18 09:51:00', '', 0, 'http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt/mitt-konto/', 0, 'page', '', 0),
(9, 1, '2018-12-18 11:02:45', '2018-12-18 10:02:45', 'Tvättmaskinen med extra allt! Du behöver bara lasta den, sedan kan du fjärrstyra och hantera tvätten via telefon eller surfplatta. Maskinen doserar till och med tvättmedlet själv, och dessutom är den extremt energisnål och tystgående.', 'BOSCH WAT286H1BY Tvättmaskin med Wi-Fi och i-Dos', 'Tvättmaskinen med extra allt! Du behöver bara lasta den, sedan kan du fjärrstyra och hantera tvätten via telefon eller surfplatta. Maskinen doserar till och med tvättmedlet själv, och dessutom är den extremt energisnål och tystgående.', 'publish', 'open', 'closed', '', 'bosch-wat286h1by-tvattmaskin-med-wi-fi-och-i-dos', '', '', '2018-12-18 11:02:46', '2018-12-18 10:02:46', '', 0, 'http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt/?post_type=product&#038;p=9', 0, 'product', '', 0),
(10, 1, '2018-12-18 11:02:19', '2018-12-18 10:02:19', '', 'BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos', '', 'inherit', 'open', 'closed', '', 'bosch-wat286h1by-tvattmaskin-med-wi-fi-och-i-dos', '', '', '2018-12-18 11:02:19', '2018-12-18 10:02:19', '', 9, 'http://localhost/%C3%A5r2/CMS2/woocommerce-slutprojekt/wp-content/uploads/2018/12/BOSCH-WAT286H1BY-Tvättmaskin-med-Wi-Fi-och-i-Dos.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta`
(
  `meta_id` bigint
(20) UNSIGNED NOT NULL,
  `term_id` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar
(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`
meta_id`,
`term_id
`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '0'),
(2, 17, 'order', '0'),
(3, 16, 'product_count_product_cat', '1'),
(4, 17, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms`
(
  `term_id` bigint
(20) UNSIGNED NOT NULL,
  `name` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint
(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`
term_id`,
`name
`, `slug`, `term_group`) VALUES
(1, 'Okategoriserade', 'okategoriserade', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Okategoriserad', 'okategoriserad', 0),
(16, 'Vitvaror', 'vitvaror', 0),
(17, 'Tvättmaskiner', 'tvattmaskiner', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships`
(
  `object_id` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int
(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`
object_id`,
`term_taxonomy_id
`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(9, 16, 0),
(9, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy`
(
  `term_taxonomy_id` bigint
(20) UNSIGNED NOT NULL,
  `term_id` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar
(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint
(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`
term_taxonomy_id`,
`term_id
`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 1),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 1),
(17, 17, 'product_cat', '', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta`
(
  `umeta_id` bigint
(20) UNSIGNED NOT NULL,
  `user_id` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar
(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`
umeta_id`,
`user_id
`, `meta_key`, `meta_value`) VALUES
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"3cdeba6bc867d663c7a35f65a6119034867b8a4076d92f52cc91215967a5a941\";a:4:{s:10:\"expiration\";i:1545298707;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0\";s:5:\"login\";i:1545125907;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(20, 1, 'wc_last_active', '1545091200'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1545127365');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users`
(
  `ID` bigint
(20) UNSIGNED NOT NULL,
  `user_login` varchar
(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar
(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar
(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar
(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar
(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar
(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int
(11) NOT NULL DEFAULT '0',
  `display_name` varchar
(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`
ID`,
`user_login
`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BhvKNsTqXz.uGhJFtLpDdBssoJVTlc/', 'admin', 'test@hotmail.com', '', '2018-12-18 09:38:15', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log`
(
  `download_log_id` bigint
(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint
(20) UNSIGNED NOT NULL,
  `user_id` bigint
(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar
(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks`
(
  `webhook_id` bigint
(20) UNSIGNED NOT NULL,
  `status` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint
(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint
(4) NOT NULL,
  `failure_count` smallint
(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint
(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys`
(
  `key_id` bigint
(20) UNSIGNED NOT NULL,
  `user_id` bigint
(20) UNSIGNED NOT NULL,
  `description` varchar
(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar
(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char
(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char
(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char
(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies`
(
  `attribute_id` bigint
(20) UNSIGNED NOT NULL,
  `attribute_name` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar
(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar
(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar
(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int
(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions`
(
  `permission_id` bigint
(20) UNSIGNED NOT NULL,
  `download_id` varchar
(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint
(20) UNSIGNED NOT NULL,
  `order_id` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint
(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar
(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint
(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log`
(
  `log_id` bigint
(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint
(4) NOT NULL,
  `source` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta`
(
  `meta_id` bigint
(20) UNSIGNED NOT NULL,
  `order_item_id` bigint
(20) UNSIGNED NOT NULL,
  `meta_key` varchar
(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items`
(
  `order_item_id` bigint
(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint
(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta`
(
  `meta_id` bigint
(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint
(20) UNSIGNED NOT NULL,
  `meta_key` varchar
(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens`
(
  `token_id` bigint
(20) UNSIGNED NOT NULL,
  `gateway_id` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint
(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint
(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions`
(
  `session_id` bigint
(20) UNSIGNED NOT NULL,
  `session_key` char
(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint
(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`
session_id`,
`session_key
`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:704:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"SE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"SE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:16:\"test@hotmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1545299563);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones`
(
  `zone_id` bigint
(20) UNSIGNED NOT NULL,
  `zone_name` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint
(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`
zone_id`,
`zone_name
`, `zone_order`) VALUES
(1, 'Sverige', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations`
(
  `location_id` bigint
(20) UNSIGNED NOT NULL,
  `zone_id` bigint
(20) UNSIGNED NOT NULL,
  `location_code` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar
(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`
location_id`,
`zone_id
`, `location_code`, `location_type`) VALUES
(1, 1, 'SE', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods`
(
  `zone_id` bigint
(20) UNSIGNED NOT NULL,
  `instance_id` bigint
(20) UNSIGNED NOT NULL,
  `method_id` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint
(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint
(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`
zone_id`,
`instance_id
`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates`
(
  `tax_rate_id` bigint
(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar
(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar
(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint
(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int
(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int
(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint
(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations`
(
  `location_id` bigint
(20) UNSIGNED NOT NULL,
  `location_code` varchar
(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint
(20) UNSIGNED NOT NULL,
  `location_type` varchar
(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
ADD PRIMARY KEY
(`meta_id`),
ADD KEY `comment_id`
(`comment_id`),
ADD KEY `meta_key`
(`meta_key`
(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
ADD PRIMARY KEY
(`comment_ID`),
ADD KEY `comment_post_ID`
(`comment_post_ID`),
ADD KEY `comment_approved_date_gmt`
(`comment_approved`,`comment_date_gmt`),
ADD KEY `comment_date_gmt`
(`comment_date_gmt`),
ADD KEY `comment_parent`
(`comment_parent`),
ADD KEY `comment_author_email`
(`comment_author_email`
(10)),
ADD KEY `woo_idx_comment_type`
(`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
ADD PRIMARY KEY
(`link_id`),
ADD KEY `link_visible`
(`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
ADD PRIMARY KEY
(`option_id`),
ADD UNIQUE KEY `option_name`
(`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
ADD PRIMARY KEY
(`meta_id`),
ADD KEY `post_id`
(`post_id`),
ADD KEY `meta_key`
(`meta_key`
(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
ADD PRIMARY KEY
(`ID`),
ADD KEY `post_name`
(`post_name`
(191)),
ADD KEY `type_status_date`
(`post_type`,`post_status`,`post_date`,`ID`),
ADD KEY `post_parent`
(`post_parent`),
ADD KEY `post_author`
(`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
ADD PRIMARY KEY
(`meta_id`),
ADD KEY `term_id`
(`term_id`),
ADD KEY `meta_key`
(`meta_key`
(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
ADD PRIMARY KEY
(`term_id`),
ADD KEY `slug`
(`slug`
(191)),
ADD KEY `name`
(`name`
(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
ADD PRIMARY KEY
(`object_id`,`term_taxonomy_id`),
ADD KEY `term_taxonomy_id`
(`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
ADD PRIMARY KEY
(`term_taxonomy_id`),
ADD UNIQUE KEY `term_id_taxonomy`
(`term_id`,`taxonomy`),
ADD KEY `taxonomy`
(`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
ADD PRIMARY KEY
(`umeta_id`),
ADD KEY `user_id`
(`user_id`),
ADD KEY `meta_key`
(`meta_key`
(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
ADD PRIMARY KEY
(`ID`),
ADD KEY `user_login_key`
(`user_login`),
ADD KEY `user_nicename`
(`user_nicename`),
ADD KEY `user_email`
(`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
ADD PRIMARY KEY
(`download_log_id`),
ADD KEY `permission_id`
(`permission_id`),
ADD KEY `timestamp`
(`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
ADD PRIMARY KEY
(`webhook_id`),
ADD KEY `user_id`
(`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
ADD PRIMARY KEY
(`key_id`),
ADD KEY `consumer_key`
(`consumer_key`),
ADD KEY `consumer_secret`
(`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
ADD PRIMARY KEY
(`attribute_id`),
ADD KEY `attribute_name`
(`attribute_name`
(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
ADD PRIMARY KEY
(`permission_id`),
ADD KEY `download_order_key_product`
(`product_id`,`order_id`,`order_key`
(16),`download_id`),
ADD KEY `download_order_product`
(`download_id`,`order_id`,`product_id`),
ADD KEY `order_id`
(`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
ADD PRIMARY KEY
(`log_id`),
ADD KEY `level`
(`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
ADD PRIMARY KEY
(`meta_id`),
ADD KEY `order_item_id`
(`order_item_id`),
ADD KEY `meta_key`
(`meta_key`
(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
ADD PRIMARY KEY
(`order_item_id`),
ADD KEY `order_id`
(`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
ADD PRIMARY KEY
(`meta_id`),
ADD KEY `payment_token_id`
(`payment_token_id`),
ADD KEY `meta_key`
(`meta_key`
(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
ADD PRIMARY KEY
(`token_id`),
ADD KEY `user_id`
(`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
ADD PRIMARY KEY
(`session_id`),
ADD UNIQUE KEY `session_key`
(`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
ADD PRIMARY KEY
(`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
ADD PRIMARY KEY
(`location_id`),
ADD KEY `location_id`
(`location_id`),
ADD KEY `location_type_code`
(`location_type`
(10),`location_code`
(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
ADD PRIMARY KEY
(`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
ADD PRIMARY KEY
(`tax_rate_id`),
ADD KEY `tax_rate_country`
(`tax_rate_country`),
ADD KEY `tax_rate_state`
(`tax_rate_state`
(2)),
ADD KEY `tax_rate_class`
(`tax_rate_class`
(10)),
ADD KEY `tax_rate_priority`
(`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
ADD PRIMARY KEY
(`location_id`),
ADD KEY `tax_rate_id`
(`tax_rate_id`),
ADD KEY `location_type_code`
(`location_type`
(10),`location_code`
(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY
(`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions`
(`permission_id`) ON
DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;