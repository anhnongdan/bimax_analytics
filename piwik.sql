-- MySQL dump 10.16  Distrib 10.1.14-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: piwik
-- ------------------------------------------------------
-- Server version	10.1.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `piwik_access`
--

DROP TABLE IF EXISTS `piwik_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_access` (
  `login` varchar(100) NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `access` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`login`,`idsite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_archive_blob_2016_01`
--

DROP TABLE IF EXISTS `piwik_archive_blob_2016_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_archive_blob_2016_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_archive_blob_2016_06`
--

DROP TABLE IF EXISTS `piwik_archive_blob_2016_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_archive_blob_2016_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_archive_numeric_2016_01`
--

DROP TABLE IF EXISTS `piwik_archive_numeric_2016_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_archive_numeric_2016_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_archive_numeric_2016_05`
--

DROP TABLE IF EXISTS `piwik_archive_numeric_2016_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_archive_numeric_2016_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_archive_numeric_2016_06`
--

DROP TABLE IF EXISTS `piwik_archive_numeric_2016_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_archive_numeric_2016_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_custom_dimensions`
--

DROP TABLE IF EXISTS `piwik_custom_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_custom_dimensions` (
  `idcustomdimension` bigint(20) unsigned NOT NULL,
  `idsite` bigint(20) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `scope` varchar(10) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `extractions` text NOT NULL,
  `case_sensitive` tinyint(3) unsigned NOT NULL DEFAULT '1',
  UNIQUE KEY `idcustomdimension_idsite` (`idcustomdimension`,`idsite`),
  UNIQUE KEY `uniq_hash` (`idsite`,`scope`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_goal`
--

DROP TABLE IF EXISTS `piwik_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_goal` (
  `idsite` int(11) NOT NULL,
  `idgoal` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `match_attribute` varchar(20) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `pattern_type` varchar(10) NOT NULL,
  `case_sensitive` tinyint(4) NOT NULL,
  `allow_multiple` tinyint(4) NOT NULL,
  `revenue` float NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsite`,`idgoal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_log_action`
--

DROP TABLE IF EXISTS `piwik_log_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_action` (
  `idaction` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `hash` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `url_prefix` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`idaction`),
  KEY `index_type_hash` (`type`,`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=496343 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_log_conversion`
--

DROP TABLE IF EXISTS `piwik_log_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_conversion` (
  `idvisit` int(10) unsigned NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idaction_url` int(11) DEFAULT NULL,
  `idlink_va` int(11) DEFAULT NULL,
  `idgoal` int(10) NOT NULL,
  `buster` int(10) unsigned NOT NULL,
  `idorder` varchar(100) DEFAULT NULL,
  `items` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  `visitor_days_since_first` smallint(5) unsigned NOT NULL,
  `visitor_days_since_order` smallint(5) unsigned NOT NULL,
  `visitor_returning` tinyint(1) NOT NULL,
  `visitor_count_visits` smallint(5) unsigned NOT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `campaign_name` varchar(255) DEFAULT NULL,
  `campaign_keyword` varchar(255) DEFAULT NULL,
  `campaign_source` varchar(255) DEFAULT NULL,
  `campaign_medium` varchar(255) DEFAULT NULL,
  `campaign_content` varchar(255) DEFAULT NULL,
  `campaign_id` varchar(100) DEFAULT NULL,
  `referer_name` varchar(70) DEFAULT NULL,
  `referer_type` tinyint(1) unsigned DEFAULT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) NOT NULL,
  `location_latitude` float(10,6) DEFAULT NULL,
  `location_longitude` float(10,6) DEFAULT NULL,
  `location_region` char(2) DEFAULT NULL,
  `revenue_discount` float DEFAULT NULL,
  `revenue` float DEFAULT NULL,
  `revenue_shipping` float DEFAULT NULL,
  `revenue_subtotal` float DEFAULT NULL,
  `revenue_tax` float DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL,
  `custom_dimension_1` varchar(255) DEFAULT NULL,
  `custom_dimension_2` varchar(255) DEFAULT NULL,
  `custom_dimension_3` varchar(255) DEFAULT NULL,
  `custom_dimension_4` varchar(255) DEFAULT NULL,
  `custom_dimension_5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idvisit`,`idgoal`,`buster`),
  UNIQUE KEY `unique_idsite_idorder` (`idsite`,`idorder`),
  KEY `index_idsite_datetime` (`idsite`,`server_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_log_conversion_item`
--

DROP TABLE IF EXISTS `piwik_log_conversion_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_conversion_item` (
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idvisit` int(10) unsigned NOT NULL,
  `idorder` varchar(100) NOT NULL,
  `idaction_sku` int(10) unsigned NOT NULL,
  `idaction_name` int(10) unsigned NOT NULL,
  `idaction_category` int(10) unsigned NOT NULL,
  `idaction_category2` int(10) unsigned NOT NULL,
  `idaction_category3` int(10) unsigned NOT NULL,
  `idaction_category4` int(10) unsigned NOT NULL,
  `idaction_category5` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`idvisit`,`idorder`,`idaction_sku`),
  KEY `index_idsite_servertime` (`idsite`,`server_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_log_link_visit_action`
--

DROP TABLE IF EXISTS `piwik_log_link_visit_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_link_visit_action` (
  `idlink_va` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `idvisit` int(10) unsigned NOT NULL,
  `idaction_url_ref` int(10) unsigned DEFAULT '0',
  `idaction_name_ref` int(10) unsigned NOT NULL,
  `custom_float` float DEFAULT NULL,
  `server_time` datetime NOT NULL,
  `idaction_name` int(10) unsigned DEFAULT NULL,
  `idaction_url` int(10) unsigned DEFAULT NULL,
  `time_spent_ref_action` int(10) unsigned NOT NULL,
  `idaction_event_action` int(10) unsigned DEFAULT NULL,
  `idaction_event_category` int(10) unsigned DEFAULT NULL,
  `idaction_content_interaction` int(10) unsigned DEFAULT NULL,
  `idaction_content_name` int(10) unsigned DEFAULT NULL,
  `idaction_content_piece` int(10) unsigned DEFAULT NULL,
  `idaction_content_target` int(10) unsigned DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL,
  `bandwidth` bigint(15) unsigned DEFAULT NULL,
  `time_spent` int(10) unsigned DEFAULT NULL,
  `custom_dimension_1` varchar(255) DEFAULT NULL,
  `custom_dimension_2` varchar(255) DEFAULT NULL,
  `custom_dimension_3` varchar(255) DEFAULT NULL,
  `custom_dimension_4` varchar(255) DEFAULT NULL,
  `custom_dimension_5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idlink_va`),
  KEY `index_idvisit` (`idvisit`),
  KEY `index_idsite_servertime` (`idsite`,`server_time`)
) ENGINE=InnoDB AUTO_INCREMENT=203760575 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_log_profiling`
--

DROP TABLE IF EXISTS `piwik_log_profiling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_profiling` (
  `query` text NOT NULL,
  `count` int(10) unsigned DEFAULT NULL,
  `sum_time_ms` float DEFAULT NULL,
  UNIQUE KEY `query` (`query`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_log_visit`
--

DROP TABLE IF EXISTS `piwik_log_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_visit` (
  `idvisit` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `visit_last_action_time` datetime NOT NULL,
  `config_id` binary(8) NOT NULL,
  `location_ip` varbinary(16) NOT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `visit_first_action_time` datetime NOT NULL,
  `visit_goal_buyer` tinyint(1) NOT NULL,
  `visit_goal_converted` tinyint(1) NOT NULL,
  `visitor_days_since_first` smallint(5) unsigned NOT NULL,
  `visitor_days_since_order` smallint(5) unsigned NOT NULL,
  `visitor_returning` tinyint(1) NOT NULL,
  `visitor_count_visits` smallint(5) unsigned NOT NULL,
  `visit_entry_idaction_name` int(11) unsigned NOT NULL,
  `visit_entry_idaction_url` int(11) unsigned NOT NULL,
  `visit_exit_idaction_name` int(11) unsigned NOT NULL,
  `visit_exit_idaction_url` int(11) unsigned DEFAULT '0',
  `visit_total_actions` smallint(5) unsigned NOT NULL,
  `visit_total_searches` smallint(5) unsigned NOT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `campaign_name` varchar(255) DEFAULT NULL,
  `campaign_keyword` varchar(255) DEFAULT NULL,
  `campaign_source` varchar(255) DEFAULT NULL,
  `campaign_medium` varchar(255) DEFAULT NULL,
  `campaign_content` varchar(255) DEFAULT NULL,
  `campaign_id` varchar(100) DEFAULT NULL,
  `referer_name` varchar(70) DEFAULT NULL,
  `referer_type` tinyint(1) unsigned DEFAULT NULL,
  `referer_url` text NOT NULL,
  `location_browser_lang` varchar(20) NOT NULL,
  `config_browser_engine` varchar(10) NOT NULL,
  `config_browser_name` varchar(10) NOT NULL,
  `config_browser_version` varchar(20) NOT NULL,
  `config_device_brand` varchar(100) DEFAULT NULL,
  `config_device_model` varchar(100) DEFAULT NULL,
  `config_device_type` tinyint(100) DEFAULT NULL,
  `config_os` char(3) NOT NULL,
  `config_os_version` varchar(100) DEFAULT NULL,
  `visit_total_events` smallint(5) unsigned NOT NULL,
  `visitor_localtime` time NOT NULL,
  `visitor_days_since_last` smallint(5) unsigned NOT NULL,
  `config_resolution` varchar(9) NOT NULL,
  `config_cookie` tinyint(1) NOT NULL,
  `config_director` tinyint(1) NOT NULL,
  `config_flash` tinyint(1) NOT NULL,
  `config_gears` tinyint(1) NOT NULL,
  `config_java` tinyint(1) NOT NULL,
  `config_pdf` tinyint(1) NOT NULL,
  `config_quicktime` tinyint(1) NOT NULL,
  `config_realplayer` tinyint(1) NOT NULL,
  `config_silverlight` tinyint(1) NOT NULL,
  `config_windowsmedia` tinyint(1) NOT NULL,
  `visit_total_time` smallint(5) unsigned NOT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) NOT NULL,
  `location_latitude` float(10,6) DEFAULT NULL,
  `location_longitude` float(10,6) DEFAULT NULL,
  `location_region` char(2) DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL,
  `last_idlink_va` bigint(20) unsigned DEFAULT NULL,
  `custom_dimension_1` varchar(255) DEFAULT NULL,
  `custom_dimension_2` varchar(255) DEFAULT NULL,
  `custom_dimension_3` varchar(255) DEFAULT NULL,
  `custom_dimension_4` varchar(255) DEFAULT NULL,
  `custom_dimension_5` varchar(255) DEFAULT NULL,
  `location_provider` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idvisit`),
  KEY `index_idsite_config_datetime` (`idsite`,`config_id`,`visit_last_action_time`),
  KEY `index_idsite_datetime` (`idsite`,`visit_last_action_time`),
  KEY `index_idsite_idvisitor` (`idsite`,`idvisitor`)
) ENGINE=InnoDB AUTO_INCREMENT=5061591 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_logger_message`
--

DROP TABLE IF EXISTS `piwik_logger_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_logger_message` (
  `idlogger_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `level` varchar(16) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`idlogger_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_option`
--

DROP TABLE IF EXISTS `piwik_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_option` (
  `option_name` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL,
  `autoload` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_performancemonitor_maxvisits`
--

DROP TABLE IF EXISTS `piwik_performancemonitor_maxvisits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_performancemonitor_maxvisits` (
  `idsite` int(10) NOT NULL,
  `maxvisits` int(11) NOT NULL,
  UNIQUE KEY `idsite` (`idsite`,`maxvisits`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_report`
--

DROP TABLE IF EXISTS `piwik_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_report` (
  `idreport` int(11) NOT NULL AUTO_INCREMENT,
  `idsite` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `idsegment` int(11) DEFAULT NULL,
  `period` varchar(10) NOT NULL,
  `hour` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `format` varchar(10) NOT NULL,
  `reports` text NOT NULL,
  `parameters` text,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_sent` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idreport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_segment`
--

DROP TABLE IF EXISTS `piwik_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_segment` (
  `idsegment` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  `login` varchar(100) NOT NULL,
  `enable_all_users` tinyint(4) NOT NULL DEFAULT '0',
  `enable_only_idsite` int(11) DEFAULT NULL,
  `auto_archive` tinyint(4) NOT NULL DEFAULT '0',
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_edit` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsegment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_sequence`
--

DROP TABLE IF EXISTS `piwik_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_sequence` (
  `name` varchar(120) NOT NULL,
  `value` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_session`
--

DROP TABLE IF EXISTS `piwik_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_session` (
  `id` varchar(255) NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_site`
--

DROP TABLE IF EXISTS `piwik_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_site` (
  `idsite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `main_url` varchar(255) NOT NULL,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ecommerce` tinyint(4) DEFAULT '0',
  `sitesearch` tinyint(4) DEFAULT '1',
  `sitesearch_keyword_parameters` text NOT NULL,
  `sitesearch_category_parameters` text NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `currency` char(3) NOT NULL,
  `exclude_unknown_urls` tinyint(1) DEFAULT '0',
  `excluded_ips` text NOT NULL,
  `excluded_parameters` text NOT NULL,
  `excluded_user_agents` text NOT NULL,
  `group` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `keep_url_fragment` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsite`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_site_setting`
--

DROP TABLE IF EXISTS `piwik_site_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_site_setting` (
  `idsite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  PRIMARY KEY (`idsite`,`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_site_url`
--

DROP TABLE IF EXISTS `piwik_site_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_site_url` (
  `idsite` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`idsite`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_user`
--

DROP TABLE IF EXISTS `piwik_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_user` (
  `login` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `alias` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token_auth` char(32) NOT NULL,
  `superuser_access` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `date_registered` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`login`),
  UNIQUE KEY `uniq_keytoken` (`token_auth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_user_dashboard`
--

DROP TABLE IF EXISTS `piwik_user_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_user_dashboard` (
  `login` varchar(100) NOT NULL,
  `iddashboard` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `layout` text NOT NULL,
  PRIMARY KEY (`login`,`iddashboard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piwik_user_language`
--

DROP TABLE IF EXISTS `piwik_user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_user_language` (
  `login` varchar(100) NOT NULL,
  `language` varchar(10) NOT NULL,
  `use_12_hour_clock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-09 23:01:10
-- MySQL dump 10.16  Distrib 10.1.14-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: piwik
-- ------------------------------------------------------
-- Server version	10.1.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `piwik_access`
--

DROP TABLE IF EXISTS `piwik_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_access` (
  `login` varchar(100) NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `access` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`login`,`idsite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_access`
--

LOCK TABLES `piwik_access` WRITE;
/*!40000 ALTER TABLE `piwik_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_custom_dimensions`
--

DROP TABLE IF EXISTS `piwik_custom_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_custom_dimensions` (
  `idcustomdimension` bigint(20) unsigned NOT NULL,
  `idsite` bigint(20) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `scope` varchar(10) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `extractions` text NOT NULL,
  `case_sensitive` tinyint(3) unsigned NOT NULL DEFAULT '1',
  UNIQUE KEY `idcustomdimension_idsite` (`idcustomdimension`,`idsite`),
  UNIQUE KEY `uniq_hash` (`idsite`,`scope`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_custom_dimensions`
--

LOCK TABLES `piwik_custom_dimensions` WRITE;
/*!40000 ALTER TABLE `piwik_custom_dimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_custom_dimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_goal`
--

DROP TABLE IF EXISTS `piwik_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_goal` (
  `idsite` int(11) NOT NULL,
  `idgoal` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `match_attribute` varchar(20) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `pattern_type` varchar(10) NOT NULL,
  `case_sensitive` tinyint(4) NOT NULL,
  `allow_multiple` tinyint(4) NOT NULL,
  `revenue` float NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsite`,`idgoal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_goal`
--

LOCK TABLES `piwik_goal` WRITE;
/*!40000 ALTER TABLE `piwik_goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_option`
--

DROP TABLE IF EXISTS `piwik_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_option` (
  `option_name` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL,
  `autoload` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_option`
--

LOCK TABLES `piwik_option` WRITE;
/*!40000 ALTER TABLE `piwik_option` DISABLE KEYS */;
INSERT INTO `piwik_option` VALUES ('admin_defaultReport','1',0),('admin_defaultReportDate','today',0),('branding_use_custom_logo','1',1),('dbstats_cached_piwik_archive_blob_2016_01_byArchiveName','a:60:{i:0;a:3:{i:0;a:4:{s:5:\"label\";s:15:\"Actions_actions\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"292\";s:9:\"name_size\";s:2:\"15\";}i:1;a:0:{}i:3;N;}i:1;a:3:{i:0;a:4:{s:5:\"label\";s:25:\"Actions_actions_chunk_0_*\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:4:\"1036\";s:9:\"name_size\";s:2:\"26\";}i:1;a:0:{}i:3;N;}i:2;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"Actions_actions_url\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"409\";s:9:\"name_size\";s:2:\"19\";}i:1;a:0:{}i:3;N;}i:3;a:3:{i:0;a:4:{s:5:\"label\";s:29:\"Actions_actions_url_chunk_0_*\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:5:\"18139\";s:9:\"name_size\";s:2:\"30\";}i:1;a:0:{}i:3;N;}i:4;a:3:{i:0;a:4:{s:5:\"label\";s:17:\"Actions_downloads\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"17\";}i:1;a:0:{}i:3;N;}i:5;a:3:{i:0;a:4:{s:5:\"label\";s:15:\"Actions_outlink\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"15\";}i:1;a:0:{}i:3;N;}i:6;a:3:{i:0;a:4:{s:5:\"label\";s:18:\"Actions_sitesearch\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"18\";}i:1;a:0:{}i:3;N;}i:7;a:3:{i:0;a:4:{s:5:\"label\";s:33:\"AdvancedCampaignReporting_Content\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"33\";}i:1;a:0:{}i:3;N;}i:8;a:3:{i:0;a:4:{s:5:\"label\";s:33:\"AdvancedCampaignReporting_Keyword\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"33\";}i:1;a:0:{}i:3;N;}i:9;a:3:{i:0;a:4:{s:5:\"label\";s:32:\"AdvancedCampaignReporting_Medium\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"32\";}i:1;a:0:{}i:3;N;}i:10;a:3:{i:0;a:4:{s:5:\"label\";s:30:\"AdvancedCampaignReporting_Name\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"30\";}i:1;a:0:{}i:3;N;}i:11;a:3:{i:0;a:4:{s:5:\"label\";s:32:\"AdvancedCampaignReporting_Source\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"32\";}i:1;a:0:{}i:3;N;}i:12;a:3:{i:0;a:4:{s:5:\"label\";s:43:\"AdvancedCampaignReporting_SourceMedium_Name\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"43\";}i:1;a:0:{}i:3;N;}i:13;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"Contents_name_piece\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"19\";}i:1;a:0:{}i:3;N;}i:14;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"Contents_piece_name\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"19\";}i:1;a:0:{}i:3;N;}i:15;a:3:{i:0;a:4:{s:5:\"label\";s:27:\"CustomVariables_valueByName\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"183\";s:9:\"name_size\";s:2:\"27\";}i:1;a:0:{}i:3;N;}i:16;a:3:{i:0;a:4:{s:5:\"label\";s:37:\"CustomVariables_valueByName_chunk_0_*\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:4:\"9351\";s:9:\"name_size\";s:2:\"38\";}i:1;a:0:{}i:3;N;}i:17;a:3:{i:0;a:4:{s:5:\"label\";s:20:\"DevicePlugins_plugin\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"186\";s:9:\"name_size\";s:2:\"20\";}i:1;a:0:{}i:3;N;}i:18;a:3:{i:0;a:4:{s:5:\"label\";s:23:\"DevicesDetection_brands\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"341\";s:9:\"name_size\";s:2:\"23\";}i:1;a:0:{}i:3;N;}i:19;a:3:{i:0;a:4:{s:5:\"label\";s:31:\"DevicesDetection_browserEngines\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"291\";s:9:\"name_size\";s:2:\"31\";}i:1;a:0:{}i:3;N;}i:20;a:3:{i:0;a:4:{s:5:\"label\";s:25:\"DevicesDetection_browsers\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"423\";s:9:\"name_size\";s:2:\"25\";}i:1;a:0:{}i:3;N;}i:21;a:3:{i:0;a:4:{s:5:\"label\";s:32:\"DevicesDetection_browserVersions\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:4:\"1305\";s:9:\"name_size\";s:2:\"32\";}i:1;a:0:{}i:3;N;}i:22;a:3:{i:0;a:4:{s:5:\"label\";s:23:\"DevicesDetection_models\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:4:\"1560\";s:9:\"name_size\";s:2:\"23\";}i:1;a:0:{}i:3;N;}i:23;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"DevicesDetection_os\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"290\";s:9:\"name_size\";s:2:\"19\";}i:1;a:0:{}i:3;N;}i:24;a:3:{i:0;a:4:{s:5:\"label\";s:27:\"DevicesDetection_osVersions\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"844\";s:9:\"name_size\";s:2:\"27\";}i:1;a:0:{}i:3;N;}i:25;a:3:{i:0;a:4:{s:5:\"label\";s:22:\"DevicesDetection_types\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"236\";s:9:\"name_size\";s:2:\"22\";}i:1;a:0:{}i:3;N;}i:26;a:3:{i:0;a:4:{s:5:\"label\";s:22:\"Events_action_category\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"22\";}i:1;a:0:{}i:3;N;}i:27;a:3:{i:0;a:4:{s:5:\"label\";s:18:\"Events_action_name\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"18\";}i:1;a:0:{}i:3;N;}i:28;a:3:{i:0;a:4:{s:5:\"label\";s:22:\"Events_category_action\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"22\";}i:1;a:0:{}i:3;N;}i:29;a:3:{i:0;a:4:{s:5:\"label\";s:20:\"Events_category_name\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"20\";}i:1;a:0:{}i:3;N;}i:30;a:3:{i:0;a:4:{s:5:\"label\";s:18:\"Events_name_action\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"18\";}i:1;a:0:{}i:3;N;}i:31;a:3:{i:0;a:4:{s:5:\"label\";s:20:\"Events_name_category\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"20\";}i:1;a:0:{}i:3;N;}i:32;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"Goals_ItemsCategory\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"38\";}i:1;a:0:{}i:3;N;}i:33;a:3:{i:0;a:4:{s:5:\"label\";s:24:\"Goals_ItemsCategory_Cart\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"48\";}i:1;a:0:{}i:3;N;}i:34;a:3:{i:0;a:4:{s:5:\"label\";s:15:\"Goals_ItemsName\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"30\";}i:1;a:0:{}i:3;N;}i:35;a:3:{i:0;a:4:{s:5:\"label\";s:20:\"Goals_ItemsName_Cart\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"40\";}i:1;a:0:{}i:3;N;}i:36;a:3:{i:0;a:4:{s:5:\"label\";s:14:\"Goals_ItemsSku\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"28\";}i:1;a:0:{}i:3;N;}i:37;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"Goals_ItemsSku_Cart\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"38\";}i:1;a:0:{}i:3;N;}i:38;a:3:{i:0;a:4:{s:5:\"label\";s:22:\"Goal_*_days_until_conv\";s:9:\"row_count\";i:6;s:9:\"blob_size\";i:84;s:9:\"name_size\";i:130;}i:1;a:0:{}i:3;N;}i:39;a:3:{i:0;a:4:{s:5:\"label\";s:24:\"Goal_*_visits_until_conv\";s:9:\"row_count\";i:6;s:9:\"blob_size\";i:84;s:9:\"name_size\";i:142;}i:1;a:0:{}i:3;N;}i:44;a:3:{i:0;a:4:{s:5:\"label\";s:25:\"PlatformsReport_Platforms\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:4:\"2590\";s:9:\"name_size\";s:2:\"25\";}i:1;a:0:{}i:3;N;}i:45;a:3:{i:0;a:4:{s:5:\"label\";s:20:\"Provider_hostnameExt\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"845\";s:9:\"name_size\";s:2:\"20\";}i:1;a:0:{}i:3;N;}i:46;a:3:{i:0;a:4:{s:5:\"label\";s:27:\"Referrers_keywordByCampaign\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"27\";}i:1;a:0:{}i:3;N;}i:47;a:3:{i:0;a:4:{s:5:\"label\";s:31:\"Referrers_keywordBySearchEngine\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"31\";}i:1;a:0:{}i:3;N;}i:48;a:3:{i:0;a:4:{s:5:\"label\";s:31:\"Referrers_searchEngineByKeyword\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:2:\"14\";s:9:\"name_size\";s:2:\"31\";}i:1;a:0:{}i:3;N;}i:49;a:3:{i:0;a:4:{s:5:\"label\";s:14:\"Referrers_type\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"130\";s:9:\"name_size\";s:2:\"14\";}i:1;a:0:{}i:3;N;}i:50;a:3:{i:0;a:4:{s:5:\"label\";s:22:\"Referrers_urlByWebsite\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"299\";s:9:\"name_size\";s:2:\"22\";}i:1;a:0:{}i:3;N;}i:51;a:3:{i:0;a:4:{s:5:\"label\";s:32:\"Referrers_urlByWebsite_chunk_0_*\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:4:\"1091\";s:9:\"name_size\";s:2:\"33\";}i:1;a:0:{}i:3;N;}i:52;a:3:{i:0;a:4:{s:5:\"label\";s:24:\"Resolution_configuration\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"666\";s:9:\"name_size\";s:2:\"24\";}i:1;a:0:{}i:3;N;}i:53;a:3:{i:0;a:4:{s:5:\"label\";s:21:\"Resolution_resolution\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"114\";s:9:\"name_size\";s:2:\"21\";}i:1;a:0:{}i:3;N;}i:54;a:3:{i:0;a:4:{s:5:\"label\";s:16:\"UserCountry_city\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:4:\"1149\";s:9:\"name_size\";s:2:\"16\";}i:1;a:0:{}i:3;N;}i:55;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"UserCountry_country\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"190\";s:9:\"name_size\";s:2:\"19\";}i:1;a:0:{}i:3;N;}i:56;a:3:{i:0;a:4:{s:5:\"label\";s:18:\"UserCountry_region\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"468\";s:9:\"name_size\";s:2:\"18\";}i:1;a:0:{}i:3;N;}i:57;a:3:{i:0;a:4:{s:5:\"label\";s:21:\"UserLanguage_language\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"108\";s:9:\"name_size\";s:2:\"21\";}i:1;a:0:{}i:3;N;}i:58;a:3:{i:0;a:4:{s:5:\"label\";s:34:\"VisitorInterest_daysSinceLastVisit\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"209\";s:9:\"name_size\";s:2:\"34\";}i:1;a:0:{}i:3;N;}i:59;a:3:{i:0;a:4:{s:5:\"label\";s:23:\"VisitorInterest_pageGap\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"175\";s:9:\"name_size\";s:2:\"23\";}i:1;a:0:{}i:3;N;}i:60;a:3:{i:0;a:4:{s:5:\"label\";s:23:\"VisitorInterest_timeGap\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"179\";s:9:\"name_size\";s:2:\"23\";}i:1;a:0:{}i:3;N;}i:61;a:3:{i:0;a:4:{s:5:\"label\";s:34:\"VisitorInterest_visitsByVisitCount\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"182\";s:9:\"name_size\";s:2:\"34\";}i:1;a:0:{}i:3;N;}i:62;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"VisitTime_localTime\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"244\";s:9:\"name_size\";s:2:\"19\";}i:1;a:0:{}i:3;N;}i:63;a:3:{i:0;a:4:{s:5:\"label\";s:20:\"VisitTime_serverTime\";s:9:\"row_count\";s:1:\"1\";s:9:\"blob_size\";s:3:\"246\";s:9:\"name_size\";s:2:\"20\";}i:1;a:0:{}i:3;N;}}',0),('dbstats_cached_piwik_archive_blob_2016_05_byArchiveName','a:0:{}',0),('dbstats_cached_piwik_archive_blob_2016_06_byArchiveName','a:60:{i:0;a:3:{i:0;a:4:{s:5:\"label\";s:15:\"Actions_actions\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"873\";s:9:\"name_size\";s:2:\"45\";}i:1;a:0:{}i:3;N;}i:1;a:3:{i:0;a:4:{s:5:\"label\";s:25:\"Actions_actions_chunk_0_*\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"3099\";s:9:\"name_size\";s:2:\"78\";}i:1;a:0:{}i:3;N;}i:2;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"Actions_actions_url\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"1226\";s:9:\"name_size\";s:2:\"57\";}i:1;a:0:{}i:3;N;}i:3;a:3:{i:0;a:4:{s:5:\"label\";s:29:\"Actions_actions_url_chunk_0_*\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:5:\"53881\";s:9:\"name_size\";s:2:\"90\";}i:1;a:0:{}i:3;N;}i:4;a:3:{i:0;a:4:{s:5:\"label\";s:17:\"Actions_downloads\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:2:\"42\";s:9:\"name_size\";s:2:\"51\";}i:1;a:0:{}i:3;N;}i:5;a:3:{i:0;a:4:{s:5:\"label\";s:15:\"Actions_outlink\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:2:\"42\";s:9:\"name_size\";s:2:\"45\";}i:1;a:0:{}i:3;N;}i:6;a:3:{i:0;a:4:{s:5:\"label\";s:18:\"Actions_sitesearch\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:2:\"42\";s:9:\"name_size\";s:2:\"54\";}i:1;a:0:{}i:3;N;}i:7;a:3:{i:0;a:4:{s:5:\"label\";s:33:\"AdvancedCampaignReporting_Content\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:2:\"42\";s:9:\"name_size\";s:2:\"99\";}i:1;a:0:{}i:3;N;}i:8;a:3:{i:0;a:4:{s:5:\"label\";s:33:\"AdvancedCampaignReporting_Keyword\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:2:\"42\";s:9:\"name_size\";s:2:\"99\";}i:1;a:0:{}i:3;N;}i:9;a:3:{i:0;a:4:{s:5:\"label\";s:32:\"AdvancedCampaignReporting_Medium\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:2:\"42\";s:9:\"name_size\";s:2:\"96\";}i:1;a:0:{}i:3;N;}i:10;a:3:{i:0;a:4:{s:5:\"label\";s:30:\"AdvancedCampaignReporting_Name\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:2:\"42\";s:9:\"name_size\";s:2:\"90\";}i:1;a:0:{}i:3;N;}i:11;a:3:{i:0;a:4:{s:5:\"label\";s:32:\"AdvancedCampaignReporting_Source\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:2:\"42\";s:9:\"name_size\";s:2:\"96\";}i:1;a:0:{}i:3;N;}i:12;a:3:{i:0;a:4:{s:5:\"label\";s:43:\"AdvancedCampaignReporting_SourceMedium_Name\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:2:\"42\";s:9:\"name_size\";s:3:\"129\";}i:1;a:0:{}i:3;N;}i:13;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"Contents_name_piece\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"38\";}i:1;a:0:{}i:3;N;}i:14;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"Contents_piece_name\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"38\";}i:1;a:0:{}i:3;N;}i:15;a:3:{i:0;a:4:{s:5:\"label\";s:27:\"CustomVariables_valueByName\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"546\";s:9:\"name_size\";s:2:\"81\";}i:1;a:0:{}i:3;N;}i:16;a:3:{i:0;a:4:{s:5:\"label\";s:37:\"CustomVariables_valueByName_chunk_0_*\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:5:\"27920\";s:9:\"name_size\";s:3:\"114\";}i:1;a:0:{}i:3;N;}i:17;a:3:{i:0;a:4:{s:5:\"label\";s:20:\"DevicePlugins_plugin\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"558\";s:9:\"name_size\";s:2:\"60\";}i:1;a:0:{}i:3;N;}i:18;a:3:{i:0;a:4:{s:5:\"label\";s:23:\"DevicesDetection_brands\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"1016\";s:9:\"name_size\";s:2:\"69\";}i:1;a:0:{}i:3;N;}i:19;a:3:{i:0;a:4:{s:5:\"label\";s:31:\"DevicesDetection_browserEngines\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"869\";s:9:\"name_size\";s:2:\"93\";}i:1;a:0:{}i:3;N;}i:20;a:3:{i:0;a:4:{s:5:\"label\";s:25:\"DevicesDetection_browsers\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"1262\";s:9:\"name_size\";s:2:\"75\";}i:1;a:0:{}i:3;N;}i:21;a:3:{i:0;a:4:{s:5:\"label\";s:32:\"DevicesDetection_browserVersions\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"3872\";s:9:\"name_size\";s:2:\"96\";}i:1;a:0:{}i:3;N;}i:22;a:3:{i:0;a:4:{s:5:\"label\";s:23:\"DevicesDetection_models\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"4664\";s:9:\"name_size\";s:2:\"69\";}i:1;a:0:{}i:3;N;}i:23;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"DevicesDetection_os\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"867\";s:9:\"name_size\";s:2:\"57\";}i:1;a:0:{}i:3;N;}i:24;a:3:{i:0;a:4:{s:5:\"label\";s:27:\"DevicesDetection_osVersions\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"2514\";s:9:\"name_size\";s:2:\"81\";}i:1;a:0:{}i:3;N;}i:25;a:3:{i:0;a:4:{s:5:\"label\";s:22:\"DevicesDetection_types\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"702\";s:9:\"name_size\";s:2:\"66\";}i:1;a:0:{}i:3;N;}i:26;a:3:{i:0;a:4:{s:5:\"label\";s:22:\"Events_action_category\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"44\";}i:1;a:0:{}i:3;N;}i:27;a:3:{i:0;a:4:{s:5:\"label\";s:18:\"Events_action_name\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"36\";}i:1;a:0:{}i:3;N;}i:28;a:3:{i:0;a:4:{s:5:\"label\";s:22:\"Events_category_action\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"44\";}i:1;a:0:{}i:3;N;}i:29;a:3:{i:0;a:4:{s:5:\"label\";s:20:\"Events_category_name\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"40\";}i:1;a:0:{}i:3;N;}i:30;a:3:{i:0;a:4:{s:5:\"label\";s:18:\"Events_name_action\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"36\";}i:1;a:0:{}i:3;N;}i:31;a:3:{i:0;a:4:{s:5:\"label\";s:20:\"Events_name_category\";s:9:\"row_count\";s:1:\"2\";s:9:\"blob_size\";s:2:\"28\";s:9:\"name_size\";s:2:\"40\";}i:1;a:0:{}i:3;N;}i:32;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"Goals_ItemsCategory\";s:9:\"row_count\";s:1:\"6\";s:9:\"blob_size\";s:2:\"84\";s:9:\"name_size\";s:3:\"114\";}i:1;a:0:{}i:3;N;}i:33;a:3:{i:0;a:4:{s:5:\"label\";s:24:\"Goals_ItemsCategory_Cart\";s:9:\"row_count\";s:1:\"6\";s:9:\"blob_size\";s:2:\"84\";s:9:\"name_size\";s:3:\"144\";}i:1;a:0:{}i:3;N;}i:34;a:3:{i:0;a:4:{s:5:\"label\";s:15:\"Goals_ItemsName\";s:9:\"row_count\";s:1:\"6\";s:9:\"blob_size\";s:2:\"84\";s:9:\"name_size\";s:2:\"90\";}i:1;a:0:{}i:3;N;}i:35;a:3:{i:0;a:4:{s:5:\"label\";s:20:\"Goals_ItemsName_Cart\";s:9:\"row_count\";s:1:\"6\";s:9:\"blob_size\";s:2:\"84\";s:9:\"name_size\";s:3:\"120\";}i:1;a:0:{}i:3;N;}i:36;a:3:{i:0;a:4:{s:5:\"label\";s:14:\"Goals_ItemsSku\";s:9:\"row_count\";s:1:\"6\";s:9:\"blob_size\";s:2:\"84\";s:9:\"name_size\";s:2:\"84\";}i:1;a:0:{}i:3;N;}i:37;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"Goals_ItemsSku_Cart\";s:9:\"row_count\";s:1:\"6\";s:9:\"blob_size\";s:2:\"84\";s:9:\"name_size\";s:3:\"114\";}i:1;a:0:{}i:3;N;}i:38;a:3:{i:0;a:4:{s:5:\"label\";s:22:\"Goal_*_days_until_conv\";s:9:\"row_count\";i:14;s:9:\"blob_size\";i:196;s:9:\"name_size\";i:300;}i:1;a:0:{}i:3;N;}i:39;a:3:{i:0;a:4:{s:5:\"label\";s:24:\"Goal_*_visits_until_conv\";s:9:\"row_count\";i:14;s:9:\"blob_size\";i:196;s:9:\"name_size\";i:328;}i:1;a:0:{}i:3;N;}i:44;a:3:{i:0;a:4:{s:5:\"label\";s:25:\"PlatformsReport_Platforms\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"7696\";s:9:\"name_size\";s:2:\"75\";}i:1;a:0:{}i:3;N;}i:45;a:3:{i:0;a:4:{s:5:\"label\";s:20:\"Provider_hostnameExt\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"2524\";s:9:\"name_size\";s:2:\"60\";}i:1;a:0:{}i:3;N;}i:46;a:3:{i:0;a:4:{s:5:\"label\";s:27:\"Referrers_keywordByCampaign\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:2:\"42\";s:9:\"name_size\";s:2:\"81\";}i:1;a:0:{}i:3;N;}i:47;a:3:{i:0;a:4:{s:5:\"label\";s:31:\"Referrers_keywordBySearchEngine\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:2:\"42\";s:9:\"name_size\";s:2:\"93\";}i:1;a:0:{}i:3;N;}i:48;a:3:{i:0;a:4:{s:5:\"label\";s:31:\"Referrers_searchEngineByKeyword\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:2:\"42\";s:9:\"name_size\";s:2:\"93\";}i:1;a:0:{}i:3;N;}i:49;a:3:{i:0;a:4:{s:5:\"label\";s:14:\"Referrers_type\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"388\";s:9:\"name_size\";s:2:\"42\";}i:1;a:0:{}i:3;N;}i:50;a:3:{i:0;a:4:{s:5:\"label\";s:22:\"Referrers_urlByWebsite\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"895\";s:9:\"name_size\";s:2:\"66\";}i:1;a:0:{}i:3;N;}i:51;a:3:{i:0;a:4:{s:5:\"label\";s:32:\"Referrers_urlByWebsite_chunk_0_*\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"3256\";s:9:\"name_size\";s:2:\"99\";}i:1;a:0:{}i:3;N;}i:52;a:3:{i:0;a:4:{s:5:\"label\";s:24:\"Resolution_configuration\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"1981\";s:9:\"name_size\";s:2:\"72\";}i:1;a:0:{}i:3;N;}i:53;a:3:{i:0;a:4:{s:5:\"label\";s:21:\"Resolution_resolution\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"339\";s:9:\"name_size\";s:2:\"63\";}i:1;a:0:{}i:3;N;}i:54;a:3:{i:0;a:4:{s:5:\"label\";s:16:\"UserCountry_city\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"3434\";s:9:\"name_size\";s:2:\"48\";}i:1;a:0:{}i:3;N;}i:55;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"UserCountry_country\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"568\";s:9:\"name_size\";s:2:\"57\";}i:1;a:0:{}i:3;N;}i:56;a:3:{i:0;a:4:{s:5:\"label\";s:18:\"UserCountry_region\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:4:\"1397\";s:9:\"name_size\";s:2:\"54\";}i:1;a:0:{}i:3;N;}i:57;a:3:{i:0;a:4:{s:5:\"label\";s:21:\"UserLanguage_language\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"321\";s:9:\"name_size\";s:2:\"63\";}i:1;a:0:{}i:3;N;}i:58;a:3:{i:0;a:4:{s:5:\"label\";s:34:\"VisitorInterest_daysSinceLastVisit\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"627\";s:9:\"name_size\";s:3:\"102\";}i:1;a:0:{}i:3;N;}i:59;a:3:{i:0;a:4:{s:5:\"label\";s:23:\"VisitorInterest_pageGap\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"525\";s:9:\"name_size\";s:2:\"69\";}i:1;a:0:{}i:3;N;}i:60;a:3:{i:0;a:4:{s:5:\"label\";s:23:\"VisitorInterest_timeGap\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"537\";s:9:\"name_size\";s:2:\"69\";}i:1;a:0:{}i:3;N;}i:61;a:3:{i:0;a:4:{s:5:\"label\";s:34:\"VisitorInterest_visitsByVisitCount\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"546\";s:9:\"name_size\";s:3:\"102\";}i:1;a:0:{}i:3;N;}i:62;a:3:{i:0;a:4:{s:5:\"label\";s:19:\"VisitTime_localTime\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"731\";s:9:\"name_size\";s:2:\"57\";}i:1;a:0:{}i:3;N;}i:63;a:3:{i:0;a:4:{s:5:\"label\";s:20:\"VisitTime_serverTime\";s:9:\"row_count\";s:1:\"3\";s:9:\"blob_size\";s:3:\"736\";s:9:\"name_size\";s:2:\"60\";}i:1;a:0:{}i:3;N;}}',0),('dbstats_cached_piwik_archive_numeric_2016_01_byArchiveName','a:15:{i:0;a:3:{i:0;a:2:{s:5:\"label\";s:36:\"Actions_nb_hits_with_time_generation\";s:9:\"row_count\";s:1:\"1\";}i:1;a:0:{}i:3;N;}i:1;a:3:{i:0;a:2:{s:5:\"label\";s:20:\"Actions_nb_pageviews\";s:9:\"row_count\";s:1:\"1\";}i:1;a:0:{}i:3;N;}i:2;a:3:{i:0;a:2:{s:5:\"label\";s:25:\"Actions_nb_uniq_pageviews\";s:9:\"row_count\";s:1:\"1\";}i:1;a:0:{}i:3;N;}i:3;a:3:{i:0;a:2:{s:5:\"label\";s:27:\"Actions_sum_time_generation\";s:9:\"row_count\";s:1:\"1\";}i:1;a:0:{}i:3;N;}i:4;a:3:{i:0;a:2:{s:5:\"label\";s:26:\"Bandwidth_nb_total_overall\";s:9:\"row_count\";s:1:\"1\";}i:1;a:0:{}i:3;N;}i:5;a:3:{i:0;a:2:{s:5:\"label\";s:26:\"Bandwidth_nb_total_pageurl\";s:9:\"row_count\";s:1:\"1\";}i:1;a:0:{}i:3;N;}i:6;a:3:{i:0;a:2:{s:5:\"label\";s:12:\"bounce_count\";s:9:\"row_count\";s:1:\"2\";}i:1;a:0:{}i:3;N;}i:7;a:3:{i:0;a:2:{s:5:\"label\";s:4:\"done\";s:9:\"row_count\";i:5;}i:1;a:0:{}i:3;N;}i:12;a:3:{i:0;a:2:{s:5:\"label\";s:11:\"max_actions\";s:9:\"row_count\";s:1:\"2\";}i:1;a:0:{}i:3;N;}i:13;a:3:{i:0;a:2:{s:5:\"label\";s:10:\"nb_actions\";s:9:\"row_count\";s:1:\"2\";}i:1;a:0:{}i:3;N;}i:14;a:3:{i:0;a:2:{s:5:\"label\";s:9:\"nb_visits\";s:9:\"row_count\";s:1:\"2\";}i:1;a:0:{}i:3;N;}i:15;a:3:{i:0;a:2:{s:5:\"label\";s:26:\"Referrers_distinctWebsites\";s:9:\"row_count\";s:1:\"1\";}i:1;a:0:{}i:3;N;}i:16;a:3:{i:0;a:2:{s:5:\"label\";s:30:\"Referrers_distinctWebsitesUrls\";s:9:\"row_count\";s:1:\"1\";}i:1;a:0:{}i:3;N;}i:17;a:3:{i:0;a:2:{s:5:\"label\";s:16:\"sum_visit_length\";s:9:\"row_count\";s:1:\"2\";}i:1;a:0:{}i:3;N;}i:18;a:3:{i:0;a:2:{s:5:\"label\";s:29:\"UserCountry_distinctCountries\";s:9:\"row_count\";s:1:\"1\";}i:1;a:0:{}i:3;N;}}',0),('dbstats_cached_piwik_archive_numeric_2016_05_byArchiveName','a:1:{i:0;a:3:{i:0;a:2:{s:5:\"label\";s:4:\"done\";s:9:\"row_count\";i:5;}i:1;a:0:{}i:3;N;}}',0),('dbstats_cached_piwik_archive_numeric_2016_06_byArchiveName','a:16:{i:0;a:3:{i:0;a:2:{s:5:\"label\";s:36:\"Actions_nb_hits_with_time_generation\";s:9:\"row_count\";s:1:\"3\";}i:1;a:0:{}i:3;N;}i:1;a:3:{i:0;a:2:{s:5:\"label\";s:20:\"Actions_nb_pageviews\";s:9:\"row_count\";s:1:\"3\";}i:1;a:0:{}i:3;N;}i:2;a:3:{i:0;a:2:{s:5:\"label\";s:25:\"Actions_nb_uniq_pageviews\";s:9:\"row_count\";s:1:\"3\";}i:1;a:0:{}i:3;N;}i:3;a:3:{i:0;a:2:{s:5:\"label\";s:27:\"Actions_sum_time_generation\";s:9:\"row_count\";s:1:\"3\";}i:1;a:0:{}i:3;N;}i:4;a:3:{i:0;a:2:{s:5:\"label\";s:26:\"Bandwidth_nb_total_overall\";s:9:\"row_count\";s:1:\"3\";}i:1;a:0:{}i:3;N;}i:5;a:3:{i:0;a:2:{s:5:\"label\";s:26:\"Bandwidth_nb_total_pageurl\";s:9:\"row_count\";s:1:\"3\";}i:1;a:0:{}i:3;N;}i:6;a:3:{i:0;a:2:{s:5:\"label\";s:12:\"bounce_count\";s:9:\"row_count\";s:1:\"6\";}i:1;a:0:{}i:3;N;}i:7;a:3:{i:0;a:2:{s:5:\"label\";s:4:\"done\";s:9:\"row_count\";i:44;}i:1;a:0:{}i:3;N;}i:12;a:3:{i:0;a:2:{s:5:\"label\";s:11:\"max_actions\";s:9:\"row_count\";s:1:\"6\";}i:1;a:0:{}i:3;N;}i:13;a:3:{i:0;a:2:{s:5:\"label\";s:10:\"nb_actions\";s:9:\"row_count\";s:1:\"6\";}i:1;a:0:{}i:3;N;}i:14;a:3:{i:0;a:2:{s:5:\"label\";s:16:\"nb_uniq_visitors\";s:9:\"row_count\";s:1:\"6\";}i:1;a:0:{}i:3;N;}i:15;a:3:{i:0;a:2:{s:5:\"label\";s:9:\"nb_visits\";s:9:\"row_count\";s:1:\"6\";}i:1;a:0:{}i:3;N;}i:16;a:3:{i:0;a:2:{s:5:\"label\";s:26:\"Referrers_distinctWebsites\";s:9:\"row_count\";s:1:\"3\";}i:1;a:0:{}i:3;N;}i:17;a:3:{i:0;a:2:{s:5:\"label\";s:30:\"Referrers_distinctWebsitesUrls\";s:9:\"row_count\";s:1:\"3\";}i:1;a:0:{}i:3;N;}i:18;a:3:{i:0;a:2:{s:5:\"label\";s:16:\"sum_visit_length\";s:9:\"row_count\";s:1:\"6\";}i:1;a:0:{}i:3;N;}i:19;a:3:{i:0;a:2:{s:5:\"label\";s:29:\"UserCountry_distinctCountries\";s:9:\"row_count\";s:1:\"3\";}i:1;a:0:{}i:3;N;}}',0),('dbstats_time_of_last_cache_task_run','Jun 6, 2016',0),('enableBrowserTriggerArchiving','0',1),('enableUpdateCommunicationPlugins','0',0),('InvalidatedOldReports_DatesWebsiteIds','a:2:{i:0;s:7:\"2016_06\";i:1;s:7:\"2016_01\";}',0),('InvalidatedOldReports_WebsiteIds','a:82:{i:0;s:3:\"100\";i:1;s:3:\"101\";i:2;s:3:\"102\";i:3;s:3:\"103\";i:4;s:3:\"104\";i:5;s:3:\"105\";i:6;s:3:\"106\";i:7;s:3:\"107\";i:8;s:3:\"108\";i:9;s:3:\"109\";i:10;s:3:\"110\";i:11;s:3:\"111\";i:12;s:3:\"112\";i:13;s:3:\"113\";i:14;s:3:\"114\";i:15;s:3:\"115\";i:16;s:3:\"116\";i:17;s:3:\"117\";i:18;s:3:\"118\";i:19;s:3:\"119\";i:20;s:3:\"120\";i:21;s:3:\"121\";i:22;s:3:\"122\";i:23;s:3:\"123\";i:24;s:3:\"124\";i:25;s:3:\"125\";i:26;s:2:\"91\";i:27;s:2:\"92\";i:28;s:2:\"93\";i:29;s:2:\"94\";i:30;s:2:\"95\";i:31;s:2:\"96\";i:32;s:2:\"97\";i:33;s:2:\"98\";i:34;s:2:\"99\";i:35;s:1:\"6\";i:36;s:1:\"7\";i:37;s:1:\"8\";i:38;s:1:\"9\";i:39;s:2:\"10\";i:40;s:2:\"11\";i:41;s:2:\"12\";i:42;s:2:\"13\";i:43;s:2:\"14\";i:44;s:2:\"15\";i:45;s:2:\"16\";i:46;s:2:\"17\";i:47;s:2:\"18\";i:48;s:2:\"19\";i:49;s:2:\"20\";i:50;s:2:\"21\";i:51;s:2:\"22\";i:52;s:2:\"23\";i:53;s:2:\"24\";i:54;s:2:\"25\";i:55;s:2:\"26\";i:56;s:2:\"27\";i:57;s:2:\"28\";i:58;s:2:\"29\";i:59;s:2:\"30\";i:60;s:2:\"31\";i:61;s:2:\"32\";i:62;s:2:\"33\";i:63;s:2:\"34\";i:64;s:2:\"35\";i:65;s:2:\"36\";i:66;s:2:\"37\";i:67;s:2:\"38\";i:68;s:2:\"39\";i:69;s:2:\"40\";i:70;s:2:\"41\";i:71;s:2:\"42\";i:72;s:2:\"43\";i:73;s:2:\"44\";i:74;s:2:\"45\";i:75;s:2:\"46\";i:76;s:2:\"47\";i:77;s:2:\"49\";i:78;s:1:\"1\";i:79;s:1:\"2\";i:80;s:1:\"3\";i:81;s:1:\"4\";}',0),('LastCompletedFullArchiving','1465481119',0),('LastFullArchivingStartTime','1465482002',0),('lastRunArchiveday_1','1465482003',0),('lastRunArchiveday_10','1465477859',0),('lastRunArchiveday_11','1465478291',0),('lastRunArchiveday_12','1465478347',0),('lastRunArchiveday_13','1465478488',0),('lastRunArchiveday_14','1465478561',0),('lastRunArchiveday_15','1465478598',0),('lastRunArchiveday_16','1465478608',0),('lastRunArchiveday_17','1465478929',0),('lastRunArchiveday_18','1465478953',0),('lastRunArchiveday_19','1465480826',0),('lastRunArchiveday_2','1465485821',0),('lastRunArchiveday_20','1465480850',0),('lastRunArchiveday_21','1465480852',0),('lastRunArchiveday_22','1465480857',0),('lastRunArchiveday_23','1465480876',0),('lastRunArchiveday_24','1465480891',0),('lastRunArchiveday_25','1465480893',0),('lastRunArchiveday_26','1465481004',0),('lastRunArchiveday_27','1465481007',0),('lastRunArchiveday_28','1465481019',0),('lastRunArchiveday_29','1465481021',0),('lastRunArchiveday_3','1465486018',0),('lastRunArchiveday_30','1465481023',0),('lastRunArchiveday_31','1465481026',0),('lastRunArchiveday_32','1465481027',0),('lastRunArchiveday_33','1465481029',0),('lastRunArchiveday_34','1465481031',0),('lastRunArchiveday_35','1465481033',0),('lastRunArchiveday_36','1465481034',0),('lastRunArchiveday_37','1465481036',0),('lastRunArchiveday_38','1465481037',0),('lastRunArchiveday_39','1465481080',0),('lastRunArchiveday_4','1465487364',0),('lastRunArchiveday_40','1465481081',0),('lastRunArchiveday_41','1465481103',0),('lastRunArchiveday_42','1465481104',0),('lastRunArchiveday_43','1465481105',0),('lastRunArchiveday_44','1465481106',0),('lastRunArchiveday_45','1465481107',0),('lastRunArchiveday_46','1465481110',0),('lastRunArchiveday_47','1465481113',0),('lastRunArchiveday_48','1465481114',0),('lastRunArchiveday_49','1465481116',0),('lastRunArchiveday_5','1465487395',0),('lastRunArchiveday_50','1465481117',0),('lastRunArchiveday_51','1465481118',0),('lastRunArchiveday_52','1465236013',0),('lastRunArchiveday_53','1465236013',0),('lastRunArchiveday_54','1465236013',0),('lastRunArchiveday_55','1465236013',0),('lastRunArchiveday_56','1465236013',0),('lastRunArchiveday_57','1465236014',0),('lastRunArchiveday_58','1465236014',0),('lastRunArchiveday_59','1465236014',0),('lastRunArchiveday_6','1465477088',0),('lastRunArchiveday_60','1465236014',0),('lastRunArchiveday_61','1465236014',0),('lastRunArchiveday_62','1465236014',0),('lastRunArchiveday_63','1465236014',0),('lastRunArchiveday_64','1465236015',0),('lastRunArchiveday_65','1465236015',0),('lastRunArchiveday_66','1465236015',0),('lastRunArchiveday_67','1465236015',0),('lastRunArchiveday_68','1465236015',0),('lastRunArchiveday_69','1465236015',0),('lastRunArchiveday_7','1465477290',0),('lastRunArchiveday_70','1465236015',0),('lastRunArchiveday_71','1465236016',0),('lastRunArchiveday_72','1465236016',0),('lastRunArchiveday_73','1465236016',0),('lastRunArchiveday_74','1465236016',0),('lastRunArchiveday_75','1465236016',0),('lastRunArchiveday_76','1465236016',0),('lastRunArchiveday_77','1465236016',0),('lastRunArchiveday_78','1465236016',0),('lastRunArchiveday_79','1465236017',0),('lastRunArchiveday_8','1465477775',0),('lastRunArchiveday_80','1465236017',0),('lastRunArchiveday_81','1465236017',0),('lastRunArchiveday_82','1465236017',0),('lastRunArchiveday_83','1465236017',0),('lastRunArchiveday_84','1465236017',0),('lastRunArchiveday_85','1465236017',0),('lastRunArchiveday_86','1465236018',0),('lastRunArchiveday_87','1465236018',0),('lastRunArchiveday_88','1465236018',0),('lastRunArchiveday_89','1465236018',0),('lastRunArchiveday_9','1465477779',0),('lastRunArchiveday_90','1465236018',0),('lastRunArchiveperiods_1','1465326822',0),('lastRunArchiveperiods_10','1465326895',0),('lastRunArchiveperiods_11','1465326899',0),('lastRunArchiveperiods_12','1465326905',0),('lastRunArchiveperiods_13','1465326910',0),('lastRunArchiveperiods_14','1465326915',0),('lastRunArchiveperiods_15','1465326921',0),('lastRunArchiveperiods_16','1465326927',0),('lastRunArchiveperiods_17','1465326933',0),('lastRunArchiveperiods_18','1465326939',0),('lastRunArchiveperiods_19','1465326945',0),('lastRunArchiveperiods_2','1465326827',0),('lastRunArchiveperiods_20','1465326950',0),('lastRunArchiveperiods_21','1465326955',0),('lastRunArchiveperiods_22','1465326960',0),('lastRunArchiveperiods_23','1465326964',0),('lastRunArchiveperiods_24','1465326969',0),('lastRunArchiveperiods_25','1465326973',0),('lastRunArchiveperiods_26','1465326977',0),('lastRunArchiveperiods_27','1465326982',0),('lastRunArchiveperiods_28','1465326986',0),('lastRunArchiveperiods_29','1465326991',0),('lastRunArchiveperiods_3','1465326835',0),('lastRunArchiveperiods_30','1465326995',0),('lastRunArchiveperiods_31','1465258994',0),('lastRunArchiveperiods_32','1465259001',0),('lastRunArchiveperiods_33','1465259007',0),('lastRunArchiveperiods_34','1465259014',0),('lastRunArchiveperiods_35','1465259020',0),('lastRunArchiveperiods_36','1465259026',0),('lastRunArchiveperiods_37','1465201532',0),('lastRunArchiveperiods_38','1465259033',0),('lastRunArchiveperiods_39','1465259040',0),('lastRunArchiveperiods_4','1465326842',0),('lastRunArchiveperiods_40','1465201738',0),('lastRunArchiveperiods_41','1465201752',0),('lastRunArchiveperiods_42','1465201759',0),('lastRunArchiveperiods_43','1465201765',0),('lastRunArchiveperiods_44','1465201772',0),('lastRunArchiveperiods_45','1465201779',0),('lastRunArchiveperiods_46','1465201784',0),('lastRunArchiveperiods_47','1465201791',0),('lastRunArchiveperiods_48','1465201797',0),('lastRunArchiveperiods_49','1465201805',0),('lastRunArchiveperiods_5','1465326849',0),('lastRunArchiveperiods_50','1465201814',0),('lastRunArchiveperiods_51','1465201821',0),('lastRunArchiveperiods_52','1465201828',0),('lastRunArchiveperiods_53','1465201834',0),('lastRunArchiveperiods_54','1465201840',0),('lastRunArchiveperiods_55','1465201847',0),('lastRunArchiveperiods_56','1465201853',0),('lastRunArchiveperiods_6','1465326855',0),('lastRunArchiveperiods_7','1465326863',0),('lastRunArchiveperiods_8','1465326869',0),('lastRunArchiveperiods_9','1465326889',0),('lastTrackerCronRun','1465102001',0),('MobileMessaging_DelegatedManagement','false',0),('piwikUrl','http://localhost/',1),('Plugin_PageColours_Settings','a:2:{s:13:\"defaultColour\";s:1:\"2\";s:13:\"customColours\";s:0:\"\";}',0),('Plugin_PerformanceMonitor_Settings','a:4:{s:15:\"refreshInterval\";i:30;s:16:\"currPeriodOfTime\";i:20;s:16:\"histPeriodOfTime\";i:30;s:5:\"sites\";a:27:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"7\";i:7;s:1:\"8\";i:8;s:1:\"9\";i:9;s:2:\"10\";i:10;s:2:\"11\";i:11;s:2:\"12\";i:12;s:2:\"13\";i:13;s:2:\"14\";i:14;s:2:\"15\";i:15;s:2:\"16\";i:16;s:2:\"17\";i:17;s:2:\"18\";i:18;s:2:\"19\";i:19;s:2:\"20\";i:20;s:2:\"21\";i:21;s:2:\"22\";i:22;s:2:\"23\";i:23;s:2:\"24\";i:24;s:2:\"25\";i:25;s:2:\"26\";i:26;s:2:\"27\";}}',0),('Plugin_QueuedTracking_Settings','a:10:{s:18:\"useSentinelBackend\";b:0;s:18:\"sentinelMasterName\";s:8:\"mymaster\";s:9:\"redisHost\";s:9:\"127.0.0.1\";s:9:\"redisPort\";s:4:\"6379\";s:13:\"redisDatabase\";i:0;s:13:\"redisPassword\";s:0:\"\";s:12:\"queueEnabled\";b:1;s:15:\"numQueueWorkers\";i:32;s:20:\"numRequestsToProcess\";i:1;s:28:\"processDuringTrackingRequest\";b:0;}',0),('Plugin_TopPagesByActions_Settings','a:2:{s:15:\"refreshInterval\";i:30;s:15:\"numberOfEntries\";i:15;}',0),('PrivacyManager.doNotTrackEnabled','0',0),('PrivacyManager.ipAnonymizerEnabled','0',0),('referrer_spam_blacklist','a:395:{i:0;s:10:\"0n-line.tv\";i:1;s:18:\"100dollars-seo.com\";i:2;s:14:\"12masterov.com\";i:3;s:8:\"1pamm.ru\";i:4;s:13:\"1webmaster.ml\";i:5;s:10:\"2your.site\";i:6;s:15:\"4webmasters.org\";i:7;s:9:\"5forex.ru\";i:8;s:12:\"6hopping.com\";i:9;s:20:\"7makemoneyonline.com\";i:10;s:8:\"7zap.com\";i:11;s:9:\"acads.net\";i:12;s:21:\"acunetix-referrer.com\";i:13;s:10:\"adcash.com\";i:14;s:6:\"adf.ly\";i:15;s:11:\"adspart.com\";i:16;s:10:\"adtiger.tk\";i:17;s:26:\"adventureparkcostarica.com\";i:18;s:16:\"adviceforum.info\";i:19;s:35:\"affordablewebsitesandmobileapps.com\";i:20;s:8:\"afora.ru\";i:21;s:9:\"akuhni.by\";i:22;s:15:\"alibestsale.com\";i:23;s:12:\"allknow.info\";i:24;s:10:\"allnews.md\";i:25;s:13:\"allwomen.info\";i:26;s:12:\"alpharma.net\";i:27;s:11:\"altermix.ua\";i:28;s:8:\"amt-k.ru\";i:29;s:20:\"anal-acrobats.hol.es\";i:30;s:13:\"anapa-inns.ru\";i:31;s:17:\"android-style.com\";i:32;s:15:\"anticrawler.org\";i:33;s:16:\"arendakvartir.kz\";i:34;s:15:\"arkkivoltti.net\";i:35;s:13:\"artparquet.ru\";i:36;s:16:\"aruplighting.com\";i:37;s:22:\"autovideobroadcast.com\";i:38;s:16:\"aviva-limoux.com\";i:39;s:13:\"azartclub.org\";i:40;s:8:\"azlex.uz\";i:41;s:25:\"baixar-musicas-gratis.com\";i:42;s:10:\"baladur.ru\";i:43;s:18:\"balitouroffice.com\";i:44;s:16:\"bard-real.com.ua\";i:45;s:18:\"best-seo-offer.com\";i:46;s:21:\"best-seo-software.xyz\";i:47;s:21:\"best-seo-solution.com\";i:48;s:29:\"bestmobilityscooterstoday.com\";i:49;s:22:\"bestwebsitesawards.com\";i:50;s:11:\"bif-ru.info\";i:51;s:21:\"biglistofwebsites.com\";i:52;s:23:\"billiard-classic.com.ua\";i:53;s:10:\"bizru.info\";i:54;s:15:\"black-friday.ga\";i:55;s:17:\"blackhatworth.com\";i:56;s:12:\"blogtotal.de\";i:57;s:15:\"blue-square.biz\";i:58;s:14:\"bluerobot.info\";i:59;s:14:\"boostmyppc.com\";i:60;s:13:\"brakehawk.com\";i:61;s:20:\"break-the-chains.com\";i:62;s:10:\"brk-rti.ru\";i:63;s:19:\"brothers-smaller.ru\";i:64;s:21:\"budmavtomatika.com.ua\";i:65;s:18:\"burger-imperia.com\";i:66;s:11:\"burn-fat.ga\";i:67;s:23:\"buttons-for-website.com\";i:68;s:28:\"buttons-for-your-website.com\";i:69;s:21:\"buy-cheap-online.info\";i:70;s:12:\"buy-forum.ru\";i:71;s:18:\"cardiosport.com.ua\";i:72;s:13:\"cartechnic.ru\";i:73;s:10:\"cenokos.ru\";i:74;s:10:\"cenoval.ru\";i:75;s:13:\"cezartabac.ro\";i:76;s:18:\"chinese-amezon.com\";i:77;s:5:\"ci.ua\";i:78;s:14:\"cityadspix.com\";i:79;s:19:\"civilwartheater.com\";i:80;s:12:\"clicksor.com\";i:81;s:14:\"coderstate.com\";i:82;s:12:\"codysbbq.com\";i:83;s:18:\"conciergegroup.org\";i:84;s:20:\"connectikastudio.com\";i:85;s:29:\"cookie-law-enforcement-dd.xyz\";i:86;s:19:\"copyrightclaims.org\";i:87;s:16:\"covadhosting.biz\";i:88;s:19:\"cubook.supernew.org\";i:89;s:16:\"customsua.com.ua\";i:90;s:15:\"cyber-monday.ga\";i:91;s:13:\"dailyrank.net\";i:92;s:11:\"darodar.com\";i:93;s:11:\"dbutton.net\";i:94;s:18:\"delfin-aqua.com.ua\";i:95;s:14:\"demenageur.com\";i:96;s:27:\"descargar-musica-gratis.net\";i:97;s:23:\"detskie-konstruktory.ru\";i:98;s:11:\"dipstar.org\";i:99;s:9:\"djekxa.ru\";i:100;s:7:\"dktr.ru\";i:101;s:12:\"dojki-hd.com\";i:102;s:18:\"domain-tracker.com\";i:103;s:16:\"dominateforex.ml\";i:104;s:13:\"domination.ml\";i:105;s:13:\"doska-vsem.ru\";i:106;s:19:\"dostavka-v-krym.com\";i:107;s:9:\"drupa.com\";i:108;s:10:\"dvr.biz.ua\";i:109;s:13:\"e-buyeasy.com\";i:110;s:14:\"e-kwiaciarz.pl\";i:111;s:15:\"easycommerce.cf\";i:112;s:9:\"ecomp3.ru\";i:113;s:9:\"econom.co\";i:114;s:13:\"edakgfvwql.ru\";i:115;s:11:\"egovaleo.it\";i:116;s:12:\"ekatalog.xyz\";i:117;s:7:\"ekto.ee\";i:118;s:16:\"elmifarhangi.com\";i:119;s:7:\"erot.co\";i:120;s:18:\"escort-russian.com\";i:121;s:16:\"este-line.com.ua\";i:122;s:30:\"eu-cookie-law-enforcement2.xyz\";i:123;s:18:\"euromasterclass.ru\";i:124;s:16:\"europages.com.ru\";i:125;s:16:\"eurosamodelki.ru\";i:126;s:18:\"event-tracking.com\";i:127;s:24:\"fast-wordpress-start.com\";i:128;s:16:\"fbdownloader.com\";i:129;s:26:\"floating-share-buttons.com\";i:130;s:16:\"for-your.website\";i:131;s:15:\"forex-procto.ru\";i:132;s:11:\"forsex.info\";i:133;s:12:\"forum69.info\";i:134;s:25:\"free-floating-buttons.com\";i:135;s:22:\"free-share-buttons.com\";i:136;s:23:\"free-social-buttons.com\";i:137;s:23:\"free-social-buttons.xyz\";i:138;s:24:\"free-social-buttons7.xyz\";i:139;s:16:\"free-traffic.xyz\";i:140;s:19:\"free-video-tool.com\";i:141;s:13:\"freenode.info\";i:142;s:20:\"freewhatsappload.com\";i:143;s:10:\"fsalas.com\";i:144;s:15:\"generalporn.org\";i:145;s:16:\"germes-trans.com\";i:146;s:27:\"get-free-social-traffic.com\";i:147;s:24:\"get-free-traffic-now.com\";i:148;s:28:\"get-your-social-buttons.info\";i:149;s:17:\"getlamborghini.ga\";i:150;s:15:\"getrichquick.ml\";i:151;s:19:\"getrichquickly.info\";i:152;s:9:\"ghazel.ru\";i:153;s:16:\"ghostvisitor.com\";i:154;s:11:\"girlporn.ru\";i:155;s:11:\"gkvector.ru\";i:156;s:13:\"glavprofit.ru\";i:157;s:12:\"gobongo.info\";i:158;s:14:\"goodprotein.ru\";i:159;s:14:\"googlemare.com\";i:160;s:14:\"googlsucks.com\";i:161;s:13:\"guardlink.org\";i:162;s:20:\"handicapvantoday.com\";i:163;s:13:\"havepussy.com\";i:164;s:17:\"hdmoviecamera.net\";i:165;s:15:\"hdmoviecams.com\";i:166;s:13:\"hongfanji.com\";i:167;s:19:\"hosting-tracker.com\";i:168;s:10:\"howopen.ru\";i:169;s:24:\"howtostopreferralspam.eu\";i:170;s:18:\"hulfingtonpost.com\";i:171;s:21:\"humanorightswatch.org\";i:172;s:11:\"hundejo.com\";i:173;s:13:\"hvd-store.com\";i:174;s:6:\"ico.re\";i:175;s:13:\"igru-xbox.net\";i:176;s:15:\"ilikevitaly.com\";i:177;s:13:\"iloveitaly.ro\";i:178;s:13:\"iloveitaly.ru\";i:179;s:14:\"ilovevitaly.co\";i:180;s:15:\"ilovevitaly.com\";i:181;s:16:\"ilovevitaly.info\";i:182;s:15:\"ilovevitaly.org\";i:183;s:14:\"ilovevitaly.ru\";i:184;s:11:\"iminent.com\";i:185;s:14:\"imperiafilm.ru\";i:186;s:23:\"increasewwwtraffic.info\";i:187;s:13:\"investpamm.ru\";i:188;s:10:\"iskalko.ru\";i:189;s:24:\"ispaniya-costa-blanca.ru\";i:190;s:13:\"it-max.com.ua\";i:191;s:12:\"jjbabskoe.ru\";i:192;s:14:\"justprofit.xyz\";i:193;s:26:\"kabbalah-red-bracelets.com\";i:194;s:13:\"kambasoft.com\";i:195;s:11:\"kazrent.com\";i:196;s:31:\"keywords-monitoring-success.com\";i:197;s:36:\"keywords-monitoring-your-success.com\";i:198;s:11:\"kino-fun.ru\";i:199;s:13:\"kino-key.info\";i:200;s:13:\"kinopolet.net\";i:201;s:14:\"knigonosha.net\";i:202;s:13:\"konkursov.net\";i:203;s:13:\"laxdrills.com\";i:204;s:14:\"littleberry.ru\";i:205;s:13:\"livefixer.com\";i:206;s:8:\"lsex.xyz\";i:207;s:8:\"luxup.ru\";i:208;s:12:\"magicdiet.gq\";i:209;s:19:\"makemoneyonline.com\";i:210;s:15:\"makeprogress.ga\";i:211;s:24:\"manualterap.roleforum.ru\";i:212;s:14:\"maridan.com.ua\";i:213;s:13:\"marketland.ml\";i:214;s:14:\"masterseek.com\";i:215;s:16:\"mebelcomplekt.ru\";i:216;s:17:\"mebeldekor.com.ua\";i:217;s:19:\"med-zdorovie.com.ua\";i:218;s:17:\"meds-online24.com\";i:219;s:11:\"minegam.com\";i:220;s:15:\"mirobuvi.com.ua\";i:221;s:14:\"mirtorrent.net\";i:222;s:14:\"mobilemedia.md\";i:223;s:20:\"monetizationking.net\";i:224;s:9:\"mosrif.ru\";i:225;s:13:\"moyakuhnia.ru\";i:226;s:21:\"muscle-factory.com.ua\";i:227;s:15:\"myftpupload.com\";i:228;s:14:\"myplaycity.com\";i:229;s:15:\"net-profits.xyz\";i:230;s:11:\"niki-mlt.ru\";i:231;s:18:\"novosti-hi-tech.ru\";i:232;s:9:\"nufaq.com\";i:233;s:14:\"o-o-11-o-o.com\";i:234;s:13:\"o-o-6-o-o.com\";i:235;s:12:\"o-o-6-o-o.ru\";i:236;s:13:\"o-o-8-o-o.com\";i:237;s:12:\"o-o-8-o-o.ru\";i:238;s:15:\"online-hit.info\";i:239;s:24:\"online-templatestore.com\";i:240;s:17:\"onlinetvseries.me\";i:241;s:13:\"onlywoman.org\";i:242;s:11:\"ooo-olni.ru\";i:243;s:10:\"ownshop.cf\";i:244;s:8:\"ozas.net\";i:245;s:14:\"palvira.com.ua\";i:246;s:19:\"petrovka-online.com\";i:247;s:22:\"photokitchendesign.com\";i:248;s:17:\"pizza-imperia.com\";i:249;s:16:\"pizza-tycoon.com\";i:250;s:10:\"popads.net\";i:251;s:15:\"pops.foundation\";i:252;s:16:\"pornhub-forum.ga\";i:253;s:20:\"pornhub-forum.uni.me\";i:254;s:14:\"pornhub-ru.com\";i:255;s:17:\"pornoforadult.com\";i:256;s:12:\"pornogig.com\";i:257;s:12:\"pornoklad.ru\";i:258;s:14:\"portnoff.od.ua\";i:259;s:18:\"pozdravleniya-c.ru\";i:260;s:10:\"priceg.com\";i:261;s:19:\"pricheski-video.com\";i:262;s:8:\"prlog.ru\";i:263;s:10:\"producm.ru\";i:264;s:14:\"prodvigator.ua\";i:265;s:15:\"prointer.net.ua\";i:266;s:13:\"promoforum.ru\";i:267;s:8:\"psa48.ru\";i:268;s:21:\"qualitymarketzone.com\";i:269;s:15:\"quit-smoking.ga\";i:270;s:8:\"qwesa.ru\";i:271;s:19:\"rank-checker.online\";i:272;s:22:\"rankings-analytics.com\";i:273;s:14:\"ranksonic.info\";i:274;s:13:\"ranksonic.net\";i:275;s:13:\"ranksonic.org\";i:276;s:18:\"rapidgator-porn.ga\";i:277;s:9:\"rcb101.ru\";i:278;s:11:\"rednise.com\";i:279;s:16:\"research.ifmo.ru\";i:280;s:16:\"resellerclub.com\";i:281;s:19:\"responsive-test.net\";i:282;s:12:\"reversing.cc\";i:283;s:27:\"rightenergysolutions.com.au\";i:284;s:14:\"rospromtest.ru\";i:285;s:10:\"rusexy.xyz\";i:286;s:15:\"sad-torg.com.ua\";i:287;s:13:\"sady-urala.ru\";i:288;s:19:\"sanjosestartups.com\";i:289;s:13:\"santasgift.ml\";i:290;s:17:\"savetubevideo.com\";i:291;s:17:\"screentoolkit.com\";i:292;s:12:\"scripted.com\";i:293;s:16:\"search-error.com\";i:294;s:10:\"semalt.com\";i:295;s:15:\"semaltmedia.com\";i:296;s:16:\"seo-platform.com\";i:297;s:10:\"seo-smm.kz\";i:298;s:15:\"seoanalyses.com\";i:299;s:17:\"seoexperimenty.ru\";i:300;s:10:\"seopub.net\";i:301;s:11:\"sexsaoy.com\";i:302;s:11:\"sexyali.com\";i:303;s:16:\"sexyteens.hol.es\";i:304;s:17:\"share-buttons.xyz\";i:305;s:15:\"sharebutton.net\";i:306;s:14:\"sharebutton.to\";i:307;s:14:\"shop.xz618.com\";i:308;s:13:\"sibecoprom.ru\";i:309;s:24:\"simple-share-buttons.com\";i:310;s:9:\"site5.com\";i:311;s:12:\"siteripz.net\";i:312;s:17:\"sitevaluation.org\";i:313;s:18:\"sledstvie-veli.net\";i:314;s:13:\"slftsdybbg.ru\";i:315;s:8:\"slkrm.ru\";i:316;s:11:\"smailik.org\";i:317;s:23:\"smartphonediscount.info\";i:318;s:7:\"snip.to\";i:319;s:7:\"snip.tw\";i:320;s:11:\"soaksoak.ru\";i:321;s:17:\"social-button.xyz\";i:322;s:18:\"social-buttons.com\";i:323;s:20:\"social-traffic-1.xyz\";i:324;s:20:\"social-traffic-2.xyz\";i:325;s:20:\"social-traffic-3.xyz\";i:326;s:20:\"social-traffic-4.xyz\";i:327;s:20:\"social-traffic-5.xyz\";i:328;s:20:\"social-traffic-7.xyz\";i:329;s:17:\"social-widget.xyz\";i:330;s:17:\"socialbuttons.xyz\";i:331;s:13:\"socialseet.ru\";i:332;s:13:\"sohoindia.net\";i:333;s:12:\"solnplast.ru\";i:334;s:19:\"sosdepotdebilan.com\";i:335;s:13:\"spravka130.ru\";i:336;s:9:\"steame.ru\";i:337;s:15:\"success-seo.com\";i:338;s:14:\"superiends.org\";i:339;s:13:\"supervesti.ru\";i:340;s:11:\"taihouse.ru\";i:341;s:12:\"tattooha.com\";i:342;s:10:\"tedxrj.com\";i:343;s:15:\"theguardlan.com\";i:344;s:9:\"tomck.com\";i:345;s:20:\"top1-seo-service.com\";i:346;s:13:\"topquality.cf\";i:347;s:17:\"topseoservices.co\";i:348;s:16:\"traffic-cash.xyz\";i:349;s:16:\"traffic2cash.org\";i:350;s:16:\"traffic2cash.xyz\";i:351;s:17:\"traffic2money.com\";i:352;s:17:\"trafficgenius.xyz\";i:353;s:19:\"trafficmonetize.org\";i:354;s:20:\"trafficmonetizer.org\";i:355;s:11:\"trion.od.ua\";i:356;s:7:\"uasb.ru\";i:357;s:16:\"unpredictable.ga\";i:358;s:10:\"uptime.com\";i:359;s:17:\"uptimechecker.com\";i:360;s:11:\"uzungil.com\";i:361;s:13:\"varikozdok.ru\";i:362;s:21:\"video--production.com\";i:363;s:15:\"video-woman.com\";i:364;s:28:\"videos-for-your-business.com\";i:365;s:7:\"viel.su\";i:366;s:18:\"viktoria-center.ru\";i:367;s:14:\"vodaodessa.com\";i:368;s:11:\"vodkoved.ru\";i:369;s:16:\"w3javascript.com\";i:370;s:15:\"web-revenue.xyz\";i:371;s:21:\"webmaster-traffic.com\";i:372;s:16:\"webmonetizer.net\";i:373;s:21:\"website-analyzer.info\";i:374;s:20:\"websites-reviews.com\";i:375;s:12:\"websocial.me\";i:376;s:15:\"wmasterlead.com\";i:377;s:15:\"woman-orgasm.ru\";i:378;s:18:\"wordpress-crew.net\";i:379;s:17:\"wordpresscore.com\";i:380;s:13:\"ykecwqlixx.ru\";i:381;s:16:\"youporn-forum.ga\";i:382;s:20:\"youporn-forum.uni.me\";i:383;s:14:\"youporn-ru.com\";i:384;s:20:\"yourserverisdown.com\";i:385;s:13:\"zastroyka.org\";i:386;s:12:\"zoominfo.com\";i:387;s:9:\"zvetki.ru\";i:388;s:15:\"годом.рф\";i:389;s:46:\"грузоподъемные-машины.рф\";i:390;s:38:\"лечениенаркомании.com\";i:391;s:31:\"непереводимая.рф\";i:392;s:32:\"профмонтаж-врн.рф\";i:393;s:45:\"снятьдомвсевастополе.рф\";i:394;s:33:\"холодныйобзвон.рф\";}',0),('SearchEngineDefinitions','YTo1NjY6e3M6NDoiMS5jeiI7YTo0OntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxMzoiL3NcLyhbXlwvXSspLyI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6NToicy97a30iO3M6ODoiY2hhcnNldHMiO2E6MTp7aTowO3M6MTA6Imlzby04ODU5LTIiO31zOjQ6Im5hbWUiO3M6NDoiMS5jeiI7fXM6MTc6Ind3dy4xMjNwZW9wbGUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjEzOiIvc1wvKFteXC9dKykvIjtpOjE7czoxMToic2VhcmNoX3Rlcm0iO31zOjg6ImJhY2tsaW5rIjtzOjU6InMve2t9IjtzOjQ6Im5hbWUiO3M6OToiMTIzcGVvcGxlIjt9czoxMjoiMTIzcGVvcGxlLnt9IjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjEzOiIvc1wvKFteXC9dKykvIjtpOjE7czoxMToic2VhcmNoX3Rlcm0iO31zOjg6ImJhY2tsaW5rIjtzOjU6InMve2t9IjtzOjQ6Im5hbWUiO3M6OToiMTIzcGVvcGxlIjt9czo5OiJzby4zNjAuY24iO2E6NDp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6Nzoicz9xPXtrfSI7czo4OiJjaGFyc2V0cyI7YToyOntpOjA7czo1OiJVVEYtOCI7aToxO3M6NjoiZ2IyMzEyIjt9czo0OiJuYW1lIjtzOjk6IjM2MHNlYXJjaCI7fXM6MTA6Ind3dy5zby5jb20iO2E6NDp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6Nzoicz9xPXtrfSI7czo4OiJjaGFyc2V0cyI7YToyOntpOjA7czo1OiJVVEYtOCI7aToxO3M6NjoiZ2IyMzEyIjt9czo0OiJuYW1lIjtzOjk6IjM2MHNlYXJjaCI7fXM6MTM6Ind3dy5hYmFjaG8uZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTE6InN1Y2hlP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiQWJhY2hvIjt9czoxNDoid3d3LmFiYWNoby5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTE6InN1Y2hlP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiQWJhY2hvIjt9czoxNjoid3d3LmFiYWNoby5jby51ayI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMToic3VjaGU/cT17a30iO3M6NDoibmFtZSI7czo2OiJBYmFjaG8iO31zOjE3OiJ3d3cuc2UuYWJhY2hvLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMToic3VjaGU/cT17a30iO3M6NDoibmFtZSI7czo2OiJBYmFjaG8iO31zOjE3OiJ3d3cudHIuYWJhY2hvLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMToic3VjaGU/cT17a30iO3M6NDoibmFtZSI7czo2OiJBYmFjaG8iO31zOjEzOiJ3d3cuYWJhY2hvLmF0IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjExOiJzdWNoZT9xPXtrfSI7czo0OiJuYW1lIjtzOjY6IkFiYWNobyI7fXM6MTM6Ind3dy5hYmFjaG8uZnIiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTE6InN1Y2hlP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiQWJhY2hvIjt9czoxMzoid3d3LmFiYWNoby5lcyI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMToic3VjaGU/cT17a30iO3M6NDoibmFtZSI7czo2OiJBYmFjaG8iO31zOjEzOiJ3d3cuYWJhY2hvLmNoIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjExOiJzdWNoZT9xPXtrfSI7czo0OiJuYW1lIjtzOjY6IkFiYWNobyI7fXM6MTM6Ind3dy5hYmFjaG8uaXQiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTE6InN1Y2hlP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiQWJhY2hvIjt9czo5OiJhYmNzb2subm8iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiQUJDc8O4ayI7fXM6MTY6InZlcmRlbi5hYmNzb2subm8iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiQUJDc8O4ayI7fXM6MTI6Ind3dy5hY29vbi5kZSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo3OiJiZWdyaWZmIjt9czo4OiJiYWNrbGluayI7czozMDoiY2dpLWJpbi9zZWFyY2guZXhlP2JlZ3JpZmY9e2t9IjtzOjQ6Im5hbWUiO3M6NToiQWNvb24iO31zOjIwOiJjaGVyY2hlcmZyLmFndWVhLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMDoicy5weT9xPXtrfSI7czo0OiJuYW1lIjtzOjU6IkFndWVhIjt9czo5OiJhbGV4YS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjU6IkFsZXhhIjt9czoyNToic2VhcmNoLnRvb2xiYXJzLmFsZXhhLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NToiQWxleGEiO31zOjIzOiJyZWNoZXJjaGVyLmFsaWNlYWRzbC5mciI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoyOiJxcyI7fXM6ODoiYmFja2xpbmsiO3M6MTY6Imdvb2dsZS5wbD9xcz17a30iO3M6NDoibmFtZSI7czoxMDoiQWxpY2UgQWRzbCI7fXM6NjoiYWxsLmJ5IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo4OiJiYWNrbGluayI7czozNjoiY2dpLWJpbi9zZWFyY2guY2dpP21vZGU9YnkmcXVlcnk9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiQWxsLmJ5Ijt9czoxNjoid3d3LmFsbGVza2xhci5kZSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJ3b3JkcyI7fXM6ODoiYmFja2xpbmsiO3M6MTA6Ij93b3Jkcz17a30iO3M6NDoibmFtZSI7czo5OiJBbGxlc2tsYXIiO31zOjE2OiJ3d3cuYWxsZXNrbGFyLmF0IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6IndvcmRzIjt9czo4OiJiYWNrbGluayI7czoxMDoiP3dvcmRzPXtrfSI7czo0OiJuYW1lIjtzOjk6IkFsbGVza2xhciI7fXM6MTY6Ind3dy5hbGxlc2tsYXIuY2giO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToid29yZHMiO31zOjg6ImJhY2tsaW5rIjtzOjEwOiI/d29yZHM9e2t9IjtzOjQ6Im5hbWUiO3M6OToiQWxsZXNrbGFyIjt9czoxNzoid3d3LmFsbHRoZXdlYi5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkFsbFRoZVdlYiI7fXM6MTc6Ind3dy5hbHRhdmlzdGEuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiJ3ZWIvcmVzdWx0cz9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkFsdGFWaXN0YSI7fXM6MjA6InNlYXJjaC5hbHRhdmlzdGEuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiJ3ZWIvcmVzdWx0cz9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkFsdGFWaXN0YSI7fXM6MjI6Imxpc3RpbmdzLmFsdGF2aXN0YS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTc6IndlYi9yZXN1bHRzP3E9e2t9IjtzOjQ6Im5hbWUiO3M6OToiQWx0YVZpc3RhIjt9czoxMjoiYWx0YXZpc3RhLmRlIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiJ3ZWIvcmVzdWx0cz9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkFsdGFWaXN0YSI7fXM6MTI6ImFsdGF2aXN0YS5mciI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNzoid2ViL3Jlc3VsdHM/cT17a30iO3M6NDoibmFtZSI7czo5OiJBbHRhVmlzdGEiO31zOjE2OiJ7fS5hbHRhdmlzdGEuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiJ3ZWIvcmVzdWx0cz9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkFsdGFWaXN0YSI7fXM6MTk6ImJlLW5sLmFsdGF2aXN0YS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTc6IndlYi9yZXN1bHRzP3E9e2t9IjtzOjQ6Im5hbWUiO3M6OToiQWx0YVZpc3RhIjt9czoxOToiYmUtZnIuYWx0YXZpc3RhLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNzoid2ViL3Jlc3VsdHM/cT17a30iO3M6NDoibmFtZSI7czo5OiJBbHRhVmlzdGEiO31zOjE0OiJzZWFyY2guYW9sLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czo1OiJxdWVyeSI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImFvbC9zZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czozOiJBT0wiO31zOjEzOiJzZWFyY2guYW9sLml0IjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjU6InF1ZXJ5IjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNjoiYW9sL3NlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFPTCI7fXM6MTc6ImFvbHNlYXJjaC5hb2wuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjU6InF1ZXJ5IjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNjoiYW9sL3NlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFPTCI7fXM6MjM6Ind3dy5hb2xyZWNoZXJjaGUuYW9sLmZyIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjU6InF1ZXJ5IjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNjoiYW9sL3NlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFPTCI7fXM6MjQ6Ind3dy5hb2xyZWNoZXJjaGVzLmFvbC5mciI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czo1OiJxdWVyeSI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImFvbC9zZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czozOiJBT0wiO31zOjIwOiJ3d3cuYW9saW1hZ2VzLmFvbC5mciI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czo1OiJxdWVyeSI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImFvbC9zZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czozOiJBT0wiO31zOjE4OiJhaW0uc2VhcmNoLmFvbC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6NToicXVlcnkiO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJhb2wvc2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQU9MIjt9czoyMDoid3d3LnJlY2hlcmNoZS5hb2wuZnIiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6NToicXVlcnkiO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJhb2wvc2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQU9MIjt9czoxNjoicmVjaGVyY2hlLmFvbC5mciI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czo1OiJxdWVyeSI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImFvbC9zZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czozOiJBT0wiO31zOjE2OiJmaW5kLndlYi5hb2wuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjU6InF1ZXJ5IjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNjoiYW9sL3NlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFPTCI7fXM6MTY6InJlY2hlcmNoZS5hb2wuY2EiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6NToicXVlcnkiO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJhb2wvc2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQU9MIjt9czoxOToiYW9sc2VhcmNoLmFvbC5jby51ayI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czo1OiJxdWVyeSI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImFvbC9zZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czozOiJBT0wiO31zOjE2OiJzZWFyY2guYW9sLmNvLnVrIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjU6InF1ZXJ5IjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNjoiYW9sL3NlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFPTCI7fXM6MTk6ImFvbHJlY2hlcmNoZS5hb2wuZnIiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6NToicXVlcnkiO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJhb2wvc2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQU9MIjt9czoxNToic3VjaGVhb2wuYW9sLmRlIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjU6InF1ZXJ5IjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNjoiYW9sL3NlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFPTCI7fXM6MTI6InN1Y2hlLmFvbC5kZSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czo1OiJxdWVyeSI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImFvbC9zZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czozOiJBT0wiO31zOjE0OiJvMnN1Y2hlLmFvbC5kZSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czo1OiJxdWVyeSI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImFvbC9zZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czozOiJBT0wiO31zOjE1OiJzdWNoZS5hb2xzdmMuZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6NToicXVlcnkiO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJhb2wvc2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQU9MIjt9czoyMjoiYW9sYnVzcXVlZGEuYW9sLmNvbS5teCI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czo1OiJxdWVyeSI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImFvbC9zZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czozOiJBT0wiO31zOjE3OiJhbGljZXN1Y2hlLmFvbC5kZSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czo1OiJxdWVyeSI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImFvbC9zZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czozOiJBT0wiO31zOjE4OiJhbGljZXN1Y2hldC5hb2wuZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6NToicXVlcnkiO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJhb2wvc2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQU9MIjt9czoxNDoic3VjaGV0Mi5hb2wuZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6NToicXVlcnkiO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJhb2wvc2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQU9MIjt9czoyMzoic2VhcmNoLmhwLm15LmFvbC5jb20uYXUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6NToicXVlcnkiO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJhb2wvc2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQU9MIjt9czoxOToic2VhcmNoLmhwLm15LmFvbC5kZSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czo1OiJxdWVyeSI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImFvbC9zZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czozOiJBT0wiO31zOjE5OiJzZWFyY2guaHAubXkuYW9sLml0IjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjU6InF1ZXJ5IjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNjoiYW9sL3NlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFPTCI7fXM6MjQ6InNlYXJjaC1pbnRsLm5ldHNjYXBlLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czo1OiJxdWVyeSI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImFvbC9zZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czozOiJBT0wiO31zOjE2OiJkZS5hb2xzZWFyY2guY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czozOiJBT0wiO31zOjI0OiJhcG9sbG8ubHYvcG9ydGFsL3NlYXJjaC8iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6Mzg6Ij9jb2Y9Rk9SSUQlM0ExMSZxPXtrfSZzZWFyY2hfd2hlcmU9d3d3IjtzOjQ6Im5hbWUiO3M6OToiQXBvbGxvIGx2Ijt9czoxMDoiYXBvbGxvNy5kZSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6MTEyOiJhN2RiL2luZGV4LnBocD9xdWVyeT17a30mZGVfc2hhcmVsb29rPXRydWUmZGVfYmluZz10cnVlJmRlX3dpdGNoPXRydWUmZGVfZ29vZ2xlPXRydWUmZGVfeWFob289dHJ1ZSZkZV9seWNvcz10cnVlIjtzOjQ6Im5hbWUiO3M6NzoiQXBvbGxvNyI7fXM6MTE6InNtLmFwb3J0LnJ1IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InIiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cj17a30iO3M6NDoibmFtZSI7czo1OiJBcG9ydCI7fXM6OToiYXJhbWEuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiJzZWFyY2gucGhwMz9xPXtrfSI7czo0OiJuYW1lIjtzOjU6IkFyYW1hIjt9czoxMjoid3d3LmFyY29yLmRlIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjg6IktleXdvcmRzIjt9czo4OiJiYWNrbGluayI7czozNzoiY29udGVudC9zZWFyY2hyZXN1bHQuanNwP0tleXdvcmRzPXtrfSI7czo0OiJuYW1lIjtzOjU6IkFyY29yIjt9czoxNzoiYXJpYW5uYS5saWJlcm8uaXQiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjM1OiJzZWFyY2gvYWJpbi9pbnRlZ3JhdGEuY2dpP3F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjc6IkFyaWFubmEiO31zOjE1OiJ3d3cuYXJpYW5uYS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjM1OiJzZWFyY2gvYWJpbi9pbnRlZ3JhdGEuY2dpP3F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjc6IkFyaWFubmEiO31zOjc6ImFzay5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mzp7aTowO3M6MzoiYXNrIjtpOjE7czoxOiJxIjtpOjI7czo5OiJzZWFyY2hmb3IiO31zOjg6ImJhY2tsaW5rIjtzOjk6IndlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFzayI7fXM6MTE6IndlYi5hc2suY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjM6e2k6MDtzOjM6ImFzayI7aToxO3M6MToicSI7aToyO3M6OToic2VhcmNoZm9yIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czozOiJBc2siO31zOjExOiJpbnQuYXNrLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YTozOntpOjA7czozOiJhc2siO2k6MTtzOjE6InEiO2k6MjtzOjk6InNlYXJjaGZvciI7fXM6ODoiYmFja2xpbmsiO3M6OToid2ViP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQXNrIjt9czoxMToibXdzLmFzay5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mzp7aTowO3M6MzoiYXNrIjtpOjE7czoxOiJxIjtpOjI7czo5OiJzZWFyY2hmb3IiO31zOjg6ImJhY2tsaW5rIjtzOjk6IndlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFzayI7fXM6MTQ6ImltYWdlcy5hc2suY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjM6e2k6MDtzOjM6ImFzayI7aToxO3M6MToicSI7aToyO3M6OToic2VhcmNoZm9yIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czozOiJBc2siO31zOjE3OiJpbWFnZXMue30uYXNrLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YTozOntpOjA7czozOiJhc2siO2k6MTtzOjE6InEiO2k6MjtzOjk6InNlYXJjaGZvciI7fXM6ODoiYmFja2xpbmsiO3M6OToid2ViP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQXNrIjt9czoxNzoiYXNrLnJlZmVyZW5jZS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mzp7aTowO3M6MzoiYXNrIjtpOjE7czoxOiJxIjtpOjI7czo5OiJzZWFyY2hmb3IiO31zOjg6ImJhY2tsaW5rIjtzOjk6IndlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFzayI7fXM6MTU6Ind3dy5hc2traWRzLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YTozOntpOjA7czozOiJhc2siO2k6MTtzOjE6InEiO2k6MjtzOjk6InNlYXJjaGZvciI7fXM6ODoiYmFja2xpbmsiO3M6OToid2ViP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQXNrIjt9czoxMjoiaXdvbi5hc2suY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjM6e2k6MDtzOjM6ImFzayI7aToxO3M6MToicSI7aToyO3M6OToic2VhcmNoZm9yIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czozOiJBc2siO31zOjEzOiJ3d3cuYXNrLmNvLnVrIjthOjM6e3M6NjoicGFyYW1zIjthOjM6e2k6MDtzOjM6ImFzayI7aToxO3M6MToicSI7aToyO3M6OToic2VhcmNoZm9yIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czozOiJBc2siO31zOjEwOiJ7fS5hc2suY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjM6e2k6MDtzOjM6ImFzayI7aToxO3M6MToicSI7aToyO3M6OToic2VhcmNoZm9yIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czozOiJBc2siO31zOjEzOiJ3d3cucWJ5cmQuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjM6e2k6MDtzOjM6ImFzayI7aToxO3M6MToicSI7aToyO3M6OToic2VhcmNoZm9yIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czozOiJBc2siO31zOjEyOiJ7fS5xYnlyZC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mzp7aTowO3M6MzoiYXNrIjtpOjE7czoxOiJxIjtpOjI7czo5OiJzZWFyY2hmb3IiO31zOjg6ImJhY2tsaW5rIjtzOjk6IndlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFzayI7fXM6MjI6Ind3dy5zZWFyY2gtcmVzdWx0cy5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mzp7aTowO3M6MzoiYXNrIjtpOjE7czoxOiJxIjtpOjI7czo5OiJzZWFyY2hmb3IiO31zOjg6ImJhY2tsaW5rIjtzOjk6IndlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFzayI7fXM6MjM6Ind3dzEuc2VhcmNoLXJlc3VsdHMuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjM6e2k6MDtzOjM6ImFzayI7aToxO3M6MToicSI7aToyO3M6OToic2VhcmNoZm9yIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czozOiJBc2siO31zOjIyOiJpbnQuc2VhcmNoLXJlc3VsdHMuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjM6e2k6MDtzOjM6ImFzayI7aToxO3M6MToicSI7aToyO3M6OToic2VhcmNoZm9yIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czozOiJBc2siO31zOjIxOiJ7fS5zZWFyY2gtcmVzdWx0cy5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mzp7aTowO3M6MzoiYXNrIjtpOjE7czoxOiJxIjtpOjI7czo5OiJzZWFyY2hmb3IiO31zOjg6ImJhY2tsaW5rIjtzOjk6IndlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFzayI7fXM6MTQ6InNlYXJjaC5hc2suY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjM6e2k6MDtzOjM6ImFzayI7aToxO3M6MToicSI7aToyO3M6OToic2VhcmNoZm9yIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czozOiJBc2siO31zOjE3OiJ7fS5zZWFyY2guYXNrLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YTozOntpOjA7czozOiJhc2siO2k6MTtzOjE6InEiO2k6MjtzOjk6InNlYXJjaGZvciI7fXM6ODoiYmFja2xpbmsiO3M6OToid2ViP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQXNrIjt9czoxNzoiYXZpcmEtaW50LmFzay5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mzp7aTowO3M6MzoiYXNrIjtpOjE7czoxOiJxIjtpOjI7czo5OiJzZWFyY2hmb3IiO31zOjg6ImJhY2tsaW5rIjtzOjk6IndlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFzayI7fXM6MTI6InNlYXJjaHF1LmNvbSI7YTozOntzOjY6InBhcmFtcyI7YTozOntpOjA7czozOiJhc2siO2k6MTtzOjE6InEiO2k6MjtzOjk6InNlYXJjaGZvciI7fXM6ODoiYmFja2xpbmsiO3M6OToid2ViP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQXNrIjt9czoxNzoic2VhcmNoLnRiLmFzay5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mzp7aTowO3M6MzoiYXNrIjtpOjE7czoxOiJxIjtpOjI7czo5OiJzZWFyY2hmb3IiO31zOjg6ImJhY2tsaW5rIjtzOjk6IndlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFzayI7fXM6MjU6Im5vcnRvbnNhZmUuc2VhcmNoLmFzay5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mzp7aTowO3M6MzoiYXNrIjtpOjE7czoxOiJxIjtpOjI7czo5OiJzZWFyY2hmb3IiO31zOjg6ImJhY2tsaW5rIjtzOjk6IndlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IkFzayI7fXM6MjA6InNhZmVzZWFyY2guYXZpcmEuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjM6e2k6MDtzOjM6ImFzayI7aToxO3M6MToicSI7aToyO3M6OToic2VhcmNoZm9yIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czozOiJBc2siO31zOjIwOiJhdmlyYS5zZWFyY2guYXNrLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YTozOntpOjA7czozOiJhc2siO2k6MTtzOjE6InEiO2k6MjtzOjk6InNlYXJjaGZvciI7fXM6ODoiYmFja2xpbmsiO3M6OToid2ViP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiQXNrIjt9czoyMToiaW50LnNlYXJjaC50Yi5hc2suY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjM6e2k6MDtzOjM6ImFzayI7aToxO3M6MToicSI7aToyO3M6OToic2VhcmNoZm9yIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czozOiJBc2siO31zOjIyOiJzZWFyY2hhdGxhcy5jZW50cnVtLmN6IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjU6IkF0bGFzIjt9czoxNToic2VhcmNoLmF1b25lLmpwIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjU6ImF1b25lIjt9czoxODoic3Atc2VhcmNoLmF1b25lLmpwIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjU6ImF1b25lIjt9czoyNDoic3AtaW1hZ2Uuc2VhcmNoLmF1b25lLmpwIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjEyOiJhdW9uZSBJbWFnZXMiO31zOjE4OiJ3d3cyLmF1c3Ryb25hdXQuYXQiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6NDoibmFtZSI7czoxMDoiQXVzdHJvbmF1dCI7fXM6MTg6Ind3dzEuYXVzdHJvbmF1dC5hdCI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjEwOiJBdXN0cm9uYXV0Ijt9czoxODoic2VhcmNoLmJhYnlsb24uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InEiO2k6MTtzOjEzOiIvXC93ZWJcLyguKikvIjt9czo4OiJiYWNrbGluayI7czo2OiI/cT17a30iO3M6NDoibmFtZSI7czo3OiJCYWJ5bG9uIjt9czoyNDoic2VhcmNoYXNzaXN0LmJhYnlsb24uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InEiO2k6MTtzOjEzOiIvXC93ZWJcLyguKikvIjt9czo4OiJiYWNrbGluayI7czo2OiI/cT17a30iO3M6NDoibmFtZSI7czo3OiJCYWJ5bG9uIjt9czoxMzoid3d3LmJhaWR1LmNvbSI7YTo0OntzOjY6InBhcmFtcyI7YTozOntpOjA7czoyOiJ3ZCI7aToxO3M6NDoid29yZCI7aToyO3M6Mjoia3ciO31zOjg6ImJhY2tsaW5rIjtzOjg6InM/d2Q9e2t9IjtzOjg6ImNoYXJzZXRzIjthOjI6e2k6MDtzOjU6IlVURi04IjtpOjE7czo2OiJnYjIzMTIiO31zOjQ6Im5hbWUiO3M6NToiQmFpZHUiO31zOjE0OiJ3d3cxLmJhaWR1LmNvbSI7YTo0OntzOjY6InBhcmFtcyI7YTozOntpOjA7czoyOiJ3ZCI7aToxO3M6NDoid29yZCI7aToyO3M6Mjoia3ciO31zOjg6ImJhY2tsaW5rIjtzOjg6InM/d2Q9e2t9IjtzOjg6ImNoYXJzZXRzIjthOjI6e2k6MDtzOjU6IlVURi04IjtpOjE7czo2OiJnYjIzMTIiO31zOjQ6Im5hbWUiO3M6NToiQmFpZHUiO31zOjExOiJtLmJhaWR1LmNvbSI7YTo0OntzOjY6InBhcmFtcyI7YTozOntpOjA7czoyOiJ3ZCI7aToxO3M6NDoid29yZCI7aToyO3M6Mjoia3ciO31zOjg6ImJhY2tsaW5rIjtzOjg6InM/d2Q9e2t9IjtzOjg6ImNoYXJzZXRzIjthOjI6e2k6MDtzOjU6IlVURi04IjtpOjE7czo2OiJnYjIzMTIiO31zOjQ6Im5hbWUiO3M6NToiQmFpZHUiO31zOjE1OiJ3d3cuYmFpZHUuY28udGgiO2E6NDp7czo2OiJwYXJhbXMiO2E6Mzp7aTowO3M6Mjoid2QiO2k6MTtzOjQ6IndvcmQiO2k6MjtzOjI6Imt3Ijt9czo4OiJiYWNrbGluayI7czo4OiJzP3dkPXtrfSI7czo4OiJjaGFyc2V0cyI7YToyOntpOjA7czo1OiJVVEYtOCI7aToxO3M6NjoiZ2IyMzEyIjt9czo0OiJuYW1lIjtzOjU6IkJhaWR1Ijt9czoxNjoiemhpZGFvLmJhaWR1LmNvbSI7YTo0OntzOjY6InBhcmFtcyI7YTozOntpOjA7czoyOiJ3ZCI7aToxO3M6NDoid29yZCI7aToyO3M6Mjoia3ciO31zOjg6ImJhY2tsaW5rIjtzOjg6InM/d2Q9e2t9IjtzOjg6ImNoYXJzZXRzIjthOjI6e2k6MDtzOjU6IlVURi04IjtpOjE7czo2OiJnYjIzMTIiO31zOjQ6Im5hbWUiO3M6NToiQmFpZHUiO31zOjE1OiJ0aWViYS5iYWlkdS5jb20iO2E6NDp7czo2OiJwYXJhbXMiO2E6Mzp7aTowO3M6Mjoid2QiO2k6MTtzOjQ6IndvcmQiO2k6MjtzOjI6Imt3Ijt9czo4OiJiYWNrbGluayI7czo4OiJzP3dkPXtrfSI7czo4OiJjaGFyc2V0cyI7YToyOntpOjA7czo1OiJVVEYtOCI7aToxO3M6NjoiZ2IyMzEyIjt9czo0OiJuYW1lIjtzOjU6IkJhaWR1Ijt9czoxNDoibmV3cy5iYWlkdS5jb20iO2E6NDp7czo2OiJwYXJhbXMiO2E6Mzp7aTowO3M6Mjoid2QiO2k6MTtzOjQ6IndvcmQiO2k6MjtzOjI6Imt3Ijt9czo4OiJiYWNrbGluayI7czo4OiJzP3dkPXtrfSI7czo4OiJjaGFyc2V0cyI7YToyOntpOjA7czo1OiJVVEYtOCI7aToxO3M6NjoiZ2IyMzEyIjt9czo0OiJuYW1lIjtzOjU6IkJhaWR1Ijt9czoxNDoid2ViLmdvdWdvdS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Njoic2VhcmNoIjt9czo4OiJiYWNrbGluayI7czoxNzoic2VhcmNoP3NlYXJjaD17a30iO3M6NDoibmFtZSI7czo1OiJCYWlkdSI7fXM6MjQ6ImNnaS5zZWFyY2guYmlnbG9iZS5uZS5qcCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoyMzoiY2dpLWJpbi9zZWFyY2gtc3Q/cT17a30iO3M6NDoibmFtZSI7czo3OiJCaWdsb2JlIjt9czoyNzoiaW1hZ2VzLnNlYXJjaC5iaWdsb2JlLm5lLmpwIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjIzOiJjZ2ktYmluL3NlYXJjaC1zdD9xPXtrfSI7czo0OiJuYW1lIjtzOjE0OiJCaWdsb2JlIEltYWdlcyI7fXM6ODoiYmluZy5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6MToiUSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjQ6IkJpbmciO31zOjExOiJ7fS5iaW5nLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJxIjtpOjE7czoxOiJRIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NDoiQmluZyI7fXM6MTM6Im1zbmJjLm1zbi5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6MToiUSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjQ6IkJpbmciO31zOjIxOiJkaXppb25hcmlvLml0Lm1zbi5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6MToiUSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjQ6IkJpbmciO31zOjIzOiJlbmNpY2xvcGVkaWEuaXQubXNuLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJxIjtpOjE7czoxOiJRIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NDoiQmluZyI7fXM6MTI6ImNjLmJpbmdqLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJxIjtpOjE7czoxOiJRIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NDoiQmluZyI7fXM6MjI6ImJpbmcuY29tL2ltYWdlcy9zZWFyY2giO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6MToiUSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTE6IkJpbmcgSW1hZ2VzIjt9czoyNToie30uYmluZy5jb20vaW1hZ2VzL3NlYXJjaCI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJxIjtpOjE7czoxOiJRIjt9czo4OiJiYWNrbGluayI7czo2OiI/cT17a30iO3M6NDoibmFtZSI7czoxMToiQmluZyBJbWFnZXMiO31zOjEwOiJibGVra28uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InEiO2k6MTtzOjEyOiIvXC93c1wvKC4qKS8iO31zOjg6ImJhY2tsaW5rIjtzOjY6IndzL3trfSI7czo0OiJuYW1lIjtzOjY6ImJsZWtrbyI7fXM6MTg6Ind3dy5ibG9nZGlnZ2VyLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjEwOiJCbG9nZGlnZ2VyIjt9czoxNzoid3d3LmJsb2dwdWxzZS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJzZWFyY2g/cXVlcnk9e2t9IjtzOjQ6Im5hbWUiO3M6OToiQmxvZ3B1bHNlIjt9czoxNzoic2VhcmNoLmJsdWV3aW4uY2giO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MTA6InNlYXJjaFRlcm0iO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE4OiJ2Mi9pbmRleC5waHA/cT17a30iO3M6NDoibmFtZSI7czo3OiJCbHVld2luIjt9czoxMjoid2ViLmNhbm9lLmNhIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo4OiJDYW5vZS5jYSI7fXM6MTc6InNlYXJjaC5jZW50cnVtLmN6IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjc6IkNlbnRydW0iO31zOjE3OiJtb3JmZW8uY2VudHJ1bS5jeiI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo2OiI/cT17a30iO3M6NDoibmFtZSI7czo3OiJDZW50cnVtIjt9czoxNToid3d3LmNoYXJ0ZXIubmV0IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjIyOiJzZWFyY2gvaW5kZXgucGhwP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiQ2hhcnRlciI7fXM6MTY6ImNsYXJvLXNlYXJjaC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTI6IkNsYXJvIFNlYXJjaCI7fXM6MTY6InBlc3F1aXNhLmNsaXgucHQiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6ODoicXVlc3Rpb24iO31zOjg6ImJhY2tsaW5rIjtzOjM4OiJyZXN1bHRhZG8uaHRtbD9pbj1NdW5kaWFsJnF1ZXN0aW9uPXtrfSI7czo0OiJuYW1lIjtzOjQ6IkNsaXgiO31zOjE4OiJzZWFyY2guY29tY2FzdC5uZXQiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiQ29tY2FzdCI7fXM6MTY6IndlYnNlYXJjaC5jcy5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjE5OiJjcy9zZWFyY2g/cXVlcnk9e2t9IjtzOjQ6Im5hbWUiO3M6MzU6IkNvbXB1c2VydmUuY29tIChFbmhhbmNlZCBieSBHb29nbGUpIjt9czoxODoic2VhcmNoLmNvbmR1aXQuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE4OiJSZXN1bHRzLmFzcHg/cT17a30iO3M6NDoibmFtZSI7czoxMToiQ29uZHVpdC5jb20iO31zOjI1OiJpbWFnZXMuc2VhcmNoLmNvbmR1aXQuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE4OiJSZXN1bHRzLmFzcHg/cT17a30iO3M6NDoibmFtZSI7czoxMToiQ29uZHVpdC5jb20iO31zOjE1OiJ3d3cuY3Jhd2xlci5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MjY6InNlYXJjaC9yZXN1bHRzMS5hc3B4P3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiQ3Jhd2xlciI7fXM6MTI6Ind3dy5jdWlsLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NDoiQ3VpbCI7fXM6MTc6ImRhZW1vbi1zZWFyY2guY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiJleHBsb3JlL3dlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjEzOiJEYWVtb24gc2VhcmNoIjt9czoyMDoibXkuZGFlbW9uLXNlYXJjaC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTc6ImV4cGxvcmUvd2ViP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTM6IkRhZW1vbiBzZWFyY2giO31zOjE5OiJ3d3cuZGFzb2VydGxpY2hlLmRlIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjI6Imt3Ijt9czo0OiJuYW1lIjtzOjEyOiJEYXNPZXJ0bGljaGUiO31zOjIwOiJ3d3cyLmRhc29lcnRsaWNoZS5kZSI7YToyOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoyOiJwaCI7aToxO3M6Mjoia3ciO31zOjQ6Im5hbWUiO3M6MTI6IkRhc09lcnRsaWNoZSI7fXM6MjI6Ind3dzEuZGFzdGVsZWZvbmJ1Y2guZGUiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Mjoia3ciO31zOjQ6Im5hbWUiO3M6MTQ6IkRhc1RlbGVmb25idWNoIjt9czoxNToic2VhcmNoLmRhdW0ubmV0IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo0OiJEYXVtIjt9czoxNToib3RzaW5nLmRlbGZpLmVlIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEwOiJmaW5kP3E9e2t9IjtzOjQ6Im5hbWUiO3M6ODoiRGVsZmkgRUUiO31zOjE0OiJzbWFydC5kZWxmaS5sdiI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMDoiZmluZD9xPXtrfSI7czo0OiJuYW1lIjtzOjg6IkRlbGZpIGx2Ijt9czo4OiJkaWdnLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJzIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3M9e2t9IjtzOjQ6Im5hbWUiO3M6NDoiRGlnZyI7fXM6MTA6ImZyLmRpci5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MzoicmVxIjt9czo0OiJuYW1lIjtzOjc6ImRpci5jb20iO31zOjg6ImRtb3oub3JnIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjY6InNlYXJjaCI7fXM6NDoibmFtZSI7czo0OiJkbW96Ijt9czoxNjoiZWRpdG9ycy5kbW96Lm9yZyI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo2OiJzZWFyY2giO31zOjQ6Im5hbWUiO3M6NDoiZG1veiI7fXM6MTQ6ImR1Y2tkdWNrZ28uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjEwOiJEdWNrRHVja0dvIjt9czoxNjoici5kdWNrZHVja2dvLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo2OiI/cT17a30iO3M6NDoibmFtZSI7czoxMDoiRHVja0R1Y2tHbyI7fXM6MjA6InNlYXJjaC5lYXJ0aGxpbmsubmV0IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo5OiJFYXJ0aGxpbmsiO31zOjEwOiJlY29zaWEub3JnIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJzZWFyY2gucGhwP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiRWNvc2lhIjt9czoxODoiYXJpYWRuYS5lbG11bmRvLmVzIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6ODoiRWwgTXVuZG8iO31zOjEyOiJ3d3cuZW5pcm8uc2UiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6MTE6InNlYXJjaF93b3JkIjt9czo4OiJiYWNrbGluayI7czoxMToicXVlcnk/cT17a30iO3M6NDoibmFtZSI7czo1OiJFbmlybyI7fXM6NToiZW8uc3QiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NzoieF9xdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6MzA6ImNnaS1iaW4vZW9sb3N0LmNnaT94X3F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjI6ImVvIjt9czoxMzoid3d3LmV1cmlwLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMzoic2VhcmNoLz9xPXtrfSI7czo0OiJuYW1lIjtzOjU6IkV1cmlwIjt9czoxNjoid3d3LmV1cm9zZWVrLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo2OiJzdHJpbmciO31zOjg6ImJhY2tsaW5rIjtzOjI4OiJzeXN0ZW0vc2VhcmNoLmNnaT9zdHJpbmc9e2t9IjtzOjQ6Im5hbWUiO3M6ODoiRXVyb3NlZWsiO31zOjE4OiJ3d3cuZXZlcnljbGljay5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Nzoia2V5d29yZCI7fXM6NDoibmFtZSI7czoxMDoiRXZlcnljbGljayI7fXM6MTQ6Ind3dy5leGFsZWFkLmZyIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjIwOiJzZWFyY2gvcmVzdWx0cz9xPXtrfSI7czo0OiJuYW1lIjtzOjc6IkV4YWxlYWQiO31zOjE1OiJ3d3cuZXhhbGVhZC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MjA6InNlYXJjaC9yZXN1bHRzP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiRXhhbGVhZCI7fXM6MTY6InNlYXJjaC5leGNpdGUuaXQiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTA6IndlYi8/cT17a30iO3M6NDoibmFtZSI7czo2OiJFeGNpdGUiO31zOjE2OiJzZWFyY2guZXhjaXRlLmZyIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEwOiJ3ZWIvP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiRXhjaXRlIjt9czoxNjoic2VhcmNoLmV4Y2l0ZS5kZSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMDoid2ViLz9xPXtrfSI7czo0OiJuYW1lIjtzOjY6IkV4Y2l0ZSI7fXM6MTk6InNlYXJjaC5leGNpdGUuY28udWsiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTA6IndlYi8/cT17a30iO3M6NDoibmFtZSI7czo2OiJFeGNpdGUiO31zOjE2OiJzZWFyY2guZXhjaXRlLmVzIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEwOiJ3ZWIvP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiRXhjaXRlIjt9czoxNjoic2VhcmNoLmV4Y2l0ZS5ubCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMDoid2ViLz9xPXtrfSI7czo0OiJuYW1lIjtzOjY6IkV4Y2l0ZSI7fXM6MTY6Im1zeG1sLmV4Y2l0ZS5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6NDE6Ii9cL1teXC9dK1wvd3NcL3Jlc3VsdHNcL1teXC9dK1wvKFteXC9dKykvIjtpOjE7czoxOiJxIjt9czo0OiJuYW1lIjtzOjY6IkV4Y2l0ZSI7fXM6MTY6Ind3dy5leGNpdGUuY28uanAiO2E6NDp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Njoic2VhcmNoIjt9czo4OiJiYWNrbGluayI7czoyMDoic2VhcmNoLmd3P3NlYXJjaD17a30iO3M6ODoiY2hhcnNldHMiO2E6MTp7aTowO3M6OToiU0hJRlRfSklTIjt9czo0OiJuYW1lIjtzOjY6IkV4Y2l0ZSI7fXM6MTY6Ind3dy5mYWNlYm9vay5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTM6InNlYXJjaC8/cT17a30iO3M6NDoibmFtZSI7czo4OiJGYWNlYm9vayI7fXM6MjU6Ind3dy5mYXN0YnJvd3NlcnNlYXJjaC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MjY6InJlc3VsdHMvcmVzdWx0cy5hc3B4P3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTk6IkZhc3QgQnJvd3NlciBTZWFyY2giO31zOjE3OiJ3d3cuZmluZGh1cnRpZy5kayI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czoxMDoiRmluZGh1cnRpZyI7fXM6MTU6Ind3dy5maXJlYmFsbC5kZSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNDoiYWpheC5hc3A/cT17a30iO3M6NDoibmFtZSI7czo4OiJGaXJlYmFsbCI7fXM6MTg6Ind3dy5maXJzdHNmaW5kLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czozOiJxcnkiO31zOjQ6Im5hbWUiO3M6MTA6IkZpcnN0c2ZpbmQiO31zOjE1OiJ3d3cuZml4c3VjaGUuZGUiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6NDoibmFtZSI7czo4OiJGaXhzdWNoZSI7fXM6MTE6Ind3dy5mbGl4LmRlIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjc6ImtleXdvcmQiO31zOjQ6Im5hbWUiO3M6NzoiRmxpeC5kZSI7fXM6MTc6InNlYXJjaC5mb29vb28uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEwOiJ3ZWIvP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiRm9vb29vIjt9czoxMjoiZm9yZXN0bGUub3JnIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJzZWFyY2gucGhwP3E9e2t9IjtzOjQ6Im5hbWUiO3M6ODoiRm9yZXN0bGUiO31zOjE1OiJ7fS5mb3Jlc3RsZS5vcmciO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6InNlYXJjaC5waHA/cT17a30iO3M6NDoibmFtZSI7czo4OiJGb3Jlc3RsZSI7fXM6MTM6ImZvcmVzdGxlLm1vYmkiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6InNlYXJjaC5waHA/cT17a30iO3M6NDoibmFtZSI7czo4OiJGb3Jlc3RsZSI7fXM6MjI6InJlY2hlcmNoZS5mcmFuY2l0ZS5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NDoibmFtZSI7fXM6NDoibmFtZSI7czo4OiJGcmFuY2l0ZSI7fXM6MTQ6InNlYXJjaC5mcmVlLmZyIjthOjI6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InEiO2k6MTtzOjI6InFzIjt9czo0OiJuYW1lIjtzOjQ6IkZyZWUiO31zOjE3OiJzZWFyY2gxLTIuZnJlZS5mciI7YToyOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJxIjtpOjE7czoyOiJxcyI7fXM6NDoibmFtZSI7czo0OiJGcmVlIjt9czoxNzoic2VhcmNoMS0xLmZyZWUuZnIiO2E6Mjp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6MjoicXMiO31zOjQ6Im5hbWUiO3M6NDoiRnJlZSI7fXM6MjA6InNlYXJjaC5mcmVlY2F1c2UuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InAiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9wPXtrfSI7czo0OiJuYW1lIjtzOjk6IkZyZWVDYXVzZSI7fXM6MTY6InN1Y2hlLmZyZWVuZXQuZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6NToicXVlcnkiO2k6MTtzOjg6IktleXdvcmRzIjt9czo4OiJiYWNrbGluayI7czoxNjoic3VjaGUvP3F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjc6IkZyZWVuZXQiO31zOjE0OiJmcmllbmRmZWVkLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTA6IkZyaWVuZEZlZWQiO31zOjE4OiJnYWlzLmNzLmNjdS5lZHUudHciO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6InNlYXJjaC5waHA/cT17a30iO3M6NDoibmFtZSI7czo0OiJHQUlTIjt9czoxNzoic2VhcmNoLmdlbmllby5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiJnE9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiR2VuaWVvIjt9czo5OiJnZW9uYS5uZXQiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjU6Ikdlb25hIjt9czoxNzoid3d3LmdpZ2FibGFzdC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkdpZ2FibGFzdCI7fXM6MTc6ImRpci5naWdhYmxhc3QuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6MjE6IkdpZ2FibGFzdCAoRGlyZWN0b3J5KSI7fXM6MTc6Ind3dy5nbmFkZW5tZWVyLmRlIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjc6ImtleXdvcmQiO31zOjQ6Im5hbWUiO3M6MTA6IkduYWRlbm1lZXIiO31zOjEzOiJ3d3cuZ29tZW8uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjg6IktleXdvcmRzIjtpOjE7czoyMDoiL1wvc2VhcmNoXC8oW15cL10rKS8iO31zOjg6ImJhY2tsaW5rIjtzOjExOiIvc2VhcmNoL3trfSI7czo0OiJuYW1lIjtzOjU6IkdvbWVvIjt9czoxNjoic2VhcmNoLmdvby5uZS5qcCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoyOiJNVCI7fXM6ODoiYmFja2xpbmsiO3M6MTQ6IndlYi5qc3A/TVQ9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiZ29vIjt9czoxOToib2Nuc2VhcmNoLmdvby5uZS5qcCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoyOiJNVCI7fXM6ODoiYmFja2xpbmsiO3M6MTQ6IndlYi5qc3A/TVQ9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiZ29vIjt9czoxMDoiZ29vZ2xlLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czo5OiJnb29nbGUue30iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MTU6Ind3dzIuZ29vZ2xlLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoxNToiaXB2Ni5nb29nbGUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjEzOiJnby5nb29nbGUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjEzOiJ3d3dnb29nbGUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjEyOiJ3d3dnb29nbGUue30iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MTA6ImdvZ29sZS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6OToiZ29nb2xlLnt9IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjEwOiJncHBnbGUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjk6ImdwcGdsZS57fSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoxMDoiZ29vZ2VsLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czo5OiJnb29nZWwue30iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MTQ6InNlYXJjaC5hdmcuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjE1OiJpc2VhcmNoLmF2Zy5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MTc6InNlYXJjaC5jaGVkb3QuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjQ6InRleHQiO31zOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoxMToid3d3LmNubi5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoxMzoiZGFya29vZ2xlLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjIwOiJzZWFyY2guZGFya29vZ2xlLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjE3OiJzZWFyY2guZm94dGFiLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjIyOiJ3d3cuZ29vb2Z1bGxzZWFyY2guY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjg6IktleXdvcmRzIjt9czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MTU6InNlYXJjaC5oaXlvLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo4OiJLZXl3b3JkcyI7fXM6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjIyOiJzZWFyY2guaW5jcmVkaW1haWwuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjg6IktleXdvcmRzIjt9czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MjM6InNlYXJjaDEuaW5jcmVkaW1haWwuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjg6IktleXdvcmRzIjt9czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MjM6InNlYXJjaDIuaW5jcmVkaW1haWwuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjg6IktleXdvcmRzIjt9czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MjM6InNlYXJjaDMuaW5jcmVkaW1haWwuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjg6IktleXdvcmRzIjt9czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MjM6InNlYXJjaDQuaW5jcmVkaW1haWwuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjg6IktleXdvcmRzIjt9czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MTg6InNlYXJjaC5zd2VldGltLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo4OiJLZXl3b3JkcyI7fXM6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjE0OiJ3d3cuZmFzdHdlYi5pdCI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo4OiJLZXl3b3JkcyI7fXM6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjE1OiJzZWFyY2guanVuby5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoxNDoic2VhcmNoLnp1bS5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoxMToiZmluZC50ZGMuZGsiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoxMDoiaXQubHVuYS50diI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjI1OiJzZWFyY2hyZXN1bHRzLnZlcml6b24uY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MTg6InNlYXJjaC53YWxsYS5jby5pbCI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjE1OiJzZWFyY2guYWxvdC5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoxMzoic3VjaGUuZ214Lm5ldCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjIxOiJzZWFyY2guaW5jcmVkaWJhci5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6InNlYXJjaC5waHA/cT17a30iO3M6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjIwOiJ3d3cuZGVsdGEtc2VhcmNoLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MjE6Ind3dzEuZGVsdGEtc2VhcmNoLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MTU6InNlYXJjaC4xdW5kMS5kZSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjE0OiJzdWNoZS4xdW5kMS5kZSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjIwOiJzZWFyY2guem9uZWFsYXJtLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjE2OiJzdGFydC5sZW5vdm8uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjIyOiJzZWFyY2gvaW5kZXgucGhwP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czo3OiJ3b3cuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjIyOiJzZWFyY2gvaW5kZXgucGhwP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoxMDoie30ud293LmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoyMjoic2VhcmNoL2luZGV4LnBocD9xPXtrfSI7czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MTg6InNlYXJjaC5sZW9uYXJkby5pdCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoyMjoic2VhcmNoL2luZGV4LnBocD9xPXtrfSI7czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MTk6Ind3dy5vcHR1c3pvby5jb20uYXUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MjI6InNlYXJjaC9pbmRleC5waHA/cT17a30iO3M6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjI1OiJzZWFyY2guZG9scGhpbi1icm93c2VyLmpwIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjIyOiJzZWFyY2gvaW5kZXgucGhwP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoxODoibmV0bGF2aXMuYXppb25lLmpwIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjIyOiJzZWFyY2gvaW5kZXgucGhwP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoxMzoic2VhcmNoLm5hbi5zbyI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoyMjoic2VhcmNoL2luZGV4LnBocD9xPXtrfSI7czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MTk6ImNnaTIubmludGVuZG8uY28uanAiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToiZ3NjLnEiO31zOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoyMzoic2VhcmNoLnNtdC5kb2NvbW8ubmUuanAiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MjoiTVQiO31zOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoyOToiaW1hZ2Uuc2VhcmNoLnNtdC5kb2NvbW8ubmUuanAiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MjoiTVQiO31zOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoxMDoiZ2Zzb3NvLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjY6Ikdvb2dsZSI7fXM6MjU6InNlYXJjaGVzLnNhZmVob21lcGFnZS5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6NDoibmFtZSI7czo2OiJHb29nbGUiO31zOjIxOiJzZWFyY2hlcy5mLXNlY3VyZS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJzZWFyY2g/cXVlcnk9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czozMDoid2ViY2FjaGUuZ29vZ2xldXNlcmNvbnRlbnQuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjQ5OiIvXC9zZWFyY2hcP3E9Y2FjaGU6KD86W0EtWmEtejAtOV0rKTpbXitdKyhbXiZdKykvIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiR29vZ2xlIjt9czoyMToiYmxvZ3NlYXJjaC5nb29nbGUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJibG9nc2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTc6Ikdvb2dsZSBCbG9nc2VhcmNoIjt9czoyMDoiYmxvZ3NlYXJjaC5nb29nbGUue30iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImJsb2dzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czoxNzoiR29vZ2xlIEJsb2dzZWFyY2giO31zOjE0OiJnb29nbGUuY29tL2NzZSI7YToyOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJxIjtpOjE7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czoyMDoiR29vZ2xlIEN1c3RvbSBTZWFyY2giO31zOjEzOiJnb29nbGUue30vY3NlIjthOjI6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InEiO2k6MTtzOjU6InF1ZXJ5Ijt9czo0OiJuYW1lIjtzOjIwOiJHb29nbGUgQ3VzdG9tIFNlYXJjaCI7fXM6MTQ6ImNzZS5nb29nbGUuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InEiO2k6MTtzOjU6InF1ZXJ5Ijt9czo0OiJuYW1lIjtzOjIwOiJHb29nbGUgQ3VzdG9tIFNlYXJjaCI7fXM6MTM6ImNzZS5nb29nbGUue30iO2E6Mjp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6MjA6Ikdvb2dsZSBDdXN0b20gU2VhcmNoIjt9czoxNzoiZ29vZ2xlLmNvbS9jdXN0b20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6MjA6Ikdvb2dsZSBDdXN0b20gU2VhcmNoIjt9czoxNjoiZ29vZ2xlLnt9L2N1c3RvbSI7YToyOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJxIjtpOjE7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czoyMDoiR29vZ2xlIEN1c3RvbSBTZWFyY2giO31zOjE3OiJpbWFnZXMuZ29vZ2xlLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoiaW1hZ2VzP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTM6Ikdvb2dsZSBJbWFnZXMiO31zOjE2OiJpbWFnZXMuZ29vZ2xlLnt9IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJpbWFnZXM/cT17a30iO3M6NDoibmFtZSI7czoxMzoiR29vZ2xlIEltYWdlcyI7fXM6MTU6Im1hcHMuZ29vZ2xlLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMDoibWFwcz9xPXtrfSI7czo0OiJuYW1lIjtzOjExOiJHb29nbGUgTWFwcyI7fXM6MTQ6Im1hcHMuZ29vZ2xlLnt9IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEwOiJtYXBzP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTE6Ikdvb2dsZSBNYXBzIjt9czoxNToibmV3cy5nb29nbGUuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6MTE6Ikdvb2dsZSBOZXdzIjt9czoxNDoibmV3cy5nb29nbGUue30iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6NDoibmFtZSI7czoxMToiR29vZ2xlIE5ld3MiO31zOjE4OiJzY2hvbGFyLmdvb2dsZS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTM6InNjaG9sYXI/cT17a30iO3M6NDoibmFtZSI7czoxNDoiR29vZ2xlIFNjaG9sYXIiO31zOjE3OiJzY2hvbGFyLmdvb2dsZS57fSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMzoic2Nob2xhcj9xPXtrfSI7czo0OiJuYW1lIjtzOjE0OiJHb29nbGUgU2Nob2xhciI7fXM6MTk6Imdvb2dsZS5jb20vcHJvZHVjdHMiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTU6Ij9xPXtrfSZ0Ym09c2hvcCI7czo0OiJuYW1lIjtzOjE1OiJHb29nbGUgU2hvcHBpbmciO31zOjE4OiJnb29nbGUue30vcHJvZHVjdHMiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTU6Ij9xPXtrfSZ0Ym09c2hvcCI7czo0OiJuYW1lIjtzOjE1OiJHb29nbGUgU2hvcHBpbmciO31zOjIwOiJlbmNyeXB0ZWQuZ29vZ2xlLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTA6Ikdvb2dsZSBTU0wiO31zOjI2OiJnb29nbGVzeW5kaWNhdGVkc2VhcmNoLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjI0OiJHb29nbGUgc3luZGljYXRlZCBzZWFyY2giO31zOjIwOiJ0cmFuc2xhdGUuZ29vZ2xlLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjE5OiJHb29nbGUgVHJhbnNsYXRpb25zIjt9czoxNjoidmlkZW8uZ29vZ2xlLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoyMDoic2VhcmNoP3E9e2t9JnRibT12aWQiO3M6NDoibmFtZSI7czoxMjoiR29vZ2xlIFZpZGVvIjt9czoxNToid3d3LmdveWVsbG93LmRlIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjM6Ik1ETiI7fXM6NDoibmFtZSI7czoxMToiR29ZZWxsb3cuZGUiO31zOjE2OiJ3d3cuZ3VsZXNpZGVyLm5vIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6MTA6Ikd1bGUgU2lkZXIiO31zOjE0OiJ3d3cuaGFvc291LmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo3OiJzP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiSGFvc291Ijt9czoxNjoid3d3LmhpZ2hiZWFtLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNzoiU2VhcmNoLmFzcHg/cT17a30iO3M6NDoibmFtZSI7czo4OiJIaWdoQmVhbSI7fXM6MTg6InJlcS5oaXQtcGFyYWRlLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoyOiJwNyI7fXM6ODoiYmFja2xpbmsiO3M6Mjg6ImdlbmVyYWwvcmVjaGVyY2hlLmFzcD9wNz17a30iO3M6NDoibmFtZSI7czoxMDoiSGl0LVBhcmFkZSI7fXM6MjA6ImNsYXNzLmhpdC1wYXJhZGUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjI6InA3Ijt9czo4OiJiYWNrbGluayI7czoyODoiZ2VuZXJhbC9yZWNoZXJjaGUuYXNwP3A3PXtrfSI7czo0OiJuYW1lIjtzOjEwOiJIaXQtUGFyYWRlIjt9czoxODoid3d3LmhpdC1wYXJhZGUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjI6InA3Ijt9czo4OiJiYWNrbGluayI7czoyODoiZ2VuZXJhbC9yZWNoZXJjaGUuYXNwP3A3PXtrfSI7czo0OiJuYW1lIjtzOjEwOiJIaXQtUGFyYWRlIjt9czo5OiJob2xtZXMuZ2UiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6InNlYXJjaC5odG0/cT17a30iO3M6NDoibmFtZSI7czo2OiJIb2xtZXMiO31zOjE1OiJ3d3cuaG9vc2Vlay5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6OToicmVjaGVyY2hlIjt9czo4OiJiYWNrbGluayI7czoxNzoid2ViP3JlY2hlcmNoZT17a30iO3M6NDoibmFtZSI7czo3OiJIb29zZWVrIjt9czoxNDoid3d3LmhvdGJvdC5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NjoiSG90Ym90Ijt9czoxNToic3RhcnQuaXBsYXkuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjI0OiJzZWFyY2hyZXN1bHRzLmFzcHg/cT17a30iO3M6NDoibmFtZSI7czo2OiJJLXBsYXkiO31zOjE5OiJibG9ncy5pY2Vyb2NrZXQuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo5OiJJY2Vyb2NrZXQiO31zOjExOiJ3d3cuaWNxLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoyNDoic2VhcmNoL3Jlc3VsdHMucGhwP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MzoiSUNRIjt9czoxNDoic2VhcmNoLmljcS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MjQ6InNlYXJjaC9yZXN1bHRzLnBocD9xPXtrfSI7czo0OiJuYW1lIjtzOjM6IklDUSI7fXM6MTE6Ind3dy5pbHNlLm5sIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjEwOiJzZWFyY2hfZm9yIjt9czo4OiJiYWNrbGluayI7czoxNToiP3NlYXJjaF9mb3I9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiSWxzZSBOTCI7fXM6MTY6InNlYXJjaC5pbWVzaC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6Mjoic2kiO31zOjg6ImJhY2tsaW5rIjtzOjk6IndlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjU6ImlNZXNoIjt9czoxNDoid3d3Mi5pbmJveC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MjY6InNlYXJjaC9yZXN1bHRzMS5hc3B4P3E9e2t9IjtzOjQ6Im5hbWUiO3M6NToiSW5ib3giO31zOjEzOiJpbmZvc3BhY2UuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiIvc2VhcmNoL3dlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MTE6ImRvZ3BpbGUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiIvc2VhcmNoL3dlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MTM6InRhdHRvb2RsZS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTc6Ii9zZWFyY2gvd2ViP3E9e2t9IjtzOjQ6Im5hbWUiO3M6OToiSW5mb1NwYWNlIjt9czoxNToibWV0YWNyYXdsZXIuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiIvc2VhcmNoL3dlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MTI6IndlYmZldGNoLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNzoiL3NlYXJjaC93ZWI/cT17a30iO3M6NDoibmFtZSI7czo5OiJJbmZvU3BhY2UiO31zOjE0OiJ3ZWJjcmF3bGVyLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNzoiL3NlYXJjaC93ZWI/cT17a30iO3M6NDoibmFtZSI7czo5OiJJbmZvU3BhY2UiO31zOjE2OiJzZWFyY2gua2l3ZWUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiIvc2VhcmNoL3dlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MjA6InNlYXJjaGVzLnZpLXZpZXcuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiIvc2VhcmNoL3dlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MjM6InNlYXJjaC53ZWJzc2VhcmNoZXMuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiIvc2VhcmNoL3dlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MjM6InNlYXJjaC5mYmRvd25sb2FkZXIuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiIvc2VhcmNoL3dlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MjM6InNlYXJjaGVzMy5nbG9ib3Nvc28uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiIvc2VhcmNoL3dlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MjE6IndzZHNvbGQuaW5mb3NwYWNlLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo0MToiL1wvW15cL10rXC93c1wvcmVzdWx0c1wvW15cL10rXC8oW15cL10rKS8iO31zOjg6ImJhY2tsaW5rIjtzOjYyOiJwZW1vbml0b3Job3N0ZWQvd3MvcmVzdWx0cy9XZWIve2t9LzEvNDE3L1RvcE5hdmlnYXRpb24vU291cmNlLyI7czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MTY6InNlYXJjaC5hdmFzdC5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6NDoibmFtZSI7czo5OiJJbmZvU3BhY2UiO31zOjE5OiJpc2VhcmNoLmJhYnlsb24uY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6OToiSW5mb1NwYWNlIjt9czoxOToic3RhcnQuZmFjZW1vb2RzLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJzIjt9czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MTg6InN0YXJ0LmZ1bm1vb2RzLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MTk6InNlYXJjaC5tYWdlbnRpYy5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6NDoibmFtZSI7czo5OiJJbmZvU3BhY2UiO31zOjI3OiJzZWFyY2guc2VhcmNoY29tcGxldGlvbi5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6NDoibmFtZSI7czo5OiJJbmZvU3BhY2UiO31zOjI2OiJ3d3cuc2VhcmNobW9iaWxlb25saW5lLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MjE6ImlzZWFyY2guZ2xhcnlzb2Z0LmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MTg6InNlYXJjaC5jaGF0enVtLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MTc6ImhvbWUuc3BlZWRiaXQuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6OToiSW5mb1NwYWNlIjt9czoxMzoic2VhcmNoLmIxLm9yZyI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MTI6InNlYXJjaHlhLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MjA6InNlYXJjaC5oYW5keWNhZmUuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6OToiSW5mb1NwYWNlIjt9czoxMzoic2VhcmNoLnY5LmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MTg6InNlYXJjaC5pbWluZW50LmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjk6IkluZm9TcGFjZSI7fXM6MjM6InV0b3JyZW50Lmluc3BzZWFyY2guY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6OToiSW5mb1NwYWNlIjt9czoyMToiZ292b21lLmluc3BzZWFyY2guY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6OToiSW5mb1NwYWNlIjt9czoyMToid3d3Lmdvb2dsZS5pbnRlcmlhLnBsIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzenVrYWo/cT17a30iO3M6NDoibmFtZSI7czo3OiJJbnRlcmlhIjt9czoxMToiaXhxdWljay5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NzoiSXhxdWljayI7fXM6MTg6Ind3dy5ldS5peHF1aWNrLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czo3OiJJeHF1aWNrIjt9czoxMDoiaXhxdWljay5kZSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czo3OiJJeHF1aWNrIjt9czoxNDoid3d3Lml4cXVpY2suZGUiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NzoiSXhxdWljayI7fXM6MTQ6InVzLml4cXVpY2suY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo0OiJuYW1lIjtzOjc6Ikl4cXVpY2siO31zOjE3OiJzMS51cy5peHF1aWNrLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czo3OiJJeHF1aWNrIjt9czoxNzoiczIudXMuaXhxdWljay5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NzoiSXhxdWljayI7fXM6MTc6InMzLnVzLml4cXVpY2suY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo0OiJuYW1lIjtzOjc6Ikl4cXVpY2siO31zOjE3OiJzNC51cy5peHF1aWNrLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czo3OiJJeHF1aWNrIjt9czoxNzoiczUudXMuaXhxdWljay5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NzoiSXhxdWljayI7fXM6MTQ6ImV1Lml4cXVpY2suY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo0OiJuYW1lIjtzOjc6Ikl4cXVpY2siO31zOjE3OiJzOC1ldS5peHF1aWNrLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czo3OiJJeHF1aWNrIjt9czoxNjoiczEtZXUuaXhxdWljay5kZSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czo3OiJJeHF1aWNrIjt9czoxODoiczItZXU0Lml4cXVpY2suY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo0OiJuYW1lIjtzOjc6Ikl4cXVpY2siO31zOjE4OiJzNS1ldTQuaXhxdWljay5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NzoiSXhxdWljayI7fXM6MTM6Imp1bmdsZWtleS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjM3OiJzZWFyY2gucGhwP3F1ZXJ5PXtrfSZ0eXBlPXdlYiZsYW5nPWVuIjtzOjQ6Im5hbWUiO3M6MTA6Ikp1bmdsZSBLZXkiO31zOjEyOiJqdW5nbGVrZXkuZnIiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjM3OiJzZWFyY2gucGhwP3F1ZXJ5PXtrfSZ0eXBlPXdlYiZsYW5nPWVuIjtzOjQ6Im5hbWUiO3M6MTA6Ikp1bmdsZSBLZXkiO31zOjIwOiJ3d3cuanVuZ2xlLXNwaWRlci5kZSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjEzOiJKdW5nbGUgU3BpZGVyIjt9czoxMjoianl4by4xMTg4LmN6IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjc6InM/cT17a30iO3M6NDoibmFtZSI7czo0OiJKeXhvIjt9czoxNjoiazlzYWZlc2VhcmNoLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNjoic2VhcmNoLmpzcD9xPXtrfSI7czo0OiJuYW1lIjtzOjE0OiJLOSBTYWZlIFNlYXJjaCI7fXM6MTQ6Ind3dy5rYXRhd2ViLml0IjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6NzoiS2F0YXdlYiI7fXM6MTQ6Ind3dy5rZW5zYXEuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjk6IndlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjY6IktlbnNhcSI7fXM6MTM6Ind3dy5rdmFzaXIubm8iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTA6ImFsbGU/cT17a30iO3M6NDoibmFtZSI7czo2OiJLdmFzaXIiO31zOjEzOiJ3d3cudG9pbGUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czoyODoiTGEgVG9pbGUgRHUgUXXDqWJlYyAoR29vZ2xlKSI7fXM6MTM6IndlYi50b2lsZS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjI4OiJMYSBUb2lsZSBEdSBRdcOpYmVjIChHb29nbGUpIjt9czoxMjoid3d3LmxhdG5lLmx2IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE1OiJzaWV0cy5waHA/cT17a30iO3M6NDoibmFtZSI7czo1OiJMYXRuZSI7fXM6NToibG8uc3QiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NzoieF9xdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6MzA6ImNnaS1iaW4vZW9sb3N0LmNnaT94X3F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjU6IkxvLnN0Ijt9czoxNToid3d3Lmxvb2thbnkuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjM2OiIvKD86c2VhcmNofGltYWdlc3x2aWRlb3MpXC8oW15cL10rKS8iO31zOjQ6Im5hbWUiO3M6NzoiTG9va0FueSI7fXM6MTc6Ind3dy5sb29rc21hcnQuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjM6ImtleSI7fXM6NDoibmFtZSI7czo5OiJMb29rc21hcnQiO31zOjE2OiJzZWFyY2gubHljb3MuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo4OiJiYWNrbGluayI7czoxMDoiP3F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjU6Ikx5Y29zIjt9czo4OiJseWNvcy57fSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6MTA6Ij9xdWVyeT17a30iO3M6NDoibmFtZSI7czo1OiJMeWNvcyI7fXM6MTQ6Ind3dy5tYWFpbG0uY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InRla3N0Ijt9czo0OiJuYW1lIjtzOjEwOiJtYWFpbG0uY29tIjt9czoxMDoiZ28ubWFpbC5ydSI7YTo0OntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxODoic2VhcmNoP3JjaD1lJnE9e2t9IjtzOjg6ImNoYXJzZXRzIjthOjI6e2k6MDtzOjU6IlVURi04IjtpOjE7czoxMjoid2luZG93cy0xMjUxIjt9czo0OiJuYW1lIjtzOjY6Ik1haWxydSI7fXM6MTM6Ind3dy5tYW1tYS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJyZXN1bHQucGhwP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NToiTWFtbWEiO31zOjE3OiJtYW1tYTc1Lm1hbW1hLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6InJlc3VsdC5waHA/cT17a30iO3M6NDoibmFtZSI7czo1OiJNYW1tYSI7fXM6MTc6Ind3dy5tZWluZXN0YWR0LmRlIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6IndvcmRzIjt9czo0OiJuYW1lIjtzOjEzOiJNZWluZXN0YWR0LmRlIjt9czo3OiJtZXRhLnVhIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJzZWFyY2guYXNwP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiTWV0YS51YSI7fXM6MTc6InMxLm1ldGFjcmF3bGVyLmRlIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjM6InFyeSI7fXM6ODoiYmFja2xpbmsiO3M6ODoiP3FyeT17a30iO3M6NDoibmFtZSI7czoxNDoiTWV0YUNyYXdsZXIgREUiO31zOjE3OiJzMi5tZXRhY3Jhd2xlci5kZSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czozOiJxcnkiO31zOjg6ImJhY2tsaW5rIjtzOjg6Ij9xcnk9e2t9IjtzOjQ6Im5hbWUiO3M6MTQ6Ik1ldGFDcmF3bGVyIERFIjt9czoxNzoiczMubWV0YWNyYXdsZXIuZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MzoicXJ5Ijt9czo4OiJiYWNrbGluayI7czo4OiI/cXJ5PXtrfSI7czo0OiJuYW1lIjtzOjE0OiJNZXRhQ3Jhd2xlciBERSI7fXM6MjU6Im1ldGEucnJ6bi51bmktaGFubm92ZXIuZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NzoiZWluZ2FiZSI7fXM6ODoiYmFja2xpbmsiO3M6MzQ6Im1ldGEvY2dpLWJpbi9tZXRhLmdlcjE/ZWluZ2FiZT17a30iO3M6NDoibmFtZSI7czo3OiJNZXRhZ2VyIjt9czoxNDoid3d3Lm1ldGFnZXIuZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NzoiZWluZ2FiZSI7fXM6ODoiYmFja2xpbmsiO3M6MzQ6Im1ldGEvY2dpLWJpbi9tZXRhLmdlcjE/ZWluZ2FiZT17a30iO3M6NDoibmFtZSI7czo3OiJNZXRhZ2VyIjt9czoxMDoibWV0YWdlci5kZSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo3OiJlaW5nYWJlIjt9czo4OiJiYWNrbGluayI7czozNDoibWV0YS9jZ2ktYmluL21ldGEuZ2VyMT9laW5nYWJlPXtrfSI7czo0OiJuYW1lIjtzOjc6Ik1ldGFnZXIiO31zOjExOiJtZXRhZ2VyMi5kZSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoyMjoic2VhcmNoL2luZGV4LnBocD9xPXtrfSI7czo0OiJuYW1lIjtzOjg6Ik1ldGFnZXIyIjt9czoxOToid3d3Lm1pc3Rlci13b25nLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo4OiJrZXl3b3JkcyI7fXM6ODoiYmFja2xpbmsiO3M6MjA6InNlYXJjaC8/a2V5d29yZHM9e2t9IjtzOjQ6Im5hbWUiO3M6MTE6Ik1pc3RlciBXb25nIjt9czoxODoid3d3Lm1pc3Rlci13b25nLmRlIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjg6ImtleXdvcmRzIjt9czo4OiJiYWNrbGluayI7czoyMDoic2VhcmNoLz9rZXl3b3Jkcz17a30iO3M6NDoibmFtZSI7czoxMToiTWlzdGVyIFdvbmciO31zOjIyOiJ3d3cubW9uc3RlcmNyYXdsZXIuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjM6InFyeSI7fXM6NDoibmFtZSI7czoxNDoiTW9uc3RlcmNyYXdsZXIiO31zOjEzOiJ3d3cubW96Ym90LmZyIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiJyZXN1bHRzLnBocD9xPXtrfSI7czo0OiJuYW1lIjtzOjY6Im1vemJvdCI7fXM6MTY6Ind3dy5tb3pib3QuY28udWsiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTc6InJlc3VsdHMucGhwP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoibW96Ym90Ijt9czoxNDoid3d3Lm1vemJvdC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTc6InJlc3VsdHMucGhwP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoibW96Ym90Ijt9czoyNToic2VhcmNoc2VydmljZS5teXNwYWNlLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czozOiJxcnkiO31zOjg6ImJhY2tsaW5rIjtzOjU2OiJpbmRleC5jZm0/ZnVzZWFjdGlvbj1zaXRlc2VhcmNoLnJlc3VsdHMmdHlwZT1XZWImcXJ5PXtrfSI7czo0OiJuYW1lIjtzOjc6Ik15U3BhY2UiO31zOjE2OiJ3d3cubXlzZWFyY2guY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjk6InNlYXJjaGZvciI7aToxO3M6OToic2VhcmNoRm9yIjt9czo4OiJiYWNrbGluayI7czozMzoic2VhcmNoL0FqbWFpbi5qaHRtbD9zZWFyY2hmb3I9e2t9IjtzOjQ6Im5hbWUiO3M6MTE6Ik15V2ViU2VhcmNoIjt9czoxODoibXMxMTQubXlzZWFyY2guY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjk6InNlYXJjaGZvciI7aToxO3M6OToic2VhcmNoRm9yIjt9czo4OiJiYWNrbGluayI7czozMzoic2VhcmNoL0FqbWFpbi5qaHRtbD9zZWFyY2hmb3I9e2t9IjtzOjQ6Im5hbWUiO3M6MTE6Ik15V2ViU2VhcmNoIjt9czoxODoibXMxNDYubXlzZWFyY2guY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjk6InNlYXJjaGZvciI7aToxO3M6OToic2VhcmNoRm9yIjt9czo4OiJiYWNrbGluayI7czozMzoic2VhcmNoL0FqbWFpbi5qaHRtbD9zZWFyY2hmb3I9e2t9IjtzOjQ6Im5hbWUiO3M6MTE6Ik15V2ViU2VhcmNoIjt9czoyMToia2YubXlzZWFyY2gubXl3YXkuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjk6InNlYXJjaGZvciI7aToxO3M6OToic2VhcmNoRm9yIjt9czo4OiJiYWNrbGluayI7czozMzoic2VhcmNoL0FqbWFpbi5qaHRtbD9zZWFyY2hmb3I9e2t9IjtzOjQ6Im5hbWUiO3M6MTE6Ik15V2ViU2VhcmNoIjt9czoyMToia2kubXlzZWFyY2gubXl3YXkuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjk6InNlYXJjaGZvciI7aToxO3M6OToic2VhcmNoRm9yIjt9czo4OiJiYWNrbGluayI7czozMzoic2VhcmNoL0FqbWFpbi5qaHRtbD9zZWFyY2hmb3I9e2t9IjtzOjQ6Im5hbWUiO3M6MTE6Ik15V2ViU2VhcmNoIjt9czoxNjoic2VhcmNoLm15d2F5LmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czo5OiJzZWFyY2hmb3IiO2k6MTtzOjk6InNlYXJjaEZvciI7fXM6ODoiYmFja2xpbmsiO3M6MzM6InNlYXJjaC9Bam1haW4uamh0bWw/c2VhcmNoZm9yPXtrfSI7czo0OiJuYW1lIjtzOjExOiJNeVdlYlNlYXJjaCI7fXM6MjI6InNlYXJjaC5teXdlYnNlYXJjaC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6OToic2VhcmNoZm9yIjtpOjE7czo5OiJzZWFyY2hGb3IiO31zOjg6ImJhY2tsaW5rIjtzOjMzOiJzZWFyY2gvQWptYWluLmpodG1sP3NlYXJjaGZvcj17a30iO3M6NDoibmFtZSI7czoxMToiTXlXZWJTZWFyY2giO31zOjEyOiJ3d3cubmFqZGkuc2kiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6InNlYXJjaC5qc3A/cT17a30iO3M6NDoibmFtZSI7czo4OiJOYWpkaS5zaSI7fXM6MTU6InNlYXJjaC5uYXRlLmNvbSI7YTo0OntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoyMToic2VhcmNoL2FsbC5odG1sP3E9e2t9IjtzOjg6ImNoYXJzZXRzIjthOjE6e2k6MDtzOjY6IkVVQy1LUiI7fXM6NDoibmFtZSI7czo0OiJOYXRlIjt9czoxNjoic2VhcmNoLm5hdmVyLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6MjI6InNlYXJjaC5uYXZlcj9xdWVyeT17a30iO3M6NDoibmFtZSI7czo1OiJOYXZlciI7fXM6MjM6ImtvLnNlYXJjaC5uZWVkMmZpbmQuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjk6InNlYXJjaGZvciI7fXM6ODoiYmFja2xpbmsiO3M6MzM6InNlYXJjaC9BSm1haW4uamh0bWw/c2VhcmNoZm9yPXtrfSI7czo0OiJuYW1lIjtzOjEwOiJOZWVkdG9maW5kIjt9czoxMToid3d3Lm5ldGkuZWUiO2E6NDp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjI0OiJjZ2ktYmluL290c2luZz9xdWVyeT17a30iO3M6ODoiY2hhcnNldHMiO2E6MTp7aTowO3M6MTA6Imlzby04ODU5LTEiO31zOjQ6Im5hbWUiO3M6NDoiTmV0aSI7fXM6MTY6InNlYXJjaC5uaWZ0eS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6NDoiVGV4dCI7fXM6ODoiYmFja2xpbmsiO3M6MjI6IndlYnNlYXJjaC9zZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo1OiJOaWZ0eSI7fXM6MjM6InNlYXJjaC5hemJ5LmZtd29ybGQubmV0IjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InEiO2k6MTtzOjQ6IlRleHQiO31zOjg6ImJhY2tsaW5rIjtzOjIyOiJ3ZWJzZWFyY2gvc2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NToiTmlmdHkiO31zOjIxOiJ2aWRlb3NlYXJjaC5uaWZ0eS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Mjoia3ciO31zOjg6ImJhY2tsaW5rIjtzOjEzOiJzZWFyY2g/a3c9e2t9IjtzOjQ6Im5hbWUiO3M6MTI6Ik5pZnR5IFZpZGVvcyI7fXM6ODoibmlnbWEucnUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicyI7fXM6ODoiYmFja2xpbmsiO3M6MTU6ImluZGV4LnBocD9zPXtrfSI7czo0OiJuYW1lIjtzOjU6Ik5pZ21hIjt9czoxNDoic3p1a2FqLm9uZXQucGwiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MjoicXQiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiJxdWVyeS5odG1sP3F0PXtrfSI7czo0OiJuYW1lIjtzOjc6Ik9uZXQucGwiO31zOjk6Im9ubGluZS5ubyI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoyMjoiZ29vZ2xlL2luZGV4LmpzcD9xPXtrfSI7czo0OiJuYW1lIjtzOjk6Ik9ubGluZS5ubyI7fXM6MTE6Ind3dy4xODgxLm5vIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6IlF1ZXJ5Ijt9czo4OiJiYWNrbGluayI7czoxNjoiTXVsdGkvP1F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjE3OiJPcHBseXNuaW5nZW4gMTg4MSI7fXM6MTU6ImJ1c2NhLm9yYW5nZS5lcyI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiT3JhbmdlIjt9czoyMDoibGVtb3RldXIua2Uudm9pbGEuZnIiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Mjoia3ciO31zOjg6ImJhY2tsaW5rIjtzOjc6Ij9rdz17a30iO3M6NDoibmFtZSI7czo2OiJPcmFuZ2UiO31zOjE4OiJsZW1vdGV1ci5vcmFuZ2UuZnIiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Mjoia3ciO31zOjg6ImJhY2tsaW5rIjtzOjc6Ij9rdz17a30iO3M6NDoibmFtZSI7czo2OiJPcmFuZ2UiO31zOjE2OiJ3d3cucGFwZXJiYWxsLmRlIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE0OiJzdWNoZS9zLz9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IlBhcGVyYmFsbCI7fXM6MjE6ImV4dGVybi5wZW9wbGVjaGVjay5kZSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNDoibGluay5waHA/cT17a30iO3M6NDoibmFtZSI7czoxMToiUGVvcGxlQ2hlY2siO31zOjE5OiJzZWFyY2gucGVvcGxlcGMuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo4OiJQZW9wbGVQQyI7fXM6MTc6Ind3dy5waWNzZWFyY2guY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE1OiJpbmRleC5jZ2k/cT17a30iO3M6NDoibmFtZSI7czo5OiJQaWNzZWFyY2giO31zOjE0OiJ3d3cucGxhem9vLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjY6IlBsYXpvbyI7fXM6MTU6InBsdXNuZXR3b3JrLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo2OiI/cT17a30iO3M6NDoibmFtZSI7czoxMToiUGx1c05ldHdvcmsiO31zOjg6InBvaXNrLnJ1IjthOjQ6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjQ6InRleHQiO31zOjg6ImJhY2tsaW5rIjtzOjIyOiJjZ2ktYmluL3BvaXNrP3RleHQ9e2t9IjtzOjg6ImNoYXJzZXRzIjthOjE6e2k6MDtzOjEyOiJ3aW5kb3dzLTEyNTEiO31zOjQ6Im5hbWUiO3M6ODoiUG9pc2suUnUiO31zOjEzOiJzZWFyY2gucWlwLnJ1IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo4OiJiYWNrbGluayI7czoxNjoic2VhcmNoP3F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjY6InFpcC5ydSI7fXM6MTQ6Ind3dy5xdWFsaWdvLmF0IjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6NzoiUXVhbGlnbyI7fXM6MTQ6Ind3dy5xdWFsaWdvLmNoIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6NzoiUXVhbGlnbyI7fXM6MTQ6Ind3dy5xdWFsaWdvLmRlIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6NzoiUXVhbGlnbyI7fXM6MTQ6Ind3dy5xdWFsaWdvLm5sIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6NzoiUXVhbGlnbyI7fXM6MTM6Ind3dy5xd2FudC5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6NDoibmFtZSI7czo1OiJRd2FudCI7fXM6MTQ6ImxpdGUucXdhbnQuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6NToiUXdhbnQiO31zOjIzOiJ3ZWJzZWFyY2gucmFrdXRlbi5jby5qcCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoyOiJxdCI7fXM6ODoiYmFja2xpbmsiO3M6MTI6IldlYklTP3F0PXtrfSI7czo0OiJuYW1lIjtzOjc6IlJha3V0ZW4iO31zOjE1OiJub3ZhLnJhbWJsZXIucnUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6NToicXVlcnkiO2k6MTtzOjU6IndvcmRzIjt9czo4OiJiYWNrbGluayI7czoxNjoic2VhcmNoP3F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjc6IlJhbWJsZXIiO31zOjEzOiJzZWFyY2gucnIuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjExOiJSb2FkIFJ1bm5lciI7fXM6MTE6InJwbWZpbmQubmV0IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo4OiJiYWNrbGluayI7czozNToibGludXgvcnBtMmh0bWwvc2VhcmNoLnBocD9xdWVyeT17a30iO3M6NDoibmFtZSI7czo3OiJycG1maW5kIjt9czoxNToiZnIyLnJwbWZpbmQubmV0IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo4OiJiYWNrbGluayI7czozNToibGludXgvcnBtMmh0bWwvc2VhcmNoLnBocD9xdWVyeT17a30iO3M6NDoibmFtZSI7czo3OiJycG1maW5kIjt9czoxNjoicGVzcXVpc2Euc2Fwby5wdCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo2OiI/cT17a30iO3M6NDoibmFtZSI7czo0OiJTYXBvIjt9czo5OiJzY291ci5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MjI6Ii9zZWFyY2hcL1teXC9dK1wvKC4qKS8iO31zOjg6ImJhY2tsaW5rIjtzOjE0OiJzZWFyY2gvd2ViL3trfSI7czo0OiJuYW1lIjtzOjk6IlNjb3VyLmNvbSI7fXM6MTM6Ind3dy5zZWFyY2guY2giO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6OToiU2VhcmNoLmNoIjt9czoxNDoid3d3LnNlYXJjaC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9xPXtrfSI7czo0OiJuYW1lIjtzOjEwOiJTZWFyY2guY29tIjt9czoxNDoic2VhcmNoYWxvdC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTA6IlNlYXJjaGFsb3QiO31zOjIwOiJ3d3cuc2VhcmNoY2FudmFzLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo5OiJ3ZWI/cT17a30iO3M6NDoibmFtZSI7czoxMjoiU2VhcmNoQ2FudmFzIjt9czoxNzoid3d3LnNlYXJjaHkuY28udWsiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6ImluZGV4Lmh0bWw/cT17a30iO3M6NDoibmFtZSI7czo3OiJTZWFyY2h5Ijt9czoxNjoic2VhcmNoLnNlZXNhYS5qcCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoyNToiL1wvKFteXC9dKylcL2luZGV4XC5odG1sLyI7fXM6ODoiYmFja2xpbmsiO3M6MTQ6IntrfS9pbmRleC5odG1sIjtzOjQ6Im5hbWUiO3M6NjoiU2VlU2FhIjt9czoxMzoiYmcuc2V0b296LmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6InNlYXJjaD9xdWVyeT17a30iO3M6NDoibmFtZSI7czo2OiJTZXRvb3oiO31zOjEzOiJkYS5zZXRvb3ouY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo4OiJiYWNrbGluayI7czoxNjoic2VhcmNoP3F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjY6IlNldG9veiI7fXM6MTM6ImVsLnNldG9vei5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJzZWFyY2g/cXVlcnk9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiU2V0b296Ijt9czoxMzoiZmEuc2V0b296LmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6MTY6InNlYXJjaD9xdWVyeT17a30iO3M6NDoibmFtZSI7czo2OiJTZXRvb3oiO31zOjEzOiJ1ci5zZXRvb3ouY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo4OiJiYWNrbGluayI7czoxNjoic2VhcmNoP3F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjY6IlNldG9veiI7fXM6MTM6Int9LnNldG9vei5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjE2OiJzZWFyY2g/cXVlcnk9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiU2V0b296Ijt9czoxNjoic2VhcmNoLnNlem5hbS5jeiI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo2OiI/cT17a30iO3M6NDoibmFtZSI7czo2OiJTZXpuYW0iO31zOjE1OiJ2aWRlYS5zZXpuYW0uY3oiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTI6IlNlem5hbSBWaWRlYSI7fXM6MTY6Ind3dy5zaGFyZWxvb2suZnIiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Nzoia2V5d29yZCI7fXM6NDoibmFtZSI7czo5OiJTaGFyZWxvb2siO31zOjEzOiJ3d3cuc2t5bmV0LmJlIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjMxOiJzZXJ2aWNlcy9yZWNoZXJjaGUvZ29vZ2xlP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiU2t5bmV0Ijt9czo3OiJtLnNtLmNuIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjc6InM/cT17a30iO3M6NDoibmFtZSI7czo1OiJzbS5jbiI7fXM6MTA6Im0uc3Auc20uY24iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6Nzoicz9xPXtrfSI7czo0OiJuYW1lIjtzOjU6InNtLmNuIjt9czo5OiJ3d3cuc20uZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NToic20uZGUiO31zOjI2OiJzZWFyY2guc21hcnRhZGRyZXNzYmFyLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJzIjt9czo4OiJiYWNrbGluayI7czo2OiI/cz17a30iO3M6NDoibmFtZSI7czoxNToiU21hcnRBZGRyZXNzYmFyIjt9czoyNDoic2VhcmNoLnNtYXJ0c2hvcHBpbmcuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjM6Imt3ZCI7aToxO3M6ODoia2V5d29yZHMiO31zOjg6ImJhY2tsaW5rIjtzOjg6Ij9rd2Q9e2t9IjtzOjQ6Im5hbWUiO3M6MTM6IlNtYXJ0U2hvcHBpbmciO31zOjE0OiJzZWFyY2guc25hcC5kbyI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czo2OiI/cT17a30iO3M6NDoibmFtZSI7czo3OiJTbmFwLmRvIjt9czoxNjoid3d3LnNvLW5ldC5uZS5qcCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6MjE6InNlYXJjaC93ZWIvP3F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjY6IlNvLW5ldCI7fXM6MTg6InZpZGVvLnNvLW5ldC5uZS5qcCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoyOiJrdyI7fXM6ODoiYmFja2xpbmsiO3M6MTQ6InNlYXJjaC8/a3c9e2t9IjtzOjQ6Im5hbWUiO3M6MTM6IlNvLW5ldCBWaWRlb3MiO31zOjE5OiJzZWFyY2guc29mdG9uaWMuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjIxOiJkZWZhdWx0L2RlZmF1bHQ/cT17a30iO3M6NDoibmFtZSI7czo4OiJTb2Z0b25pYyI7fXM6MTM6Ind3dy5zb2dvdS5jb20iO2E6NDp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjEzOiJ3ZWI/cXVlcnk9e2t9IjtzOjg6ImNoYXJzZXRzIjthOjE6e2k6MDtzOjY6ImdiMjMxMiI7fXM6NDoibmFtZSI7czo1OiJTb2dvdSI7fXM6MTE6Im0uc29nb3UuY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjc6ImtleXdvcmQiO31zOjQ6Im5hbWUiO3M6NToiU29nb3UiO31zOjEyOiJ3d3cuc29zby5jb20iO2E6NDp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToidyI7fXM6ODoiYmFja2xpbmsiO3M6NzoicT93PXtrfSI7czo4OiJjaGFyc2V0cyI7YToxOntpOjA7czo2OiJnYjIzMTIiO31zOjQ6Im5hbWUiO3M6NDoiU29zbyI7fXM6MTQ6Ind3dy5zcHV0bmlrLnJ1IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cT17a30iO3M6NDoibmFtZSI7czo3OiJTcHV0bmlrIjt9czoyNjoic3RhcnRnb29nbGUuc3RhcnRwYWdpbmEubmwiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjIwOiJTdGFydHBhZ2luYSAoR29vZ2xlKSI7fXM6MTc6Ind3dy5zdGFydHNpZGVuLm5vIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjIwOiJzb2svaW5kZXguaHRtbD9xPXtrfSI7czo0OiJuYW1lIjtzOjEwOiJTdGFydHNpZGVuIjt9czoxMDoic3VjaGUuaW5mbyI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo4OiJLZXl3b3JkcyI7fXM6ODoiYmFja2xpbmsiO3M6MjI6InN1Y2hlLnBocD9LZXl3b3Jkcz17a30iO3M6NDoibmFtZSI7czoxMDoiU3VjaGUuaW5mbyI7fXM6MjA6Ind3dy5zdWNobWFzY2hpbmUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjc6InN1Y2hzdHIiO31zOjg6ImJhY2tsaW5rIjtzOjI2OiJjZ2ktYmluL3dvLmNnaT9zdWNoc3RyPXtrfSI7czo0OiJuYW1lIjtzOjE2OiJTdWNobWFzY2hpbmUuY29tIjt9czoxNToid3d3LnN1Y2huYXNlLmRlIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6ODoiU3VjaG5hc2UiO31zOjE0OiJzdXJmY2FueW9uLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjExOiJTdXJmIENhbnlvbiI7fXM6MTc6InN1Y2hlLnQtb25saW5lLmRlIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjUxOiJmYXN0LWNnaS90c2M/bWFuZGFudD10b2kmY29udGV4dD1pbnRlcm5ldC10YWImcT17a30iO3M6NDoibmFtZSI7czo4OiJULU9ubGluZSI7fXM6MjA6ImJyaXNiYW5lLnQtb25saW5lLmRlIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjUxOiJmYXN0LWNnaS90c2M/bWFuZGFudD10b2kmY29udGV4dD1pbnRlcm5ldC10YWImcT17a30iO3M6NDoibmFtZSI7czo4OiJULU9ubGluZSI7fXM6Mjg6Im5hdmlnYXRpb25zaGlsZmUudC1vbmxpbmUuZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6Mzg6ImR0YWcvZG5zL3Jlc3VsdHM/bW9kZT1zZWFyY2hfdG9wJnE9e2t9IjtzOjQ6Im5hbWUiO3M6ODoiVC1PbmxpbmUiO31zOjE1OiJ3d3cudGFsaW1iYS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Njoic2VhcmNoIjt9czo4OiJiYWNrbGluayI7czozNjoiaW5kZXgucGhwP3BhZ2U9c2VhcmNoL3dlYiZzZWFyY2g9e2t9IjtzOjQ6Im5hbWUiO3M6NzoidGFsaW1iYSI7fXM6MTg6Ind3dy50YWxrdGFsay5jby51ayI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6Mjk6InNlYXJjaC9yZXN1bHRzLmh0bWw/cXVlcnk9e2t9IjtzOjQ6Im5hbWUiO3M6ODoiVGFsa1RhbGsiO31zOjE0OiJ0ZWNobm9yYXRpLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czozOToic2VhcmNoP3JldHVybj1zaXRlcyZhdXRob3JpdHk9YWxsJnE9e2t9IjtzOjQ6Im5hbWUiO3M6MTA6IlRlY2hub3JhdGkiO31zOjEzOiJ3d3cudGVvbWEuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjk6IndlYj9xPXtrfSI7czo0OiJuYW1lIjtzOjU6IlRlb21hIjt9czoxNzoiYnVzY2Fkb3IudGVycmEuZXMiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjM2OiJEZWZhdWx0LmFzcHg/c291cmNlPVNlYXJjaCZxdWVyeT17a30iO3M6NDoibmFtZSI7czo1OiJUZXJyYSI7fXM6MTc6ImJ1c2NhZG9yLnRlcnJhLmNsIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo4OiJiYWNrbGluayI7czozNjoiRGVmYXVsdC5hc3B4P3NvdXJjZT1TZWFyY2gmcXVlcnk9e2t9IjtzOjQ6Im5hbWUiO3M6NToiVGVycmEiO31zOjIxOiJidXNjYWRvci50ZXJyYS5jb20uYnIiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjM2OiJEZWZhdWx0LmFzcHg/c291cmNlPVNlYXJjaCZxdWVyeT17a30iO3M6NDoibmFtZSI7czo1OiJUZXJyYSI7fXM6MTc6InNlYXJjaC50aXNjYWxpLml0IjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InEiO2k6MTtzOjM6ImtleSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiVGlzY2FsaSI7fXM6MjE6InNlYXJjaC1keW4udGlzY2FsaS5pdCI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJxIjtpOjE7czozOiJrZXkiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjc6IlRpc2NhbGkiO31zOjE4OiJobGVkYW5pLnRpc2NhbGkuY3oiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NzoiVGlzY2FsaSI7fXM6MTM6Ind3dy50aXh1bWEuZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Mjoic2MiO31zOjg6ImJhY2tsaW5rIjtzOjM2OiJpbmRleC5waHA/bXA9c2VhcmNoJnN0cD0mc2M9e2t9JnRnPTAiO3M6NDoibmFtZSI7czo2OiJUaXh1bWEiO31zOjE5OiJ3d3cudG9vbGJhcmhvbWUuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE3OiJzZWFyY2guYXNweD9xPXtrfSI7czo0OiJuYW1lIjtzOjExOiJUb29sYmFyaG9tZSI7fXM6MjI6InZzaGFyZS50b29sYmFyaG9tZS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTc6InNlYXJjaC5hc3B4P3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTE6IlRvb2xiYXJob21lIjt9czoxNjoid3d3LnRvcHByZWlzZS5jaCI7YTo0OntzOjY6InBhcmFtcyI7YToxOntpOjA7czo2OiJzZWFyY2giO31zOjg6ImJhY2tsaW5rIjtzOjIwOiJpbmRleC5waHA/c2VhcmNoPXtrfSI7czo4OiJjaGFyc2V0cyI7YToxOntpOjA7czoxMDoiSVNPLTg4NTktMSI7fXM6NDoibmFtZSI7czoxMjoiVG9wcHJlaXNlLmNoIjt9czoxMjoidG9wcHJlaXNlLmNoIjthOjQ6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjY6InNlYXJjaCI7fXM6ODoiYmFja2xpbmsiO3M6MjA6ImluZGV4LnBocD9zZWFyY2g9e2t9IjtzOjg6ImNoYXJzZXRzIjthOjE6e2k6MDtzOjEwOiJJU08tODg1OS0xIjt9czo0OiJuYW1lIjtzOjEyOiJUb3BwcmVpc2UuY2giO31zOjE1OiJmci50b3BwcmVpc2UuY2giO2E6NDp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Njoic2VhcmNoIjt9czo4OiJiYWNrbGluayI7czoyMDoiaW5kZXgucGhwP3NlYXJjaD17a30iO3M6ODoiY2hhcnNldHMiO2E6MTp7aTowO3M6MTA6IklTTy04ODU5LTEiO31zOjQ6Im5hbWUiO3M6MTI6IlRvcHByZWlzZS5jaCI7fXM6MTU6ImRlLnRvcHByZWlzZS5jaCI7YTo0OntzOjY6InBhcmFtcyI7YToxOntpOjA7czo2OiJzZWFyY2giO31zOjg6ImJhY2tsaW5rIjtzOjIwOiJpbmRleC5waHA/c2VhcmNoPXtrfSI7czo4OiJjaGFyc2V0cyI7YToxOntpOjA7czoxMDoiSVNPLTg4NTktMSI7fXM6NDoibmFtZSI7czoxMjoiVG9wcHJlaXNlLmNoIjt9czoxNToiZW4udG9wcHJlaXNlLmNoIjthOjQ6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjY6InNlYXJjaCI7fXM6ODoiYmFja2xpbmsiO3M6MjA6ImluZGV4LnBocD9zZWFyY2g9e2t9IjtzOjg6ImNoYXJzZXRzIjthOjE6e2k6MDtzOjEwOiJJU08tODg1OS0xIjt9czo0OiJuYW1lIjtzOjEyOiJUb3BwcmVpc2UuY2giO31zOjE1OiJ3d3cudHJvdXZlei5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6MTE6IlRyb3V2ZXouY29tIjt9czoxOToid3d3LnRyb3ZhcmFwaWRvLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNjoicmVzdWx0LnBocD9xPXtrfSI7czo0OiJuYW1lIjtzOjExOiJUcm92YVJhcGlkbyI7fXM6MjI6Ind3dy50cnVzdGVkLXNlYXJjaC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToidyI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD93PXtrfSI7czo0OiJuYW1lIjtzOjE0OiJUcnVzdGVkIFNlYXJjaCI7fXM6MTU6Ind3dy50d2luZ2x5LmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiVHdpbmdseSI7fXM6MTY6ImJ1c2NhLnVvbC5jb20uYnIiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTE6Ii93ZWIvP3E9e2t9IjtzOjQ6Im5hbWUiO3M6MTA6InVvbC5jb20uYnIiO31zOjExOiJ3d3cudXJsLm9yZyI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMToiP2w9ZGUmcT17a30iO3M6NDoibmFtZSI7czoxMzoiVVJMLk9SR2FuemllciI7fXM6MTM6Ind3dy52aW5kZW4ubmwiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiVmluZGVuIjt9czoxMzoid3d3LnZpbmRleC5ubCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxMDoic2VhcmNoX2ZvciI7fXM6ODoiYmFja2xpbmsiO3M6MTk6Ii93ZWI/c2VhcmNoX2Zvcj17a30iO3M6NDoibmFtZSI7czo2OiJWaW5kZXgiO31zOjE2OiJzZWFyY2gudmluZGV4Lm5sIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjEwOiJzZWFyY2hfZm9yIjt9czo4OiJiYWNrbGluayI7czoxOToiL3dlYj9zZWFyY2hfZm9yPXtrfSI7czo0OiJuYW1lIjtzOjY6IlZpbmRleCI7fXM6MTk6InJpY2VyY2EudmlyZ2lsaW8uaXQiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MjoicXMiO31zOjg6ImJhY2tsaW5rIjtzOjE0OiJyaWNlcmNhP3FzPXtrfSI7czo0OiJuYW1lIjtzOjg6IlZpcmdpbGlvIjt9czoyNzoicmljZXJjYWltbWFnaW5pLnZpcmdpbGlvLml0IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjI6InFzIjt9czo4OiJiYWNrbGluayI7czoxNDoicmljZXJjYT9xcz17a30iO3M6NDoibmFtZSI7czo4OiJWaXJnaWxpbyI7fXM6MjQ6InJpY2VyY2F2aWRlby52aXJnaWxpby5pdCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoyOiJxcyI7fXM6ODoiYmFja2xpbmsiO3M6MTQ6InJpY2VyY2E/cXM9e2t9IjtzOjQ6Im5hbWUiO3M6ODoiVmlyZ2lsaW8iO31zOjIzOiJyaWNlcmNhbmV3cy52aXJnaWxpby5pdCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoyOiJxcyI7fXM6ODoiYmFja2xpbmsiO3M6MTQ6InJpY2VyY2E/cXM9e2t9IjtzOjQ6Im5hbWUiO3M6ODoiVmlyZ2lsaW8iO31zOjE4OiJtb2JpbGUudmlyZ2lsaW8uaXQiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MzoicXJzIjt9czo0OiJuYW1lIjtzOjg6IlZpcmdpbGlvIjt9czoxODoic2VhcmNoLmtlLnZvaWxhLmZyIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InJkYXRhIjt9czo4OiJiYWNrbGluayI7czoxNzoiUy92b2lsYT9yZGF0YT17a30iO3M6NDoibmFtZSI7czo1OiJWb2lsYSI7fXM6MTU6Ind3dy5sZW1vdGV1ci5mciI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJyZGF0YSI7fXM6ODoiYmFja2xpbmsiO3M6MTc6IlMvdm9pbGE/cmRhdGE9e2t9IjtzOjQ6Im5hbWUiO3M6NToiVm9pbGEiO31zOjEyOiJ3ZWIudm9sbnkuY3oiO2E6NDp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Njoic2VhcmNoIjt9czo4OiJiYWNrbGluayI7czoyMDoiZnVsbHRleHQvP3NlYXJjaD17a30iO3M6ODoiY2hhcnNldHMiO2E6MTp7aTowO3M6MTI6IndpbmRvd3MtMTI1MCI7fXM6NDoibmFtZSI7czo1OiJWb2xueSI7fXM6MTc6Ind3dy53YWxoZWxsby5pbmZvIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjM6ImtleSI7fXM6ODoiYmFja2xpbmsiO3M6MTQ6InNlYXJjaD9rZXk9e2t9IjtzOjQ6Im5hbWUiO3M6ODoiV2FsaGVsbG8iO31zOjE2OiJ3d3cud2FsaGVsbG8uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjM6ImtleSI7fXM6ODoiYmFja2xpbmsiO3M6MTQ6InNlYXJjaD9rZXk9e2t9IjtzOjQ6Im5hbWUiO3M6ODoiV2FsaGVsbG8iO31zOjE1OiJ3d3cud2FsaGVsbG8uZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Mzoia2V5Ijt9czo4OiJiYWNrbGluayI7czoxNDoic2VhcmNoP2tleT17a30iO3M6NDoibmFtZSI7czo4OiJXYWxoZWxsbyI7fXM6MTU6Ind3dy53YWxoZWxsby5ubCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czozOiJrZXkiO31zOjg6ImJhY2tsaW5rIjtzOjE0OiJzZWFyY2g/a2V5PXtrfSI7czo0OiJuYW1lIjtzOjg6IldhbGhlbGxvIjt9czoxMjoic3VjaGUud2ViLmRlIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjI6InN1IjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxODoic2VhcmNoL3dlYi8/c3U9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiV2ViLmRlIjt9czoxNDoibS5zdWNoZS53ZWIuZGUiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6Mjoic3UiO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE4OiJzZWFyY2gvd2ViLz9zdT17a30iO3M6NDoibmFtZSI7czo2OiJXZWIuZGUiO31zOjEwOiJ3d3cud2ViLm5sIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjk6InpvZWt3b29yZCI7fXM6NDoibmFtZSI7czo2OiJXZWIubmwiO31zOjE1OiJ3d3cud2Vib3JhbWEuZnIiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToiUVVFUlkiO31zOjQ6Im5hbWUiO3M6ODoid2Vib3JhbWEiO31zOjE3OiJ3d3cud2Vic2VhcmNoLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czozOiJxa3ciO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjI2OiJzZWFyY2gvcmVzdWx0czIuYXNweD9xPXtrfSI7czo0OiJuYW1lIjtzOjk6IldlYlNlYXJjaCI7fXM6MTI6ImZyLndlZG9vLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo3OiJrZXl3b3JkIjt9czo0OiJuYW1lIjtzOjU6IldlZG9vIjt9czoxMjoiZW4ud2Vkb28uY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjc6ImtleXdvcmQiO31zOjQ6Im5hbWUiO3M6NToiV2Vkb28iO31zOjEyOiJlcy53ZWRvby5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6Nzoia2V5d29yZCI7fXM6NDoibmFtZSI7czo1OiJXZWRvbyI7fXM6MTc6InNlYXJjaC53aW5hbXAuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjE5OiJzZWFyY2gvc2VhcmNoP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiV2luYW1wIjt9czoxMjoic3p1a2FqLndwLnBsIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjY6InN6dWthaiI7fXM6ODoiYmFja2xpbmsiO3M6NDI6Imh0dHA6Ly9zenVrYWoud3AucGwvc3p1a2FqLmh0bWw/c3p1a2FqPXtrfSI7czo0OiJuYW1lIjtzOjE2OiJXaXJ0dWFsbmEgUG9sc2thIjt9czoxMjoid3d3LndpdGNoLmRlIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjY6InNlYXJjaCI7fXM6ODoiYmFja2xpbmsiO3M6MzM6InNlYXJjaC1yZXN1bHQucGhwP2NuPTAmc2VhcmNoPXtrfSI7czo0OiJuYW1lIjtzOjU6IldpdGNoIjt9czoxMzoid3d3Lndvb3BpZS5qcCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoyOiJrdyI7fXM6ODoiYmFja2xpbmsiO3M6MTM6InNlYXJjaD9rdz17a30iO3M6NDoibmFtZSI7czo2OiJXb29waWUiO31zOjEzOiJzZWFyY2gud3d3LmVlIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo0OiJuYW1lIjtzOjEwOiJ3d3cgdsOkcmF2Ijt9czoxOToid3d3LngtcmVjaGVyY2hlLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo0OiJNT1RTIjt9czo4OiJiYWNrbGluayI7czoyNjoiY2dpLWJpbi93ZWJzZWFyY2g/TU9UUz17a30iO3M6NDoibmFtZSI7czoxMToiWC1SZWNoZXJjaGUiO31zOjE2OiJzZWFyY2gueWFob28uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InAiO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cD17a30iO3M6NDoibmFtZSI7czo2OiJZYWhvbyEiO31zOjI1OiJtYWxheXNpYS5zZWFyY2gueWFob28uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InAiO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cD17a30iO3M6NDoibmFtZSI7czo2OiJZYWhvbyEiO31zOjk6InlhaG9vLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJwIjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3A9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiWWFob28hIjt9czo4OiJ5YWhvby57fSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJwIjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3A9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiWWFob28hIjt9czoxMjoie30ueWFob28uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InAiO2k6MTtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cD17a30iO3M6NDoibmFtZSI7czo2OiJZYWhvbyEiO31zOjE0OiJjYWRlLnlhaG9vLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJwIjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3A9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiWWFob28hIjt9czoxNzoiZXNwYW5vbC55YWhvby5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicCI7aToxO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9wPXtrfSI7czo0OiJuYW1lIjtzOjY6IllhaG9vISI7fXM6MTI6InFjLnlhaG9vLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJwIjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3A9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiWWFob28hIjt9czoxNjoib25lLmNuLnlhaG9vLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJwIjtpOjE7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxMjoic2VhcmNoP3A9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiWWFob28hIjt9czoxNDoid3d3LmNlcmNhdG8uaXQiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6NDoibmFtZSI7czo2OiJZYWhvbyEiO31zOjE5OiJzZWFyY2gub2ZmZXJib3guY29tIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6NjoiWWFob28hIjt9czoxNToid3d3LmJlbmVmaW5kLmRlIjthOjI6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjQ6Im5hbWUiO3M6NjoiWWFob28hIjt9czoxNjoieXMubWlyb3N0YXJ0LmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjY6IllhaG9vISI7fXM6Mjc6InNlYXJjaC55YWhvby5jb20vc2VhcmNoL2RpciI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJwIjt9czo4OiJiYWNrbGluayI7czo2OiI/cD17a30iO3M6NDoibmFtZSI7czoxNjoiWWFob28hIERpcmVjdG9yeSI7fXM6MjM6ImltYWdlcy5zZWFyY2gueWFob28uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InAiO2k6MTtzOjI6InZhIjt9czo4OiJiYWNrbGluayI7czoxOToic2VhcmNoL2ltYWdlcz9wPXtrfSI7czo0OiJuYW1lIjtzOjEzOiJZYWhvbyEgSW1hZ2VzIjt9czoxOToie30uaW1hZ2VzLnlhaG9vLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJwIjtpOjE7czoyOiJ2YSI7fXM6ODoiYmFja2xpbmsiO3M6MTk6InNlYXJjaC9pbWFnZXM/cD17a30iO3M6NDoibmFtZSI7czoxMzoiWWFob28hIEltYWdlcyI7fXM6MjE6ImNhZGUuaW1hZ2VzLnlhaG9vLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJwIjtpOjE7czoyOiJ2YSI7fXM6ODoiYmFja2xpbmsiO3M6MTk6InNlYXJjaC9pbWFnZXM/cD17a30iO3M6NDoibmFtZSI7czoxMzoiWWFob28hIEltYWdlcyI7fXM6MjQ6ImVzcGFub2wuaW1hZ2VzLnlhaG9vLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJwIjtpOjE7czoyOiJ2YSI7fXM6ODoiYmFja2xpbmsiO3M6MTk6InNlYXJjaC9pbWFnZXM/cD17a30iO3M6NDoibmFtZSI7czoxMzoiWWFob28hIEltYWdlcyI7fXM6MTk6InFjLmltYWdlcy55YWhvby5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicCI7aToxO3M6MjoidmEiO31zOjg6ImJhY2tsaW5rIjtzOjE5OiJzZWFyY2gvaW1hZ2VzP3A9e2t9IjtzOjQ6Im5hbWUiO3M6MTM6IllhaG9vISBJbWFnZXMiO31zOjE4OiJzZWFyY2gueWFob28uY28uanAiO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicCI7aToxO3M6MjoidnAiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cD17a30iO3M6NDoibmFtZSI7czoxMjoiWWFob28hIEphcGFuIjt9czoxMzoianAuaGFvMTIzLmNvbSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czoxMjoiWWFob28hIEphcGFuIjt9czoxNjoiaG9tZS5raW5nc29mdC5qcCI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo3OiJrZXl3b3JkIjt9czo0OiJuYW1lIjtzOjEyOiJZYWhvbyEgSmFwYW4iO31zOjE3OiJqd3NlYXJjaC5qd29yZC5qcCI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjEyOiJZYWhvbyEgSmFwYW4iO31zOjI0OiJpbWFnZS5zZWFyY2gueWFob28uY28uanAiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicCI7fXM6ODoiYmFja2xpbmsiO3M6MTI6InNlYXJjaD9wPXtrfSI7czo0OiJuYW1lIjtzOjE5OiJZYWhvbyEgSmFwYW4gSW1hZ2VzIjt9czoyNDoidmlkZW8uc2VhcmNoLnlhaG9vLmNvLmpwIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InAiO31zOjg6ImJhY2tsaW5rIjtzOjEyOiJzZWFyY2g/cD17a30iO3M6NDoibmFtZSI7czoxOToiWWFob28hIEphcGFuIFZpZGVvcyI7fXM6MTQ6InNlYXJjaC55YW0uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6ImsiO31zOjg6ImJhY2tsaW5rIjtzOjMyOiJTZWFyY2gvV2ViLz9TZWFyY2hUeXBlPXdlYiZrPXtrfSI7czo0OiJuYW1lIjtzOjM6IllhbSI7fXM6OToieWFuZGV4LnJ1IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjQ6InRleHQiO31zOjg6ImJhY2tsaW5rIjtzOjE5OiJ5YW5kc2VhcmNoP3RleHQ9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiWWFuZGV4Ijt9czoxMDoieWFuZGV4LmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo0OiJ0ZXh0Ijt9czo4OiJiYWNrbGluayI7czoxOToieWFuZHNlYXJjaD90ZXh0PXtrfSI7czo0OiJuYW1lIjtzOjY6IllhbmRleCI7fXM6OToieWFuZGV4Lnt9IjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjQ6InRleHQiO31zOjg6ImJhY2tsaW5rIjtzOjE5OiJ5YW5kc2VhcmNoP3RleHQ9e2t9IjtzOjQ6Im5hbWUiO3M6NjoiWWFuZGV4Ijt9czoxNjoiaW1hZ2VzLnlhbmRleC5ydSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo0OiJ0ZXh0Ijt9czo4OiJiYWNrbGluayI7czoxOToieWFuZHNlYXJjaD90ZXh0PXtrfSI7czo0OiJuYW1lIjtzOjEzOiJZYW5kZXggSW1hZ2VzIjt9czoxNzoiaW1hZ2VzLnlhbmRleC5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NDoidGV4dCI7fXM6ODoiYmFja2xpbmsiO3M6MTk6InlhbmRzZWFyY2g/dGV4dD17a30iO3M6NDoibmFtZSI7czoxMzoiWWFuZGV4IEltYWdlcyI7fXM6MTY6ImltYWdlcy55YW5kZXgue30iO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NDoidGV4dCI7fXM6ODoiYmFja2xpbmsiO3M6MTk6InlhbmRzZWFyY2g/dGV4dD17a30iO3M6NDoibmFtZSI7czoxMzoiWWFuZGV4IEltYWdlcyI7fXM6MTI6Ind3dy55YXNuaS5kZSI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo1OiJxdWVyeSI7fXM6NDoibmFtZSI7czo1OiJZYXNuaSI7fXM6MTM6Ind3dy55YXNuaS5jb20iO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NToiWWFzbmkiO31zOjE1OiJ3d3cueWFzbmkuY28udWsiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NToiWWFzbmkiO31zOjEyOiJ3d3cueWFzbmkuY2giO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NToiWWFzbmkiO31zOjEyOiJ3d3cueWFzbmkuYXQiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6NToicXVlcnkiO31zOjQ6Im5hbWUiO3M6NToiWWFzbmkiO31zOjE0OiJ3d3cueWF0ZWRvLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxOToic2VhcmNoL3Byb2ZpbD9xPXtrfSI7czo0OiJuYW1lIjtzOjY6IllhdGVkbyI7fXM6MTM6Ind3dy55YXRlZG8uZnIiO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicSI7fXM6ODoiYmFja2xpbmsiO3M6MTk6InNlYXJjaC9wcm9maWw/cT17a30iO3M6NDoibmFtZSI7czo2OiJZYXRlZG8iO31zOjEyOiJ5ZWxsb3dtYXAuZGUiO2E6Mjp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToiICI7fXM6NDoibmFtZSI7czo5OiJZZWxsb3dtYXAiO31zOjE2OiJzZWFyY2gueWlwcHkuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjU6InF1ZXJ5Ijt9czo4OiJiYWNrbGluayI7czoxNjoic2VhcmNoP3F1ZXJ5PXtrfSI7czo0OiJuYW1lIjtzOjU6IllpcHB5Ijt9czoxMzoid3d3LnlvdWdvby5mciI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo4OiJiYWNrbGluayI7czoxNjoiP2N4PXNlYXJjaCZxPXtrfSI7czo0OiJuYW1lIjtzOjY6IllvdUdvbyI7fXM6MTU6Ind3dy56YXBtZXRhLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJxIjtpOjE7czo1OiJxdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiWmFwbWV0YSI7fXM6MTA6InphcG1ldGEue30iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjc6IlphcG1ldGEiO31zOjE0OiJ1ay56YXBtZXRhLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJxIjtpOjE7czo1OiJxdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiWmFwbWV0YSI7fXM6MTQ6ImFyLnphcG1ldGEuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InEiO2k6MTtzOjU6InF1ZXJ5Ijt9czo4OiJiYWNrbGluayI7czo2OiI/cT17a30iO3M6NDoibmFtZSI7czo3OiJaYXBtZXRhIjt9czoxNDoiYXUuemFwbWV0YS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjc6IlphcG1ldGEiO31zOjE0OiJjYS56YXBtZXRhLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJxIjtpOjE7czo1OiJxdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiWmFwbWV0YSI7fXM6MTQ6ImZpLnphcG1ldGEuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjI6e2k6MDtzOjE6InEiO2k6MTtzOjU6InF1ZXJ5Ijt9czo4OiJiYWNrbGluayI7czo2OiI/cT17a30iO3M6NDoibmFtZSI7czo3OiJaYXBtZXRhIjt9czoxNDoibm8uemFwbWV0YS5jb20iO2E6Mzp7czo2OiJwYXJhbXMiO2E6Mjp7aTowO3M6MToicSI7aToxO3M6NToicXVlcnkiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjc6IlphcG1ldGEiO31zOjE0OiJ0ci56YXBtZXRhLmNvbSI7YTozOntzOjY6InBhcmFtcyI7YToyOntpOjA7czoxOiJxIjtpOjE7czo1OiJxdWVyeSI7fXM6ODoiYmFja2xpbmsiO3M6NjoiP3E9e2t9IjtzOjQ6Im5hbWUiO3M6NzoiWmFwbWV0YSI7fXM6MTQ6InAuemhvbmdzb3UuY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InciO31zOjg6ImJhY2tsaW5rIjtzOjc6InA/dz17a30iO3M6NDoibmFtZSI7czo4OiJaaG9uZ3NvdSI7fXM6MTI6Ind3dzMuem9lay5ubCI7YToyOntzOjY6InBhcmFtcyI7YToxOntpOjA7czoxOiJxIjt9czo0OiJuYW1lIjtzOjQ6IlpvZWsiO31zOjEzOiJ3d3cuem9la2VuLm5sIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo0OiJuYW1lIjtzOjY6IlpvZWtlbiI7fXM6OToiem9vaG9vLmN6IjthOjQ6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjE6InEiO31zOjg6ImJhY2tsaW5rIjtzOjY6Ij9xPXtrfSI7czo4OiJjaGFyc2V0cyI7YToxOntpOjA7czoxMjoid2luZG93cy0xMjUwIjt9czo0OiJuYW1lIjtzOjY6Ilpvb2hvbyI7fXM6MTM6Ind3dy56b3puYW0uc2siO2E6Mzp7czo2OiJwYXJhbXMiO2E6MTp7aTowO3M6MToicyI7fXM6ODoiYmFja2xpbmsiO3M6MjU6ImhsYWRhai5mY2dpP3M9e2t9JmNvPXN2ZXQiO3M6NDoibmFtZSI7czo2OiJab3puYW0iO31zOjEzOiJ3d3cuenh1c28uY29tIjthOjM6e3M6NjoicGFyYW1zIjthOjE6e2k6MDtzOjI6IndkIjt9czo4OiJiYWNrbGluayI7czoxMDoicmkvP3dkPXtrfSI7czo0OiJuYW1lIjtzOjU6Ilp4dXNvIjt9czo4OiJrd3pmLm5ldCI7YTozOntzOjY6InBhcmFtcyI7YToxOntpOjA7czo2OiJzZWFyY2giO31zOjg6ImJhY2tsaW5rIjtzOjExOiIjc2VhcmNoPXtrfSI7czo0OiJuYW1lIjtzOjE2OiLrrLvsp4Drp4gg6rKA7IOJIjt9fQ==',0),('SharedSiteIdsToArchive','49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87',0),('SharedSiteIdsToArchive_AllWebsites','6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52',0),('SitesManager_DefaultCurrency','VND',0),('SitesManager_DefaultTimezone','Asia/Ho_Chi_Minh',0),('SitesManager_EnableSiteSpecificUserAgentExclude','',0),('SitesManager_ExcludedIpsGlobal','',0),('SitesManager_ExcludedQueryParameters','',0),('SitesManager_ExcludedUserAgentsGlobal','',0),('SitesManager_KeepURLFragmentsGlobal','0',0),('SitesManager_SearchCategoryParameters','',0),('SitesManager_SearchKeywordParameters','q,query,s,search,searchword,k,keyword',0),('SocialDefinitions','YTo4NTp7czoxMjoiZmFjZWJvb2suY29tIjtzOjg6IkZhY2Vib29rIjtzOjU6ImZiLm1lIjtzOjg6IkZhY2Vib29rIjtzOjEyOiJxem9uZS5xcS5jb20iO3M6NToiT3pvbmUiO3M6OToiaGFiYm8uY29tIjtzOjU6IkhhYm9vIjtzOjExOiJ0d2l0dGVyLmNvbSI7czo3OiJUd2l0dGVyIjtzOjQ6InQuY28iO3M6NzoiVHdpdHRlciI7czoxMDoicmVucmVuLmNvbSI7czo2OiJSZW5yZW4iO3M6MTQ6ImxvZ2luLmxpdmUuY29tIjtzOjE5OiJXaW5kb3dzIExpdmUgU3BhY2VzIjtzOjEyOiJsaW5rZWRpbi5jb20iO3M6ODoiTGlua2VkSW4iO3M6NzoibG5rZC5pbiI7czo4OiJMaW5rZWRJbiI7czo4OiJiZWJvLmNvbSI7czo0OiJCZWJvIjtzOjY6InZrLmNvbSI7czo5OiJWa29udGFrdGUiO3M6MTI6InZrb250YWt0ZS5ydSI7czo5OiJWa29udGFrdGUiO3M6MTY6ImxvZ2luLnRhZ2dlZC5jb20iO3M6NjoiVGFnZ2VkIjtzOjk6Im9ya3V0LmNvbSI7czo1OiJPcmt1dCI7czoxMToibXlzcGFjZS5jb20iO3M6NzoiTXlzcGFjZSI7czoxNDoiZnJpZW5kc3Rlci5jb20iO3M6MTA6IkZyaW5lZHN0ZXIiO3M6OToiYmFkb28uY29tIjtzOjU6IkJhZG9vIjtzOjc6ImhpNS5jb20iO3M6MzoiaGk1IjtzOjEwOiJuZXRsb2cuY29tIjtzOjY6Ik5ldGxvZyI7czoxMjoiZmxpeHN0ZXIuY29tIjtzOjg6IkZsaXhzdGVyIjtzOjk6Im15bGlmZS5ydSI7czo2OiJNeUxpZmUiO3M6MTQ6ImNsYXNzbWF0ZXMuY29tIjtzOjE0OiJDbGFzc21hdGVzLmNvbSI7czoxMDoiZ2l0aHViLmNvbSI7czo2OiJHaXRodWIiO3M6MTU6InBsdXMuZ29vZ2xlLmNvbSI7czo5OiJHb29nbGUlMkIiO3M6MTQ6InVybC5nb29nbGUuY29tIjtzOjk6Ikdvb2dsZSUyQiI7czoxMDoiZG91YmFuLmNvbSI7czo2OiJkb3ViYW4iO3M6MTI6ImRyaWJiYmxlLmNvbSI7czo4OiJkcmliYmJsZSI7czoxNjoib2Rub2tsYXNzbmlraS5ydSI7czoxMzoiT2Rub2tsYXNzbmlraSI7czoxMDoidmlhZGVvLmNvbSI7czo2OiJWaWFkZW8iO3M6MTA6ImZsaWNrci5jb20iO3M6NjoiRmxpY2tyIjtzOjEyOiJ3ZWV3b3JsZC5jb20iO3M6ODoiV2VlV29ybGQiO3M6NzoibGFzdC5mbSI7czo3OiJMYXN0LmZtIjtzOjk6Imxhc3RmbS5ydSI7czo3OiJMYXN0LmZtIjtzOjk6Imxhc3RmbS5kZSI7czo3OiJMYXN0LmZtIjtzOjk6Imxhc3RmbS5lcyI7czo3OiJMYXN0LmZtIjtzOjk6Imxhc3RmbS5mciI7czo3OiJMYXN0LmZtIjtzOjk6Imxhc3RmbS5pdCI7czo3OiJMYXN0LmZtIjtzOjk6Imxhc3RmbS5qcCI7czo3OiJMYXN0LmZtIjtzOjk6Imxhc3RmbS5wbCI7czo3OiJMYXN0LmZtIjtzOjEzOiJsYXN0Zm0uY29tLmJyIjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLnNlIjtzOjc6Ikxhc3QuZm0iO3M6MTM6Imxhc3RmbS5jb20udHIiO3M6NzoiTGFzdC5mbSI7czoxNDoibXloZXJpdGFnZS5jb20iO3M6MTA6Ik15SGVyaXRhZ2UiO3M6OToieGFuZ2EuY29tIjtzOjU6IlhhbmdhIjtzOjc6Im1peGkuanAiO3M6NDoiTWl4aSI7czoxODoiZ2xvYmFsLmN5d29ybGQuY29tIjtzOjc6IkN5d29ybGQiO3M6MTQ6ImdhaWFvbmxpbmUuY29tIjtzOjExOiJHYWlhIE9ubGluZSI7czoxMToic2t5cm9jay5jb20iO3M6NzoiU2t5cm9jayI7czoxNToiYmxhY2twbGFuZXQuY29tIjtzOjExOiJCbGFja1BsYW5ldCI7czoxNDoibXl5ZWFyYm9vay5jb20iO3M6MTA6Im15WWVhcmJvb2siO3M6MTE6ImZvdG9sb2cuY29tIjtzOjc6IkZvdG9sb2ciO3M6MTk6ImZyaWVuZHNyZXVuaXRlZC5jb20iO3M6MTY6IkZyaWVuZHMgUmV1bml0ZWQiO3M6MTQ6ImxpdmVqb3VybmFsLnJ1IjtzOjExOiJMaXZlSm91cm5hbCI7czoxNToibGl2ZWpvdXJuYWwuY29tIjtzOjExOiJMaXZlSm91cm5hbCI7czoxMToic3R1ZGl2ei5uZXQiO3M6NzoiU3R1ZGlWWiI7czoxMDoibWVpbnZ6Lm5ldCI7czo2OiJNZWluVloiO3M6MTc6InN0YWNrb3ZlcmZsb3cuY29tIjtzOjEzOiJTdGFja092ZXJmbG93IjtzOjEwOiJzb25pY28uY29tIjtzOjEwOiJTb25pY28uY29tIjtzOjEzOiJwaW50ZXJlc3QuY29tIjtzOjk6IlBpbnRlcmVzdCI7czo5OiJwbGF4by5jb20iO3M6NToiUGxheG8iO3M6ODoiZ2VuaS5jb20iO3M6ODoiR2VuaS5jb20iO3M6MTA6InR1ZW50aS5jb20iO3M6NjoiVHVlbnRpIjtzOjg6InhpbmcuY29tIjtzOjQ6IlhJTkciO3M6MTE6InRhcmluZ2EubmV0IjtzOjg6IlRhcmluZ2EhIjtzOjU6Im5rLnBsIjtzOjE0OiJOYXN6YS1rbGFzYS5wbCI7czoxNToic3R1bWJsZXVwb24uY29tIjtzOjExOiJTdHVtYmxlVXBvbiI7czoxNToic291cmNlZm9yZ2UubmV0IjtzOjExOiJTb3VyY2Vmb3JnZSI7czo4OiJoeXZlcy5ubCI7czo1OiJIeXZlcyI7czo4OiJ3YXluLmNvbSI7czo0OiJXQVlOIjtzOjExOiJidXp6bmV0LmNvbSI7czo3OiJCdXp6bmV0IjtzOjEyOiJtdWx0aXBseS5jb20iO3M6ODoiTXVsdGlwbHkiO3M6MTQ6ImZvdXJzcXVhcmUuY29tIjtzOjEwOiJGb3Vyc3F1YXJlIjtzOjE1OiJ2a3J1Z3VkcnV6ZWkucnUiO3M6MTU6InZrcnVndWRydXplaS5ydSI7czoxMDoibXkubWFpbC5ydSI7czoxMDoibXkubWFpbC5ydSI7czoxMDoibW9pa3J1Zy5ydSI7czoxMDoiTW9pS3J1Zy5ydSI7czoxMDoicmVkZGl0LmNvbSI7czo2OiJyZWRkaXQiO3M6MjA6Im5ld3MueWNvbWJpbmF0b3IuY29tIjtzOjExOiJIYWNrZXIgTmV3cyI7czo5OiJpZGVudGkuY2EiO3M6OToiaWRlbnRpLmNhIjtzOjk6IndlaWJvLmNvbSI7czo1OiJXZWlibyI7czo0OiJ0LmNuIjtzOjU6IldlaWJvIjtzOjExOiJ5b3V0dWJlLmNvbSI7czo3OiJZb3VUdWJlIjtzOjg6InlvdXR1LmJlIjtzOjc6IllvdVR1YmUiO3M6OToidmltZW8uY29tIjtzOjU6IlZpbWVvIjtzOjEwOiJ0dW1ibHIuY29tIjtzOjY6InR1bWJsciI7fQ==',0),('TaskScheduler.timetable','a:15:{s:55:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeOutdatedArchives\";i:1465344000;s:56:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.updateSpammerBlacklist\";i:1465776011;s:49:\"Piwik\\Plugins\\Referrers\\Tasks.updateSearchEngines\";i:1465776012;s:43:\"Piwik\\Plugins\\Referrers\\Tasks.updateSocials\";i:1465776012;s:63:\"Piwik\\Plugins\\UsersManager\\Tasks.setUserDefaultReportPreference\";i:1465344000;s:58:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeInvalidatedArchives\";i:1465344001;s:51:\"Piwik\\Plugins\\PrivacyManager\\Tasks.deleteReportData\";i:1465344001;s:48:\"Piwik\\Plugins\\PrivacyManager\\Tasks.deleteLogData\";i:1465344001;s:57:\"Piwik\\Plugins\\CorePluginsAdmin\\Tasks.clearAllCacheEntries\";i:1465344001;s:71:\"Piwik\\Plugins\\CorePluginsAdmin\\Tasks.sendNotificationIfUpdatesAvailable\";i:1465344001;s:54:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.optimizeArchiveTable\";i:1465344001;s:49:\"Piwik\\Plugins\\UserCountry\\GeoIPAutoUpdater.update\";i:1467763255;s:65:\"Piwik\\Plugins\\CoreUpdater\\Tasks.sendNotificationIfUpdateAvailable\";i:1465344002;s:57:\"Piwik\\Plugins\\DBStats\\Tasks.cacheDataByArchiveNameReports\";i:1465776013;s:51:\"Piwik\\Plugins\\PerformanceMonitor\\Tasks.getMaxVisits\";i:1465329635;}',0),('todayArchiveTimeToLive','30',1),('UpdateCheck_LastTimeChecked','1465462158',1),('UpdateCheck_LatestVersion','2.16.1',0),('usercountry.location_provider','geoip_php',0),('UsersManager.lastSeen.admin','1465487714',1),('version_Actions','2.16.1',1),('version_AdvancedCampaignReporting','1.3.1',1),('version_Annotations','2.16.1',1),('version_API','2.16.1',1),('version_Bandwidth','0.1.2',1),('version_BulkTracking','2.16.1',1),('version_Contents','2.16.1',1),('version_core','2.16.1',1),('version_CoreAdminHome','2.16.1',1),('version_CoreConsole','2.16.1',1),('version_CoreHome','2.16.1',1),('version_CorePluginsAdmin','2.16.1',1),('version_CoreUpdater','2.16.1',1),('version_CoreVisualizations','2.16.1',1),('version_CustomDimensions','0.1.4',1),('version_CustomVariables','2.16.1',1),('version_Dashboard','2.16.1',1),('version_DBStats','2.16.1',1),('version_DevicePlugins','2.16.1',1),('version_DevicesDetection','2.16.1',1),('version_Diagnostics','2.16.1',1),('version_Ecommerce','2.16.1',1),('version_Events','2.16.1',1),('version_ExampleAPI','1.0',1),('version_ExamplePlugin','0.1.0',1),('version_ExampleRssWidget','1.0',1),('version_Feedback','2.16.1',1),('version_Goals','2.16.1',1),('version_Heartbeat','2.16.1',1),('version_ImageGraph','2.16.1',1),('version_Insights','2.16.1',1),('version_Installation','2.16.1',1),('version_Intl','2.16.1',1),('version_LanguagesManager','2.16.1',1),('version_Live','2.16.1',1),('version_Login','2.16.1',1),('version_log_conversion.revenue','float default NULL',1),('version_log_conversion.revenue_discount','float default NULL',1),('version_log_conversion.revenue_shipping','float default NULL',1),('version_log_conversion.revenue_subtotal','float default NULL',1),('version_log_conversion.revenue_tax','float default NULL',1),('version_log_link_visit_action.bandwidth','BIGINT(15) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_interaction','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_name','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_piece','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_target','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_event_action','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_event_category','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_name','INTEGER(10) UNSIGNED',1),('version_log_link_visit_action.idaction_url','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.server_time','DATETIME NOT NULL',1),('version_log_link_visit_action.time_spent_ref_action','INTEGER(10) UNSIGNED NOT NULL',1),('version_log_visit.config_browser_engine','VARCHAR(10) NOT NULL',1),('version_log_visit.config_browser_name','VARCHAR(10) NOT NULL',1),('version_log_visit.config_browser_version','VARCHAR(20) NOT NULL',1),('version_log_visit.config_cookie','TINYINT(1) NOT NULL',1),('version_log_visit.config_device_brand','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL',1),('version_log_visit.config_device_model','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL',1),('version_log_visit.config_device_type','TINYINT( 100 ) NULL DEFAULT NULL',1),('version_log_visit.config_director','TINYINT(1) NOT NULL',1),('version_log_visit.config_flash','TINYINT(1) NOT NULL',1),('version_log_visit.config_gears','TINYINT(1) NOT NULL',1),('version_log_visit.config_java','TINYINT(1) NOT NULL',1),('version_log_visit.config_os','CHAR(3) NOT NULL',1),('version_log_visit.config_os_version','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL',1),('version_log_visit.config_pdf','TINYINT(1) NOT NULL',1),('version_log_visit.config_quicktime','TINYINT(1) NOT NULL',1),('version_log_visit.config_realplayer','TINYINT(1) NOT NULL',1),('version_log_visit.config_resolution','VARCHAR(9) NOT NULL',1),('version_log_visit.config_silverlight','TINYINT(1) NOT NULL',1),('version_log_visit.config_windowsmedia','TINYINT(1) NOT NULL',1),('version_log_visit.location_browser_lang','VARCHAR(20) NOT NULL',1),('version_log_visit.location_city','varchar(255) DEFAULT NULL1',1),('version_log_visit.location_country','CHAR(3) NOT NULL1',1),('version_log_visit.location_latitude','float(10, 6) DEFAULT NULL1',1),('version_log_visit.location_longitude','float(10, 6) DEFAULT NULL1',1),('version_log_visit.location_region','char(2) DEFAULT NULL1',1),('version_log_visit.referer_keyword','VARCHAR(255) NULL1',1),('version_log_visit.referer_name','VARCHAR(70) NULL1',1),('version_log_visit.referer_type','TINYINT(1) UNSIGNED NULL1',1),('version_log_visit.referer_url','TEXT NOT NULL',1),('version_log_visit.user_id','VARCHAR(200) NULL',1),('version_log_visit.visitor_count_visits','SMALLINT(5) UNSIGNED NOT NULL1',1),('version_log_visit.visitor_days_since_first','SMALLINT(5) UNSIGNED NOT NULL1',1),('version_log_visit.visitor_days_since_last','SMALLINT(5) UNSIGNED NOT NULL',1),('version_log_visit.visitor_days_since_order','SMALLINT(5) UNSIGNED NOT NULL1',1),('version_log_visit.visitor_localtime','TIME NOT NULL',1),('version_log_visit.visitor_returning','TINYINT(1) NOT NULL1',1),('version_log_visit.visit_entry_idaction_name','INTEGER(11) UNSIGNED NOT NULL',1),('version_log_visit.visit_entry_idaction_url','INTEGER(11) UNSIGNED NOT NULL',1),('version_log_visit.visit_exit_idaction_name','INTEGER(11) UNSIGNED NOT NULL',1),('version_log_visit.visit_exit_idaction_url','INTEGER(11) UNSIGNED NULL DEFAULT 0',1),('version_log_visit.visit_first_action_time','DATETIME NOT NULL',1),('version_log_visit.visit_goal_buyer','TINYINT(1) NOT NULL',1),('version_log_visit.visit_goal_converted','TINYINT(1) NOT NULL',1),('version_log_visit.visit_total_actions','SMALLINT(5) UNSIGNED NOT NULL',1),('version_log_visit.visit_total_events','SMALLINT(5) UNSIGNED NOT NULL',1),('version_log_visit.visit_total_searches','SMALLINT(5) UNSIGNED NOT NULL',1),('version_log_visit.visit_total_time','SMALLINT(5) UNSIGNED NOT NULL',1),('version_MobileAppMeasurable','2.16.1',1),('version_MobileMessaging','2.16.1',1),('version_Monolog','2.16.1',1),('version_Morpheus','2.16.1',1),('version_MultiSites','2.16.1',1),('version_Overlay','2.16.1',1),('version_PageColours','0.1.2',1),('version_PerformanceMonitor','0.2.5',1),('version_PiwikPro','2.16.1',1),('version_PlatformsReport','1.0.4',1),('version_PrivacyManager','2.16.1',1),('version_Provider','2.16.1',1),('version_Proxy','2.16.1',1),('version_QueuedTracking','0.3.1',1),('version_Referrers','2.16.1',1),('version_ReferrersManager','1.8',1),('version_ReportPublisher','0.2.2',1),('version_Resolution','2.16.1',1),('version_ScheduledReports','2.16.1',1),('version_SecurityInfo','1.0.5',1),('version_SegmentEditor','2.16.1',1),('version_SEO','2.16.1',1),('version_SiteMigration','1.0.8',1),('version_SitesManager','2.16.1',1),('version_TopPagesByActions','0.1.3',1),('version_Transitions','2.16.1',1),('version_TreemapVisualization','1.0.11',1),('version_UserCountry','2.16.1',1),('version_UserCountryMap','2.16.1',1),('version_UserLanguage','2.16.1',1),('version_UsersManager','2.16.1',1),('version_VisitFrequency','2.16.1',1),('version_VisitorInterest','2.16.1',1),('version_VisitsSummary','2.16.1',1),('version_VisitTime','2.16.1',1),('version_WebsiteGroups','0.3.0',1),('version_WebsiteMeasurable','2.16.1',1),('version_Widgetize','2.16.1',1);
/*!40000 ALTER TABLE `piwik_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_performancemonitor_maxvisits`
--

DROP TABLE IF EXISTS `piwik_performancemonitor_maxvisits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_performancemonitor_maxvisits` (
  `idsite` int(10) NOT NULL,
  `maxvisits` int(11) NOT NULL,
  UNIQUE KEY `idsite` (`idsite`,`maxvisits`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_performancemonitor_maxvisits`
--

LOCK TABLES `piwik_performancemonitor_maxvisits` WRITE;
/*!40000 ALTER TABLE `piwik_performancemonitor_maxvisits` DISABLE KEYS */;
INSERT INTO `piwik_performancemonitor_maxvisits` VALUES (1,2224),(2,133),(3,274),(4,37),(5,147),(6,102),(7,686),(8,6),(9,90),(10,364),(11,70),(12,311),(13,36),(14,18),(15,21),(16,1221),(17,51),(18,65),(19,12),(20,1),(21,2),(22,8),(23,18),(24,1),(25,6),(26,7),(27,3),(28,1),(29,7),(30,3),(31,1),(33,1),(34,2),(35,1),(38,4),(39,10),(40,2),(41,1936),(49,112),(50,31),(52,5),(54,0),(55,5);
/*!40000 ALTER TABLE `piwik_performancemonitor_maxvisits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_report`
--

DROP TABLE IF EXISTS `piwik_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_report` (
  `idreport` int(11) NOT NULL AUTO_INCREMENT,
  `idsite` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `idsegment` int(11) DEFAULT NULL,
  `period` varchar(10) NOT NULL,
  `hour` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `format` varchar(10) NOT NULL,
  `reports` text NOT NULL,
  `parameters` text,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_sent` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idreport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_report`
--

LOCK TABLES `piwik_report` WRITE;
/*!40000 ALTER TABLE `piwik_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_segment`
--

DROP TABLE IF EXISTS `piwik_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_segment` (
  `idsegment` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  `login` varchar(100) NOT NULL,
  `enable_all_users` tinyint(4) NOT NULL DEFAULT '0',
  `enable_only_idsite` int(11) DEFAULT NULL,
  `auto_archive` tinyint(4) NOT NULL DEFAULT '0',
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_edit` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsegment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_segment`
--

LOCK TABLES `piwik_segment` WRITE;
/*!40000 ALTER TABLE `piwik_segment` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_sequence`
--

DROP TABLE IF EXISTS `piwik_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_sequence` (
  `name` varchar(120) NOT NULL,
  `value` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_sequence`
--

LOCK TABLES `piwik_sequence` WRITE;
/*!40000 ALTER TABLE `piwik_sequence` DISABLE KEYS */;
INSERT INTO `piwik_sequence` VALUES ('piwik_archive_numeric_2016_01',2815),('piwik_archive_numeric_2016_05',2465),('piwik_archive_numeric_2016_06',65139);
/*!40000 ALTER TABLE `piwik_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_session`
--

DROP TABLE IF EXISTS `piwik_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_session` (
  `id` varchar(255) NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_session`
--

LOCK TABLES `piwik_session` WRITE;
/*!40000 ALTER TABLE `piwik_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_site`
--

DROP TABLE IF EXISTS `piwik_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_site` (
  `idsite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `main_url` varchar(255) NOT NULL,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ecommerce` tinyint(4) DEFAULT '0',
  `sitesearch` tinyint(4) DEFAULT '1',
  `sitesearch_keyword_parameters` text NOT NULL,
  `sitesearch_category_parameters` text NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `currency` char(3) NOT NULL,
  `exclude_unknown_urls` tinyint(1) DEFAULT '0',
  `excluded_ips` text NOT NULL,
  `excluded_parameters` text NOT NULL,
  `excluded_user_agents` text NOT NULL,
  `group` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `keep_url_fragment` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsite`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_site`
--

LOCK TABLES `piwik_site` WRITE;
/*!40000 ALTER TABLE `piwik_site` DISABLE KEYS */;
INSERT INTO `piwik_site` VALUES (1,'htvlive.1c656bad.cdnviet.com','http://htvlive.1c656bad.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(2,'thvllive.bb87e240.cdnviet.com','http://thvllive.bb87e240.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(3,'vtv1obj.b5695cde.cdnviet.com','http://vtv1obj.b5695cde.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(4,'megaviewlive.1c656bad.cdnviet.com','http://megaviewlive.1c656bad.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(5,'rez1.bangbang.cgame.vn','http://rez1.bangbang.cgame.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(6,'rez1.touch.vn','http://rez1.touch.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(7,'media2.yan.vn','http://media2.yan.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(8,'token01live.1c656bad.cdnviet.com','http://token01live.1c656bad.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(9,'vtvgotimeshiftobj.b5695cde.cdnviet.com','http://vtvgotimeshiftobj.b5695cde.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(10,'static-img.nhac.vui.vn','http://static-img.nhac.vui.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(11,'htvvod.1c656bad.cdnviet.com','http://htvvod.1c656bad.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(12,'static-mp3.nhac.vui.vn','http://static-mp3.nhac.vui.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(13,'img.88sao.tv','http://img.88sao.tv','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(14,'vtvgovodobj.b5695cde.cdnviet.com','http://vtvgovodobj.b5695cde.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(15,'static-clip.nhac.vui.vn','http://static-clip.nhac.vui.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(16,'vividobj.653a351d.cdnviet.com','http://vividobj.653a351d.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(17,'s2.media.yan.vn','http://s2.media.yan.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(18,'static.game.24h.com.vn','http://static.game.24h.com.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(19,'live.vtn.cdn.fptplay.net','http://live.vtn.cdn.fptplay.net','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(20,'bhd-streamsobj.fad89c7a.cdnviet.com','http://bhd-streamsobj.fad89c7a.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(21,'vtcmediavod.db943edc.cdnviet.com','http://vtcmediavod.db943edc.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(22,'rez.touch.vn','http://rez.touch.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(23,'goldsun-httpobj.29eda4ea.cdnviet.com','http://goldsun-httpobj.29eda4ea.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(24,'liverestreamobj.5b1df984.cdnviet.com','http://liverestreamobj.5b1df984.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(25,'static.game.vui.vn','http://static.game.vui.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(26,'net2evnobj.8df128ca.cdnviet.com','http://net2evnobj.8df128ca.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(27,'lib.88sao.tv','http://lib.88sao.tv','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(28,'timeshiftobj.5b1df984.cdnviet.com','http://timeshiftobj.5b1df984.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(29,'cdn.senvangvn.com','http://cdn.senvangvn.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(30,'mlog-media.yan.vn','http://mlog-media.yan.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(31,'rez.bangbang.cgame.vn','http://rez.bangbang.cgame.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(32,'staging.danet.vn','http://staging.danet.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(33,'cms.danet.vn','http://cms.danet.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(34,'dlafnawe.vnplay.vn','http://dlafnawe.vnplay.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(35,'vtvdigitalvod.b5695cde.cdnviet.com','http://vtvdigitalvod.b5695cde.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(36,'download.danet.vn','http://download.danet.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(37,'ovjqlezx.vnplay.vn','http://ovjqlezx.vnplay.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(38,'vtvgoeuroobj.b5695cde.cdnviet.com','http://vtvgoeuroobj.b5695cde.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(39,'ovjqlezx.khophimhay.org','http://ovjqlezx.khophimhay.org','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(40,'voddrmobj.b5695cde.cdnviet.com','http://voddrmobj.b5695cde.cdnviet.com','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(41,'3g-img.nhac.vui.vn','http://3g-img.nhac.vui.vn','2016-06-05 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(42,'componentobj.fad89c7a.cdnviet.com','http://componentobj.fad89c7a.cdnviet.com','2016-06-06 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(43,'vodrestreamobj.5b1df984.cdnviet.com','http://vodrestreamobj.5b1df984.cdnviet.com','2016-06-06 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(44,'testonlyobj.62de30e6.cdnviet.com','http://testonlyobj.62de30e6.cdnviet.com','2016-06-06 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(45,'vtvgobkvod.b5695cde.cdnviet.com','http://vtvgobkvod.b5695cde.cdnviet.com','2016-06-06 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(46,'vtvgovod.b5695cde.cdnviet.com','http://vtvgovod.b5695cde.cdnviet.com','2016-06-06 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(47,'3g-mp3.nhac.vui.vn','http://3g-mp3.nhac.vui.vn','2016-06-06 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(48,'s.m.game.24h.com.vn','http://s.m.game.24h.com.vn','2016-06-06 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(49,'htvlive.1c656bad.cdnviet.com:80','http://htvlive.1c656bad.cdnviet.com:80','2016-06-07 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(50,'bhdvnobj.fad89c7a.cdnviet.com','http://bhdvnobj.fad89c7a.cdnviet.com','2016-06-07 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(51,'v-xemvod.f8690c36.cdnviet.com','http://v-xemvod.f8690c36.cdnviet.com','2016-06-07 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0),(52,'88saolive.63179ce6.cdnviet.com','http://88saolive.63179ce6.cdnviet.com','2016-06-07 17:00:00',0,1,'','','Asia/Ho_Chi_Minh','VND',0,'','','','','website',0);
/*!40000 ALTER TABLE `piwik_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_site_setting`
--

DROP TABLE IF EXISTS `piwik_site_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_site_setting` (
  `idsite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  PRIMARY KEY (`idsite`,`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_site_setting`
--

LOCK TABLES `piwik_site_setting` WRITE;
/*!40000 ALTER TABLE `piwik_site_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_site_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_site_url`
--

DROP TABLE IF EXISTS `piwik_site_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_site_url` (
  `idsite` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`idsite`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_site_url`
--

LOCK TABLES `piwik_site_url` WRITE;
/*!40000 ALTER TABLE `piwik_site_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_site_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_user`
--

DROP TABLE IF EXISTS `piwik_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_user` (
  `login` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `alias` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token_auth` char(32) NOT NULL,
  `superuser_access` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `date_registered` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`login`),
  UNIQUE KEY `uniq_keytoken` (`token_auth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_user`
--

LOCK TABLES `piwik_user` WRITE;
/*!40000 ALTER TABLE `piwik_user` DISABLE KEYS */;
INSERT INTO `piwik_user` VALUES ('admin','78153b11c84472de8b4c444d6b8d6b26','admin','baysao@gmail.com','126414e1cfe26bf6cc00a9a0e366c1f7',1,'2016-06-04 11:56:40'),('anonymous','','anonymous','anonymous@example.org','anonymous',0,'2016-06-04 09:34:41');
/*!40000 ALTER TABLE `piwik_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_user_dashboard`
--

DROP TABLE IF EXISTS `piwik_user_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_user_dashboard` (
  `login` varchar(100) NOT NULL,
  `iddashboard` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `layout` text NOT NULL,
  PRIMARY KEY (`login`,`iddashboard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_user_dashboard`
--

LOCK TABLES `piwik_user_dashboard` WRITE;
/*!40000 ALTER TABLE `piwik_user_dashboard` DISABLE KEYS */;
INSERT INTO `piwik_user_dashboard` VALUES ('admin',1,'Dashboard','{\"config\":{\"layout\":\"33-33-33\"},\"columns\":[[{\"uniqueId\":\"widgetLivegetSimpleLastVisitCount\",\"parameters\":{\"module\":\"Live\",\"action\":\"getSimpleLastVisitCount\",\"widget\":1},\"isHidden\":false},{\"uniqueId\":\"widgetVisitorInterestgetNumberOfVisitsPerVisitDuration\",\"parameters\":{\"module\":\"VisitorInterest\",\"action\":\"getNumberOfVisitsPerVisitDuration\",\"widget\":1},\"isHidden\":false}],[{\"uniqueId\":\"widgetVisitTimegetVisitInformationPerServerTime\",\"parameters\":{\"module\":\"VisitTime\",\"action\":\"getVisitInformationPerServerTime\",\"widget\":1,\"columns\":[\"nb_actions\"],\"columns_to_display\":[\"nb_actions\"],\"rows\":[],\"rows_to_display\":[]},\"isHidden\":false},{\"uniqueId\":\"widgetReferrersgetWebsites\",\"parameters\":{\"module\":\"Referrers\",\"action\":\"getWebsites\",\"widget\":1},\"isHidden\":false}],[{\"uniqueId\":\"widgetUserCountryMapvisitorMap\",\"parameters\":{\"module\":\"UserCountryMap\",\"action\":\"visitorMap\",\"widget\":1},\"isHidden\":false},{\"uniqueId\":\"widgetActionsgetPageUrls\",\"parameters\":{\"module\":\"Actions\",\"action\":\"getPageUrls\",\"widget\":1},\"isHidden\":false}]]}');
/*!40000 ALTER TABLE `piwik_user_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_user_language`
--

DROP TABLE IF EXISTS `piwik_user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_user_language` (
  `login` varchar(100) NOT NULL,
  `language` varchar(10) NOT NULL,
  `use_12_hour_clock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_user_language`
--

LOCK TABLES `piwik_user_language` WRITE;
/*!40000 ALTER TABLE `piwik_user_language` DISABLE KEYS */;
INSERT INTO `piwik_user_language` VALUES ('admin','vi',0);
/*!40000 ALTER TABLE `piwik_user_language` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-09 23:01:10
