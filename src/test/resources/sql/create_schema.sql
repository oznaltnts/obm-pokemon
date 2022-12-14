SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+03:00";
/*!40101 SET NAMES utf8mb4 */;
-- Database: `pokemon`
CREATE DATABASE IF NOT EXISTS `pokemon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `pokemon`;
-- --------------------------------------------------------
-- Table structure for table `ref_type`
--
DROP TABLE IF EXISTS `ref_type`;
CREATE TABLE IF NOT EXISTS `ref_type`
(
    `id`        bigint(20)                             NOT NULL AUTO_INCREMENT,
    `enum_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
    `bug`       int(10)                                NOT NULL DEFAULT 1000,
    `dark`      int(10)                                NOT NULL DEFAULT 1000,
    `dragon`    int(10)                                NOT NULL DEFAULT 1000,
    `electric`  int(10)                                NOT NULL DEFAULT 1000,
    `fairy`     int(10)                                NOT NULL DEFAULT 1000,
    `fighting`  int(10)                                NOT NULL DEFAULT 1000,
    `fire`      int(10)                                NOT NULL DEFAULT 1000,
    `flying`    int(10)                                NOT NULL DEFAULT 1000,
    `ghost`     int(10)                                NOT NULL DEFAULT 1000,
    `grass`     int(10)                                NOT NULL DEFAULT 1000,
    `ground`    int(10)                                NOT NULL DEFAULT 1000,
    `ice`       int(10)                                NOT NULL DEFAULT 1000,
    `normal`    int(10)                                NOT NULL DEFAULT 1000,
    `poison`    int(10)                                NOT NULL DEFAULT 1000,
    `psychic`   int(10)                                NOT NULL DEFAULT 1000,
    `rock`      int(10)                                NOT NULL DEFAULT 1000,
    `steel`     int(10)                                NOT NULL DEFAULT 1000,
    `water`     int(10)                                NOT NULL DEFAULT 1000,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1;
-- --------------------------------------------------------
-- Table structure for table `ref_family`
--
DROP TABLE IF EXISTS `ref_family`;
CREATE TABLE IF NOT EXISTS `ref_family`
(
    `id`                bigint(20)                             NOT NULL AUTO_INCREMENT,
    `idate`             DATETIME                               NOT NULL,
    `udate`             DATETIME                               NULL DEFAULT NULL,
    `name`       varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `category`          varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
    `buddy_distance` int(5)                                 NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1;
-- --------------------------------------------------------
-- Table structure for table `ref_pokemon`
--
DROP TABLE IF EXISTS `ref_pokemon`;
CREATE TABLE IF NOT EXISTS `ref_pokemon`
(
    `id`                    bigint(20)                             NOT NULL AUTO_INCREMENT,
    `idate`                 DATETIME                               NOT NULL,
    `udate`                 DATETIME                               NULL DEFAULT NULL,
    `pokedex`               int(5)                                 NOT NULL,
    `name`                  varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `ref_family_id` bigint(20)                             NOT NULL,
    `primary_type_id`       bigint(20)                             NOT NULL,
    `secondary_type_id`     bigint(20)                             NULL DEFAULT NULL,
    `attack`                int(5)                                 NOT NULL,
    `defense`               int(5)                                 NOT NULL,
    `stamina`               int(5)                                 NOT NULL,
    `generation`            varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
    `charge_move_stardust`  int(10)                                NOT NULL,
    `charge_move_candy`     int(5)                                 NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `FK_ref_pokemon_ref_pokemon_family` FOREIGN KEY (`ref_family_id`) REFERENCES `ref_family` (`id`),
    CONSTRAINT `FK_ref_pokemon_primary_type` FOREIGN KEY (`primary_type_id`) REFERENCES `ref_type` (`id`),
    CONSTRAINT `FK_ref_pokemon_secondary_type` FOREIGN KEY (`secondary_type_id`) REFERENCES `ref_type` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1;
-- --------------------------------------------------------
-- Table structure for table `ref_pokemon_evolution`
--
DROP TABLE IF EXISTS `ref_pokemon_evolution`;
CREATE TABLE IF NOT EXISTS `ref_pokemon_evolution`
(
    `id`             bigint(20)                             NOT NULL AUTO_INCREMENT,
    `ref_pokemon_id` bigint(20)                             NOT NULL,
    `evolution_id`   bigint(20)                             NOT NULL,
    `candy_cost`     int(5)                                 NOT NULL,
    `special_item`   varchar(20) COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `FK_ref_pokemon_evolution_from` FOREIGN KEY (`ref_pokemon_id`) REFERENCES `ref_pokemon` (`id`),
    CONSTRAINT `FK_ref_pokemon_evolution_to` FOREIGN KEY (`evolution_id`) REFERENCES `ref_pokemon` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1;
-- --------------------------------------------------------
-- Table structure for table `ref_move_fast`
--
DROP TABLE IF EXISTS `ref_move_fast`;
CREATE TABLE IF NOT EXISTS `ref_move_fast`
(
    `id`              bigint(20)                             NOT NULL AUTO_INCREMENT,
    `idate`           DATETIME                               NOT NULL,
    `udate`           DATETIME                               NULL DEFAULT NULL,
    `name`            varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `primary_type_id` bigint(20)                             NOT NULL,
    `pvp_power`       int(5)                                 NOT NULL,
    `pvp_energy`      int(5)                                 NOT NULL,
    `pvp_turns`       int(5)                                 NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `FK_ref_move_fast_primary_type` FOREIGN KEY (`primary_type_id`) REFERENCES `ref_type` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1;
-- --------------------------------------------------------
-- Table structure for table `pokemon_move_fast`
--
DROP TABLE IF EXISTS `pokemon_move_fast`;
CREATE TABLE IF NOT EXISTS `pokemon_move_fast`
(
    `id`               bigint(20) NOT NULL AUTO_INCREMENT,
    `idate`            DATETIME   NOT NULL,
    `udate`            DATETIME   NULL     DEFAULT NULL,
    `ref_pokemon_id`   bigint(20) NOT NULL,
    `ref_move_fast_id` bigint(20) NOT NULL,
    `is_elite`         tinyint    NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    CONSTRAINT `FK_pokemon_move_fast_ref_pokemon` FOREIGN KEY (`ref_pokemon_id`) REFERENCES `ref_pokemon` (`id`),
    CONSTRAINT `FK_pokemon_move_fast_ref_move_fast` FOREIGN KEY (`ref_move_fast_id`) REFERENCES `ref_move_fast` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1;
-- --------------------------------------------------------
-- Table structure for table `ref_move_charge`
--
DROP TABLE IF EXISTS `ref_move_charge`;
CREATE TABLE IF NOT EXISTS `ref_move_charge`
(
    `id`              bigint(20)                             NOT NULL AUTO_INCREMENT,
    `idate`           DATETIME                               NOT NULL,
    `udate`           DATETIME                               NULL DEFAULT NULL,
    `name`            varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `primary_type_id` bigint(20)                             NOT NULL,
    `pvp_power`       int(5)                                 NOT NULL,
    `pvp_energy`      int(5)                                 NOT NULL,
    `pvp_turns`       int(5)                                 NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `FK_ref_move_charge_primary_type` FOREIGN KEY (`primary_type_id`) REFERENCES `ref_type` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1;
-- --------------------------------------------------------
-- Table structure for table `pokemon_move_charge`
--
DROP TABLE IF EXISTS `pokemon_move_charge`;
CREATE TABLE IF NOT EXISTS `pokemon_move_charge`
(
    `id`                 bigint(20) NOT NULL AUTO_INCREMENT,
    `idate`              DATETIME   NOT NULL,
    `udate`              DATETIME   NULL     DEFAULT NULL,
    `ref_pokemon_id`     bigint(20) NOT NULL,
    `ref_move_charge_id` bigint(20) NOT NULL,
    `is_elite`           tinyint    NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    CONSTRAINT `FK_pokemon_move_charge_ref_pokemon` FOREIGN KEY (`ref_pokemon_id`) REFERENCES `ref_pokemon` (`id`),
    CONSTRAINT `FK_pokemon_move_charge_ref_move_charge` FOREIGN KEY (`ref_move_charge_id`) REFERENCES `ref_move_charge` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1;
-- --------------------------------------------------------
-- Table structure for table `sys_user`
--
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE IF NOT EXISTS `sys_user`
(
    `id`         BIGINT              NOT NULL AUTO_INCREMENT,
    `idate`      DATETIME            NOT NULL,
    `udate`      DATETIME                     DEFAULT NULL,
    `status`     TINYINT             NOT NULL DEFAULT 1 COMMENT '-1: deleted, 0:passive, 1:active',
    `username`   VARCHAR(100) UNIQUE NOT NULL,
    `name`       VARCHAR(50)         NOT NULL,
    `last_login` DATETIME            NOT NULL,
    `password`   VARCHAR(255)        NOT NULL,
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;
-- --------------------------------------------------------
-- Table structure for table `sys_user_preference`
--
DROP TABLE IF EXISTS `sys_user_preference`;
CREATE TABLE IF NOT EXISTS `sys_user_preference`
(
    `id`              BIGINT      NOT NULL AUTO_INCREMENT,
    `idate`           DATETIME    NOT NULL,
    `udate`           DATETIME             DEFAULT NULL,
    `sys_user_id`     BIGINT      NOT NULL,
    `menu_mode`       VARCHAR(50) NOT NULL,
    `dark_mode`       VARCHAR(50) NOT NULL,
    `component_theme` VARCHAR(50) NOT NULL,
    `topbar_theme`    VARCHAR(50) NOT NULL,
    `menu_theme`      VARCHAR(50) NOT NULL,
    `input_style`     VARCHAR(50) NOT NULL,
    `light_logo`      tinyint     NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    CONSTRAINT `FK_user_preference_user` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;
-- --------------------------------------------------------
-- Table structure for table `sys_user_ref_family`
--
DROP TABLE IF EXISTS `sys_user_ref_family`;
CREATE TABLE IF NOT EXISTS `sys_user_ref_family`
(
    `id`            BIGINT   NOT NULL AUTO_INCREMENT,
    `idate`         DATETIME NOT NULL,
    `udate`         DATETIME DEFAULT NULL,
    `sys_user_id`   BIGINT   NOT NULL,
    `ref_family_id` BIGINT   NOT NULL,
    `user_candy`    int(5)   NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `FK_sys_user_ref_family_sys_user` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`),
    CONSTRAINT `FK_sys_user_ref_family_ref_family` FOREIGN KEY (`ref_family_id`) REFERENCES `ref_family` (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 1;
-- --------------------------------------------------------
-- Table structure for table `sys_user_ref_pokemon`
--
DROP TABLE IF EXISTS `sys_user_ref_pokemon`;
CREATE TABLE IF NOT EXISTS `sys_user_ref_pokemon`
(
    `id`                     bigint(20) NOT NULL AUTO_INCREMENT,
    `idate`                  DATETIME   NOT NULL,
    `udate`                  DATETIME   NULL DEFAULT NULL,
    `sys_user_ref_family_id` bigint(20) NOT NULL,
    `weight`                 DOUBLE     NOT NULL,
    `height`                 DOUBLE     NOT NULL,
    `iv_attack`              int(5)     NOT NULL,
    `iv_defense`             int(5)     NOT NULL,
    `iv_stamina`             int(5)     NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `FK_sys_user_ref_pokemon_sys_user_ref_family` FOREIGN KEY (`sys_user_ref_family_id`) REFERENCES `sys_user_ref_family` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1;




