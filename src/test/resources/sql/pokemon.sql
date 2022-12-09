
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+03:00";
/*!40101 SET NAMES utf8mb4 */;
-- Database: `pokemon`
CREATE DATABASE IF NOT EXISTS `pokemon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `pokemon`;

-- ----------------------------------------------------------
-- Table structure for table `sys_user`
--
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE IF NOT EXISTS `sys_user`
(
    `id`            bigint(20)                              NOT NULL AUTO_INCREMENT,
    `idate`         datetime                                NOT NULL,
    `udate`         datetime                                         DEFAULT NULL,
    `status`        tinyint(4)                              NOT NULL DEFAULT '1' COMMENT '-1: deleted, 0:passive, 1:active',
    `email`         varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `name`          varchar(50) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `surname`       varchar(50) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `mobile_number` varchar(50) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `password`      varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `email` (`email`) USING BTREE,
    UNIQUE KEY `mobile_number` (`mobile_number`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `sys_user` (`id`, `idate`, `udate`, `status`, `email`, `name`, `surname`, `mobile_number`, `password`)
VALUES (1, '2021-04-01 00:00:00', NULL, 1, 'pokemon_super', 'pokemon', 'super user', '1',
        'hdgzPmoKRZpAE6tHHYwjn1wSzHjOBGxUYu0RuqMwGGg='),
       (2, '2021-04-01 00:00:00', NULL, 1, 'pokemon_admin', 'pokemon', 'administrator', '2',
        'hdgzPmoKRZpAE6tHHYwjn1wSzHjOBGxUYu0RuqMwGGg='),
       (3, '2021-04-01 00:00:00', NULL, 1, 'pokemon_user', 'pokemon', 'user', '3',
        'hdgzPmoKRZpAE6tHHYwjn1wSzHjOBGxUYu0RuqMwGGg=');
-- --------------------------------------------------------
-- Table structure for table `sys_user_preferences`
--
DROP TABLE IF EXISTS `sys_user_preferences`;
CREATE TABLE IF NOT EXISTS `sys_user_preferences`
(
    `id`              bigint(20)                             NOT NULL AUTO_INCREMENT,
    `idate`           datetime                               NOT NULL,
    `udate`           datetime                                        DEFAULT NULL,
    `status`          tinyint(4)                             NOT NULL DEFAULT '1' COMMENT '-1: deleted, 0:passive, 1:active',
    `sys_user_id`         bigint(20)                             NOT NULL,
    `menu_mode`       varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `dark_mode`       varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `component_theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `topbar_theme`    varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `menu_theme`      varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `input_style`     varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `light_logo`      INT(4)                                 NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_sys_user_preferences_sys_user` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `sys_user_preferences` (`id`, `idate`, `udate`, `status`, `sys_user_id`, `menu_mode`, `dark_mode`,
                                    `component_theme`, `topbar_theme`, `menu_theme`, `input_style`, `light_logo`)
VALUES (1, '2021-04-01 00:00:00', NULL, 1, 1, 'layout-horizontal', 'light', 'purple', 'light', 'light', 'outlined', 0),
       (2, '2021-04-01 00:00:00', NULL, 1, 2, 'layout-horizontal', 'light', 'purple', 'light', 'light', 'outlined', 0),
       (3, '2021-04-01 00:00:00', NULL, 1, 3, 'layout-horizontal', 'light', 'purple', 'light', 'light', 'outlined', 0);
-- --------------------------------------------------------
-- Table structure for table `sys_user_registration`
--
DROP TABLE IF EXISTS `sys_user_registration`;
CREATE TABLE IF NOT EXISTS `sys_user_registration`
(
    `id`          bigint(20)                             NOT NULL AUTO_INCREMENT,
    `idate`       datetime                               NOT NULL,
    `udate`       datetime                                        DEFAULT NULL,
    `status`      tinyint(4)                             NOT NULL DEFAULT '1' COMMENT '-1: deleted, 0:passive, 1:active',
    `sys_user_id`     bigint(20)                             NOT NULL,
    `request_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `valid_until` datetime                               NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_sys_user_registration_sys_user` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;
-- --------------------------------------------------------
-- Table structure for table `sys_role`
--
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE IF NOT EXISTS `sys_role`
(
    `id`        bigint(20)                             NOT NULL AUTO_INCREMENT,
    `status`    tinyint(4)                             NOT NULL DEFAULT '1' COMMENT '-1: deleted, 0:passive, 1:active',
    `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `sys_role` (`id`, `status`, `name`)
VALUES (1, 1, 'SUPER_USER'),
       (2, 1, 'ADMINISTRATOR'),
       (3, 1, 'USER');
-- --------------------------------------------------------
-- Table structure for table `sys_user_role`
--
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE IF NOT EXISTS `sys_user_role`
(
    `id`      bigint(20) NOT NULL AUTO_INCREMENT,
    `sys_user_id` bigint(20) NOT NULL,
    `sys_role_id` bigint(20) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_sys_user_role_sys_user` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`),
    CONSTRAINT `FK_sys_user_role_sys_role` FOREIGN KEY (`sys_role_id`) REFERENCES `sys_role` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `sys_user_role` (`id`, `sys_user_id`, `sys_role_id`)
VALUES (1, 1, 1),
       (2, 2, 2),
       (3, 3, 3);
-- --------------------------------------------------------
-- Table structure for table `sys_login_failure`
--
DROP TABLE IF EXISTS `sys_login_failure`;
CREATE TABLE IF NOT EXISTS `sys_login_failure`
(
    `id`         bigint(20)                             NOT NULL AUTO_INCREMENT,
    `idate`      datetime                               NOT NULL,
    `udate`      datetime                                        DEFAULT NULL,
    `status`     tinyint(4)                             NOT NULL DEFAULT '1' COMMENT '-1: deleted, 0:passive, 1:active',
    `sys_user_id`    bigint(20)                             NOT NULL,
    `ip_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_sys_login_failure_sys_user` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 8
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;
-- --------------------------------------------------------
-- Table structure for table `sys_login_success`
--
DROP TABLE IF EXISTS `sys_login_success`;
CREATE TABLE IF NOT EXISTS `sys_login_success`
(
    `id`         bigint(20)                             NOT NULL AUTO_INCREMENT,
    `idate`      datetime                               NOT NULL,
    `sys_user_id`    bigint(20)                             NOT NULL,
    `ip_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_sys_login_success_sys_user` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 45
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;
-- --------------------------------------------------------
-- Table structure for table `currency`
--
DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency`
(
    `id`            bigint(20)                                             NOT NULL AUTO_INCREMENT,
    `idate`         datetime                                               NOT NULL,
    `udate`         datetime                                                        DEFAULT NULL,
    `status`        tinyint(4)                                             NOT NULL DEFAULT '1' COMMENT '-1: deleted, 0:passive, 1:active',
    `name`          varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `code`          varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci  NOT NULL,
    `symbol`          varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci  DEFAULT NULL,
    `exchange_rate` decimal(20, 5)                                         NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `name` (`name`) USING BTREE,
    UNIQUE INDEX `code` (`code`) USING BTREE,
    UNIQUE INDEX `symbol` (`symbol`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 156
  CHARACTER SET = utf8
  COLLATE = utf8_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `currency` (`id`, `idate`, `udate`, `status`, `name`, `code`, `symbol`, `exchange_rate`)
VALUES (1, '2021-05-08 15:31:44', NULL, 1, 'Türk Lirası', 'TRY', '₺', 1),
       (2, '2021-05-11 17:08:52', NULL, 1, 'Euro', 'EUR', '€', 2),
       (3, '2021-05-11 17:08:52', NULL, 1, 'Dolar', 'USD', '$', 2);
-- --------------------------------------------------------
-- Table structure for table `country`
--
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`
(
    `id`           bigint(20)                                              NOT NULL AUTO_INCREMENT,
    `idate`        datetime                                                NOT NULL,
    `udate`        datetime                                                         DEFAULT NULL,
    `status`       tinyint(4)                                              NOT NULL DEFAULT '1' COMMENT '-1: deleted, 0:passive, 1:active',
    `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci  NOT NULL,
    `currency_id`  bigint(20)                                              NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `name` (`name`) USING BTREE,
    UNIQUE INDEX `code` (`code`) USING BTREE,
    CONSTRAINT `FK_country_currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  CHARACTER SET = utf8
  COLLATE = utf8_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `country` (`id`, `idate`, `udate`, `status`, `name`, `code`, `currency_id`)
VALUES (1, '2021-05-08 15:31:44', NULL, 1, 'Türkiye', 'TR', 1);
-- --------------------------------------------------------
-- Table structure for table `region`
--
DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region`
(
    `id`          bigint(20)                             NOT NULL AUTO_INCREMENT,
    `idate`       datetime                               NOT NULL,
    `udate`       datetime                                        DEFAULT NULL,
    `status`      tinyint(4)                             NOT NULL DEFAULT '1' COMMENT '-1: deleted, 0:passive, 1:active',
    `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `country_id`  bigint(20)                             NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `name` (`name`) USING BTREE,
    CONSTRAINT `FK_region_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `region` (`id`, `idate`, `udate`, `status`, `name`, `country_id`)
VALUES (1, '2021-05-08 15:31:44', NULL, 1, 'Marmara', 1),
       (2, '2021-06-23 13:11:47', NULL, 1, 'Akdeniz', 1);
-- --------------------------------------------------------
-- Table structure for table `city`
--
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`
(
    `id`         bigint(20)                                             NOT NULL AUTO_INCREMENT,
    `idate`      datetime                                               NOT NULL,
    `udate`      datetime                                                        DEFAULT NULL,
    `status`     tinyint(4)                                             NOT NULL DEFAULT '1' COMMENT '-1: deleted, 0:passive, 1:active',
    `name`       varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    `country_id` bigint(20)                                             NOT NULL,
    `region_id`  bigint(20)                                             NULL     DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `name` (`name`) USING BTREE,
    CONSTRAINT `FK_city_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
    CONSTRAINT `FK_city_region` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  CHARACTER SET = utf8
  COLLATE = utf8_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `city` (`id`, `idate`, `udate`, `status`, `name`, `country_id`, `region_id`)
VALUES (1, '2021-05-08 15:31:44', NULL, 1, 'İstanbul', 1, 1),
       (2, '2021-05-11 17:08:52', NULL, 1, 'Mersin', 1, 2);
-- --------------------------------------------------------
-- Table structure for table `sys_event`
--
DROP TABLE IF EXISTS `sys_event`;
CREATE TABLE IF NOT EXISTS `sys_event`
(
    `id`            bigint(20)                              NOT NULL AUTO_INCREMENT,
    `idate`         datetime                                NOT NULL,
    `udate`         datetime                                DEFAULT NULL,
    `screen_name`   varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_by`    bigint(20)                              NOT NULL,
    `updated_by`    bigint(20)                              DEFAULT NULL,
    `event_status`  varchar(20) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `event_type`    varchar(20) COLLATE utf8mb4_unicode_ci  NOT NULL,
    `reject_reason` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_sys_event_created_by` FOREIGN KEY (`created_by`) REFERENCES `sys_user` (`id`),
    CONSTRAINT `FK_sys_event_updated_by` FOREIGN KEY (`created_by`) REFERENCES `sys_user` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;
-- --------------------------------------------------------
-- Table structure for table `sys_user_event`
--
DROP TABLE IF EXISTS `sys_event_user`;
CREATE TABLE IF NOT EXISTS `sys_event_user`
(
    `id`                bigint(20)                             NOT NULL AUTO_INCREMENT,
    `sys_event_id`          bigint(20)                             NOT NULL,
    `sys_user_id`           bigint(20)                                      DEFAULT NULL,
    `status`            tinyint(4)                                      DEFAULT NULL,
    `new_status`        tinyint(4)                             NOT NULL DEFAULT '1' COMMENT '-1: deleted, 0:passive, 1:active',
    `new_email`         varchar(50) COLLATE utf8mb4_unicode_ci          DEFAULT NULL,
    `name`              varchar(50) COLLATE utf8mb4_unicode_ci          DEFAULT NULL,
    `new_name`          varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `surname`           varchar(50) COLLATE utf8mb4_unicode_ci          DEFAULT NULL,
    `new_surname`       varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `mobile_number`     varchar(50) COLLATE utf8mb4_unicode_ci          DEFAULT NULL,
    `new_mobile_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `role`              varchar(15) COLLATE utf8mb4_unicode_ci          DEFAULT NULL,
    `new_role`          varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_sys_event_user_sys_event` FOREIGN KEY (`sys_event_id`) REFERENCES `sys_event` (`id`),
    CONSTRAINT `FK_sys_event_user_sys_user` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;

-- --------------------------------------------------------
-- Table structure for table `sys_event_region`
--
DROP TABLE IF EXISTS `sys_event_region`;
CREATE TABLE IF NOT EXISTS `sys_event_region`
(
    `id`              bigint(20)                             NOT NULL AUTO_INCREMENT,
    `sys_event_id`        bigint(20)                             NOT NULL,
    `region_id`       bigint(20)                                      DEFAULT NULL,
    `name`     varchar(50) COLLATE utf8mb4_unicode_ci          DEFAULT NULL,
    `new_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `status`          tinyint(4)                                      DEFAULT NULL,
    `new_status`      tinyint(4)                             NOT NULL DEFAULT '1' COMMENT '-1: deleted, 0:passive, 1:active',
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_sys_event_region_sys_event` FOREIGN KEY (`sys_event_id`) REFERENCES `sys_event` (`id`),
    CONSTRAINT `FK_sys_event_region_region` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;
-- --------------------------------------------------------


