
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
    `pokedex`              int(5)                                 NOT NULL,
    `primary_type_id`      bigint(20)                             NOT NULL,
    `secondary_type_id`    bigint(20)                             NULL DEFAULT NULL,
    `attack`               int(5)                                 NOT NULL,
    `defense`              int(5)                                 NOT NULL,
    `stamina`              int(5)                                 NOT NULL,
    `generation`           varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
    `category`             varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
    `charge_move_stardust` int(10)                                NOT NULL,
    `charge_move_candy`    int(5)                                 NOT NULL,
    `buddy_distance_km`    double                                 NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `FK_ref_pokemon_primary_type` FOREIGN KEY (`primary_type_id`) REFERENCES `ref_type` (`id`),
    CONSTRAINT `FK_ref_pokemon_secondary_type` FOREIGN KEY (`secondary_type_id`) REFERENCES `ref_type` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC;

INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Bulbasaur', 1, 10, 14, 118, 111, 128, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Ivysaur', 2, 10, 14, 151, 143, 155, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Venusaur', 3, 10, 14, 198, 189, 190, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Charmander', 4, 7, NULL, 116, 93, 118, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Charmeleon', 5, 7, NULL, 158, 126, 151, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Charizard', 6, 7, 8, 223, 173, 186, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Squirtle', 7, 18, NULL, 94, 121, 127, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Wartortle', 8, 18, NULL, 126, 155, 153, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Blastoise', 9, 18, NULL, 171, 207, 188, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Caterpie', 10, 1, NULL, 55, 55, 128, 'GENERATION1', 'NON_LEGENDARY', 0, 0, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Metapod', 11, 1, NULL, 45, 80, 137, 'GENERATION1', 'NON_LEGENDARY', 0, 0, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Butterfree', 12, 1, 8, 167, 137, 155, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Weedle', 13, 1, 14, 63, 50, 120, 'GENERATION1', 'NON_LEGENDARY', 0, 0, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Kakuna', 14, 1, 14, 46, 75, 128, 'GENERATION1', 'NON_LEGENDARY', 0, 0, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Beedrill', 15, 1, 14, 169, 130, 163, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Pidgey', 16, 13, 8, 85, 73, 120, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Pidgeotto', 17, 13, 8, 117, 105, 160, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Pidgeot', 18, 13, 8, 166, 154, 195, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Rattata', 19, 13, NULL, 103, 70, 102, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Raticate', 20, 13, NULL, 161, 139, 146, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Spearow', 21, 13, 8, 112, 60, 120, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Fearow', 22, 13, 8, 182, 133, 163, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Ekans', 23, 14, NULL, 110, 97, 111, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Arbok', 24, 14, NULL, 167, 153, 155, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Pikachu', 25, 4, NULL, 112, 96, 111, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Raichu', 26, 4, NULL, 193, 151, 155, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Sandshrew', 27, 11, NULL, 126, 120, 137, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Sandslash', 28, 11, NULL, 182, 175, 181, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Nidoran', 29, 14, NULL, 86, 89, 146, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Nidorina', 30, 14, NULL, 117, 120, 172, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Nidoqueen', 31, 14, 11, 180, 173, 207, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Nidoran', 32, 14, NULL, 105, 76, 130, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Nidorino', 33, 14, NULL, 137, 111, 156, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Nidoking', 34, 14, 11, 204, 156, 191, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Clefairy', 35, 5, NULL, 107, 108, 172, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Clefable', 36, 5, NULL, 178, 162, 216, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Vulpix', 37, 7, NULL, 96, 109, 116, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Ninetales', 38, 7, NULL, 169, 190, 177, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Jigglypuff', 39, 13, 5, 80, 41, 251, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Wigglytuff', 40, 13, 5, 156, 90, 295, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Zubat', 41, 14, 8, 83, 73, 120, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Golbat', 42, 14, 8, 161, 150, 181, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Oddish', 43, 10, 14, 131, 112, 128, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Gloom', 44, 10, 14, 153, 136, 155, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Vileplume', 45, 10, 14, 202, 167, 181, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Paras', 46, 1, 10, 121, 99, 111, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Parasect', 47, 1, 10, 165, 146, 155, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Venonat', 48, 1, 14, 100, 100, 155, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Venomoth', 49, 1, 14, 179, 143, 172, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Diglett', 50, 11, NULL, 109, 78, 67, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Dugtrio', 51, 11, NULL, 167, 136, 111, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Meowth', 52, 13, NULL, 92, 78, 120, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Persian', 53, 13, NULL, 150, 136, 163, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Psyduck', 54, 18, NULL, 122, 95, 137, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Golduck', 55, 18, NULL, 191, 162, 190, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Mankey', 56, 6, NULL, 148, 82, 120, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Primeape', 57, 6, NULL, 207, 138, 163, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Growlithe', 58, 7, NULL, 136, 93, 146, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Arcanine', 59, 7, NULL, 227, 166, 207, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Poliwag', 60, 18, NULL, 101, 82, 120, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Poliwhirl', 61, 18, NULL, 130, 123, 163, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Poliwrath', 62, 18, 6, 182, 184, 207, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Abra', 63, 15, NULL, 195, 82, 93, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Kadabra', 64, 15, NULL, 232, 117, 120, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Alakazam', 65, 15, NULL, 271, 167, 146, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Machop', 66, 6, NULL, 137, 82, 172, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Machoke', 67, 6, NULL, 177, 125, 190, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Machamp', 68, 6, NULL, 234, 159, 207, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Bellsprout', 69, 10, 14, 139, 61, 137, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Weepinbell', 70, 10, 14, 172, 92, 163, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Victreebel', 71, 10, 14, 207, 135, 190, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Tentacool', 72, 18, 14, 97, 149, 120, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Tentacruel', 73, 18, 14, 166, 209, 190, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Geodude', 74, 16, 11, 132, 132, 120, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Graveler', 75, 16, 11, 164, 164, 146, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Golem', 76, 16, 11, 211, 198, 190, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Ponyta', 77, 7, NULL, 170, 127, 137, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Rapidash', 78, 7, NULL, 207, 162, 163, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Slowpoke', 79, 18, 15, 109, 98, 207, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Slowbro', 80, 18, 15, 177, 180, 216, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Magnemite', 81, 4, 17, 165, 121, 93, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Magneton', 82, 4, 17, 223, 169, 137, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Farfetch\'d', 83, 13, 8, 124, 115, 141, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Doduo', 84, 13, 8, 158, 83, 111, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Dodrio', 85, 13, 8, 218, 140, 155, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Seel', 86, 18, NULL, 85, 121, 163, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Dewgong', 87, 18, NULL, 139, 177, 207, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Grimer', 88, 14, NULL, 135, 90, 190, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Muk', 89, 14, NULL, 190, 172, 233, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Shellder', 90, 18, NULL, 116, 134, 102, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Cloyster', 91, 18, NULL, 186, 256, 137, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Gastly', 92, 9, 14, 186, 67, 102, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Haunter', 93, 9, 14, 223, 107, 128, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Gengar', 94, 9, 14, 261, 149, 155, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Onix', 95, 16, 11, 85, 232, 111, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Drowzee', 96, 15, NULL, 89, 136, 155, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Hypno', 97, 15, NULL, 144, 193, 198, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Krabby', 98, 18, NULL, 181, 124, 102, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Kingler', 99, 18, NULL, 240, 181, 146, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Voltorb', 100, 4, NULL, 109, 111, 120, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Electrode', 101, 4, NULL, 173, 173, 155, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Exeggcute', 102, 10, 15, 107, 125, 155, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Exeggutor', 103, 10, 15, 233, 149, 216, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Cubone', 104, 11, NULL, 90, 144, 137, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Marowak', 105, 11, NULL, 144, 186, 155, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Hitmonlee', 106, 6, NULL, 224, 181, 137, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Hitmonchan', 107, 6, NULL, 193, 197, 137, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Lickitung', 108, 13, NULL, 108, 137, 207, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Koffing', 109, 14, NULL, 119, 141, 120, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Weezing', 110, 14, NULL, 174, 197, 163, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Rhyhorn', 111, 11, 16, 140, 127, 190, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Rhydon', 112, 11, 16, 222, 171, 233, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Chansey', 113, 13, NULL, 60, 128, 487, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Tangela', 114, 10, NULL, 183, 169, 163, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Kangaskhan', 115, 13, NULL, 181, 165, 233, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Horsea', 116, 18, NULL, 129, 103, 102, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Seadra', 117, 18, NULL, 187, 156, 146, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Goldeen', 118, 18, NULL, 123, 110, 128, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Seaking', 119, 18, NULL, 175, 147, 190, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Staryu', 120, 18, NULL, 137, 112, 102, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Starmie', 121, 18, 15, 210, 184, 155, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Mr. Mime', 122, 15, 5, 192, 205, 120, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Scyther', 123, 1, 8, 218, 170, 172, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Jynx', 124, 12, 15, 223, 151, 163, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Electabuzz', 125, 4, NULL, 198, 158, 163, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Magmar', 126, 7, NULL, 206, 154, 163, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Pinsir', 127, 1, NULL, 238, 182, 163, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Tauros', 128, 13, NULL, 198, 183, 181, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Magikarp', 129, 18, NULL, 29, 85, 85, 'GENERATION1', 'NON_LEGENDARY', 0, 0, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Gyarados', 130, 18, 8, 237, 186, 216, 'GENERATION1', 'NON_LEGENDARY', 10000, 25, 1);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Lapras', 131, 18, NULL, 165, 174, 277, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Ditto', 132, 13, NULL, 91, 91, 134, 'GENERATION1', 'NON_LEGENDARY', 0, 0, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Eevee', 133, 13, NULL, 104, 114, 146, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Vaporeon', 134, 18, NULL, 205, 161, 277, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Jolteon', 135, 4, NULL, 232, 182, 163, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Flareon', 136, 7, NULL, 246, 179, 163, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Porygon', 137, 13, NULL, 153, 136, 163, 'GENERATION1', 'NON_LEGENDARY', 50000, 50, 3);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Omanyte', 138, 16, 18, 155, 153, 111, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Omastar', 139, 16, 18, 207, 201, 172, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Kabuto', 140, 16, 18, 148, 140, 102, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Kabutops', 141, 16, 18, 220, 186, 155, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Aerodactyl', 142, 16, 8, 221, 159, 190, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Snorlax', 143, 13, NULL, 190, 169, 330, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Articuno', 144, 12, 8, 192, 236, 207, 'GENERATION1', 'LEGENDARY', 100000, 100, 20);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Zapdos', 145, 4, 8, 253, 185, 207, 'GENERATION1', 'LEGENDARY', 100000, 100, 20);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Moltres', 146, 7, 8, 251, 181, 207, 'GENERATION1', 'LEGENDARY', 100000, 100, 20);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Dratini', 147, 3, NULL, 119, 91, 121, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Dragonair', 148, 3, NULL, 163, 135, 156, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Dragonite', 149, 3, 8, 263, 198, 209, 'GENERATION1', 'NON_LEGENDARY', 75000, 75, 5);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Mewtwo', 150, 15, NULL, 300, 182, 214, 'GENERATION1', 'LEGENDARY', 100000, 100, 20);
INSERT INTO `ref_pokemon` (`idate`, `name`, `pokedex`, `primary_type_id`, `secondary_type_id`, `attack`, `defense`, `stamina`, `generation`, `category`, `charge_move_stardust`, `charge_move_candy`, `buddy_distance_km`) VALUES ('2022-12-31 00:00:00', 'Mew', 151, 15, NULL, 210, 210, 225, 'GENERATION1', 'MYTHICAL', 100000, 100, 20);

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





