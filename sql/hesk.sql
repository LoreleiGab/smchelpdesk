-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13-Abr-2017 às 20:08
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hesk`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_attachments`
--

CREATE TABLE `hesk_attachments` (
  `att_id` mediumint(8) UNSIGNED NOT NULL,
  `ticket_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `saved_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `hesk_attachments`
--

INSERT INTO `hesk_attachments` (`att_id`, `ticket_id`, `saved_name`, `real_name`, `size`, `type`) VALUES
(1, 'BST-21E-9D5H', 'BST-21E-9D5H_7f408ecd3a4e674a91cdc044603d3a20.png', 'logoigsisv2.PNG', 20657, '0'),
(2, '5MW-MBZ-8DQG', '5MW-MBZ-8DQG_64012c44cef9051bbf7debf3cc247124.png', 'logoigsisv2.PNG', 20657, '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_banned_emails`
--

CREATE TABLE `hesk_banned_emails` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `banned_by` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_banned_ips`
--

CREATE TABLE `hesk_banned_ips` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `ip_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip_display` varchar(100) NOT NULL,
  `banned_by` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_categories`
--

CREATE TABLE `hesk_categories` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cat_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `autoassign` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `priority` enum('0','1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `hesk_categories`
--

INSERT INTO `hesk_categories` (`id`, `name`, `cat_order`, `autoassign`, `type`, `priority`) VALUES
(1, 'Outros', 10, '1', '0', '3'),
(2, 'Impressora', 20, '1', '0', '2'),
(3, 'Hardware (Teclado, Mouse)', 30, '1', '0', '2'),
(4, 'Instalação de Software', 40, '1', '0', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_custom_fields`
--

CREATE TABLE `hesk_custom_fields` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `use` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `place` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `req` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `category` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci,
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '10'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `hesk_custom_fields`
--

INSERT INTO `hesk_custom_fields` (`id`, `use`, `place`, `type`, `req`, `category`, `name`, `value`, `order`) VALUES
(1, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(2, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(3, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(4, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(5, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(6, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(7, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(8, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(9, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(10, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(11, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(12, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(13, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(14, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(15, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(16, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(17, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(18, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(19, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(20, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(21, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(22, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(23, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(24, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(25, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(26, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(27, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(28, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(29, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(30, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(31, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(32, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(33, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(34, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(35, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(36, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(37, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(38, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(39, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(40, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(41, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(42, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(43, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(44, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(45, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(46, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(47, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(48, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(49, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(50, '0', '0', 'text', '0', NULL, '', NULL, 1000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_custom_statuses`
--

CREATE TABLE `hesk_custom_statuses` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `can_customers_change` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '10'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_kb_articles`
--

CREATE TABLE `hesk_kb_articles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` smallint(5) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `keywords` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` float NOT NULL DEFAULT '0',
  `votes` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `views` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `type` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `html` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sticky` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `art_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `history` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `attachments` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `hesk_kb_articles`
--

INSERT INTO `hesk_kb_articles` (`id`, `catid`, `dt`, `author`, `subject`, `content`, `keywords`, `rating`, `votes`, `views`, `type`, `html`, `sticky`, `art_order`, `history`, `attachments`) VALUES
(1, 1, '2017-04-12 23:03:32', 1, 'Configurando Outlook', '<ol style="margin-top:0cm;" type="1" start="1"><li class="MsoNormal"><span style="font-family:arial, helvetica, sans-serif;font-size:small;">Abra o Microsoft Outlook</span></li>\r\n<li class="MsoNormal"><span style="font-family:arial, helvetica, sans-serif;font-size:small;">Escolha Microsoft Exchange Server</span></li>\r\n<li class="MsoNormal"><span style="font-family:arial, helvetica, sans-serif;font-size:small;">Como servidor de e-mails digite <strong>cprodamibs160</strong></span></li>\r\n<li class="MsoNormal"><span style="font-family:arial, helvetica, sans-serif;font-size:small;">No campo que solicita nome de usuário digite o nome completo da pessoa ou o e-mail até antes do @</span></li>\r\n</ol>', '', 0, 0, 2, '0', '1', '1', 10, '<li class="smaller">13/04/2017 02:03:32 | enviado por Lorelei (lorelei)</li>', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_kb_attachments`
--

CREATE TABLE `hesk_kb_attachments` (
  `att_id` mediumint(8) UNSIGNED NOT NULL,
  `saved_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_kb_categories`
--

CREATE TABLE `hesk_kb_categories` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` smallint(5) UNSIGNED NOT NULL,
  `articles` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `articles_private` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `articles_draft` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cat_order` smallint(5) UNSIGNED NOT NULL,
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `hesk_kb_categories`
--

INSERT INTO `hesk_kb_categories` (`id`, `name`, `parent`, `articles`, `articles_private`, `articles_draft`, `cat_order`, `type`) VALUES
(1, 'Knowledgebase', 0, 1, 0, 0, 10, '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_logins`
--

CREATE TABLE `hesk_logins` (
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `last_attempt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_mail`
--

CREATE TABLE `hesk_mail` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` smallint(5) UNSIGNED NOT NULL,
  `to` smallint(5) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `deletedby` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `hesk_mail`
--

INSERT INTO `hesk_mail` (`id`, `from`, `to`, `subject`, `message`, `dt`, `read`, `deletedby`) VALUES
(1, 9999, 1, 'HESK quick start guide', '</p><div style="text-align:justify; padding-left: 10px; padding-right: 10px;">\r\n\r\n<p>&nbsp;<br /><b>Welcome to HESK! You''ll find it is a great tool for improving your customer support.</b></p>\r\n\r\n<p><b>Here is a short guide to get you started.</b><br />&nbsp;</p>\r\n\r\n<hr />\r\nSTEP #1: setup your profile\r\n<hr />\r\n<ol>\r\n<li>go to <a href="profile.php">Profile</a>,</li>\r\n<li>set your name and email address.</li>\r\n</ol>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #2: configure HESK\r\n<hr />\r\n<ol>\r\n<li>go to <a href="admin_settings.php">Settings</a>,</li>\r\n<li>for a quick start, just modify these on the "General" tab:<br /><br />\r\nWebsite title<br />\r\nWebsite URL<br />\r\nWebmaster email<br />&nbsp;\r\n</li>\r\n<li>you can come back to the settings page later and explore all the options. To view details about a setting, click the [?]</li>\r\n</ol>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #3: add ticket categories\r\n<hr />\r\n<p>Go to <a href="manage_categories.php">Categories</a> to add ticket categories.</p>\r\n<p>You cannot delete the default category, but you can rename it.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\nSTEP #4: add staff accounts\r\n<hr />\r\n<p>Go to <a href="manage_users.php">Users</a> to create new staff accounts.</p>\r\n<p>You can use two user types in HESK:</p>\r\n<ul>\r\n<li><b>Administrators</b>, who have full access to all HESK features</li>\r\n<li><b>Staff</b>, who have access to limited privileges and categories</li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #5: useful tools\r\n<hr />\r\n<p>You can do a lot on the <a href="banned_emails.php">Tools</a> page, for example:</p>\r\n<ul>\r\n<li>create custom ticket statuses,</li>\r\n<li>add custom input fields to the "Submit a ticket" form,</li>\r\n<li>modify email templates,</li>\r\n<li>and more.</li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #6: create a knowledgebase\r\n<hr />\r\n<p>A clear and comprehensive knowledgebase can drastically reduce the number of support tickets you receive, thereby saving you significant time and effort in the long run.</p>\r\n<p>Go to <a href="manage_knowledgebase.php">Knowledgebase</a> to create categories and write articles for your knowledgebase.</p>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #7: don''t repeat yourself\r\n<hr />\r\n<p>Sometimes several support tickets are addressing the same issues - allowing you to use pre-written (&quot;canned&quot;) responses.</p>\r\n<p>To compose canned responses go to <a href="manage_canned.php">Canned</a> page.</p>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #8: secure your help desk\r\n<hr />\r\n<p>Make sure your help desk is as secure as possible by going through <a href="https://www.hesk.com/knowledgebase/?article=82">HESK security check list</a></p>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #9: stay updated\r\n<hr />\r\n<p>HESK regularly receives improvements and bug fixes, make sure you know about them!</p>\r\n<ul>\r\n<li>for fast notifications, <a href="https://twitter.com/HESKdotCOM">follow us on <b>Twitter</b></a></li>\r\n<li>for email notifications, subscribe to our low-volume zero-spam <a href="https://www.hesk.com/newsletter.php">newsletter</a></li>\r\n</ul>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\nSTEP #10: look professional\r\n<hr />\r\n<p>To look more professional and not advertise the tools you use, <a href="https://www.hesk.com/buy.php">remove &quot;Powered by&quot; links</a> from your help desk.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Again, welcome to HESK and enjoy using it!</p>\r\n\r\n<p>Klemen Stirn<br />\r\nAuthor and owner</p>\r\n\r\n</div><p>', '2017-04-12 21:27:56', '1', 9999);

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_notes`
--

CREATE TABLE `hesk_notes` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ticket` mediumint(8) UNSIGNED NOT NULL,
  `who` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `attachments` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_online`
--

CREATE TABLE `hesk_online` (
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tmp` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `hesk_online`
--

INSERT INTO `hesk_online` (`user_id`, `dt`, `tmp`) VALUES
(1, '2017-04-13 17:51:50', 258);

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_pipe_loops`
--

CREATE TABLE `hesk_pipe_loops` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hits` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `message_hash` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_replies`
--

CREATE TABLE `hesk_replies` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `replyto` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attachments` mediumtext COLLATE utf8_unicode_ci,
  `staffid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `rating` enum('1','5') COLLATE utf8_unicode_ci DEFAULT NULL,
  `read` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `hesk_replies`
--

INSERT INTO `hesk_replies` (`id`, `replyto`, `name`, `message`, `dt`, `attachments`, `staffid`, `rating`, `read`) VALUES
(1, 3, 'Lorelei', 'Estamos aguardando a compra de novos mouses.<br />\n<br />\nLorelei Lourenço<br />\r\nSupervisão de T.I.<br />\n', '2017-04-12 22:10:54', '', 1, '5', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_reply_drafts`
--

CREATE TABLE `hesk_reply_drafts` (
  `owner` smallint(5) UNSIGNED NOT NULL,
  `ticket` mediumint(8) UNSIGNED NOT NULL,
  `message` mediumtext CHARACTER SET utf8 NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_reset_password`
--

CREATE TABLE `hesk_reset_password` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `user` smallint(5) UNSIGNED NOT NULL,
  `hash` char(40) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_service_messages`
--

CREATE TABLE `hesk_service_messages` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `style` enum('0','1','2','3','4') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_std_replies`
--

CREATE TABLE `hesk_std_replies` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `reply_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_tickets`
--

CREATE TABLE `hesk_tickets` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `trackid` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `priority` enum('0','1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3',
  `subject` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00',
  `lastchange` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `firstreply` timestamp NULL DEFAULT NULL,
  `closedat` timestamp NULL DEFAULT NULL,
  `articles` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `openedby` mediumint(8) DEFAULT '0',
  `firstreplyby` smallint(5) UNSIGNED DEFAULT NULL,
  `closedby` mediumint(8) DEFAULT NULL,
  `replies` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `staffreplies` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `owner` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `time_worked` time NOT NULL DEFAULT '00:00:00',
  `lastreplier` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `replierid` smallint(5) UNSIGNED DEFAULT NULL,
  `archive` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `locked` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `attachments` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `merged` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `history` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom1` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom2` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom3` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom4` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom5` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom6` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom7` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom8` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom9` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom10` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom11` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom12` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom13` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom14` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom15` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom16` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom17` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom18` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom19` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom20` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom21` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom22` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom23` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom24` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom25` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom26` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom27` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom28` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom29` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom30` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom31` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom32` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom33` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom34` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom35` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom36` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom37` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom38` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom39` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom40` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom41` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom42` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom43` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom44` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom45` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom46` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom47` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom48` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom49` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom50` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `hesk_tickets`
--

INSERT INTO `hesk_tickets` (`id`, `trackid`, `name`, `email`, `category`, `priority`, `subject`, `message`, `dt`, `lastchange`, `firstreply`, `closedat`, `articles`, `ip`, `language`, `status`, `openedby`, `firstreplyby`, `closedby`, `replies`, `staffreplies`, `owner`, `time_worked`, `lastreplier`, `replierid`, `archive`, `locked`, `attachments`, `merged`, `history`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`, `custom11`, `custom12`, `custom13`, `custom14`, `custom15`, `custom16`, `custom17`, `custom18`, `custom19`, `custom20`, `custom21`, `custom22`, `custom23`, `custom24`, `custom25`, `custom26`, `custom27`, `custom28`, `custom29`, `custom30`, `custom31`, `custom32`, `custom33`, `custom34`, `custom35`, `custom36`, `custom37`, `custom38`, `custom39`, `custom40`, `custom41`, `custom42`, `custom43`, `custom44`, `custom45`, `custom46`, `custom47`, `custom48`, `custom49`, `custom50`) VALUES
(1, 'BST-21E-9D5H', 'Lorelei Lourenço', 'loreleigab@hotmail.com', 1, '2', 'teste de chamado', 'Estou com problemas, o site da Virada não funciona.', '2017-04-12 21:40:29', '2017-04-12 22:03:17', NULL, '2017-04-12 22:03:17', NULL, '::1', NULL, 3, 0, NULL, 1, 0, 0, 1, '00:00:00', '0', NULL, '0', '0', '1#logoigsisv2.PNG,', '', '<li class="smaller"> 2017-04-13 00:40:29 | apresentado por Lorelei Lourenço </li><li class="smaller"> 2017-04-13 00:40:29 | atribuída automaticamente para Your name (lorelei) </li><li class="smaller"> 13/04/2017 01:03:16 | fechado por Lorelei (lorelei) </li>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'X2U-MD5-VZVA', 'Ilton', 'ilton@email.com', 4, '2', 'Photoshop', 'Necessito a instalação do photoshop na minha máquina.', '2017-04-12 22:01:07', '2017-04-12 22:01:53', NULL, NULL, NULL, '::1', NULL, 0, 0, NULL, NULL, 0, 0, 2, '00:00:00', '0', NULL, '0', '0', '', '', '<li class="smaller"> 13/04/2017 01:01:07 | apresentado por Ilton </li><li class="smaller"> 13/04/2017 01:01:07 | atribuída automaticamente para Lorelei (lorelei) </li><li class="smaller"> 13/04/2017 01:01:53 | atribuída a Adilson (adilson) por Lorelei (lorelei) </li>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'SL4-23S-ZA8A', 'Junior', 'loreleigab@gmail.com', 3, '2', 'Mouse', 'Meu mouse parou de funcionar', '2017-04-12 22:07:17', '2017-04-12 22:11:05', '2017-04-12 22:10:54', NULL, NULL, '::1', NULL, 4, 0, 1, NULL, 1, 1, 1, '00:00:49', '1', 1, '0', '0', '', '', '<li class="smaller"> 13/04/2017 01:07:17 | apresentado por Junior </li><li class="smaller"> 13/04/2017 01:07:17 | atribuída automaticamente para Lorelei (lorelei) </li><li class="smaller"> 13/04/2017 01:11:05 | status alterado para Em progresso por Lorelei (lorelei) </li>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '5MW-MBZ-8DQG', 'Grayce', 'gigi@prefeitura', 4, '2', 'Igisis', 'Quero instalar o IGSIS.', '2017-04-13 15:23:20', '2017-04-13 15:23:20', NULL, NULL, NULL, '::1', NULL, 0, 0, NULL, NULL, 0, 0, 1, '00:00:00', '0', NULL, '0', '0', '2#logoigsisv2.PNG,', '', '<li class="smaller"> 13/04/2017 18:23:20 | apresentado por Grayce </li><li class="smaller"> 13/04/2017 18:23:20 | atribuída automaticamente para Lorelei (lorelei) </li>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_ticket_templates`
--

CREATE TABLE `hesk_ticket_templates` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `tpl_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hesk_users`
--

CREATE TABLE `hesk_users` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `user` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pass` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `isadmin` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `signature` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `afterreply` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `autostart` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `autoreload` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `notify_customer_new` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_customer_reply` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `show_suggested` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_new_unassigned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_new_my` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_reply_unassigned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_reply_my` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_assigned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_pm` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_note` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `default_list` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoassign` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `heskprivileges` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ratingneg` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ratingpos` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `replies` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `hesk_users`
--

INSERT INTO `hesk_users` (`id`, `user`, `pass`, `isadmin`, `name`, `email`, `signature`, `language`, `categories`, `afterreply`, `autostart`, `autoreload`, `notify_customer_new`, `notify_customer_reply`, `show_suggested`, `notify_new_unassigned`, `notify_new_my`, `notify_reply_unassigned`, `notify_reply_my`, `notify_assigned`, `notify_pm`, `notify_note`, `default_list`, `autoassign`, `heskprivileges`, `ratingneg`, `ratingpos`, `rating`, `replies`) VALUES
(1, 'lorelei', 'e7c950ba16a6253a157d6f17919ed85524ac6a89', '1', 'Lorelei', 'loreleigab@hotmail.com', 'Lorelei Lourenço\r\nSupervisão de T.I.', NULL, '', '0', '1', 30, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '1', '', 0, 1, 5, 1),
(2, 'adilson', '2ce32575bfa8d6d6b8a5a39c5427e4cfc2733094', '0', 'Adilson', 'adilson@email.com', 'Adilson Lima\r\nSupervisão de T.I.', NULL, '1,2,3,4', '0', '1', 30, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '0', 'can_view_tickets,can_reply_tickets,can_resolve,can_submit_any_cat,can_change_cat,can_assign_self,can_view_unassigned,can_view_online', 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hesk_attachments`
--
ALTER TABLE `hesk_attachments`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `hesk_banned_emails`
--
ALTER TABLE `hesk_banned_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `hesk_banned_ips`
--
ALTER TABLE `hesk_banned_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hesk_categories`
--
ALTER TABLE `hesk_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `hesk_custom_fields`
--
ALTER TABLE `hesk_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `useType` (`use`,`type`);

--
-- Indexes for table `hesk_custom_statuses`
--
ALTER TABLE `hesk_custom_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hesk_kb_articles`
--
ALTER TABLE `hesk_kb_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `sticky` (`sticky`),
  ADD KEY `type` (`type`);
ALTER TABLE `hesk_kb_articles` ADD FULLTEXT KEY `subject` (`subject`,`content`,`keywords`);

--
-- Indexes for table `hesk_kb_attachments`
--
ALTER TABLE `hesk_kb_attachments`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `hesk_kb_categories`
--
ALTER TABLE `hesk_kb_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `hesk_logins`
--
ALTER TABLE `hesk_logins`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `hesk_mail`
--
ALTER TABLE `hesk_mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`,`read`,`deletedby`);

--
-- Indexes for table `hesk_notes`
--
ALTER TABLE `hesk_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketid` (`ticket`);

--
-- Indexes for table `hesk_online`
--
ALTER TABLE `hesk_online`
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `dt` (`dt`);

--
-- Indexes for table `hesk_pipe_loops`
--
ALTER TABLE `hesk_pipe_loops`
  ADD KEY `email` (`email`,`hits`);

--
-- Indexes for table `hesk_replies`
--
ALTER TABLE `hesk_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replyto` (`replyto`),
  ADD KEY `dt` (`dt`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `hesk_reply_drafts`
--
ALTER TABLE `hesk_reply_drafts`
  ADD KEY `owner` (`owner`),
  ADD KEY `ticket` (`ticket`);

--
-- Indexes for table `hesk_reset_password`
--
ALTER TABLE `hesk_reset_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `hesk_service_messages`
--
ALTER TABLE `hesk_service_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `hesk_std_replies`
--
ALTER TABLE `hesk_std_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hesk_tickets`
--
ALTER TABLE `hesk_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trackid` (`trackid`),
  ADD KEY `archive` (`archive`),
  ADD KEY `categories` (`category`),
  ADD KEY `statuses` (`status`),
  ADD KEY `owner` (`owner`),
  ADD KEY `openedby` (`openedby`,`firstreplyby`,`closedby`),
  ADD KEY `dt` (`dt`);

--
-- Indexes for table `hesk_ticket_templates`
--
ALTER TABLE `hesk_ticket_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hesk_users`
--
ALTER TABLE `hesk_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autoassign` (`autoassign`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hesk_attachments`
--
ALTER TABLE `hesk_attachments`
  MODIFY `att_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hesk_banned_emails`
--
ALTER TABLE `hesk_banned_emails`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hesk_banned_ips`
--
ALTER TABLE `hesk_banned_ips`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hesk_categories`
--
ALTER TABLE `hesk_categories`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hesk_kb_articles`
--
ALTER TABLE `hesk_kb_articles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hesk_kb_attachments`
--
ALTER TABLE `hesk_kb_attachments`
  MODIFY `att_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hesk_kb_categories`
--
ALTER TABLE `hesk_kb_categories`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hesk_mail`
--
ALTER TABLE `hesk_mail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hesk_notes`
--
ALTER TABLE `hesk_notes`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hesk_replies`
--
ALTER TABLE `hesk_replies`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hesk_reset_password`
--
ALTER TABLE `hesk_reset_password`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hesk_service_messages`
--
ALTER TABLE `hesk_service_messages`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hesk_std_replies`
--
ALTER TABLE `hesk_std_replies`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hesk_tickets`
--
ALTER TABLE `hesk_tickets`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hesk_ticket_templates`
--
ALTER TABLE `hesk_ticket_templates`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hesk_users`
--
ALTER TABLE `hesk_users`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
