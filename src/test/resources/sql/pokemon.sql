
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
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('BUG', 1000, 1600, 1000, 1000, 625, 625, 625, 625, 625, 1600, 1000, 1000, 1000, 625, 1600, 1000, 625, 1000);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('DARK', 1000, 625, 1000, 1000, 625, 625, 1000, 1000, 1600, 1000, 1000, 1000, 1000, 1000, 1600, 1000, 1000, 1000);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('DRAGON', 1000, 1000, 1600, 1000, 391, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 625, 1000);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('ELECTRIC', 1000, 1000, 625, 625, 1000, 1000, 1000, 1600, 1000, 625, 391, 1000, 1000, 1000, 1000, 1000, 1000, 1600);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('FAIRY', 1000, 1600, 1600, 1000, 1000, 1600, 625, 1000, 1000, 1000, 1000, 1000, 1000, 625, 1000, 1000, 625, 1000);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('FIGHTING', 625, 1600, 1000, 1000, 625, 1000, 1000, 625, 391, 1000, 1000, 1600, 1600, 625, 625, 1600, 1600, 1000);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('FIRE', 1600, 1000, 625, 1000, 1000, 1000, 625, 1000, 1000, 1600, 1000, 1600, 1000, 1000, 1000, 625, 1.600, 625);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('FLYING', 1600, 1000, 1000, 625, 1000, 1600, 1000, 1000, 1000, 1600, 1000, 1000, 1000, 1000, 1000, 625, 625, 1000);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('GHOST', 1000, 625, 1000, 1000, 1000, 1000, 1000, 1000, 1600, 1000, 1000, 1000, 391, 1000, 1600, 1000, 1000, 1000);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('GRASS', 625, 1000, 625, 1000, 1000, 1000, 625, 625, 1000, 625, 1600, 1000, 1000, 625, 1000, 1600, 625, 1600);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('GROUND', 625, 1000, 1000, 1600, 1000, 1000, 1600, 391, 1000, 625, 1000, 1000, 1000, 1600, 1000, 1.600, 1600, 1000);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('ICE', 1000, 1000, 1600, 1000, 1000, 1000, 625, 1600, 1000, 1600, 1600, 625, 1000, 1000, 1000, 1000, 625, 625);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('NORMAL', 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 391, 1000, 1000, 1000, 1000, 1000, 1000, 625, 625, 1000);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('POISON', 1000, 1000, 1000, 1000, 1600, 1000, 1000, 1000, 625, 1600, 625, 1000, 1000, 625, 1000, 625, 391, 1000);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('PSYCHIC', 1000, 391, 1000, 1000, 1000, 1600, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1600, 625, 1000, 625, 1000);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('ROCK', 1600, 1000, 1000, 1000, 1000, 625, 1600, 1600, 1000, 1000, 625, 1600, 1000, 1000, 1000, 1000, 625, 1000);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('STEEL', 1000, 1000, 1000, 625, 1600, 1000, 625, 1000, 1000, 1000, 1000, 1600, 1000, 1000, 1000, 1.600, 625, 625);
INSERT INTO `ref_type` (`enum_type`, `bug`, `dark`, `dragon`, `electric`, `fairy`, `fighting`, `fire`,
                                  `flying`, `ghost`, `grass`, `ground`, `ice`, `normal`, `poison`, `psychic`, `rock`,
                                  `steel`, `water`)
VALUES ('WATER', 1000, 1000, 625, 1000, 1000, 1000, 1600, 1000, 1000, 625, 1600, 1000, 1000, 1000, 1000, 1.600, 1000, 625);
-- --------------------------------------------------------
-- Table structure for table `ref_pokemon`
--
DROP TABLE IF EXISTS `ref_pokemon`;
CREATE TABLE IF NOT EXISTS `ref_pokemon`
(
    `id`                   bigint(20)                             NOT NULL AUTO_INCREMENT,
    `idate`                DATETIME                               NOT NULL,
    `udate`                DATETIME                               NULL DEFAULT NULL,
    `name`                 varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `primary_type_id`      bigint(20)                             NOT NULL,
    `secondary_type_id`    bigint(20)                             NULL DEFAULT NULL,
    `attack`               int(5)                                 NOT NULL,
    `defense`              int(5)                                 NOT NULL,
    `stamina`              int(5)                                 NOT NULL,
    `generation`           varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
    `category`             varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
    `charge_move_stardust` int(10)                                NOT NULL,
    `charge_move_candy`    int(5)                                 NOT NULL,
    `buddy_distance`       double                                 NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_ref_pokemon_primary_type` FOREIGN KEY (`primary_type_id`) REFERENCES `ref_type` (`id`),
    CONSTRAINT `FK_ref_pokemon_secondary_type` FOREIGN KEY (`secondary_type_id`) REFERENCES `ref_type` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `ref_pokemon` (`idate`, `name`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`,
                           `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance`)
VALUES ('2022-12-31 00:00:00', 'Bulbasaur', 10, 15, 118, 111, 128, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`,
                           `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance`)
VALUES ('2022-12-31 00:00:00', 'Ivysaur', 10, 15, 151, 143, 155, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 3);
-- --------------------------------------------------------
-- Table structure for table `pokemon_evolution`
--
DROP TABLE IF EXISTS `pokemon_evolution`;
CREATE TABLE IF NOT EXISTS `pokemon_evolution`
(
    `id`           bigint(20) NOT NULL AUTO_INCREMENT,
    `pokemon_id`   bigint(20) NOT NULL,
    `evolution_id` bigint(20) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_pokemon_evolution_from` FOREIGN KEY (`pokemon_id`) REFERENCES `ref_pokemon` (`id`),
    CONSTRAINT `FK_pokemon_evolution_to` FOREIGN KEY (`evolution_id`) REFERENCES `ref_pokemon` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `pokemon_evolution` (`pokemon_id`, `evolution_id`) VALUES (1, 2);
-- --------------------------------------------------------
-- Table structure for table `ref_fast_move_pvp`
--
DROP TABLE IF EXISTS `ref_fast_move_pvp`;
CREATE TABLE IF NOT EXISTS `ref_fast_move_pvp`
(
    `id`              bigint(20)                             NOT NULL AUTO_INCREMENT,
    `idate`           DATETIME                               NOT NULL,
    `udate`           DATETIME                               NULL DEFAULT NULL,
    `name`            varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `primary_type_id` bigint(20)                             NOT NULL,
    `power`           int(5)                                 NOT NULL,
    `energy`          int(5)                                 NOT NULL,
    `turns`           int(5)                                 NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_ref_fast_move_pvp_primary_type` FOREIGN KEY (`primary_type_id`) REFERENCES `ref_type` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `ref_fast_move_pvp` (`idate`, `name`, `primary_type_id`, `power`, `energy`, `turns`)
VALUES ('2022-12-31 00:00:00', 'Vine Whip', 10, 5, 8, 2);
INSERT INTO `ref_fast_move_pvp` (`idate`, `name`, `primary_type_id`, `power`, `energy`, `turns`)
VALUES ('2022-12-31 00:00:00', 'Tackle', 13, 3, 3, 1);
-- --------------------------------------------------------
-- Table structure for table `pokemon_move_pvp`
--
DROP TABLE IF EXISTS `pokemon_fast_move_pvp`;
CREATE TABLE IF NOT EXISTS `pokemon_fast_move_pvp`
(
    `id`           bigint(20) NOT NULL AUTO_INCREMENT,
    `pokemon_id`   bigint(20) NOT NULL,
    `fast_move_id` bigint(20) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_pokemon_fast_move_pokemon` FOREIGN KEY (`pokemon_id`) REFERENCES `ref_pokemon` (`id`),
    CONSTRAINT `FK_pokemon_fast_move_fast_move` FOREIGN KEY (`fast_move_id`) REFERENCES `ref_fast_move_pvp` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `pokemon_fast_move_pvp` (`pokemon_id`, `fast_move_id`) VALUES (1, 1);
INSERT INTO `pokemon_fast_move_pvp` (`pokemon_id`, `fast_move_id`) VALUES (1, 2);





