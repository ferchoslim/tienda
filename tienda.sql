/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : tienda

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-02-06 22:24:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `auto_code` int(10) unsigned DEFAULT NULL,
  `sm_facebook` varchar(255) DEFAULT NULL,
  `sm_twitter` varchar(255) DEFAULT NULL,
  `sm_instagram` varchar(255) DEFAULT NULL,
  `sales_email` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('1', '10218', 'celuclock.co', 'celuclock_co', 'celuclock.co', 'ventas@celuclock.co', 'info@celuclock.co', null, '2017-11-30 11:39:46');

-- ----------------------------
-- Table structure for attributes
-- ----------------------------
DROP TABLE IF EXISTS `attributes`;
CREATE TABLE `attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attributes
-- ----------------------------
INSERT INTO `attributes` VALUES ('1', 'Color', '2017-02-03 13:57:16', '2017-02-03 13:57:16');
INSERT INTO `attributes` VALUES ('2', 'Dual SIM', '2017-02-04 11:13:57', '2017-02-04 11:13:57');
INSERT INTO `attributes` VALUES ('3', 'Camara Trasera', '2017-02-04 11:24:04', '2017-02-04 11:24:04');
INSERT INTO `attributes` VALUES ('4', 'Flash', '2017-02-04 11:24:21', '2017-02-04 11:24:21');
INSERT INTO `attributes` VALUES ('5', 'CPU', '2017-02-04 11:35:53', '2017-02-04 11:35:53');
INSERT INTO `attributes` VALUES ('6', 'Memoria Interna', '2017-02-04 11:36:45', '2017-02-04 11:36:45');
INSERT INTO `attributes` VALUES ('7', 'Bandas', '2017-02-04 11:37:53', '2017-02-04 11:37:53');
INSERT INTO `attributes` VALUES ('8', 'RAM', '2017-02-04 11:46:20', '2017-02-04 11:46:20');
INSERT INTO `attributes` VALUES ('9', 'Camara Frontal', '2017-02-04 11:47:02', '2017-02-04 11:47:02');
INSERT INTO `attributes` VALUES ('10', 'Pantalla', '2017-02-04 11:47:52', '2017-02-04 11:47:52');
INSERT INTO `attributes` VALUES ('11', 'Memoria Extraible', '2017-02-04 11:48:46', '2017-02-04 11:48:46');
INSERT INTO `attributes` VALUES ('12', 'OS', '2017-02-04 12:00:27', '2017-02-04 12:00:27');
INSERT INTO `attributes` VALUES ('13', 'Largo', '2017-02-04 13:30:03', '2017-02-04 13:30:03');
INSERT INTO `attributes` VALUES ('14', 'Conector', '2017-02-04 13:30:22', '2017-02-04 13:30:22');
INSERT INTO `attributes` VALUES ('15', 'Tamaño de Bocina', '2017-02-04 13:31:09', '2017-02-04 13:31:09');
INSERT INTO `attributes` VALUES ('16', 'Material', '2017-02-04 14:07:39', '2017-02-04 14:07:39');
INSERT INTO `attributes` VALUES ('17', 'Tipo de Protección', '2017-02-04 14:08:32', '2017-02-04 14:08:32');
INSERT INTO `attributes` VALUES ('18', 'Camara', '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `attributes` VALUES ('19', 'Capacidad', '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `attributes` VALUES ('20', 'Tecnologia', '2017-02-05 01:39:26', '2017-02-05 01:39:26');
INSERT INTO `attributes` VALUES ('21', 'Banda', '2017-02-05 01:39:26', '2017-02-05 01:39:26');
INSERT INTO `attributes` VALUES ('22', 'Peso', '2017-02-05 01:39:26', '2017-02-05 01:39:26');
INSERT INTO `attributes` VALUES ('23', 'Chipset', '2017-02-05 01:39:26', '2017-02-05 01:39:26');
INSERT INTO `attributes` VALUES ('24', 'GPU', '2017-02-05 01:39:26', '2017-02-05 01:39:26');
INSERT INTO `attributes` VALUES ('25', 'Bateria', '2017-02-05 01:39:26', '2017-02-05 01:39:26');
INSERT INTO `attributes` VALUES ('27', 'Tamaño', '2017-02-08 16:49:59', '2017-02-08 16:49:59');
INSERT INTO `attributes` VALUES ('28', 'Aroma', '2017-02-08 16:50:09', '2017-02-08 16:50:09');
INSERT INTO `attributes` VALUES ('29', 'Lector de Huellas', '2017-02-24 09:42:27', '2017-02-24 09:42:27');
INSERT INTO `attributes` VALUES ('30', 'Bluetooth', '2017-02-24 10:15:56', '2017-02-24 10:15:56');
INSERT INTO `attributes` VALUES ('31', 'Dual-SIM', '2017-02-24 10:16:39', '2017-02-24 10:16:39');
INSERT INTO `attributes` VALUES ('32', 'Radio', '2017-04-02 22:53:19', '2017-04-02 22:53:19');
INSERT INTO `attributes` VALUES ('33', 'MP3', '2017-11-17 10:02:34', '2017-11-17 10:02:34');
INSERT INTO `attributes` VALUES ('34', 'USB', '2017-11-17 10:02:43', '2017-11-17 10:02:43');
INSERT INTO `attributes` VALUES ('35', 'WIFI', '2017-11-17 12:25:45', '2017-11-17 12:25:45');
INSERT INTO `attributes` VALUES ('36', 'HDD', '2017-11-24 09:17:06', '2017-11-24 09:17:06');
INSERT INTO `attributes` VALUES ('37', 'LAN', '2017-11-24 09:17:33', '2017-11-24 09:17:33');
INSERT INTO `attributes` VALUES ('38', 'Display', '2017-11-24 09:17:58', '2017-11-24 09:17:58');
INSERT INTO `attributes` VALUES ('39', 'LCD', '2017-11-24 09:31:01', '2017-11-24 09:31:01');
INSERT INTO `attributes` VALUES ('40', 'fernando', '2018-01-25 13:22:21', '2018-01-25 13:22:21');
INSERT INTO `attributes` VALUES ('41', 'ferchito', '2018-01-25 13:23:20', '2018-01-25 13:23:20');
INSERT INTO `attributes` VALUES ('42', 'delgado', '2018-01-25 13:24:02', '2018-01-25 13:24:02');
INSERT INTO `attributes` VALUES ('43', 'pruebita', '2018-01-25 13:24:16', '2018-01-25 13:24:16');
INSERT INTO `attributes` VALUES ('44', 'tomaot', '2018-01-25 13:26:54', '2018-01-25 13:26:54');
INSERT INTO `attributes` VALUES ('45', 'ffdf', '2018-01-25 13:26:59', '2018-01-25 13:26:59');
INSERT INTO `attributes` VALUES ('46', 'sdfsdf', '2018-01-25 13:27:03', '2018-01-25 13:27:03');
INSERT INTO `attributes` VALUES ('47', 'tamaño de senos', '2018-01-26 12:42:46', '2018-01-26 12:42:46');
INSERT INTO `attributes` VALUES ('48', 'tamaño de culo', '2018-01-26 12:42:55', '2018-01-26 12:42:55');
INSERT INTO `attributes` VALUES ('49', 'kop', '2018-01-26 13:17:09', '2018-01-26 13:17:09');
INSERT INTO `attributes` VALUES ('50', 'heroico', '2018-01-29 15:04:50', '2018-01-29 15:04:50');
INSERT INTO `attributes` VALUES ('51', 'ahora mismo', '2018-01-29 15:21:36', '2018-01-29 15:21:36');
INSERT INTO `attributes` VALUES ('52', 'test', '2018-01-29 15:27:15', '2018-01-29 15:27:15');
INSERT INTO `attributes` VALUES ('53', 'ppruebas', '2018-01-29 15:28:32', '2018-01-29 15:28:32');
INSERT INTO `attributes` VALUES ('54', 'erre', '2018-01-29 15:33:11', '2018-01-29 15:33:11');
INSERT INTO `attributes` VALUES ('55', '45', '2018-01-29 15:35:40', '2018-01-29 15:35:40');
INSERT INTO `attributes` VALUES ('56', 'ttr', '2018-01-29 15:36:19', '2018-01-29 15:36:19');
INSERT INTO `attributes` VALUES ('57', 'yupi', '2018-01-29 15:39:13', '2018-01-29 15:39:13');
INSERT INTO `attributes` VALUES ('58', 'omicron 8', '2018-01-30 12:03:57', '2018-01-30 12:03:57');
INSERT INTO `attributes` VALUES ('59', 'mecatron 9', '2018-01-30 12:12:40', '2018-01-30 12:12:40');

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sold` int(10) unsigned DEFAULT '0',
  `product_num` int(10) unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES ('1', 'Apple', 'apple.jpg', '0', '21', '2017-02-03 13:56:44', '2017-11-18 13:35:28');
INSERT INTO `brands` VALUES ('2', 'Samsung', 'samsung.png', '1', '488', '2017-02-03 22:19:16', '2017-11-30 17:21:29');
INSERT INTO `brands` VALUES ('3', 'Huawei', 'huawei.jpg', '1', '202', '2017-02-04 10:51:45', '2017-11-20 09:19:21');
INSERT INTO `brands` VALUES ('4', 'iswag', 'iswag.png', '0', '50', '2017-02-04 10:52:50', '2017-02-04 12:03:15');
INSERT INTO `brands` VALUES ('5', 'LANIX', 'lanix.jpg', '0', '10', '2017-02-04 10:53:30', '2017-02-04 11:50:21');
INSERT INTO `brands` VALUES ('6', 'Verykool', 'verykool.jpg', '0', '20', '2017-02-04 10:54:44', '2017-02-04 11:40:25');
INSERT INTO `brands` VALUES ('7', 'Alcatel', 'alcatel.jpg', '0', '110', '2017-02-04 12:07:40', '2017-12-27 09:17:36');
INSERT INTO `brands` VALUES ('8', 'Motorola', 'motorola.png', '1', '61', '2017-02-04 12:44:40', '2017-11-16 16:00:17');
INSERT INTO `brands` VALUES ('9', 'Motomo', 'motomo.jpg', '0', '220', '2017-02-04 13:59:49', '2017-08-08 16:02:36');
INSERT INTO `brands` VALUES ('10', 'VERUS', 'verus.png', '0', '40', '2017-02-04 14:55:00', '2017-08-08 14:51:18');
INSERT INTO `brands` VALUES ('11', 'INCIPIO', 'incipio.png', '0', '80', '2017-02-04 14:59:21', '2017-08-08 16:24:39');
INSERT INTO `brands` VALUES ('12', 'Generico', 'generico.png', '7', '1793', '2017-02-04 15:10:56', '2017-11-30 11:35:20');
INSERT INTO `brands` VALUES ('13', 'Nautica', 'nautica.png', '0', '0', '2017-02-08 16:48:10', '2017-02-08 16:48:10');
INSERT INTO `brands` VALUES ('14', 'HYUNDAI', 'hyundai.png', '0', '10', '2017-02-24 10:12:36', '2017-02-24 10:17:47');
INSERT INTO `brands` VALUES ('15', 'azumi', 'azumi.jpg', '0', '30', '2017-02-24 10:25:11', '2017-11-16 16:57:12');
INSERT INTO `brands` VALUES ('16', 'ZOOM', 'zoom.png', '0', '100', '2017-02-24 11:06:46', '2017-11-30 11:39:41');
INSERT INTO `brands` VALUES ('17', 'Hotcel', 'hotcel.png', '0', '60', '2017-02-24 11:58:51', '2017-02-24 12:10:17');
INSERT INTO `brands` VALUES ('18', 'LG', 'lg.jpg', '0', '40', '2017-02-24 12:24:31', '2017-11-16 14:24:40');
INSERT INTO `brands` VALUES ('19', 'HTC', 'htc.png', '0', '5', '2017-08-01 10:07:22', '2017-08-01 10:13:45');
INSERT INTO `brands` VALUES ('20', 'Remax', 'remax.jpg', '0', '100', '2017-08-14 17:02:54', '2017-11-18 11:24:17');
INSERT INTO `brands` VALUES ('21', 'Perfilado', 'perfilado.jpg', '0', '100', '2017-08-14 17:52:39', '2017-08-14 17:55:57');
INSERT INTO `brands` VALUES ('22', 'Genius', 'genius.jpg', '0', '30', '2017-08-14 18:09:26', '2017-11-17 15:13:08');
INSERT INTO `brands` VALUES ('23', 'CAT', 'cat.jpg', '0', '10', '2017-11-16 15:30:16', '2017-11-16 15:42:42');
INSERT INTO `brands` VALUES ('24', 'QUICK', 'quick.png', '0', '20', '2017-11-16 16:09:56', '2017-11-16 16:21:02');
INSERT INTO `brands` VALUES ('25', 'SKY ', 'sky .jpg', '0', '120', '2017-11-16 17:00:42', '2017-11-24 09:39:33');
INSERT INTO `brands` VALUES ('26', 'XBOX', 'xbox.png', '1', '39', '2017-11-17 08:23:16', '2017-11-17 17:48:22');
INSERT INTO `brands` VALUES ('27', 'SONY', 'sony.png', '0', '157', '2017-11-17 09:11:08', '2017-12-19 10:05:45');
INSERT INTO `brands` VALUES ('28', 'SuperSonic', 'supersonic.png', '0', '10', '2017-11-17 09:58:49', '2017-11-17 10:05:56');
INSERT INTO `brands` VALUES ('29', 'ibastek', 'ibastek.png', '0', '10', '2017-11-17 11:39:35', '2017-11-17 11:42:33');
INSERT INTO `brands` VALUES ('30', 'Epson', 'epson.png', '0', '20', '2017-11-17 11:55:55', '2017-11-17 14:07:40');
INSERT INTO `brands` VALUES ('31', 'Kingston ', 'kingston .png', '0', '40', '2017-11-17 17:23:27', '2017-11-17 17:39:55');
INSERT INTO `brands` VALUES ('32', 'Lenovo ', 'lenovo .png', '0', '10', '2017-11-24 09:10:23', '2017-11-24 09:20:08');
INSERT INTO `brands` VALUES ('33', 'acer', 'acer.png', '0', '10', '2017-11-24 09:26:53', '2017-11-24 09:31:41');
INSERT INTO `brands` VALUES ('34', 'pruebita', 'pruebita.png', '0', '0', '2018-01-11 13:43:29', '2018-01-11 13:43:29');
INSERT INTO `brands` VALUES ('35', 'pruebas y mas pruebas', 'pruebas-y-mas-pruebas.jpg', '0', '0', '2018-01-11 13:44:10', '2018-01-11 13:44:10');
INSERT INTO `brands` VALUES ('36', 'Fernando', 'fernando.jpg', '0', '0', '2018-01-11 13:53:18', '2018-01-11 13:53:18');
INSERT INTO `brands` VALUES ('37', 'fabricante de pruebas', 'fabricante-de-pruebas.jpeg', '0', '0', '2018-01-23 11:11:53', '2018-01-23 11:11:53');
INSERT INTO `brands` VALUES ('38', 'una prueba mas', 'una-prueba-mas.png', '0', '0', '2018-01-23 12:11:11', '2018-01-23 12:11:11');
INSERT INTO `brands` VALUES ('39', 'aapruebas', 'aapruebas.jpg', '0', '0', '2018-01-23 12:12:04', '2018-01-23 12:12:04');
INSERT INTO `brands` VALUES ('40', 'aaapruebassss', 'aaapruebassss.jpg', '0', '0', '2018-01-23 12:13:38', '2018-01-23 12:13:38');
INSERT INTO `brands` VALUES ('41', 'aaaaapruebas', 'aaaaapruebas.jpg', '0', '0', '2018-01-23 12:18:37', '2018-01-23 12:18:37');
INSERT INTO `brands` VALUES ('42', 'aaappeeer', 'aaappeeer.png', '0', '0', '2018-01-23 12:20:05', '2018-01-23 12:20:05');
INSERT INTO `brands` VALUES ('43', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaapruebas', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaapruebas.png', '0', '0', '2018-01-23 12:20:44', '2018-01-23 12:20:44');
INSERT INTO `brands` VALUES ('44', '11a', '11a.png', '0', '0', '2018-01-23 12:38:49', '2018-01-23 12:38:49');
INSERT INTO `brands` VALUES ('45', '1111aaaapruebas', '1111aaaapruebas.png', '0', '0', '2018-01-23 12:41:34', '2018-01-23 12:41:34');
INSERT INTO `brands` VALUES ('46', 'mas pruebas de esto', 'mas-pruebas-de-esto.jpg', '0', '0', '2018-01-23 12:47:55', '2018-01-23 12:47:55');
INSERT INTO `brands` VALUES ('47', 'mas pruebas de estossss', 'mas-pruebas-de-estossss.jpg', '0', '0', '2018-01-23 12:47:59', '2018-01-23 12:47:59');
INSERT INTO `brands` VALUES ('48', 'mas pruebas de estosssssss', 'mas-pruebas-de-estosssssss.jpg', '0', '0', '2018-01-23 12:48:06', '2018-01-23 12:48:06');
INSERT INTO `brands` VALUES ('49', 'ffff', 'ffff.png', '0', '0', '2018-01-23 12:52:09', '2018-01-23 12:52:09');
INSERT INTO `brands` VALUES ('50', 'ppruebas', 'ppruebas.jpg', '0', '0', '2018-01-23 12:58:31', '2018-01-23 12:58:31');
INSERT INTO `brands` VALUES ('51', 'ioiouiouio', 'ioiouiouio.jpeg', '0', '0', '2018-01-23 13:00:30', '2018-01-23 13:00:30');
INSERT INTO `brands` VALUES ('52', 'una pruebita de amor', 'una-pruebita-de-amor.png', '0', '0', '2018-01-23 17:42:15', '2018-01-23 17:42:15');
INSERT INTO `brands` VALUES ('53', 'chocosuela', 'chocosuela.png', '0', '0', '2018-01-26 13:36:41', '2018-01-26 13:36:41');
INSERT INTO `brands` VALUES ('54', 'leego', 'leego.jpg', '0', '0', '2018-01-26 13:41:16', '2018-01-26 13:41:16');
INSERT INTO `brands` VALUES ('55', 'claudicar', 'claudicar.jpg', '0', '0', '2018-02-01 14:04:34', '2018-02-01 14:04:34');
INSERT INTO `brands` VALUES ('56', 'appl e', 'appl-e.jpg', '0', '0', '2018-02-01 14:24:34', '2018-02-01 14:24:34');
INSERT INTO `brands` VALUES ('57', '                                                                       eoperadoreeeeee', 'eoperadoreeeeee.jpg', '0', '0', '2018-02-01 14:53:13', '2018-02-01 14:53:13');
INSERT INTO `brands` VALUES ('58', 'chupachupá', 'chupachupa.jpg', '0', '0', '2018-02-01 15:03:48', '2018-02-01 15:03:48');

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_c` (`user_id`) USING BTREE,
  UNIQUE KEY `session_unique_c` (`session_id`) USING BTREE,
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES ('1', '19', 'UQ42oBgQ0tCPMFbUICHFzk3qqEDxPuqgisP26IkC', '2017-04-20 17:17:34', '2017-04-20 17:18:34');
INSERT INTO `carts` VALUES ('3', '20', null, '2017-04-25 00:33:43', '2017-04-25 00:33:43');
INSERT INTO `carts` VALUES ('4', '12', null, '2017-06-07 10:34:55', '2017-06-07 10:34:55');
INSERT INTO `carts` VALUES ('5', null, 'Ia035L1Q2jE7WwAdvGEz4808LukQcB4wUBJuMqU8', '2017-06-21 22:49:09', '2017-06-21 22:49:09');
INSERT INTO `carts` VALUES ('6', '21', null, '2017-06-22 10:27:33', '2017-06-22 10:27:33');
INSERT INTO `carts` VALUES ('7', null, 'sOZI6MaPzqiY72s5UelnePPG2s5LMWVEe2eVV6Zp', '2017-07-05 17:47:15', '2017-07-05 17:47:15');
INSERT INTO `carts` VALUES ('8', null, '8nN7FZV1Vx1AT52s0C5iQfcjRpOlXcNX2LiAYOJj', '2017-07-28 09:09:54', '2017-07-28 09:09:54');
INSERT INTO `carts` VALUES ('9', null, 'qOoWSlC5CR0DmLxcOaYfBmwjeaMJgQL8ybzrNaC3', '2017-07-31 13:09:33', '2017-07-31 13:09:33');
INSERT INTO `carts` VALUES ('11', '23', 'E0k4p3zHgHoEXWdQxpUe9srVyX3ioVaWlSIFZZ8A', '2017-07-31 14:04:28', '2017-07-31 14:05:22');
INSERT INTO `carts` VALUES ('12', null, 'bQW4sM37qC7OjjZB3V2Dio5503XUudlCfPDIuqjU', '2017-08-06 17:19:30', '2017-08-06 17:19:30');
INSERT INTO `carts` VALUES ('13', null, 'JiJLvixjbW204v3iQuqAD2ovJ03VvmbxIRYQuL4M', '2017-08-20 17:29:16', '2017-08-20 17:29:16');
INSERT INTO `carts` VALUES ('14', null, 'BwzDyCWJ34OmC6QZ7Y1J3vBzWcw1si82RTyyiQWT', '2017-08-23 13:40:17', '2017-08-23 13:40:17');
INSERT INTO `carts` VALUES ('15', null, '6R5wdw8XVHAjBvJGRgJ5YXdWTibvqdBPXXVOgvLd', '2017-09-14 21:10:25', '2017-09-14 21:10:25');
INSERT INTO `carts` VALUES ('16', null, 'oI7s3FlilSlMZ6seRwlccEnUmYuVOiUuvQogaD2m', '2017-09-19 21:10:59', '2017-09-19 21:10:59');
INSERT INTO `carts` VALUES ('17', null, 'iqb07V0mWZMOCUGuO8Bm7Laa0YbuDc9wcJ6qjK2a', '2017-09-27 18:27:51', '2017-09-27 18:27:51');
INSERT INTO `carts` VALUES ('18', null, 'REySFgZxGbiS6lW9BZuiEF918zYtxU8pJ0GJnBtM', '2017-10-04 19:10:37', '2017-10-04 19:10:37');
INSERT INTO `carts` VALUES ('19', null, 'sV7vpAddugUWpnaOLmH1Tyjjdsec1znQffm9Dz70', '2017-10-25 11:32:01', '2017-10-25 11:32:01');
INSERT INTO `carts` VALUES ('20', null, '3lwBCHdKloCGXVUMzzOkeONjt8j5A5iGm3CrZErZ', '2017-11-02 14:57:53', '2017-11-02 14:57:53');
INSERT INTO `carts` VALUES ('21', '27', null, '2017-11-29 02:05:55', '2017-11-29 02:05:55');
INSERT INTO `carts` VALUES ('22', '28', null, '2017-12-01 00:44:38', '2017-12-01 00:44:38');
INSERT INTO `carts` VALUES ('23', null, 'uH5SWAfCX6rifw2v9T0rPyvlD4y6pkvzY4Nog8D1', '2017-12-02 21:20:23', '2017-12-02 21:20:23');
INSERT INTO `carts` VALUES ('24', '30', 'Rp3XYplGGzszdsk0kyX7Obz5yGWnvaw9O8T2dZAi', '2017-12-05 12:51:32', '2017-12-05 12:54:10');
INSERT INTO `carts` VALUES ('25', null, 'No0QhBUnyzeHvPLMtdOTUGOMXrnQMLAZcFT6PN9q', '2017-12-05 14:29:45', '2017-12-05 14:29:45');
INSERT INTO `carts` VALUES ('27', null, 'U82vdqVzOmBUZPfPg7FjMoTeHdnY1eFXX0CGcqjJ', '2017-12-18 14:19:28', '2017-12-18 14:19:28');
INSERT INTO `carts` VALUES ('28', '43', null, '2017-12-27 14:57:41', '2017-12-27 14:57:41');
INSERT INTO `carts` VALUES ('29', '2', null, '2018-01-08 00:13:40', '2018-01-08 00:13:40');

-- ----------------------------
-- Table structure for cart_products
-- ----------------------------
DROP TABLE IF EXISTS `cart_products`;
CREATE TABLE `cart_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `sale_price` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_id` (`cart_id`) USING BTREE,
  KEY `fk_cart_product_id` (`product_id`) USING BTREE,
  CONSTRAINT `cart_products_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart_products
-- ----------------------------
INSERT INTO `cart_products` VALUES ('34', '29', '15', '1', '14400', '2018-01-08 00:13:40', '2018-01-08 00:16:42');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `pos` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cat_name_unique` (`name`,`parent_id`) USING BTREE,
  UNIQUE KEY `slug_unique` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Teléfonos', 'telefonos', '1', '0', 'telefonos.jpg', '2017-02-03 22:19:16', '2017-02-03 22:19:16');
INSERT INTO `categories` VALUES ('2', 'Samsung', 'telefonos/samsung', '1', '1', 'telefonos-samsung.jpg', '2017-02-03 22:19:16', '2017-02-03 22:19:16');
INSERT INTO `categories` VALUES ('6', 'Alcatel', 'telefonos/alcatel', '1', '1', null, '2017-02-04 12:13:21', '2017-02-04 12:13:21');
INSERT INTO `categories` VALUES ('7', 'Huawei', 'telefonos/huawei', '1', '1', null, '2017-02-04 12:21:46', '2017-02-04 12:21:46');
INSERT INTO `categories` VALUES ('8', 'Motorola', 'telefonos/motorola', '1', '1', null, '2017-02-04 12:52:50', '2017-02-04 12:52:50');
INSERT INTO `categories` VALUES ('9', 'Accesorios', 'accesorios', '1', '0', null, '2017-02-04 13:31:56', '2017-02-04 13:31:56');
INSERT INTO `categories` VALUES ('14', 'Azumi', 'telefonos/azumi', '3', '1', null, '2017-02-24 10:27:36', '2017-02-24 10:27:36');
INSERT INTO `categories` VALUES ('15', 'Zoom', 'telefonos/zoom', '4', '1', null, '2017-02-24 11:10:19', '2017-02-24 11:10:19');
INSERT INTO `categories` VALUES ('17', 'LG', 'telefonos/lg', '6', '1', null, '2017-02-24 12:26:40', '2017-02-24 12:26:40');
INSERT INTO `categories` VALUES ('19', 'Audio y Video', 'audio-y-video', '2', '0', null, '2017-03-28 21:55:42', '2017-03-28 21:55:42');
INSERT INTO `categories` VALUES ('20', 'Audífonos', 'audio-y-video/audifonos', '1', '19', null, '2017-03-28 21:56:00', '2017-03-28 21:56:00');
INSERT INTO `categories` VALUES ('21', 'Parlantes', 'audio-y-video/parlantes', '2', '19', null, '2017-04-02 23:22:18', '2017-04-02 23:22:18');
INSERT INTO `categories` VALUES ('22', 'Radios', 'audio-y-video/radios', '3', '19', null, '2017-04-02 23:29:55', '2017-04-02 23:29:55');
INSERT INTO `categories` VALUES ('29', 'Bluetooth', 'accesorios/bluetooth', '6', '9', null, '2017-08-14 16:50:55', '2017-08-14 16:50:55');
INSERT INTO `categories` VALUES ('35', 'CAT', 'telefonos/cat', '9', '1', null, '2017-11-16 15:39:03', '2017-11-16 15:39:03');
INSERT INTO `categories` VALUES ('36', 'QUICK', 'telefonos/quick', '10', '1', null, '2017-11-16 16:20:49', '2017-11-16 16:20:49');
INSERT INTO `categories` VALUES ('37', 'Nokia', 'telefonos/mini-nokia', '11', '1', null, '2017-11-16 16:30:13', '2017-11-16 16:30:13');
INSERT INTO `categories` VALUES ('38', 'SKY', 'telefonos/sky', '12', '1', null, '2017-11-16 17:13:13', '2017-11-16 17:13:13');
INSERT INTO `categories` VALUES ('39', 'Video Juegos', 'video-juego', '3', '0', null, '2017-11-17 08:32:01', '2017-11-17 08:32:01');
INSERT INTO `categories` VALUES ('40', 'XBOX 360', 'video-juego/xbox-360', '1', '39', null, '2017-11-17 08:32:28', '2017-11-17 08:32:28');
INSERT INTO `categories` VALUES ('41', 'XBOX One', 'video-juego/xbox', '2', '39', null, '2017-11-17 08:42:17', '2017-11-17 08:42:17');
INSERT INTO `categories` VALUES ('42', 'Play Station', 'video-juego/play-station', '3', '39', null, '2017-11-17 09:15:14', '2017-11-17 09:15:14');
INSERT INTO `categories` VALUES ('43', 'PSP', 'video-juego/psp', '4', '39', null, '2017-11-17 09:24:26', '2017-11-17 09:24:26');
INSERT INTO `categories` VALUES ('44', 'Controles Xbox', 'accesorios/controles-xbox', '11', '9', null, '2017-11-17 09:40:13', '2017-11-17 09:40:13');
INSERT INTO `categories` VALUES ('45', 'Control PlayStation', 'accesorios/control-playstation', '12', '9', null, '2017-11-17 09:46:13', '2017-11-17 09:46:13');
INSERT INTO `categories` VALUES ('46', 'Tablets', 'tablets', '4', '0', null, '2017-11-17 12:26:14', '2017-11-17 12:26:14');
INSERT INTO `categories` VALUES ('47', 'Tablets', 'tablets/tablets', '1', '46', null, '2017-11-17 12:26:27', '2017-11-17 12:26:27');
INSERT INTO `categories` VALUES ('48', 'Impresoras', 'accesorios/impresoras', '13', '9', null, '2017-11-17 14:03:02', '2017-11-17 14:03:02');
INSERT INTO `categories` VALUES ('49', 'Ventilador Portatil', 'accesorios/ventilador-portatil', '14', '9', null, '2017-11-17 14:18:15', '2017-11-17 14:18:15');
INSERT INTO `categories` VALUES ('50', 'Mapa Mundo', 'accesorios/mapa-mundo', '15', '9', null, '2017-11-17 14:26:21', '2017-11-17 14:26:21');
INSERT INTO `categories` VALUES ('51', 'Teclado', 'accesorios/teclado', '16', '9', null, '2017-11-17 14:36:53', '2017-11-17 14:36:53');
INSERT INTO `categories` VALUES ('52', 'Mouses', 'accesorios/mouses', '17', '9', null, '2017-11-17 14:54:44', '2017-11-17 14:54:44');
INSERT INTO `categories` VALUES ('53', 'Camara Web', 'accesorios/camara-web', '18', '9', null, '2017-11-17 15:20:15', '2017-11-17 15:20:15');
INSERT INTO `categories` VALUES ('55', 'Cargador Portatil', 'accesorios/cargador-portatil', '20', '9', null, '2017-11-17 16:35:11', '2017-11-17 16:35:11');
INSERT INTO `categories` VALUES ('56', 'Camara para Vehiculo', 'accesorios/camara-para-vehiculo', '21', '9', null, '2017-11-17 17:09:32', '2017-11-17 17:09:32');
INSERT INTO `categories` VALUES ('57', 'Cargador Para Vehiculo', 'accesorios/cargador-para-vehiculo', '22', '9', null, '2017-11-17 17:16:37', '2017-11-17 17:16:37');
INSERT INTO `categories` VALUES ('63', 'Cargadores de Celular', 'accesorios/cargadores-de-celular', '28', '9', null, '2017-11-18 10:04:23', '2017-11-18 10:04:23');
INSERT INTO `categories` VALUES ('67', 'Cables', 'accesorios/cables', '32', '9', null, '2017-11-18 10:39:56', '2017-11-18 10:39:56');
INSERT INTO `categories` VALUES ('68', 'Audifonos', 'accesorios/audifonos', '33', '9', null, '2017-11-18 12:26:17', '2017-11-18 12:26:17');
INSERT INTO `categories` VALUES ('71', 'Puertos de Energia', 'accesorios/puertos-de-energia', '35', '9', null, '2017-11-18 15:36:59', '2017-11-18 15:36:59');
INSERT INTO `categories` VALUES ('72', 'Soportes TV', 'accesorios/soportes-tv', '36', '9', null, '2017-11-18 15:59:42', '2017-11-18 15:59:42');
INSERT INTO `categories` VALUES ('73', 'Baterias de Celulares', 'accesorios/baterias-de-celulares', '37', '9', null, '2017-11-20 08:59:15', '2017-11-20 08:59:15');
INSERT INTO `categories` VALUES ('74', 'Computadores', 'computadores', '5', '0', null, '2017-11-24 09:19:28', '2017-11-24 09:19:28');
INSERT INTO `categories` VALUES ('75', 'Portatiles', 'computadores/portatiles', '1', '74', null, '2017-11-24 09:20:03', '2017-11-24 09:20:03');
INSERT INTO `categories` VALUES ('76', 'Controles', 'video-juego/controles', '5', '39', null, '2017-11-30 14:45:07', '2017-11-30 14:45:07');
INSERT INTO `categories` VALUES ('77', 'Reproductores', 'audio-y-video/reproductores', '7', '19', null, '2017-11-30 14:59:28', '2017-11-30 14:59:28');
INSERT INTO `categories` VALUES ('78', 'Memorias', 'accesorios/memorias', '38', '9', null, '2017-11-30 15:09:53', '2017-11-30 15:09:53');
INSERT INTO `categories` VALUES ('79', 'Apple', 'telefonos/apple', '13', '1', null, '2017-12-15 16:47:15', '2017-12-15 16:47:15');
INSERT INTO `categories` VALUES ('80', 'Ofertas', 'ofertas', '6', '0', null, '2017-12-15 16:47:30', '2017-12-15 16:47:30');
INSERT INTO `categories` VALUES ('81', 'Apple', 'ofertas/apple', '1', '80', null, '2017-12-15 16:47:42', '2017-12-15 16:47:42');
INSERT INTO `categories` VALUES ('83', 'promociones del mes', 'promociones-del-mes', '7', '0', null, '2018-01-25 16:49:18', '2018-01-25 16:49:18');
INSERT INTO `categories` VALUES ('84', 'promóciones del día', 'promociones-del-dia', '8', '0', null, '2018-01-25 16:50:51', '2018-01-25 16:50:51');
INSERT INTO `categories` VALUES ('85', 'promo de la semana', 'promo-de-la-semana', '9', '0', null, '2018-01-26 10:14:21', '2018-01-26 10:14:21');
INSERT INTO `categories` VALUES ('86', 'samsung', 'promo-de-la-semana/samsung', '0', '85', null, '2018-01-26 10:29:14', '2018-01-26 10:29:14');
INSERT INTO `categories` VALUES ('87', 'apple', 'promo-de-la-semana/apple', '1', '85', null, '2018-01-26 10:29:42', '2018-01-26 10:29:42');
INSERT INTO `categories` VALUES ('88', 'slimer', 'accesorios/slimer', '39', '9', null, '2018-01-26 10:42:10', '2018-01-26 10:42:10');
INSERT INTO `categories` VALUES ('89', 'op', 'op', '10', '0', null, '2018-01-26 10:42:37', '2018-01-26 10:42:37');
INSERT INTO `categories` VALUES ('90', 'iioo', 'iioo', '11', '0', null, '2018-01-26 10:47:50', '2018-01-26 10:47:50');
INSERT INTO `categories` VALUES ('91', 'pos', 'pos', '12', '0', null, '2018-01-26 10:47:59', '2018-01-26 10:47:59');
INSERT INTO `categories` VALUES ('92', 'megatron', 'megatron', '13', '0', null, '2018-01-26 10:48:05', '2018-01-26 10:48:05');
INSERT INTO `categories` VALUES ('93', 'pocas', 'pocas', '14', '0', null, '2018-01-26 11:09:13', '2018-01-26 11:09:13');
INSERT INTO `categories` VALUES ('94', 'de todo', 'de-todo', '15', '0', null, '2018-01-26 11:09:30', '2018-01-26 11:09:30');
INSERT INTO `categories` VALUES ('95', 'esto esto de pedir perdon', 'esto-esto-de-pedir-perdon', '16', '0', null, '2018-01-26 11:10:33', '2018-01-26 11:10:33');
INSERT INTO `categories` VALUES ('96', 'oye lo que estoy cantado', 'esto-esto-de-pedir-perdon/oye-lo-que-estoy-cantado', '0', '95', null, '2018-01-26 11:10:45', '2018-01-26 11:10:45');
INSERT INTO `categories` VALUES ('97', 'de contar con tu cariño', 'esto-esto-de-pedir-perdon/de-contar-con-tu-carino', '1', '95', null, '2018-01-26 11:11:03', '2018-01-26 11:11:03');
INSERT INTO `categories` VALUES ('98', 'la paz', 'la-paz', '17', '0', null, '2018-01-26 11:11:47', '2018-01-26 11:11:47');
INSERT INTO `categories` VALUES ('99', 'ok ok ok', 'la-paz/ok-ok-ok', '0', '98', null, '2018-01-26 11:12:12', '2018-01-26 11:12:12');
INSERT INTO `categories` VALUES ('100', 'sol', 'telefonos/sol', '14', '1', null, '2018-01-26 11:14:41', '2018-01-26 11:14:41');
INSERT INTO `categories` VALUES ('101', 'solecito', 'telefonos/solecito', '15', '1', null, '2018-01-26 11:14:51', '2018-01-26 11:14:51');
INSERT INTO `categories` VALUES ('102', 'apple', 'apple', '18', '0', null, '2018-01-26 11:30:55', '2018-01-26 11:30:55');
INSERT INTO `categories` VALUES ('103', 'applee', 'applee', '19', '0', null, '2018-01-26 11:31:05', '2018-01-26 11:31:05');
INSERT INTO `categories` VALUES ('104', 'boleta', 'applee/boleta', '0', '103', null, '2018-01-26 11:31:17', '2018-01-26 11:31:17');
INSERT INTO `categories` VALUES ('105', 'booleta', 'applee/booleta', '1', '103', null, '2018-01-26 11:31:26', '2018-01-26 11:31:26');
INSERT INTO `categories` VALUES ('106', '1', '1', '20', '0', null, '2018-01-26 11:32:25', '2018-01-26 11:32:25');
INSERT INTO `categories` VALUES ('107', '2', '2', '21', '0', null, '2018-01-26 11:32:28', '2018-01-26 11:32:28');
INSERT INTO `categories` VALUES ('108', '3', '3', '22', '0', null, '2018-01-26 11:32:30', '2018-01-26 11:32:30');
INSERT INTO `categories` VALUES ('109', '1', '1/1', '0', '106', null, '2018-01-26 11:32:39', '2018-01-26 11:32:39');
INSERT INTO `categories` VALUES ('110', '2', '1/2', '1', '106', null, '2018-01-26 11:32:44', '2018-01-26 11:32:44');
INSERT INTO `categories` VALUES ('111', '3', '1/3', '2', '106', null, '2018-01-26 11:32:48', '2018-01-26 11:32:48');
INSERT INTO `categories` VALUES ('112', '4', '1/4', '3', '106', null, '2018-01-26 11:33:26', '2018-01-26 11:33:26');
INSERT INTO `categories` VALUES ('113', 'pruebas', 'accesorios/pruebas', '40', '9', null, '2018-01-26 11:38:46', '2018-01-26 11:38:46');
INSERT INTO `categories` VALUES ('114', 'pruebas de amor', 'accesorios/pruebas-de-amor', '41', '9', null, '2018-01-26 11:38:55', '2018-01-26 11:38:55');
INSERT INTO `categories` VALUES ('115', 'oreo', 'tablets/oreo', '2', '46', null, '2018-01-26 11:46:44', '2018-01-26 11:46:44');
INSERT INTO `categories` VALUES ('116', 'ptro', 'tablets/ptro', '3', '46', null, '2018-01-26 11:46:54', '2018-01-26 11:46:54');
INSERT INTO `categories` VALUES ('117', 'iprop', 'tablets/iprop', '4', '46', null, '2018-01-26 11:47:04', '2018-01-26 11:47:04');
INSERT INTO `categories` VALUES ('118', 'wer', 'tablets/wer', '5', '46', null, '2018-01-26 11:47:09', '2018-01-26 11:47:09');
INSERT INTO `categories` VALUES ('119', 'wer', 'pos/wer', '0', '91', null, '2018-01-26 11:47:14', '2018-01-26 11:47:14');
INSERT INTO `categories` VALUES ('120', 'wer', 'op/wer', '0', '89', null, '2018-01-26 11:47:21', '2018-01-26 11:47:21');
INSERT INTO `categories` VALUES ('121', 'ert', 'megatron/ert', '0', '92', null, '2018-01-26 11:47:27', '2018-01-26 11:47:27');
INSERT INTO `categories` VALUES ('122', 'rty', 'megatron/rty', '1', '92', null, '2018-01-26 11:47:31', '2018-01-26 11:47:31');
INSERT INTO `categories` VALUES ('123', 'no', 'accesorios/no', '42', '9', null, '2018-01-26 11:51:49', '2018-01-26 11:51:49');
INSERT INTO `categories` VALUES ('124', '10', '1/10', '4', '106', null, '2018-01-26 11:51:57', '2018-01-26 11:51:57');
INSERT INTO `categories` VALUES ('125', '11', '1/11', '5', '106', null, '2018-01-26 11:52:04', '2018-01-26 11:52:04');
INSERT INTO `categories` VALUES ('126', '23', 'accesorios/23', '43', '9', null, '2018-01-26 11:53:31', '2018-01-26 11:53:31');
INSERT INTO `categories` VALUES ('127', '34', 'accesorios/34', '44', '9', null, '2018-01-26 11:53:35', '2018-01-26 11:53:35');
INSERT INTO `categories` VALUES ('128', '77', 'accesorios/77', '45', '9', null, '2018-01-26 11:54:37', '2018-01-26 11:54:37');
INSERT INTO `categories` VALUES ('129', '88', 'accesorios/88', '46', '9', null, '2018-01-26 11:54:45', '2018-01-26 11:54:45');
INSERT INTO `categories` VALUES ('130', '456', 'apple/456', '0', '102', null, '2018-01-26 11:55:50', '2018-01-26 11:55:50');
INSERT INTO `categories` VALUES ('131', '987', 'apple/987', '1', '102', null, '2018-01-26 11:56:15', '2018-01-26 11:56:15');
INSERT INTO `categories` VALUES ('132', 'fernando slim', 'accesorios/fernando-slim', '47', '9', null, '2018-01-26 11:57:48', '2018-01-26 11:57:48');
INSERT INTO `categories` VALUES ('133', 'ferchito slim', 'accesorios/ferchito-slim', '48', '9', null, '2018-01-26 11:58:09', '2018-01-26 11:58:09');
INSERT INTO `categories` VALUES ('134', 'ffer', 'accesorios/ffer', '49', '9', null, '2018-01-26 11:58:43', '2018-01-26 11:58:43');
INSERT INTO `categories` VALUES ('135', '112', 'accesorios/112', '50', '9', null, '2018-01-26 12:02:21', '2018-01-26 12:02:21');
INSERT INTO `categories` VALUES ('136', '113', 'accesorios/113', '51', '9', null, '2018-01-26 12:02:29', '2018-01-26 12:02:29');
INSERT INTO `categories` VALUES ('137', '114', 'accesorios/114', '52', '9', null, '2018-01-26 12:02:38', '2018-01-26 12:02:38');
INSERT INTO `categories` VALUES ('138', '123', 'accesorios/123', '53', '9', null, '2018-01-26 12:03:29', '2018-01-26 12:03:29');
INSERT INTO `categories` VALUES ('139', '124', 'accesorios/124', '54', '9', null, '2018-01-26 12:03:32', '2018-01-26 12:03:32');
INSERT INTO `categories` VALUES ('140', '125', 'accesorios/125', '55', '9', null, '2018-01-26 12:03:35', '2018-01-26 12:03:35');
INSERT INTO `categories` VALUES ('141', '126', 'accesorios/126', '56', '9', null, '2018-01-26 12:03:40', '2018-01-26 12:03:40');
INSERT INTO `categories` VALUES ('142', '987', '1/987', '6', '106', null, '2018-01-26 12:03:48', '2018-01-26 12:03:48');
INSERT INTO `categories` VALUES ('143', '654', '1/654', '7', '106', null, '2018-01-26 12:03:51', '2018-01-26 12:03:51');
INSERT INTO `categories` VALUES ('144', 'predator', 'predator', '23', '0', null, '2018-01-26 12:04:16', '2018-01-26 12:04:16');
INSERT INTO `categories` VALUES ('145', 'predador 2', 'predator/predador-2', '0', '144', null, '2018-01-26 12:04:25', '2018-01-26 12:04:25');
INSERT INTO `categories` VALUES ('146', 'tambien el 4', 'predator/tambien-el-4', '1', '144', null, '2018-01-26 12:04:32', '2018-01-26 12:04:32');
INSERT INTO `categories` VALUES ('147', 'mecatronico', 'accesorios/mecatronico', '57', '9', null, '2018-01-26 12:05:49', '2018-01-26 12:05:49');
INSERT INTO `categories` VALUES ('148', 'mera', 'video-juegos/mera', '6', '39', null, '2018-01-26 12:36:26', '2018-01-26 12:36:26');
INSERT INTO `categories` VALUES ('149', 'operador', 'video-juegos/operador', '7', '39', null, '2018-01-26 12:36:30', '2018-01-26 12:36:30');
INSERT INTO `categories` VALUES ('150', 'de esta vaina', 'video-juegos/de-esta-vaina', '8', '39', null, '2018-01-26 12:36:34', '2018-01-26 12:36:34');
INSERT INTO `categories` VALUES ('151', 'todas', 'promociones-del-mes/todas', '0', '83', null, '2018-01-29 14:55:15', '2018-01-29 14:55:15');
INSERT INTO `categories` VALUES ('152', 'des', 'des', '24', '0', null, '2018-01-30 10:45:50', '2018-01-30 10:45:50');
INSERT INTO `categories` VALUES ('153', 'yuu', 'yuu', '25', '0', null, '2018-01-30 10:48:11', '2018-01-30 10:48:11');
INSERT INTO `categories` VALUES ('154', 'yuca y platano pro', 'telefonos/yuca-y-platano-pro', '16', '1', null, '2018-01-30 12:59:12', '2018-01-30 12:59:12');
INSERT INTO `categories` VALUES ('155', 'papa leon 13', 'telefonos/papa-leon-13', '17', '1', null, '2018-01-30 13:01:32', '2018-01-30 13:01:32');
INSERT INTO `categories` VALUES ('156', 'cuchichuchio', 'accesorios/cuchichuchio', '58', '9', null, '2018-01-30 13:12:50', '2018-01-30 13:12:50');
INSERT INTO `categories` VALUES ('157', 'jajajaja', 'accesorios/jajajaja', '59', '9', null, '2018-01-30 13:12:56', '2018-01-30 13:12:56');
INSERT INTO `categories` VALUES ('158', 'jojio', '1/jojio', '8', '106', null, '2018-01-30 13:13:03', '2018-01-30 13:13:03');
INSERT INTO `categories` VALUES ('159', '89', '2/89', '0', '107', null, '2018-01-30 13:13:09', '2018-01-30 13:13:09');
INSERT INTO `categories` VALUES ('160', '789', 'promociones-del-dia/789', '0', '84', null, '2018-01-30 13:13:22', '2018-01-30 13:13:22');
INSERT INTO `categories` VALUES ('161', 'pepero', 'op/pepero', '1', '89', null, '2018-01-30 14:41:32', '2018-01-30 14:41:32');
INSERT INTO `categories` VALUES ('162', 'ps one', 'video-juegos/ps-one', '9', '39', null, '2018-01-30 14:43:14', '2018-01-30 14:43:14');
INSERT INTO `categories` VALUES ('163', 'asdddd', 'telefonos/asdddd', '18', '1', null, '2018-01-30 14:52:05', '2018-01-30 14:52:05');

-- ----------------------------
-- Table structure for categories_products
-- ----------------------------
DROP TABLE IF EXISTS `categories_products`;
CREATE TABLE `categories_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkcp` (`product_id`) USING BTREE,
  KEY `fkcpc` (`category_id`) USING BTREE,
  CONSTRAINT `categories_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `categories_products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories_products
-- ----------------------------
INSERT INTO `categories_products` VALUES ('21', '15', '6', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `categories_products` VALUES ('22', '15', '7', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `categories_products` VALUES ('24', '26', '7', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `categories_products` VALUES ('26', '28', '8', '2017-02-04 12:53:10', '2017-02-04 12:53:10');
INSERT INTO `categories_products` VALUES ('61', '63', '8', '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `categories_products` VALUES ('66', '68', '2', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `categories_products` VALUES ('67', '69', '2', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `categories_products` VALUES ('68', '70', '2', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `categories_products` VALUES ('70', '72', '2', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `categories_products` VALUES ('71', '73', '2', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `categories_products` VALUES ('72', '74', '2', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `categories_products` VALUES ('73', '75', '2', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `categories_products` VALUES ('74', '76', '2', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `categories_products` VALUES ('75', '77', '2', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `categories_products` VALUES ('77', '79', '2', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `categories_products` VALUES ('79', '81', '7', '2017-02-05 02:05:20', '2017-02-05 02:05:20');
INSERT INTO `categories_products` VALUES ('80', '82', '7', '2017-02-05 02:05:22', '2017-02-05 02:05:22');
INSERT INTO `categories_products` VALUES ('82', '84', '7', '2017-02-05 02:05:25', '2017-02-05 02:05:25');
INSERT INTO `categories_products` VALUES ('83', '85', '7', '2017-02-05 02:05:25', '2017-02-05 02:05:25');
INSERT INTO `categories_products` VALUES ('86', '88', '2', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `categories_products` VALUES ('87', '89', '7', '2017-02-24 10:10:43', '2017-02-24 10:10:43');
INSERT INTO `categories_products` VALUES ('89', '91', '14', '2017-02-24 10:27:57', '2017-02-24 10:27:57');
INSERT INTO `categories_products` VALUES ('90', '92', '15', '2017-02-24 11:10:37', '2017-02-24 11:10:37');
INSERT INTO `categories_products` VALUES ('91', '93', '15', '2017-02-24 11:17:40', '2017-02-24 11:17:40');
INSERT INTO `categories_products` VALUES ('92', '94', '15', '2017-02-24 11:20:25', '2017-02-24 11:20:25');
INSERT INTO `categories_products` VALUES ('93', '95', '15', '2017-02-24 11:29:41', '2017-02-24 11:29:41');
INSERT INTO `categories_products` VALUES ('100', '102', '15', '2017-02-24 12:14:46', '2017-02-24 12:14:46');
INSERT INTO `categories_products` VALUES ('101', '103', '6', '2017-02-24 12:23:25', '2017-02-24 12:23:25');
INSERT INTO `categories_products` VALUES ('102', '104', '17', '2017-02-24 12:26:45', '2017-02-24 12:26:45');
INSERT INTO `categories_products` VALUES ('103', '105', '7', '2017-02-24 12:32:56', '2017-02-24 12:32:56');
INSERT INTO `categories_products` VALUES ('104', '106', '7', '2017-02-24 12:36:30', '2017-02-24 12:36:30');
INSERT INTO `categories_products` VALUES ('142', '144', '20', '2017-03-28 21:56:15', '2017-03-28 21:56:15');
INSERT INTO `categories_products` VALUES ('144', '145', '20', '2017-03-28 21:59:04', '2017-03-28 21:59:04');
INSERT INTO `categories_products` VALUES ('146', '146', '20', '2017-03-28 22:00:44', '2017-03-28 22:00:44');
INSERT INTO `categories_products` VALUES ('148', '147', '20', '2017-03-28 22:05:01', '2017-03-28 22:05:01');
INSERT INTO `categories_products` VALUES ('150', '148', '20', '2017-03-28 22:05:52', '2017-03-28 22:05:52');
INSERT INTO `categories_products` VALUES ('152', '149', '20', '2017-03-28 22:06:19', '2017-03-28 22:06:19');
INSERT INTO `categories_products` VALUES ('154', '150', '20', '2017-03-28 22:06:48', '2017-03-28 22:06:48');
INSERT INTO `categories_products` VALUES ('156', '151', '20', '2017-03-28 22:08:11', '2017-03-28 22:08:11');
INSERT INTO `categories_products` VALUES ('158', '152', '20', '2017-03-28 22:09:49', '2017-03-28 22:09:49');
INSERT INTO `categories_products` VALUES ('160', '153', '20', '2017-03-28 22:11:02', '2017-03-28 22:11:02');
INSERT INTO `categories_products` VALUES ('162', '154', '20', '2017-03-28 22:14:39', '2017-03-28 22:14:39');
INSERT INTO `categories_products` VALUES ('164', '155', '20', '2017-03-28 22:15:06', '2017-03-28 22:15:06');
INSERT INTO `categories_products` VALUES ('168', '157', '20', '2017-03-28 22:17:08', '2017-03-28 22:17:08');
INSERT INTO `categories_products` VALUES ('170', '158', '20', '2017-03-28 22:18:29', '2017-03-28 22:18:29');
INSERT INTO `categories_products` VALUES ('172', '159', '20', '2017-03-28 22:19:06', '2017-03-28 22:19:06');
INSERT INTO `categories_products` VALUES ('174', '160', '20', '2017-03-28 22:20:58', '2017-03-28 22:20:58');
INSERT INTO `categories_products` VALUES ('176', '161', '20', '2017-03-28 22:21:47', '2017-03-28 22:21:47');
INSERT INTO `categories_products` VALUES ('178', '162', '20', '2017-03-28 22:23:29', '2017-03-28 22:23:29');
INSERT INTO `categories_products` VALUES ('180', '163', '20', '2017-03-28 22:25:54', '2017-03-28 22:25:54');
INSERT INTO `categories_products` VALUES ('182', '164', '20', '2017-03-28 22:27:10', '2017-03-28 22:27:10');
INSERT INTO `categories_products` VALUES ('184', '165', '20', '2017-03-28 22:28:25', '2017-03-28 22:28:25');
INSERT INTO `categories_products` VALUES ('186', '166', '20', '2017-03-28 22:29:18', '2017-03-28 22:29:18');
INSERT INTO `categories_products` VALUES ('188', '167', '20', '2017-03-28 22:30:37', '2017-03-28 22:30:37');
INSERT INTO `categories_products` VALUES ('190', '168', '20', '2017-03-28 22:30:57', '2017-03-28 22:30:57');
INSERT INTO `categories_products` VALUES ('198', '172', '20', '2017-03-28 22:58:44', '2017-03-28 22:58:44');
INSERT INTO `categories_products` VALUES ('201', '173', '20', '2017-04-02 22:40:55', '2017-04-02 22:40:55');
INSERT INTO `categories_products` VALUES ('203', '174', '20', '2017-04-02 22:41:39', '2017-04-02 22:41:39');
INSERT INTO `categories_products` VALUES ('205', '175', '20', '2017-04-02 22:41:59', '2017-04-02 22:41:59');
INSERT INTO `categories_products` VALUES ('207', '176', '20', '2017-04-02 22:43:42', '2017-04-02 22:43:42');
INSERT INTO `categories_products` VALUES ('209', '177', '20', '2017-04-02 22:46:20', '2017-04-02 22:46:20');
INSERT INTO `categories_products` VALUES ('211', '178', '20', '2017-04-02 22:47:18', '2017-04-02 22:47:18');
INSERT INTO `categories_products` VALUES ('212', '179', '20', '2017-04-02 22:53:47', '2017-04-02 22:53:47');
INSERT INTO `categories_products` VALUES ('214', '180', '20', '2017-04-02 23:00:06', '2017-04-02 23:00:06');
INSERT INTO `categories_products` VALUES ('216', '181', '20', '2017-04-02 23:03:36', '2017-04-02 23:03:36');
INSERT INTO `categories_products` VALUES ('218', '182', '20', '2017-04-02 23:04:38', '2017-04-02 23:04:38');
INSERT INTO `categories_products` VALUES ('220', '183', '20', '2017-04-02 23:05:39', '2017-04-02 23:05:39');
INSERT INTO `categories_products` VALUES ('224', '185', '20', '2017-04-02 23:08:10', '2017-04-02 23:08:10');
INSERT INTO `categories_products` VALUES ('226', '186', '20', '2017-04-02 23:09:41', '2017-04-02 23:09:41');
INSERT INTO `categories_products` VALUES ('228', '187', '20', '2017-04-02 23:10:20', '2017-04-02 23:10:20');
INSERT INTO `categories_products` VALUES ('230', '188', '20', '2017-04-02 23:11:55', '2017-04-02 23:11:55');
INSERT INTO `categories_products` VALUES ('232', '189', '20', '2017-04-02 23:12:37', '2017-04-02 23:12:37');
INSERT INTO `categories_products` VALUES ('234', '190', '20', '2017-04-02 23:14:46', '2017-04-02 23:14:46');
INSERT INTO `categories_products` VALUES ('236', '191', '20', '2017-04-02 23:16:29', '2017-04-02 23:16:29');
INSERT INTO `categories_products` VALUES ('238', '192', '20', '2017-04-02 23:17:53', '2017-04-02 23:17:53');
INSERT INTO `categories_products` VALUES ('240', '193', '20', '2017-04-02 23:18:40', '2017-04-02 23:18:40');
INSERT INTO `categories_products` VALUES ('241', '194', '21', '2017-04-02 23:22:50', '2017-04-02 23:22:50');
INSERT INTO `categories_products` VALUES ('242', '195', '21', '2017-04-02 23:24:06', '2017-04-02 23:24:06');
INSERT INTO `categories_products` VALUES ('244', '197', '22', '2017-04-02 23:30:48', '2017-04-02 23:30:48');
INSERT INTO `categories_products` VALUES ('246', '198', '22', '2017-04-02 23:33:18', '2017-04-02 23:33:18');
INSERT INTO `categories_products` VALUES ('249', '199', '17', '2017-04-23 21:15:12', '2017-04-23 21:15:12');
INSERT INTO `categories_products` VALUES ('254', '200', '8', '2017-06-28 13:44:37', '2017-06-28 13:44:37');
INSERT INTO `categories_products` VALUES ('262', '80', '2', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `categories_products` VALUES ('265', '78', '2', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `categories_products` VALUES ('266', '196', '21', '2017-08-02 13:12:53', '2017-08-02 13:12:53');
INSERT INTO `categories_products` VALUES ('268', '184', '20', '2017-08-02 13:16:34', '2017-08-02 13:16:34');
INSERT INTO `categories_products` VALUES ('275', '27', '7', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `categories_products` VALUES ('280', '156', '20', '2017-08-02 14:13:44', '2017-08-02 14:13:44');
INSERT INTO `categories_products` VALUES ('283', '87', '2', '2017-08-02 14:22:49', '2017-08-02 14:22:49');
INSERT INTO `categories_products` VALUES ('284', '86', '2', '2017-08-02 14:27:22', '2017-08-02 14:27:22');
INSERT INTO `categories_products` VALUES ('285', '71', '2', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `categories_products` VALUES ('286', '67', '2', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `categories_products` VALUES ('287', '66', '2', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `categories_products` VALUES ('288', '65', '2', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `categories_products` VALUES ('309', '221', '29', '2017-08-14 16:51:13', '2017-08-14 16:51:13');
INSERT INTO `categories_products` VALUES ('310', '222', '29', '2017-08-14 16:59:15', '2017-08-14 16:59:15');
INSERT INTO `categories_products` VALUES ('317', '229', '6', '2017-08-21 14:43:30', '2017-08-21 14:43:30');
INSERT INTO `categories_products` VALUES ('318', '230', '8', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `categories_products` VALUES ('319', '231', '7', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `categories_products` VALUES ('321', '233', '2', '2017-08-21 15:20:39', '2017-08-21 15:20:39');
INSERT INTO `categories_products` VALUES ('324', '235', '7', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `categories_products` VALUES ('325', '236', '7', '2017-11-16 11:09:45', '2017-11-16 11:09:45');
INSERT INTO `categories_products` VALUES ('326', '237', '7', '2017-11-16 11:23:45', '2017-11-16 11:23:45');
INSERT INTO `categories_products` VALUES ('327', '238', '2', '2017-11-16 11:40:30', '2017-11-16 11:40:30');
INSERT INTO `categories_products` VALUES ('328', '239', '2', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `categories_products` VALUES ('329', '240', '2', '2017-11-16 12:34:05', '2017-11-16 12:34:05');
INSERT INTO `categories_products` VALUES ('330', '241', '2', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `categories_products` VALUES ('331', '242', '17', '2017-11-16 13:01:24', '2017-11-16 13:01:24');
INSERT INTO `categories_products` VALUES ('332', '243', '6', '2017-11-16 13:15:49', '2017-11-16 13:15:49');
INSERT INTO `categories_products` VALUES ('333', '244', '17', '2017-11-16 13:31:22', '2017-11-16 13:31:22');
INSERT INTO `categories_products` VALUES ('334', '245', '17', '2017-11-16 14:24:40', '2017-11-16 14:24:40');
INSERT INTO `categories_products` VALUES ('335', '246', '2', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `categories_products` VALUES ('336', '247', '6', '2017-11-16 14:49:25', '2017-11-16 14:49:25');
INSERT INTO `categories_products` VALUES ('337', '248', '8', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `categories_products` VALUES ('338', '249', '8', '2017-11-16 15:28:11', '2017-11-16 15:28:11');
INSERT INTO `categories_products` VALUES ('339', '250', '35', '2017-11-16 15:42:42', '2017-11-16 15:42:42');
INSERT INTO `categories_products` VALUES ('340', '251', '8', '2017-11-16 16:00:17', '2017-11-16 16:00:17');
INSERT INTO `categories_products` VALUES ('341', '252', '36', '2017-11-16 16:21:02', '2017-11-16 16:21:02');
INSERT INTO `categories_products` VALUES ('342', '253', '37', '2017-11-16 16:30:21', '2017-11-16 16:30:21');
INSERT INTO `categories_products` VALUES ('343', '254', '6', '2017-11-16 16:41:06', '2017-11-16 16:41:06');
INSERT INTO `categories_products` VALUES ('344', '255', '14', '2017-11-16 16:57:12', '2017-11-16 16:57:12');
INSERT INTO `categories_products` VALUES ('345', '256', '38', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `categories_products` VALUES ('346', '257', '38', '2017-11-16 17:21:05', '2017-11-16 17:21:05');
INSERT INTO `categories_products` VALUES ('347', '258', '38', '2017-11-16 17:23:13', '2017-11-16 17:23:13');
INSERT INTO `categories_products` VALUES ('348', '259', '38', '2017-11-16 17:34:56', '2017-11-16 17:34:56');
INSERT INTO `categories_products` VALUES ('349', '260', '38', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `categories_products` VALUES ('350', '261', '38', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `categories_products` VALUES ('351', '262', '38', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `categories_products` VALUES ('353', '264', '38', '2017-11-16 18:05:11', '2017-11-16 18:05:11');
INSERT INTO `categories_products` VALUES ('358', '268', '42', '2017-11-17 09:15:24', '2017-11-17 09:15:24');
INSERT INTO `categories_products` VALUES ('364', '274', '22', '2017-11-17 10:05:56', '2017-11-17 10:05:56');
INSERT INTO `categories_products` VALUES ('365', '275', '21', '2017-11-17 10:22:55', '2017-11-17 10:22:55');
INSERT INTO `categories_products` VALUES ('366', '276', '21', '2017-11-17 10:28:42', '2017-11-17 10:28:42');
INSERT INTO `categories_products` VALUES ('367', '277', '21', '2017-11-17 10:38:21', '2017-11-17 10:38:21');
INSERT INTO `categories_products` VALUES ('368', '278', '21', '2017-11-17 10:44:14', '2017-11-17 10:44:14');
INSERT INTO `categories_products` VALUES ('371', '281', '21', '2017-11-17 11:08:14', '2017-11-17 11:08:14');
INSERT INTO `categories_products` VALUES ('372', '282', '21', '2017-11-17 11:13:29', '2017-11-17 11:13:29');
INSERT INTO `categories_products` VALUES ('373', '283', '21', '2017-11-17 11:20:32', '2017-11-17 11:20:32');
INSERT INTO `categories_products` VALUES ('374', '284', '21', '2017-11-17 11:24:26', '2017-11-17 11:24:26');
INSERT INTO `categories_products` VALUES ('375', '285', '21', '2017-11-17 11:31:24', '2017-11-17 11:31:24');
INSERT INTO `categories_products` VALUES ('376', '286', '21', '2017-11-17 11:36:03', '2017-11-17 11:36:03');
INSERT INTO `categories_products` VALUES ('378', '288', '47', '2017-11-17 12:29:10', '2017-11-17 12:29:10');
INSERT INTO `categories_products` VALUES ('379', '289', '47', '2017-11-17 12:33:37', '2017-11-17 12:33:37');
INSERT INTO `categories_products` VALUES ('380', '290', '48', '2017-11-17 14:03:13', '2017-11-17 14:03:13');
INSERT INTO `categories_products` VALUES ('381', '291', '48', '2017-11-17 14:07:40', '2017-11-17 14:07:40');
INSERT INTO `categories_products` VALUES ('382', '292', '49', '2017-11-17 14:18:25', '2017-11-17 14:18:25');
INSERT INTO `categories_products` VALUES ('383', '293', '50', '2017-11-17 14:27:59', '2017-11-17 14:27:59');
INSERT INTO `categories_products` VALUES ('384', '294', '51', '2017-11-17 14:37:03', '2017-11-17 14:37:03');
INSERT INTO `categories_products` VALUES ('385', '295', '51', '2017-11-17 14:44:47', '2017-11-17 14:44:47');
INSERT INTO `categories_products` VALUES ('386', '296', '51', '2017-11-17 14:50:00', '2017-11-17 14:50:00');
INSERT INTO `categories_products` VALUES ('387', '297', '52', '2017-11-17 14:54:56', '2017-11-17 14:54:56');
INSERT INTO `categories_products` VALUES ('388', '298', '52', '2017-11-17 14:59:38', '2017-11-17 14:59:38');
INSERT INTO `categories_products` VALUES ('389', '299', '52', '2017-11-17 15:04:59', '2017-11-17 15:04:59');
INSERT INTO `categories_products` VALUES ('390', '300', '52', '2017-11-17 15:07:15', '2017-11-17 15:07:15');
INSERT INTO `categories_products` VALUES ('391', '301', '52', '2017-11-17 15:13:08', '2017-11-17 15:13:08');
INSERT INTO `categories_products` VALUES ('392', '302', '53', '2017-11-17 15:21:13', '2017-11-17 15:21:13');
INSERT INTO `categories_products` VALUES ('393', '303', '49', '2017-11-17 15:27:47', '2017-11-17 15:27:47');
INSERT INTO `categories_products` VALUES ('394', '304', '49', '2017-11-17 15:31:10', '2017-11-17 15:31:10');
INSERT INTO `categories_products` VALUES ('395', '305', '21', '2017-11-17 16:06:13', '2017-11-17 16:06:13');
INSERT INTO `categories_products` VALUES ('397', '307', '55', '2017-11-17 16:35:16', '2017-11-17 16:35:16');
INSERT INTO `categories_products` VALUES ('398', '308', '55', '2017-11-17 16:39:27', '2017-11-17 16:39:27');
INSERT INTO `categories_products` VALUES ('399', '309', '55', '2017-11-17 16:43:31', '2017-11-17 16:43:31');
INSERT INTO `categories_products` VALUES ('400', '310', '55', '2017-11-17 16:53:28', '2017-11-17 16:53:28');
INSERT INTO `categories_products` VALUES ('401', '311', '55', '2017-11-17 16:56:41', '2017-11-17 16:56:41');
INSERT INTO `categories_products` VALUES ('402', '312', '55', '2017-11-17 17:02:23', '2017-11-17 17:02:23');
INSERT INTO `categories_products` VALUES ('403', '313', '56', '2017-11-17 17:10:12', '2017-11-17 17:10:12');
INSERT INTO `categories_products` VALUES ('404', '314', '57', '2017-11-17 17:16:42', '2017-11-17 17:16:42');
INSERT INTO `categories_products` VALUES ('413', '323', '63', '2017-11-18 10:04:28', '2017-11-18 10:04:28');
INSERT INTO `categories_products` VALUES ('414', '324', '63', '2017-11-18 10:11:27', '2017-11-18 10:11:27');
INSERT INTO `categories_products` VALUES ('415', '325', '63', '2017-11-18 10:15:16', '2017-11-18 10:15:16');
INSERT INTO `categories_products` VALUES ('419', '329', '67', '2017-11-18 10:40:13', '2017-11-18 10:40:13');
INSERT INTO `categories_products` VALUES ('420', '330', '67', '2017-11-18 10:44:55', '2017-11-18 10:44:55');
INSERT INTO `categories_products` VALUES ('421', '331', '67', '2017-11-18 10:57:40', '2017-11-18 10:57:40');
INSERT INTO `categories_products` VALUES ('422', '332', '67', '2017-11-18 11:01:32', '2017-11-18 11:01:32');
INSERT INTO `categories_products` VALUES ('423', '333', '67', '2017-11-18 11:05:19', '2017-11-18 11:05:19');
INSERT INTO `categories_products` VALUES ('424', '334', '67', '2017-11-18 11:17:46', '2017-11-18 11:17:46');
INSERT INTO `categories_products` VALUES ('425', '335', '67', '2017-11-18 11:24:17', '2017-11-18 11:24:17');
INSERT INTO `categories_products` VALUES ('437', '347', '71', '2017-11-18 15:37:10', '2017-11-18 15:37:10');
INSERT INTO `categories_products` VALUES ('438', '348', '71', '2017-11-18 15:40:39', '2017-11-18 15:40:39');
INSERT INTO `categories_products` VALUES ('439', '349', '71', '2017-11-18 15:46:10', '2017-11-18 15:46:10');
INSERT INTO `categories_products` VALUES ('440', '350', '72', '2017-11-18 15:59:48', '2017-11-18 15:59:48');
INSERT INTO `categories_products` VALUES ('441', '351', '72', '2017-11-18 16:00:53', '2017-11-18 16:00:53');
INSERT INTO `categories_products` VALUES ('442', '352', '72', '2017-11-18 16:01:53', '2017-11-18 16:01:53');
INSERT INTO `categories_products` VALUES ('443', '353', '73', '2017-11-20 08:59:20', '2017-11-20 08:59:20');
INSERT INTO `categories_products` VALUES ('444', '354', '73', '2017-11-20 09:02:49', '2017-11-20 09:02:49');
INSERT INTO `categories_products` VALUES ('445', '355', '73', '2017-11-20 09:05:55', '2017-11-20 09:05:55');
INSERT INTO `categories_products` VALUES ('446', '356', '73', '2017-11-20 09:09:34', '2017-11-20 09:09:34');
INSERT INTO `categories_products` VALUES ('447', '357', '73', '2017-11-20 09:13:16', '2017-11-20 09:13:16');
INSERT INTO `categories_products` VALUES ('448', '358', '73', '2017-11-20 09:16:05', '2017-11-20 09:16:05');
INSERT INTO `categories_products` VALUES ('449', '359', '73', '2017-11-20 09:19:21', '2017-11-20 09:19:21');
INSERT INTO `categories_products` VALUES ('452', '362', '47', '2017-11-24 09:39:33', '2017-11-24 09:39:33');
INSERT INTO `categories_products` VALUES ('453', '338', '68', '2017-11-30 09:48:52', '2017-11-30 09:48:52');
INSERT INTO `categories_products` VALUES ('454', '338', '20', '2017-11-30 09:48:52', '2017-11-30 09:48:52');
INSERT INTO `categories_products` VALUES ('455', '279', '41', '2017-11-30 09:53:29', '2017-11-30 09:53:29');
INSERT INTO `categories_products` VALUES ('461', '361', '75', '2017-11-30 10:24:41', '2017-11-30 10:24:41');
INSERT INTO `categories_products` VALUES ('463', '360', '75', '2017-11-30 10:25:40', '2017-11-30 10:25:40');
INSERT INTO `categories_products` VALUES ('465', '267', '40', '2017-11-30 10:27:30', '2017-11-30 10:27:30');
INSERT INTO `categories_products` VALUES ('467', '280', '42', '2017-11-30 10:29:50', '2017-11-30 10:29:50');
INSERT INTO `categories_products` VALUES ('469', '269', '43', '2017-11-30 10:31:27', '2017-11-30 10:31:27');
INSERT INTO `categories_products` VALUES ('470', '287', '21', '2017-11-30 10:32:37', '2017-11-30 10:32:37');
INSERT INTO `categories_products` VALUES ('490', '337', '68', '2017-11-30 10:58:43', '2017-11-30 10:58:43');
INSERT INTO `categories_products` VALUES ('491', '337', '20', '2017-11-30 10:58:43', '2017-11-30 10:58:43');
INSERT INTO `categories_products` VALUES ('493', '336', '68', '2017-11-30 10:59:38', '2017-11-30 10:59:38');
INSERT INTO `categories_products` VALUES ('494', '336', '20', '2017-11-30 10:59:38', '2017-11-30 10:59:38');
INSERT INTO `categories_products` VALUES ('514', '390', '15', '2017-11-30 11:39:41', '2017-11-30 11:39:41');
INSERT INTO `categories_products` VALUES ('515', '391', '43', '2017-11-30 11:39:46', '2017-11-30 11:39:46');
INSERT INTO `categories_products` VALUES ('516', '346', '76', '2017-11-30 14:45:12', '2017-11-30 14:45:12');
INSERT INTO `categories_products` VALUES ('517', '339', '67', '2017-11-30 14:51:50', '2017-11-30 14:51:50');
INSERT INTO `categories_products` VALUES ('518', '328', '67', '2017-11-30 14:55:29', '2017-11-30 14:55:29');
INSERT INTO `categories_products` VALUES ('519', '327', '67', '2017-11-30 14:55:58', '2017-11-30 14:55:58');
INSERT INTO `categories_products` VALUES ('520', '326', '67', '2017-11-30 14:56:24', '2017-11-30 14:56:24');
INSERT INTO `categories_products` VALUES ('521', '343', '77', '2017-11-30 14:59:34', '2017-11-30 14:59:34');
INSERT INTO `categories_products` VALUES ('522', '342', '77', '2017-11-30 15:00:07', '2017-11-30 15:00:07');
INSERT INTO `categories_products` VALUES ('523', '341', '77', '2017-11-30 15:00:49', '2017-11-30 15:00:49');
INSERT INTO `categories_products` VALUES ('524', '318', '78', '2017-11-30 15:09:57', '2017-11-30 15:09:57');
INSERT INTO `categories_products` VALUES ('525', '317', '78', '2017-11-30 15:10:21', '2017-11-30 15:10:21');
INSERT INTO `categories_products` VALUES ('527', '316', '78', '2017-11-30 15:11:04', '2017-11-30 15:11:04');
INSERT INTO `categories_products` VALUES ('528', '315', '78', '2017-11-30 15:11:32', '2017-11-30 15:11:32');
INSERT INTO `categories_products` VALUES ('529', '319', '76', '2017-11-30 15:13:31', '2017-11-30 15:13:31');
INSERT INTO `categories_products` VALUES ('530', '273', '76', '2017-11-30 15:15:03', '2017-11-30 15:15:03');
INSERT INTO `categories_products` VALUES ('531', '272', '76', '2017-11-30 15:15:24', '2017-11-30 15:15:24');
INSERT INTO `categories_products` VALUES ('532', '271', '76', '2017-11-30 15:15:49', '2017-11-30 15:15:49');
INSERT INTO `categories_products` VALUES ('533', '270', '76', '2017-11-30 15:16:08', '2017-11-30 15:16:08');
INSERT INTO `categories_products` VALUES ('535', '266', '38', '2017-11-30 15:20:43', '2017-11-30 15:20:43');
INSERT INTO `categories_products` VALUES ('536', '265', '38', '2017-11-30 15:22:28', '2017-11-30 15:22:28');
INSERT INTO `categories_products` VALUES ('537', '263', '38', '2017-11-30 15:27:20', '2017-11-30 15:27:20');
INSERT INTO `categories_products` VALUES ('539', '345', '29', '2017-11-30 15:39:09', '2017-11-30 15:39:09');
INSERT INTO `categories_products` VALUES ('540', '344', '29', '2017-11-30 15:39:48', '2017-11-30 15:39:48');
INSERT INTO `categories_products` VALUES ('541', '322', '67', '2017-11-30 15:43:29', '2017-11-30 15:43:29');
INSERT INTO `categories_products` VALUES ('542', '321', '67', '2017-11-30 15:43:53', '2017-11-30 15:43:53');
INSERT INTO `categories_products` VALUES ('543', '320', '67', '2017-11-30 15:44:15', '2017-11-30 15:44:15');
INSERT INTO `categories_products` VALUES ('544', '306', '29', '2017-11-30 15:47:09', '2017-11-30 15:47:09');
INSERT INTO `categories_products` VALUES ('545', '392', '73', '2017-11-30 17:21:29', '2017-11-30 17:21:29');
INSERT INTO `categories_products` VALUES ('546', '393', '42', '2017-12-19 10:05:45', '2017-12-19 10:05:45');
INSERT INTO `categories_products` VALUES ('547', '394', '6', '2017-12-27 09:17:36', '2017-12-27 09:17:36');
INSERT INTO `categories_products` VALUES ('548', '395', '8', '2017-12-28 15:55:32', '2017-12-28 15:55:32');
INSERT INTO `categories_products` VALUES ('551', '397', '6', '2017-12-28 17:48:32', '2017-12-28 17:48:32');
INSERT INTO `categories_products` VALUES ('552', '396', '79', '2017-12-28 18:02:57', '2017-12-28 18:02:57');
INSERT INTO `categories_products` VALUES ('553', '398', '17', '2017-12-28 19:00:27', '2017-12-28 19:00:27');
INSERT INTO `categories_products` VALUES ('554', '399', '80', '2017-12-28 19:41:03', '2017-12-28 19:41:03');
INSERT INTO `categories_products` VALUES ('555', '400', '2', '2017-12-28 20:29:06', '2017-12-28 20:29:06');
INSERT INTO `categories_products` VALUES ('556', '401', '15', '2017-12-29 12:44:28', '2017-12-29 12:44:28');

-- ----------------------------
-- Table structure for discounts
-- ----------------------------
DROP TABLE IF EXISTS `discounts`;
CREATE TABLE `discounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `percent` int(1) unsigned NOT NULL,
  `start` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pdpidfk` (`product_id`),
  KEY `pduifk` (`user_id`),
  CONSTRAINT `pdpidfk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `pduifk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discounts
-- ----------------------------
INSERT INTO `discounts` VALUES ('53', '2', '15', '70', '2017-12-26 23:30:17', '2018-01-31 23:30:20', null, null);
INSERT INTO `discounts` VALUES ('54', '2', '193', '30', '2017-12-26 11:23:09', '2017-12-31 11:23:12', null, null);
INSERT INTO `discounts` VALUES ('55', '2', '393', '10', '2017-12-27 15:14:43', '2017-12-31 15:14:46', null, null);

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `pos` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_id_product_image` (`product_id`) USING BTREE,
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=630 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('24', '15', '0eSU5neWp3Uzst4715.png', '1', '2017-02-04 11:16:51', '2017-02-04 11:16:51');
INSERT INTO `images` VALUES ('25', '15', 'u4whVqjiCrOWR0i915.png', '2', '2017-02-04 11:16:52', '2017-02-04 11:16:52');
INSERT INTO `images` VALUES ('26', '15', '89o0GYfBT2DCHMGe15.jpg', '3', '2017-02-04 11:16:52', '2017-02-04 11:16:52');
INSERT INTO `images` VALUES ('27', '16', '3hvJmYZeZsONZ8rm16.jpg', '1', '2017-02-04 11:20:58', '2017-02-04 11:20:58');
INSERT INTO `images` VALUES ('28', '17', 'IlP9JgAHsJ17bDOo17.jpg', '1', '2017-02-04 11:24:59', '2017-02-04 11:24:59');
INSERT INTO `images` VALUES ('29', '18', '34UBv75Qweav9cjC18.png', '1', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `images` VALUES ('30', '18', 'AI4o5kituqaZs3xJ18.png', '2', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `images` VALUES ('31', '18', 'QsQMUQB7B8IXhyW518.jpg', '3', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `images` VALUES ('32', '19', 'd9ynhyHBZDHnDooK19.png', '1', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `images` VALUES ('33', '19', 'lOfxJSpDc2M8QpiY19.jpg', '2', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `images` VALUES ('34', '19', 'OmkYOzOLzBAJW4SO19.jpg', '3', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `images` VALUES ('35', '20', 'WSRP4yEuj1D7OLDr20.jpeg', '1', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `images` VALUES ('36', '20', 'stT2UkJkjIiqfei520.jpg', '2', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `images` VALUES ('37', '21', 'jphQ1SetV8FhAENL21.jpg', '1', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `images` VALUES ('38', '21', 'CEm6OPUbOskE9FEW21.png', '2', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `images` VALUES ('39', '22', 'LcwCf2wVENY5JNxk22.jpg', '1', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `images` VALUES ('40', '22', 'PepOHFuOYbuz3H7i22.png', '2', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `images` VALUES ('41', '22', 'a52hXOUr1RyLhPYl22.png', '3', '2017-02-04 12:03:16', '2017-02-04 12:03:16');
INSERT INTO `images` VALUES ('42', '23', 'FTc1muO2SoNmcduk23.png', '1', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `images` VALUES ('43', '23', 'IPRjM4uKYsCT3u2b23.png', '2', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `images` VALUES ('44', '23', 'bOB7p6axzFrz5hdh23.jpg', '3', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `images` VALUES ('45', '24', 'iaFlKJoXEBypYSel24.jpg', '1', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `images` VALUES ('46', '24', 'hdy3kwd75uV2vr1L24.jpg', '2', '2017-02-04 12:22:47', '2017-02-04 12:22:47');
INSERT INTO `images` VALUES ('47', '24', 'T8BMXrcy5SR8eMpH24.png', '3', '2017-02-04 12:22:47', '2017-02-04 12:22:47');
INSERT INTO `images` VALUES ('48', '25', 'KVxGojDDJIOPff8C25.jpg', '1', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `images` VALUES ('49', '25', '86ORnmXGUU8RzQmh25.jpg', '2', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `images` VALUES ('50', '25', 'JQkUH2Vz7PeLfoKb25.jpg', '3', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `images` VALUES ('51', '25', 'ev63kcBNZiA4BKUe25.jpg', '4', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `images` VALUES ('52', '25', 'wDRBlhttBER1eav825.jpg', '5', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `images` VALUES ('53', '26', 'cTUnqC3LbxqxK1k426.jpg', '1', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `images` VALUES ('54', '26', 'gaLqaZKR57UpFNWA26.gif', '2', '2017-02-04 12:34:56', '2017-02-04 12:34:56');
INSERT INTO `images` VALUES ('55', '26', 'U8jm5srjS6ae3Yf926.jpg', '3', '2017-02-04 12:34:56', '2017-02-04 12:34:56');
INSERT INTO `images` VALUES ('56', '27', 'qPfFmoaoX4NdyZiH27.jpg', '1', '2017-02-04 12:41:50', '2017-02-04 12:41:50');
INSERT INTO `images` VALUES ('57', '27', 'oFSk5IZjksRvFZiv27.jpg', '2', '2017-02-04 12:41:51', '2017-02-04 12:41:51');
INSERT INTO `images` VALUES ('58', '27', 'K44n6t31JLDPHELP27.jpg', '3', '2017-02-04 12:41:51', '2017-02-04 12:41:51');
INSERT INTO `images` VALUES ('59', '28', 'ZUEbesZqXIXq0CCN28.jpg', '1', '2017-02-04 12:53:10', '2017-02-04 12:53:10');
INSERT INTO `images` VALUES ('60', '28', 'eJU90oXn9NuM7f3x28.jpg', '2', '2017-02-04 12:53:11', '2017-02-04 12:53:11');
INSERT INTO `images` VALUES ('61', '29', 'byFHoGEgwqLShqPw29.jpg', '1', '2017-02-04 13:35:41', '2017-02-04 13:35:41');
INSERT INTO `images` VALUES ('62', '29', 'YmXGj1PyCPXauc3Z29.jpg', '2', '2017-02-04 13:35:41', '2017-02-04 13:35:41');
INSERT INTO `images` VALUES ('63', '29', 'In4Egbr8qih994zr29.jpg', '3', '2017-02-04 13:35:41', '2017-02-04 13:35:41');
INSERT INTO `images` VALUES ('64', '29', 'nwrFPTVYIs3uDCX729.jpg', '4', '2017-02-04 13:35:42', '2017-02-04 13:35:42');
INSERT INTO `images` VALUES ('65', '29', 'IVLBiH5DPSwoRSCe29.jpg', '5', '2017-02-04 13:35:42', '2017-02-04 13:35:42');
INSERT INTO `images` VALUES ('68', '32', 'gOSsBHwbrl2LuEl632.JPG', '1', '2017-02-04 14:28:21', '2017-02-04 14:28:21');
INSERT INTO `images` VALUES ('69', '33', 'ZnbfZiQnCPwuVSSo33.JPG', '1', '2017-02-04 14:39:33', '2017-02-04 14:39:33');
INSERT INTO `images` VALUES ('70', '34', 'xCpD9jXP4g9jPc0J34.JPG', '1', '2017-02-04 14:40:37', '2017-02-04 14:40:37');
INSERT INTO `images` VALUES ('71', '35', '75cf46aPwGmWwl4835.JPG', '1', '2017-02-04 14:43:18', '2017-02-04 14:43:18');
INSERT INTO `images` VALUES ('72', '36', 'jHUwvQZO0yUc1bW036.JPG', '1', '2017-02-04 14:45:11', '2017-02-04 14:45:11');
INSERT INTO `images` VALUES ('73', '37', 'jA7gmyYhmkoEapMR37.JPG', '1', '2017-02-04 14:49:26', '2017-02-04 14:49:26');
INSERT INTO `images` VALUES ('74', '38', 'mHba3T9Al8tL48ob38.JPG', '1', '2017-02-04 14:50:42', '2017-02-04 14:50:42');
INSERT INTO `images` VALUES ('75', '39', 'SF5GyHhkYZvxBHuY39.JPG', '1', '2017-02-04 14:52:14', '2017-02-04 14:52:14');
INSERT INTO `images` VALUES ('76', '40', 'wnTWYHATVwQLWPaV40.JPG', '1', '2017-02-04 14:57:38', '2017-02-04 14:57:38');
INSERT INTO `images` VALUES ('77', '41', 'A864NnbhC18AO5wt41.JPG', '1', '2017-02-04 15:02:08', '2017-02-04 15:02:08');
INSERT INTO `images` VALUES ('78', '42', 'AteA2LXj1Q6XHBnP42.JPG', '1', '2017-02-04 15:02:56', '2017-02-04 15:02:56');
INSERT INTO `images` VALUES ('79', '43', 'rtq2zarVUmshW0q943.JPG', '1', '2017-02-04 15:03:46', '2017-02-04 15:03:46');
INSERT INTO `images` VALUES ('80', '44', 'MGHEfw1KIp9fxChs44.JPG', '1', '2017-02-04 15:04:38', '2017-02-04 15:04:38');
INSERT INTO `images` VALUES ('81', '45', 'P4QUKGwMLFN1O7y445.JPG', '1', '2017-02-04 15:05:37', '2017-02-04 15:05:37');
INSERT INTO `images` VALUES ('82', '46', 'OWSlCBsIvr1Js3C146.JPG', '1', '2017-02-04 15:06:21', '2017-02-04 15:06:21');
INSERT INTO `images` VALUES ('83', '47', 's63oc326xFuBjMWQ47.JPG', '1', '2017-02-04 15:14:59', '2017-02-04 15:14:59');
INSERT INTO `images` VALUES ('84', '48', 'm4HOvngdc19YZSeY48.JPG', '1', '2017-02-04 15:17:03', '2017-02-04 15:17:03');
INSERT INTO `images` VALUES ('85', '49', '40veSCX1UWNxxP6949.JPG', '1', '2017-02-04 15:18:18', '2017-02-04 15:18:18');
INSERT INTO `images` VALUES ('86', '50', 'D8Af7Ks99YBXlkdU50.JPG', '1', '2017-02-04 15:22:10', '2017-02-04 15:22:10');
INSERT INTO `images` VALUES ('87', '51', '1T1oh6Iw6qzntzfL51.JPG', '1', '2017-02-04 15:25:16', '2017-02-04 15:25:16');
INSERT INTO `images` VALUES ('88', '52', 'pYCLutUl1z46EHV252.JPG', '1', '2017-02-04 15:29:22', '2017-02-04 15:29:22');
INSERT INTO `images` VALUES ('89', '53', 'Qod1HwVCxVaKaGxb53.JPG', '1', '2017-02-04 15:42:47', '2017-02-04 15:42:47');
INSERT INTO `images` VALUES ('90', '54', 'STVn5CouLfhRxbsT54.JPG', '1', '2017-02-04 15:44:09', '2017-02-04 15:44:09');
INSERT INTO `images` VALUES ('91', '55', 'AtgKo5IVJozdrukV55.JPG', '1', '2017-02-04 15:46:02', '2017-02-04 15:46:02');
INSERT INTO `images` VALUES ('92', '56', 'nHMfRbU6mITkueGD56.JPG', '1', '2017-02-04 15:47:28', '2017-02-04 15:47:28');
INSERT INTO `images` VALUES ('93', '57', 'sLOKOqvBzIAJ7uyy57.JPG', '1', '2017-02-04 15:53:32', '2017-02-04 15:53:32');
INSERT INTO `images` VALUES ('94', '58', 'YNAEdB4pcQRz0tuj58.JPG', '1', '2017-02-04 15:58:26', '2017-02-04 15:58:26');
INSERT INTO `images` VALUES ('95', '59', '3iMn47NdwCmAJRNO59.JPG', '1', '2017-02-04 16:02:49', '2017-02-04 16:02:49');
INSERT INTO `images` VALUES ('96', '60', 'JP7MVmVc7NnuQ3EG60.JPG', '1', '2017-02-04 16:03:34', '2017-02-04 16:03:34');
INSERT INTO `images` VALUES ('97', '61', 'JQQ6hJj5qhH8KuiC61.JPG', '1', '2017-02-04 16:05:51', '2017-02-04 16:05:51');
INSERT INTO `images` VALUES ('98', '62', 'GHWUsDub7lAHGHPs62.JPG', '1', '2017-02-04 16:09:35', '2017-02-04 16:09:35');
INSERT INTO `images` VALUES ('99', '63', 'vzDtAD8FVwBmHV9q_6947681526952.jpg', '1', '2017-02-05 01:39:08', '2017-02-05 01:39:08');
INSERT INTO `images` VALUES ('100', '63', 'z3UjL1DheLr2R4eB_6947681526952.jpg', '2', '2017-02-05 01:39:09', '2017-02-05 01:39:09');
INSERT INTO `images` VALUES ('104', '65', '7GDFb19acEaFRjWN_8806088567167.jpg', '1', '2017-02-05 01:39:27', '2017-02-05 01:39:27');
INSERT INTO `images` VALUES ('105', '65', '11W3NfKpaCJYOeHh_8806088567167.jpg', '2', '2017-02-05 01:39:27', '2017-02-05 01:39:27');
INSERT INTO `images` VALUES ('106', '66', '8jce7SlVHk11UFpN_8806088554280.', '1', '2017-02-05 01:39:28', '2017-02-05 01:39:28');
INSERT INTO `images` VALUES ('107', '66', '1SAe24zG37ndvQyV_8806088554280.', '2', '2017-02-05 01:39:28', '2017-02-05 01:39:28');
INSERT INTO `images` VALUES ('108', '66', '9jZqNAa3MZzAktHw_8806088554280.', '3', '2017-02-05 01:39:28', '2017-02-05 01:39:28');
INSERT INTO `images` VALUES ('109', '66', 'UPd8sjbvBy2Jgzn9_8806088554280.', '4', '2017-02-05 01:39:29', '2017-02-05 01:39:29');
INSERT INTO `images` VALUES ('110', '67', 'M6PpzDOWYde2ibnY_8806088566849.jpg', '1', '2017-02-05 01:39:29', '2017-02-05 01:39:29');
INSERT INTO `images` VALUES ('111', '67', 'wfudCTFjCoR1IgP2_8806088566849.jpg', '2', '2017-02-05 01:39:29', '2017-02-05 01:39:29');
INSERT INTO `images` VALUES ('112', '67', 'Pcyg6akf9BiPeG8I_8806088566849.jpg', '3', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `images` VALUES ('113', '67', 'pgADPo3JJXpy3UA0_8806088566849.jpg', '4', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `images` VALUES ('114', '68', '9FICqqeHcVV9KUcC_8806086862950.jpg', '1', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `images` VALUES ('115', '68', '7dV2dqY3adgNBwZo_8806086862950.jpg', '2', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `images` VALUES ('116', '69', 'dQSjvbMSnTMyeS7U_8806086830157.JPG', '1', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `images` VALUES ('117', '70', 'Q0rqwsbAmgqgy7gm_8806088579542.jpg', '1', '2017-02-05 01:39:32', '2017-02-05 01:39:32');
INSERT INTO `images` VALUES ('118', '71', 'wLuRTxDidsasM7R0_8806088579566.jpg', '1', '2017-02-05 01:45:20', '2017-02-05 01:45:20');
INSERT INTO `images` VALUES ('119', '71', 'k4uJioHxW98mMmfS_8806088579566.jpg', '2', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `images` VALUES ('120', '72', 'PRNA8xwEHYipG2jG_6922309822692.png', '1', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `images` VALUES ('121', '72', 'hf398n2SXPjdfF9D_6922309822692.jpg', '2', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `images` VALUES ('122', '73', '0TuHn9f6s7CNm91G_6922309822098.png', '1', '2017-02-05 01:45:24', '2017-02-05 01:45:24');
INSERT INTO `images` VALUES ('123', '73', 'wXnMvMNTvHv4m4mD_6922309822098.jpg', '2', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `images` VALUES ('124', '74', 'SklMWDg9mV3mU7Cj_8806088241692.jpg', '1', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `images` VALUES ('125', '75', 'ZjL25iNQIDezyLuL_8806088241890.jpg', '1', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `images` VALUES ('126', '76', 'H1cy0XJbLpc3KjKZ_8806086867542.jpg', '1', '2017-02-05 01:45:29', '2017-02-05 01:45:29');
INSERT INTO `images` VALUES ('127', '76', 'r0YSfkrGsVjzWlIx_8806086867542.jpg', '2', '2017-02-05 01:45:29', '2017-02-05 01:45:29');
INSERT INTO `images` VALUES ('128', '76', '3Dqd1f32TT6BqWYX_8806086867542.jpg', '3', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `images` VALUES ('129', '77', 'haKNUVfk8BG4LfXc_8806086867177.jpeg', '1', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `images` VALUES ('130', '77', 'MPAbbP6vX7DlWW53_8806086867177.jpg', '2', '2017-02-05 01:45:31', '2017-02-05 01:45:31');
INSERT INTO `images` VALUES ('131', '77', 'Tz7ssFCaJ93iTlyN_8806086867177.gif', '3', '2017-02-05 01:45:32', '2017-02-05 01:45:32');
INSERT INTO `images` VALUES ('132', '78', 'YIuPPiMRUQ3yT9Ix_8806088207056.jpg', '1', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `images` VALUES ('133', '79', '0NFbt9WNpvR9DGOq_8806088207032.jpeg', '1', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `images` VALUES ('134', '79', 'huIVi70X0f9YfvI8_8806088207032.png', '2', '2017-02-05 01:45:34', '2017-02-05 01:45:34');
INSERT INTO `images` VALUES ('135', '80', 'uYMTBgm1iv8QjYK1_8806088578378.jpeg', '1', '2017-02-05 01:45:35', '2017-02-05 01:45:35');
INSERT INTO `images` VALUES ('136', '80', 'qAmBsvPVRk3Du9VB_8806088578378.jpg', '2', '2017-02-05 01:45:35', '2017-02-05 01:45:35');
INSERT INTO `images` VALUES ('137', '81', 'BAuZSfuJ1C8DHSCS_7702138109954.jpg', '1', '2017-02-05 02:05:21', '2017-02-05 02:05:21');
INSERT INTO `images` VALUES ('138', '81', 'BjIgglHYWJIUOP4U_7702138109954.jpg', '2', '2017-02-05 02:05:22', '2017-02-05 02:05:22');
INSERT INTO `images` VALUES ('139', '82', '1lMyHSll812M1TUR_6901443134717.jpg', '1', '2017-02-05 02:05:23', '2017-02-05 02:05:23');
INSERT INTO `images` VALUES ('140', '82', 'WWqhuHcUOcpq9szW_6901443134717.jpg', '2', '2017-02-05 02:05:24', '2017-02-05 02:05:24');
INSERT INTO `images` VALUES ('142', '84', 'NVWDK3lGMmkD8R4H_7702138107561.jpg', '1', '2017-02-05 02:05:25', '2017-02-05 02:05:25');
INSERT INTO `images` VALUES ('143', '85', 'qdoGyNhrdeHljALK_7702138103976.jpg', '1', '2017-02-05 02:05:27', '2017-02-05 02:05:27');
INSERT INTO `images` VALUES ('144', '86', '86-img1-samsung-galaxy-j7-prime-duos-negro.jpg', '1', '2017-02-24 09:44:01', '2017-02-24 09:44:01');
INSERT INTO `images` VALUES ('145', '86', '86-img2-samsung-galaxy-j7-prime-duos-negro.jpg', '2', '2017-02-24 09:44:02', '2017-02-24 09:44:02');
INSERT INTO `images` VALUES ('146', '86', '86-img3-samsung-galaxy-j7-prime-duos-negro.jpg', '3', '2017-02-24 09:44:02', '2017-02-24 09:44:02');
INSERT INTO `images` VALUES ('147', '86', '86-img4-samsung-galaxy-j7-prime-duos-negro.jpg', '4', '2017-02-24 09:44:05', '2017-02-24 09:44:05');
INSERT INTO `images` VALUES ('148', '87', '87-img1-samsung-galaxy-j5-6-duos-blanco.jpg', '1', '2017-02-24 09:53:06', '2017-02-24 09:53:06');
INSERT INTO `images` VALUES ('151', '88', '88-img1-samsung-galaxy-j7-6-duos-negro.jpg', '1', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `images` VALUES ('152', '88', '88-img2-samsung-galaxy-j7-6-duos-negro.jpg', '2', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `images` VALUES ('153', '88', '88-img3-samsung-galaxy-j7-6-duos-negro.jpg', '3', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `images` VALUES ('154', '89', '89-img1-huawei-g-play-mini-blanco.png', '1', '2017-02-24 10:10:43', '2017-02-24 10:10:43');
INSERT INTO `images` VALUES ('155', '89', '89-img2-huawei-g-play-mini-blanco.jpg', '2', '2017-02-24 10:10:43', '2017-02-24 10:10:43');
INSERT INTO `images` VALUES ('156', '89', '89-img3-huawei-g-play-mini-blanco.jpg', '3', '2017-02-24 10:10:43', '2017-02-24 10:10:43');
INSERT INTO `images` VALUES ('157', '90', '90-img1-hyundai-d245-dual-sim.jpg', '1', '2017-02-24 10:17:47', '2017-02-24 10:17:47');
INSERT INTO `images` VALUES ('158', '91', '91-img1-azumi-a35s-lite.png', '1', '2017-02-24 10:27:57', '2017-02-24 10:27:57');
INSERT INTO `images` VALUES ('159', '91', '91-img2-azumi-a35s-lite.png', '2', '2017-02-24 10:27:58', '2017-02-24 10:27:58');
INSERT INTO `images` VALUES ('160', '91', '91-img3-azumi-a35s-lite.jpeg', '3', '2017-02-24 10:27:58', '2017-02-24 10:27:58');
INSERT INTO `images` VALUES ('161', '92', '92-img1-zoom-fly-24-azul.JPG', '1', '2017-02-24 11:10:37', '2017-02-24 11:10:37');
INSERT INTO `images` VALUES ('162', '92', '92-img2-zoom-fly-24-azul.JPG', '2', '2017-02-24 11:10:39', '2017-02-24 11:10:39');
INSERT INTO `images` VALUES ('163', '93', '93-img1-zoom-fly-24-negro.JPG', '1', '2017-02-24 11:17:40', '2017-02-24 11:17:40');
INSERT INTO `images` VALUES ('164', '93', '93-img2-zoom-fly-24-negro.JPG', '2', '2017-02-24 11:17:41', '2017-02-24 11:17:41');
INSERT INTO `images` VALUES ('165', '94', '94-img1-zoom-fly-24-blanco-dual-sim.JPG', '1', '2017-02-24 11:20:25', '2017-02-24 11:20:25');
INSERT INTO `images` VALUES ('166', '94', '94-img2-zoom-fly-24-blanco-dual-sim.JPG', '2', '2017-02-24 11:20:27', '2017-02-24 11:20:27');
INSERT INTO `images` VALUES ('167', '95', '95-img1-zoom-fly-24-verde-dual-sim.JPG', '1', '2017-02-24 11:29:41', '2017-02-24 11:29:41');
INSERT INTO `images` VALUES ('168', '95', '95-img2-zoom-fly-24-verde-dual-sim.JPG', '2', '2017-02-24 11:29:43', '2017-02-24 11:29:43');
INSERT INTO `images` VALUES ('171', '97', '97-img1-hotcel-xcover-v6-naranja.JPG', '1', '2017-02-24 12:06:54', '2017-02-24 12:06:54');
INSERT INTO `images` VALUES ('172', '97', '97-img2-hotcel-xcover-v6-naranja.JPG', '2', '2017-02-24 12:06:54', '2017-02-24 12:06:54');
INSERT INTO `images` VALUES ('173', '97', '97-img3-hotcel-xcover-v6-naranja.JPG', '3', '2017-02-24 12:06:54', '2017-02-24 12:06:54');
INSERT INTO `images` VALUES ('174', '97', '97-img4-hotcel-xcover-v6-naranja.JPG', '4', '2017-02-24 12:06:54', '2017-02-24 12:06:54');
INSERT INTO `images` VALUES ('175', '98', '98-img1-hotcel-xcover-v6-azul.JPG', '1', '2017-02-24 12:07:33', '2017-02-24 12:07:33');
INSERT INTO `images` VALUES ('176', '98', '98-img2-hotcel-xcover-v6-azul.JPG', '2', '2017-02-24 12:07:33', '2017-02-24 12:07:33');
INSERT INTO `images` VALUES ('177', '98', '98-img3-hotcel-xcover-v6-azul.JPG', '3', '2017-02-24 12:07:33', '2017-02-24 12:07:33');
INSERT INTO `images` VALUES ('178', '98', '98-img4-hotcel-xcover-v6-azul.JPG', '4', '2017-02-24 12:07:33', '2017-02-24 12:07:33');
INSERT INTO `images` VALUES ('179', '99', '99-img1-hotcel-xcover-v6-amarillo.JPG', '1', '2017-02-24 12:08:20', '2017-02-24 12:08:20');
INSERT INTO `images` VALUES ('180', '99', '99-img2-hotcel-xcover-v6-amarillo.JPG', '2', '2017-02-24 12:08:20', '2017-02-24 12:08:20');
INSERT INTO `images` VALUES ('181', '99', '99-img3-hotcel-xcover-v6-amarillo.JPG', '3', '2017-02-24 12:08:21', '2017-02-24 12:08:21');
INSERT INTO `images` VALUES ('182', '99', '99-img4-hotcel-xcover-v6-amarillo.JPG', '4', '2017-02-24 12:08:21', '2017-02-24 12:08:21');
INSERT INTO `images` VALUES ('183', '100', '100-img1-hotcel-xcover-v6-blanco.JPG', '1', '2017-02-24 12:09:21', '2017-02-24 12:09:21');
INSERT INTO `images` VALUES ('184', '100', '100-img2-hotcel-xcover-v6-blanco.JPG', '2', '2017-02-24 12:09:21', '2017-02-24 12:09:21');
INSERT INTO `images` VALUES ('185', '100', '100-img3-hotcel-xcover-v6-blanco.JPG', '3', '2017-02-24 12:09:21', '2017-02-24 12:09:21');
INSERT INTO `images` VALUES ('186', '100', '100-img4-hotcel-xcover-v6-blanco.JPG', '4', '2017-02-24 12:09:21', '2017-02-24 12:09:21');
INSERT INTO `images` VALUES ('187', '101', '101-img1-hotcel-xcover-v6-verde-dual-sim.JPG', '1', '2017-02-24 12:10:17', '2017-02-24 12:10:17');
INSERT INTO `images` VALUES ('188', '101', '101-img2-hotcel-xcover-v6-verde-dual-sim.JPG', '2', '2017-02-24 12:10:18', '2017-02-24 12:10:18');
INSERT INTO `images` VALUES ('189', '101', '101-img3-hotcel-xcover-v6-verde-dual-sim.JPG', '3', '2017-02-24 12:10:18', '2017-02-24 12:10:18');
INSERT INTO `images` VALUES ('190', '101', '101-img4-hotcel-xcover-v6-verde-dual-sim.JPG', '4', '2017-02-24 12:10:18', '2017-02-24 12:10:18');
INSERT INTO `images` VALUES ('191', '102', '102-img1-zoom-ultra-220-blanco-dual-sim.JPG', '1', '2017-02-24 12:14:46', '2017-02-24 12:14:46');
INSERT INTO `images` VALUES ('192', '102', '102-img2-zoom-ultra-220-blanco-dual-sim.JPG', '2', '2017-02-24 12:14:46', '2017-02-24 12:14:46');
INSERT INTO `images` VALUES ('193', '103', '103-img1-alcatel-1050a-negro.jpeg', '1', '2017-02-24 12:23:25', '2017-02-24 12:23:25');
INSERT INTO `images` VALUES ('194', '103', '103-img2-alcatel-1050a-negro.jpg', '2', '2017-02-24 12:23:25', '2017-02-24 12:23:25');
INSERT INTO `images` VALUES ('195', '103', '103-img3-alcatel-1050a-negro.jpg', '3', '2017-02-24 12:23:25', '2017-02-24 12:23:25');
INSERT INTO `images` VALUES ('196', '104', '104-img1-lg-b220-negro-dual-sim.jpg', '1', '2017-02-24 12:26:45', '2017-02-24 12:26:45');
INSERT INTO `images` VALUES ('197', '105', '105-img1-huawei-y3-blanco-dual-sim.jpg', '1', '2017-02-24 12:32:56', '2017-02-24 12:32:56');
INSERT INTO `images` VALUES ('198', '106', '106-img1-huawei-y5-negro.jpg', '1', '2017-02-24 12:36:30', '2017-02-24 12:36:30');
INSERT INTO `images` VALUES ('199', '106', '106-img2-huawei-y5-negro.jpg', '2', '2017-02-24 12:36:30', '2017-02-24 12:36:30');
INSERT INTO `images` VALUES ('200', '107', '107-img1-protector-samsung-j7-prime-escarcha-plateado.JPG', '1', '2017-03-01 10:58:43', '2017-03-01 10:58:43');
INSERT INTO `images` VALUES ('201', '108', '108-img1-protector-samsung-j7-prime-escarcha-dorado.JPG', '1', '2017-03-01 11:02:12', '2017-03-01 11:02:12');
INSERT INTO `images` VALUES ('202', '109', '109-img1-protector-samsung-j7-prime-escarcha-negro.JPG', '1', '2017-03-01 11:04:43', '2017-03-01 11:04:43');
INSERT INTO `images` VALUES ('203', '110', '110-img1-protector-samsung-j7-prime-escarcha-azul.JPG', '1', '2017-03-01 11:06:11', '2017-03-01 11:06:11');
INSERT INTO `images` VALUES ('204', '111', '111-img1-protector-samsung-j7-prime-escarcha-rosado.JPG', '1', '2017-03-01 11:09:59', '2017-03-01 11:09:59');
INSERT INTO `images` VALUES ('207', '114', '114-img1-protector-motomo-samsung-j7-prime-gris.JPG', '1', '2017-03-01 11:29:22', '2017-03-01 11:29:22');
INSERT INTO `images` VALUES ('208', '115', '115-img1-protector-motomo-samsung-j7-prime-morado.JPG', '1', '2017-03-01 11:29:55', '2017-03-01 11:29:55');
INSERT INTO `images` VALUES ('209', '116', '116-img1-protector-motomo-samsung-j7-prime-negro.JPG', '1', '2017-03-01 11:30:30', '2017-03-01 11:30:30');
INSERT INTO `images` VALUES ('210', '117', '117-img1-protector-motomo-samsung-j7-prime-blanco.JPG', '1', '2017-03-01 11:30:58', '2017-03-01 11:30:58');
INSERT INTO `images` VALUES ('211', '118', '118-img1-protector-motomo-samsung-j7-prime-azul.JPG', '1', '2017-03-01 11:31:26', '2017-03-01 11:31:26');
INSERT INTO `images` VALUES ('212', '119', '119-img1-protector-motomo-samsung-j7-prime-rosado.JPG', '1', '2017-03-01 11:32:08', '2017-03-01 11:32:08');
INSERT INTO `images` VALUES ('213', '120', '120-img1-protector-samsung-j7-prime-mariposas.JPG', '1', '2017-03-01 11:45:59', '2017-03-01 11:45:59');
INSERT INTO `images` VALUES ('214', '121', '121-img1-protector-samsung-j7-prime-corazones.JPG', '1', '2017-03-01 11:46:45', '2017-03-01 11:46:45');
INSERT INTO `images` VALUES ('215', '122', '122-img1-protector-samsung-j7-prime-corazon-y-buho.JPG', '1', '2017-03-01 11:48:07', '2017-03-01 11:48:07');
INSERT INTO `images` VALUES ('216', '123', '123-img1-protector-samsung-j7-prime-flores.JPG', '1', '2017-03-01 11:49:00', '2017-03-01 11:49:00');
INSERT INTO `images` VALUES ('217', '124', '124-img1-protector-samsung-j7-prime-conejos-y-corazones.JPG', '1', '2017-03-01 11:49:53', '2017-03-01 11:49:53');
INSERT INTO `images` VALUES ('218', '125', '125-img1-protector-samsung-j7-prime-real-madrid.JPG', '1', '2017-03-01 11:50:37', '2017-03-01 11:50:37');
INSERT INTO `images` VALUES ('219', '126', '126-img1-protector-samsung-j7-prime-atletico-nacional.JPG', '1', '2017-03-01 11:51:39', '2017-03-01 11:51:39');
INSERT INTO `images` VALUES ('220', '127', '127-img1-protector-samsung-j7-prime-barcelona.JPG', '1', '2017-03-01 11:52:11', '2017-03-01 11:52:11');
INSERT INTO `images` VALUES ('221', '128', '128-img1-protector-samsung-j7-prime-con-piedras-brillantes-azul.JPG', '1', '2017-03-01 11:53:23', '2017-03-01 11:53:23');
INSERT INTO `images` VALUES ('222', '129', '129-img1-protector-samsung-j7-prime-con-piedras-brillantes-plateado.JPG', '1', '2017-03-01 11:53:52', '2017-03-01 11:53:52');
INSERT INTO `images` VALUES ('223', '130', '130-img1-protector-samsung-j7-prime-con-piedras-brillantes-rosado.JPG', '1', '2017-03-01 11:54:28', '2017-03-01 11:54:28');
INSERT INTO `images` VALUES ('224', '131', '131-img1-protector-samsung-j7-prime-con-piedras-brillantes-rojo.JPG', '1', '2017-03-01 11:55:01', '2017-03-01 11:55:01');
INSERT INTO `images` VALUES ('225', '132', '132-img1-protector-samsung-j7-prime-hello-kitty.JPG', '1', '2017-03-01 11:55:44', '2017-03-01 11:55:44');
INSERT INTO `images` VALUES ('226', '133', '133-img1-protector-samsung-j7-prime-gris.JPG', '1', '2017-03-01 11:56:20', '2017-03-01 11:56:20');
INSERT INTO `images` VALUES ('227', '134', '134-img1-protector-samsung-j7-prime-rojo.JPG', '1', '2017-03-01 11:56:54', '2017-03-01 11:56:54');
INSERT INTO `images` VALUES ('228', '135', '135-img1-protector-youyou-samsung-j7-prime-plateado.JPG', '1', '2017-03-01 11:59:08', '2017-03-01 11:59:08');
INSERT INTO `images` VALUES ('229', '136', '136-img1-protector-youyou-samsung-j7-prime-negro.JPG', '1', '2017-03-01 11:59:29', '2017-03-01 11:59:29');
INSERT INTO `images` VALUES ('230', '137', '137-img1-protector-youyou-samsung-j7-prime-gris.JPG', '1', '2017-03-01 12:00:23', '2017-03-01 12:00:23');
INSERT INTO `images` VALUES ('231', '138', '138-img1-protector-youyou-samsung-j7-prime-rojo.JPG', '1', '2017-03-01 12:01:04', '2017-03-01 12:01:04');
INSERT INTO `images` VALUES ('232', '139', '139-img1-protector-youyou-samsung-j7-prime-fucsia.JPG', '1', '2017-03-01 12:01:53', '2017-03-01 12:01:53');
INSERT INTO `images` VALUES ('233', '140', '140-img1-protector-youyou-samsung-j7-prime-dorado.JPG', '1', '2017-03-01 12:02:24', '2017-03-01 12:02:24');
INSERT INTO `images` VALUES ('234', '141', '141-img1-protector-anti-golpe-youyou-samsung-j7-prime-fucsia.JPG', '1', '2017-03-01 12:03:15', '2017-03-01 12:03:15');
INSERT INTO `images` VALUES ('235', '142', '142-img1-protector-anti-golpe-youyou-samsung-j7-prime-azul.JPG', '1', '2017-03-01 12:05:25', '2017-03-01 12:05:25');
INSERT INTO `images` VALUES ('236', '143', '143-img1-protector-anti-golpe-youyou-samsung-j7-prime-plateado.JPG', '1', '2017-03-01 12:05:54', '2017-03-01 12:05:54');
INSERT INTO `images` VALUES ('237', '144', '144-img1-audifonos-manos-libres-de-super-mario.JPG', '1', '2017-03-28 21:56:15', '2017-03-28 21:56:15');
INSERT INTO `images` VALUES ('238', '144', '144-img2-audifonos-manos-libres-de-super-mario.JPG', '2', '2017-03-28 21:56:18', '2017-03-28 21:56:18');
INSERT INTO `images` VALUES ('239', '145', '145-img1-audifonos-manos-libres-de-hello-kitty.JPG', '1', '2017-03-28 21:59:04', '2017-03-28 21:59:04');
INSERT INTO `images` VALUES ('240', '146', '146-img1-audifonos-manos-libres-de-mickey-mouse.JPG', '1', '2017-03-28 22:00:44', '2017-03-28 22:00:44');
INSERT INTO `images` VALUES ('241', '147', '147-img1-audifonos-manos-libres-zipp-earphone-corredera-azul.JPG', '1', '2017-03-28 22:05:01', '2017-03-28 22:05:01');
INSERT INTO `images` VALUES ('242', '148', '148-img1-audifonos-manos-libres-zipp-earphone-corredera-rojo.JPG', '1', '2017-03-28 22:05:52', '2017-03-28 22:05:52');
INSERT INTO `images` VALUES ('243', '149', '149-img1-audifonos-manos-libres-zipp-earphone-corredera-blanco.JPG', '1', '2017-03-28 22:06:19', '2017-03-28 22:06:19');
INSERT INTO `images` VALUES ('244', '150', '150-img1-audifonos-manos-libres-zipp-earphone-corredera-naranja.JPG', '1', '2017-03-28 22:06:48', '2017-03-28 22:06:48');
INSERT INTO `images` VALUES ('245', '151', '151-img1-audifonos-manos-libres-raen-negro.JPG', '1', '2017-03-28 22:08:11', '2017-03-28 22:08:11');
INSERT INTO `images` VALUES ('246', '152', '152-img1-audifonos-manos-libres-nike-azul.JPG', '1', '2017-03-28 22:09:49', '2017-03-28 22:09:49');
INSERT INTO `images` VALUES ('247', '153', '153-img1-audifonos-manos-libres-lugo-blanco.JPG', '1', '2017-03-28 22:11:02', '2017-03-28 22:11:02');
INSERT INTO `images` VALUES ('248', '154', '154-img1-audifonos-manos-libres-sony-hearin-verde.JPG', '1', '2017-03-28 22:14:39', '2017-03-28 22:14:39');
INSERT INTO `images` VALUES ('249', '155', '155-img1-audifonos-manos-libres-sony-hearin-azul.JPG', '1', '2017-03-28 22:15:06', '2017-03-28 22:15:06');
INSERT INTO `images` VALUES ('250', '155', '155-img2-audifonos-manos-libres-sony-hearin-azul.JPG', '2', '2017-03-28 22:15:06', '2017-03-28 22:15:06');
INSERT INTO `images` VALUES ('251', '156', '156-img1-audifonos-manos-libres-sony-hearin-fucsia.JPG', '1', '2017-03-28 22:15:53', '2017-03-28 22:15:53');
INSERT INTO `images` VALUES ('252', '156', '156-img2-audifonos-manos-libres-sony-hearin-fucsia.JPG', '2', '2017-03-28 22:15:54', '2017-03-28 22:15:54');
INSERT INTO `images` VALUES ('253', '157', '157-img1-audifonos-manos-libres-raen-r160-negro.JPG', '1', '2017-03-28 22:17:08', '2017-03-28 22:17:08');
INSERT INTO `images` VALUES ('254', '158', '158-img1-audifonos-manos-libres-adidas-rojo.JPG', '1', '2017-03-28 22:18:29', '2017-03-28 22:18:29');
INSERT INTO `images` VALUES ('255', '159', '159-img1-audifonos-manos-libres-jbl-azul.JPG', '1', '2017-03-28 22:19:06', '2017-03-28 22:19:06');
INSERT INTO `images` VALUES ('256', '160', '160-img1-audifonos-manos-libres-remax-rosado.JPG', '1', '2017-03-28 22:20:58', '2017-03-28 22:20:58');
INSERT INTO `images` VALUES ('257', '160', '160-img2-audifonos-manos-libres-remax-rosado.JPG', '2', '2017-03-28 22:20:58', '2017-03-28 22:20:58');
INSERT INTO `images` VALUES ('258', '161', '161-img1-audifonos-manos-libres-remax-gris.JPG', '1', '2017-03-28 22:21:47', '2017-03-28 22:21:47');
INSERT INTO `images` VALUES ('259', '161', '161-img2-audifonos-manos-libres-remax-gris.JPG', '2', '2017-03-28 22:21:48', '2017-03-28 22:21:48');
INSERT INTO `images` VALUES ('260', '162', '162-img1-audifonos-manos-libres-adidas-diadema-roja.JPG', '1', '2017-03-28 22:23:29', '2017-03-28 22:23:29');
INSERT INTO `images` VALUES ('261', '162', '162-img2-audifonos-manos-libres-adidas-diadema-roja.JPG', '2', '2017-03-28 22:23:29', '2017-03-28 22:23:29');
INSERT INTO `images` VALUES ('262', '163', '163-img1-audifonos-manos-libres-super-bass-diadema-futbol.JPG', '1', '2017-03-28 22:25:54', '2017-03-28 22:25:54');
INSERT INTO `images` VALUES ('263', '163', '163-img2-audifonos-manos-libres-super-bass-diadema-futbol.JPG', '2', '2017-03-28 22:25:55', '2017-03-28 22:25:55');
INSERT INTO `images` VALUES ('264', '164', '164-img1-audifonos-manos-libres-adidas-diadema-negro.JPG', '1', '2017-03-28 22:27:10', '2017-03-28 22:27:10');
INSERT INTO `images` VALUES ('265', '164', '164-img2-audifonos-manos-libres-adidas-diadema-negro.JPG', '2', '2017-03-28 22:27:11', '2017-03-28 22:27:11');
INSERT INTO `images` VALUES ('266', '165', '165-img1-audifonos-manos-libres-nike-diadema-azul.JPG', '1', '2017-03-28 22:28:25', '2017-03-28 22:28:25');
INSERT INTO `images` VALUES ('267', '166', '166-img1-audifonos-manos-libres-iphone-blanco.JPG', '1', '2017-03-28 22:29:18', '2017-03-28 22:29:18');
INSERT INTO `images` VALUES ('268', '167', '167-img1-audifonos-manos-libres-colourful-azul.JPG', '1', '2017-03-28 22:30:37', '2017-03-28 22:30:37');
INSERT INTO `images` VALUES ('269', '168', '168-img1-audifonos-manos-libres-colourful-morado.JPG', '1', '2017-03-28 22:30:57', '2017-03-28 22:30:57');
INSERT INTO `images` VALUES ('273', '172', '172-img1-audifonos-manos-libres-adidas-diadema-negro-y-ocre.JPG', '1', '2017-03-28 22:58:44', '2017-03-28 22:58:44');
INSERT INTO `images` VALUES ('274', '173', '173-img1-diadema-manos-libres-colourful-basketball-blanco.JPG', '1', '2017-04-02 22:40:55', '2017-04-02 22:40:55');
INSERT INTO `images` VALUES ('275', '174', '174-img1-diadema-manos-libres-colourful-basketball-morado.JPG', '1', '2017-04-02 22:41:39', '2017-04-02 22:41:39');
INSERT INTO `images` VALUES ('276', '175', '175-img1-diadema-manos-libres-colourful-basketball-negro.JPG', '1', '2017-04-02 22:41:59', '2017-04-02 22:41:59');
INSERT INTO `images` VALUES ('277', '176', '176-img1-diadema-manos-libres-adidas-amarilla-con-rojo.JPG', '1', '2017-04-02 22:43:42', '2017-04-02 22:43:42');
INSERT INTO `images` VALUES ('278', '177', '177-img1-diadema-manos-libres-super-bass-futbol.JPG', '1', '2017-04-02 22:46:20', '2017-04-02 22:46:20');
INSERT INTO `images` VALUES ('279', '178', '178-img1-audifonos-manos-libres-colourful-negro.JPG', '1', '2017-04-02 22:47:18', '2017-04-02 22:47:18');
INSERT INTO `images` VALUES ('280', '179', '179-img1-diadema-radio-fm-y-reproductor-mp3-zomar-negro.JPG', '1', '2017-04-02 22:53:47', '2017-04-02 22:53:47');
INSERT INTO `images` VALUES ('281', '179', '179-img2-diadema-radio-fm-y-reproductor-mp3-zomar-negro.JPG', '2', '2017-04-02 22:53:49', '2017-04-02 22:53:49');
INSERT INTO `images` VALUES ('282', '179', '179-img3-diadema-radio-fm-y-reproductor-mp3-zomar-negro.JPG', '3', '2017-04-02 22:53:50', '2017-04-02 22:53:50');
INSERT INTO `images` VALUES ('283', '180', '180-img1-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-verde.JPG', '1', '2017-04-02 23:00:06', '2017-04-02 23:00:06');
INSERT INTO `images` VALUES ('284', '180', '180-img2-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-verde.JPG', '2', '2017-04-02 23:00:07', '2017-04-02 23:00:07');
INSERT INTO `images` VALUES ('285', '180', '180-img3-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-verde.JPG', '3', '2017-04-02 23:00:08', '2017-04-02 23:00:08');
INSERT INTO `images` VALUES ('286', '181', '181-img1-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-blanco.JPG', '1', '2017-04-02 23:03:36', '2017-04-02 23:03:36');
INSERT INTO `images` VALUES ('287', '181', '181-img2-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-blanco.JPG', '2', '2017-04-02 23:03:37', '2017-04-02 23:03:37');
INSERT INTO `images` VALUES ('288', '181', '181-img3-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-blanco.JPG', '3', '2017-04-02 23:03:37', '2017-04-02 23:03:37');
INSERT INTO `images` VALUES ('289', '182', '182-img1-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-gris.JPG', '1', '2017-04-02 23:04:38', '2017-04-02 23:04:38');
INSERT INTO `images` VALUES ('290', '182', '182-img2-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-gris.JPG', '2', '2017-04-02 23:04:39', '2017-04-02 23:04:39');
INSERT INTO `images` VALUES ('291', '182', '182-img3-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-gris.JPG', '3', '2017-04-02 23:04:40', '2017-04-02 23:04:40');
INSERT INTO `images` VALUES ('292', '183', '183-img1-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-naranja.JPG', '1', '2017-04-02 23:05:39', '2017-04-02 23:05:39');
INSERT INTO `images` VALUES ('293', '183', '183-img2-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-naranja.JPG', '2', '2017-04-02 23:05:40', '2017-04-02 23:05:40');
INSERT INTO `images` VALUES ('294', '183', '183-img3-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-naranja.JPG', '3', '2017-04-02 23:05:41', '2017-04-02 23:05:41');
INSERT INTO `images` VALUES ('295', '184', '184-img1-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-verde-claro.JPG', '1', '2017-04-02 23:07:33', '2017-04-02 23:07:33');
INSERT INTO `images` VALUES ('296', '184', '184-img2-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-verde-claro.JPG', '2', '2017-04-02 23:07:34', '2017-04-02 23:07:34');
INSERT INTO `images` VALUES ('297', '184', '184-img3-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-verde-claro.JPG', '3', '2017-04-02 23:07:35', '2017-04-02 23:07:35');
INSERT INTO `images` VALUES ('298', '185', '185-img1-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-azul-con-blanco.JPG', '1', '2017-04-02 23:08:10', '2017-04-02 23:08:10');
INSERT INTO `images` VALUES ('299', '185', '185-img2-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-azul-con-blanco.JPG', '2', '2017-04-02 23:08:10', '2017-04-02 23:08:10');
INSERT INTO `images` VALUES ('300', '185', '185-img3-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-azul-con-blanco.JPG', '3', '2017-04-02 23:08:11', '2017-04-02 23:08:11');
INSERT INTO `images` VALUES ('301', '186', '186-img1-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-verde-dos-tonos.JPG', '1', '2017-04-02 23:09:41', '2017-04-02 23:09:41');
INSERT INTO `images` VALUES ('302', '186', '186-img2-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-verde-dos-tonos.JPG', '2', '2017-04-02 23:09:42', '2017-04-02 23:09:42');
INSERT INTO `images` VALUES ('303', '187', '187-img1-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-azul.JPG', '1', '2017-04-02 23:10:20', '2017-04-02 23:10:20');
INSERT INTO `images` VALUES ('304', '187', '187-img2-audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-azul.JPG', '2', '2017-04-02 23:10:21', '2017-04-02 23:10:21');
INSERT INTO `images` VALUES ('305', '188', '188-img1-diadema-bluetooth-manos-libres-radio-rm-y-reproductor-mp3-fucsia.JPG', '1', '2017-04-02 23:11:55', '2017-04-02 23:11:55');
INSERT INTO `images` VALUES ('306', '188', '188-img2-diadema-bluetooth-manos-libres-radio-rm-y-reproductor-mp3-fucsia.JPG', '2', '2017-04-02 23:11:56', '2017-04-02 23:11:56');
INSERT INTO `images` VALUES ('307', '188', '188-img3-diadema-bluetooth-manos-libres-radio-rm-y-reproductor-mp3-fucsia.JPG', '3', '2017-04-02 23:11:57', '2017-04-02 23:11:57');
INSERT INTO `images` VALUES ('308', '189', '189-img1-diadema-bluetooth-manos-libres-radio-rm-y-reproductor-mp3-morado.JPG', '1', '2017-04-02 23:12:37', '2017-04-02 23:12:37');
INSERT INTO `images` VALUES ('309', '189', '189-img2-diadema-bluetooth-manos-libres-radio-rm-y-reproductor-mp3-morado.JPG', '2', '2017-04-02 23:12:38', '2017-04-02 23:12:38');
INSERT INTO `images` VALUES ('310', '189', '189-img3-diadema-bluetooth-manos-libres-radio-rm-y-reproductor-mp3-morado.JPG', '3', '2017-04-02 23:12:39', '2017-04-02 23:12:39');
INSERT INTO `images` VALUES ('311', '190', '190-img1-audifonos-diadema-sony-negro.JPG', '1', '2017-04-02 23:14:46', '2017-04-02 23:14:46');
INSERT INTO `images` VALUES ('312', '190', '190-img2-audifonos-diadema-sony-negro.JPG', '2', '2017-04-02 23:14:46', '2017-04-02 23:14:46');
INSERT INTO `images` VALUES ('313', '190', '190-img3-audifonos-diadema-sony-negro.JPG', '3', '2017-04-02 23:14:47', '2017-04-02 23:14:47');
INSERT INTO `images` VALUES ('314', '191', '191-img1-audifonos-diadema-beats-azul.JPG', '1', '2017-04-02 23:16:29', '2017-04-02 23:16:29');
INSERT INTO `images` VALUES ('315', '192', '192-img1-audifonos-diadema-gigo-azul.JPG', '1', '2017-04-02 23:17:53', '2017-04-02 23:17:53');
INSERT INTO `images` VALUES ('316', '192', '192-img2-audifonos-diadema-gigo-azul.JPG', '2', '2017-04-02 23:17:53', '2017-04-02 23:17:53');
INSERT INTO `images` VALUES ('317', '192', '192-img3-audifonos-diadema-gigo-azul.JPG', '3', '2017-04-02 23:17:54', '2017-04-02 23:17:54');
INSERT INTO `images` VALUES ('318', '193', '193-img1-audifonos-diadema-beats-blanco.JPG', '1', '2017-04-02 23:18:40', '2017-04-02 23:18:40');
INSERT INTO `images` VALUES ('319', '194', '194-img1-parlante-bluetooth-y-reproductor-mp3-portatil-verde.JPG', '1', '2017-04-02 23:22:50', '2017-04-02 23:22:50');
INSERT INTO `images` VALUES ('320', '194', '194-img2-parlante-bluetooth-y-reproductor-mp3-portatil-verde.JPG', '2', '2017-04-02 23:22:51', '2017-04-02 23:22:51');
INSERT INTO `images` VALUES ('321', '194', '194-img3-parlante-bluetooth-y-reproductor-mp3-portatil-verde.JPG', '3', '2017-04-02 23:22:51', '2017-04-02 23:22:51');
INSERT INTO `images` VALUES ('322', '194', '194-img4-parlante-bluetooth-y-reproductor-mp3-portatil-verde.JPG', '4', '2017-04-02 23:22:52', '2017-04-02 23:22:52');
INSERT INTO `images` VALUES ('323', '194', '194-img5-parlante-bluetooth-y-reproductor-mp3-portatil-verde.JPG', '5', '2017-04-02 23:22:53', '2017-04-02 23:22:53');
INSERT INTO `images` VALUES ('324', '195', '195-img1-parlante-bluetooth-y-reproductor-mp3-portatil-rojo.JPG', '1', '2017-04-02 23:24:06', '2017-04-02 23:24:06');
INSERT INTO `images` VALUES ('325', '195', '195-img2-parlante-bluetooth-y-reproductor-mp3-portatil-rojo.JPG', '2', '2017-04-02 23:24:06', '2017-04-02 23:24:06');
INSERT INTO `images` VALUES ('326', '195', '195-img3-parlante-bluetooth-y-reproductor-mp3-portatil-rojo.JPG', '3', '2017-04-02 23:24:07', '2017-04-02 23:24:07');
INSERT INTO `images` VALUES ('327', '195', '195-img4-parlante-bluetooth-y-reproductor-mp3-portatil-rojo.JPG', '4', '2017-04-02 23:24:08', '2017-04-02 23:24:08');
INSERT INTO `images` VALUES ('328', '196', '196-img1-parlante-bluetooth-y-reproductor-mp3-portatil-morado.JPG', '1', '2017-04-02 23:26:40', '2017-04-02 23:26:40');
INSERT INTO `images` VALUES ('329', '196', '196-img2-parlante-bluetooth-y-reproductor-mp3-portatil-morado.JPG', '2', '2017-04-02 23:26:41', '2017-04-02 23:26:41');
INSERT INTO `images` VALUES ('330', '196', '196-img3-parlante-bluetooth-y-reproductor-mp3-portatil-morado.JPG', '3', '2017-04-02 23:26:42', '2017-04-02 23:26:42');
INSERT INTO `images` VALUES ('331', '196', '196-img4-parlante-bluetooth-y-reproductor-mp3-portatil-morado.JPG', '4', '2017-04-02 23:26:43', '2017-04-02 23:26:43');
INSERT INTO `images` VALUES ('332', '197', '197-img1-reproductor-mp3-y-radio-rm-royal-azul.JPG', '1', '2017-04-02 23:30:48', '2017-04-02 23:30:48');
INSERT INTO `images` VALUES ('333', '197', '197-img2-reproductor-mp3-y-radio-rm-royal-azul.JPG', '2', '2017-04-02 23:30:49', '2017-04-02 23:30:49');
INSERT INTO `images` VALUES ('334', '197', '197-img3-reproductor-mp3-y-radio-rm-royal-azul.JPG', '3', '2017-04-02 23:30:50', '2017-04-02 23:30:50');
INSERT INTO `images` VALUES ('335', '197', '197-img4-reproductor-mp3-y-radio-rm-royal-azul.JPG', '4', '2017-04-02 23:30:51', '2017-04-02 23:30:51');
INSERT INTO `images` VALUES ('336', '197', '197-img5-reproductor-mp3-y-radio-rm-royal-azul.JPG', '5', '2017-04-02 23:30:52', '2017-04-02 23:30:52');
INSERT INTO `images` VALUES ('337', '198', '198-img1-reproductor-mp3-y-radio-rm-royal-negro.JPG', '1', '2017-04-02 23:33:18', '2017-04-02 23:33:18');
INSERT INTO `images` VALUES ('338', '198', '198-img2-reproductor-mp3-y-radio-rm-royal-negro.JPG', '2', '2017-04-02 23:33:19', '2017-04-02 23:33:19');
INSERT INTO `images` VALUES ('339', '198', '198-img3-reproductor-mp3-y-radio-rm-royal-negro.JPG', '3', '2017-04-02 23:33:20', '2017-04-02 23:33:20');
INSERT INTO `images` VALUES ('341', '200', '200-img1-motorola-moto-g5-plus-xt1681-gris-oscuro.jpg', '1', '2017-06-22 10:12:20', '2017-06-22 10:12:20');
INSERT INTO `images` VALUES ('351', '200', '200-img2-motorola-moto-g5-plus-xt1681-gris-oscuro.jpg', '2', '2017-06-28 13:44:37', '2017-06-28 13:44:37');
INSERT INTO `images` VALUES ('352', '200', '200-img3-motorola-moto-g5-plus-xt1681-gris-oscuro.jpg', '3', '2017-06-28 13:44:38', '2017-06-28 13:44:38');
INSERT INTO `images` VALUES ('353', '200', '200-img4-motorola-moto-g5-plus-xt1681-gris-oscuro.jpg', '4', '2017-06-28 13:44:38', '2017-06-28 13:44:38');
INSERT INTO `images` VALUES ('360', '87', '87-img2-samsung-galaxy-j5-6-duos-blanco.jpg', '2', '2017-06-28 14:13:24', '2017-06-28 14:13:24');
INSERT INTO `images` VALUES ('361', '87', '87-img3-samsung-galaxy-j5-6-duos-blanco.jpg', '3', '2017-06-28 14:13:25', '2017-06-28 14:13:25');
INSERT INTO `images` VALUES ('362', '201', '201-img1-htc-m10-plateado-64gb.jpg', '1', '2017-08-01 10:13:45', '2017-08-01 10:13:45');
INSERT INTO `images` VALUES ('363', '202', '202-img1-generico-cable-2x1.JPG', '1', '2017-08-02 14:52:27', '2017-08-02 14:52:27');
INSERT INTO `images` VALUES ('364', '203', '203-img1-protector-verus-huawei-p10-azul.JPG', '1', '2017-08-08 13:00:56', '2017-08-08 13:00:56');
INSERT INTO `images` VALUES ('365', '204', '204-img1-protector-verus-para-huawei-p10-azul.JPG', '1', '2017-08-08 13:03:37', '2017-08-08 13:03:37');
INSERT INTO `images` VALUES ('366', '205', '205-img1-protector-samsung-j5-prime.JPG', '1', '2017-08-08 13:22:08', '2017-08-08 13:22:08');
INSERT INTO `images` VALUES ('367', '206', '206-img1-protector-samsung-j5-prrime.JPG', '1', '2017-08-08 13:29:06', '2017-08-08 13:29:06');
INSERT INTO `images` VALUES ('368', '207', '207-img1-protector-generico-samsung-j2-prime.JPG', '1', '2017-08-08 13:33:35', '2017-08-08 13:33:35');
INSERT INTO `images` VALUES ('369', '208', '208-img1-protector-samsung-j2-prime.JPG', '1', '2017-08-08 13:37:10', '2017-08-08 13:37:10');
INSERT INTO `images` VALUES ('370', '209', '209-img1-verus-estuche-samsung-j2-prime.JPG', '1', '2017-08-08 14:51:18', '2017-08-08 14:51:18');
INSERT INTO `images` VALUES ('371', '210', '210-img1-protector-para-samsung-j2-prime.JPG', '1', '2017-08-08 14:57:20', '2017-08-08 14:57:20');
INSERT INTO `images` VALUES ('372', '211', '211-img1-protector-para-samsung-j5-prime.JPG', '1', '2017-08-08 15:04:56', '2017-08-08 15:04:56');
INSERT INTO `images` VALUES ('373', '212', '212-img1-protector-incipio-samsung-j5-prime.JPG', '1', '2017-08-08 15:14:01', '2017-08-08 15:14:01');
INSERT INTO `images` VALUES ('374', '213', '213-img1-protector-generico-iphone-6.JPG', '1', '2017-08-08 15:50:26', '2017-08-08 15:50:26');
INSERT INTO `images` VALUES ('375', '214', '214-img1-protector-motomo-huawei-p10-lite.JPG', '1', '2017-08-08 15:56:37', '2017-08-08 15:56:37');
INSERT INTO `images` VALUES ('376', '215', '215-img1-protector-motomo-para-huawei-p10-lite.JPG', '1', '2017-08-08 16:02:36', '2017-08-08 16:02:36');
INSERT INTO `images` VALUES ('377', '216', '216-img1-protector-generico-huawei-p9-lite.JPG', '1', '2017-08-08 16:11:50', '2017-08-08 16:11:50');
INSERT INTO `images` VALUES ('378', '217', '217-img1-protector-generico-motorola-g4-play.JPG', '1', '2017-08-08 16:16:53', '2017-08-08 16:16:53');
INSERT INTO `images` VALUES ('379', '218', '218-img1-protecotr-generico-motorola-g4-play.JPG', '1', '2017-08-08 16:19:28', '2017-08-08 16:19:28');
INSERT INTO `images` VALUES ('380', '219', '219-img1-protector-incipio-motorola-g4-play.JPG', '1', '2017-08-08 16:24:39', '2017-08-08 16:24:39');
INSERT INTO `images` VALUES ('381', '220', '220-img1-protector-generico-para-motorola-g4-play.JPG', '1', '2017-08-08 16:29:56', '2017-08-08 16:29:56');
INSERT INTO `images` VALUES ('382', '221', '221-img1-dispostivo-generico-bluetooth-car.jpg', '1', '2017-08-14 16:51:13', '2017-08-14 16:51:13');
INSERT INTO `images` VALUES ('383', '222', '222-img1-generico-kit-conetor.jpg', '1', '2017-08-14 16:59:15', '2017-08-14 16:59:15');
INSERT INTO `images` VALUES ('384', '223', '223-img1-remax-holder-generico.jpeg', '1', '2017-08-14 17:22:03', '2017-08-14 17:22:03');
INSERT INTO `images` VALUES ('385', '224', '224-img1-generico-remax.jpg', '1', '2017-08-14 17:29:25', '2017-08-14 17:29:25');
INSERT INTO `images` VALUES ('386', '225', '225-img1-dispositivo-otg-usb-generico-remax.jpg', '1', '2017-08-14 17:44:43', '2017-08-14 17:44:43');
INSERT INTO `images` VALUES ('387', '226', '226-img1-vidrio-perfilado-de-iphone-6-6-plus-7-y-7-plus.jpg', '1', '2017-08-14 17:55:57', '2017-08-14 17:55:57');
INSERT INTO `images` VALUES ('388', '226', '226-img2-vidrio-perfilado-de-iphone-6-6-plus-7-y-7-plus.jpg', '2', '2017-08-14 17:55:57', '2017-08-14 17:55:57');
INSERT INTO `images` VALUES ('389', '226', '226-img3-vidrio-perfilado-de-iphone-6-6-plus-7-y-7-plus.jpg', '3', '2017-08-14 17:55:57', '2017-08-14 17:55:57');
INSERT INTO `images` VALUES ('390', '227', '227-img1-banco-de-poder-generico-remax.png', '1', '2017-08-14 18:04:47', '2017-08-14 18:04:47');
INSERT INTO `images` VALUES ('391', '227', '227-img2-banco-de-poder-generico-remax.jpg', '2', '2017-08-14 18:04:48', '2017-08-14 18:04:48');
INSERT INTO `images` VALUES ('392', '227', '227-img3-banco-de-poder-generico-remax.jpg', '3', '2017-08-14 18:04:48', '2017-08-14 18:04:48');
INSERT INTO `images` VALUES ('393', '227', '227-img5-banco-de-poder-generico-remax.jpg', '5', '2017-08-14 18:04:48', '2017-08-14 18:04:48');
INSERT INTO `images` VALUES ('394', '228', '228-img1-genius-vincha.jpg', '1', '2017-08-14 18:15:08', '2017-08-14 18:15:08');
INSERT INTO `images` VALUES ('395', '229', '229-img1-alcatel-pixi-3-4009a.jpg', '1', '2017-08-21 14:43:30', '2017-08-21 14:43:30');
INSERT INTO `images` VALUES ('396', '230', '230-img1-motorola-moto-c.jpg', '1', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `images` VALUES ('397', '231', '231-img1-huawei-y5-lite-2017.png', '1', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `images` VALUES ('398', '232', '232-img1-apple-iphone-7-plus-red.jpg', '1', '2017-08-21 15:07:26', '2017-08-21 15:07:26');
INSERT INTO `images` VALUES ('399', '233', '233-img1-samsung-j7-neo.jpg', '1', '2017-08-21 15:20:39', '2017-08-21 15:20:39');
INSERT INTO `images` VALUES ('400', '234', '234-img1-sujetador-para-vehiculo-universal-para-telefono-movil.jpg', '1', '2017-11-16 10:02:21', '2017-11-16 10:02:21');
INSERT INTO `images` VALUES ('401', '234', '234-img2-sujetador-para-vehiculo-universal-para-telefono-movil.jpg', '2', '2017-11-16 10:02:23', '2017-11-16 10:02:23');
INSERT INTO `images` VALUES ('402', '234', '234-img3-sujetador-para-vehiculo-universal-para-telefono-movil.jpg', '3', '2017-11-16 10:02:23', '2017-11-16 10:02:23');
INSERT INTO `images` VALUES ('403', '235', '235-img1-huawei-y7-prime-dorado-32gb-dual-sim.jpg', '1', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `images` VALUES ('404', '235', '235-img2-huawei-y7-prime-dorado-32gb-dual-sim.jpg', '2', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `images` VALUES ('405', '236', '236-img1-huawei-y5-ii-blanco.jpg', '1', '2017-11-16 11:09:45', '2017-11-16 11:09:45');
INSERT INTO `images` VALUES ('406', '236', '236-img2-huawei-y5-ii-blanco.jpg', '2', '2017-11-16 11:09:45', '2017-11-16 11:09:45');
INSERT INTO `images` VALUES ('407', '237', '237-img1-huawei-y5-lite-dorado-dual-sim.png', '1', '2017-11-16 11:23:45', '2017-11-16 11:23:45');
INSERT INTO `images` VALUES ('408', '237', '237-img2-huawei-y5-lite-dorado-dual-sim.jpg', '2', '2017-11-16 11:23:46', '2017-11-16 11:23:46');
INSERT INTO `images` VALUES ('409', '237', '237-img3-huawei-y5-lite-dorado-dual-sim.jpg', '3', '2017-11-16 11:23:46', '2017-11-16 11:23:46');
INSERT INTO `images` VALUES ('410', '238', '238-img1-samsung-galaxy-j5-6-dorado-16gb.jpg', '1', '2017-11-16 11:40:30', '2017-11-16 11:40:30');
INSERT INTO `images` VALUES ('411', '238', '238-img2-samsung-galaxy-j5-6-dorado-16gb.jpg', '2', '2017-11-16 11:40:30', '2017-11-16 11:40:30');
INSERT INTO `images` VALUES ('412', '239', '239-img1-samsung-galaxy-j5-prime-dorado-16-gb.jpg', '1', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `images` VALUES ('413', '239', '239-img2-samsung-galaxy-j5-prime-dorado-16-gb.jpg', '2', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `images` VALUES ('414', '239', '239-img3-samsung-galaxy-j5-prime-dorado-16-gb.jpg', '3', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `images` VALUES ('415', '240', '240-img1-samsung-galaxy-j7-prime-negro-16gb.jpg', '1', '2017-11-16 12:34:05', '2017-11-16 12:34:05');
INSERT INTO `images` VALUES ('416', '240', '240-img2-samsung-galaxy-j7-prime-negro-16gb.jpg', '2', '2017-11-16 12:34:06', '2017-11-16 12:34:06');
INSERT INTO `images` VALUES ('417', '241', '241-img1-samsung-galaxy-j5-pro-dorado-16gb.jpg', '1', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `images` VALUES ('418', '241', '241-img2-samsung-galaxy-j5-pro-dorado-16gb.jpg', '2', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `images` VALUES ('419', '242', '242-img1-lg-risio-2-plateado.jpg', '1', '2017-11-16 13:01:24', '2017-11-16 13:01:24');
INSERT INTO `images` VALUES ('420', '242', '242-img2-lg-risio-2-plateado.jpg', '2', '2017-11-16 13:01:24', '2017-11-16 13:01:24');
INSERT INTO `images` VALUES ('421', '243', '243-img1-alcatel-pixi-4-theatre-dal-n3004.jpg', '1', '2017-11-16 13:15:49', '2017-11-16 13:15:49');
INSERT INTO `images` VALUES ('422', '243', '243-img2-alcatel-pixi-4-theatre-dal-n3004.jpeg', '2', '2017-11-16 13:15:49', '2017-11-16 13:15:49');
INSERT INTO `images` VALUES ('423', '243', '243-img3-alcatel-pixi-4-theatre-dal-n3004.jpg', '3', '2017-11-16 13:15:51', '2017-11-16 13:15:51');
INSERT INTO `images` VALUES ('424', '244', '244-img1-lg-k4-negro.jpg', '1', '2017-11-16 13:31:22', '2017-11-16 13:31:22');
INSERT INTO `images` VALUES ('425', '244', '244-img2-lg-k4-negro.jpeg', '2', '2017-11-16 13:31:23', '2017-11-16 13:31:23');
INSERT INTO `images` VALUES ('426', '245', '245-img1-lg-k8-negro-6-gb.jpg', '1', '2017-11-16 14:24:40', '2017-11-16 14:24:40');
INSERT INTO `images` VALUES ('427', '245', '245-img2-lg-k8-negro-6-gb.jpg', '2', '2017-11-16 14:24:41', '2017-11-16 14:24:41');
INSERT INTO `images` VALUES ('428', '246', '246-img1-samsung-galaxy-j1-6-blanco-8gb.jpg', '1', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `images` VALUES ('429', '246', '246-img2-samsung-galaxy-j1-6-blanco-8gb.jpg', '2', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `images` VALUES ('430', '247', '247-img1-alcatel-ideal-negro-8gb.jpg', '1', '2017-11-16 14:49:25', '2017-11-16 14:49:25');
INSERT INTO `images` VALUES ('431', '247', '247-img2-alcatel-ideal-negro-8gb.jpg', '2', '2017-11-16 14:49:25', '2017-11-16 14:49:25');
INSERT INTO `images` VALUES ('432', '248', '248-img1-moto-c-plus-dorado-16gb.jpeg', '1', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `images` VALUES ('433', '248', '248-img2-moto-c-plus-dorado-16gb.jpg', '2', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `images` VALUES ('434', '249', '249-img1-moto-g4-negro-16gb-dual-sim.jpg', '1', '2017-11-16 15:28:11', '2017-11-16 15:28:11');
INSERT INTO `images` VALUES ('435', '249', '249-img2-moto-g4-negro-16gb-dual-sim.jpg', '2', '2017-11-16 15:28:12', '2017-11-16 15:28:12');
INSERT INTO `images` VALUES ('436', '250', '250-img1-caterpillar-negro.jpg', '1', '2017-11-16 15:42:42', '2017-11-16 15:42:42');
INSERT INTO `images` VALUES ('437', '250', '250-img2-caterpillar-negro.jpg', '2', '2017-11-16 15:42:43', '2017-11-16 15:42:43');
INSERT INTO `images` VALUES ('438', '251', '251-img1-moto-c-negro-8-gb.jpg', '1', '2017-11-16 16:00:17', '2017-11-16 16:00:17');
INSERT INTO `images` VALUES ('439', '251', '251-img2-moto-c-negro-8-gb.jpg', '2', '2017-11-16 16:00:18', '2017-11-16 16:00:18');
INSERT INTO `images` VALUES ('440', '251', '251-img3-moto-c-negro-8-gb.jpg', '3', '2017-11-16 16:00:18', '2017-11-16 16:00:18');
INSERT INTO `images` VALUES ('441', '252', '252-img1-celular-quick-tekia.jpg', '1', '2017-11-16 16:21:02', '2017-11-16 16:21:02');
INSERT INTO `images` VALUES ('442', '253', '253-img1-mc-mobile-mini-dual-sim.jpg', '1', '2017-11-16 16:30:21', '2017-11-16 16:30:21');
INSERT INTO `images` VALUES ('443', '253', '253-img2-mc-mobile-mini-dual-sim.jpg', '2', '2017-11-16 16:30:21', '2017-11-16 16:30:21');
INSERT INTO `images` VALUES ('444', '254', '254-img1-alcatel-onetouch-negro.jpg', '1', '2017-11-16 16:41:06', '2017-11-16 16:41:06');
INSERT INTO `images` VALUES ('445', '254', '254-img2-alcatel-onetouch-negro.jpg', '2', '2017-11-16 16:41:06', '2017-11-16 16:41:06');
INSERT INTO `images` VALUES ('446', '255', '255-img1-azumi-negro.png', '1', '2017-11-16 16:57:12', '2017-11-16 16:57:12');
INSERT INTO `images` VALUES ('447', '255', '255-img2-azumi-negro.jpg', '2', '2017-11-16 16:57:12', '2017-11-16 16:57:12');
INSERT INTO `images` VALUES ('448', '255', '255-img3-azumi-negro.jpg', '3', '2017-11-16 16:57:13', '2017-11-16 16:57:13');
INSERT INTO `images` VALUES ('449', '256', '256-img1-sky-fuego-50.jpg', '1', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `images` VALUES ('450', '256', '256-img2-sky-fuego-50.jpg', '2', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `images` VALUES ('451', '256', '256-img3-sky-fuego-50.jpg', '3', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `images` VALUES ('452', '257', '257-img1-sky-elite-60l-gris-8gb.jpg', '1', '2017-11-16 17:21:05', '2017-11-16 17:21:05');
INSERT INTO `images` VALUES ('453', '257', '257-img2-sky-elite-60l-gris-8gb.jpg', '2', '2017-11-16 17:21:05', '2017-11-16 17:21:05');
INSERT INTO `images` VALUES ('454', '258', '258-img1-sky-elite-60l-plateado-8gb.jpg', '1', '2017-11-16 17:23:13', '2017-11-16 17:23:13');
INSERT INTO `images` VALUES ('455', '258', '258-img2-sky-elite-60l-plateado-8gb.jpg', '2', '2017-11-16 17:23:13', '2017-11-16 17:23:13');
INSERT INTO `images` VALUES ('456', '259', '259-img1-sky-desvice-55c-blaco.jpg', '1', '2017-11-16 17:34:56', '2017-11-16 17:34:56');
INSERT INTO `images` VALUES ('457', '259', '259-img2-sky-desvice-55c-blaco.jpg', '2', '2017-11-16 17:34:56', '2017-11-16 17:34:56');
INSERT INTO `images` VALUES ('458', '259', '259-img3-sky-desvice-55c-blaco.jpg', '3', '2017-11-16 17:34:57', '2017-11-16 17:34:57');
INSERT INTO `images` VALUES ('459', '260', '260-img1-sky-platinum-55c-negro.jpg', '1', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `images` VALUES ('460', '260', '260-img2-sky-platinum-55c-negro.jpg', '2', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `images` VALUES ('461', '260', '260-img3-sky-platinum-55c-negro.jpg', '3', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `images` VALUES ('462', '261', '261-img1-sky-platinum-50w.jpg', '1', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `images` VALUES ('463', '261', '261-img2-sky-platinum-50w.jpg', '2', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `images` VALUES ('464', '261', '261-img3-sky-platinum-50w.png', '3', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `images` VALUES ('465', '262', '262-img1-sky-platinum-50w-gris.jpg', '1', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `images` VALUES ('466', '262', '262-img2-sky-platinum-50w-gris.jpg', '2', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `images` VALUES ('467', '262', '262-img3-sky-platinum-50w-gris.jpg', '3', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `images` VALUES ('469', '264', '264-img1-sky-fuego-50-blanco.jpg', '1', '2017-11-16 18:05:11', '2017-11-16 18:05:11');
INSERT INTO `images` VALUES ('470', '264', '264-img2-sky-fuego-50-blanco.jpg', '2', '2017-11-16 18:05:11', '2017-11-16 18:05:11');
INSERT INTO `images` VALUES ('472', '265', '265-img1-sky-platium-40-blanco.jpg', '1', '2017-11-16 18:13:14', '2017-11-16 18:13:14');
INSERT INTO `images` VALUES ('473', '265', '265-img2-sky-platium-40-blanco.png', '2', '2017-11-16 18:13:14', '2017-11-16 18:13:14');
INSERT INTO `images` VALUES ('474', '266', '266-img1-sky-platium-40-rosado.jpg', '1', '2017-11-16 18:15:26', '2017-11-16 18:15:26');
INSERT INTO `images` VALUES ('475', '266', '266-img2-sky-platium-40-rosado.jpg', '2', '2017-11-16 18:15:26', '2017-11-16 18:15:26');
INSERT INTO `images` VALUES ('476', '267', '267-img1-xbox-360-negro-mas-xb-3028.jpg', '1', '2017-11-17 08:33:43', '2017-11-17 08:33:43');
INSERT INTO `images` VALUES ('477', '267', '267-img2-xbox-360-negro-mas-xb-3028.jpg', '2', '2017-11-17 08:33:43', '2017-11-17 08:33:43');
INSERT INTO `images` VALUES ('478', '267', '267-img3-xbox-360-negro-mas-xb-3028.jpg', '3', '2017-11-17 08:33:44', '2017-11-17 08:33:44');
INSERT INTO `images` VALUES ('479', '268', '268-img1-sony-play-station-3.png', '1', '2017-11-17 09:15:24', '2017-11-17 09:15:24');
INSERT INTO `images` VALUES ('480', '268', '268-img2-sony-play-station-3.jpg', '2', '2017-11-17 09:15:24', '2017-11-17 09:15:24');
INSERT INTO `images` VALUES ('481', '269', '269-img1-sony-psp-300.png', '1', '2017-11-17 09:24:35', '2017-11-17 09:24:35');
INSERT INTO `images` VALUES ('482', '270', '270-img1-control-xbox-one.jpg', '1', '2017-11-17 09:40:46', '2017-11-17 09:40:46');
INSERT INTO `images` VALUES ('483', '270', '270-img2-control-xbox-one.jpg', '2', '2017-11-17 09:40:47', '2017-11-17 09:40:47');
INSERT INTO `images` VALUES ('484', '271', '271-img1-control-dual-sock-3.jpg', '1', '2017-11-17 09:47:55', '2017-11-17 09:47:55');
INSERT INTO `images` VALUES ('485', '271', '271-img2-control-dual-sock-3.jpg', '2', '2017-11-17 09:47:55', '2017-11-17 09:47:55');
INSERT INTO `images` VALUES ('486', '272', '272-img1-control-playstation-3-blanco.jpg', '1', '2017-11-17 09:51:10', '2017-11-17 09:51:10');
INSERT INTO `images` VALUES ('487', '272', '272-img2-control-playstation-3-blanco.png', '2', '2017-11-17 09:51:10', '2017-11-17 09:51:10');
INSERT INTO `images` VALUES ('488', '273', '273-img1-control-dual-shock-ps4.png', '1', '2017-11-17 09:55:37', '2017-11-17 09:55:37');
INSERT INTO `images` VALUES ('489', '273', '273-img2-control-dual-shock-ps4.jpg', '2', '2017-11-17 09:55:37', '2017-11-17 09:55:37');
INSERT INTO `images` VALUES ('490', '274', '274-img1-audio-portable-negro.jpg', '1', '2017-11-17 10:05:56', '2017-11-17 10:05:56');
INSERT INTO `images` VALUES ('491', '275', '275-img1-parlante-pequeno-negro.jpg', '1', '2017-11-17 10:22:55', '2017-11-17 10:22:55');
INSERT INTO `images` VALUES ('492', '276', '276-img1-generico-parlante.jpg', '1', '2017-11-17 10:28:42', '2017-11-17 10:28:42');
INSERT INTO `images` VALUES ('493', '277', '277-img1-parlante-wster-gris.jpg', '1', '2017-11-17 10:38:21', '2017-11-17 10:38:21');
INSERT INTO `images` VALUES ('494', '278', '278-img1-parlante-music-negro.jpg', '1', '2017-11-17 10:44:14', '2017-11-17 10:44:14');
INSERT INTO `images` VALUES ('495', '279', '279-img1-xbox-one-negro.jpg', '1', '2017-11-17 10:48:41', '2017-11-17 10:48:41');
INSERT INTO `images` VALUES ('496', '279', '279-img2-xbox-one-negro.jpg', '2', '2017-11-17 10:48:42', '2017-11-17 10:48:42');
INSERT INTO `images` VALUES ('497', '279', '279-img3-xbox-one-negro.jpg', '3', '2017-11-17 10:48:42', '2017-11-17 10:48:42');
INSERT INTO `images` VALUES ('498', '280', '280-img1-play-station-4-negro-incluye-3-juegos.png', '1', '2017-11-17 10:59:12', '2017-11-17 10:59:12');
INSERT INTO `images` VALUES ('499', '280', '280-img2-play-station-4-negro-incluye-3-juegos.jpg', '2', '2017-11-17 10:59:13', '2017-11-17 10:59:13');
INSERT INTO `images` VALUES ('500', '281', '281-img1-parlantes-mini-21-negro-con-rojo.jpg', '1', '2017-11-17 11:08:14', '2017-11-17 11:08:14');
INSERT INTO `images` VALUES ('501', '282', '282-img1-parlantes-s5-max-negro.jpg', '1', '2017-11-17 11:13:29', '2017-11-17 11:13:29');
INSERT INTO `images` VALUES ('502', '283', '283-img1-parlante-x-bass-negro.jpg', '1', '2017-11-17 11:20:32', '2017-11-17 11:20:32');
INSERT INTO `images` VALUES ('503', '283', '283-img2-parlante-x-bass-negro.jpg', '2', '2017-11-17 11:20:32', '2017-11-17 11:20:32');
INSERT INTO `images` VALUES ('504', '284', '284-img1-parlante-movil-azul.jpg', '1', '2017-11-17 11:24:26', '2017-11-17 11:24:26');
INSERT INTO `images` VALUES ('505', '284', '284-img2-parlante-movil-azul.jpg', '2', '2017-11-17 11:24:26', '2017-11-17 11:24:26');
INSERT INTO `images` VALUES ('506', '285', '285-img1-parlante-multicolores-recargable.png', '1', '2017-11-17 11:31:24', '2017-11-17 11:31:24');
INSERT INTO `images` VALUES ('507', '286', '286-img1-juego-de-parlantes-negro.jpg', '1', '2017-11-17 11:36:03', '2017-11-17 11:36:03');
INSERT INTO `images` VALUES ('508', '287', '287-img1-parlante-ibastek-negro.png', '1', '2017-11-17 11:42:33', '2017-11-17 11:42:33');
INSERT INTO `images` VALUES ('509', '288', '288-img1-tablets-touch-negra.jpg', '1', '2017-11-17 12:29:10', '2017-11-17 12:29:10');
INSERT INTO `images` VALUES ('510', '288', '288-img2-tablets-touch-negra.png', '2', '2017-11-17 12:29:10', '2017-11-17 12:29:10');
INSERT INTO `images` VALUES ('511', '289', '289-img1-tablest-ctech-blanca.jpg', '1', '2017-11-17 12:33:37', '2017-11-17 12:33:37');
INSERT INTO `images` VALUES ('512', '290', '290-img1-impresora-epson-l380-negro.jpg', '1', '2017-11-17 14:03:13', '2017-11-17 14:03:13');
INSERT INTO `images` VALUES ('513', '291', '291-img1-impresora-epson-l395.jpg', '1', '2017-11-17 14:07:40', '2017-11-17 14:07:40');
INSERT INTO `images` VALUES ('514', '291', '291-img2-impresora-epson-l395.png', '2', '2017-11-17 14:07:40', '2017-11-17 14:07:40');
INSERT INTO `images` VALUES ('515', '292', '292-img1-ventilador-portatil-nego.jpg', '1', '2017-11-17 14:18:25', '2017-11-17 14:18:25');
INSERT INTO `images` VALUES ('516', '292', '292-img2-ventilador-portatil-nego.jpg', '2', '2017-11-17 14:18:25', '2017-11-17 14:18:25');
INSERT INTO `images` VALUES ('517', '293', '293-img1-generico-mapamundo.jpg', '1', '2017-11-17 14:27:59', '2017-11-17 14:27:59');
INSERT INTO `images` VALUES ('518', '293', '293-img2-generico-mapamundo.jpg', '2', '2017-11-17 14:27:59', '2017-11-17 14:27:59');
INSERT INTO `images` VALUES ('519', '294', '294-img1-teclado-genius-negro-mas-mouses.jpg', '1', '2017-11-17 14:37:03', '2017-11-17 14:37:03');
INSERT INTO `images` VALUES ('520', '295', '295-img1-teclado-negro-con-azul-mas-mouses.jpg', '1', '2017-11-17 14:44:47', '2017-11-17 14:44:47');
INSERT INTO `images` VALUES ('521', '296', '296-img1-teclado-unitec-negro-mas-mouse.jpg', '1', '2017-11-17 14:50:00', '2017-11-17 14:50:00');
INSERT INTO `images` VALUES ('522', '296', '296-img2-teclado-unitec-negro-mas-mouse.jpg', '2', '2017-11-17 14:50:00', '2017-11-17 14:50:00');
INSERT INTO `images` VALUES ('523', '297', '297-img1-mouses-k1.jpg', '1', '2017-11-17 14:54:56', '2017-11-17 14:54:56');
INSERT INTO `images` VALUES ('524', '298', '298-img1-mouse-led-negro.jpg', '1', '2017-11-17 14:59:38', '2017-11-17 14:59:38');
INSERT INTO `images` VALUES ('525', '299', '299-img1-mouse-optical-negro.jpg', '1', '2017-11-17 15:04:59', '2017-11-17 15:04:59');
INSERT INTO `images` VALUES ('526', '300', '300-img1-mouse-gaming-negro.jpg', '1', '2017-11-17 15:07:15', '2017-11-17 15:07:15');
INSERT INTO `images` VALUES ('527', '301', '301-img1-genius-mouse.jpg', '1', '2017-11-17 15:13:08', '2017-11-17 15:13:08');
INSERT INTO `images` VALUES ('528', '301', '301-img2-genius-mouse.jpg', '2', '2017-11-17 15:13:08', '2017-11-17 15:13:08');
INSERT INTO `images` VALUES ('529', '302', '302-img1-generico-camara-web.jpg', '1', '2017-11-17 15:21:13', '2017-11-17 15:21:13');
INSERT INTO `images` VALUES ('530', '303', '303-img1-ventilador-portatil-negro.jpg', '1', '2017-11-17 15:27:47', '2017-11-17 15:27:47');
INSERT INTO `images` VALUES ('531', '304', '304-img1-ventilador-portatil-negro-con-blanco.png', '1', '2017-11-17 15:31:10', '2017-11-17 15:31:10');
INSERT INTO `images` VALUES ('532', '305', '305-img1-parlante-169bt.jpg', '1', '2017-11-17 16:06:13', '2017-11-17 16:06:13');
INSERT INTO `images` VALUES ('533', '306', '306-img1-auricular-g6-gaming-negro-con-azul.jpg', '1', '2017-11-17 16:13:22', '2017-11-17 16:13:22');
INSERT INTO `images` VALUES ('534', '307', '307-img1-cargador-portatil-blanco.jpg', '1', '2017-11-17 16:35:16', '2017-11-17 16:35:16');
INSERT INTO `images` VALUES ('535', '308', '308-img1-cargador-portatil-fucsia.jpg', '1', '2017-11-17 16:39:27', '2017-11-17 16:39:27');
INSERT INTO `images` VALUES ('536', '309', '309-img1-cargador-portatil-superalloy.jpg', '1', '2017-11-17 16:43:31', '2017-11-17 16:43:31');
INSERT INTO `images` VALUES ('537', '310', '310-img1-cargador-portatil-muse-rpp-34.jpg', '1', '2017-11-17 16:53:28', '2017-11-17 16:53:28');
INSERT INTO `images` VALUES ('538', '311', '311-img1-cargador-portatil-rlp-16.jpg', '1', '2017-11-17 16:56:41', '2017-11-17 16:56:41');
INSERT INTO `images` VALUES ('539', '312', '312-img1-remax-cargador-portatil-20000mah.jpg', '1', '2017-11-17 17:02:23', '2017-11-17 17:02:23');
INSERT INTO `images` VALUES ('540', '313', '313-img1-camara-para-vehiculo.png', '1', '2017-11-17 17:10:12', '2017-11-17 17:10:12');
INSERT INTO `images` VALUES ('541', '314', '314-img1-cargador-para-carro.jpg', '1', '2017-11-17 17:16:42', '2017-11-17 17:16:42');
INSERT INTO `images` VALUES ('542', '315', '315-img1-memoria-usb-32gb.jpg', '1', '2017-11-17 17:27:02', '2017-11-17 17:27:02');
INSERT INTO `images` VALUES ('543', '316', '316-img1-memoria-usb-4gb.jpg', '1', '2017-11-17 17:31:36', '2017-11-17 17:31:36');
INSERT INTO `images` VALUES ('544', '317', '317-img1-micro-sd-4gb.jpg', '1', '2017-11-17 17:35:28', '2017-11-17 17:35:28');
INSERT INTO `images` VALUES ('545', '318', '318-img1-memoria-usb-16gb.jpg', '1', '2017-11-17 17:39:55', '2017-11-17 17:39:55');
INSERT INTO `images` VALUES ('546', '319', '319-img1-control-xbox-360.png', '1', '2017-11-17 17:48:22', '2017-11-17 17:48:22');
INSERT INTO `images` VALUES ('547', '319', '319-img2-control-xbox-360.jpg', '2', '2017-11-17 17:48:24', '2017-11-17 17:48:24');
INSERT INTO `images` VALUES ('548', '320', '320-img1-guaya-para-computador-mst.jpg', '1', '2017-11-17 18:00:47', '2017-11-17 18:00:47');
INSERT INTO `images` VALUES ('549', '321', '321-img1-cable-hdmi-1x2-negro.jpg', '1', '2017-11-17 18:07:59', '2017-11-17 18:07:59');
INSERT INTO `images` VALUES ('550', '322', '322-img1-cable-iph7-adap.jpg', '1', '2017-11-17 18:15:17', '2017-11-17 18:15:17');
INSERT INTO `images` VALUES ('551', '323', '323-img1-cargador-led-2en1.jpg', '1', '2017-11-18 10:04:28', '2017-11-18 10:04:28');
INSERT INTO `images` VALUES ('552', '324', '324-img1-cargador-huawei-blanco.jpg', '1', '2017-11-18 10:11:27', '2017-11-18 10:11:27');
INSERT INTO `images` VALUES ('553', '325', '325-img1-cargador-de-celular.jpg', '1', '2017-11-18 10:15:16', '2017-11-18 10:15:16');
INSERT INTO `images` VALUES ('554', '326', '326-img1-cable-vga-15cms.jpg', '1', '2017-11-18 10:20:28', '2017-11-18 10:20:28');
INSERT INTO `images` VALUES ('555', '326', '326-img2-cable-vga-15cms.jpg', '2', '2017-11-18 10:20:28', '2017-11-18 10:20:28');
INSERT INTO `images` VALUES ('556', '327', '327-img1-cable-cbl-usbex.jpg', '1', '2017-11-18 10:27:13', '2017-11-18 10:27:13');
INSERT INTO `images` VALUES ('557', '327', '327-img2-cable-cbl-usbex.jpg', '2', '2017-11-18 10:27:13', '2017-11-18 10:27:13');
INSERT INTO `images` VALUES ('558', '328', '328-img1-cable-v8-lazo.jpeg', '1', '2017-11-18 10:35:42', '2017-11-18 10:35:42');
INSERT INTO `images` VALUES ('559', '329', '329-img1-cable-hdmi-3mt.jpg', '1', '2017-11-18 10:40:13', '2017-11-18 10:40:13');
INSERT INTO `images` VALUES ('560', '329', '329-img2-cable-hdmi-3mt.jpg', '2', '2017-11-18 10:40:13', '2017-11-18 10:40:13');
INSERT INTO `images` VALUES ('561', '330', '330-img1-cable-3x3-de-15.jpeg', '1', '2017-11-18 10:44:55', '2017-11-18 10:44:55');
INSERT INTO `images` VALUES ('562', '330', '330-img2-cable-3x3-de-15.jpg', '2', '2017-11-18 10:44:55', '2017-11-18 10:44:55');
INSERT INTO `images` VALUES ('563', '331', '331-img1-generico-cable-iph-4.jpg', '1', '2017-11-18 10:57:40', '2017-11-18 10:57:40');
INSERT INTO `images` VALUES ('564', '331', '331-img2-generico-cable-iph-4.jpg', '2', '2017-11-18 10:57:40', '2017-11-18 10:57:40');
INSERT INTO `images` VALUES ('565', '332', '332-img1-cable-universal.png', '1', '2017-11-18 11:01:32', '2017-11-18 11:01:32');
INSERT INTO `images` VALUES ('566', '333', '333-img1-cable-para-iph-6.jpg', '1', '2017-11-18 11:05:19', '2017-11-18 11:05:19');
INSERT INTO `images` VALUES ('567', '333', '333-img2-cable-para-iph-6.jpg', '2', '2017-11-18 11:05:19', '2017-11-18 11:05:19');
INSERT INTO `images` VALUES ('568', '334', '334-img1-cable-para-impresora.jpg', '1', '2017-11-18 11:17:46', '2017-11-18 11:17:46');
INSERT INTO `images` VALUES ('569', '334', '334-img2-cable-para-impresora.jpg', '2', '2017-11-18 11:17:47', '2017-11-18 11:17:47');
INSERT INTO `images` VALUES ('570', '335', '335-img1-cable-rc-039w.png', '1', '2017-11-18 11:24:17', '2017-11-18 11:24:17');
INSERT INTO `images` VALUES ('571', '335', '335-img2-cable-rc-039w.jpg', '2', '2017-11-18 11:24:18', '2017-11-18 11:24:18');
INSERT INTO `images` VALUES ('572', '336', '336-img1-audifonos-samsung-blanco.png', '1', '2017-11-18 12:26:26', '2017-11-18 12:26:26');
INSERT INTO `images` VALUES ('573', '336', '336-img2-audifonos-samsung-blanco.jpg', '2', '2017-11-18 12:26:27', '2017-11-18 12:26:27');
INSERT INTO `images` VALUES ('574', '337', '337-img1-audifonos-samsung-negro.jpg', '1', '2017-11-18 12:29:55', '2017-11-18 12:29:55');
INSERT INTO `images` VALUES ('575', '337', '337-img2-audifonos-samsung-negro.jpg', '2', '2017-11-18 12:29:55', '2017-11-18 12:29:55');
INSERT INTO `images` VALUES ('576', '338', '338-img1-audifonos-iphone-blanco.jpg', '1', '2017-11-18 13:35:28', '2017-11-18 13:35:28');
INSERT INTO `images` VALUES ('577', '338', '338-img2-audifonos-iphone-blanco.jpg', '2', '2017-11-18 13:35:28', '2017-11-18 13:35:28');
INSERT INTO `images` VALUES ('578', '339', '339-img1-cable-usb-5en1.jpg', '1', '2017-11-18 13:40:11', '2017-11-18 13:40:11');
INSERT INTO `images` VALUES ('579', '340', '340-img1-modulador-fm-mp3.jpg', '1', '2017-11-18 13:50:20', '2017-11-18 13:50:20');
INSERT INTO `images` VALUES ('580', '341', '341-img1-mp4-azul-agua-marina.png', '1', '2017-11-18 14:58:16', '2017-11-18 14:58:16');
INSERT INTO `images` VALUES ('581', '341', '341-img2-mp4-azul-agua-marina.jpg', '2', '2017-11-18 14:58:16', '2017-11-18 14:58:16');
INSERT INTO `images` VALUES ('582', '342', '342-img1-mp4-rosado.jpg', '1', '2017-11-18 15:02:04', '2017-11-18 15:02:04');
INSERT INTO `images` VALUES ('583', '342', '342-img2-mp4-rosado.jpg', '2', '2017-11-18 15:02:04', '2017-11-18 15:02:04');
INSERT INTO `images` VALUES ('584', '343', '343-img1-mp4-morado.jpg', '1', '2017-11-18 15:03:01', '2017-11-18 15:03:01');
INSERT INTO `images` VALUES ('585', '343', '343-img2-mp4-morado.jpg', '2', '2017-11-18 15:03:01', '2017-11-18 15:03:01');
INSERT INTO `images` VALUES ('586', '344', '344-img1-auriculares-music-digital-negro.jpg', '1', '2017-11-18 15:13:00', '2017-11-18 15:13:00');
INSERT INTO `images` VALUES ('587', '345', '345-img1-auriculares-music-digital-verde.jpg', '1', '2017-11-18 15:14:39', '2017-11-18 15:14:39');
INSERT INTO `images` VALUES ('588', '345', '345-img2-auriculares-music-digital-verde.jpg', '2', '2017-11-18 15:14:39', '2017-11-18 15:14:39');
INSERT INTO `images` VALUES ('589', '346', '346-img1-control-pc-play-2.jpg', '1', '2017-11-18 15:32:28', '2017-11-18 15:32:28');
INSERT INTO `images` VALUES ('590', '346', '346-img2-control-pc-play-2.jpg', '2', '2017-11-18 15:32:28', '2017-11-18 15:32:28');
INSERT INTO `images` VALUES ('591', '347', '347-img1-puerto-ahorrador-de-energia.jpg', '1', '2017-11-18 15:37:10', '2017-11-18 15:37:10');
INSERT INTO `images` VALUES ('592', '348', '348-img1-puerto-pci-adapter.jpg', '1', '2017-11-18 15:40:39', '2017-11-18 15:40:39');
INSERT INTO `images` VALUES ('593', '348', '348-img2-puerto-pci-adapter.jpg', '2', '2017-11-18 15:40:39', '2017-11-18 15:40:39');
INSERT INTO `images` VALUES ('594', '349', '349-img1-puerto-inalambrico-nano-usb.jpg', '1', '2017-11-18 15:46:10', '2017-11-18 15:46:10');
INSERT INTO `images` VALUES ('595', '349', '349-img2-puerto-inalambrico-nano-usb.jpg', '2', '2017-11-18 15:46:10', '2017-11-18 15:46:10');
INSERT INTO `images` VALUES ('596', '349', '349-img3-puerto-inalambrico-nano-usb.jpg', '3', '2017-11-18 15:46:10', '2017-11-18 15:46:10');
INSERT INTO `images` VALUES ('597', '350', '350-img1-soporte-tv-negra.jpg', '1', '2017-11-18 15:59:48', '2017-11-18 15:59:48');
INSERT INTO `images` VALUES ('598', '351', '351-img1-soporte-tv-negra-con-medidor.jpg', '1', '2017-11-18 16:00:53', '2017-11-18 16:00:53');
INSERT INTO `images` VALUES ('599', '352', '352-img1-soporte-tv-negra-kalley.jpg', '1', '2017-11-18 16:01:53', '2017-11-18 16:01:53');
INSERT INTO `images` VALUES ('600', '353', '353-img1-bateria-huawei-y30.jpg', '1', '2017-11-20 08:59:20', '2017-11-20 08:59:20');
INSERT INTO `images` VALUES ('601', '353', '353-img2-bateria-huawei-y30.jpg', '2', '2017-11-20 08:59:21', '2017-11-20 08:59:21');
INSERT INTO `images` VALUES ('602', '354', '354-img1-bateria-huawei-g610.jpg', '1', '2017-11-20 09:02:49', '2017-11-20 09:02:49');
INSERT INTO `images` VALUES ('603', '354', '354-img2-bateria-huawei-g610.jpg', '2', '2017-11-20 09:02:50', '2017-11-20 09:02:50');
INSERT INTO `images` VALUES ('604', '355', '355-img1-bateria-alcatel-6030.png', '1', '2017-11-20 09:05:55', '2017-11-20 09:05:55');
INSERT INTO `images` VALUES ('605', '355', '355-img2-bateria-alcatel-6030.png', '2', '2017-11-20 09:05:56', '2017-11-20 09:05:56');
INSERT INTO `images` VALUES ('606', '356', '356-img1-bateria-alcatel-ot-710.png', '1', '2017-11-20 09:09:34', '2017-11-20 09:09:34');
INSERT INTO `images` VALUES ('607', '356', '356-img2-bateria-alcatel-ot-710.jpg', '2', '2017-11-20 09:09:34', '2017-11-20 09:09:34');
INSERT INTO `images` VALUES ('608', '357', '357-img1-bateria-alcatel-pop-c1.jpg', '1', '2017-11-20 09:13:16', '2017-11-20 09:13:16');
INSERT INTO `images` VALUES ('609', '357', '357-img2-bateria-alcatel-pop-c1.jpg', '2', '2017-11-20 09:13:16', '2017-11-20 09:13:16');
INSERT INTO `images` VALUES ('610', '358', '358-img1-bateria-huawei-y5-ii.jpg', '1', '2017-11-20 09:16:05', '2017-11-20 09:16:05');
INSERT INTO `images` VALUES ('611', '358', '358-img2-bateria-huawei-y5-ii.jpg', '2', '2017-11-20 09:16:05', '2017-11-20 09:16:05');
INSERT INTO `images` VALUES ('612', '359', '359-img1-bateria-huawei-y511.jpg', '1', '2017-11-20 09:19:21', '2017-11-20 09:19:21');
INSERT INTO `images` VALUES ('613', '359', '359-img2-bateria-huawei-y511.jpg', '2', '2017-11-20 09:19:22', '2017-11-20 09:19:22');
INSERT INTO `images` VALUES ('614', '360', '360-img1-portatil-lenovo-v110-negro.jpg', '1', '2017-11-24 09:20:08', '2017-11-24 09:20:08');
INSERT INTO `images` VALUES ('615', '360', '360-img2-portatil-lenovo-v110-negro.jpg', '2', '2017-11-24 09:20:09', '2017-11-24 09:20:09');
INSERT INTO `images` VALUES ('616', '361', '361-img1-portatil-acer-aspire-es-14.jpg', '1', '2017-11-24 09:31:41', '2017-11-24 09:31:41');
INSERT INTO `images` VALUES ('617', '361', '361-img2-portatil-acer-aspire-es-14.png', '2', '2017-11-24 09:31:41', '2017-11-24 09:31:41');
INSERT INTO `images` VALUES ('618', '361', '361-img3-portatil-acer-aspire-es-14.jpg', '3', '2017-11-24 09:31:41', '2017-11-24 09:31:41');
INSERT INTO `images` VALUES ('619', '362', '362-img1-tblets-sky-platinum-70.jpg', '1', '2017-11-24 09:39:33', '2017-11-24 09:39:33');
INSERT INTO `images` VALUES ('620', '362', '362-img2-tblets-sky-platinum-70.png', '2', '2017-11-24 09:39:33', '2017-11-24 09:39:33');
INSERT INTO `images` VALUES ('621', '390', '390-img1-social-sport-ultra-azul.jpg', '1', '2017-11-30 11:39:41', '2017-11-30 11:39:41');
INSERT INTO `images` VALUES ('622', '391', '391-img1-psp-vita-sony-negro.jpeg', '1', '2017-11-30 11:39:46', '2017-11-30 11:39:46');
INSERT INTO `images` VALUES ('623', '391', '391-img2-psp-vita-sony-negro.jpg', '2', '2017-11-30 11:39:46', '2017-11-30 11:39:46');
INSERT INTO `images` VALUES ('624', '263', '263-img1-sky-fuego-50-dorado.jpg', '1', '2017-11-30 15:27:20', '2017-11-30 15:27:20');
INSERT INTO `images` VALUES ('625', '392', '392-img1-bateria-sansumg-j2-prime.jpg', '1', '2017-11-30 17:21:29', '2017-11-30 17:21:29');
INSERT INTO `images` VALUES ('626', '393', '393-img1-sony-playstation-4-version-call-of-duty.jpg', '1', '2017-12-19 10:05:45', '2017-12-19 10:05:45');
INSERT INTO `images` VALUES ('627', '393', '393-img2-sony-playstation-4-version-call-of-duty.jpg', '2', '2017-12-19 10:05:47', '2017-12-19 10:05:47');
INSERT INTO `images` VALUES ('628', '394', '394-img1-alcatel-pixi-4g.jpeg', '1', '2017-12-27 09:17:36', '2017-12-27 09:17:36');
INSERT INTO `images` VALUES ('629', '394', '394-img2-alcatel-pixi-4g.jpg', '2', '2017-12-27 09:17:36', '2017-12-27 09:17:36');

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ref_payco` varchar(255) NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `profit` int(10) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ref_payco_unique` (`ref_payco`) USING BTREE,
  KEY `in_user_fk` (`user_id`) USING BTREE,
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invoices
-- ----------------------------

-- ----------------------------
-- Table structure for invoice_products
-- ----------------------------
DROP TABLE IF EXISTS `invoice_products`;
CREATE TABLE `invoice_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `sale_price` int(10) unsigned NOT NULL,
  `purchase_price` int(10) unsigned NOT NULL,
  `discount` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `in_pro_fk` (`product_id`) USING BTREE,
  KEY `in_pro_in_fk` (`invoice_id`) USING BTREE,
  CONSTRAINT `invoice_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `invoice_products_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invoice_products
-- ----------------------------

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `log` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `log_user_fk` (`id_user`) USING BTREE,
  CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES ('2', '2', 'Producto Creado desde Archivo:  ID: 2 | EAN/UPC: 2 | Nombre: Samsung Galaxy J2 Prime  Dorado | Marca: Samsung | Referencia: J2 Prime SM-G532M | Precio de Compra: 360000  | Precio de Venta: 420000 | Cantidad: 10', '2017-02-03 22:19:16', '2017-02-03 22:19:16');
INSERT INTO `logs` VALUES ('3', '2', 'Producto Creado desde Archivo:  ID: 3 | EAN/UPC: 3 | Nombre: Samsung Galaxy J2 Prime Negro | Marca: Samsung | Referencia: J2 Prime SM-G532M | Precio de Compra: 360000  | Precio de Venta: 420000 | Cantidad: 10', '2017-02-03 22:19:19', '2017-02-03 22:19:19');
INSERT INTO `logs` VALUES ('4', '2', 'Producto Creado desde Archivo:  ID: 4 | EAN/UPC: 4 | Nombre: Samsung Galaxy J2 Prime Plateado | Marca: Samsung | Referencia: J2 Prime SM-G532M | Precio de Compra: 360000  | Precio de Venta: 420000 | Cantidad: 10', '2017-02-03 22:19:20', '2017-02-03 22:19:20');
INSERT INTO `logs` VALUES ('5', '2', 'Producto Creado desde Archivo:  ID: 5 | EAN/UPC: 5 | Nombre: Samsung Galaxy J7 Negro | Marca: Samsung | Referencia: J7 SM-J700M | Precio de Compra: 600000  | Precio de Venta: 680000 | Cantidad: 10', '2017-02-03 22:19:23', '2017-02-03 22:19:23');
INSERT INTO `logs` VALUES ('6', '2', 'Producto Creado desde Archivo:  ID: 6 | EAN/UPC: 6 | Nombre: Samsung Galaxy J7 Dorado | Marca: Samsung | Referencia: J7 SM-J700M | Precio de Compra: 600000  | Precio de Venta: 680000 | Cantidad: 10', '2017-02-03 22:19:24', '2017-02-03 22:19:24');
INSERT INTO `logs` VALUES ('7', '2', 'Producto Creado desde Archivo:  ID: 7 | EAN/UPC: 7 | Nombre: Samsung Galaxy J5 Prime Duos Dorado | Marca: Samsung | Referencia: J5 Prime Duos SM-G570M/DS | Precio de Compra: 630000  | Precio de Venta: 720000 | Cantidad: 10', '2017-02-03 22:19:27', '2017-02-03 22:19:27');
INSERT INTO `logs` VALUES ('8', '2', 'Producto Creado desde Archivo:  ID: 8 | EAN/UPC: 8 | Nombre: Samsung Galaxy J5 Prime Duos Negro  | Marca: Samsung | Referencia: J5 Prime Duos SM-G570M/DS | Precio de Compra: 630000  | Precio de Venta: 720000 | Cantidad: 10', '2017-02-03 22:19:28', '2017-02-03 22:19:28');
INSERT INTO `logs` VALUES ('9', '2', 'Producto Creado desde Archivo:  ID: 9 | EAN/UPC: 9 | Nombre: Samsung Galaxy A5 2016 Negro  | Marca: Samsung | Referencia: A5 2016 SM-A5100 | Precio de Compra: 820000  | Precio de Venta: 900000 | Cantidad: 10', '2017-02-03 22:19:29', '2017-02-03 22:19:29');
INSERT INTO `logs` VALUES ('10', '2', 'Producto Creado desde Archivo:  ID: 10 | EAN/UPC: 10 | Nombre: Samsung Galaxy A5 2016 Dorado | Marca: Samsung | Referencia: A5 2016 SM-A5100 | Precio de Compra: 820000  | Precio de Venta: 900000 | Cantidad: 10', '2017-02-03 22:19:30', '2017-02-03 22:19:30');
INSERT INTO `logs` VALUES ('11', '2', 'Producto Creado desde Archivo:  ID: 11 | EAN/UPC: 11 | Nombre: Samsung Galaxy J1 Ace Duos Negro | Marca: Samsung | Referencia: J1 Ace Duos SM-J111M/DS | Precio de Compra: 295000  | Precio de Venta: 360000 | Cantidad: 10', '2017-02-03 22:19:32', '2017-02-03 22:19:32');
INSERT INTO `logs` VALUES ('12', '2', 'Producto Creado desde Archivo:  ID: 12 | EAN/UPC: 12 | Nombre: Samsung Galaxy J1 Ace  Duos Blanco | Marca: Samsung | Referencia: J1 Ace Duos SM-J111M/DS | Precio de Compra: 295000  | Precio de Venta: 360000 | Cantidad: 10', '2017-02-03 22:21:07', '2017-02-03 22:21:07');
INSERT INTO `logs` VALUES ('13', '2', 'Producto Creado desde Archivo:  ID: 13 | EAN/UPC: 13 | Nombre: Samsung Galaxy J5 Blanco | Marca: Samsung | Referencia: J5 SM-J500M | Precio de Compra: 490000  | Precio de Venta: 550000 | Cantidad: 10', '2017-02-03 22:21:09', '2017-02-03 22:21:09');
INSERT INTO `logs` VALUES ('14', '2', 'Producto Creado:  ID: 15 | EAN/UPC: 859912006293 | Nombre: iSWAG Onyx Negro | Marca: iSWAG | Referencia: Onyx | Precio de Compra: 36000  | Precio de Venta: 60000 | Cantidad: 10', '2017-02-04 11:16:51', '2017-02-04 11:16:51');
INSERT INTO `logs` VALUES ('15', '2', 'Producto Creado:  ID: 16 | EAN/UPC: 859912006323 | Nombre: iSWAG Onyx Blanco | Marca: iSWAG | Referencia: Onyx | Precio de Compra: 36000  | Precio de Venta: 60000 | Cantidad: 10', '2017-02-04 11:20:58', '2017-02-04 11:20:58');
INSERT INTO `logs` VALUES ('16', '2', 'Producto Creado:  ID: 17 | EAN/UPC: 859912006286 | Nombre: iSWAG Onyx Gris | Marca: iSWAG | Referencia: Onyx | Precio de Compra: 36000  | Precio de Venta: 60000 | Cantidad: 10', '2017-02-04 11:24:59', '2017-02-04 11:24:59');
INSERT INTO `logs` VALUES ('17', '2', 'Producto Creado:  ID: 18 | EAN/UPC: 4897043934319 | Nombre: Verykool s5005 Azul Dual SIM | Marca: Verykool | Referencia: s5005 | Precio de Compra: 165000  | Precio de Venta: 200000 | Cantidad: 10', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `logs` VALUES ('18', '2', 'Producto Creado:  ID: 19 | EAN/UPC: 4897043934302 | Nombre: Verykool s5005 Blanco Dual SIM | Marca: Verykool | Referencia: s5005 | Precio de Compra: 165000  | Precio de Venta: 200000 | Cantidad: 10', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `logs` VALUES ('19', '2', 'Producto Creado:  ID: 20 | EAN/UPC: 15 | Nombre: LANIX Ilium X110 Negro | Marca: LANIX | Referencia: Ilium X110 | Precio de Compra: 120000  | Precio de Venta: 150000 | Cantidad: 10', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `logs` VALUES ('20', '2', 'Producto Creado:  ID: 21 | EAN/UPC: 855358006163 | Nombre: iSWAG Lynx Blanco Dual SIM | Marca: iSWAG | Referencia: Lynx | Precio de Compra: 130000  | Precio de Venta: 170000 | Cantidad: 10', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `logs` VALUES ('21', '2', 'Producto Creado:  ID: 22 | EAN/UPC: 855358006156 | Nombre: iSWAG Lynx Negro Dual SIM | Marca: iSWAG | Referencia: Lynx | Precio de Compra: 130000  | Precio de Venta: 170000 | Cantidad: 10', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `logs` VALUES ('22', '2', 'Producto Creado:  ID: 23 | EAN/UPC: 4894461263045 | Nombre: Alcatel Pixi 3 Negro | Marca: Alcatel | Referencia: Pixi 3 4009A | Precio de Compra: 130000  | Precio de Venta: 170000 | Cantidad: 10', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `logs` VALUES ('23', '2', 'Producto Creado:  ID: 24 | EAN/UPC: 6901443131136 | Nombre: Huawei ECO 4G Negro Dual SIM | Marca: Huawei | Referencia: ECO LUA-L23 | Precio de Compra: 240000  | Precio de Venta: 280000 | Cantidad: 10', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `logs` VALUES ('24', '2', 'Producto Creado:  ID: 25 | EAN/UPC: 6901443131150 | Nombre: Huawei ECO 4G Blanco Dual SIM | Marca: Huawei | Referencia: ECO LUA-L23 | Precio de Compra: 240000  | Precio de Venta: 280000 | Cantidad: 10', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `logs` VALUES ('25', '2', 'Producto Creado:  ID: 26 | EAN/UPC: 6901443084630 | Nombre: Huawei P8 Lite Dorado Dual SIM | Marca: Huawei | Referencia: P8 Lite ALE-L23 | Precio de Compra: 480000  | Precio de Venta: 550000 | Cantidad: 10', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `logs` VALUES ('26', '2', 'Producto Creado:  ID: 27 | EAN/UPC: 6901443130481 | Nombre: Huawei P9 Dorado Dual SIM | Marca: Huawei | Referencia: P9 VNS-L23 | Precio de Compra: 690000  | Precio de Venta: 750000 | Cantidad: 10', '2017-02-04 12:41:50', '2017-02-04 12:41:50');
INSERT INTO `logs` VALUES ('27', '2', 'Producto Creado:  ID: 28 | EAN/UPC: 6947681535688 | Nombre: Motorola Moto G4 Play XT1601 Negro | Marca: Motorola | Referencia: Moto G4 Play XT1601 | Precio de Compra: 430000  | Precio de Venta: 500000 | Cantidad: 10', '2017-02-04 12:53:10', '2017-02-04 12:53:10');
INSERT INTO `logs` VALUES ('28', '2', 'Producto Creado:  ID: 29 | EAN/UPC: 8806085691285 | Nombre: Samsung HS130 Audifonos & Manos Libres Verde | Marca: Samsung | Referencia: OE-HS130GEGWW | Precio de Compra: 15000  | Precio de Venta: 30000 | Cantidad: 50', '2017-02-04 13:35:41', '2017-02-04 13:35:41');
INSERT INTO `logs` VALUES ('29', '2', 'Producto Creado:  ID: 30 | EAN/UPC: 10001 | Nombre: Protector Samsung J5 Motomo Negro | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 14:14:17', '2017-02-04 14:14:17');
INSERT INTO `logs` VALUES ('30', '2', 'Producto Creado:  ID: 31 | EAN/UPC: 10001 | Nombre: Protector Samsung J5 Motomo Negro | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 14:15:35', '2017-02-04 14:15:35');
INSERT INTO `logs` VALUES ('31', '2', 'Producto Creado:  ID: 32 | EAN/UPC: 10001 | Nombre: Protector Samsung J5 Motomo Negro | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 14:28:21', '2017-02-04 14:28:21');
INSERT INTO `logs` VALUES ('32', '2', 'Producto Creado:  ID: 33 | EAN/UPC: 10002 | Nombre: Protector Samsung J5 Motomo Dorado | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 14:39:33', '2017-02-04 14:39:33');
INSERT INTO `logs` VALUES ('33', '2', 'Producto Creado:  ID: 34 | EAN/UPC: 10003 | Nombre: Protector Samsung J5 Motomo Rosado | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 14:40:37', '2017-02-04 14:40:37');
INSERT INTO `logs` VALUES ('34', '2', 'Producto Creado:  ID: 35 | EAN/UPC: 16 | Nombre: Protector Samsung J5 Motomo Fucsia | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 14:43:18', '2017-02-04 14:43:18');
INSERT INTO `logs` VALUES ('35', '2', 'Producto Creado:  ID: 36 | EAN/UPC: 10005 | Nombre: Protector Samsung J5 Motomo Blanco | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 14:45:11', '2017-02-04 14:45:11');
INSERT INTO `logs` VALUES ('36', '2', 'Producto Creado:  ID: 37 | EAN/UPC: 10008 | Nombre: Protector Samsung J5 Motomo Rosado y Negro | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 14:49:26', '2017-02-04 14:49:26');
INSERT INTO `logs` VALUES ('37', '2', 'Producto Creado:  ID: 38 | EAN/UPC: 10009 | Nombre: Protector Samsung J5 Motomo Azul | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 14:50:42', '2017-02-04 14:50:42');
INSERT INTO `logs` VALUES ('38', '2', 'Producto Creado:  ID: 39 | EAN/UPC: 10010 | Nombre: Protector Samsung J5 Motomo Negro con borde Dorado | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 14:52:14', '2017-02-04 14:52:14');
INSERT INTO `logs` VALUES ('39', '2', 'Producto Creado:  ID: 40 | EAN/UPC: 10011 | Nombre: Protector Samsung J5 VERUS Dorado | Marca: VERUS | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 14:57:38', '2017-02-04 14:57:38');
INSERT INTO `logs` VALUES ('40', '2', 'Producto Creado:  ID: 41 | EAN/UPC: 10012 | Nombre: Protector Samsung J5 INCIPIO Blanco | Marca: INCIPIO | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 15:02:08', '2017-02-04 15:02:08');
INSERT INTO `logs` VALUES ('41', '2', 'Producto Creado:  ID: 42 | EAN/UPC: 10013 | Nombre: Protector Samsung J5 INCIPIO Dorado | Marca: INCIPIO | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 15:02:56', '2017-02-04 15:02:56');
INSERT INTO `logs` VALUES ('42', '2', 'Producto Creado:  ID: 43 | EAN/UPC: 10014 | Nombre: Protector Samsung J5 INCIPIO Rojo | Marca: INCIPIO | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 15:03:46', '2017-02-04 15:03:46');
INSERT INTO `logs` VALUES ('43', '2', 'Producto Creado:  ID: 44 | EAN/UPC: 10015 | Nombre: Protector Samsung J5 INCIPIO Azul | Marca: INCIPIO | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 15:04:38', '2017-02-04 15:04:38');
INSERT INTO `logs` VALUES ('44', '2', 'Producto Creado:  ID: 45 | EAN/UPC: 10016 | Nombre: Protector Samsung J5 INCIPIO Verde | Marca: INCIPIO | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 15:05:37', '2017-02-04 15:05:37');
INSERT INTO `logs` VALUES ('45', '2', 'Producto Creado:  ID: 46 | EAN/UPC: 10017 | Nombre: Protector Samsung J5 INCIPIO Negro | Marca: INCIPIO | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 15:06:21', '2017-02-04 15:06:21');
INSERT INTO `logs` VALUES ('46', '2', 'Producto Creado:  ID: 47 | EAN/UPC: 10018 | Nombre: Protector Samsung J5 Flores Margaritas Naturales | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 15:14:59', '2017-02-04 15:14:59');
INSERT INTO `logs` VALUES ('47', '2', 'Producto Creado:  ID: 48 | EAN/UPC: 10019 | Nombre: Protector Samsung J5 Flores Violetas Naturales | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 15:17:03', '2017-02-04 15:17:03');
INSERT INTO `logs` VALUES ('48', '2', 'Producto Creado:  ID: 49 | EAN/UPC: 10020 | Nombre: Protector Samsung J5 Transparente | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 15:18:18', '2017-02-04 15:18:18');
INSERT INTO `logs` VALUES ('49', '2', 'Producto Creado:  ID: 50 | EAN/UPC: 10021 | Nombre: Protector Samsung J5 Corazones Only You | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-02-04 15:22:10', '2017-02-04 15:22:10');
INSERT INTO `logs` VALUES ('50', '2', 'Producto Creado:  ID: 51 | EAN/UPC: 10022 | Nombre: Protector Samsung J5 Dorado | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 6000  | Precio de Venta: 15000 | Cantidad: 10', '2017-02-04 15:25:16', '2017-02-04 15:25:16');
INSERT INTO `logs` VALUES ('51', '2', 'Producto Creado:  ID: 52 | EAN/UPC: 10023 | Nombre: Protector Samsung J5 Heroes Superman | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-02-04 15:29:22', '2017-02-04 15:29:22');
INSERT INTO `logs` VALUES ('52', '2', 'Producto Creado:  ID: 53 | EAN/UPC: 10024 | Nombre: Protector Samsung J5 Heroes Spiderman | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-02-04 15:42:47', '2017-02-04 15:42:47');
INSERT INTO `logs` VALUES ('53', '2', 'Producto Creado:  ID: 54 | EAN/UPC: 10025 | Nombre: Protector Samsung J5 Basketball | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-02-04 15:44:09', '2017-02-04 15:44:09');
INSERT INTO `logs` VALUES ('54', '2', 'Producto Creado:  ID: 55 | EAN/UPC: 10026 | Nombre: Protector Samsung J5 Real Madrid | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-02-04 15:46:02', '2017-02-04 15:46:02');
INSERT INTO `logs` VALUES ('55', '2', 'Producto Creado:  ID: 56 | EAN/UPC: 10027 | Nombre: Protector Samsung J5 Barcelona | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-02-04 15:47:28', '2017-02-04 15:47:28');
INSERT INTO `logs` VALUES ('56', '2', 'Producto Creado:  ID: 57 | EAN/UPC: 10028 | Nombre: Protector Samsung J5 Atletico Medellin | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-02-04 15:53:32', '2017-02-04 15:53:32');
INSERT INTO `logs` VALUES ('57', '2', 'Producto Creado:  ID: 58 | EAN/UPC: 10029 | Nombre: Protector Samsung J5 Negro Lineas de Colores | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-02-04 15:58:26', '2017-02-04 15:58:26');
INSERT INTO `logs` VALUES ('58', '2', 'Producto Creado:  ID: 59 | EAN/UPC: 10030 | Nombre: Protector Samsung J5 Motomo Silicona Verde | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-02-04 16:02:49', '2017-02-04 16:02:49');
INSERT INTO `logs` VALUES ('59', '2', 'Producto Creado:  ID: 60 | EAN/UPC: 10031 | Nombre: Protector Samsung J5 Motomo Silicona Rosado | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-02-04 16:03:34', '2017-02-04 16:03:34');
INSERT INTO `logs` VALUES ('60', '2', 'Producto Creado:  ID: 61 | EAN/UPC: 10032 | Nombre: Protector Samsung J5 Gorila | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-02-04 16:05:51', '2017-02-04 16:05:51');
INSERT INTO `logs` VALUES ('61', '2', 'Producto Creado:  ID: 62 | EAN/UPC: 10033 | Nombre: Protector Samsung J5 Gatos | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-02-04 16:09:35', '2017-02-04 16:09:35');
INSERT INTO `logs` VALUES ('62', '2', 'Producto Creado desde Archivo:  ID: 63 | EAN/UPC: 6947681526952 | Nombre: Moto X Play XT1563  Negro | Marca: Motorola | Referencia: XT1563  | Precio de Compra: 800000  | Precio de Venta: 860000 | Cantidad: 1', '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `logs` VALUES ('63', '2', 'Producto Creado desde Archivo:  ID: 64 | EAN/UPC: 6947681532205 | Nombre: Moto G4 XT1621 Negro | Marca: Motorola | Referencia: XT1621 | Precio de Compra: 620000  | Precio de Venta: 680000 | Cantidad: 1', '2017-02-05 01:39:09', '2017-02-05 01:39:09');
INSERT INTO `logs` VALUES ('64', '2', 'Producto Creado desde Archivo:  ID: 65 | EAN/UPC: 8806088567167 | Nombre: Samsung Galaxy J2 Prime Dorado | Marca: Samsung | Referencia: J2 Prime SM-G532M | Precio de Compra: 360000  | Precio de Venta: 420000 | Cantidad: 10', '2017-02-05 01:39:26', '2017-02-05 01:39:26');
INSERT INTO `logs` VALUES ('65', '2', 'Producto Creado desde Archivo:  ID: 66 | EAN/UPC: 8806088554280 | Nombre: Samsung Galaxy J2 Prime Negro | Marca: Samsung | Referencia: J2 Prime SM-G532M | Precio de Compra: 360000  | Precio de Venta: 420000 | Cantidad: 10', '2017-02-05 01:39:27', '2017-02-05 01:39:27');
INSERT INTO `logs` VALUES ('66', '2', 'Producto Creado desde Archivo:  ID: 67 | EAN/UPC: 8806088566849 | Nombre: Samsung Galaxy J2 Prime Gris | Marca: Samsung | Referencia: J2 Prime SM-G532M | Precio de Compra: 360000  | Precio de Venta: 420000 | Cantidad: 10', '2017-02-05 01:39:29', '2017-02-05 01:39:29');
INSERT INTO `logs` VALUES ('67', '2', 'Producto Creado desde Archivo:  ID: 68 | EAN/UPC: 8806086862950 | Nombre: Samsung Galaxy J7 Negro | Marca: Samsung | Referencia: J7 SM-J700M | Precio de Compra: 600000  | Precio de Venta: 680000 | Cantidad: 10', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `logs` VALUES ('68', '2', 'Producto Creado desde Archivo:  ID: 69 | EAN/UPC: 8806086830157 | Nombre: Samsung Galaxy J7 Dorado | Marca: Samsung | Referencia: J7 SM-J700M | Precio de Compra: 600000  | Precio de Venta: 680000 | Cantidad: 10', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `logs` VALUES ('69', '2', 'Producto Creado desde Archivo:  ID: 70 | EAN/UPC: 8806088579542 | Nombre: Samsung Galaxy J5 Prime Duos Dorado | Marca: Samsung | Referencia: J5 Prime Duos SM-G570M/DS | Precio de Compra: 630000  | Precio de Venta: 720000 | Cantidad: 10', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `logs` VALUES ('70', '2', 'Producto Creado desde Archivo:  ID: 71 | EAN/UPC: 8806088579566 | Nombre: Samsung Galaxy J5 Prime Duos Negro  | Marca: Samsung | Referencia: J5 Prime Duos SM-G570M/DS | Precio de Compra: 630000  | Precio de Venta: 720000 | Cantidad: 10', '2017-02-05 01:45:19', '2017-02-05 01:45:19');
INSERT INTO `logs` VALUES ('71', '2', 'Producto Creado desde Archivo:  ID: 72 | EAN/UPC: 6922309822692 | Nombre: Samsung Galaxy A5 2016 Negro  | Marca: Samsung | Referencia: A5 2016 SM-A5100 | Precio de Compra: 820000  | Precio de Venta: 900000 | Cantidad: 10', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `logs` VALUES ('72', '2', 'Producto Creado desde Archivo:  ID: 73 | EAN/UPC: 6922309822098 | Nombre: Samsung Galaxy A5 2016 Dorado | Marca: Samsung | Referencia: A5 2016 SM-A5100 | Precio de Compra: 820000  | Precio de Venta: 900000 | Cantidad: 10', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `logs` VALUES ('73', '2', 'Producto Creado desde Archivo:  ID: 74 | EAN/UPC: 8806088241692 | Nombre: Samsung Galaxy J1 Ace Duos Negro | Marca: Samsung | Referencia: J1 Ace SM-J111M/DS | Precio de Compra: 295000  | Precio de Venta: 360000 | Cantidad: 10', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `logs` VALUES ('74', '2', 'Producto Creado desde Archivo:  ID: 75 | EAN/UPC: 8806088241890 | Nombre: Samsung Galaxy J1 Ace  Duos Blanco | Marca: Samsung | Referencia: J1 Ace SM-J111M/DS | Precio de Compra: 295000  | Precio de Venta: 360000 | Cantidad: 10', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `logs` VALUES ('75', '2', 'Producto Creado desde Archivo:  ID: 76 | EAN/UPC: 8806086867542 | Nombre: Samsung Galaxy J5 Blanco | Marca: Samsung | Referencia: J5 SM-J500M | Precio de Compra: 490000  | Precio de Venta: 550000 | Cantidad: 10', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `logs` VALUES ('76', '2', 'Producto Creado desde Archivo:  ID: 77 | EAN/UPC: 8806086867177 | Nombre: Samsung Galaxy J5 Negro | Marca: Samsung | Referencia: J5 SM-J500M | Precio de Compra: 490000  | Precio de Venta: 550000 | Cantidad: 10', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `logs` VALUES ('77', '2', 'Producto Creado desde Archivo:  ID: 78 | EAN/UPC: 8806088207056 | Nombre: Samsung Galaxy J1 2016  Duos Blanco | Marca: Samsung | Referencia: J1 2016 SM-J120H | Precio de Compra: 310000  | Precio de Venta: 360000 | Cantidad: 10', '2017-02-05 01:45:32', '2017-02-05 01:45:32');
INSERT INTO `logs` VALUES ('78', '2', 'Producto Creado desde Archivo:  ID: 79 | EAN/UPC: 8806088207032 | Nombre: Samsung Galaxy J1 2016 Duos Dorado | Marca: Samsung | Referencia: J1 2016 SM-J120H | Precio de Compra: 310000  | Precio de Venta: 360000 | Cantidad: 10', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `logs` VALUES ('79', '2', 'Producto Creado desde Archivo:  ID: 80 | EAN/UPC: 8806088578378 | Nombre: Samsung Galaxy J1 Mini Prime Duos Negro | Marca: Samsung | Referencia: J1 Mini Prime Duos SM-J106B/DS | Precio de Compra: 255000  | Precio de Venta: 300000 | Cantidad: 10', '2017-02-05 01:45:34', '2017-02-05 01:45:34');
INSERT INTO `logs` VALUES ('80', '2', 'Producto Creado desde Archivo:  ID: 81 | EAN/UPC: 7702138109954 | Nombre: Huawei Ascend G630 Dual SIM Negro | Marca: Huawei | Referencia: Ascend G630 | Precio de Compra: 260000  | Precio de Venta: 300000 | Cantidad: 10', '2017-02-05 02:05:20', '2017-02-05 02:05:20');
INSERT INTO `logs` VALUES ('81', '2', 'Producto Creado desde Archivo:  ID: 82 | EAN/UPC: 6901443134717 | Nombre: Huawei Y5 II Dual SIM Negro | Marca: Huawei | Referencia: Y5 II CUN-L23 | Precio de Compra: 310000  | Precio de Venta: 360000 | Cantidad: 10', '2017-02-05 02:05:22', '2017-02-05 02:05:22');
INSERT INTO `logs` VALUES ('82', '2', 'Producto Creado desde Archivo:  ID: 83 | EAN/UPC: 6901443079322 | Nombre: Huawei Y5 Y560-L02 Negro | Marca: Huawei | Referencia: Y5 Y560-L02 | Precio de Compra: 260000  | Precio de Venta: 300000 | Cantidad: 10', '2017-02-05 02:05:24', '2017-02-05 02:05:24');
INSERT INTO `logs` VALUES ('83', '2', 'Producto Creado desde Archivo:  ID: 84 | EAN/UPC: 7702138107561 | Nombre: Huawei Ascend Y600 Dual SIM Azul | Marca: Huawei | Referencia: Y600-U351 | Precio de Compra: 230000  | Precio de Venta: 280000 | Cantidad: 10', '2017-02-05 02:05:25', '2017-02-05 02:05:25');
INSERT INTO `logs` VALUES ('84', '2', 'Producto Creado desde Archivo:  ID: 85 | EAN/UPC: 7702138103976 | Nombre: Huawei G6 Dual SIM Negro | Marca: Huawei | Referencia: G6 | Precio de Compra: 270000  | Precio de Venta: 320000 | Cantidad: 10', '2017-02-05 02:05:25', '2017-02-05 02:05:25');
INSERT INTO `logs` VALUES ('85', '21', 'Producto Creado:  ID: 200 | EAN/UPC: 6947681542976 | Nombre: Motorola Moto G5 Plus XT1681 Gris Oscuro | Marca: Motorola | Referencia: Moto G5 Plus XT1681 | Precio de Compra: 730000  | Precio de Venta: 750000 | Cantidad: 10', '2017-06-22 10:12:20', '2017-06-22 10:12:20');
INSERT INTO `logs` VALUES ('86', '21', 'Producto Desactivado:  ID: 200 | EAN/UPC: 6947681542976 | Nombre: Motorola Moto G5 Plus XT1681 Gris Oscuro | Marca: Motorola | Referencia: Moto G5 Plus XT1681 | Precio de Compra: 730000  | Precio de Venta: 750000 | Cantidad: 10', '2017-06-22 10:14:23', '2017-06-22 10:14:23');
INSERT INTO `logs` VALUES ('87', '21', 'Producto Activado:  ID: 200 | EAN/UPC: 6947681542976 | Nombre: Motorola Moto G5 Plus XT1681 Gris Oscuro | Marca: Motorola | Referencia: Moto G5 Plus XT1681 | Precio de Compra: 730000  | Precio de Venta: 750000 | Cantidad: 10', '2017-06-22 10:24:07', '2017-06-22 10:24:07');
INSERT INTO `logs` VALUES ('88', '21', 'Producto Editado:  ID: 200 | EAN/UPC: 6947681542976 | Nombre: Motorola Moto G5 Plus XT1681 Gris Oscuro | Marca: Motorola | Referencia: Moto G5 Plus XT1681 | Precio de Compra: 730000  | Precio de Venta: 750000 | Cantidad: 10', '2017-06-28 13:25:57', '2017-06-28 13:25:57');
INSERT INTO `logs` VALUES ('89', '21', 'Producto Editado:  ID: 200 | EAN/UPC: 6947681542976 | Nombre: Motorola Moto G5 Plus XT1681 Gris Oscuro | Marca: Motorola | Referencia: Moto G5 Plus XT1681 | Precio de Compra: 730000  | Precio de Venta: 750000 | Cantidad: 10', '2017-06-28 13:44:12', '2017-06-28 13:44:12');
INSERT INTO `logs` VALUES ('90', '21', 'Producto Editado:  ID: 200 | EAN/UPC: 6947681542976 | Nombre: Motorola Moto G5 Plus XT1681 Gris Oscuro | Marca: Motorola | Referencia: Moto G5 Plus XT1681 | Precio de Compra: 730000  | Precio de Venta: 750000 | Cantidad: 10', '2017-06-28 13:44:24', '2017-06-28 13:44:24');
INSERT INTO `logs` VALUES ('91', '21', 'Producto Editado:  ID: 200 | EAN/UPC: 6947681542976 | Nombre: Motorola Moto G5 Plus XT1681 Gris Oscuro | Marca: Motorola | Referencia: Moto G5 Plus XT1681 | Precio de Compra: 730000  | Precio de Venta: 750000 | Cantidad: 10', '2017-06-28 13:44:37', '2017-06-28 13:44:37');
INSERT INTO `logs` VALUES ('92', '21', 'Producto Editado:  ID: 87 | EAN/UPC: 8806088014036 | Nombre: Samsung Galaxy j5 SM-J500M/DS | Marca: Samsung | Referencia: Galaxy j5 SM-J500M/DS | Precio de Compra: 427000  | Precio de Venta: 450000 | Cantidad: 10', '2017-06-28 14:07:41', '2017-06-28 14:07:41');
INSERT INTO `logs` VALUES ('93', '21', 'Producto Editado:  ID: 87 | EAN/UPC: 8806088014036 | Nombre: Samsung Galaxy j5 SM-J500M/DS | Marca: Samsung | Referencia: Galaxy j5 SM-J500M/DS | Precio de Compra: 427000  | Precio de Venta: 450000 | Cantidad: 10', '2017-06-28 14:08:36', '2017-06-28 14:08:36');
INSERT INTO `logs` VALUES ('94', '21', 'Producto Editado:  ID: 87 | EAN/UPC: 8806088014036 | Nombre: Samsung Galaxy j5 SM-J500M/DS | Marca: Samsung | Referencia: Galaxy j5 SM-J500M/DS | Precio de Compra: 427000  | Precio de Venta: 450000 | Cantidad: 10', '2017-06-28 14:09:15', '2017-06-28 14:09:15');
INSERT INTO `logs` VALUES ('95', '21', 'Producto Editado:  ID: 87 | EAN/UPC: 8806088014036 | Nombre: Samsung Galaxy j5 SM-J500M/DS | Marca: Samsung | Referencia: Galaxy j5 SM-J500M/DS | Precio de Compra: 427000  | Precio de Venta: 450000 | Cantidad: 10', '2017-06-28 14:09:54', '2017-06-28 14:09:54');
INSERT INTO `logs` VALUES ('96', '21', 'Producto Editado:  ID: 87 | EAN/UPC: 8806088014036 | Nombre: Samsung Galaxy j5 SM-J500M/DS | Marca: Samsung | Referencia: Galaxy j5 SM-J500M/DS | Precio de Compra: 427000  | Precio de Venta: 450000 | Cantidad: 10', '2017-06-28 14:10:12', '2017-06-28 14:10:12');
INSERT INTO `logs` VALUES ('97', '21', 'Producto Editado:  ID: 87 | EAN/UPC: 8806088014036 | Nombre: Samsung Galaxy j5 SM-J500M/DS | Marca: Samsung | Referencia: Galaxy j5 SM-J500M/DS | Precio de Compra: 427000  | Precio de Venta: 450000 | Cantidad: 10', '2017-06-28 14:10:31', '2017-06-28 14:10:31');
INSERT INTO `logs` VALUES ('98', '21', 'Producto Editado:  ID: 87 | EAN/UPC: 8806088014036 | Nombre: Samsung Galaxy j5 SM-J500M/DS | Marca: Samsung | Referencia: Galaxy j5 SM-J500M/DS | Precio de Compra: 427000  | Precio de Venta: 450000 | Cantidad: 10', '2017-06-28 14:13:24', '2017-06-28 14:13:24');
INSERT INTO `logs` VALUES ('99', '21', 'Producto Editado:  ID: 80 | EAN/UPC: 8806088851549 | Nombre: Samsung Galaxy J1 Mini Prime Duos Negro | Marca: Samsung | Referencia: J1 Mini Prime Duos SM-J106B/DS | Precio de Compra: 190000  | Precio de Venta: 220000 | Cantidad: 9', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `logs` VALUES ('100', '1', 'Producto Creado:  ID: 201 | EAN/UPC: 10128 | Nombre: HTC M10 Plateado 64GB | Marca: HTC | Referencia: M10 | Precio de Compra: 1000000  | Precio de Venta: 2000000 | Cantidad: 5', '2017-08-01 10:13:45', '2017-08-01 10:13:45');
INSERT INTO `logs` VALUES ('101', '1', 'Producto Desactivado:  ID: 201 | EAN/UPC: 10128 | Nombre: HTC M10 Plateado 64GB | Marca: HTC | Referencia: M10 | Precio de Compra: 1000000  | Precio de Venta: 2000000 | Cantidad: 5', '2017-08-01 10:16:02', '2017-08-01 10:16:02');
INSERT INTO `logs` VALUES ('102', '1', 'Producto Editado:  ID: 78 | EAN/UPC: 8806088207056 | Nombre: Samsung Galaxy J1 2016  Duos Blanco | Marca: Samsung | Referencia: J1 2016 SM-J120H | Precio de Compra: 220000  | Precio de Venta: 250000 | Cantidad: 10', '2017-08-02 09:04:45', '2017-08-02 09:04:45');
INSERT INTO `logs` VALUES ('103', '1', 'Producto Editado:  ID: 78 | EAN/UPC: 8806088207056 | Nombre: Samsung Galaxy J1 2016  Duos Blanco | Marca: Samsung | Referencia: J1 2016 SM-J120H | Precio de Compra: 220000  | Precio de Venta: 250000 | Cantidad: 10', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `logs` VALUES ('104', '1', 'Producto Editado:  ID: 196 | EAN/UPC: 10124 | Nombre: Parlante Bluetooth y Reproductor MP3 Portatil Morado | Marca: Generico | Referencia: Parlante | Precio de Compra: 13000  | Precio de Venta: 25000 | Cantidad: 10', '2017-08-02 13:12:53', '2017-08-02 13:12:53');
INSERT INTO `logs` VALUES ('105', '1', 'Producto Editado:  ID: 184 | EAN/UPC: 10112 | Nombre: Audífonos Manos Libres NIA Bluetooth Radio FM MP3 Verde Claro | Marca: Generico | Referencia: NIA | Precio de Compra: 20000  | Precio de Venta: 35000 | Cantidad: 10', '2017-08-02 13:16:34', '2017-08-02 13:16:34');
INSERT INTO `logs` VALUES ('106', '1', 'Producto Editado:  ID: 15 | EAN/UPC: 859912006293 | Nombre: iSWAG Onyx Negro | Marca: iSWAG | Referencia: Onyx | Precio de Compra: 30000  | Precio de Venta: 48000 | Cantidad: 10', '2017-08-02 13:17:28', '2017-08-02 13:17:28');
INSERT INTO `logs` VALUES ('107', '1', 'Producto Editado:  ID: 16 | EAN/UPC: 859912006323 | Nombre: iSWAG Onyx Blanco | Marca: iSWAG | Referencia: Onyx | Precio de Compra: 30000  | Precio de Venta: 48000 | Cantidad: 10', '2017-08-02 13:18:00', '2017-08-02 13:18:00');
INSERT INTO `logs` VALUES ('108', '1', 'Producto Editado:  ID: 16 | EAN/UPC: 859912006323 | Nombre: iSWAG Onyx Blanco | Marca: iSWAG | Referencia: Onyx | Precio de Compra: 30000  | Precio de Venta: 48000 | Cantidad: 10', '2017-08-02 13:18:02', '2017-08-02 13:18:02');
INSERT INTO `logs` VALUES ('109', '1', 'Producto Editado:  ID: 16 | EAN/UPC: 859912006323 | Nombre: iSWAG Onyx Blanco | Marca: iSWAG | Referencia: Onyx | Precio de Compra: 30000  | Precio de Venta: 48000 | Cantidad: 10', '2017-08-02 13:30:41', '2017-08-02 13:30:41');
INSERT INTO `logs` VALUES ('110', '1', 'Producto Editado:  ID: 27 | EAN/UPC: 6901443130481 | Nombre: Huawei P9 Lite Dorado Dual SIM | Marca: Huawei | Referencia: P9 Lite VNS-L23 | Precio de Compra: 525000  | Precio de Venta: 580000 | Cantidad: 10', '2017-08-02 13:31:32', '2017-08-02 13:31:32');
INSERT INTO `logs` VALUES ('111', '1', 'Producto Editado:  ID: 27 | EAN/UPC: 6901443130481 | Nombre: Huawei P9 Lite Dorado Dual SIM | Marca: Huawei | Referencia: P9 Lite VNS-L23 | Precio de Compra: 525000  | Precio de Venta: 580000 | Cantidad: 10', '2017-08-02 13:31:42', '2017-08-02 13:31:42');
INSERT INTO `logs` VALUES ('112', '1', 'Producto Editado:  ID: 27 | EAN/UPC: 6901443130481 | Nombre: Huawei P9 Lite Dorado Dual SIM | Marca: Huawei | Referencia: P9 Lite VNS-L23 | Precio de Compra: 525000  | Precio de Venta: 580000 | Cantidad: 10', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `logs` VALUES ('113', '1', 'Producto Editado:  ID: 53 | EAN/UPC: 10024 | Nombre: Protector Samsung J5 Heroes Spiderman | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-08-02 14:09:04', '2017-08-02 14:09:04');
INSERT INTO `logs` VALUES ('114', '1', 'Producto Editado:  ID: 52 | EAN/UPC: 10023 | Nombre: Protector Samsung J5 Heroes Superman | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 15000 | Cantidad: 10', '2017-08-02 14:09:58', '2017-08-02 14:09:58');
INSERT INTO `logs` VALUES ('115', '1', 'Producto Activado:  ID: 49 | EAN/UPC: 10020 | Nombre: Protector Samsung J5 Transparente | Marca: Generico | Referencia: Samsung J5 | Precio de Compra: 7000  | Precio de Venta: 18000 | Cantidad: 10', '2017-08-02 14:10:11', '2017-08-02 14:10:11');
INSERT INTO `logs` VALUES ('116', '1', 'Producto Activado:  ID: 166 | EAN/UPC: 10094 | Nombre: Audífonos Manos Libres iPhone Blanco | Marca: Generico | Referencia: iPhone | Precio de Compra: 5000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-02 14:12:48', '2017-08-02 14:12:48');
INSERT INTO `logs` VALUES ('117', '1', 'Producto Editado:  ID: 156 | EAN/UPC: 10084 | Nombre: Audífonos Manos Libres SONY hearin Fucsia | Marca: Generico | Referencia: SONY | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-02 14:13:39', '2017-08-02 14:13:39');
INSERT INTO `logs` VALUES ('118', '1', 'Producto Editado:  ID: 156 | EAN/UPC: 10084 | Nombre: Audífonos Manos Libres SONY hearin Fucsia | Marca: Generico | Referencia: SONY | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-02 14:13:44', '2017-08-02 14:13:44');
INSERT INTO `logs` VALUES ('119', '1', 'Producto Activado:  ID: 150 | EAN/UPC: 10078 | Nombre: Audífonos Manos Libres ZiPP EARPHONE Corredera Naranja | Marca: Generico | Referencia: ZiPP EARPHONE | Precio de Compra: 5500  | Precio de Venta: 15000 | Cantidad: 10', '2017-08-02 14:14:22', '2017-08-02 14:14:22');
INSERT INTO `logs` VALUES ('120', '1', 'Producto Activado:  ID: 149 | EAN/UPC: 10077 | Nombre: Audífonos Manos Libres ZiPP EARPHONE Corredera Blanco | Marca: Generico | Referencia: ZiPP EARPHONE | Precio de Compra: 5500  | Precio de Venta: 15000 | Cantidad: 10', '2017-08-02 14:14:38', '2017-08-02 14:14:38');
INSERT INTO `logs` VALUES ('121', '1', 'Producto Activado:  ID: 148 | EAN/UPC: 10076 | Nombre: Audífonos Manos Libres ZiPP EARPHONE Corredera Rojo | Marca: Generico | Referencia: ZiPP EARPHONE | Precio de Compra: 5500  | Precio de Venta: 15000 | Cantidad: 10', '2017-08-02 14:14:54', '2017-08-02 14:14:54');
INSERT INTO `logs` VALUES ('122', '1', 'Producto Activado:  ID: 147 | EAN/UPC: 10075 | Nombre: Audífonos Manos Libres ZiPP EARPHONE Corredera Azul | Marca: Generico | Referencia: ZiPP EARPHONE | Precio de Compra: 5500  | Precio de Venta: 15000 | Cantidad: 10', '2017-08-02 14:15:11', '2017-08-02 14:15:11');
INSERT INTO `logs` VALUES ('123', '1', 'Producto Activado:  ID: 146 | EAN/UPC: 10074 | Nombre: Audífonos Manos Libres De Mickey Mouse | Marca: Generico | Referencia: Mickey Mouse | Precio de Compra: 6000  | Precio de Venta: 15000 | Cantidad: 10', '2017-08-02 14:15:34', '2017-08-02 14:15:34');
INSERT INTO `logs` VALUES ('124', '1', 'Producto Activado:  ID: 145 | EAN/UPC: 10073 | Nombre: Audífonos Manos Libres De Hello Kitty | Marca: Generico | Referencia: Hello Kitty | Precio de Compra: 6000  | Precio de Venta: 15000 | Cantidad: 10', '2017-08-02 14:15:50', '2017-08-02 14:15:50');
INSERT INTO `logs` VALUES ('125', '1', 'Producto Activado:  ID: 144 | EAN/UPC: 10072 | Nombre: Audífonos Manos Libres de Super Mario | Marca: Generico | Referencia: Super Mario | Precio de Compra: 6000  | Precio de Venta: 15000 | Cantidad: 10', '2017-08-02 14:16:06', '2017-08-02 14:16:06');
INSERT INTO `logs` VALUES ('126', '1', 'Producto Activado:  ID: 101 | EAN/UPC: hotcelxcoverv6verde | Nombre: Hotcel Xcover V6 Verde Dual SIM | Marca: Hotcel | Referencia: Xcover V6 | Precio de Compra: 53000  | Precio de Venta: 80000 | Cantidad: 10', '2017-08-02 14:16:57', '2017-08-02 14:16:57');
INSERT INTO `logs` VALUES ('127', '1', 'Producto Activado:  ID: 100 | EAN/UPC: hotcelxcoverv6blanco | Nombre: Hotcel Xcover V6 Blanco Dual SIM | Marca: Hotcel | Referencia: Xcover V6 | Precio de Compra: 53000  | Precio de Venta: 80000 | Cantidad: 10', '2017-08-02 14:17:11', '2017-08-02 14:17:11');
INSERT INTO `logs` VALUES ('128', '1', 'Producto Activado:  ID: 106 | EAN/UPC: 6901443079322 | Nombre: Huawei Y5 Negro | Marca: Huawei | Referencia: Y5 Y560-L02 | Precio de Compra: 280000  | Precio de Venta: 300000 | Cantidad: 10', '2017-08-02 14:17:25', '2017-08-02 14:17:25');
INSERT INTO `logs` VALUES ('129', '1', 'Producto Activado:  ID: 82 | EAN/UPC: 6901443134717 | Nombre: Huawei Y5 II Dual SIM Negro | Marca: Huawei | Referencia: Y5 II CUN-L23 | Precio de Compra: 310000  | Precio de Venta: 360000 | Cantidad: 10', '2017-08-02 14:17:59', '2017-08-02 14:17:59');
INSERT INTO `logs` VALUES ('130', '1', 'Producto Editado:  ID: 87 | EAN/UPC: 8806088014036 | Nombre: Samsung Galaxy j5 SM-J500M/DS | Marca: Samsung | Referencia: Galaxy j5 SM-J500M/DS | Precio de Compra: 427000  | Precio de Venta: 450000 | Cantidad: 10', '2017-08-02 14:18:57', '2017-08-02 14:18:57');
INSERT INTO `logs` VALUES ('131', '1', 'Producto Editado:  ID: 87 | EAN/UPC: 8806088014036 | Nombre: Samsung Galaxy j5 SM-J500M/DS | Marca: Samsung | Referencia: Galaxy j5 SM-J500M/DS | Precio de Compra: 427000  | Precio de Venta: 450000 | Cantidad: 10', '2017-08-02 14:22:49', '2017-08-02 14:22:49');
INSERT INTO `logs` VALUES ('132', '1', 'Producto Editado:  ID: 86 | EAN/UPC: 8806088573564 | Nombre: Samsung Galaxy J7 Prime Duos Negro | Marca: Samsung | Referencia: Galaxy J7 Prime SM-G610M/DS | Precio de Compra: 620000  | Precio de Venta: 690000 | Cantidad: 10', '2017-08-02 14:27:22', '2017-08-02 14:27:22');
INSERT INTO `logs` VALUES ('133', '1', 'Producto Editado:  ID: 71 | EAN/UPC: 8806088579566 | Nombre: Samsung Galaxy J5 Prime Duos Negro  | Marca: Samsung | Referencia: J5 Prime Duos SM-G570M/DS | Precio de Compra: 470000  | Precio de Venta: 540000 | Cantidad: 10', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `logs` VALUES ('134', '1', 'Producto Editado:  ID: 67 | EAN/UPC: 8806088566849 | Nombre: Samsung Galaxy J2 Prime Gris | Marca: Samsung | Referencia: J2 Prime SM-G532M | Precio de Compra: 305000  | Precio de Venta: 360000 | Cantidad: 10', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `logs` VALUES ('135', '1', 'Producto Activado:  ID: 66 | EAN/UPC: 8806088554280 | Nombre: Samsung Galaxy J2 Prime Negro | Marca: Samsung | Referencia: J2 Prime SM-G532M | Precio de Compra: 360000  | Precio de Venta: 420000 | Cantidad: 10', '2017-08-02 14:33:33', '2017-08-02 14:33:33');
INSERT INTO `logs` VALUES ('136', '1', 'Producto Editado:  ID: 66 | EAN/UPC: 8806088554280 | Nombre: Samsung Galaxy J2 Prime Negro | Marca: Samsung | Referencia: J2 Prime SM-G532M | Precio de Compra: 305000  | Precio de Venta: 360000 | Cantidad: 10', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `logs` VALUES ('137', '1', 'Producto Editado:  ID: 65 | EAN/UPC: 8806088567167 | Nombre: Samsung Galaxy J2 Prime Dorado | Marca: Samsung | Referencia: J2 Prime SM-G532M | Precio de Compra: 305000  | Precio de Venta: 360000 | Cantidad: 10', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `logs` VALUES ('138', '1', 'Producto Creado:  ID: 202 | EAN/UPC: 10129 | Nombre: Generico cable 2x1 | Marca: Generico | Referencia: cable 2x1 | Precio de Compra: 2000  | Precio de Venta: 6000 | Cantidad: 10', '2017-08-02 14:52:27', '2017-08-02 14:52:27');
INSERT INTO `logs` VALUES ('139', '21', 'Producto Creado:  ID: 203 | EAN/UPC: 10130 | Nombre: Protector Verus Huawei P10 Azul | Marca: VERUS | Referencia: Samsung J5 | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 13:00:56', '2017-08-08 13:00:56');
INSERT INTO `logs` VALUES ('140', '21', 'Producto Creado:  ID: 204 | EAN/UPC: 10132 | Nombre: Protector Verus para Huawei P10 Azul | Marca: VERUS | Referencia: Samsung J5 | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 13:03:37', '2017-08-08 13:03:37');
INSERT INTO `logs` VALUES ('141', '21', 'Producto Desactivado:  ID: 203 | EAN/UPC: 10130 | Nombre: Protector Verus Huawei P10 Azul | Marca: VERUS | Referencia: Samsung J5 | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 13:04:00', '2017-08-08 13:04:00');
INSERT INTO `logs` VALUES ('142', '21', 'Producto Desactivado:  ID: 204 | EAN/UPC: 10132 | Nombre: Protector Verus para Huawei P10 Azul | Marca: VERUS | Referencia: Samsung J5 | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 13:04:06', '2017-08-08 13:04:06');
INSERT INTO `logs` VALUES ('143', '21', 'Producto Activado:  ID: 203 | EAN/UPC: 10130 | Nombre: Protector Verus Huawei P10 Azul | Marca: VERUS | Referencia: Samsung J5 | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 13:04:12', '2017-08-08 13:04:12');
INSERT INTO `logs` VALUES ('144', '21', 'Producto Creado:  ID: 205 | EAN/UPC: 10133 | Nombre: Protector Samsung J5 prime | Marca: Generico | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 13:22:08', '2017-08-08 13:22:08');
INSERT INTO `logs` VALUES ('145', '21', 'Producto Creado:  ID: 206 | EAN/UPC: 10134 | Nombre: Protector Samsung j5 Prrime | Marca: Samsung | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 15000 | Cantidad: 10', '2017-08-08 13:29:06', '2017-08-08 13:29:06');
INSERT INTO `logs` VALUES ('146', '21', 'Producto Editado:  ID: 205 | EAN/UPC: 10133 | Nombre: Protector Samsung J5 prime | Marca: Generico | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 15000 | Cantidad: 10', '2017-08-08 13:29:29', '2017-08-08 13:29:29');
INSERT INTO `logs` VALUES ('147', '21', 'Producto Creado:  ID: 207 | EAN/UPC: 10135 | Nombre: Protector Generico Samsung j2 Prime | Marca: Generico | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 13:33:35', '2017-08-08 13:33:35');
INSERT INTO `logs` VALUES ('148', '21', 'Producto Creado:  ID: 208 | EAN/UPC: 10136 | Nombre: Protector Samsung j2 Prime | Marca: Samsung | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 13:37:10', '2017-08-08 13:37:10');
INSERT INTO `logs` VALUES ('149', '21', 'Producto Creado:  ID: 209 | EAN/UPC: 10137 | Nombre: VERUS Estuche Samsung j2 Prime | Marca: VERUS | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 14:51:18', '2017-08-08 14:51:18');
INSERT INTO `logs` VALUES ('150', '21', 'Producto Creado:  ID: 210 | EAN/UPC: 10138 | Nombre: Protector Para Samsung j2 Prime | Marca: Samsung | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 6', '2017-08-08 14:57:20', '2017-08-08 14:57:20');
INSERT INTO `logs` VALUES ('151', '21', 'Producto Creado:  ID: 211 | EAN/UPC: 10140 | Nombre: Protector Para Samsung j5 Prime | Marca: Samsung | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 15:04:56', '2017-08-08 15:04:56');
INSERT INTO `logs` VALUES ('152', '21', 'Producto Creado:  ID: 212 | EAN/UPC: 10141 | Nombre: Protector Incipio Samsung J5 Prime | Marca: INCIPIO | Referencia: Samsung J5 | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 15:14:01', '2017-08-08 15:14:01');
INSERT INTO `logs` VALUES ('153', '21', 'Producto Creado:  ID: 213 | EAN/UPC: 10142 | Nombre: Protector Generico Iphone 6 | Marca: Generico | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 15:50:26', '2017-08-08 15:50:26');
INSERT INTO `logs` VALUES ('154', '21', 'Producto Creado:  ID: 214 | EAN/UPC: 10143 | Nombre: Protector Motomo Huawei P10 Lite | Marca: Motomo | Referencia: Samsung J5 | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 15:56:37', '2017-08-08 15:56:37');
INSERT INTO `logs` VALUES ('155', '21', 'Producto Creado:  ID: 215 | EAN/UPC: 10144 | Nombre: Protector Motomo Para Huawei P10 Lite | Marca: Motomo | Referencia: Huawei P10 Lite | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 16:02:36', '2017-08-08 16:02:36');
INSERT INTO `logs` VALUES ('156', '21', 'Producto Creado:  ID: 216 | EAN/UPC: 10146 | Nombre: Protector Generico Huawei P9 Lite  | Marca: Generico | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 16:11:50', '2017-08-08 16:11:50');
INSERT INTO `logs` VALUES ('157', '21', 'Producto Creado:  ID: 217 | EAN/UPC: 10147 | Nombre: Protector Generico Motorola G4 play | Marca: Generico | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 16:16:53', '2017-08-08 16:16:53');
INSERT INTO `logs` VALUES ('158', '21', 'Producto Creado:  ID: 218 | EAN/UPC: 10148 | Nombre: Protecotr Generico Motorola G4 play | Marca: Generico | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 6', '2017-08-08 16:19:28', '2017-08-08 16:19:28');
INSERT INTO `logs` VALUES ('159', '21', 'Producto Creado:  ID: 219 | EAN/UPC: 10149 | Nombre: Protector Incipio Motorola G4 play | Marca: INCIPIO | Referencia: Motorola | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 16:24:39', '2017-08-08 16:24:39');
INSERT INTO `logs` VALUES ('160', '21', 'Producto Creado:  ID: 220 | EAN/UPC: 10150 | Nombre: Protector Generico Para Motorola g4 play  | Marca: Generico | Referencia: Estuche | Precio de Compra: 6000  | Precio de Venta: 10000 | Cantidad: 10', '2017-08-08 16:29:56', '2017-08-08 16:29:56');
INSERT INTO `logs` VALUES ('161', '21', 'Producto Creado:  ID: 221 | EAN/UPC: 10151 | Nombre: Dispostivo Generico Bluetooth Car  | Marca: Generico | Referencia: Bluetooth | Precio de Compra: 10000  | Precio de Venta: 15000 | Cantidad: 10', '2017-08-14 16:51:13', '2017-08-14 16:51:13');
INSERT INTO `logs` VALUES ('162', '21', 'Producto Creado:  ID: 222 | EAN/UPC: 10152 | Nombre: Generico Kit conetor | Marca: Generico | Referencia: Kit conetor | Precio de Compra: 22000  | Precio de Venta: 42000 | Cantidad: 10', '2017-08-14 16:59:15', '2017-08-14 16:59:15');
INSERT INTO `logs` VALUES ('163', '21', 'Producto Creado:  ID: 223 | EAN/UPC: 10153 | Nombre: Remax Holder Generico  | Marca: Remax | Referencia: Holder | Precio de Compra: 12000  | Precio de Venta: 30000 | Cantidad: 10', '2017-08-14 17:22:03', '2017-08-14 17:22:03');
INSERT INTO `logs` VALUES ('164', '21', 'Producto Creado:  ID: 224 | EAN/UPC: 10154 | Nombre: Generico REMAX | Marca: Generico | Referencia: REMAX | Precio de Compra: 15000  | Precio de Venta: 30000 | Cantidad: 10', '2017-08-14 17:29:25', '2017-08-14 17:29:25');
INSERT INTO `logs` VALUES ('165', '21', 'Producto Activado:  ID: 223 | EAN/UPC: 10153 | Nombre: Remax Holder Generico  | Marca: Remax | Referencia: Holder | Precio de Compra: 12000  | Precio de Venta: 30000 | Cantidad: 10', '2017-08-14 17:32:40', '2017-08-14 17:32:40');
INSERT INTO `logs` VALUES ('166', '21', 'Producto Creado:  ID: 225 | EAN/UPC: 10156 | Nombre: Dispositivo OTG & USB Generico Remax | Marca: Generico | Referencia: REMAX | Precio de Compra: 12000  | Precio de Venta: 25000 | Cantidad: 10', '2017-08-14 17:44:43', '2017-08-14 17:44:43');
INSERT INTO `logs` VALUES ('167', '21', 'Producto Creado:  ID: 226 | EAN/UPC: 10157 | Nombre: Vidrio Perfilado de Iphone 6, 6 plus, 7 y 7 plus | Marca: Perfilado | Referencia: Vidrio | Precio de Compra: 10000  | Precio de Venta: 30000 | Cantidad: 100', '2017-08-14 17:55:57', '2017-08-14 17:55:57');
INSERT INTO `logs` VALUES ('168', '21', 'Producto Creado:  ID: 227 | EAN/UPC: 10158 | Nombre: Banco de poder Generico REMAX | Marca: Generico | Referencia: REMAX | Precio de Compra: 10000  | Precio de Venta: 60000 | Cantidad: 100', '2017-08-14 18:04:47', '2017-08-14 18:04:47');
INSERT INTO `logs` VALUES ('169', '21', 'Producto Creado:  ID: 228 | EAN/UPC: 10160 | Nombre: Genius Vincha | Marca: Genius | Referencia: Vincha | Precio de Compra: 15000  | Precio de Venta: 25000 | Cantidad: 10', '2017-08-14 18:15:08', '2017-08-14 18:15:08');
INSERT INTO `logs` VALUES ('170', '1', 'Producto Creado:  ID: 229 | EAN/UPC: 10161 | Nombre: Alcatel Pixi 3 4009A | Marca: Alcatel | Referencia: Pixi 3 4009A | Precio de Compra: 105800  | Precio de Venta: 129900 | Cantidad: 10', '2017-08-21 14:43:30', '2017-08-21 14:43:30');
INSERT INTO `logs` VALUES ('171', '1', 'Producto Creado:  ID: 230 | EAN/UPC: 10162 | Nombre: Motorola moto c | Marca: Motorola | Referencia: moto c | Precio de Compra: 220000  | Precio de Venta: 260000 | Cantidad: 10', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `logs` VALUES ('172', '1', 'Producto Creado:  ID: 231 | EAN/UPC: 10163 | Nombre: Huawei y5 lite 2017 | Marca: Huawei | Referencia: y5 lite 2017 | Precio de Compra: 286000  | Precio de Venta: 350000 | Cantidad: 3', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `logs` VALUES ('173', '1', 'Producto Creado:  ID: 232 | EAN/UPC: 10164 | Nombre: Apple iPhone 7 plus red | Marca: Apple | Referencia: iPhone 7 plus red | Precio de Compra: 2600000  | Precio de Venta: 2800000 | Cantidad: 1', '2017-08-21 15:07:26', '2017-08-21 15:07:26');
INSERT INTO `logs` VALUES ('174', '1', 'Producto Creado:  ID: 233 | EAN/UPC: 10165 | Nombre: Samsung j7 neo | Marca: Samsung | Referencia: j7 neo | Precio de Compra: 520000  | Precio de Venta: 590000 | Cantidad: 3', '2017-08-21 15:20:39', '2017-08-21 15:20:39');
INSERT INTO `logs` VALUES ('175', '24', 'Producto Creado:  ID: 234 | EAN/UPC: 6922179201016 | Nombre: Sujetador Para Vehículo Universal Para Teléfono Móvil | Marca: Generico | Referencia: HOLD-073 | Precio de Compra: 5000  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-16 10:02:21', '2017-11-16 10:02:21');
INSERT INTO `logs` VALUES ('176', '24', 'Producto Editado:  ID: 234 | EAN/UPC: 6922179201016 | Nombre: Sujetador de Teléfono Para Vehículo | Marca: Generico | Referencia: HOLD-073 | Precio de Compra: 5000  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-16 10:06:01', '2017-11-16 10:06:01');
INSERT INTO `logs` VALUES ('177', '24', 'Producto Desactivado:  ID: 234 | EAN/UPC: 6922179201016 | Nombre: Sujetador de Teléfono Para Vehículo | Marca: Generico | Referencia: HOLD-073 | Precio de Compra: 5000  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-16 10:15:48', '2017-11-16 10:15:48');
INSERT INTO `logs` VALUES ('178', '24', 'Producto Creado:  ID: 235 | EAN/UPC: 6901443190812 | Nombre: Huawei Y7 Prime Dorado 32GB Dual Sim | Marca: Huawei | Referencia: Y7 Prime TRT-L53 | Precio de Compra: 550000  | Precio de Venta: 660000 | Cantidad: 10', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `logs` VALUES ('179', '24', 'Producto Creado:  ID: 236 | EAN/UPC: CCMBBCB781804527 | Nombre: Huawei Y5 II Blanco  | Marca: Huawei | Referencia: Y5 II CUN-U29 | Precio de Compra: 260000  | Precio de Venta: 330000 | Cantidad: 10', '2017-11-16 11:09:45', '2017-11-16 11:09:45');
INSERT INTO `logs` VALUES ('180', '24', 'Producto Creado:  ID: 237 | EAN/UPC: 862556031436411 | Nombre: Huawei Y5 Lite Dorado Dual Sim | Marca: Huawei | Referencia: y5 lite 2017 | Precio de Compra: 270000  | Precio de Venta: 370000 | Cantidad: 10', '2017-11-16 11:23:45', '2017-11-16 11:23:45');
INSERT INTO `logs` VALUES ('181', '24', 'Producto Creado:  ID: 238 | EAN/UPC: 8806088532707 | Nombre: Samsung Galaxy J5 (6) Dorado 16GB | Marca: Samsung | Referencia: Galaxy J5 (6) SM-J510MN/DS | Precio de Compra: 460000  | Precio de Venta: 500000 | Cantidad: 10', '2017-11-16 11:40:30', '2017-11-16 11:40:30');
INSERT INTO `logs` VALUES ('182', '24', 'Producto Creado:  ID: 239 | EAN/UPC: 8806088590394 | Nombre: Samsung Galaxy J5 Prime Dorado 16 GB | Marca: Samsung | Referencia: J5 Prime TM-16-0267 | Precio de Compra: 485000  | Precio de Venta: 580000 | Cantidad: 10', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `logs` VALUES ('183', '24', 'Producto Creado:  ID: 240 | EAN/UPC: 8806088795164 | Nombre: Samsung Galaxy J7 Prime Negro 16GB | Marca: Samsung | Referencia: Galaxy J7 Prime SM-G610M/DS | Precio de Compra: 630000  | Precio de Venta: 730000 | Cantidad: 10', '2017-11-16 12:34:05', '2017-11-16 12:34:05');
INSERT INTO `logs` VALUES ('184', '24', 'Producto Creado:  ID: 241 | EAN/UPC: 8806088814834 | Nombre: Samsung Galaxy J5 Pro  Dorado 16GB | Marca: Samsung | Referencia: SM-J530G/DS | Precio de Compra: 590000  | Precio de Venta: 720000 | Cantidad: 10', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `logs` VALUES ('185', '24', 'Producto Creado:  ID: 242 | EAN/UPC: 275355171081055006 | Nombre: LG Risio 2 Plateado  | Marca: LG | Referencia: LG Risio 2 DLGN5008 | Precio de Compra: 205000  | Precio de Venta: 230000 | Cantidad: 10', '2017-11-16 13:01:24', '2017-11-16 13:01:24');
INSERT INTO `logs` VALUES ('186', '24', 'Producto Creado:  ID: 243 | EAN/UPC: 275014678000910643 | Nombre: Alcatel Pixi 4 Theatre  DAL N3004 | Marca: Alcatel | Referencia: Pixi 4 Theatre  DAL N3004 | Precio de Compra: 265000  | Precio de Venta: 320000 | Cantidad: 10', '2017-11-16 13:15:49', '2017-11-16 13:15:49');
INSERT INTO `logs` VALUES ('187', '24', 'Producto Creado:  ID: 244 | EAN/UPC: 65281081670 | Nombre: LG K4 Negro | Marca: LG | Referencia: LG-VS425/K4 | Precio de Compra: 185000  | Precio de Venta: 250000 | Cantidad: 10', '2017-11-16 13:31:22', '2017-11-16 13:31:22');
INSERT INTO `logs` VALUES ('188', '24', 'Producto Creado:  ID: 245 | EAN/UPC: 244354063081084022 | Nombre: LG K8 Negro 6 GB | Marca: LG | Referencia: LG K8 Negro | Precio de Compra: 230000  | Precio de Venta: 270000 | Cantidad: 10', '2017-11-16 14:24:40', '2017-11-16 14:24:40');
INSERT INTO `logs` VALUES ('189', '24', 'Producto Creado:  ID: 246 | EAN/UPC: 353118086082131 | Nombre: Samsung Galaxy J1 (6) Blanco 8GB | Marca: Samsung | Referencia: Samsung J120AUCU2AP | Precio de Compra: 230000  | Precio de Venta: 290000 | Cantidad: 10', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `logs` VALUES ('190', '24', 'Producto Creado:  ID: 247 | EAN/UPC: 244014802007254595 | Nombre: Alcatel Ideal Negro 8GB | Marca: Alcatel | Referencia: Alcatel Ideal  TCT-4060A IDEAL | Precio de Compra: 120000  | Precio de Venta: 170000 | Cantidad: 10', '2017-11-16 14:49:25', '2017-11-16 14:49:25');
INSERT INTO `logs` VALUES ('191', '24', 'Producto Creado:  ID: 248 | EAN/UPC: 6947681545083 | Nombre: Moto C Plus  Dorado 16GB | Marca: Motorola | Referencia: Moto C Plus XT1723 | Precio de Compra: 320000  | Precio de Venta: 420000 | Cantidad: 10', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `logs` VALUES ('192', '24', 'Producto Creado:  ID: 249 | EAN/UPC: 6947681532205 | Nombre: Moto G4 Negro 16GB Dual Sim | Marca: Motorola | Referencia: Moto G4 XT1621 | Precio de Compra: 420000  | Precio de Venta: 480000 | Cantidad: 10', '2017-11-16 15:28:11', '2017-11-16 15:28:11');
INSERT INTO `logs` VALUES ('193', '24', 'Producto Creado:  ID: 250 | EAN/UPC: b251714029447 | Nombre: Caterpillar Negro  | Marca: CAT | Referencia: CAT B25   | Precio de Compra: 135000  | Precio de Venta: 220000 | Cantidad: 10', '2017-11-16 15:42:42', '2017-11-16 15:42:42');
INSERT INTO `logs` VALUES ('194', '24', 'Producto Creado:  ID: 251 | EAN/UPC: 6947681540781 | Nombre: Moto C Negro 8 GB | Marca: Motorola | Referencia: Moto C XT1750 | Precio de Compra: 200000  | Precio de Venta: 240000 | Cantidad: 10', '2017-11-16 16:00:17', '2017-11-16 16:00:17');
INSERT INTO `logs` VALUES ('195', '24', 'Producto Creado:  ID: 252 | EAN/UPC: 353484080982134 | Nombre: Celular Quick Tekia  | Marca: QUICK | Referencia: quick QB1801 | Precio de Compra: 26000  | Precio de Venta: 55000 | Cantidad: 20', '2017-11-16 16:21:02', '2017-11-16 16:21:02');
INSERT INTO `logs` VALUES ('196', '24', 'Producto Creado:  ID: 253 | EAN/UPC: 359190080074343 | Nombre: Mc Mobile Mini Dual Sim | Marca: Generico | Referencia: Mobile Mini MTK6250M | Precio de Compra: 30000  | Precio de Venta: 60000 | Cantidad: 20', '2017-11-16 16:30:21', '2017-11-16 16:30:21');
INSERT INTO `logs` VALUES ('197', '24', 'Producto Creado:  ID: 254 | EAN/UPC: 1050A\'3AC8MX1 | Nombre: Alcatel onetouch Negro  | Marca: Alcatel | Referencia: Alcatel one touch 1050A | Precio de Compra: 42000  | Precio de Venta: 55000 | Cantidad: 20', '2017-11-16 16:41:06', '2017-11-16 16:41:06');
INSERT INTO `logs` VALUES ('198', '24', 'Producto Creado:  ID: 255 | EAN/UPC: 354684085759424 | Nombre: Azumi Negro  | Marca: azumi | Referencia: Azumi L2Z PRE | Precio de Compra: 38000  | Precio de Venta: 60000 | Cantidad: 20', '2017-11-16 16:57:12', '2017-11-16 16:57:12');
INSERT INTO `logs` VALUES ('199', '24', 'Producto Creado:  ID: 256 | EAN/UPC: 851109007021 | Nombre: SKY  Fuego 5.0+ | Marca: SKY  | Referencia: SKY Fuego 5.0+ | Precio de Compra: 155000  | Precio de Venta: 250000 | Cantidad: 10', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `logs` VALUES ('200', '24', 'Producto Creado:  ID: 257 | EAN/UPC: 853582007185 | Nombre: Sky Elite 6.0L+ Gris 8GB | Marca: SKY  | Referencia: SKY desvices Elite 6.0+ | Precio de Compra: 320000  | Precio de Venta: 400000 | Cantidad: 10', '2017-11-16 17:21:05', '2017-11-16 17:21:05');
INSERT INTO `logs` VALUES ('201', '24', 'Producto Creado:  ID: 258 | EAN/UPC: 853582007192 | Nombre: Sky Elite 6.0L+ Plateado 8GB | Marca: SKY  | Referencia: SKY desvices Elite 6.0+ | Precio de Compra: 320000  | Precio de Venta: 400000 | Cantidad: 10', '2017-11-16 17:23:13', '2017-11-16 17:23:13');
INSERT INTO `logs` VALUES ('202', '24', 'Producto Creado:  ID: 259 | EAN/UPC: 853582007307 | Nombre: Sky Desvice 5.5C Blaco | Marca: SKY  | Referencia: Sky Platinum 5.5C  | Precio de Compra: 218000  | Precio de Venta: 280000 | Cantidad: 10', '2017-11-16 17:34:56', '2017-11-16 17:34:56');
INSERT INTO `logs` VALUES ('203', '24', 'Producto Creado:  ID: 260 | EAN/UPC: 853582007291 | Nombre: Sky platinum 5.5C Negro | Marca: SKY  | Referencia: Sky Platinum 5.5C  | Precio de Compra: 218000  | Precio de Venta: 288000 | Cantidad: 10', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `logs` VALUES ('204', '24', 'Producto Creado:  ID: 261 | EAN/UPC: 851109007649 | Nombre: Sky platinum 5.0W | Marca: SKY  | Referencia: Sky Platinum 5.0W | Precio de Compra: 175000  | Precio de Venta: 300000 | Cantidad: 10', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `logs` VALUES ('205', '24', 'Producto Creado:  ID: 262 | EAN/UPC: 851109007632 | Nombre: Sky platinum 5.0W Gris | Marca: SKY  | Referencia: Sky Platinum 5.0W | Precio de Compra: 175000  | Precio de Venta: 300000 | Cantidad: 10', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `logs` VALUES ('206', '24', 'Producto Creado:  ID: 263 | EAN/UPC: 853582007314 | Nombre: Sky Fuego 5.0+ Dorado | Marca: SKY  | Referencia: SKY Fuego 5.0+ | Precio de Compra: 155000  | Precio de Venta: 250000 | Cantidad: 10', '2017-11-16 17:59:34', '2017-11-16 17:59:34');
INSERT INTO `logs` VALUES ('207', '24', 'Producto Creado:  ID: 264 | EAN/UPC: 851109007045 | Nombre: Sky Fuego 5.0+ Blanco | Marca: SKY  | Referencia: Sky Desvice Fuego 5.0+ | Precio de Compra: 155000  | Precio de Venta: 250000 | Cantidad: 10', '2017-11-16 18:05:11', '2017-11-16 18:05:11');
INSERT INTO `logs` VALUES ('208', '24', 'Producto Desactivado:  ID: 263 | EAN/UPC: 853582007314 | Nombre: Sky Fuego 5.0+ Dorado | Marca: SKY  | Referencia: SKY Fuego 5.0+ | Precio de Compra: 155000  | Precio de Venta: 250000 | Cantidad: 10', '2017-11-16 18:07:30', '2017-11-16 18:07:30');
INSERT INTO `logs` VALUES ('209', '24', 'Producto Editado:  ID: 263 | EAN/UPC: 853582007314 | Nombre: Sky Fuego 5.0+ Dorado | Marca: SKY  | Referencia: SKY Fuego 5.0+ | Precio de Compra: 155000  | Precio de Venta: 250000 | Cantidad: 10', '2017-11-16 18:07:59', '2017-11-16 18:07:59');
INSERT INTO `logs` VALUES ('210', '24', 'Producto Creado:  ID: 265 | EAN/UPC: 853582007468 | Nombre: Sky Platium 4.0 blanco | Marca: SKY  | Referencia: Sky Platinum 4.0 blanco | Precio de Compra: 108000  | Precio de Venta: 140000 | Cantidad: 10', '2017-11-16 18:13:14', '2017-11-16 18:13:14');
INSERT INTO `logs` VALUES ('211', '24', 'Producto Creado:  ID: 266 | EAN/UPC: 853582007451 | Nombre: Sky Platium 4.0 rosado | Marca: SKY  | Referencia: Sky platinum 4.0 rosado | Precio de Compra: 108000  | Precio de Venta: 140000 | Cantidad: 10', '2017-11-16 18:15:26', '2017-11-16 18:15:26');
INSERT INTO `logs` VALUES ('212', '24', 'Producto Creado:  ID: 267 | EAN/UPC: 10166 | Nombre: XBOX 360 Negro Mas XB 3028 | Marca: XBOX | Referencia: XBOX 360 Negro | Precio de Compra: 500000  | Precio de Venta: 650000 | Cantidad: 10', '2017-11-17 08:33:43', '2017-11-17 08:33:43');
INSERT INTO `logs` VALUES ('213', '24', 'Producto Creado:  ID: 268 | EAN/UPC: 10167 | Nombre: SONY Play Station 3 | Marca: SONY | Referencia: Play Station | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 10', '2017-11-17 09:15:24', '2017-11-17 09:15:24');
INSERT INTO `logs` VALUES ('214', '24', 'Producto Creado:  ID: 269 | EAN/UPC: 10168 | Nombre: SONY PSP 300 | Marca: SONY | Referencia: PSP | Precio de Compra: 320000  | Precio de Venta: 380000 | Cantidad: 10', '2017-11-17 09:24:35', '2017-11-17 09:24:35');
INSERT INTO `logs` VALUES ('215', '24', 'Producto Creado:  ID: 270 | EAN/UPC: ¡3931 | Nombre: Control XBOX ONE | Marca: XBOX | Referencia: CONTROL XBOX ONE | Precio de Compra: 93000  | Precio de Venta: 150000 | Cantidad: 10', '2017-11-17 09:40:46', '2017-11-17 09:40:46');
INSERT INTO `logs` VALUES ('216', '24', 'Producto Creado:  ID: 271 | EAN/UPC: 711719990048 | Nombre: Control Dual Sock 3 | Marca: SONY | Referencia: Control PlayStation | Precio de Compra: 40000  | Precio de Venta: 70000 | Cantidad: 10', '2017-11-17 09:47:55', '2017-11-17 09:47:55');
INSERT INTO `logs` VALUES ('217', '24', 'Producto Creado:  ID: 272 | EAN/UPC: 10169 | Nombre: Control PlayStation 3 Blanco | Marca: SONY | Referencia: Control PlayStation | Precio de Compra: 40000  | Precio de Venta: 70000 | Cantidad: 10', '2017-11-17 09:51:10', '2017-11-17 09:51:10');
INSERT INTO `logs` VALUES ('218', '24', 'Producto Creado:  ID: 273 | EAN/UPC: ¡3930 | Nombre: Control Dual Shock PS4 | Marca: SONY | Referencia: Control PlayStation | Precio de Compra: 40000  | Precio de Venta: 70000 | Cantidad: 10', '2017-11-17 09:55:37', '2017-11-17 09:55:37');
INSERT INTO `logs` VALUES ('219', '24', 'Producto Creado:  ID: 274 | EAN/UPC: 639131705043 | Nombre: Audio portable Negro  | Marca: SuperSonic | Referencia: Audio Portable | Precio de Compra: 123000  | Precio de Venta: 160000 | Cantidad: 10', '2017-11-17 10:05:56', '2017-11-17 10:05:56');
INSERT INTO `logs` VALUES ('220', '24', 'Producto Creado:  ID: 275 | EAN/UPC: 10170 | Nombre:  Parlante Pequeño Negro  | Marca: Generico | Referencia: Parlante | Precio de Compra: 16000  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-17 10:22:55', '2017-11-17 10:22:55');
INSERT INTO `logs` VALUES ('221', '24', 'Producto Creado:  ID: 276 | EAN/UPC: 10171 | Nombre: Generico Parlante | Marca: Generico | Referencia: Parlante | Precio de Compra: 22000  | Precio de Venta: 35000 | Cantidad: 10', '2017-11-17 10:28:42', '2017-11-17 10:28:42');
INSERT INTO `logs` VALUES ('222', '24', 'Producto Creado:  ID: 277 | EAN/UPC: 10172 | Nombre: Parlante Wster Gris | Marca: Generico | Referencia: Parlante | Precio de Compra: 20000  | Precio de Venta: 32000 | Cantidad: 10', '2017-11-17 10:38:21', '2017-11-17 10:38:21');
INSERT INTO `logs` VALUES ('223', '24', 'Producto Creado:  ID: 278 | EAN/UPC: 10173 | Nombre: Parlante Music + Negro | Marca: Generico | Referencia: Parlante | Precio de Compra: 49000  | Precio de Venta: 65000 | Cantidad: 10', '2017-11-17 10:44:14', '2017-11-17 10:44:14');
INSERT INTO `logs` VALUES ('224', '24', 'Producto Creado:  ID: 279 | EAN/UPC: 10174 | Nombre:  XBOX ONE Negro | Marca: XBOX | Referencia: XBOX ONE Negro | Precio de Compra: 900000  | Precio de Venta: 1050000 | Cantidad: 10', '2017-11-17 10:48:41', '2017-11-17 10:48:41');
INSERT INTO `logs` VALUES ('225', '24', 'Producto Creado:  ID: 280 | EAN/UPC: 10175 | Nombre:  Play Station 4 Negro Incluye 3 Juegos | Marca: SONY | Referencia: Play Station | Precio de Compra: 980000  | Precio de Venta: 1150000 | Cantidad: 10', '2017-11-17 10:59:12', '2017-11-17 10:59:12');
INSERT INTO `logs` VALUES ('226', '24', 'Producto Creado:  ID: 281 | EAN/UPC: 10176 | Nombre: Parlantes Mini 2.1 Negro con Rojo | Marca: Generico | Referencia: Parlante | Precio de Compra: 45000  | Precio de Venta: 60000 | Cantidad: 10', '2017-11-17 11:08:14', '2017-11-17 11:08:14');
INSERT INTO `logs` VALUES ('227', '24', 'Producto Creado:  ID: 282 | EAN/UPC: 10177 | Nombre: Parlantes s5 Max Negro | Marca: Generico | Referencia: Parlante | Precio de Compra: 40000  | Precio de Venta: 60000 | Cantidad: 10', '2017-11-17 11:13:29', '2017-11-17 11:13:29');
INSERT INTO `logs` VALUES ('228', '24', 'Producto Creado:  ID: 283 | EAN/UPC: 10178 | Nombre: Parlante X- Bass Negro | Marca: Generico | Referencia: Parlante | Precio de Compra: 90000  | Precio de Venta: 120000 | Cantidad: 10', '2017-11-17 11:20:32', '2017-11-17 11:20:32');
INSERT INTO `logs` VALUES ('229', '24', 'Producto Creado:  ID: 284 | EAN/UPC: 10180 | Nombre: Parlante Movil Azul | Marca: Generico | Referencia: Parlante | Precio de Compra: 50000  | Precio de Venta: 75000 | Cantidad: 10', '2017-11-17 11:24:26', '2017-11-17 11:24:26');
INSERT INTO `logs` VALUES ('230', '24', 'Producto Creado:  ID: 285 | EAN/UPC: ¡1997 | Nombre: Parlante Multicolores Recargable | Marca: Generico | Referencia: Parlante | Precio de Compra: 26000  | Precio de Venta: 40000 | Cantidad: 10', '2017-11-17 11:31:24', '2017-11-17 11:31:24');
INSERT INTO `logs` VALUES ('231', '24', 'Producto Creado:  ID: 286 | EAN/UPC: 10181 | Nombre: Juego de Parlantes Negro | Marca: Generico | Referencia: Parlante | Precio de Compra: 155000  | Precio de Venta: 175000 | Cantidad: 10', '2017-11-17 11:36:03', '2017-11-17 11:36:03');
INSERT INTO `logs` VALUES ('232', '24', 'Producto Creado:  ID: 287 | EAN/UPC: 10182 | Nombre: Parlante iBastek Negro | Marca: iBastek | Referencia: Parlantes | Precio de Compra: 270000  | Precio de Venta: 300000 | Cantidad: 10', '2017-11-17 11:42:33', '2017-11-17 11:42:33');
INSERT INTO `logs` VALUES ('233', '24', 'Producto Creado:  ID: 288 | EAN/UPC: 770n1707009906 | Nombre: Tablets Touch Negra | Marca: Generico | Referencia: Tablets U0LL | Precio de Compra: 200000  | Precio de Venta: 230000 | Cantidad: 10', '2017-11-17 12:29:10', '2017-11-17 12:29:10');
INSERT INTO `logs` VALUES ('234', '24', 'Producto Creado:  ID: 289 | EAN/UPC: 10183 | Nombre:  Tablest CTech Blanca | Marca: Generico | Referencia: Tablest CTech | Precio de Compra: 140000  | Precio de Venta: 160000 | Cantidad: 10', '2017-11-17 12:33:37', '2017-11-17 12:33:37');
INSERT INTO `logs` VALUES ('235', '24', 'Producto Creado:  ID: 290 | EAN/UPC: 10184 | Nombre: Impresora Epson L380 Negro | Marca: Epson | Referencia: Epson L380 | Precio de Compra: 430000  | Precio de Venta: 520000 | Cantidad: 10', '2017-11-17 14:03:13', '2017-11-17 14:03:13');
INSERT INTO `logs` VALUES ('236', '24', 'Producto Creado:  ID: 291 | EAN/UPC: 10185 | Nombre: Impresora Epson L395 | Marca: Epson | Referencia: Epson L395 | Precio de Compra: 510000  | Precio de Venta: 650000 | Cantidad: 10', '2017-11-17 14:07:40', '2017-11-17 14:07:40');
INSERT INTO `logs` VALUES ('237', '24', 'Producto Creado:  ID: 292 | EAN/UPC: 10186 | Nombre:  Ventilador Portátil Nego | Marca: Generico | Referencia: Ventilador Portatil | Precio de Compra: 16000  | Precio de Venta: 28000 | Cantidad: 10', '2017-11-17 14:18:25', '2017-11-17 14:18:25');
INSERT INTO `logs` VALUES ('238', '24', 'Producto Creado:  ID: 293 | EAN/UPC: 10187 | Nombre: Generico MapaMundo | Marca: Generico | Referencia: MapaMundo | Precio de Compra: 120000  | Precio de Venta: 150000 | Cantidad: 10', '2017-11-17 14:27:59', '2017-11-17 14:27:59');
INSERT INTO `logs` VALUES ('239', '24', 'Producto Creado:  ID: 294 | EAN/UPC: XP16S9726986 | Nombre: Teclado Genius Negro Mas Mouses | Marca: Genius | Referencia: Teclado | Precio de Compra: 26000  | Precio de Venta: 40000 | Cantidad: 10', '2017-11-17 14:37:03', '2017-11-17 14:37:03');
INSERT INTO `logs` VALUES ('240', '24', 'Producto Creado:  ID: 295 | EAN/UPC: 10188 | Nombre: Teclado Negro con Azul Mas Mouses | Marca: Generico | Referencia: Teclado | Precio de Compra: 19000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-17 14:44:47', '2017-11-17 14:44:47');
INSERT INTO `logs` VALUES ('241', '24', 'Producto Creado:  ID: 296 | EAN/UPC: 10189 | Nombre: Teclado Unitec Negro Mas Mouse | Marca: Generico | Referencia: Teclado | Precio de Compra: 19000  | Precio de Venta: 35000 | Cantidad: 10', '2017-11-17 14:50:00', '2017-11-17 14:50:00');
INSERT INTO `logs` VALUES ('242', '24', 'Producto Creado:  ID: 297 | EAN/UPC: 10190 | Nombre: Mouses K1  | Marca: Generico | Referencia: Mouses | Precio de Compra: 10000  | Precio de Venta: 25000 | Cantidad: 10', '2017-11-17 14:54:56', '2017-11-17 14:54:56');
INSERT INTO `logs` VALUES ('243', '24', 'Producto Creado:  ID: 298 | EAN/UPC: 10191 | Nombre: Mouse Led Negro | Marca: Generico | Referencia: Teclado | Precio de Compra: 4500  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-17 14:59:38', '2017-11-17 14:59:38');
INSERT INTO `logs` VALUES ('244', '24', 'Producto Creado:  ID: 299 | EAN/UPC: C54\'10165 | Nombre: Mouse Optical Negro | Marca: Generico | Referencia: Mouses | Precio de Compra: 16000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-17 15:04:59', '2017-11-17 15:04:59');
INSERT INTO `logs` VALUES ('245', '24', 'Producto Creado:  ID: 300 | EAN/UPC: ¡3600 | Nombre: Mouse Gaming Negro | Marca: Generico | Referencia: Mouses | Precio de Compra: 16000  | Precio de Venta: 35000 | Cantidad: 10', '2017-11-17 15:07:15', '2017-11-17 15:07:15');
INSERT INTO `logs` VALUES ('246', '24', 'Producto Creado:  ID: 301 | EAN/UPC: 10192 | Nombre: Genius Mouse | Marca: Genius | Referencia: Mouse | Precio de Compra: 16000  | Precio de Venta: 35000 | Cantidad: 10', '2017-11-17 15:13:08', '2017-11-17 15:13:08');
INSERT INTO `logs` VALUES ('247', '24', 'Producto Creado:  ID: 302 | EAN/UPC: 10193 | Nombre: Generico Camara Web | Marca: Generico | Referencia: Camara Web | Precio de Compra: 10000  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-17 15:21:13', '2017-11-17 15:21:13');
INSERT INTO `logs` VALUES ('248', '24', 'Producto Creado:  ID: 303 | EAN/UPC: ¡671 | Nombre: Ventilador Portátil Negro  | Marca: Generico | Referencia: Ventilador Portatil | Precio de Compra: 8000  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-17 15:27:47', '2017-11-17 15:27:47');
INSERT INTO `logs` VALUES ('249', '24', 'Producto Creado:  ID: 304 | EAN/UPC: ¡639 | Nombre: Ventilador Portátil  Negro con Blanco | Marca: Generico | Referencia: Ventilador Portatil | Precio de Compra: 26000  | Precio de Venta: 35000 | Cantidad: 10', '2017-11-17 15:31:10', '2017-11-17 15:31:10');
INSERT INTO `logs` VALUES ('250', '24', 'Producto Creado:  ID: 305 | EAN/UPC: 10194 | Nombre: Parlante 169BT | Marca: Generico | Referencia: Parlante | Precio de Compra: 50000  | Precio de Venta: 90000 | Cantidad: 10', '2017-11-17 16:06:13', '2017-11-17 16:06:13');
INSERT INTO `logs` VALUES ('251', '24', 'Producto Creado:  ID: 306 | EAN/UPC: 10195 | Nombre: Auricular G6 Gaming Negro con Azul | Marca: Generico | Referencia: Auricular | Precio de Compra: 40000  | Precio de Venta: 60000 | Cantidad: 10', '2017-11-17 16:13:22', '2017-11-17 16:13:22');
INSERT INTO `logs` VALUES ('252', '24', 'Producto Creado:  ID: 307 | EAN/UPC: ¡3556 | Nombre: Cargador Portátil Blanco | Marca: Remax | Referencia: Cargador Portatil | Precio de Compra: 13000  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-17 16:35:16', '2017-11-17 16:35:16');
INSERT INTO `logs` VALUES ('253', '24', 'Producto Creado:  ID: 308 | EAN/UPC: ¡3602 | Nombre: Cargador Portátil fucsia | Marca: Remax | Referencia: Cargador Portatil | Precio de Compra: 38000  | Precio de Venta: 45000 | Cantidad: 10', '2017-11-17 16:39:27', '2017-11-17 16:39:27');
INSERT INTO `logs` VALUES ('254', '24', 'Producto Creado:  ID: 309 | EAN/UPC: ¡3558 | Nombre: Cargador Portátil  Superalloy | Marca: Remax | Referencia: Cargador Portatil | Precio de Compra: 45000  | Precio de Venta: 65000 | Cantidad: 10', '2017-11-17 16:43:31', '2017-11-17 16:43:31');
INSERT INTO `logs` VALUES ('255', '24', 'Producto Creado:  ID: 310 | EAN/UPC: 10196 | Nombre:  Cargador Portátil Muse RPP-34 | Marca: Remax | Referencia: Cargador Portatil | Precio de Compra: 50000  | Precio de Venta: 70000 | Cantidad: 10', '2017-11-17 16:53:28', '2017-11-17 16:53:28');
INSERT INTO `logs` VALUES ('256', '24', 'Producto Creado:  ID: 311 | EAN/UPC: 10198 | Nombre:  Cargador Portátil RLP-16 | Marca: Remax | Referencia: Cargador Portatil | Precio de Compra: 35000  | Precio de Venta: 55000 | Cantidad: 10', '2017-11-17 16:56:41', '2017-11-17 16:56:41');
INSERT INTO `logs` VALUES ('257', '24', 'Producto Creado:  ID: 312 | EAN/UPC: 10199 | Nombre: Remax Cargador Portatil 20000mAh | Marca: Remax | Referencia: Cargador Portatil | Precio de Compra: 75000  | Precio de Venta: 90000 | Cantidad: 10', '2017-11-17 17:02:23', '2017-11-17 17:02:23');
INSERT INTO `logs` VALUES ('258', '24', 'Producto Creado:  ID: 313 | EAN/UPC: 10200 | Nombre:  Camara Para Vehículo | Marca: Remax | Referencia: Camara Para Vehiculo | Precio de Compra: 140000  | Precio de Venta: 160000 | Cantidad: 10', '2017-11-17 17:10:12', '2017-11-17 17:10:12');
INSERT INTO `logs` VALUES ('259', '24', 'Producto Creado:  ID: 314 | EAN/UPC: 10201 | Nombre:  Cargador Para Carro | Marca: Remax | Referencia: Cargador Para Carro | Precio de Compra: 26000  | Precio de Venta: 35000 | Cantidad: 10', '2017-11-17 17:16:42', '2017-11-17 17:16:42');
INSERT INTO `logs` VALUES ('260', '24', 'Producto Creado:  ID: 315 | EAN/UPC: ¡1398 | Nombre: Memoria USB 32GB | Marca: Kingston  | Referencia: USB Kingston 32GB | Precio de Compra: 23000  | Precio de Venta: 35000 | Cantidad: 10', '2017-11-17 17:27:02', '2017-11-17 17:27:02');
INSERT INTO `logs` VALUES ('261', '24', 'Producto Creado:  ID: 316 | EAN/UPC: ¡737 | Nombre: Memoria USB 4GB | Marca: Kingston  | Referencia: USB Kingston 4GB | Precio de Compra: 10000  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-17 17:31:36', '2017-11-17 17:31:36');
INSERT INTO `logs` VALUES ('262', '24', 'Producto Creado:  ID: 317 | EAN/UPC: ¡3454 | Nombre: Micro SD 4GB | Marca: Kingston  | Referencia: Micro SD 4GB | Precio de Compra: 8000  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-17 17:35:28', '2017-11-17 17:35:28');
INSERT INTO `logs` VALUES ('263', '24', 'Producto Creado:  ID: 318 | EAN/UPC: ¡3393 | Nombre: Memoria USB 16GB | Marca: Kingston  | Referencia: Memoria USB 16GB | Precio de Compra: 13000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-17 17:39:55', '2017-11-17 17:39:55');
INSERT INTO `logs` VALUES ('264', '24', 'Producto Creado:  ID: 319 | EAN/UPC: ¡2460 | Nombre: Control XBOX 360 | Marca: XBOX | Referencia: Control XBOX 360 | Precio de Compra: 93000  | Precio de Venta: 140000 | Cantidad: 10', '2017-11-17 17:48:22', '2017-11-17 17:48:22');
INSERT INTO `logs` VALUES ('265', '24', 'Producto Creado:  ID: 320 | EAN/UPC: 10202 | Nombre:  Guaya Para Computador MST | Marca: Generico | Referencia: Guaya MST-1038G-2 | Precio de Compra: 43000  | Precio de Venta: 55000 | Cantidad: 10', '2017-11-17 18:00:47', '2017-11-17 18:00:47');
INSERT INTO `logs` VALUES ('266', '24', 'Producto Creado:  ID: 321 | EAN/UPC: 10203 | Nombre:  Cable HDMI 1x2 Negro | Marca: Generico | Referencia: Cable HDMI 1x2 | Precio de Compra: 36000  | Precio de Venta: 45000 | Cantidad: 10', '2017-11-17 18:07:59', '2017-11-17 18:07:59');
INSERT INTO `logs` VALUES ('267', '24', 'Producto Creado:  ID: 322 | EAN/UPC: 10204 | Nombre: Cable  IPH7 ADAP  | Marca: Generico | Referencia: cable 2x1 | Precio de Compra: 6500  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-17 18:15:17', '2017-11-17 18:15:17');
INSERT INTO `logs` VALUES ('268', '24', 'Producto Creado:  ID: 323 | EAN/UPC: 3588 | Nombre:  Cargador Led 2en1 | Marca: Samsung | Referencia: Cargador Led 2en1 | Precio de Compra: 3000  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-18 10:04:28', '2017-11-18 10:04:28');
INSERT INTO `logs` VALUES ('269', '24', 'Producto Creado:  ID: 324 | EAN/UPC: 2983 | Nombre:  Cargador Huawei Blanco | Marca: Huawei | Referencia: Cargador Huawei | Precio de Compra: 7000  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-18 10:11:27', '2017-11-18 10:11:27');
INSERT INTO `logs` VALUES ('270', '24', 'Producto Creado:  ID: 325 | EAN/UPC: 10205 | Nombre:  Cargador de Celular  | Marca: Generico | Referencia: Cargador de Celular  | Precio de Compra: 2000  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-18 10:15:16', '2017-11-18 10:15:16');
INSERT INTO `logs` VALUES ('271', '24', 'Producto Creado:  ID: 326 | EAN/UPC: 2034 | Nombre:  Cable VGA 1,5cms | Marca: Generico | Referencia: Cable VGA | Precio de Compra: 2600  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-18 10:20:28', '2017-11-18 10:20:28');
INSERT INTO `logs` VALUES ('272', '24', 'Producto Creado:  ID: 327 | EAN/UPC: 3319 | Nombre:  Cable CBL-USBEX | Marca: Generico | Referencia: Cable CBL-USBEX/10cm | Precio de Compra: 13000  | Precio de Venta: 25000 | Cantidad: 10', '2017-11-18 10:27:13', '2017-11-18 10:27:13');
INSERT INTO `logs` VALUES ('273', '24', 'Producto Creado:  ID: 328 | EAN/UPC: 4 | Nombre:  Cable V8 LAZO  | Marca: Generico | Referencia: Cable V8 LAZO | Precio de Compra: 3000  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-18 10:35:42', '2017-11-18 10:35:42');
INSERT INTO `logs` VALUES ('274', '24', 'Producto Creado:  ID: 329 | EAN/UPC: 3110 | Nombre:  Cable HDMI 3mt | Marca: Generico | Referencia: Cable HDMI | Precio de Compra: 3500  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-18 10:40:13', '2017-11-18 10:40:13');
INSERT INTO `logs` VALUES ('275', '24', 'Producto Creado:  ID: 330 | EAN/UPC: 1462 | Nombre:  Cable 3x3 de 1.5 | Marca: Generico | Referencia: Cable 3x3 de 1.5 | Precio de Compra: 1000  | Precio de Venta: 8000 | Cantidad: 10', '2017-11-18 10:44:55', '2017-11-18 10:44:55');
INSERT INTO `logs` VALUES ('276', '24', 'Producto Creado:  ID: 331 | EAN/UPC: 10206 | Nombre: Generico Cable IPH 4 | Marca: Generico | Referencia: Cable IPH 4 | Precio de Compra: 900  | Precio de Venta: 7000 | Cantidad: 10', '2017-11-18 10:57:40', '2017-11-18 10:57:40');
INSERT INTO `logs` VALUES ('277', '24', 'Producto Creado:  ID: 332 | EAN/UPC: 2972 | Nombre:  Cable Universal | Marca: Generico | Referencia: Cable Universal | Precio de Compra: 4500  | Precio de Venta: 8500 | Cantidad: 10', '2017-11-18 11:01:32', '2017-11-18 11:01:32');
INSERT INTO `logs` VALUES ('278', '24', 'Producto Creado:  ID: 333 | EAN/UPC: 497 | Nombre:  Cable para IPH 6 | Marca: Generico | Referencia: Cable IPH 6 | Precio de Compra: 300  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-18 11:05:19', '2017-11-18 11:05:19');
INSERT INTO `logs` VALUES ('279', '24', 'Producto Creado:  ID: 334 | EAN/UPC: 2530 | Nombre:  Cable Para Impresora | Marca: Generico | Referencia: Cable Para Impresora | Precio de Compra: 1300  | Precio de Venta: 7000 | Cantidad: 10', '2017-11-18 11:17:46', '2017-11-18 11:17:46');
INSERT INTO `logs` VALUES ('280', '24', 'Producto Creado:  ID: 335 | EAN/UPC: 10207 | Nombre: Cable RC-039W | Marca: Remax | Referencia: Cable RC-039W | Precio de Compra: 18000  | Precio de Venta: 35000 | Cantidad: 10', '2017-11-18 11:24:17', '2017-11-18 11:24:17');
INSERT INTO `logs` VALUES ('281', '24', 'Producto Creado:  ID: 336 | EAN/UPC: 3520 | Nombre:  Audífonos Samsung Blanco | Marca: Samsung | Referencia: Audífonos Samsung | Precio de Compra: 1600  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-18 12:26:26', '2017-11-18 12:26:26');
INSERT INTO `logs` VALUES ('282', '24', 'Producto Creado:  ID: 337 | EAN/UPC: 10208 | Nombre:  Audífonos Samsung Negro | Marca: Samsung | Referencia: Audífonos Samsung | Precio de Compra: 1600  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-18 12:29:55', '2017-11-18 12:29:55');
INSERT INTO `logs` VALUES ('283', '24', 'Producto Creado:  ID: 338 | EAN/UPC: 409 | Nombre: Audífonos Iphone Blanco | Marca: Apple | Referencia: Audífonos Iphone Blanco | Precio de Compra: 2000  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-18 13:35:28', '2017-11-18 13:35:28');
INSERT INTO `logs` VALUES ('284', '24', 'Producto Creado:  ID: 339 | EAN/UPC: 10209 | Nombre: Cable USB 5en1 | Marca: Generico | Referencia: Cablr USB 5en1 | Precio de Compra: 5000  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-18 13:40:11', '2017-11-18 13:40:11');
INSERT INTO `logs` VALUES ('285', '24', 'Producto Creado:  ID: 340 | EAN/UPC: 53 | Nombre: Modulador FM MP3 | Marca: Generico | Referencia: Modulador FM | Precio de Compra: 6000  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-18 13:50:20', '2017-11-18 13:50:20');
INSERT INTO `logs` VALUES ('286', '24', 'Producto Creado:  ID: 341 | EAN/UPC: 1693 | Nombre: MP4 Azul Agua Marina | Marca: Generico | Referencia: MP4 | Precio de Compra: 25000  | Precio de Venta: 40000 | Cantidad: 10', '2017-11-18 14:58:16', '2017-11-18 14:58:16');
INSERT INTO `logs` VALUES ('287', '24', 'Producto Creado:  ID: 342 | EAN/UPC: 10210 | Nombre: MP4 Rosado | Marca: Generico | Referencia: MP4 | Precio de Compra: 25000  | Precio de Venta: 40000 | Cantidad: 10', '2017-11-18 15:02:04', '2017-11-18 15:02:04');
INSERT INTO `logs` VALUES ('288', '24', 'Producto Creado:  ID: 343 | EAN/UPC: 10211 | Nombre: MP4 Morado | Marca: Generico | Referencia: MP4 | Precio de Compra: 25000  | Precio de Venta: 40000 | Cantidad: 10', '2017-11-18 15:03:01', '2017-11-18 15:03:01');
INSERT INTO `logs` VALUES ('289', '24', 'Producto Creado:  ID: 344 | EAN/UPC: 3569 | Nombre: Auriculares Music Digital Negro | Marca: Generico | Referencia: Auricular | Precio de Compra: 19000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-18 15:13:00', '2017-11-18 15:13:00');
INSERT INTO `logs` VALUES ('290', '24', 'Producto Creado:  ID: 345 | EAN/UPC: 10212 | Nombre: Auriculares Music Digital Verde | Marca: Generico | Referencia: Auricular | Precio de Compra: 19000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-18 15:14:39', '2017-11-18 15:14:39');
INSERT INTO `logs` VALUES ('291', '24', 'Producto Creado:  ID: 346 | EAN/UPC: 2944 | Nombre: Control PC Play 2 | Marca: Generico | Referencia: Control PC | Precio de Compra: 23000  | Precio de Venta: 45000 | Cantidad: 10', '2017-11-18 15:32:28', '2017-11-18 15:32:28');
INSERT INTO `logs` VALUES ('292', '24', 'Producto Creado:  ID: 347 | EAN/UPC: 3483 | Nombre: Puerto Ahorrador de Energia | Marca: Generico | Referencia: Puertos | Precio de Compra: 44000  | Precio de Venta: 60000 | Cantidad: 10', '2017-11-18 15:37:10', '2017-11-18 15:37:10');
INSERT INTO `logs` VALUES ('293', '24', 'Producto Creado:  ID: 348 | EAN/UPC: 3480 | Nombre: Puerto PCI Adapter | Marca: Generico | Referencia: Puertos | Precio de Compra: 33000  | Precio de Venta: 50000 | Cantidad: 10', '2017-11-18 15:40:39', '2017-11-18 15:40:39');
INSERT INTO `logs` VALUES ('294', '24', 'Producto Creado:  ID: 349 | EAN/UPC: 2438 | Nombre: Puerto inalambrico nano USB | Marca: Generico | Referencia: Puertos | Precio de Compra: 24000  | Precio de Venta: 40000 | Cantidad: 10', '2017-11-18 15:46:10', '2017-11-18 15:46:10');
INSERT INTO `logs` VALUES ('295', '24', 'Producto Creado:  ID: 350 | EAN/UPC: 2601 | Nombre:  Soporte TV Negra | Marca: Generico | Referencia: Soporte TV | Precio de Compra: 8000  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-18 15:59:48', '2017-11-18 15:59:48');
INSERT INTO `logs` VALUES ('296', '24', 'Producto Creado:  ID: 351 | EAN/UPC: 2469 | Nombre:  Soporte TV Negra Con medidor | Marca: Generico | Referencia: Soporte TV | Precio de Compra: 28000  | Precio de Venta: 40000 | Cantidad: 10', '2017-11-18 16:00:53', '2017-11-18 16:00:53');
INSERT INTO `logs` VALUES ('297', '24', 'Producto Creado:  ID: 352 | EAN/UPC: 2852 | Nombre:  Soporte TV Negra Kalley | Marca: Generico | Referencia: Soporte TV | Precio de Compra: 17000  | Precio de Venta: 35000 | Cantidad: 10', '2017-11-18 16:01:53', '2017-11-18 16:01:53');
INSERT INTO `logs` VALUES ('298', '24', 'Producto Creado:  ID: 353 | EAN/UPC: 3917 | Nombre:  Batería Huawei Y30 | Marca: Huawei | Referencia: Batería Huawei Y30 | Precio de Compra: 5500  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-20 08:59:20', '2017-11-20 08:59:20');
INSERT INTO `logs` VALUES ('299', '24', 'Producto Creado:  ID: 354 | EAN/UPC: 1281 | Nombre: Batería Huawei G610 | Marca: Huawei | Referencia: Batería Huawei G610 | Precio de Compra: 6000  | Precio de Venta: 22000 | Cantidad: 10', '2017-11-20 09:02:49', '2017-11-20 09:02:49');
INSERT INTO `logs` VALUES ('300', '24', 'Producto Creado:  ID: 355 | EAN/UPC: 3269 | Nombre: Bateria Alcatel 6030 | Marca: Alcatel | Referencia: Bateria Alcatel 6030 | Precio de Compra: 8000  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-20 09:05:55', '2017-11-20 09:05:55');
INSERT INTO `logs` VALUES ('301', '24', 'Producto Creado:  ID: 356 | EAN/UPC: 2649 | Nombre:  Batería Alcatel OT 710 | Marca: Alcatel | Referencia: Batería Alcatel OT 710 | Precio de Compra: 2300  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-20 09:09:34', '2017-11-20 09:09:34');
INSERT INTO `logs` VALUES ('302', '24', 'Producto Creado:  ID: 357 | EAN/UPC: 1515 | Nombre:  Bateria Alcatel POP C1 | Marca: Alcatel | Referencia: Bateria Alcatel POP C1 | Precio de Compra: 5500  | Precio de Venta: 23000 | Cantidad: 10', '2017-11-20 09:13:16', '2017-11-20 09:13:16');
INSERT INTO `logs` VALUES ('303', '24', 'Producto Creado:  ID: 358 | EAN/UPC: 2501 | Nombre:  Batería Huawei Y5 II | Marca: Huawei | Referencia: Batería Huawei Y5 II | Precio de Compra: 5500  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-20 09:16:05', '2017-11-20 09:16:05');
INSERT INTO `logs` VALUES ('304', '24', 'Producto Creado:  ID: 359 | EAN/UPC: 10213 | Nombre:  Batería Huawei Y511 | Marca: Huawei | Referencia: Batería Huawei Y511 | Precio de Compra: 6000  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-20 09:19:21', '2017-11-20 09:19:21');
INSERT INTO `logs` VALUES ('305', '24', 'Producto Creado:  ID: 360 | EAN/UPC: 3222 | Nombre: Portatil Lenovo V110 Negro | Marca: Lenovo  | Referencia: Lenovo V110-14IAP | Precio de Compra: 660000  | Precio de Venta: 780000 | Cantidad: 10', '2017-11-24 09:20:08', '2017-11-24 09:20:08');
INSERT INTO `logs` VALUES ('306', '24', 'Producto Creado:  ID: 361 | EAN/UPC: 3223 | Nombre: Portátil acer Aspire ES 14 | Marca: acer | Referencia: Portátil acer Aspire ES 14 | Precio de Compra: 665000  | Precio de Venta: 750000 | Cantidad: 10', '2017-11-24 09:31:41', '2017-11-24 09:31:41');
INSERT INTO `logs` VALUES ('307', '24', 'Producto Creado:  ID: 362 | EAN/UPC: 10214 | Nombre: Tblets Sky Platinum 7.0+ | Marca: SKY  | Referencia: Sky Platinum 7.0+ | Precio de Compra: 170000  | Precio de Venta: 265000 | Cantidad: 10', '2017-11-24 09:39:33', '2017-11-24 09:39:33');
INSERT INTO `logs` VALUES ('308', '2', 'Producto Editado:  ID: 338 | EAN/UPC: 409 | Nombre: Audífonos Iphone Blanco | Marca: Apple | Referencia: Audífonos Iphone Blanco | Precio de Compra: 2000  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-30 09:48:52', '2017-11-30 09:48:52');
INSERT INTO `logs` VALUES ('309', '2', 'Producto Editado:  ID: 279 | EAN/UPC: 10174 | Nombre:  XBOX ONE Negro | Marca: XBOX | Referencia: XBOX ONE Negro | Precio de Compra: 900000  | Precio de Venta: 1200000 | Cantidad: 3', '2017-11-30 09:53:29', '2017-11-30 09:53:29');
INSERT INTO `logs` VALUES ('310', '24', 'Producto Editado:  ID: 287 | EAN/UPC: 10182 | Nombre: Parlante iBastek Negro | Marca: iBastek | Referencia: Parlantes | Precio de Compra: 270000  | Precio de Venta: 350000 | Cantidad: 10', '2017-11-30 10:20:23', '2017-11-30 10:20:23');
INSERT INTO `logs` VALUES ('311', '24', 'Producto Editado:  ID: 287 | EAN/UPC: 10182 | Nombre: Parlante iBastek Negro | Marca: iBastek | Referencia: Parlantes | Precio de Compra: 270000  | Precio de Venta: 380000 | Cantidad: 10', '2017-11-30 10:20:43', '2017-11-30 10:20:43');
INSERT INTO `logs` VALUES ('312', '24', 'Producto Editado:  ID: 287 | EAN/UPC: 10182 | Nombre: Parlante iBastek Negro | Marca: iBastek | Referencia: Parlantes | Precio de Compra: 270000  | Precio de Venta: 370000 | Cantidad: 10', '2017-11-30 10:21:10', '2017-11-30 10:21:10');
INSERT INTO `logs` VALUES ('313', '24', 'Producto Editado:  ID: 361 | EAN/UPC: 3223 | Nombre: Portátil acer Aspire ES 14 | Marca: acer | Referencia: Portátil acer Aspire ES 14 | Precio de Compra: 665000  | Precio de Venta: 800000 | Cantidad: 10', '2017-11-30 10:24:10', '2017-11-30 10:24:10');
INSERT INTO `logs` VALUES ('314', '24', 'Producto Editado:  ID: 361 | EAN/UPC: 3223 | Nombre: Portátil acer Aspire ES 14 | Marca: acer | Referencia: Portátil acer Aspire ES 14 | Precio de Compra: 665000  | Precio de Venta: 850000 | Cantidad: 10', '2017-11-30 10:24:24', '2017-11-30 10:24:24');
INSERT INTO `logs` VALUES ('315', '24', 'Producto Editado:  ID: 361 | EAN/UPC: 3223 | Nombre: Portátil acer Aspire ES 14 | Marca: acer | Referencia: Portátil acer Aspire ES 14 | Precio de Compra: 665000  | Precio de Venta: 860000 | Cantidad: 10', '2017-11-30 10:24:41', '2017-11-30 10:24:41');
INSERT INTO `logs` VALUES ('316', '24', 'Producto Editado:  ID: 360 | EAN/UPC: 3222 | Nombre: Portatil Lenovo V110 Negro | Marca: Lenovo  | Referencia: Lenovo V110-14IAP | Precio de Compra: 660000  | Precio de Venta: 920000 | Cantidad: 10', '2017-11-30 10:25:21', '2017-11-30 10:25:21');
INSERT INTO `logs` VALUES ('317', '24', 'Producto Editado:  ID: 360 | EAN/UPC: 3222 | Nombre: Portatil Lenovo V110 Negro | Marca: Lenovo  | Referencia: Lenovo V110-14IAP | Precio de Compra: 660000  | Precio de Venta: 890000 | Cantidad: 10', '2017-11-30 10:25:40', '2017-11-30 10:25:40');
INSERT INTO `logs` VALUES ('318', '24', 'Producto Editado:  ID: 267 | EAN/UPC: 10166 | Nombre: XBOX 360 Negro Mas XB 3028 | Marca: XBOX | Referencia: XBOX 360 Negro | Precio de Compra: 500000  | Precio de Venta: 680000 | Cantidad: 10', '2017-11-30 10:27:14', '2017-11-30 10:27:14');
INSERT INTO `logs` VALUES ('319', '24', 'Producto Editado:  ID: 267 | EAN/UPC: 10166 | Nombre: XBOX 360 Negro Mas XB 3028 | Marca: XBOX | Referencia: XBOX 360 Negro | Precio de Compra: 500000  | Precio de Venta: 690000 | Cantidad: 10', '2017-11-30 10:27:30', '2017-11-30 10:27:30');
INSERT INTO `logs` VALUES ('320', '24', 'Producto Editado:  ID: 280 | EAN/UPC: 10175 | Nombre: Play Station 4 Negro Incluye 3 Juegos | Marca: SONY | Referencia: Play Station | Precio de Compra: 980000  | Precio de Venta: 1250000 | Cantidad: 10', '2017-11-30 10:29:29', '2017-11-30 10:29:29');
INSERT INTO `logs` VALUES ('321', '24', 'Producto Editado:  ID: 280 | EAN/UPC: 10175 | Nombre: Play Station 4 Negro Incluye 3 Juegos | Marca: SONY | Referencia: Play Station | Precio de Compra: 980000  | Precio de Venta: 1300000 | Cantidad: 10', '2017-11-30 10:29:50', '2017-11-30 10:29:50');
INSERT INTO `logs` VALUES ('322', '24', 'Producto Editado:  ID: 269 | EAN/UPC: 10168 | Nombre: SONY PSP 300 | Marca: SONY | Referencia: PSP | Precio de Compra: 320000  | Precio de Venta: 410000 | Cantidad: 10', '2017-11-30 10:31:10', '2017-11-30 10:31:10');
INSERT INTO `logs` VALUES ('323', '24', 'Producto Editado:  ID: 269 | EAN/UPC: 10168 | Nombre: SONY PSP 300 | Marca: SONY | Referencia: PSP | Precio de Compra: 320000  | Precio de Venta: 400000 | Cantidad: 10', '2017-11-30 10:31:27', '2017-11-30 10:31:27');
INSERT INTO `logs` VALUES ('324', '24', 'Producto Editado:  ID: 287 | EAN/UPC: 10182 | Nombre: Parlante iBastek Negro | Marca: iBastek | Referencia: Parlantes | Precio de Compra: 270000  | Precio de Venta: 380000 | Cantidad: 10', '2017-11-30 10:32:37', '2017-11-30 10:32:37');
INSERT INTO `logs` VALUES ('325', '24', 'Producto Creado:  ID: 363 | EAN/UPC: 10215 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:41:37', '2017-11-30 10:41:37');
INSERT INTO `logs` VALUES ('326', '24', 'Producto Creado:  ID: 364 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:41:44', '2017-11-30 10:41:44');
INSERT INTO `logs` VALUES ('327', '24', 'Producto Creado:  ID: 365 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:42:50', '2017-11-30 10:42:50');
INSERT INTO `logs` VALUES ('328', '24', 'Producto Creado:  ID: 366 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:43:57', '2017-11-30 10:43:57');
INSERT INTO `logs` VALUES ('329', '24', 'Producto Creado:  ID: 367 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:44:55', '2017-11-30 10:44:55');
INSERT INTO `logs` VALUES ('330', '24', 'Producto Creado:  ID: 368 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:45:22', '2017-11-30 10:45:22');
INSERT INTO `logs` VALUES ('331', '24', 'Producto Creado:  ID: 369 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:45:44', '2017-11-30 10:45:44');
INSERT INTO `logs` VALUES ('332', '24', 'Producto Creado:  ID: 370 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:46:42', '2017-11-30 10:46:42');
INSERT INTO `logs` VALUES ('333', '24', 'Producto Creado:  ID: 371 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:49:48', '2017-11-30 10:49:48');
INSERT INTO `logs` VALUES ('334', '24', 'Producto Creado:  ID: 372 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:50:52', '2017-11-30 10:50:52');
INSERT INTO `logs` VALUES ('335', '24', 'Producto Creado:  ID: 373 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:52:24', '2017-11-30 10:52:24');
INSERT INTO `logs` VALUES ('336', '24', 'Producto Creado:  ID: 374 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:52:29', '2017-11-30 10:52:29');
INSERT INTO `logs` VALUES ('337', '24', 'Producto Creado:  ID: 375 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 10:54:42', '2017-11-30 10:54:42');
INSERT INTO `logs` VALUES ('338', '24', 'Producto Desactivado:  ID: 362 | EAN/UPC: 10214 | Nombre: Sky Platinum 7.0+ | Marca: SKY  | Referencia: Sky Platinum 7.0+ | Precio de Compra: 170000  | Precio de Venta: 265000 | Cantidad: 10', '2017-11-30 10:55:21', '2017-11-30 10:55:21');
INSERT INTO `logs` VALUES ('339', '24', 'Producto Editado:  ID: 345 | EAN/UPC: 10212 | Nombre: Auriculares Music Digital Verde | Marca: Generico | Referencia: Auricular | Precio de Compra: 19000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-30 10:55:48', '2017-11-30 10:55:48');
INSERT INTO `logs` VALUES ('340', '24', 'Producto Editado:  ID: 345 | EAN/UPC: 10212 | Nombre: Auriculares Music Digital Verde | Marca: Generico | Referencia: Auricular | Precio de Compra: 19000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-30 10:56:36', '2017-11-30 10:56:36');
INSERT INTO `logs` VALUES ('341', '24', 'Producto Editado:  ID: 344 | EAN/UPC: 3569 | Nombre: Auriculares Music Digital Negro | Marca: Generico | Referencia: Auricular | Precio de Compra: 19000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-30 10:57:10', '2017-11-30 10:57:10');
INSERT INTO `logs` VALUES ('342', '24', 'Producto Desactivado:  ID: 339 | EAN/UPC: 10209 | Nombre: Cable USB 5en1 | Marca: Generico | Referencia: Cablr USB 5en1 | Precio de Compra: 5000  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-30 10:57:38', '2017-11-30 10:57:38');
INSERT INTO `logs` VALUES ('343', '24', 'Producto Activado:  ID: 339 | EAN/UPC: 10209 | Nombre: Cable USB 5en1 | Marca: Generico | Referencia: Cablr USB 5en1 | Precio de Compra: 5000  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-30 10:57:47', '2017-11-30 10:57:47');
INSERT INTO `logs` VALUES ('344', '24', 'Producto Editado:  ID: 337 | EAN/UPC: 10208 | Nombre:  Audífonos Samsung Negro | Marca: Samsung | Referencia: Audífonos Samsung | Precio de Compra: 1600  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-30 10:58:43', '2017-11-30 10:58:43');
INSERT INTO `logs` VALUES ('345', '24', 'Producto Editado:  ID: 336 | EAN/UPC: 3520 | Nombre:  Audífonos Samsung Blanco | Marca: Samsung | Referencia: Audífonos Samsung | Precio de Compra: 1600  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-30 10:59:21', '2017-11-30 10:59:21');
INSERT INTO `logs` VALUES ('346', '24', 'Producto Editado:  ID: 336 | EAN/UPC: 3520 | Nombre:  Audífonos Samsung Blanco | Marca: Samsung | Referencia: Audífonos Samsung | Precio de Compra: 1600  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-30 10:59:38', '2017-11-30 10:59:38');
INSERT INTO `logs` VALUES ('347', '24', 'Producto Editado:  ID: 306 | EAN/UPC: 10195 | Nombre: Auricular G6 Gaming Negro con Azul | Marca: Generico | Referencia: Auricular | Precio de Compra: 40000  | Precio de Venta: 60000 | Cantidad: 10', '2017-11-30 11:00:24', '2017-11-30 11:00:24');
INSERT INTO `logs` VALUES ('348', '24', 'Producto Editado:  ID: 306 | EAN/UPC: 10195 | Nombre: Auricular G6 Gaming Negro con Azul | Marca: Generico | Referencia: Auricular | Precio de Compra: 40000  | Precio de Venta: 60000 | Cantidad: 10', '2017-11-30 11:00:37', '2017-11-30 11:00:37');
INSERT INTO `logs` VALUES ('349', '24', 'Producto Editado:  ID: 306 | EAN/UPC: 10195 | Nombre: Auricular G6 Gaming Negro con Azul | Marca: Generico | Referencia: Auricular | Precio de Compra: 40000  | Precio de Venta: 60000 | Cantidad: 10', '2017-11-30 11:01:09', '2017-11-30 11:01:09');
INSERT INTO `logs` VALUES ('350', '24', 'Producto Creado:  ID: 376 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 11:03:06', '2017-11-30 11:03:06');
INSERT INTO `logs` VALUES ('351', '24', 'Producto Creado:  ID: 377 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 11:03:24', '2017-11-30 11:03:24');
INSERT INTO `logs` VALUES ('352', '24', 'Producto Creado:  ID: 378 | EAN/UPC: 10216 | Nombre:  Social Sport ultra Azul  | Marca: ZOOM | Referencia: Social Sport ultra  | Precio de Compra: 105000  | Precio de Venta: 180000 | Cantidad: 10', '2017-11-30 11:13:51', '2017-11-30 11:13:51');
INSERT INTO `logs` VALUES ('353', '24', 'Producto Creado:  ID: 379 | EAN/UPC: 10216 | Nombre:  Social Sport ultra Azul  | Marca: ZOOM | Referencia: Social Sport ultra  | Precio de Compra: 105000  | Precio de Venta: 180000 | Cantidad: 10', '2017-11-30 11:15:14', '2017-11-30 11:15:14');
INSERT INTO `logs` VALUES ('354', '24', 'Producto Creado:  ID: 380 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 11:16:25', '2017-11-30 11:16:25');
INSERT INTO `logs` VALUES ('355', '2', 'Producto Creado:  ID: 381 | EAN/UPC: 10216 | Nombre: Generico Auricular | Marca: Generico | Referencia: Auricular | Precio de Compra: 200000  | Precio de Venta: 300000 | Cantidad: 10', '2017-11-30 11:18:06', '2017-11-30 11:18:06');
INSERT INTO `logs` VALUES ('356', '2', 'Producto Creado:  ID: 382 | EAN/UPC: 10216 | Nombre: Generico Auricular | Marca: Generico | Referencia: Auricular | Precio de Compra: 200000  | Precio de Venta: 300000 | Cantidad: 10', '2017-11-30 11:18:24', '2017-11-30 11:18:24');
INSERT INTO `logs` VALUES ('357', '2', 'Producto Creado:  ID: 383 | EAN/UPC: 10216 | Nombre: Generico Auricular | Marca: Generico | Referencia: Auricular | Precio de Compra: 200000  | Precio de Venta: 300000 | Cantidad: 10', '2017-11-30 11:18:36', '2017-11-30 11:18:36');
INSERT INTO `logs` VALUES ('358', '24', 'Producto Creado:  ID: 384 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 11:25:52', '2017-11-30 11:25:52');
INSERT INTO `logs` VALUES ('359', '2', 'Producto Creado:  ID: 385 | EAN/UPC: 10216 | Nombre: Generico Adidas | Marca: Generico | Referencia: Adidas | Precio de Compra: 123  | Precio de Venta: 234 | Cantidad: 10', '2017-11-30 11:27:13', '2017-11-30 11:27:13');
INSERT INTO `logs` VALUES ('360', '24', 'Producto Creado:  ID: 386 | EAN/UPC: 10216 | Nombre:  Social Sport ultra Azul  | Marca: ZOOM | Referencia: Social Sport ultra  | Precio de Compra: 105000  | Precio de Venta: 180000 | Cantidad: 10', '2017-11-30 11:34:50', '2017-11-30 11:34:50');
INSERT INTO `logs` VALUES ('361', '2', 'Producto Creado:  ID: 387 | EAN/UPC: 10216 | Nombre: Generico Adidas | Marca: Generico | Referencia: Adidas | Precio de Compra: 123  | Precio de Venta: 234 | Cantidad: 10', '2017-11-30 11:35:20', '2017-11-30 11:35:20');
INSERT INTO `logs` VALUES ('362', '24', 'Producto Creado:  ID: 388 | EAN/UPC: 10216 | Nombre:  Social Sport ultra Azul  | Marca: ZOOM | Referencia: Social Sport ultra  | Precio de Compra: 105000  | Precio de Venta: 180000 | Cantidad: 10', '2017-11-30 11:36:59', '2017-11-30 11:36:59');
INSERT INTO `logs` VALUES ('363', '24', 'Producto Creado:  ID: 389 | EAN/UPC: 10216 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 11:38:28', '2017-11-30 11:38:28');
INSERT INTO `logs` VALUES ('364', '24', 'Producto Creado:  ID: 390 | EAN/UPC: 10216 | Nombre:  Social Sport ultra Azul  | Marca: ZOOM | Referencia: Social Sport ultra  | Precio de Compra: 105000  | Precio de Venta: 180000 | Cantidad: 10', '2017-11-30 11:39:41', '2017-11-30 11:39:41');
INSERT INTO `logs` VALUES ('365', '24', 'Producto Creado:  ID: 391 | EAN/UPC: 10217 | Nombre: PSP VITA Sony Negro  | Marca: SONY | Referencia: PSP VITA | Precio de Compra: 800000  | Precio de Venta: 850000 | Cantidad: 5', '2017-11-30 11:39:46', '2017-11-30 11:39:46');
INSERT INTO `logs` VALUES ('366', '24', 'Producto Editado:  ID: 346 | EAN/UPC: 2944 | Nombre: Control PC Play 2 | Marca: Generico | Referencia: Control PC | Precio de Compra: 23000  | Precio de Venta: 45000 | Cantidad: 10', '2017-11-30 14:45:12', '2017-11-30 14:45:12');
INSERT INTO `logs` VALUES ('367', '24', 'Producto Editado:  ID: 339 | EAN/UPC: 10209 | Nombre: Cable USB 5en1 | Marca: Generico | Referencia: Cablr USB 5en1 | Precio de Compra: 5000  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-30 14:51:50', '2017-11-30 14:51:50');
INSERT INTO `logs` VALUES ('368', '24', 'Producto Editado:  ID: 328 | EAN/UPC: 4 | Nombre:  Cable V8 LAZO  | Marca: Generico | Referencia: Cable V8 LAZO | Precio de Compra: 3000  | Precio de Venta: 10000 | Cantidad: 10', '2017-11-30 14:55:29', '2017-11-30 14:55:29');
INSERT INTO `logs` VALUES ('369', '24', 'Producto Editado:  ID: 327 | EAN/UPC: 3319 | Nombre:  Cable CBL-USBEX | Marca: Generico | Referencia: Cable CBL-USBEX/10cm | Precio de Compra: 13000  | Precio de Venta: 25000 | Cantidad: 10', '2017-11-30 14:55:58', '2017-11-30 14:55:58');
INSERT INTO `logs` VALUES ('370', '24', 'Producto Editado:  ID: 326 | EAN/UPC: 2034 | Nombre:  Cable VGA 1,5cms | Marca: Generico | Referencia: Cable VGA | Precio de Compra: 2600  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-30 14:56:24', '2017-11-30 14:56:24');
INSERT INTO `logs` VALUES ('371', '24', 'Producto Editado:  ID: 343 | EAN/UPC: 10211 | Nombre: MP4 Morado | Marca: Generico | Referencia: MP4 | Precio de Compra: 25000  | Precio de Venta: 40000 | Cantidad: 10', '2017-11-30 14:59:34', '2017-11-30 14:59:34');
INSERT INTO `logs` VALUES ('372', '24', 'Producto Editado:  ID: 342 | EAN/UPC: 10210 | Nombre: MP4 Rosado | Marca: Generico | Referencia: MP4 | Precio de Compra: 25000  | Precio de Venta: 40000 | Cantidad: 10', '2017-11-30 15:00:07', '2017-11-30 15:00:07');
INSERT INTO `logs` VALUES ('373', '24', 'Producto Editado:  ID: 341 | EAN/UPC: 1693 | Nombre: MP4 Azul Agua Marina | Marca: Generico | Referencia: MP4 | Precio de Compra: 25000  | Precio de Venta: 40000 | Cantidad: 10', '2017-11-30 15:00:49', '2017-11-30 15:00:49');
INSERT INTO `logs` VALUES ('374', '24', 'Producto Editado:  ID: 318 | EAN/UPC: ¡3393 | Nombre: Memoria USB 16GB | Marca: Kingston  | Referencia: Memoria USB 16GB | Precio de Compra: 13000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-30 15:09:57', '2017-11-30 15:09:57');
INSERT INTO `logs` VALUES ('375', '24', 'Producto Editado:  ID: 317 | EAN/UPC: ¡3454 | Nombre: Micro SD 4GB | Marca: Kingston  | Referencia: Micro SD 4GB | Precio de Compra: 8000  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-30 15:10:21', '2017-11-30 15:10:21');
INSERT INTO `logs` VALUES ('376', '24', 'Producto Editado:  ID: 316 | EAN/UPC: ¡737 | Nombre: Memoria USB 4GB | Marca: Kingston  | Referencia: USB Kingston 4GB | Precio de Compra: 10000  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-30 15:10:47', '2017-11-30 15:10:47');
INSERT INTO `logs` VALUES ('377', '24', 'Producto Editado:  ID: 316 | EAN/UPC: ¡737 | Nombre: Memoria USB 4GB | Marca: Kingston  | Referencia: USB Kingston 4GB | Precio de Compra: 10000  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-30 15:11:04', '2017-11-30 15:11:04');
INSERT INTO `logs` VALUES ('378', '24', 'Producto Editado:  ID: 315 | EAN/UPC: ¡1398 | Nombre: Memoria USB 32GB | Marca: Kingston  | Referencia: USB Kingston 32GB | Precio de Compra: 23000  | Precio de Venta: 35000 | Cantidad: 10', '2017-11-30 15:11:32', '2017-11-30 15:11:32');
INSERT INTO `logs` VALUES ('379', '24', 'Producto Editado:  ID: 319 | EAN/UPC: ¡2460 | Nombre: Control XBOX 360 | Marca: XBOX | Referencia: Control XBOX 360 | Precio de Compra: 93000  | Precio de Venta: 140000 | Cantidad: 10', '2017-11-30 15:13:31', '2017-11-30 15:13:31');
INSERT INTO `logs` VALUES ('380', '24', 'Producto Editado:  ID: 273 | EAN/UPC: ¡3930 | Nombre: Control Dual Shock PS4 | Marca: SONY | Referencia: Control PlayStation | Precio de Compra: 40000  | Precio de Venta: 70000 | Cantidad: 10', '2017-11-30 15:15:03', '2017-11-30 15:15:03');
INSERT INTO `logs` VALUES ('381', '24', 'Producto Editado:  ID: 272 | EAN/UPC: 10169 | Nombre: Control PlayStation 3 Blanco | Marca: SONY | Referencia: Control PlayStation | Precio de Compra: 40000  | Precio de Venta: 70000 | Cantidad: 10', '2017-11-30 15:15:24', '2017-11-30 15:15:24');
INSERT INTO `logs` VALUES ('382', '24', 'Producto Editado:  ID: 271 | EAN/UPC: 711719990048 | Nombre: Control Dual Sock 3 | Marca: SONY | Referencia: Control PlayStation | Precio de Compra: 40000  | Precio de Venta: 70000 | Cantidad: 10', '2017-11-30 15:15:49', '2017-11-30 15:15:49');
INSERT INTO `logs` VALUES ('383', '24', 'Producto Editado:  ID: 270 | EAN/UPC: ¡3931 | Nombre: Control XBOX ONE | Marca: XBOX | Referencia: CONTROL XBOX ONE | Precio de Compra: 93000  | Precio de Venta: 150000 | Cantidad: 10', '2017-11-30 15:16:08', '2017-11-30 15:16:08');
INSERT INTO `logs` VALUES ('384', '24', 'Producto Editado:  ID: 266 | EAN/UPC: 853582007451 | Nombre: Sky Platium 4.0 rosado | Marca: SKY  | Referencia: Sky platinum 4.0 rosado | Precio de Compra: 108000  | Precio de Venta: 160000 | Cantidad: 10', '2017-11-30 15:20:29', '2017-11-30 15:20:29');
INSERT INTO `logs` VALUES ('385', '24', 'Producto Editado:  ID: 266 | EAN/UPC: 853582007451 | Nombre: Sky Platium 4.0 rosado | Marca: SKY  | Referencia: Sky platinum 4.0 rosado | Precio de Compra: 108000  | Precio de Venta: 170000 | Cantidad: 10', '2017-11-30 15:20:43', '2017-11-30 15:20:43');
INSERT INTO `logs` VALUES ('386', '24', 'Producto Editado:  ID: 265 | EAN/UPC: 853582007468 | Nombre: Sky Platium 4.0 blanco | Marca: SKY  | Referencia: Sky Platinum 4.0 blanco | Precio de Compra: 108000  | Precio de Venta: 170000 | Cantidad: 10', '2017-11-30 15:22:28', '2017-11-30 15:22:28');
INSERT INTO `logs` VALUES ('387', '24', 'Producto Editado:  ID: 263 | EAN/UPC: 853582007314 | Nombre: Sky Fuego 5.0+ Dorado | Marca: SKY  | Referencia: SKY Fuego 5.0+ | Precio de Compra: 155000  | Precio de Venta: 250000 | Cantidad: 10', '2017-11-30 15:27:20', '2017-11-30 15:27:20');
INSERT INTO `logs` VALUES ('388', '24', 'Producto Activado:  ID: 263 | EAN/UPC: 853582007314 | Nombre: Sky Fuego 5.0+ Dorado | Marca: SKY  | Referencia: SKY Fuego 5.0+ | Precio de Compra: 155000  | Precio de Venta: 250000 | Cantidad: 10', '2017-11-30 15:28:01', '2017-11-30 15:28:01');
INSERT INTO `logs` VALUES ('389', '24', 'Producto Editado:  ID: 344 | EAN/UPC: 3569 | Nombre: Auriculares Music Digital Negro | Marca: Generico | Referencia: Auricular | Precio de Compra: 19000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-30 15:33:22', '2017-11-30 15:33:22');
INSERT INTO `logs` VALUES ('390', '24', 'Producto Activado:  ID: 190 | EAN/UPC: 10118 | Nombre: Audífonos Diadema SONY Negro | Marca: Generico | Referencia: SONY | Precio de Compra: 12000  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-30 15:37:28', '2017-11-30 15:37:28');
INSERT INTO `logs` VALUES ('391', '24', 'Producto Desactivado:  ID: 190 | EAN/UPC: 10118 | Nombre: Audífonos Diadema SONY Negro | Marca: Generico | Referencia: SONY | Precio de Compra: 12000  | Precio de Venta: 20000 | Cantidad: 10', '2017-11-30 15:38:54', '2017-11-30 15:38:54');
INSERT INTO `logs` VALUES ('392', '24', 'Producto Editado:  ID: 345 | EAN/UPC: 10212 | Nombre: Auriculares Music Digital Verde | Marca: Generico | Referencia: Auricular | Precio de Compra: 19000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-30 15:39:09', '2017-11-30 15:39:09');
INSERT INTO `logs` VALUES ('393', '24', 'Producto Desactivado:  ID: 344 | EAN/UPC: 3569 | Nombre: Auriculares Music Digital Negro | Marca: Generico | Referencia: Auricular | Precio de Compra: 19000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-30 15:39:25', '2017-11-30 15:39:25');
INSERT INTO `logs` VALUES ('394', '24', 'Producto Activado:  ID: 344 | EAN/UPC: 3569 | Nombre: Auriculares Music Digital Negro | Marca: Generico | Referencia: Auricular | Precio de Compra: 19000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-30 15:39:33', '2017-11-30 15:39:33');
INSERT INTO `logs` VALUES ('395', '24', 'Producto Editado:  ID: 344 | EAN/UPC: 3569 | Nombre: Auriculares Music Digital Negro | Marca: Generico | Referencia: Auricular | Precio de Compra: 19000  | Precio de Venta: 30000 | Cantidad: 10', '2017-11-30 15:39:48', '2017-11-30 15:39:48');
INSERT INTO `logs` VALUES ('396', '24', 'Producto Editado:  ID: 322 | EAN/UPC: 10204 | Nombre: Cable  IPH7 ADAP  | Marca: Generico | Referencia: cable 2x1 | Precio de Compra: 6500  | Precio de Venta: 15000 | Cantidad: 10', '2017-11-30 15:43:29', '2017-11-30 15:43:29');
INSERT INTO `logs` VALUES ('397', '24', 'Producto Editado:  ID: 321 | EAN/UPC: 10203 | Nombre:  Cable HDMI 1x2 Negro | Marca: Generico | Referencia: Cable HDMI 1x2 | Precio de Compra: 36000  | Precio de Venta: 45000 | Cantidad: 10', '2017-11-30 15:43:53', '2017-11-30 15:43:53');
INSERT INTO `logs` VALUES ('398', '24', 'Producto Editado:  ID: 320 | EAN/UPC: 10202 | Nombre:  Guaya Para Computador MST | Marca: Generico | Referencia: Guaya MST-1038G-2 | Precio de Compra: 43000  | Precio de Venta: 55000 | Cantidad: 10', '2017-11-30 15:44:15', '2017-11-30 15:44:15');
INSERT INTO `logs` VALUES ('399', '24', 'Producto Editado:  ID: 306 | EAN/UPC: 10195 | Nombre: Auricular G6 Gaming Negro con Azul | Marca: Generico | Referencia: Auricular | Precio de Compra: 40000  | Precio de Venta: 60000 | Cantidad: 10', '2017-11-30 15:47:09', '2017-11-30 15:47:09');
INSERT INTO `logs` VALUES ('400', '24', 'Producto Creado:  ID: 392 | EAN/UPC: 10218 | Nombre:  Bateria sansumg J2 Prime | Marca: Samsung | Referencia: Bateria J2 Prime | Precio de Compra: 10000  | Precio de Venta: 25000 | Cantidad: 10', '2017-11-30 17:21:29', '2017-11-30 17:21:29');
INSERT INTO `logs` VALUES ('401', '2', 'Producto Creado:  ID: 393 | EAN/UPC:  | Nombre: Apple iPhone X Blanco 128GB | Marca: Apple | Referencia: iPhone X | Precio de Compra: 4000000  | Precio de Venta: 4800000 | Cantidad: 1', '2017-12-15 16:47:48', '2017-12-15 16:47:48');

-- ----------------------------
-- Table structure for lots
-- ----------------------------
DROP TABLE IF EXISTS `lots`;
CREATE TABLE `lots` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `supplier_id` int(10) unsigned NOT NULL,
  `purchase_price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `quantity` int(10) NOT NULL,
  `state` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_product` (`product_id`) USING BTREE,
  KEY `fk_id_supplier` (`supplier_id`) USING BTREE,
  CONSTRAINT `lots_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lots_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=621 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lots
-- ----------------------------
INSERT INTO `lots` VALUES ('239', '15', '1', '30000', '48000', '3', 'new', '2017-02-04 11:16:51', '2017-08-02 13:17:28');
INSERT INTO `lots` VALUES ('240', '16', '1', '30000', '48000', '10', 'new', '2017-02-04 11:20:58', '2017-08-02 13:18:00');
INSERT INTO `lots` VALUES ('241', '17', '1', '36000', '60000', '10', 'new', '2017-02-04 11:24:59', '2017-02-04 11:24:59');
INSERT INTO `lots` VALUES ('242', '18', '1', '165000', '200000', '10', 'new', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `lots` VALUES ('243', '19', '1', '165000', '200000', '10', 'new', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `lots` VALUES ('244', '20', '1', '120000', '150000', '10', 'new', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `lots` VALUES ('245', '21', '1', '130000', '170000', '10', 'new', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `lots` VALUES ('246', '22', '1', '130000', '170000', '10', 'new', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `lots` VALUES ('247', '23', '1', '130000', '170000', '10', 'new', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `lots` VALUES ('248', '24', '1', '240000', '280000', '10', 'new', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `lots` VALUES ('249', '25', '1', '240000', '280000', '10', 'new', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `lots` VALUES ('250', '26', '1', '480000', '550000', '10', 'new', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `lots` VALUES ('251', '27', '1', '525000', '580000', '10', 'new', '2017-02-04 12:41:50', '2017-08-02 13:31:32');
INSERT INTO `lots` VALUES ('252', '28', '1', '430000', '500000', '10', 'new', '2017-02-04 12:53:10', '2017-02-04 12:53:10');
INSERT INTO `lots` VALUES ('253', '29', '1', '15000', '30000', '50', 'new', '2017-02-04 13:35:41', '2017-02-04 13:35:41');
INSERT INTO `lots` VALUES ('256', '32', '1', '7000', '18000', '10', 'new', '2017-02-04 14:28:21', '2017-02-04 14:28:21');
INSERT INTO `lots` VALUES ('257', '33', '1', '7000', '18000', '10', 'new', '2017-02-04 14:39:33', '2017-02-04 14:39:33');
INSERT INTO `lots` VALUES ('258', '34', '1', '7000', '18000', '10', 'new', '2017-02-04 14:40:37', '2017-02-04 14:40:37');
INSERT INTO `lots` VALUES ('259', '35', '1', '7000', '18000', '10', 'new', '2017-02-04 14:43:18', '2017-02-04 14:43:18');
INSERT INTO `lots` VALUES ('260', '36', '1', '7000', '18000', '10', 'new', '2017-02-04 14:45:11', '2017-02-04 14:45:11');
INSERT INTO `lots` VALUES ('261', '37', '1', '7000', '18000', '10', 'new', '2017-02-04 14:49:26', '2017-02-04 14:49:26');
INSERT INTO `lots` VALUES ('262', '38', '1', '7000', '18000', '10', 'new', '2017-02-04 14:50:42', '2017-02-04 14:50:42');
INSERT INTO `lots` VALUES ('263', '39', '1', '7000', '18000', '10', 'new', '2017-02-04 14:52:14', '2017-02-04 14:52:14');
INSERT INTO `lots` VALUES ('264', '40', '1', '7000', '18000', '10', 'new', '2017-02-04 14:57:38', '2017-02-04 14:57:38');
INSERT INTO `lots` VALUES ('265', '41', '1', '7000', '18000', '10', 'new', '2017-02-04 15:02:08', '2017-02-04 15:02:08');
INSERT INTO `lots` VALUES ('266', '42', '1', '7000', '18000', '10', 'new', '2017-02-04 15:02:56', '2017-02-04 15:02:56');
INSERT INTO `lots` VALUES ('267', '43', '1', '7000', '18000', '10', 'new', '2017-02-04 15:03:46', '2017-02-04 15:03:46');
INSERT INTO `lots` VALUES ('268', '44', '1', '7000', '18000', '10', 'new', '2017-02-04 15:04:38', '2017-02-04 15:04:38');
INSERT INTO `lots` VALUES ('269', '45', '1', '7000', '18000', '10', 'new', '2017-02-04 15:05:37', '2017-02-04 15:05:37');
INSERT INTO `lots` VALUES ('270', '46', '1', '7000', '18000', '10', 'new', '2017-02-04 15:06:21', '2017-02-04 15:06:21');
INSERT INTO `lots` VALUES ('271', '47', '1', '7000', '18000', '10', 'new', '2017-02-04 15:14:59', '2017-02-04 15:14:59');
INSERT INTO `lots` VALUES ('272', '48', '1', '7000', '18000', '10', 'new', '2017-02-04 15:17:03', '2017-02-04 15:17:03');
INSERT INTO `lots` VALUES ('273', '49', '1', '7000', '18000', '10', 'new', '2017-02-04 15:18:18', '2017-02-04 15:18:18');
INSERT INTO `lots` VALUES ('274', '50', '1', '7000', '18000', '10', 'new', '2017-02-04 15:22:10', '2017-02-04 15:22:10');
INSERT INTO `lots` VALUES ('275', '51', '1', '6000', '15000', '10', 'new', '2017-02-04 15:25:16', '2017-02-04 15:25:16');
INSERT INTO `lots` VALUES ('276', '52', '1', '7000', '15000', '10', 'new', '2017-02-04 15:29:22', '2017-02-04 15:29:22');
INSERT INTO `lots` VALUES ('277', '53', '1', '7000', '15000', '10', 'new', '2017-02-04 15:42:47', '2017-02-04 15:42:47');
INSERT INTO `lots` VALUES ('278', '54', '1', '7000', '15000', '10', 'new', '2017-02-04 15:44:09', '2017-02-04 15:44:09');
INSERT INTO `lots` VALUES ('279', '55', '1', '7000', '15000', '10', 'new', '2017-02-04 15:46:02', '2017-02-04 15:46:02');
INSERT INTO `lots` VALUES ('280', '56', '1', '7000', '15000', '10', 'new', '2017-02-04 15:47:28', '2017-02-04 15:47:28');
INSERT INTO `lots` VALUES ('281', '57', '1', '7000', '15000', '10', 'new', '2017-02-04 15:53:32', '2017-02-04 15:53:32');
INSERT INTO `lots` VALUES ('282', '58', '1', '7000', '15000', '10', 'new', '2017-02-04 15:58:26', '2017-02-04 15:58:26');
INSERT INTO `lots` VALUES ('283', '59', '1', '7000', '15000', '10', 'new', '2017-02-04 16:02:49', '2017-02-04 16:02:49');
INSERT INTO `lots` VALUES ('284', '60', '1', '7000', '15000', '10', 'new', '2017-02-04 16:03:34', '2017-02-04 16:03:34');
INSERT INTO `lots` VALUES ('285', '61', '1', '7000', '15000', '10', 'new', '2017-02-04 16:05:51', '2017-02-04 16:05:51');
INSERT INTO `lots` VALUES ('286', '62', '1', '7000', '15000', '10', 'new', '2017-02-04 16:09:35', '2017-02-04 16:09:35');
INSERT INTO `lots` VALUES ('287', '63', '1', '800000', '860000', '1', 'new', '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `lots` VALUES ('289', '65', '1', '305000', '360000', '10', 'new', '2017-02-05 01:39:26', '2017-08-02 14:36:45');
INSERT INTO `lots` VALUES ('290', '66', '1', '305000', '360000', '10', 'new', '2017-02-05 01:39:27', '2017-08-02 14:35:12');
INSERT INTO `lots` VALUES ('291', '67', '1', '305000', '360000', '10', 'new', '2017-02-05 01:39:29', '2017-08-02 14:33:23');
INSERT INTO `lots` VALUES ('292', '68', '1', '600000', '680000', '10', 'new', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `lots` VALUES ('293', '69', '1', '600000', '680000', '10', 'new', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `lots` VALUES ('294', '70', '1', '630000', '720000', '10', 'new', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `lots` VALUES ('295', '71', '1', '470000', '540000', '10', 'new', '2017-02-05 01:45:19', '2017-08-02 14:30:30');
INSERT INTO `lots` VALUES ('296', '72', '1', '820000', '900000', '10', 'new', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `lots` VALUES ('297', '73', '1', '820000', '900000', '10', 'new', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `lots` VALUES ('298', '74', '1', '295000', '360000', '10', 'new', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `lots` VALUES ('299', '75', '1', '295000', '360000', '10', 'new', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `lots` VALUES ('300', '76', '1', '490000', '550000', '10', 'new', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `lots` VALUES ('301', '77', '1', '490000', '550000', '10', 'new', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `lots` VALUES ('302', '78', '1', '220000', '250000', '10', 'new', '2017-02-05 01:45:32', '2017-08-02 09:04:45');
INSERT INTO `lots` VALUES ('303', '79', '1', '310000', '360000', '10', 'new', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `lots` VALUES ('304', '80', '1', '190000', '220000', '9', 'new', '2017-02-05 01:45:34', '2017-06-28 14:26:30');
INSERT INTO `lots` VALUES ('305', '81', '1', '260000', '300000', '10', 'new', '2017-02-05 02:05:20', '2017-02-05 02:05:20');
INSERT INTO `lots` VALUES ('306', '82', '1', '310000', '360000', '10', 'new', '2017-02-05 02:05:22', '2017-02-05 02:05:22');
INSERT INTO `lots` VALUES ('308', '84', '1', '230000', '280000', '10', 'new', '2017-02-05 02:05:25', '2017-02-05 02:05:25');
INSERT INTO `lots` VALUES ('309', '85', '1', '270000', '320000', '10', 'new', '2017-02-05 02:05:25', '2017-02-05 02:05:25');
INSERT INTO `lots` VALUES ('310', '86', '1', '620000', '690000', '10', 'new', '2017-02-24 09:44:01', '2017-08-02 14:27:22');
INSERT INTO `lots` VALUES ('311', '87', '1', '427000', '450000', '10', 'new', '2017-02-24 09:53:06', '2017-06-28 14:07:41');
INSERT INTO `lots` VALUES ('312', '88', '1', '650000', '700000', '10', 'new', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `lots` VALUES ('313', '89', '1', '300000', '350000', '10', 'new', '2017-02-24 10:10:43', '2017-02-24 10:10:43');
INSERT INTO `lots` VALUES ('314', '90', '1', '50000', '55000', '10', 'new', '2017-02-24 10:17:47', '2017-02-24 10:17:47');
INSERT INTO `lots` VALUES ('315', '91', '1', '110000', '140000', '10', 'new', '2017-02-24 10:27:57', '2017-02-24 10:27:57');
INSERT INTO `lots` VALUES ('316', '92', '1', '45000', '50000', '10', 'new', '2017-02-24 11:10:37', '2017-02-24 11:10:37');
INSERT INTO `lots` VALUES ('317', '93', '1', '45000', '50000', '10', 'new', '2017-02-24 11:17:40', '2017-02-24 11:17:40');
INSERT INTO `lots` VALUES ('318', '94', '1', '45000', '50000', '10', 'new', '2017-02-24 11:20:25', '2017-02-24 11:20:25');
INSERT INTO `lots` VALUES ('319', '95', '1', '45000', '50000', '10', 'new', '2017-02-24 11:29:41', '2017-02-24 11:29:41');
INSERT INTO `lots` VALUES ('321', '97', '1', '53000', '80000', '10', 'new', '2017-02-24 12:06:54', '2017-02-24 12:06:54');
INSERT INTO `lots` VALUES ('322', '98', '1', '53000', '80000', '10', 'new', '2017-02-24 12:07:33', '2017-02-24 12:07:33');
INSERT INTO `lots` VALUES ('323', '99', '1', '53000', '80000', '10', 'new', '2017-02-24 12:08:20', '2017-02-24 12:08:20');
INSERT INTO `lots` VALUES ('324', '100', '1', '53000', '80000', '10', 'new', '2017-02-24 12:09:21', '2017-02-24 12:09:21');
INSERT INTO `lots` VALUES ('325', '101', '1', '53000', '80000', '10', 'new', '2017-02-24 12:10:17', '2017-02-24 12:10:17');
INSERT INTO `lots` VALUES ('326', '102', '1', '37000', '60000', '10', 'new', '2017-02-24 12:14:46', '2017-02-24 12:14:46');
INSERT INTO `lots` VALUES ('327', '103', '1', '60000', '65000', '10', 'new', '2017-02-24 12:23:25', '2017-02-24 12:23:25');
INSERT INTO `lots` VALUES ('328', '104', '1', '53000', '80000', '10', 'new', '2017-02-24 12:26:45', '2017-02-24 12:26:45');
INSERT INTO `lots` VALUES ('329', '105', '1', '170000', '200000', '10', 'new', '2017-02-24 12:32:56', '2017-02-24 12:32:56');
INSERT INTO `lots` VALUES ('330', '106', '1', '280000', '300000', '10', 'new', '2017-02-24 12:36:30', '2017-02-24 12:36:30');
INSERT INTO `lots` VALUES ('331', '107', '1', '6000', '10000', '10', 'new', '2017-03-01 10:58:43', '2017-03-01 10:58:43');
INSERT INTO `lots` VALUES ('332', '108', '1', '6000', '10000', '10', 'new', '2017-03-01 11:02:12', '2017-03-01 11:02:12');
INSERT INTO `lots` VALUES ('333', '109', '1', '6000', '10000', '10', 'new', '2017-03-01 11:04:43', '2017-03-01 11:04:43');
INSERT INTO `lots` VALUES ('334', '110', '1', '6000', '10000', '10', 'new', '2017-03-01 11:06:11', '2017-03-01 11:06:11');
INSERT INTO `lots` VALUES ('335', '111', '1', '6000', '10000', '10', 'new', '2017-03-01 11:09:59', '2017-03-01 11:09:59');
INSERT INTO `lots` VALUES ('338', '114', '1', '6000', '10000', '10', 'new', '2017-03-01 11:29:22', '2017-03-01 11:29:22');
INSERT INTO `lots` VALUES ('339', '115', '1', '6000', '10000', '10', 'new', '2017-03-01 11:29:55', '2017-03-01 11:29:55');
INSERT INTO `lots` VALUES ('340', '116', '1', '6000', '10000', '10', 'new', '2017-03-01 11:30:30', '2017-03-01 11:30:30');
INSERT INTO `lots` VALUES ('341', '117', '1', '6000', '10000', '10', 'new', '2017-03-01 11:30:58', '2017-03-01 11:30:58');
INSERT INTO `lots` VALUES ('342', '118', '1', '6000', '10000', '10', 'new', '2017-03-01 11:31:26', '2017-03-01 11:31:26');
INSERT INTO `lots` VALUES ('343', '119', '1', '6000', '10000', '10', 'new', '2017-03-01 11:32:08', '2017-03-01 11:32:08');
INSERT INTO `lots` VALUES ('344', '120', '1', '6000', '10000', '10', 'new', '2017-03-01 11:45:59', '2017-03-01 11:45:59');
INSERT INTO `lots` VALUES ('345', '121', '1', '6000', '10000', '10', 'new', '2017-03-01 11:46:45', '2017-03-01 11:46:45');
INSERT INTO `lots` VALUES ('346', '122', '1', '6000', '10000', '10', 'new', '2017-03-01 11:48:07', '2017-03-01 11:48:07');
INSERT INTO `lots` VALUES ('347', '123', '1', '6000', '10000', '10', 'new', '2017-03-01 11:49:00', '2017-03-01 11:49:00');
INSERT INTO `lots` VALUES ('348', '124', '1', '6000', '10000', '10', 'new', '2017-03-01 11:49:53', '2017-03-01 11:49:53');
INSERT INTO `lots` VALUES ('349', '125', '1', '6000', '10000', '10', 'new', '2017-03-01 11:50:37', '2017-03-01 11:50:37');
INSERT INTO `lots` VALUES ('350', '126', '1', '6000', '10000', '10', 'new', '2017-03-01 11:51:39', '2017-03-01 11:51:39');
INSERT INTO `lots` VALUES ('351', '127', '1', '6000', '10000', '10', 'new', '2017-03-01 11:52:11', '2017-03-01 11:52:11');
INSERT INTO `lots` VALUES ('352', '128', '1', '6000', '10000', '10', 'new', '2017-03-01 11:53:23', '2017-03-01 11:53:23');
INSERT INTO `lots` VALUES ('353', '129', '1', '6000', '10000', '10', 'new', '2017-03-01 11:53:52', '2017-03-01 11:53:52');
INSERT INTO `lots` VALUES ('354', '130', '1', '6000', '10000', '10', 'new', '2017-03-01 11:54:28', '2017-03-01 11:54:28');
INSERT INTO `lots` VALUES ('355', '131', '1', '6000', '10000', '10', 'new', '2017-03-01 11:55:01', '2017-03-01 11:55:01');
INSERT INTO `lots` VALUES ('356', '132', '1', '6000', '10000', '10', 'new', '2017-03-01 11:55:44', '2017-03-01 11:55:44');
INSERT INTO `lots` VALUES ('357', '133', '1', '6000', '10000', '10', 'new', '2017-03-01 11:56:20', '2017-03-01 11:56:20');
INSERT INTO `lots` VALUES ('358', '134', '1', '6000', '10000', '10', 'new', '2017-03-01 11:56:54', '2017-03-01 11:56:54');
INSERT INTO `lots` VALUES ('359', '135', '1', '6000', '10000', '10', 'new', '2017-03-01 11:59:08', '2017-03-01 11:59:08');
INSERT INTO `lots` VALUES ('360', '136', '1', '6000', '10000', '10', 'new', '2017-03-01 11:59:29', '2017-03-01 11:59:29');
INSERT INTO `lots` VALUES ('361', '137', '1', '6000', '10000', '10', 'new', '2017-03-01 12:00:23', '2017-03-01 12:00:23');
INSERT INTO `lots` VALUES ('362', '138', '1', '6000', '10000', '10', 'new', '2017-03-01 12:01:04', '2017-03-01 12:01:04');
INSERT INTO `lots` VALUES ('363', '139', '1', '6000', '10000', '10', 'new', '2017-03-01 12:01:53', '2017-03-01 12:01:53');
INSERT INTO `lots` VALUES ('364', '140', '1', '6000', '10000', '10', 'new', '2017-03-01 12:02:24', '2017-03-01 12:02:24');
INSERT INTO `lots` VALUES ('365', '141', '1', '6000', '10000', '10', 'new', '2017-03-01 12:03:15', '2017-03-01 12:03:15');
INSERT INTO `lots` VALUES ('366', '142', '1', '6000', '10000', '10', 'new', '2017-03-01 12:05:25', '2017-03-01 12:05:25');
INSERT INTO `lots` VALUES ('367', '143', '1', '6000', '10000', '10', 'new', '2017-03-01 12:05:54', '2017-03-01 12:05:54');
INSERT INTO `lots` VALUES ('368', '144', '1', '6000', '15000', '10', 'new', '2017-03-28 21:56:15', '2017-03-28 21:56:15');
INSERT INTO `lots` VALUES ('369', '145', '1', '6000', '15000', '10', 'new', '2017-03-28 21:59:04', '2017-03-28 21:59:04');
INSERT INTO `lots` VALUES ('370', '146', '1', '6000', '15000', '10', 'new', '2017-03-28 22:00:44', '2017-03-28 22:00:44');
INSERT INTO `lots` VALUES ('371', '147', '1', '5500', '15000', '10', 'new', '2017-03-28 22:05:01', '2017-03-28 22:05:01');
INSERT INTO `lots` VALUES ('372', '148', '1', '5500', '15000', '10', 'new', '2017-03-28 22:05:52', '2017-03-28 22:05:52');
INSERT INTO `lots` VALUES ('373', '149', '1', '5500', '15000', '10', 'new', '2017-03-28 22:06:19', '2017-03-28 22:06:19');
INSERT INTO `lots` VALUES ('374', '150', '1', '5500', '15000', '10', 'new', '2017-03-28 22:06:48', '2017-03-28 22:06:48');
INSERT INTO `lots` VALUES ('375', '151', '1', '5500', '15000', '10', 'new', '2017-03-28 22:08:11', '2017-03-28 22:08:11');
INSERT INTO `lots` VALUES ('376', '152', '1', '5500', '15000', '10', 'new', '2017-03-28 22:09:49', '2017-03-28 22:09:49');
INSERT INTO `lots` VALUES ('377', '153', '1', '3500', '10000', '10', 'new', '2017-03-28 22:11:02', '2017-03-28 22:11:02');
INSERT INTO `lots` VALUES ('378', '154', '1', '6000', '15000', '10', 'new', '2017-03-28 22:14:39', '2017-03-28 22:14:39');
INSERT INTO `lots` VALUES ('379', '155', '1', '6000', '15000', '10', 'new', '2017-03-28 22:15:06', '2017-03-28 22:15:06');
INSERT INTO `lots` VALUES ('380', '156', '1', '6000', '10000', '10', 'new', '2017-03-28 22:15:53', '2017-08-02 14:13:39');
INSERT INTO `lots` VALUES ('381', '157', '1', '15000', '25000', '10', 'new', '2017-03-28 22:17:08', '2017-03-28 22:17:08');
INSERT INTO `lots` VALUES ('382', '158', '1', '20000', '35000', '10', 'new', '2017-03-28 22:18:29', '2017-03-28 22:18:29');
INSERT INTO `lots` VALUES ('383', '159', '1', '20000', '35000', '10', 'new', '2017-03-28 22:19:06', '2017-03-28 22:19:06');
INSERT INTO `lots` VALUES ('384', '160', '1', '30000', '55000', '10', 'new', '2017-03-28 22:20:58', '2017-03-28 22:20:58');
INSERT INTO `lots` VALUES ('385', '161', '1', '30000', '55000', '10', 'new', '2017-03-28 22:21:47', '2017-03-28 22:21:47');
INSERT INTO `lots` VALUES ('386', '162', '1', '20000', '30000', '10', 'new', '2017-03-28 22:23:29', '2017-03-28 22:23:29');
INSERT INTO `lots` VALUES ('387', '163', '1', '12000', '20000', '10', 'new', '2017-03-28 22:25:54', '2017-03-28 22:25:54');
INSERT INTO `lots` VALUES ('388', '164', '1', '20000', '35000', '10', 'new', '2017-03-28 22:27:10', '2017-03-28 22:27:10');
INSERT INTO `lots` VALUES ('389', '165', '1', '12000', '20000', '10', 'new', '2017-03-28 22:28:25', '2017-03-28 22:28:25');
INSERT INTO `lots` VALUES ('390', '166', '1', '5000', '10000', '10', 'new', '2017-03-28 22:29:18', '2017-03-28 22:29:18');
INSERT INTO `lots` VALUES ('391', '167', '1', '12000', '20000', '10', 'new', '2017-03-28 22:30:37', '2017-03-28 22:30:37');
INSERT INTO `lots` VALUES ('392', '168', '1', '12000', '20000', '10', 'new', '2017-03-28 22:30:57', '2017-03-28 22:30:57');
INSERT INTO `lots` VALUES ('396', '172', '1', '12000', '20000', '10', 'new', '2017-03-28 22:58:44', '2017-03-28 22:58:44');
INSERT INTO `lots` VALUES ('397', '173', '1', '12000', '20000', '10', 'new', '2017-04-02 22:40:55', '2017-04-02 22:40:55');
INSERT INTO `lots` VALUES ('398', '174', '1', '12000', '20000', '10', 'new', '2017-04-02 22:41:39', '2017-04-02 22:41:39');
INSERT INTO `lots` VALUES ('399', '175', '1', '12000', '20000', '10', 'new', '2017-04-02 22:41:59', '2017-04-02 22:41:59');
INSERT INTO `lots` VALUES ('400', '176', '1', '20000', '35000', '10', 'new', '2017-04-02 22:43:42', '2017-04-02 22:43:42');
INSERT INTO `lots` VALUES ('401', '177', '1', '12000', '20000', '10', 'new', '2017-04-02 22:46:20', '2017-04-02 22:46:20');
INSERT INTO `lots` VALUES ('402', '178', '1', '12000', '20000', '10', 'new', '2017-04-02 22:47:18', '2017-04-02 22:47:18');
INSERT INTO `lots` VALUES ('403', '179', '1', '30000', '45000', '10', 'new', '2017-04-02 22:53:47', '2017-04-02 22:53:47');
INSERT INTO `lots` VALUES ('404', '180', '1', '30000', '45000', '10', 'new', '2017-04-02 23:00:06', '2017-04-02 23:00:06');
INSERT INTO `lots` VALUES ('405', '181', '1', '30000', '45000', '10', 'new', '2017-04-02 23:03:36', '2017-04-02 23:03:36');
INSERT INTO `lots` VALUES ('406', '182', '1', '30000', '45000', '10', 'new', '2017-04-02 23:04:38', '2017-04-02 23:04:38');
INSERT INTO `lots` VALUES ('407', '183', '1', '30000', '45000', '10', 'new', '2017-04-02 23:05:39', '2017-04-02 23:05:39');
INSERT INTO `lots` VALUES ('408', '184', '1', '20000', '35000', '10', 'new', '2017-04-02 23:07:33', '2017-08-02 13:16:34');
INSERT INTO `lots` VALUES ('409', '185', '1', '30000', '45000', '10', 'new', '2017-04-02 23:08:10', '2017-04-02 23:08:10');
INSERT INTO `lots` VALUES ('410', '186', '1', '30000', '45000', '10', 'new', '2017-04-02 23:09:41', '2017-04-02 23:09:41');
INSERT INTO `lots` VALUES ('411', '187', '1', '30000', '45000', '10', 'new', '2017-04-02 23:10:20', '2017-04-02 23:10:20');
INSERT INTO `lots` VALUES ('412', '188', '1', '30000', '45000', '10', 'new', '2017-04-02 23:11:55', '2017-04-02 23:11:55');
INSERT INTO `lots` VALUES ('413', '189', '1', '30000', '45000', '10', 'new', '2017-04-02 23:12:37', '2017-04-02 23:12:37');
INSERT INTO `lots` VALUES ('414', '190', '1', '12000', '20000', '10', 'new', '2017-04-02 23:14:45', '2017-04-02 23:14:45');
INSERT INTO `lots` VALUES ('415', '191', '1', '12000', '20000', '10', 'new', '2017-04-02 23:16:29', '2017-04-02 23:16:29');
INSERT INTO `lots` VALUES ('416', '192', '1', '12000', '20000', '10', 'new', '2017-04-02 23:17:52', '2017-04-02 23:17:52');
INSERT INTO `lots` VALUES ('417', '193', '1', '12000', '20000', '7', 'new', '2017-04-02 23:18:40', '2017-04-14 02:24:56');
INSERT INTO `lots` VALUES ('418', '194', '1', '25000', '45000', '10', 'new', '2017-04-02 23:22:50', '2017-04-02 23:22:50');
INSERT INTO `lots` VALUES ('419', '195', '1', '25000', '45000', '10', 'new', '2017-04-02 23:24:06', '2017-04-02 23:24:06');
INSERT INTO `lots` VALUES ('420', '196', '1', '13000', '25000', '10', 'new', '2017-04-02 23:26:40', '2017-08-02 13:12:53');
INSERT INTO `lots` VALUES ('421', '197', '1', '35000', '55000', '10', 'new', '2017-04-02 23:30:48', '2017-04-02 23:30:48');
INSERT INTO `lots` VALUES ('422', '198', '1', '35000', '55000', '9', 'new', '2017-04-02 23:33:18', '2017-04-14 02:24:56');
INSERT INTO `lots` VALUES ('426', '200', '1', '730000', '750000', '9', 'new', '2017-06-22 10:12:20', '2017-07-31 13:21:16');
INSERT INTO `lots` VALUES ('427', '201', '1', '1000000', '2000000', '5', 'new', '2017-08-01 10:13:45', '2017-08-01 10:13:45');
INSERT INTO `lots` VALUES ('428', '202', '1', '2000', '6000', '10', 'new', '2017-08-02 14:52:27', '2017-08-02 14:52:27');
INSERT INTO `lots` VALUES ('429', '203', '1', '6000', '10000', '10', 'new', '2017-08-08 13:00:56', '2017-08-08 13:00:56');
INSERT INTO `lots` VALUES ('430', '204', '1', '6000', '10000', '10', 'new', '2017-08-08 13:03:37', '2017-08-08 13:03:37');
INSERT INTO `lots` VALUES ('431', '205', '1', '6000', '15000', '10', 'new', '2017-08-08 13:22:08', '2017-08-08 13:29:29');
INSERT INTO `lots` VALUES ('432', '206', '1', '6000', '15000', '10', 'new', '2017-08-08 13:29:06', '2017-08-08 13:29:06');
INSERT INTO `lots` VALUES ('433', '207', '1', '6000', '10000', '10', 'new', '2017-08-08 13:33:35', '2017-08-08 13:33:35');
INSERT INTO `lots` VALUES ('434', '208', '1', '6000', '10000', '10', 'new', '2017-08-08 13:37:10', '2017-08-08 13:37:10');
INSERT INTO `lots` VALUES ('435', '209', '1', '6000', '10000', '10', 'new', '2017-08-08 14:51:18', '2017-08-08 14:51:18');
INSERT INTO `lots` VALUES ('436', '210', '1', '6000', '10000', '6', 'new', '2017-08-08 14:57:20', '2017-08-08 14:57:20');
INSERT INTO `lots` VALUES ('437', '211', '1', '6000', '10000', '10', 'new', '2017-08-08 15:04:56', '2017-08-08 15:04:56');
INSERT INTO `lots` VALUES ('438', '212', '1', '6000', '10000', '10', 'new', '2017-08-08 15:14:01', '2017-08-08 15:14:01');
INSERT INTO `lots` VALUES ('439', '213', '1', '6000', '10000', '10', 'new', '2017-08-08 15:50:26', '2017-08-08 15:50:26');
INSERT INTO `lots` VALUES ('440', '214', '1', '6000', '10000', '10', 'new', '2017-08-08 15:56:37', '2017-08-08 15:56:37');
INSERT INTO `lots` VALUES ('441', '215', '1', '6000', '10000', '10', 'new', '2017-08-08 16:02:36', '2017-08-08 16:02:36');
INSERT INTO `lots` VALUES ('442', '216', '1', '6000', '10000', '10', 'new', '2017-08-08 16:11:50', '2017-08-08 16:11:50');
INSERT INTO `lots` VALUES ('443', '217', '1', '6000', '10000', '10', 'new', '2017-08-08 16:16:53', '2017-08-08 16:16:53');
INSERT INTO `lots` VALUES ('444', '218', '1', '6000', '10000', '6', 'new', '2017-08-08 16:19:28', '2017-08-08 16:19:28');
INSERT INTO `lots` VALUES ('445', '219', '1', '6000', '10000', '10', 'new', '2017-08-08 16:24:39', '2017-08-08 16:24:39');
INSERT INTO `lots` VALUES ('446', '220', '1', '6000', '10000', '10', 'new', '2017-08-08 16:29:56', '2017-08-08 16:29:56');
INSERT INTO `lots` VALUES ('447', '221', '1', '10000', '15000', '10', 'new', '2017-08-14 16:51:13', '2017-08-14 16:51:13');
INSERT INTO `lots` VALUES ('448', '222', '1', '22000', '42000', '10', 'new', '2017-08-14 16:59:15', '2017-08-14 16:59:15');
INSERT INTO `lots` VALUES ('449', '223', '1', '12000', '30000', '10', 'new', '2017-08-14 17:22:03', '2017-08-14 17:22:03');
INSERT INTO `lots` VALUES ('450', '224', '1', '15000', '30000', '10', 'new', '2017-08-14 17:29:25', '2017-08-14 17:29:25');
INSERT INTO `lots` VALUES ('451', '225', '1', '12000', '25000', '10', 'new', '2017-08-14 17:44:43', '2017-08-14 17:44:43');
INSERT INTO `lots` VALUES ('452', '226', '1', '10000', '30000', '100', 'new', '2017-08-14 17:55:57', '2017-08-14 17:55:57');
INSERT INTO `lots` VALUES ('453', '227', '1', '10000', '60000', '100', 'new', '2017-08-14 18:04:47', '2017-08-14 18:04:47');
INSERT INTO `lots` VALUES ('454', '228', '1', '15000', '25000', '10', 'new', '2017-08-14 18:15:08', '2017-08-14 18:15:08');
INSERT INTO `lots` VALUES ('455', '229', '1', '105800', '129900', '10', 'new', '2017-08-21 14:43:30', '2017-08-21 14:43:30');
INSERT INTO `lots` VALUES ('456', '230', '1', '220000', '260000', '10', 'new', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `lots` VALUES ('457', '231', '1', '286000', '350000', '3', 'new', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `lots` VALUES ('458', '232', '1', '2600000', '2800000', '1', 'new', '2017-08-21 15:07:26', '2017-08-21 15:07:26');
INSERT INTO `lots` VALUES ('459', '233', '1', '520000', '590000', '3', 'new', '2017-08-21 15:20:39', '2017-08-21 15:20:39');
INSERT INTO `lots` VALUES ('460', '234', '1', '5000', '10000', '10', 'new', '2017-11-16 10:02:21', '2017-11-16 10:02:21');
INSERT INTO `lots` VALUES ('461', '235', '1', '550000', '660000', '9', 'new', '2017-11-16 10:52:48', '2017-11-17 14:20:59');
INSERT INTO `lots` VALUES ('462', '236', '1', '260000', '330000', '10', 'new', '2017-11-16 11:09:45', '2017-11-16 11:09:45');
INSERT INTO `lots` VALUES ('463', '237', '1', '270000', '370000', '10', 'new', '2017-11-16 11:23:45', '2017-11-16 11:23:45');
INSERT INTO `lots` VALUES ('464', '238', '1', '460000', '500000', '10', 'new', '2017-11-16 11:40:30', '2017-11-16 11:40:30');
INSERT INTO `lots` VALUES ('465', '239', '1', '485000', '580000', '10', 'new', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `lots` VALUES ('466', '240', '1', '630000', '730000', '10', 'new', '2017-11-16 12:34:05', '2017-11-16 12:34:05');
INSERT INTO `lots` VALUES ('467', '241', '1', '590000', '720000', '10', 'new', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `lots` VALUES ('468', '242', '1', '205000', '230000', '10', 'new', '2017-11-16 13:01:24', '2017-11-16 13:01:24');
INSERT INTO `lots` VALUES ('469', '243', '1', '265000', '320000', '10', 'new', '2017-11-16 13:15:49', '2017-11-16 13:15:49');
INSERT INTO `lots` VALUES ('470', '244', '1', '185000', '250000', '10', 'new', '2017-11-16 13:31:22', '2017-11-16 13:31:22');
INSERT INTO `lots` VALUES ('471', '245', '1', '230000', '270000', '10', 'new', '2017-11-16 14:24:40', '2017-11-16 14:24:40');
INSERT INTO `lots` VALUES ('472', '246', '1', '230000', '290000', '10', 'new', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `lots` VALUES ('473', '247', '1', '120000', '170000', '10', 'new', '2017-11-16 14:49:25', '2017-11-16 14:49:25');
INSERT INTO `lots` VALUES ('474', '248', '1', '320000', '420000', '10', 'new', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `lots` VALUES ('475', '249', '1', '420000', '480000', '10', 'new', '2017-11-16 15:28:11', '2017-11-16 15:28:11');
INSERT INTO `lots` VALUES ('476', '250', '1', '135000', '220000', '10', 'new', '2017-11-16 15:42:42', '2017-11-16 15:42:42');
INSERT INTO `lots` VALUES ('477', '251', '1', '200000', '240000', '10', 'new', '2017-11-16 16:00:17', '2017-11-16 16:00:17');
INSERT INTO `lots` VALUES ('478', '252', '1', '26000', '55000', '20', 'new', '2017-11-16 16:21:02', '2017-11-16 16:21:02');
INSERT INTO `lots` VALUES ('479', '253', '1', '30000', '60000', '20', 'new', '2017-11-16 16:30:21', '2017-11-16 16:30:21');
INSERT INTO `lots` VALUES ('480', '254', '1', '42000', '55000', '20', 'new', '2017-11-16 16:41:06', '2017-11-16 16:41:06');
INSERT INTO `lots` VALUES ('481', '255', '1', '38000', '60000', '20', 'new', '2017-11-16 16:57:12', '2017-11-16 16:57:12');
INSERT INTO `lots` VALUES ('482', '256', '1', '155000', '250000', '10', 'new', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `lots` VALUES ('483', '257', '1', '320000', '400000', '10', 'new', '2017-11-16 17:21:05', '2017-11-16 17:21:05');
INSERT INTO `lots` VALUES ('484', '258', '1', '320000', '400000', '10', 'new', '2017-11-16 17:23:13', '2017-11-16 17:23:13');
INSERT INTO `lots` VALUES ('485', '259', '1', '218000', '280000', '10', 'new', '2017-11-16 17:34:56', '2017-11-16 17:34:56');
INSERT INTO `lots` VALUES ('486', '260', '1', '218000', '288000', '10', 'new', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `lots` VALUES ('487', '261', '1', '175000', '300000', '10', 'new', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `lots` VALUES ('488', '262', '1', '175000', '300000', '10', 'new', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `lots` VALUES ('489', '263', '1', '155000', '250000', '10', 'new', '2017-11-16 17:59:34', '2017-11-16 17:59:34');
INSERT INTO `lots` VALUES ('490', '264', '1', '155000', '250000', '10', 'new', '2017-11-16 18:05:11', '2017-11-16 18:05:11');
INSERT INTO `lots` VALUES ('491', '265', '1', '108000', '170000', '10', 'new', '2017-11-16 18:13:14', '2017-11-30 15:22:28');
INSERT INTO `lots` VALUES ('492', '266', '1', '108000', '170000', '10', 'new', '2017-11-16 18:15:26', '2017-11-30 15:20:43');
INSERT INTO `lots` VALUES ('493', '267', '1', '500000', '690000', '10', 'new', '2017-11-17 08:33:43', '2017-11-30 10:27:30');
INSERT INTO `lots` VALUES ('494', '268', '1', '800000', '850000', '10', 'new', '2017-11-17 09:15:24', '2017-11-17 09:15:24');
INSERT INTO `lots` VALUES ('495', '269', '1', '320000', '400000', '10', 'new', '2017-11-17 09:24:35', '2017-11-30 10:31:27');
INSERT INTO `lots` VALUES ('496', '270', '1', '93000', '150000', '10', 'new', '2017-11-17 09:40:46', '2017-11-17 09:40:46');
INSERT INTO `lots` VALUES ('497', '271', '1', '40000', '70000', '10', 'new', '2017-11-17 09:47:55', '2017-11-17 09:47:55');
INSERT INTO `lots` VALUES ('498', '272', '1', '40000', '70000', '10', 'new', '2017-11-17 09:51:10', '2017-11-17 09:51:10');
INSERT INTO `lots` VALUES ('499', '273', '1', '40000', '70000', '10', 'new', '2017-11-17 09:55:37', '2017-11-17 09:55:37');
INSERT INTO `lots` VALUES ('500', '274', '1', '123000', '160000', '10', 'new', '2017-11-17 10:05:56', '2017-11-17 10:05:56');
INSERT INTO `lots` VALUES ('501', '275', '1', '16000', '20000', '10', 'new', '2017-11-17 10:22:55', '2017-11-17 10:22:55');
INSERT INTO `lots` VALUES ('502', '276', '1', '22000', '35000', '10', 'new', '2017-11-17 10:28:42', '2017-11-17 10:28:42');
INSERT INTO `lots` VALUES ('503', '277', '1', '20000', '32000', '10', 'new', '2017-11-17 10:38:21', '2017-11-17 10:38:21');
INSERT INTO `lots` VALUES ('504', '278', '1', '49000', '65000', '10', 'new', '2017-11-17 10:44:14', '2017-11-17 10:44:14');
INSERT INTO `lots` VALUES ('505', '279', '1', '900000', '1200000', '3', 'new', '2017-11-17 10:48:41', '2017-11-30 09:53:29');
INSERT INTO `lots` VALUES ('506', '280', '1', '980000', '1300000', '10', 'new', '2017-11-17 10:59:12', '2017-11-30 10:29:50');
INSERT INTO `lots` VALUES ('507', '281', '1', '45000', '60000', '10', 'new', '2017-11-17 11:08:14', '2017-11-17 11:08:14');
INSERT INTO `lots` VALUES ('508', '282', '1', '40000', '60000', '10', 'new', '2017-11-17 11:13:29', '2017-11-17 11:13:29');
INSERT INTO `lots` VALUES ('509', '283', '1', '90000', '120000', '10', 'new', '2017-11-17 11:20:32', '2017-11-17 11:20:32');
INSERT INTO `lots` VALUES ('510', '284', '1', '50000', '75000', '10', 'new', '2017-11-17 11:24:26', '2017-11-17 11:24:26');
INSERT INTO `lots` VALUES ('511', '285', '1', '26000', '40000', '10', 'new', '2017-11-17 11:31:24', '2017-11-17 11:31:24');
INSERT INTO `lots` VALUES ('512', '286', '1', '155000', '175000', '10', 'new', '2017-11-17 11:36:03', '2017-11-17 11:36:03');
INSERT INTO `lots` VALUES ('513', '287', '1', '270000', '380000', '10', 'new', '2017-11-17 11:42:33', '2017-11-30 10:32:37');
INSERT INTO `lots` VALUES ('514', '288', '1', '200000', '230000', '10', 'new', '2017-11-17 12:29:10', '2017-11-17 12:29:10');
INSERT INTO `lots` VALUES ('515', '289', '1', '140000', '160000', '10', 'new', '2017-11-17 12:33:37', '2017-11-17 12:33:37');
INSERT INTO `lots` VALUES ('516', '290', '1', '430000', '520000', '10', 'new', '2017-11-17 14:03:12', '2017-11-17 14:03:12');
INSERT INTO `lots` VALUES ('517', '291', '1', '510000', '650000', '10', 'new', '2017-11-17 14:07:40', '2017-11-17 14:07:40');
INSERT INTO `lots` VALUES ('518', '292', '1', '16000', '28000', '10', 'new', '2017-11-17 14:18:25', '2017-11-17 14:18:25');
INSERT INTO `lots` VALUES ('519', '293', '1', '120000', '150000', '10', 'new', '2017-11-17 14:27:59', '2017-11-17 14:27:59');
INSERT INTO `lots` VALUES ('520', '294', '1', '26000', '40000', '10', 'new', '2017-11-17 14:37:03', '2017-11-17 14:37:03');
INSERT INTO `lots` VALUES ('521', '295', '1', '19000', '30000', '10', 'new', '2017-11-17 14:44:47', '2017-11-17 14:44:47');
INSERT INTO `lots` VALUES ('522', '296', '1', '19000', '35000', '10', 'new', '2017-11-17 14:50:00', '2017-11-17 14:50:00');
INSERT INTO `lots` VALUES ('523', '297', '1', '10000', '25000', '10', 'new', '2017-11-17 14:54:56', '2017-11-17 14:54:56');
INSERT INTO `lots` VALUES ('524', '298', '1', '4500', '15000', '10', 'new', '2017-11-17 14:59:38', '2017-11-17 14:59:38');
INSERT INTO `lots` VALUES ('525', '299', '1', '16000', '30000', '10', 'new', '2017-11-17 15:04:59', '2017-11-17 15:04:59');
INSERT INTO `lots` VALUES ('526', '300', '1', '16000', '35000', '10', 'new', '2017-11-17 15:07:15', '2017-11-17 15:07:15');
INSERT INTO `lots` VALUES ('527', '301', '1', '16000', '35000', '10', 'new', '2017-11-17 15:13:08', '2017-11-17 15:13:08');
INSERT INTO `lots` VALUES ('528', '302', '1', '10000', '15000', '10', 'new', '2017-11-17 15:21:13', '2017-11-17 15:21:13');
INSERT INTO `lots` VALUES ('529', '303', '1', '8000', '15000', '10', 'new', '2017-11-17 15:27:47', '2017-11-17 15:27:47');
INSERT INTO `lots` VALUES ('530', '304', '1', '26000', '35000', '10', 'new', '2017-11-17 15:31:10', '2017-11-17 15:31:10');
INSERT INTO `lots` VALUES ('531', '305', '1', '50000', '90000', '10', 'new', '2017-11-17 16:06:13', '2017-11-17 16:06:13');
INSERT INTO `lots` VALUES ('532', '306', '1', '40000', '60000', '10', 'new', '2017-11-17 16:13:22', '2017-11-17 16:13:22');
INSERT INTO `lots` VALUES ('533', '307', '1', '13000', '20000', '10', 'new', '2017-11-17 16:35:16', '2017-11-17 16:35:16');
INSERT INTO `lots` VALUES ('534', '308', '1', '38000', '45000', '10', 'new', '2017-11-17 16:39:27', '2017-11-17 16:39:27');
INSERT INTO `lots` VALUES ('535', '309', '1', '45000', '65000', '10', 'new', '2017-11-17 16:43:31', '2017-11-17 16:43:31');
INSERT INTO `lots` VALUES ('536', '310', '1', '50000', '70000', '10', 'new', '2017-11-17 16:53:28', '2017-11-17 16:53:28');
INSERT INTO `lots` VALUES ('537', '311', '1', '35000', '55000', '10', 'new', '2017-11-17 16:56:41', '2017-11-17 16:56:41');
INSERT INTO `lots` VALUES ('538', '312', '1', '75000', '90000', '10', 'new', '2017-11-17 17:02:23', '2017-11-17 17:02:23');
INSERT INTO `lots` VALUES ('539', '313', '1', '140000', '160000', '10', 'new', '2017-11-17 17:10:12', '2017-11-17 17:10:12');
INSERT INTO `lots` VALUES ('540', '314', '1', '26000', '35000', '10', 'new', '2017-11-17 17:16:42', '2017-11-17 17:16:42');
INSERT INTO `lots` VALUES ('541', '315', '1', '23000', '35000', '10', 'new', '2017-11-17 17:27:02', '2017-11-17 17:27:02');
INSERT INTO `lots` VALUES ('542', '316', '1', '10000', '20000', '10', 'new', '2017-11-17 17:31:36', '2017-11-17 17:31:36');
INSERT INTO `lots` VALUES ('543', '317', '1', '8000', '15000', '10', 'new', '2017-11-17 17:35:28', '2017-11-17 17:35:28');
INSERT INTO `lots` VALUES ('544', '318', '1', '13000', '30000', '10', 'new', '2017-11-17 17:39:55', '2017-11-17 17:39:55');
INSERT INTO `lots` VALUES ('545', '319', '1', '93000', '140000', '10', 'new', '2017-11-17 17:48:22', '2017-11-17 17:48:22');
INSERT INTO `lots` VALUES ('546', '320', '1', '43000', '55000', '10', 'new', '2017-11-17 18:00:47', '2017-11-17 18:00:47');
INSERT INTO `lots` VALUES ('547', '321', '1', '36000', '45000', '10', 'new', '2017-11-17 18:07:59', '2017-11-17 18:07:59');
INSERT INTO `lots` VALUES ('548', '322', '1', '6500', '15000', '10', 'new', '2017-11-17 18:15:17', '2017-11-17 18:15:17');
INSERT INTO `lots` VALUES ('549', '323', '1', '3000', '15000', '10', 'new', '2017-11-18 10:04:28', '2017-11-18 10:04:28');
INSERT INTO `lots` VALUES ('550', '324', '1', '7000', '20000', '10', 'new', '2017-11-18 10:11:27', '2017-11-18 10:11:27');
INSERT INTO `lots` VALUES ('551', '325', '1', '2000', '10000', '10', 'new', '2017-11-18 10:15:16', '2017-11-18 10:15:16');
INSERT INTO `lots` VALUES ('552', '326', '1', '2600', '15000', '10', 'new', '2017-11-18 10:20:28', '2017-11-18 10:20:28');
INSERT INTO `lots` VALUES ('553', '327', '1', '13000', '25000', '10', 'new', '2017-11-18 10:27:13', '2017-11-18 10:27:13');
INSERT INTO `lots` VALUES ('554', '328', '1', '3000', '10000', '10', 'new', '2017-11-18 10:35:42', '2017-11-18 10:35:42');
INSERT INTO `lots` VALUES ('555', '329', '1', '3500', '15000', '10', 'new', '2017-11-18 10:40:13', '2017-11-18 10:40:13');
INSERT INTO `lots` VALUES ('556', '330', '1', '1000', '8000', '10', 'new', '2017-11-18 10:44:55', '2017-11-18 10:44:55');
INSERT INTO `lots` VALUES ('557', '331', '1', '900', '7000', '10', 'new', '2017-11-18 10:57:40', '2017-11-18 10:57:40');
INSERT INTO `lots` VALUES ('558', '332', '1', '4500', '8500', '10', 'new', '2017-11-18 11:01:32', '2017-11-18 11:01:32');
INSERT INTO `lots` VALUES ('559', '333', '1', '300', '15000', '10', 'new', '2017-11-18 11:05:19', '2017-11-18 11:05:19');
INSERT INTO `lots` VALUES ('560', '334', '1', '1300', '7000', '10', 'new', '2017-11-18 11:17:46', '2017-11-18 11:17:46');
INSERT INTO `lots` VALUES ('561', '335', '1', '18000', '35000', '10', 'new', '2017-11-18 11:24:17', '2017-11-18 11:24:17');
INSERT INTO `lots` VALUES ('562', '336', '1', '1600', '10000', '10', 'new', '2017-11-18 12:26:26', '2017-11-18 12:26:26');
INSERT INTO `lots` VALUES ('563', '337', '1', '1600', '10000', '10', 'new', '2017-11-18 12:29:55', '2017-11-18 12:29:55');
INSERT INTO `lots` VALUES ('564', '338', '1', '2000', '10000', '10', 'new', '2017-11-18 13:35:28', '2017-11-18 13:35:28');
INSERT INTO `lots` VALUES ('565', '339', '1', '5000', '15000', '10', 'new', '2017-11-18 13:40:11', '2017-11-18 13:40:11');
INSERT INTO `lots` VALUES ('566', '340', '1', '6000', '15000', '10', 'new', '2017-11-18 13:50:20', '2017-11-18 13:50:20');
INSERT INTO `lots` VALUES ('567', '341', '1', '25000', '40000', '10', 'new', '2017-11-18 14:58:16', '2017-11-18 14:58:16');
INSERT INTO `lots` VALUES ('568', '342', '1', '25000', '40000', '10', 'new', '2017-11-18 15:02:04', '2017-11-18 15:02:04');
INSERT INTO `lots` VALUES ('569', '343', '1', '25000', '40000', '10', 'new', '2017-11-18 15:03:01', '2017-11-18 15:03:01');
INSERT INTO `lots` VALUES ('570', '344', '1', '19000', '30000', '10', 'new', '2017-11-18 15:13:00', '2017-11-18 15:13:00');
INSERT INTO `lots` VALUES ('571', '345', '1', '19000', '30000', '10', 'new', '2017-11-18 15:14:39', '2017-11-18 15:14:39');
INSERT INTO `lots` VALUES ('572', '346', '1', '23000', '45000', '10', 'new', '2017-11-18 15:32:28', '2017-11-18 15:32:28');
INSERT INTO `lots` VALUES ('573', '347', '1', '44000', '60000', '10', 'new', '2017-11-18 15:37:10', '2017-11-18 15:37:10');
INSERT INTO `lots` VALUES ('574', '348', '1', '33000', '50000', '10', 'new', '2017-11-18 15:40:39', '2017-11-18 15:40:39');
INSERT INTO `lots` VALUES ('575', '349', '1', '24000', '40000', '10', 'new', '2017-11-18 15:46:10', '2017-11-18 15:46:10');
INSERT INTO `lots` VALUES ('576', '350', '1', '8000', '20000', '10', 'new', '2017-11-18 15:59:48', '2017-11-18 15:59:48');
INSERT INTO `lots` VALUES ('577', '351', '1', '28000', '40000', '10', 'new', '2017-11-18 16:00:53', '2017-11-18 16:00:53');
INSERT INTO `lots` VALUES ('578', '352', '1', '17000', '35000', '10', 'new', '2017-11-18 16:01:53', '2017-11-18 16:01:53');
INSERT INTO `lots` VALUES ('579', '353', '1', '5500', '20000', '10', 'new', '2017-11-20 08:59:20', '2017-11-20 08:59:20');
INSERT INTO `lots` VALUES ('580', '354', '1', '6000', '22000', '10', 'new', '2017-11-20 09:02:49', '2017-11-20 09:02:49');
INSERT INTO `lots` VALUES ('581', '355', '1', '8000', '20000', '10', 'new', '2017-11-20 09:05:55', '2017-11-20 09:05:55');
INSERT INTO `lots` VALUES ('582', '356', '1', '2300', '10000', '10', 'new', '2017-11-20 09:09:34', '2017-11-20 09:09:34');
INSERT INTO `lots` VALUES ('583', '357', '1', '5500', '23000', '10', 'new', '2017-11-20 09:13:16', '2017-11-20 09:13:16');
INSERT INTO `lots` VALUES ('584', '358', '1', '5500', '20000', '10', 'new', '2017-11-20 09:16:05', '2017-11-20 09:16:05');
INSERT INTO `lots` VALUES ('585', '359', '1', '6000', '20000', '10', 'new', '2017-11-20 09:19:21', '2017-11-20 09:19:21');
INSERT INTO `lots` VALUES ('586', '360', '1', '660000', '890000', '10', 'new', '2017-11-24 09:20:08', '2017-11-30 10:25:40');
INSERT INTO `lots` VALUES ('587', '361', '1', '665000', '860000', '10', 'new', '2017-11-24 09:31:41', '2017-11-30 10:24:41');
INSERT INTO `lots` VALUES ('588', '362', '1', '170000', '265000', '10', 'new', '2017-11-24 09:39:33', '2017-11-24 09:39:33');
INSERT INTO `lots` VALUES ('616', '390', '1', '105000', '180000', '10', 'new', '2017-11-30 11:39:41', '2017-11-30 11:39:41');
INSERT INTO `lots` VALUES ('617', '391', '1', '800000', '850000', '5', 'new', '2017-11-30 11:39:46', '2017-11-30 11:39:46');
INSERT INTO `lots` VALUES ('618', '392', '1', '10000', '25000', '10', 'new', '2017-11-30 17:21:29', '2017-11-30 17:21:29');
INSERT INTO `lots` VALUES ('619', '393', '1', '1100000', '1300000', '2', 'new', '2017-12-19 10:05:45', '2017-12-19 10:05:45');
INSERT INTO `lots` VALUES ('620', '394', '1', '100000', '150000', '10', 'new', '2017-12-27 09:17:36', '2017-12-27 09:17:36');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_100000_create_password_resets_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pending_payments
-- ----------------------------
DROP TABLE IF EXISTS `pending_payments`;
CREATE TABLE `pending_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pending_payments
-- ----------------------------
INSERT INTO `pending_payments` VALUES ('1', '1', '2017-04-08 12:24:13', '2017-04-08 12:24:13');
INSERT INTO `pending_payments` VALUES ('2', '6', '2017-07-31 13:21:16', '2017-07-31 13:21:16');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brand_id` int(10) unsigned NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `lot_id` int(10) unsigned DEFAULT NULL,
  `id_discount` int(10) unsigned DEFAULT NULL,
  `short_description` text,
  `full_description` text,
  `sold` int(10) unsigned DEFAULT '0',
  `tags` text,
  `active` tinyint(4) DEFAULT '1',
  `featured` tinyint(4) DEFAULT '0',
  `type_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`) USING BTREE,
  UNIQUE KEY `name_id_ref_unique` (`name`,`reference_id`) USING BTREE,
  UNIQUE KEY `slug_unique` (`slug`) USING BTREE,
  UNIQUE KEY `code_unique` (`code`) USING BTREE,
  KEY `fk_id_reference` (`reference_id`) USING BTREE,
  KEY `fk_id_brand_` (`brand_id`) USING BTREE,
  KEY `fk_id_discount` (`id_discount`) USING BTREE,
  KEY `fk_id_lot` (`lot_id`) USING BTREE,
  KEY `fk_id_type` (`type_id`) USING BTREE,
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_discount`) REFERENCES `discounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_3` FOREIGN KEY (`lot_id`) REFERENCES `lots` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_4` FOREIGN KEY (`reference_id`) REFERENCES `references` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_5` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('15', '859912006293', 'iswag onyx negrooo', 'iswag-onyx-negro', '4', '99', '239', '1', 'short', 'full', '40', 'iswag onyx negro color dual sim compatible camara trasera vga flash si', '1', '100', '10', '2017-02-04 11:16:51', '2017-08-02 13:17:28');
INSERT INTO `products` VALUES ('16', '859912006323', 'iSWAG Onyx Blanco', 'iswag-onyx-blanco', '4', '99', '240', '1', '', '', '0', 'iswag onyx blanco dual sim compatible color camara trasera vga flash si', '1', '0', '10', '2017-02-04 11:20:58', '2017-08-02 13:30:41');
INSERT INTO `products` VALUES ('17', '859912006286', 'iSWAG Onyx Gris', 'iswag-onyx-gris', '4', '99', '241', '1', '', '', '0', 'iswag onyx dual sim gris camara flash linterna', '1', '0', '10', '2017-02-04 11:24:59', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('18', '4897043934319', 'Verykool s5005 Azul Dual SIM', 'verykool-s5005-azul-dual-sim', '6', '100', '242', '1', '', '', '0', 'verykool s5005 azul dual sim camara flash 8mp 2mp', '1', '0', '10', '2017-02-04 11:38:30', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('19', '4897043934302', 'Verykool s5005 Blanco Dual SIM', 'verykool-s5005-blanco-dual-sim', '6', '100', '243', '1', '', '', '0', 'verykool s5005 dual sim camara flash 8mp 2mp blanco', '1', '0', '10', '2017-02-04 11:40:25', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('20', '15', 'LANIX Ilium X110 Negro', 'lanix-ilium-x110-negro', '5', '101', '244', '1', '', '', '0', 'lanix ilium x110 negro camara flash dual core', '1', '0', '10', '2017-02-04 11:50:21', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('21', '855358006163', 'iSWAG Lynx Blanco Dual SIM', 'iswag-lynx-blanco-dual-sim', '4', '102', '245', '1', '', '', '0', 'iswag lynx camara flash dual sim blanco', '1', '0', '10', '2017-02-04 12:01:31', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('22', '855358006156', 'iSWAG Lynx Negro Dual SIM', 'iswag-lynx-negro-dual-sim', '4', '102', '246', '1', '', '', '0', 'iswag lynx camara flash dual sim negro', '1', '0', '10', '2017-02-04 12:03:15', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('23', '4894461263045', 'Alcatel Pixi 3 Negro', 'alcatel-pixi-3-negro', '7', '103', '247', '1', '', '', '0', 'alcatel pixi 3 4009a pixi3 negro camara flash', '1', '0', '10', '2017-02-04 12:14:03', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('24', '6901443131136', 'Huawei ECO 4G Negro Dual SIM', 'huawei-eco-4g-negro-dual-sim', '3', '104', '248', '1', '', '', '0', 'huawei eco lua-l23 4g camara flash negro dual sim', '1', '0', '10', '2017-02-04 12:22:46', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('25', '6901443131150', 'Huawei ECO 4G Blanco Dual SIM', 'huawei-eco-4g-blanco-dual-sim', '3', '104', '249', '1', '', '', '0', 'huawei eco lua-l23 4g camara flash dual sim blanco', '1', '0', '10', '2017-02-04 12:25:21', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('26', '6901443084630', 'Huawei P8 Lite Dorado Dual SIM', 'huawei-p8-lite-dorado-dual-sim', '3', '105', '250', '1', '', '', '0', 'huawei p8 lite ale-l23 dorado dual sim blanco ale l23', '1', '0', '10', '2017-02-04 12:34:55', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('27', '6901443130481', 'Huawei P9 Lite Dorado Dual SIM', 'huawei-p9-dorado-dual-sim', '3', '106', '251', '1', '', '', '0', 'huawei p9 lite dorado dual sim vns-l23 color bandas 2g/3g/4g camara trasera 13mp compatible memoria interna 16gb flash si extraible hasta 256gb usa slot de 2 frontal 8mp ram 3gb cpu octa-core 4x2.0ghz & 4x1.7ghz os android 6.0 marshmallow pantalla 5.2 pulgadas', '1', '0', '10', '2017-02-04 12:41:50', '2017-08-02 13:31:42');
INSERT INTO `products` VALUES ('28', '6947681535688', 'Motorola Moto G4 Play XT1601 Negro', 'motorola-moto-g4-play-xt1601-negro', '8', '107', '252', '1', '', '', '0', 'motorola moto g4 play xt1601 negro', '1', '0', '10', '2017-02-04 12:53:10', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('29', '8806085691285', 'Samsung HS130 Audifonos & Manos Libres Verde', 'samsung-hs130-audifonos-manos-libres-verde', '2', '108', '253', '1', '', '', '0', 'samsung oe-hs130gegww hs130 verde 3.5mm 1.2m manos libre libres audifonos audifono', '1', '0', '11', '2017-02-04 13:35:41', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('32', '10001', 'Protector Samsung J5 Motomo Negro', 'protector-samsung-j5-motomo-negro', '9', '109', '256', '1', 'Protector para Samsung J5 Motomo Anti-Golpes.', '', '0', 'motomo samsung j5 protector negro anti golpe estuche forro shock', '1', '0', '12', '2017-02-04 14:28:21', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('33', '10002', 'Protector Samsung J5 Motomo Dorado', 'protector-samsung-j5-motomo-dorado', '9', '109', '257', '1', 'Protector para Samsung J5 Motomo Anti-Golpes.', '', '0', 'motomo samsung j5 protector anti golpe estuche forro shock dorado', '1', '0', '12', '2017-02-04 14:39:33', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('34', '10003', 'Protector Samsung J5 Motomo Rosado', 'protector-samsung-j5-motomo-rosado', '9', '109', '258', '1', 'Protector para Samsung J5 Motomo Anti-Golpes.', '', '0', 'motomo samsung j5 protector anti golpe estuche forro shock rosado rosa pink', '1', '0', '12', '2017-02-04 14:40:37', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('35', '10004', 'Protector Samsung J5 Motomo Fucsia', 'protector-samsung-j5-motomo-fucsia', '9', '109', '259', '1', 'Protector para Samsung J5 Motomo Anti-Golpes.', '', '0', 'motomo samsung j5 protector anti golpe estuche forro shock pink fucsia', '1', '0', '12', '2017-02-04 14:43:18', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('36', '10005', 'Protector Samsung J5 Motomo Blanco', 'protector-samsung-j5-motomo-blanco', '9', '109', '260', '1', 'Protector para Samsung J5 Motomo Anti-Golpes.', '', '0', 'motomo samsung j5 protector anti golpe estuche forro shock pink blanco', '1', '0', '12', '2017-02-04 14:45:11', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('37', '10008', 'Protector Samsung J5 Motomo Rosado y Negro', 'protector-samsung-j5-motomo-rosado-y-negro', '9', '109', '261', '1', 'Protector para Samsung J5 Motomo Anti-Golpes.', '', '0', 'motomo samsung j5 protector anti golpe estuche forro shock rosado rosa pink', '1', '0', '12', '2017-02-04 14:49:26', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('38', '10009', 'Protector Samsung J5 Motomo Azul', 'protector-samsung-j5-motomo-azul', '9', '109', '262', '1', 'Protector para Samsung J5 Motomo Anti-Golpes.', '', '0', 'motomo samsung j5 protector anti golpe estuche forro shock azul', '1', '0', '12', '2017-02-04 14:50:42', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('39', '10010', 'Protector Samsung J5 Motomo Negro con borde Dorado', 'protector-samsung-j5-motomo-negro-con-borde-dorado', '9', '109', '263', '1', 'Protector para Samsung J5 Motomo Anti-Golpes.', '', '0', 'motomo samsung j5 protector anti golpe estuche forro shock negro dorado', '1', '0', '12', '2017-02-04 14:52:14', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('40', '10011', 'Protector Samsung J5 VERUS Dorado', 'protector-samsung-j5-verus-dorado', '10', '110', '264', '1', 'Protector para Samsung J5 VERUS Anti-Golpes.', '', '0', 'verus samsung j5 protector forro estuche anti golpe shock dorado negro', '1', '0', '12', '2017-02-04 14:57:38', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('41', '10012', 'Protector Samsung J5 INCIPIO Blanco', 'protector-samsung-j5-incipio-blanco', '11', '111', '265', '1', 'Protector para Samsung J5 INCIPIO Anti-Golpes.', '', '0', 'incipio samsung j5 blanco forro estuche protector anti golpe shock', '1', '0', '12', '2017-02-04 15:02:08', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('42', '10013', 'Protector Samsung J5 INCIPIO Dorado', 'protector-samsung-j5-incipio-dorado', '11', '111', '266', '1', 'Protector para Samsung J5 INCIPIO Anti-Golpes.', '', '0', 'incipio samsung j5 forro estuche protector anti golpe shock dorado', '1', '0', '12', '2017-02-04 15:02:56', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('43', '10014', 'Protector Samsung J5 INCIPIO Rojo', 'protector-samsung-j5-incipio-rojo', '11', '111', '267', '1', 'Protector para Samsung J5 INCIPIO Anti-Golpes.', '', '0', 'incipio samsung j5 forro estuche protector anti golpe shock rojo', '1', '0', '12', '2017-02-04 15:03:46', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('44', '10015', 'Protector Samsung J5 INCIPIO Azul', 'protector-samsung-j5-incipio-azul', '11', '111', '268', '1', 'Protector para Samsung J5 INCIPIO Anti-Golpes.', '', '0', 'incipio samsung j5 forro estuche protector anti golpe shock azul', '1', '0', '12', '2017-02-04 15:04:38', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('45', '10016', 'Protector Samsung J5 INCIPIO Verde', 'protector-samsung-j5-incipio-verde', '11', '111', '269', '1', 'Protector para Samsung J5 INCIPIO Anti-Golpes.', '', '0', 'incipio samsung j5 forro estuche protector anti golpe shock verde', '1', '0', '12', '2017-02-04 15:05:37', '2017-04-16 23:47:57');
INSERT INTO `products` VALUES ('46', '10017', 'Protector Samsung J5 INCIPIO Negro', 'protector-samsung-j5-incipio-negro', '11', '111', '270', '1', 'Protector para Samsung J5 INCIPIO Anti-Golpes.', '', '0', 'incipio samsung j5 forro estuche protector anti golpe shock negro', '1', '0', '12', '2017-02-04 15:06:21', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('47', '10018', 'Protector Samsung J5 Flores Margaritas Naturales', 'protector-samsung-j5-flores-margaritas-naturales', '12', '112', '271', '1', 'Protector para Samsung J5 Fashion Case con flores naturales', '', '0', 'generico samsung j5 fashion case flor flores margaritas naturales natural naturaleza protector forro estuche transparente', '1', '0', '12', '2017-02-04 15:14:59', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('48', '10019', 'Protector Samsung J5 Flores Violetas Naturales', 'protector-samsung-j5-flores-violetas-naturales', '12', '112', '272', '1', 'Protector para Samsung J5 Fashion Case con flores naturales', '', '0', 'generico samsung j5 fashion case flor flores naturales natural naturaleza protector forro estuche transparente violetas', '1', '0', '12', '2017-02-04 15:17:03', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('49', '10020', 'Protector Samsung J5 Transparente', 'protector-samsung-j5-transparente', '12', '112', '273', '1', 'Protector para Samsung J5 Básico ', '', '0', 'generico samsung j5 protector forro estuche transparente', '1', '0', '12', '2017-02-04 15:18:18', '2017-08-02 14:10:11');
INSERT INTO `products` VALUES ('50', '10021', 'Protector Samsung J5 Corazones Only You', 'protector-samsung-j5-corazones-only-you', '12', '112', '274', '1', 'Protector para Samsung J5 Anti-Golpes de Corazones', '', '0', 'generico samsung j5 protector forro estuche negro azul corazones corazon only you anti golpe shock rojo', '1', '0', '12', '2017-02-04 15:22:10', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('51', '10022', 'Protector Samsung J5 Dorado', 'protector-samsung-j5-dorado', '12', '112', '275', '1', 'Protector para Samsung J5 Basíco', '', '0', 'generico samsung j5 protector forro estuche dorado', '1', '0', '12', '2017-02-04 15:25:16', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('52', '10023', 'Protector Samsung J5 Heroes Superman', 'protector-samsung-j5-heroes-superman', '12', '112', '276', '1', 'Protector para Samsung J5 Heroes', '', '0', 'protector samsung j5 heroes superman generico material silicona tipo de protección normal color negro', '1', '0', '12', '2017-02-04 15:29:22', '2017-08-02 14:09:58');
INSERT INTO `products` VALUES ('53', '10024', 'Protector Samsung J5 Heroes Spiderman', 'protector-samsung-j5-heroes-spiderman', '12', '112', '277', '1', 'Protector para Samsung J5 Heroes', '', '0', 'protector samsung j5 heroes spiderman generico material silicona tipo de protección normal color negro', '1', '0', '12', '2017-02-04 15:42:47', '2017-08-02 14:09:04');
INSERT INTO `products` VALUES ('54', '10025', 'Protector Samsung J5 Basketball', 'protector-samsung-j5-basketball', '12', '112', '278', '1', 'Protector para Samsung J5 basketball', '', '0', 'generico samsung j5 protector forro estuche basket ball', '1', '0', '12', '2017-02-04 15:44:09', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('55', '10026', 'Protector Samsung J5 Real Madrid', 'protector-samsung-j5-real-madrid', '12', '112', '279', '1', 'Protector para Samsung J5 real madrid', '', '0', 'generico samsung j5 protector forro estuche real madrid', '1', '0', '12', '2017-02-04 15:46:02', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('56', '10027', 'Protector Samsung J5 Barcelona', 'protector-samsung-j5-barcelona', '12', '112', '280', '1', 'Protector para Samsung J5 barcelona', '', '0', 'generico samsung j5 protector forro estuche barcelona', '1', '0', '12', '2017-02-04 15:47:28', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('57', '10028', 'Protector Samsung J5 Atletico Nacional', 'protector-samsung-j5-atletico-medellin', '12', '112', '281', '1', 'Protector para Samsung J5 atletico nacional', '', '0', 'generico samsung j5 protector forro estuche atletico nacional', '1', '0', '12', '2017-02-04 15:53:32', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('58', '10029', 'Protector Samsung J5 Negro Lineas de Colores', 'protector-samsung-j5-negro-lineas-de-colores', '12', '112', '282', '1', 'Protector para Samsung J5 atletico medellin', '', '0', 'generico samsung j5 protector forro estuche negro verde naranja gris', '1', '0', '12', '2017-02-04 15:58:26', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('59', '10030', 'Protector Samsung J5 Motomo Silicona Verde', 'protector-samsung-j5-motomo-silicona-verde', '9', '109', '283', '1', 'Protector para Samsung J5 silicona', '', '0', 'motomo samsung j5 silicona verde', '1', '0', '12', '2017-02-04 16:02:49', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('60', '10031', 'Protector Samsung J5 Motomo Silicona Rosado', 'protector-samsung-j5-motomo-silicona-rosado', '9', '109', '284', '1', 'Protector para Samsung J5 silicona', '', '0', 'motomo samsung j5 silicona rosa rosado', '1', '0', '12', '2017-02-04 16:03:34', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('61', '10032', 'Protector Samsung J5 Gorila', 'protector-samsung-j5-gorila', '12', '112', '285', '1', 'Protector para Samsung J5 Gorila Plástico Duro', '', '0', 'generico samsung j5 gorila negro plastico', '1', '0', '12', '2017-02-04 16:05:51', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('62', '10033', 'Protector Samsung J5 Gatos', 'protector-samsung-j5-gatos', '12', '112', '286', '1', 'Protector para Samsung J5 Gato Plástico Duro', '', '0', 'generico samsung j5 negro plastico gato gatos', '1', '0', '12', '2017-02-04 16:09:35', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('63', '6947681526952', 'Moto X Play XT1563  Negro', 'moto-x-play-xt1563-negro', '8', '113', '287', '1', null, null, '0', 'moto x play xt1563  negro motox 1563 xt 4g motorola telefono teléfonos 5,5\" (pulgadas) 21mp 2gb octa-core snapdragon 615 4x1,7ghz 4x1,0ghz 16gb 5mp', '1', '0', '10', '2017-02-05 01:39:06', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('65', '8806088567167', 'Samsung Galaxy J2 Prime Dorado', 'samsung-galaxy-j2-prime-dorado', '2', '93', '289', '1', 'j2 prime lte', 'pantalla 5\'\'memori interna de 8gb,ram 1.5gb,procesador mediatek quadcore', '0', 'samsung galaxy j2 prime dorado sm-g532m tecnologia gsm/hspa/lte banda 4(1700/2100) peso 160g(5.64oz) pantalla 5.0 os android os, v6.0 (marshmallow) chipset mediatek mt6737t cpu quad-core 1.4 ghz cortex-a53 gpu mali-t720mp2 memoria interna 8gb ram 1.5gb camara trasera 8mp frontal 5mp bateria removible li-ion 2600 mah color', '1', '0', '10', '2017-02-05 01:39:26', '2017-08-02 14:36:45');
INSERT INTO `products` VALUES ('66', '8806088554280', 'Samsung Galaxy J2 Prime Negro', 'samsung-galaxy-j2-prime-negro', '2', '93', '290', '1', 'j2 prime lte', 'pantalla 5\'\'memoria interna de 8gb,ram1.5gb,procesador mediatek quadcore', '0', 'samsung galaxy j2 prime negro sm-g532m tecnologia gsm/hspa/lte banda 4(1700/2100) peso 160g(5.64oz) pantalla 5.0 os android os, v6.0 (marshmallow) chipset mediatek mt6737t cpu quad-core 1.4 ghz cortex-a53 gpu mali-t720mp2 memoria interna 8gb ram 1.5gb camara trasera 8mp frontal 5mp bateria removible li-ion 2600 mah color', '1', '0', '10', '2017-02-05 01:39:27', '2017-08-02 14:35:12');
INSERT INTO `products` VALUES ('67', '8806088566849', 'Samsung Galaxy J2 Prime Gris', 'samsung-galaxy-j2-prime-gris', '2', '93', '291', '1', 'samsung j2 prime lte', 'pantalla 5\'\'memoria de 8gb,memoria ram de 1.5gb,procesador mediatek quadcore', '0', 'samsung galaxy j2 prime gris sm-g532m tecnologia gsm/hspa/lte banda 4(1700/2100) peso 160g(5.64oz) pantalla 5.0 os android os, v6.0 (marshmallow) chipset mediatek mt6737t cpu quad-core 1.4 ghz cortex-a53 gpu mali-t720mp2 memoria interna 8gb ram 1.5gb camara trasera 8mp frontal 5mp bateria removible li-ion 2600 mah color', '1', '0', '10', '2017-02-05 01:39:29', '2017-08-02 14:33:23');
INSERT INTO `products` VALUES ('68', '8806086862950', 'Samsung Galaxy J7 Negro', 'samsung-galaxy-j7-negro', '2', '94', '292', '1', null, null, '0', 'samsung galaxy j7 negro telefomo smart phone sm-j700m telefono teléfonos gsm/hspa/lte 4(1700/2100) 171g(6.03oz) 5.5 android os, v5.1 (lollipop), upgradable to v6.0.1 (marshmallow) qualcomm msm8939 snapdragon 615exynos 7580 octa octa-core (4x1.4 ghz cortex-a53 & 4x1.0 cortex-a53)octa-core 1.5 adreno 405mali-t720mp2 16gb 1.5gb 13mp 5mp removible li-ion 3000 mah', '1', '0', '10', '2017-02-05 01:39:30', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('69', '8806086830157', 'Samsung Galaxy J7 Dorado', 'samsung-galaxy-j7-dorado', '2', '94', '293', '1', null, null, '0', 'samsung galaxy j7 dorado telefomo smart phone sm-j700m telefono teléfonos gsm/hspa/lte 4(1700/2100) 171g(6.03oz) 5.5 android os, v5.1 (lollipop), upgradable to v6.0.1 (marshmallow) qualcomm msm8939 snapdragon 615exynos 7580 octa octa-core (4x1.4 ghz cortex-a53 & 4x1.0 cortex-a53)octa-core 1.5 adreno 405mali-t720mp2 16gb 1.5gb 13mp 5mp removible li-ion 3000 mah', '1', '0', '10', '2017-02-05 01:39:31', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('70', '8806088579542', 'Samsung Galaxy J5 Prime Duos Dorado', 'samsung-galaxy-j5-prime-duos-dorado', '2', '95', '294', '1', null, null, '0', 'samsung galaxy j5 prime duos dorado telefomo smart phone sm-g570m/ds telefono teléfonos gsm/hspa/lte  143g(5.04oz) 5.0 android os, v6.0.1 (marshmallow) exynos 7570 quad quad-core 1.4 ghz cortex-a53 mali-t720 16gb 2gb 13mp 5mp no-removible li-ion 2400 mah compatible', '1', '0', '10', '2017-02-05 01:39:31', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('71', '8806088579566', 'Samsung Galaxy J5 Prime Duos Negro ', 'samsung-galaxy-j5-prime-duos-negro', '2', '95', '295', '1', 'samsung j5 prime lte', 'pantalla 5\'\'memoria interna de 16gb,memoiria ram de 2gb,procesador quadcore', '0', 'samsung galaxy j5 prime duos negro  sm-g570m/ds tecnologia gsm/hspa/lte banda peso 143g(5.04oz) pantalla 5.0 os android os, v6.0.1 (marshmallow) chipset exynos 7570 quad cpu quad-core 1.4 ghz cortex-a53 gpu mali-t720 memoria interna 16gb ram 2gb camara trasera 13mp frontal 5mp bateria no-removible li-ion 2400 mah color dual sim compatible', '1', '0', '10', '2017-02-05 01:45:19', '2017-08-02 14:30:30');
INSERT INTO `products` VALUES ('72', '6922309822692', 'Samsung Galaxy A5 2016 Negro ', 'samsung-galaxy-a5-2016-negro', '2', '96', '296', '1', null, null, '0', 'samsung galaxy a5 2016 negro  telefomo smart phone sm-a5100 telefono teléfonos gsm/cdma/hspa/evdo/lte 4(1700/2100) 155g(5.47oz) 5.2 android os, v5.1.1 (lollipop), actualizable a v6.0.1 (marshmallow) qualcomm msm8939 snapdragon 615exynos 7580 octa octa-core (4x1.2 ghz cortex-a53 & 4x1.5 cortex-a53)octa-core 1.6 adreno 405mali-t720mp2 16gb 2gb 13mp 5mp no-removible li-ion 2900 mah', '1', '0', '10', '2017-02-05 01:45:21', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('73', '6922309822098', 'Samsung Galaxy A5 2016 Dorado', 'samsung-galaxy-a5-2016-dorado', '2', '96', '297', '1', null, null, '0', 'samsung galaxy a5 2016 dorado telefomo smart phone sm-a5100 telefono teléfonos gsm/cdma/hspa/evdo/lte 4(1700/2100) 155g(5.47oz) 5.2 android os, v5.1.1 (lollipop), actualizable a v6.0.1 (marshmallow) qualcomm msm8939 snapdragon 615exynos 7580 octa octa-core (4x1.2 ghz cortex-a53 & 4x1.5 cortex-a53)octa-core 1.6 adreno 405mali-t720mp2 16gb 2gb 13mp 5mp no-removible li-ion 2900 mah', '1', '0', '10', '2017-02-05 01:45:23', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('74', '8806088241692', 'Samsung Galaxy J1 Ace Duos Negro', 'samsung-galaxy-j1-ace-duos-negro', '2', '115', '298', '1', null, null, '0', 'samsung galaxy j1 ace duos negro telefomo smart phone sm-j111m/ds telefono teléfonos gsm/hspa/lte 4(1700/2100) 131g(4.62oz) 4.3 android os, v4.4.4 (kitkat) spreadtrum sc9830marvell pxa1908 quad-core 1.5 ghz cortex-a7 mali-400mp2 4gb 512mb 5mp 2mp removible li-ion 1900 mah compatible', '1', '0', '10', '2017-02-05 01:45:25', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('75', '8806088241890', 'Samsung Galaxy J1 Ace  Duos Blanco', 'samsung-galaxy-j1-ace-duos-blanco', '2', '115', '299', '1', null, null, '0', 'samsung galaxy j1 ace  duos blanco telefomo smart phone sm-j111m/ds telefono teléfonos gsm/hspa/lte 4(1700/2100) 131g(4.62oz) 4.3 android os, v4.4.4 (kitkat) spreadtrum sc9830marvell pxa1908 quad-core 1.5 ghz cortex-a7 mali-400mp2 4gb 512mb 5mp 2mp removible li-ion 1900 mah compatible', '1', '0', '10', '2017-02-05 01:45:26', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('76', '8806086867542', 'Samsung Galaxy J5 Blanco', 'samsung-galaxy-j5-blanco', '2', '98', '300', '1', null, null, '0', 'samsung galaxy j5 blanco telefomo smart phone sm-j500m telefono teléfonos gsm/hspa/lte 4(1700/2100) 146g(5.15oz) 5.0 android os, v5.1 (lollipop), actualizable ao v6.0.1 (marshmallow) qualcomm msm8916 snapdragon 410 quad-core 1.2 ghz cortex-a53 adreno 306 8/16gb 1.5gb 13mp 5mp removible li-ion 2600 mah', '1', '0', '10', '2017-02-05 01:45:27', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('77', '8806086867177', 'Samsung Galaxy J5 Negro', 'samsung-galaxy-j5-negro', '2', '98', '301', '1', null, null, '0', 'samsung galaxy j5 negro telefomo smart phone sm-j500m telefono teléfonos gsm/hspa/lte 4(1700/2100) 146g(5.15oz) 5.0 android os, v5.1 (lollipop), actualizable a v6.0.1 (marshmallow) qualcomm msm8916 snapdragon 410 quad-core 1.2 ghz cortex-a53 adreno 306 8/16gb 1.5gb 13mp 5mp removible li-ion 2600 mah', '1', '0', '10', '2017-02-05 01:45:30', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('78', '8806088207056', 'Samsung Galaxy J1 2016  Duos Blanco', 'samsung-galaxy-j1-2016-duos-blanco', '2', '116', '302', '1', '', '', '0', 'samsung galaxy j1 2016  duos blanco sm-j120h tecnologia gsm/hspa/lte banda 4(1700/2100) peso 131g(4.62oz) pantalla 4.5 os android os, v5.1.1 (lollipop) chipset spreadtrum sc9830 cpu quad-core 1.3 ghz cortex-a7 gpu mali-400 memoria interna 8gb ram 1gb camara trasera 5mp frontal 2mp bateria removible li-ion 2050 mah color dual sim compatible', '1', '0', '10', '2017-02-05 01:45:32', '2017-08-02 09:05:14');
INSERT INTO `products` VALUES ('79', '8806088207032', 'Samsung Galaxy J1 2016 Duos Dorado', 'samsung-galaxy-j1-2016-duos-dorado', '2', '116', '303', '1', null, null, '0', 'samsung galaxy j1 2016 duos dorado telefomo smart phone sm-j120h telefono teléfonos gsm/hspa/lte 4(1700/2100) 131g(4.62oz) 4.5 android os, v5.1.1 (lollipop) spreadtrum sc9830 quad-core 1.3 ghz cortex-a7 mali-400 8gb 1gb 5mp 2mp removible li-ion 2050 mah compatible', '1', '0', '10', '2017-02-05 01:45:33', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('80', '8806088851549', 'Samsung Galaxy J1 Mini Prime Duos Negro', 'samsung-galaxy-j1-mini-prime-duos-negro', '2', '117', '304', '1', '', '', '1', 'samsung galaxy j1 mini prime duos negro sm-j106b/ds tecnologia gsm/hspa/lte banda  peso 126g(4.44oz) pantalla 4.0 os android os, v5.1 (lollipop) chipset spreadtrum sc9830 cpu quad-core 1.5 ghz gpu mali-400mp2 memoria interna 8gb ram 1gb camara trasera 5mp frontal vga bateria removible li-ion 1500 mah color dual sim compatible', '1', '0', '10', '2017-02-05 01:45:34', '2017-06-28 14:26:30');
INSERT INTO `products` VALUES ('81', '7702138109954', 'Huawei Ascend G630 Dual SIM Negro', 'huawei-ascend-g630-dual-sim-negro', '3', '118', '305', '1', null, null, '0', 'huawei ascend g630 dual sim negro duos telefono teléfonos', '1', '0', '10', '2017-02-05 02:05:20', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('82', '6901443134717', 'Huawei Y5 II Dual SIM Negro', 'huawei-y5-ii-dual-sim-negro', '3', '119', '306', '1', null, null, '0', 'huawei y5 ii dual sim negro 2 cun-l23 cun l23 4g duos telefono teléfonos', '1', '0', '10', '2017-02-05 02:05:22', '2017-08-02 14:17:59');
INSERT INTO `products` VALUES ('84', '7702138107561', 'Huawei Ascend Y600 Dual SIM Azul', 'huawei-ascend-y600-dual-sim-azul', '3', '121', '308', '1', null, null, '0', 'huawei ascend y600 dual sim azul y600-u351 u351 telefono teléfonos', '1', '0', '10', '2017-02-05 02:05:25', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('85', '7702138103976', 'Huawei G6 Dual SIM Negro', 'huawei-g6-dual-sim-negro', '3', '122', '309', '1', null, null, '0', 'huawei g6 dual sim negro duos telefono teléfonos', '1', '0', '10', '2017-02-05 02:05:25', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('86', '8806088573564', 'Samsung Galaxy J7 Prime Duos Negro', 'samsung-galaxy-j7-prime-duos-negro', '2', '124', '310', '1', 'j7 prime 4g lte', 'pantalla 5\'\' memoria interna de 16gb,memoria ram de 3gb,procesador snapdragon 410,octa core,gran diseno metalizado', '0', 'samsung galaxy j7 prime duos negro sm-g610m/ds camara frontal 8mp trasera 13mp pantalla 5.5\" cpu octa-core 1.6ghz capacidad 16gb lector de huellas escáner huella', '1', '0', '10', '2017-02-24 09:44:01', '2017-08-02 14:27:22');
INSERT INTO `products` VALUES ('87', '8806088014036', 'Samsung Galaxy j5 SM-J500M/DS', 'samsung-galaxy-j5-6-duos-blanco', '2', '164', '311', '1', 'j5 4g lte 16gb ', 'amsung Galaxy J5: Características y especificaciones\r\n\r\nEl Samsung Galaxy J5 es, el primer smartphone de Samsung en contar con un flash LED al frente. Entre sus características se destacan una pantalla HD de 5 pulgadas, procesador quad-core Snapdragon 410, 1.5GB de RAM, 16GB de almacenamiento interno, cámara frontal de 5 MP, cámara principal de 13 MP y corre Android 5.1 Lollipop.', '0', 'samsung galaxy j5 sm-j500m/ds camara trasera 13mp pantalla 5.2\" capacidad 16gb frontal 5mp flash cpu quad-core 1.2ghz banda lte cat4', '1', '0', '10', '2017-02-24 09:53:06', '2017-08-02 14:18:57');
INSERT INTO `products` VALUES ('88', '8806088548012', 'Samsung Galaxy J7 (6) Duos Negro', 'samsung-galaxy-j7-6-duos-negro', '2', '126', '312', '1', '', '', '0', 'samsung galaxy j7 (6) duos negro sm-j710mn/ds 13mp 5.5\" 16gb 5mp flash frontal lte cat4 octa-core 1.6ghz', '1', '0', '10', '2017-02-24 10:00:46', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('89', '6901443070381', 'Huawei G Play Mini Blanco', 'huawei-g-play-mini-blanco', '3', '127', '313', '1', '', '', '0', 'huawei g play mini blanco chc-u03 5.0\" 1.2ghz 13mp 5mp 8gb 2gb', '1', '0', '10', '2017-02-24 10:10:43', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('90', '10034', 'HYUNDAI D245 Dual Sim', 'hyundai-d245-dual-sim', '14', '128', '314', '1', '', '', '0', 'hyundai d245 dual sim 0.08mp bluetooth v2.1', '1', '0', '10', '2017-02-24 10:17:47', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('91', '10035', 'azumi A35S lite ', 'azumi-a35s-lite', '15', '129', '315', '1', '', '', '0', 'azumi a35s lite  3.5\" 2mp dual-core 1.0ghz', '1', '0', '10', '2017-02-24 10:27:57', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('92', 'zoomfly24azul', 'ZOOM Fly 2.4 Azul Dual SIM', 'zoom-fly-24-azul', '16', '130', '316', '1', '', '', '0', 'zoom fly 2.4 azul 0.3mp 2.4\" bluetooth v2.1 hasta 32gb', '1', '0', '10', '2017-02-24 11:10:37', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('93', 'zoomfly24negro', 'ZOOM Fly 2.4 Negro Dual SIM', 'zoom-fly-24-negro', '16', '130', '317', '1', '', '', '0', 'zoom fly 2.4 negro dual sim 2.4\" 0.3mp', '1', '0', '10', '2017-02-24 11:17:40', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('94', 'zoomfly24blanco', 'ZOOM Fly 2.4 Blanco Dual SIM', 'zoom-fly-24-blanco-dual-sim', '16', '130', '318', '1', '', '', '0', 'zoom fly 2.4 blanco dual sim 2.4\" 0.3mp', '1', '0', '10', '2017-02-24 11:20:25', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('95', 'zoomfly24verde', 'ZOOM Fly 2.4 Verde Dual SIM', 'zoom-fly-24-verde-dual-sim', '16', '130', '319', '1', '', '', '0', 'zoom fly 2.4 verde dual sim 0.3mp hasta 32gb', '1', '0', '10', '2017-02-24 11:29:41', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('97', 'hotcelxcoverv6naranja', 'Hotcel Xcover V6 Naranja Dual SIM', 'hotcel-xcover-v6-naranja', '17', '131', '321', '1', '', '', '0', 'hotcel xcover v6 naranja', '1', '0', '10', '2017-02-24 12:06:54', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('98', 'hotcelxcoverv6azul', 'Hotcel Xcover V6 Azul Dual SIM', 'hotcel-xcover-v6-azul', '17', '131', '322', '1', '', '', '0', 'hotcel xcover v6 azul', '1', '0', '10', '2017-02-24 12:07:33', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('99', 'hotcelxcoverv6amarillo', 'Hotcel Xcover V6 Amarillo Dual SIM', 'hotcel-xcover-v6-amarillo', '17', '131', '323', '1', '', '', '0', 'hotcel xcover v6 amarillo', '1', '0', '10', '2017-02-24 12:08:20', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('100', 'hotcelxcoverv6blanco', 'Hotcel Xcover V6 Blanco Dual SIM', 'hotcel-xcover-v6-blanco', '17', '131', '324', '1', '', '', '0', 'hotcel xcover v6 blanco', '1', '0', '10', '2017-02-24 12:09:21', '2017-08-02 14:17:11');
INSERT INTO `products` VALUES ('101', 'hotcelxcoverv6verde', 'Hotcel Xcover V6 Verde Dual SIM', 'hotcel-xcover-v6-verde-dual-sim', '17', '131', '325', '1', '', '', '0', 'hotcel xcover v6 verde dual sim', '1', '0', '10', '2017-02-24 12:10:17', '2017-08-02 14:16:57');
INSERT INTO `products` VALUES ('102', 'zoomultra220blanco', 'ZOOM Ultra 220 Blanco Dual SIM', 'zoom-ultra-220-blanco-dual-sim', '16', '132', '326', '1', '', '', '0', 'zoom ultra 220 blanco dual sim', '1', '0', '10', '2017-02-24 12:14:46', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('103', '4894461322285', 'Alcatel 1050A Negro', 'alcatel-1050a-negro', '7', '133', '327', '1', '', '', '0', 'alcatel 1050a negro nuevo', '1', '0', '10', '2017-02-24 12:23:25', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('104', '8806084974501', 'LG B220 Negro Dual SIM', 'lg-b220-negro-dual-sim', '18', '134', '328', '1', '', '', '0', 'lg b220 negro dual sim', '1', '0', '10', '2017-02-24 12:26:45', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('105', '6901443055272', 'Huawei Y3 Blanco Dual SIM', 'huawei-y3-blanco-dual-sim', '3', '135', '329', '1', '', '', '0', 'huawei y3 blanco dual sim y360-u03 4.0\" 1.3ghz', '1', '0', '10', '2017-02-24 12:32:56', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('106', '6901443079322', 'Huawei Y5 Negro', 'huawei-y5-negro', '3', '120', '330', '1', '', '', '0', 'huawei y5 negro y560-l02', '1', '0', '10', '2017-02-24 12:36:30', '2017-08-02 14:17:25');
INSERT INTO `products` VALUES ('107', '10036', 'Protector Samsung J7 Prime Escarcha Plateado', 'protector-samsung-j7-prime-escarcha-plateado', '12', '137', '331', '1', '', '', '0', 'protector samsung j7 prime escarcha plateado generico silicona', '1', '0', '12', '2017-03-01 10:58:43', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('108', '10037', 'Protector Samsung J7 Prime Escarcha Dorado', 'protector-samsung-j7-prime-escarcha-dorado', '12', '137', '332', '1', '', '', '0', 'protector samsung j7 prime escarcha dorado generico silicona', '1', '0', '12', '2017-03-01 11:02:12', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('109', '10038', 'Protector Samsung J7 Prime Escarcha Negro', 'protector-samsung-j7-prime-escarcha-negro', '12', '137', '333', '1', '', '', '0', 'protector samsung j7 prime escarcha negro generico silicona', '1', '0', '12', '2017-03-01 11:04:43', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('110', '10039', 'Protector Samsung J7 Prime Escarcha Azul', 'protector-samsung-j7-prime-escarcha-azul', '12', '137', '334', '1', '', '', '0', 'protector samsung j7 prime escarcha azul generico silicona', '1', '0', '12', '2017-03-01 11:06:11', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('111', '10040', 'Protector Samsung J7 Prime Escarcha Rosado', 'protector-samsung-j7-prime-escarcha-rosado', '12', '137', '335', '1', '', '', '0', 'protector samsung j7 prime escarcha rosado generico silicona', '1', '0', '12', '2017-03-01 11:09:59', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('114', '10042', 'Protector Motomo Samsung J7 Prime Gris', 'protector-motomo-samsung-j7-prime-gris', '9', '138', '338', '1', '', '', '0', 'protector motomo samsung j7 prime gris silicona', '1', '0', '12', '2017-03-01 11:29:22', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('115', '10043', 'Protector Motomo Samsung J7 Prime Morado', 'protector-motomo-samsung-j7-prime-morado', '9', '138', '339', '1', '', '', '0', 'protector motomo samsung j7 prime morado silicona', '1', '0', '12', '2017-03-01 11:29:55', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('116', '10044', 'Protector Motomo Samsung J7 Prime Negro', 'protector-motomo-samsung-j7-prime-negro', '9', '138', '340', '1', '', '', '0', 'protector motomo samsung j7 prime negro silicona', '1', '0', '12', '2017-03-01 11:30:30', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('117', '10045', 'Protector Motomo Samsung J7 Prime Blanco', 'protector-motomo-samsung-j7-prime-blanco', '9', '138', '341', '1', '', '', '0', 'protector motomo samsung j7 prime blanco silicona', '1', '0', '12', '2017-03-01 11:30:58', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('118', '10046', 'Protector Motomo Samsung J7 Prime Azul', 'protector-motomo-samsung-j7-prime-azul', '9', '138', '342', '1', '', '', '0', 'protector motomo samsung j7 prime azul silicona', '1', '0', '12', '2017-03-01 11:31:26', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('119', '10047', 'Protector Motomo Samsung J7 Prime Rosado', 'protector-motomo-samsung-j7-prime-rosado', '9', '138', '343', '1', '', '', '0', 'protector motomo samsung j7 prime rosado silicona', '1', '0', '12', '2017-03-01 11:32:08', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('120', '10048', 'Protector Samsung J7 Prime Mariposas', 'protector-samsung-j7-prime-mariposas', '12', '137', '344', '1', '', '', '0', 'protector samsung j7 prime mariposas generico silicona amarillo rosado morado', '1', '0', '12', '2017-03-01 11:45:59', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('121', '10049', 'Protector Samsung J7 Prime Corazones', 'protector-samsung-j7-prime-corazones', '12', '137', '345', '1', '', '', '0', 'protector samsung j7 prime corazones generico silicona amarillo blanco azul rojo', '1', '0', '12', '2017-03-01 11:46:45', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('122', '10050', 'Protector Samsung J7 Prime Corazon y Buho', 'protector-samsung-j7-prime-corazon-y-buho', '12', '137', '346', '1', '', '', '0', 'protector samsung j7 prime corazon y buho generico silicona blanco rosado verde', '1', '0', '12', '2017-03-01 11:48:07', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('123', '10051', 'Protector Samsung J7 Prime Flores', 'protector-samsung-j7-prime-flores', '12', '137', '347', '1', '', '', '0', 'protector samsung j7 prime flores generico silicona azul amarillo verde rosado blanco rojo', '1', '0', '12', '2017-03-01 11:49:00', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('124', '10052', 'Protector Samsung J7 Prime Conejos y Corazones', 'protector-samsung-j7-prime-conejos-y-corazones', '12', '137', '348', '1', '', '', '0', 'protector samsung j7 prime conejos y corazones generico silicona negro blanco rosado rojo', '1', '0', '12', '2017-03-01 11:49:53', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('125', '10053', 'Protector Samsung J7 Prime Real Madrid', 'protector-samsung-j7-prime-real-madrid', '12', '137', '349', '1', '', '', '0', 'protector samsung j7 prime real madrid generico silicona negro blanco azul', '1', '0', '12', '2017-03-01 11:50:37', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('126', '10054', 'Protector Samsung J7 Prime Atlético Nacional', 'protector-samsung-j7-prime-atletico-nacional', '12', '137', '350', '1', '', '', '0', 'protector samsung j7 prime atlético nacional generico silicona negro verde', '1', '0', '12', '2017-03-01 11:51:39', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('127', '10055', 'Protector Samsung J7 Prime Barcelona', 'protector-samsung-j7-prime-barcelona', '12', '137', '351', '1', '', '', '0', 'protector samsung j7 prime barcelona generico silicona rojo azul', '1', '0', '12', '2017-03-01 11:52:11', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('128', '10056', 'Protector Samsung J7 Prime Con Piedras Brillantes Azul', 'protector-samsung-j7-prime-con-piedras-brillantes-azul', '12', '137', '352', '1', '', '', '0', 'protector samsung j7 prime con piedras brillantes azul generico silicona y plateado', '1', '0', '12', '2017-03-01 11:53:23', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('129', '10057', 'Protector Samsung J7 Prime Con Piedras Brillantes Plateado', 'protector-samsung-j7-prime-con-piedras-brillantes-plateado', '12', '137', '353', '1', '', '', '0', 'protector samsung j7 prime con piedras brillantes plateado generico silicona', '1', '0', '12', '2017-03-01 11:53:52', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('130', '10058', 'Protector Samsung J7 Prime Con Piedras Brillantes Rosado', 'protector-samsung-j7-prime-con-piedras-brillantes-rosado', '12', '137', '354', '1', '', '', '0', 'protector samsung j7 prime con piedras brillantes rosado generico silicona plateado', '1', '0', '12', '2017-03-01 11:54:28', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('131', '10059', 'Protector Samsung J7 Prime Con Piedras Brillantes Rojo', 'protector-samsung-j7-prime-con-piedras-brillantes-rojo', '12', '137', '355', '1', '', '', '0', 'protector samsung j7 prime con piedras brillantes rojo generico silicona plateado', '1', '0', '12', '2017-03-01 11:55:01', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('132', '10060', 'Protector Samsung J7 Prime Hello Kitty', 'protector-samsung-j7-prime-hello-kitty', '12', '137', '356', '1', '', '', '0', 'protector samsung j7 prime hello kitty generico silicona transparente', '1', '0', '12', '2017-03-01 11:55:44', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('133', '10061', 'Protector Samsung J7 Prime Gris', 'protector-samsung-j7-prime-gris', '12', '137', '357', '1', '', '', '0', 'protector samsung j7 prime gris generico silicona', '1', '0', '12', '2017-03-01 11:56:20', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('134', '10062', 'Protector Samsung J7 Prime Rojo', 'protector-samsung-j7-prime-rojo', '12', '137', '358', '1', '', '', '0', 'protector samsung j7 prime rojo generico silicona', '1', '0', '12', '2017-03-01 11:56:54', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('135', '10063', 'Protector YOUYOU Samsung J7 Prime Plateado', 'protector-youyou-samsung-j7-prime-plateado', '12', '137', '359', '1', '', '', '0', 'protector youyou samsung j7 prime plateado generico silicona gris', '1', '0', '12', '2017-03-01 11:59:08', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('136', '10064', 'Protector YOUYOU Samsung J7 Prime Negro', 'protector-youyou-samsung-j7-prime-negro', '12', '137', '360', '1', '', '', '0', 'protector youyou samsung j7 prime negro generico silicona', '1', '0', '12', '2017-03-01 11:59:29', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('137', '10065', 'Protector YOUYOU Samsung J7 Prime Gris', 'protector-youyou-samsung-j7-prime-gris', '12', '137', '361', '1', '', '', '0', 'protector youyou samsung j7 prime gris generico silicona', '1', '0', '12', '2017-03-01 12:00:23', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('138', '10066', 'Protector YOUYOU Samsung J7 Prime Rojo', 'protector-youyou-samsung-j7-prime-rojo', '12', '137', '362', '1', '', '', '0', 'protector youyou samsung j7 prime rojo generico silicona', '1', '0', '12', '2017-03-01 12:01:04', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('139', '10067', 'Protector YOUYOU Samsung J7 Prime Fucsia', 'protector-youyou-samsung-j7-prime-fucsia', '12', '137', '363', '1', '', '', '0', 'protector youyou samsung j7 prime fucsia generico silicona', '1', '0', '12', '2017-03-01 12:01:53', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('140', '10068', 'Protector Anti Golpe YOUYOU Samsung J7 Prime Dorado', 'protector-youyou-samsung-j7-prime-dorado', '12', '137', '364', '1', '', '', '0', 'protector anti golpe youyou samsung j7 prime dorado generico silicona negro', '1', '0', '12', '2017-03-01 12:02:24', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('141', '10069', 'Protector Anti Golpe YOUYOU Samsung J7 Prime Fucsia', 'protector-anti-golpe-youyou-samsung-j7-prime-fucsia', '12', '137', '365', '1', '', '', '0', 'protector anti golpe youyou samsung j7 prime fucsia generico silicona negro', '1', '0', '12', '2017-03-01 12:03:15', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('142', '10070', 'Protector Anti Golpe YOUYOU Samsung J7 Prime Azul', 'protector-anti-golpe-youyou-samsung-j7-prime-azul', '12', '137', '366', '1', '', '', '0', 'protector anti golpe youyou samsung j7 prime azul generico silicona', '1', '0', '12', '2017-03-01 12:05:25', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('143', '10071', 'Protector Anti Golpe YOUYOU Samsung J7 Prime Plateado', 'protector-anti-golpe-youyou-samsung-j7-prime-plateado', '12', '137', '367', '1', '', '', '0', 'protector anti golpe youyou samsung j7 prime plateado generico silicona', '1', '0', '12', '2017-03-01 12:05:54', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('144', '10072', 'Audífonos Manos Libres de Super Mario', 'audifonos-manos-libres-de-super-mario', '12', '139', '368', '1', 'Audifonos y Manos Libres de Super Mario Bros. 3', 'Audifonos y Manos Libres de Super Mario Bros. 3', '0', 'audifonos manos libres de super mario generico conector 3.5 color rojo y blanco', '1', '0', '11', '2017-03-28 21:56:15', '2017-08-02 14:16:06');
INSERT INTO `products` VALUES ('145', '10073', 'Audífonos Manos Libres De Hello Kitty', 'audifonos-manos-libres-de-hello-kitty', '12', '140', '369', '1', 'Audifonos y Manos Libres de Hello Kitty.', 'Audifonos y Manos Libres de Hello Kitty.', '0', 'audifonos manos libres de hello kitty generico conector 3.5 color rosado con blanco', '1', '0', '11', '2017-03-28 21:59:04', '2017-08-02 14:15:50');
INSERT INTO `products` VALUES ('146', '10074', 'Audífonos Manos Libres De Mickey Mouse', 'audifonos-manos-libres-de-mickey-mouse', '12', '141', '370', '1', 'Audifonos y Manos Libres de Mickey Mouse.', 'Audifonos y Manos Libres de Mickey Mouse.', '0', 'audifonos manos libres de mickey mouse generico conector 3.5 color negro con blanco y rosado', '1', '0', '11', '2017-03-28 22:00:44', '2017-08-02 14:15:34');
INSERT INTO `products` VALUES ('147', '10075', 'Audífonos Manos Libres ZiPP EARPHONE Corredera Azul', 'audifonos-manos-libres-zipp-earphone-corredera-azul', '12', '142', '371', '1', 'Audifonos y Manos Libres de ZiPPEARPHONE.', 'Audifonos y Manos Libres de ZiPPEARPHONE.', '0', 'audífonos manos libres zipp earphone corredera azul generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:05:01', '2017-08-02 14:15:11');
INSERT INTO `products` VALUES ('148', '10076', 'Audífonos Manos Libres ZiPP EARPHONE Corredera Rojo', 'audifonos-manos-libres-zipp-earphone-corredera-rojo', '12', '142', '372', '1', 'Audifonos y Manos Libres de ZiPPEARPHONE.', 'Audifonos y Manos Libres de ZiPPEARPHONE.', '0', 'audífonos manos libres zipp earphone corredera rojo generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:05:52', '2017-08-02 14:14:54');
INSERT INTO `products` VALUES ('149', '10077', 'Audífonos Manos Libres ZiPP EARPHONE Corredera Blanco', 'audifonos-manos-libres-zipp-earphone-corredera-blanco', '12', '142', '373', '1', 'Audifonos y Manos Libres de ZiPPEARPHONE.', 'Audifonos y Manos Libres de ZiPPEARPHONE.', '0', 'audífonos manos libres zipp earphone corredera blanco generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:06:19', '2017-08-02 14:14:38');
INSERT INTO `products` VALUES ('150', '10078', 'Audífonos Manos Libres ZiPP EARPHONE Corredera Naranja', 'audifonos-manos-libres-zipp-earphone-corredera-naranja', '12', '142', '374', '1', 'Audifonos y Manos Libres de ZiPPEARPHONE.', 'Audifonos y Manos Libres de ZiPPEARPHONE.', '0', 'audífonos manos libres zipp earphone corredera naranja generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:06:48', '2017-08-02 14:14:22');
INSERT INTO `products` VALUES ('151', '10079', 'Audífonos Manos Libres RAEN Negro', 'audifonos-manos-libres-raen-negro', '12', '143', '375', '1', 'Audifonos y Manos Libres de RAEN R13.', 'Audifonos y Manos Libres de RAEN R13.', '0', 'audífonos manos libres raen negro generico conector 3.5 color con dorado', '1', '0', '11', '2017-03-28 22:08:11', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('152', '10080', 'Audífonos Manos Libres Nike Azul', 'audifonos-manos-libres-nike-azul', '12', '144', '376', '1', 'Audifonos y Manos Libres de Nike.', 'Audifonos y Manos Libres de Nike.', '0', 'audífonos manos libres nike azul generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:09:49', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('153', '10081', 'Audífonos Manos Libres LUGO Blanco', 'audifonos-manos-libres-lugo-blanco', '12', '145', '377', '1', 'Audifonos y Manos Libres LUGO.', 'Audifonos y Manos Libres LUGO.', '0', 'audífonos manos libres  lugo blanco generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:11:02', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('154', '10082', 'Audífonos Manos Libres SONY hearin Verde', 'audifonos-manos-libres-sony-hearin-verde', '12', '146', '378', '1', 'Audifonos y Manos Libres SONY hearin.', 'Audifonos y Manos Libres SONY hearin.', '0', 'audífonos manos libres  sony hearin verde generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:14:39', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('155', '10083', 'Audífonos Manos Libres SONY hearin Azul', 'audifonos-manos-libres-sony-hearin-azul', '12', '146', '379', '1', 'Audifonos y Manos Libres SONY hearin.', 'Audifonos y Manos Libres SONY hearin.', '0', 'audífonos manos libres  sony hearin azul generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:15:06', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('156', '10084', 'Audífonos Manos Libres SONY hearin Fucsia', 'audifonos-manos-libres-sony-hearin-fucsia', '12', '146', '380', '1', 'Audifonos y Manos Libres SONY hearin.', 'Audifonos y Manos Libres SONY hearin.', '0', 'audífonos manos libres sony hearin fucsia generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:15:53', '2017-08-02 14:13:44');
INSERT INTO `products` VALUES ('157', '10085', 'Audífonos Manos Libres RAEN R160 Negro', 'audifonos-manos-libres-raen-r160-negro', '12', '143', '381', '1', 'Audifonos y Manos Libres RAEN R160.', 'Audifonos y Manos Libres RAEN R160.', '0', 'audífonos manos libres  raen r160 negro generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:17:08', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('158', '10086', 'Audífonos Manos Libres Adidas Rojo', 'audifonos-manos-libres-adidas-rojo', '12', '147', '382', '1', 'Audifonos y Manos Libres Adidas.', 'Audifonos y Manos Libres Adidas.', '0', 'audífonos manos libres  adidas rojo generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:18:29', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('159', '10087', 'Audífonos Manos Libres JBL Azul', 'audifonos-manos-libres-jbl-azul', '12', '148', '383', '1', 'Audifonos y Manos Libres JBL.', 'Audifonos y Manos Libres JBL.', '0', 'audífonos manos libres  jbl azul generico conector 3.5', '1', '0', '11', '2017-03-28 22:19:06', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('160', '10088', 'Audífonos Manos Libres REMAX Rosado', 'audifonos-manos-libres-remax-rosado', '12', '149', '384', '1', 'Audifonos y Manos Libres REMAX.', 'Audifonos y Manos Libres REMAX.', '0', 'audífonos manos libres  remax rosado generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:20:58', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('161', '10089', 'Audífonos Manos Libres REMAX Gris', 'audifonos-manos-libres-remax-gris', '12', '149', '385', '1', 'Audifonos y Manos Libres REMAX.', 'Audifonos y Manos Libres REMAX.', '0', 'audífonos manos libres  remax gris generico conector 3.5 color plateado', '1', '0', '11', '2017-03-28 22:21:47', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('162', '10090', 'Audífonos Manos Libres Adidas Diadema Roja', 'audifonos-manos-libres-adidas-diadema-roja', '12', '147', '386', '1', 'Audifonos y Manos Libres Adidas.', 'Audifonos y Manos Libres Adidas.', '0', 'audífonos manos libres  adidas diadema roja generico conector 3.5 color rojo con amarillo', '1', '0', '11', '2017-03-28 22:23:29', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('163', '10091', 'Audífonos Manos Libres Super BASS Diadema Futbol', 'audifonos-manos-libres-super-bass-diadema-futbol', '12', '150', '387', '1', 'Audifonos y Manos Libres Super BASS MS-163.', 'Audifonos y Manos Libres Super BASS MS-163.', '0', 'audífonos manos libres  super bass diadema futbol generico conector 3.5 color blanco con negro', '1', '0', '11', '2017-03-28 22:25:54', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('164', '10092', 'Audífonos Manos Libres Adidas Diadema Negro', 'audifonos-manos-libres-adidas-diadema-negro', '12', '147', '388', '1', 'Audifonos y Manos Libres Adidas.', 'Audifonos y Manos Libres Adidas.', '0', 'audífonos manos libres  adidas diadema negro generico conector 3.5 color con ocre', '1', '0', '11', '2017-03-28 22:27:10', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('165', '10093', 'Audífonos Manos Libres Nike Diadema Azul', 'audifonos-manos-libres-nike-diadema-azul', '12', '144', '389', '1', 'Audifonos y Manos Libres Adidas.', 'Audifonos y Manos Libres Adidas.', '0', 'audífonos manos libres  nike diadema azul generico conector 3.5 color con amarillo', '1', '0', '11', '2017-03-28 22:28:25', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('166', '10094', 'Audífonos Manos Libres iPhone Blanco', 'audifonos-manos-libres-iphone-blanco', '12', '151', '390', '1', 'Audifonos y Manos Libres iPhone.', 'Audifonos y Manos Libres iPhone.', '0', 'audífonos manos libres  iphone blanco generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:29:18', '2017-08-02 14:12:48');
INSERT INTO `products` VALUES ('167', '10095', 'Audífonos Manos Libres Colourful Azul', 'audifonos-manos-libres-colourful-azul', '12', '152', '391', '1', '', '', '0', 'audífonos manos libres colourful azul generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:30:37', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('168', '10096', 'Audífonos Manos Libres Colourful Morado', 'audifonos-manos-libres-colourful-morado', '12', '152', '392', '1', '', '', '0', 'audífonos manos libres colourful morado generico conector 3.5 color', '1', '0', '11', '2017-03-28 22:30:57', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('172', '10100', 'Audífonos Manos Libres Adidas Diadema Negro Dorado', 'audifonos-manos-libres-adidas-diadema-negro-dorado', '12', '147', '396', '1', '', '', '0', 'audífonos manos libres adidas diadema negro y ocre generico conector 3.5', '1', '0', '11', '2017-03-28 22:58:44', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('173', '10101', 'Diadema Manos Libres  Colourful BasketBall Blanco', 'diadema-manos-libres-colourful-basketball-blanco', '12', '152', '397', '1', '', '', '0', 'diadema manos libres  colourful basketball blanco generico color conector 3.5', '1', '0', '11', '2017-04-02 22:40:55', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('174', '10102', 'Diadema Manos Libres  Colourful BasketBall Morado', 'diadema-manos-libres-colourful-basketball-morado', '12', '152', '398', '1', '', '', '0', 'diadema manos libres  colourful basketball morado generico conector 3.5 color', '1', '0', '11', '2017-04-02 22:41:39', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('175', '10103', 'Diadema Manos Libres  Colourful BasketBall Negro', 'diadema-manos-libres-colourful-basketball-negro', '12', '152', '399', '1', '', '', '0', 'diadema manos libres  colourful basketball negro generico conector 3.5 color', '1', '0', '11', '2017-04-02 22:41:59', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('176', '10104', 'Diadema Manos Libres Adidas Amarilla con Rojo', 'diadema-manos-libres-adidas-amarilla-con-rojo', '12', '147', '400', '1', '', '', '0', 'diadema manos libres adidas amarilla con rojo generico conector 3.5 color amarillo', '1', '0', '11', '2017-04-02 22:43:42', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('177', '10105', 'Diadema Manos Libres Super BASS Futbol', 'diadema-manos-libres-super-bass-futbol', '12', '150', '401', '1', '', '', '0', 'diadema manos libres super bass futbol generico conector 3.5 color negro', '1', '0', '11', '2017-04-02 22:46:20', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('178', '10106', 'Audífonos Manos Libres Colourful Negro', 'audifonos-manos-libres-colourful-negro', '12', '152', '402', '1', '', '', '0', 'audífonos manos libres colourful negro generico conector 3.5 color con verde', '1', '0', '11', '2017-04-02 22:47:18', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('179', '10107', 'Diadema Radio FM y Reproductor MP3 ZOMAR Negro', 'diadema-radio-fm-y-reproductor-mp3-zomar-negro', '12', '153', '403', '1', 'Diadema con Radio FM y Reproductor de MP3', 'Diadema con Radio FM y Reproductor de MP3', '0', 'diadema radio fm y reproductor mp3 zomar negro generico conector 3.5 color', '1', '0', '11', '2017-04-02 22:53:47', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('180', '10108', 'Audífonos Manos Libres NIA Bluetooth Radio FM MP3 Verde', 'audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-verde', '12', '154', '404', '1', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', '0', 'audífonos manos libres nia bluetooth radio fm mp3 verde generico color 2.0', '1', '0', '11', '2017-04-02 23:00:06', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('181', '10109', 'Audífonos Manos Libres NIA Bluetooth Radio FM MP3 Blanco', 'audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-blanco', '12', '154', '405', '1', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', '0', 'audífonos manos libres nia bluetooth radio fm mp3 blanco generico 2.0 color', '1', '0', '11', '2017-04-02 23:03:36', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('182', '10110', 'Audífonos Manos Libres NIA Bluetooth Radio FM MP3 Gris', 'audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-gris', '12', '154', '406', '1', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', '0', 'audífonos manos libres nia bluetooth radio fm mp3 gris generico 2.0 color', '1', '0', '11', '2017-04-02 23:04:38', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('183', '10111', 'Audífonos Manos Libres NIA Bluetooth Radio FM MP3 Naranja', 'audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-naranja', '12', '154', '407', '1', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', '0', 'audífonos manos libres nia bluetooth radio fm mp3 naranja generico 2.0 color', '1', '0', '11', '2017-04-02 23:05:39', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('184', '10112', 'Audífonos Manos Libres NIA Bluetooth Radio FM MP3 Verde Claro', 'audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-verde-claro', '12', '154', '408', '1', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', '0', 'audífonos manos libres nia bluetooth radio fm mp3 verde claro generico 2.0 color', '1', '0', '11', '2017-04-02 23:07:33', '2017-08-02 13:16:34');
INSERT INTO `products` VALUES ('185', '10113', 'Audífonos Manos Libres NIA Bluetooth Radio FM MP3 Azul con Blanco', 'audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-azul-con-blanco', '12', '154', '409', '1', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', '0', 'audífonos manos libres nia bluetooth radio fm mp3 azul con blanco generico 2.0 color', '1', '0', '11', '2017-04-02 23:08:10', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('186', '10114', 'Audífonos Manos Libres NIA Bluetooth Radio FM MP3 Verde dos tonos', 'audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-verde-dos-tonos', '12', '154', '410', '1', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', '0', 'audífonos manos libres nia bluetooth radio fm mp3 verde dos tonos generico 2.0 color', '1', '0', '11', '2017-04-02 23:09:41', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('187', '10115', 'Audífonos Manos Libres NIA Bluetooth Radio FM MP3 Azul', 'audifonos-manos-libres-nia-bluetooth-radio-fm-mp3-azul', '12', '154', '411', '1', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', 'Diadema NIA Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', '0', 'audífonos manos libres nia bluetooth radio fm mp3 azul generico 2.0 color', '1', '0', '11', '2017-04-02 23:10:20', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('188', '10116', 'Diadema Bluetooth Manos Libres Radio RM y Reproductor MP3 Fucsia', 'diadema-bluetooth-manos-libres-radio-rm-y-reproductor-mp3-fucsia', '12', '155', '412', '1', 'Diadema Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', 'Diadema Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', '0', 'diadema bluetooth manos libres radio rm y reproductor mp3 fucsia generico 2.0 fm color', '1', '0', '11', '2017-04-02 23:11:55', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('189', '10117', 'Diadema Bluetooth Manos Libres Radio RM y Reproductor MP3 Morado', 'diadema-bluetooth-manos-libres-radio-rm-y-reproductor-mp3-morado', '12', '155', '413', '1', 'Diadema Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', 'Diadema Bluetooth, Manos Libres, Radio RM y Reproductor MP3.', '0', 'diadema bluetooth manos libres radio rm y reproductor mp3 morado generico 2.0 fm color', '1', '0', '11', '2017-04-02 23:12:37', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('190', '10118', 'Audífonos Diadema SONY Negro', 'audifonos-diadema-sony-negro', '12', '146', '414', '1', 'Audífonos Diadema y Manos Libres SONY Negro', 'Audífonos Diadema y Manos Libres SONY Negro', '0', 'audífonos diadema sony negro generico color conector 3.5', '1', '0', '11', '2017-04-02 23:14:45', '2017-11-30 15:38:54');
INSERT INTO `products` VALUES ('191', '10119', 'Audífonos Diadema Beats Azul', 'audifonos-diadema-beats-azul', '12', '156', '415', '1', 'Audífonos Diadema y Manos Libres Beats', 'Audífonos Diadema y Manos Libres Beats', '0', 'audífonos diadema beats azul generico conector 3.5', '1', '0', '11', '2017-04-02 23:16:29', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('192', '10120', 'Audífonos Diadema GIGO Azul', 'audifonos-diadema-gigo-azul', '12', '157', '416', '1', 'Audífonos Diadema y Manos Libres GIGO', 'Audífonos Diadema y Manos Libres GIGO', '0', 'audífonos diadema gigo azul generico conector 3.5 color', '1', '0', '11', '2017-04-02 23:17:52', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('193', '10121', 'Audífonos Diadema Beats Blanco', 'audifonos-diadema-beats-blanco', '12', '156', '417', '1', 'Audífonos Diadema Beats Blanco', 'Audífonos Diadema Beats Blanco', '20', 'audífonos diadema beats blanco generico conector 3.5 color', '1', '0', '11', '2017-04-02 23:18:40', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('194', '10122', 'Parlante Bluetooth y Reproductor MP3 Portatil Verde', 'parlante-bluetooth-y-reproductor-mp3-portatil-verde', '12', '158', '418', '1', 'Parlante Bluetooth y Reproductor MP3 Portatil con Batería integrada.', 'Parlante Bluetooth y Reproductor MP3 Portatil con Batería integrada.', '0', 'parlante bluetooth y reproductor mp3 portatil verde generico color 2.0', '1', '0', '14', '2017-04-02 23:22:50', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('195', '10123', 'Parlante Bluetooth y Reproductor MP3 Portatil Rojo', 'parlante-bluetooth-y-reproductor-mp3-portatil-rojo', '12', '158', '419', '1', 'Parlante Bluetooth y Reproductor MP3 Portatil con Batería integrada.', 'Parlante Bluetooth y Reproductor MP3 Portatil con Batería integrada.', '0', 'parlante bluetooth y reproductor mp3 portatil rojo generico 2.0 color con blanco', '1', '0', '14', '2017-04-02 23:24:06', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('196', '10124', 'Parlante Bluetooth y Reproductor MP3 Portatil Morado', 'parlante-bluetooth-y-reproductor-mp3-portatil-morado', '12', '158', '420', '1', 'Parlante Bluetooth y Reproductor MP3 Portatil con Batería integrada.', 'Parlante Bluetooth y Reproductor MP3 Portatil con Batería integrada.', '0', 'parlante bluetooth y reproductor mp3 portatil morado generico 2.0 color', '1', '0', '14', '2017-04-02 23:26:40', '2017-08-02 13:12:53');
INSERT INTO `products` VALUES ('197', '10125', 'Reproductor MP3 y Radio RM Royal Azul', 'reproductor-mp3-y-radio-rm-royal-azul', '12', '159', '421', '1', 'Reproductor de MP3 y Radio FM', 'Reproductor de MP3 y Radio FM', '0', 'reproductor mp3 y radio rm royal azul generico color fm', '1', '0', '15', '2017-04-02 23:30:48', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('198', '10126', 'Reproductor MP3 y Radio RM Royal Negro', 'reproductor-mp3-y-radio-rm-royal-negro', '12', '159', '422', '1', 'Reproductor de MP3 y Radio FM', 'Reproductor de MP3 y Radio FM', '1', 'reproductor mp3 y radio rm royal negro generico fm color', '1', '0', '15', '2017-04-02 23:33:18', '2017-04-16 23:47:58');
INSERT INTO `products` VALUES ('200', '6947681542976', 'Motorola Moto G5 Plus XT1681 Gris Oscuro', 'motorola-moto-g5-plus-xt1681-gris-oscuro', '8', '162', '426', '1', 'Cámaras increíbles, apariencias excepcionales.\r\n', 'Cámaras sorprendentes\r\nLa cámara posterior de 12 MP hace foco un 60 % más rápido que antes.* Cambia a la cámara frontal con lente gran angular para tomar selfies grupales.\r\n\r\nBatería para todo el día y carga rápida TurboPower™\r\nRecarga rápidamente y obtén hasta 6 horas de energía en solo 15 minutos.†\r\n\r\nDiseño metálico fabricado con precisión\r\nUno de los primeros teléfonos Moto G nuevos fabricado con aluminio de calidad superior, tiene una apariencia y un rendimiento espectaculares.\r\n \r\nProcesador octa-core rápido\r\nLas aplicaciones se ejecutan sin problemas gracias a un procesador octa-core ultrarrápido de 2,0 GHz Qualcomm® Snapdragon™.\r\n\r\nDesbloquea el smartphone al instante.\r\nToca para pagar\r\n\r\nLector de huellas dactilares\r\nEl Moto G Plus es compatible con NFC, para que hacer compras seguras sea rápido y fácil', '1', 'motorola moto g5 plus xt1681 gris oscuro color capacidad 32gb camara trasera 12mp frontal 5mp bateria 3000mah cpu octa-core 2,0 ghz', '1', '0', '10', '2017-06-22 10:12:20', '2017-07-31 13:21:16');
INSERT INTO `products` VALUES ('201', '10128', 'HTC M10 Plateado 64GB', 'htc-m10-plateado-64gb', '19', '165', '427', '1', 'excelente maquina', 'excelente diseño', '0', 'htc m10 plateado 64gb color capacidad camara frontal 13mp banda lte', '1', '0', '10', '2017-08-01 10:13:45', '2017-08-01 10:16:02');
INSERT INTO `products` VALUES ('202', '10129', 'Generico cable 2x1', 'generico-cable-2x1', '12', '166', '428', '1', 'cable de audio', '', '0', 'generico cable 2x1 conector de audio', '1', '0', '18', '2017-08-02 14:52:27', '2017-08-02 14:52:27');
INSERT INTO `products` VALUES ('203', '10130', 'Protector Verus Huawei P10 Azul', 'protector-verus-huawei-p10-azul', '10', '110', '429', '1', '', '', '0', 'protector verus huawei p10 azul samsung j5 material silicona color ', '1', '0', '12', '2017-08-08 13:00:56', '2017-08-08 13:04:12');
INSERT INTO `products` VALUES ('204', '10132', 'Protector Verus para Huawei P10 Azul', 'protector-verus-para-huawei-p10-azul', '10', '110', '430', '1', '', '', '0', 'protector verus para huawei p10 azul samsung j5 material silicona color  tipo de protección anti choques', '1', '0', '12', '2017-08-08 13:03:37', '2017-08-08 13:04:06');
INSERT INTO `products` VALUES ('205', '10133', 'Protector Samsung J5 prime', 'protector-samsung-j5-prime', '12', '167', '431', '1', '', '', '0', 'protector samsung j5 prime generico estuche material goma color blanco, morado, rosado, amarillo, verde y negro', '1', '0', '12', '2017-08-08 13:22:08', '2017-08-08 13:22:08');
INSERT INTO `products` VALUES ('206', '10134', 'Protector Samsung j5 Prrime', 'protector-samsung-j5-prrime', '2', '168', '432', '1', '', '', '0', 'protector samsung j5 prrime estuche material goma color azul', '1', '0', '12', '2017-08-08 13:29:06', '2017-08-08 13:29:06');
INSERT INTO `products` VALUES ('207', '10135', 'Protector Generico Samsung j2 Prime', 'protector-generico-samsung-j2-prime', '12', '167', '433', '1', '', '', '0', 'protector generico samsung j2 prime estuche material silicona color gris ahumado', '1', '0', '12', '2017-08-08 13:33:35', '2017-08-08 13:33:35');
INSERT INTO `products` VALUES ('208', '10136', 'Protector Samsung j2 Prime', 'protector-samsung-j2-prime', '2', '168', '434', '1', '', '', '0', 'protector samsung j2 prime estuche material silicona color gris/dorado', '1', '0', '12', '2017-08-08 13:37:10', '2017-08-08 13:37:10');
INSERT INTO `products` VALUES ('209', '10137', 'VERUS Estuche Samsung j2 Prime', 'verus-estuche-samsung-j2-prime', '10', '169', '435', '1', '', '', '0', 'verus estuche samsung j2 prime material silicona color azul', '1', '0', '12', '2017-08-08 14:51:18', '2017-08-08 14:51:18');
INSERT INTO `products` VALUES ('210', '10138', 'Protector Para Samsung j2 Prime', 'protector-para-samsung-j2-prime', '2', '168', '436', '1', '', '', '0', 'protector para samsung j2 prime estuche material silicona/goma color negro', '1', '0', '12', '2017-08-08 14:57:20', '2017-08-08 14:57:20');
INSERT INTO `products` VALUES ('211', '10140', 'Protector Para Samsung j5 Prime', 'protector-para-samsung-j5-prime', '2', '168', '437', '1', '', '', '0', 'protector para samsung j5 prime estuche material silicona/goma color morado, amarillo, rosado, verde y azul', '1', '0', '12', '2017-08-08 15:04:56', '2017-08-08 15:04:56');
INSERT INTO `products` VALUES ('212', '10141', 'Protector Incipio Samsung J5 Prime', 'protector-incipio-samsung-j5-prime', '11', '111', '438', '1', '', '', '0', 'protector incipio samsung j5 prime material silicona/goma color rojo', '1', '0', '12', '2017-08-08 15:14:01', '2017-08-08 15:14:01');
INSERT INTO `products` VALUES ('213', '10142', 'Protector Generico Iphone 6', 'protector-generico-iphone-6', '12', '167', '439', '1', '', '', '0', 'protector generico iphone 6 estuche material goma color varios', '1', '0', '12', '2017-08-08 15:50:26', '2017-08-08 15:50:26');
INSERT INTO `products` VALUES ('214', '10143', 'Protector Motomo Huawei P10 Lite', 'protector-motomo-huawei-p10-lite', '9', '109', '440', '1', '', '', '0', 'protector motomo huawei p10 lite samsung j5 material silicona corrugada color gris oscuro', '1', '0', '12', '2017-08-08 15:56:37', '2017-08-08 15:56:37');
INSERT INTO `products` VALUES ('215', '10144', 'Protector Motomo Para Huawei P10 Lite', 'protector-motomo-para-huawei-p10-lite', '9', '170', '441', '1', '', '', '0', 'protector motomo para huawei p10 lite material silicona corrugada color gris claro', '1', '0', '12', '2017-08-08 16:02:36', '2017-08-08 16:02:36');
INSERT INTO `products` VALUES ('216', '10146', 'Protector Generico Huawei P9 Lite ', 'protector-generico-huawei-p9-lite', '12', '167', '442', '1', '', '', '0', 'protector generico huawei p9 lite  estuche material silicona/goma color dorado', '1', '0', '12', '2017-08-08 16:11:50', '2017-08-08 16:11:50');
INSERT INTO `products` VALUES ('217', '10147', 'Protector Generico Motorola G4 play', 'protector-generico-motorola-g4-play', '12', '167', '443', '1', '', '', '0', 'protector generico motorola g4 play estuche material silicona/goma color rosa, morado, blanco y negro', '1', '0', '12', '2017-08-08 16:16:53', '2017-08-08 16:16:53');
INSERT INTO `products` VALUES ('218', '10148', 'Protecotr Generico Motorola G4 play', 'protecotr-generico-motorola-g4-play', '12', '167', '444', '1', '', '', '0', 'protecotr generico motorola g4 play estuche material silicona/goma color varios', '1', '0', '12', '2017-08-08 16:19:28', '2017-08-08 16:19:28');
INSERT INTO `products` VALUES ('219', '10149', 'Protector Incipio Motorola G4 play', 'protector-incipio-motorola-g4-play', '11', '171', '445', '1', '', '', '0', 'protector incipio motorola g4 play material goma color azul', '1', '0', '12', '2017-08-08 16:24:39', '2017-08-08 16:24:39');
INSERT INTO `products` VALUES ('220', '10150', 'Protector Generico Para Motorola g4 play ', 'protector-generico-para-motorola-g4-play', '12', '167', '446', '1', '', '', '0', 'protector generico para motorola g4 play  estuche material silicona/goma color gris', '1', '0', '12', '2017-08-08 16:29:56', '2017-08-08 16:29:56');
INSERT INTO `products` VALUES ('221', '10151', 'Dispostivo Generico Bluetooth Car ', 'dispostivo-generico-bluetooth-car', '12', '155', '447', '1', '', '', '0', 'dispostivo generico bluetooth car  de carro', '1', '0', '19', '2017-08-14 16:51:13', '2017-08-14 16:51:13');
INSERT INTO `products` VALUES ('222', '10152', 'Generico Kit conetor', 'generico-kit-conetor', '12', '172', '448', '1', '', '', '0', 'generico kit conetor conector mixto', '1', '0', '19', '2017-08-14 16:59:15', '2017-08-14 16:59:15');
INSERT INTO `products` VALUES ('223', '10153', 'Remax Holder Generico ', 'remax-holder-generico', '20', '174', '449', '1', '', '', '0', 'remax holder generico  capacidad amplia', '1', '0', '19', '2017-08-14 17:22:03', '2017-08-14 17:32:40');
INSERT INTO `products` VALUES ('224', '10154', 'Generico REMAX', 'generico-remax', '12', '149', '450', '1', '', '', '0', 'generico remax capacidad 2600 mah', '1', '0', '20', '2017-08-14 17:29:25', '2017-08-14 17:29:25');
INSERT INTO `products` VALUES ('225', '10156', 'Dispositivo OTG & USB Generico Remax', 'dispositivo-otg-usb-generico-remax', '12', '149', '451', '1', '', '', '0', 'dispositivo otg & usb generico remax conector', '1', '0', '19', '2017-08-14 17:44:43', '2017-08-14 17:44:43');
INSERT INTO `products` VALUES ('226', '10157', 'Vidrio Perfilado de Iphone 6, 6 plus, 7 y 7 plus', 'vidrio-perfilado-de-iphone-6-6-plus-7-y-7-plus', '21', '176', '452', '1', '', '', '0', 'vidrio perfilado de iphone 6, 6 plus, 7 y plus capacidad covertura total la pantalla', '1', '0', '16', '2017-08-14 17:55:57', '2017-08-14 17:55:57');
INSERT INTO `products` VALUES ('227', '10158', 'Banco de poder Generico REMAX', 'banco-de-poder-generico-remax', '12', '149', '453', '1', '', '', '0', 'banco de poder generico remax capacidad 50000 mah', '1', '0', '20', '2017-08-14 18:04:47', '2017-08-14 18:04:47');
INSERT INTO `products` VALUES ('228', '10160', 'Genius Vincha', 'genius-vincha', '22', '177', '454', '1', '', '', '0', 'genius vincha material silinoca color gris&azul', '1', '0', '11', '2017-08-14 18:15:08', '2017-08-14 18:15:08');
INSERT INTO `products` VALUES ('229', '10161', 'Alcatel Pixi 3 4009A', 'alcatel-pixi-3-4009a', '7', '103', '455', '1', 'excelente smartphone gama baja con la calidad alcatel', 'alcatel pixi 3.5 almacenamiento interno de 4gb,memoria ram de 512 almacenamiento casi ilimitado [para contactos,excelente cámara', '0', 'alcatel pixi 3 4009a camara 5 mp bandas todas bateria 1300mah bluetooth si frontal 2 color negro', '1', '0', '10', '2017-08-21 14:43:30', '2017-08-21 14:43:30');
INSERT INTO `products` VALUES ('230', '10162', 'Motorola moto c', 'motorola-moto-c', '8', '178', '456', '1', 'nuevo smartphone de motorola de 5\'\' con excelente diseño', 'moto c con una memoria interna de 16gb y memoria ram de 1gb y una espectacular pantalla de 5\'\'', '0', 'motorola moto c bandas 4g lte bluetooth si camara 5 mp frontal 2 capacidad 16 gb flash memoria interna tomaño 5\'\'', '1', '0', '10', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `products` VALUES ('231', '10163', 'Huawei y5 lite 2017', 'huawei-y5-lite-2017', '3', '179', '457', '1', 'la ultima version del y5 es hermosa', 'El Huawei Y5 (2017) es la versión del Y5 para el 2017, reciclando sus características que incluyen una pantalla HD de 5 pulgadas, procesador quad-core, 2GB de RAM, 16GB de almacenamiento interno, cámara principal de 8 megapixels con flash LED, cámara frontal de 5 megapixels, también acompañada de flash LED, batería de 3000 mAh y Android 6.0 Marshmallow controlando el software.', '0', 'huawei y5 lite 2017 bandas 4g lte bluetooth si camara 8mp frontal 5mp capacidad 16gb color negro cpu 2 gb flash', '1', '0', '10', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `products` VALUES ('232', '10164', 'Apple iPhone 7 plus red', 'apple-iphone-7-plus-red', '1', '180', '458', '1', 'Cuando compras un iPhone 7 Plus (Product)RED TM Special Edition, Apple contribuye directamente al fondo Mundial de lucha contra el sida.', 'Pantalla: 5.5\"\r\nCámara Trasera: 12 MP\r\nCámara Forntal: 7 MP\r\nSistema Operativo: IOS\r\nMemoria Interna: 128 GB \r\nBatería: Hasta 25 Horas\r\nProcesador: A10', '0', 'apple iphone 7 plus red banda 4g lte memoria interna 128gb tamaño 5.5\'\'', '1', '0', '10', '2017-08-21 15:07:26', '2017-08-21 15:07:26');
INSERT INTO `products` VALUES ('233', '10165', 'Samsung j7 neo', 'samsung-j7-neo', '2', '181', '459', '1', 'nuevo j7 a un super precio', 'cámara de 13mp,memoria interna de 16gb,ram 1.5 gb,pantalla de 5.5\'\'', '0', 'samsung j7 neo banda 4g lte bluetooth si camara 13mp frontal 2mp memoria interna 16gb ram 1.5gb', '1', '0', '10', '2017-08-21 15:20:39', '2017-08-21 15:20:39');
INSERT INTO `products` VALUES ('234', '6922179201016', 'Sujetador de Teléfono Para Vehículo', 'sujetador-para-vehiculo-universal-para-telefono-movil', '12', '182', '460', '1', 'Sujetador de teléfono en forma de mano para el vehículo', 'innovador y hermoso sujetador de teléfono móvil para el vehículo.', '0', 'sujetador de teléfono para vehículo generico hold-073 color negro', '1', '0', '21', '2017-11-16 10:02:21', '2017-11-16 10:15:48');
INSERT INTO `products` VALUES ('235', '6901443190812', 'Huawei Y7 Prime Dorado 32GB Dual Sim', 'huawei-y7-prime-dorado-32gb-dual-sim', '3', '183', '461', '1', 'El smartphone llega corriendo de fábrica con Android 7.0 Nougat con la capa de personalización EMUI 5,1', 'Huawei Y7 Prime, una nueva variante del Huawei  Y7 (2017), que fue anunciado el pasado mes de Mayo y que destaca por su enorme batería de 4,000mAh y su elegante cuerpo en aluminio.\r\n\r\nCabe mencionar que este nuevo terminal posee el mismo diseño y mantiene casi las mismas especificaciones del Huawei Y7 (2017) solo se diferencian en que la versión Prime posee mas memoria RAM y el doble del almacenamiento interno.\r\n\r\n', '1', 'huawei y7 prime dorado 32gb dual sim trt-l53 color capacidad ram 3gb camara frontal 8mp trasera 12mp bateria 4000mah lector de huellas si pantalla 5.5\"', '1', '0', '10', '2017-11-16 10:52:48', '2017-11-17 14:20:59');
INSERT INTO `products` VALUES ('236', 'CCMBBCB781804527', 'Huawei Y5 II Blanco ', 'huawei-y5-ii-blanco', '3', '184', '462', '1', 'el móvil parte de una pantalla IPS multitáctil de 5 pulgadas que consigue una resolución básica para estos tiempos, 1280 x 720 píxeles', 'las dimensiones del equipo corresponden a 14,4 x 7,2 x 0,9 cm, mientras que su peso se queda en 136 gramos. Su venta está disponible en cinco colores, negro clásico con pequeños toques en gris, blanco, dorado, rosa claro y turquesa', '0', 'huawei y5 ii blanco  cun-u29 pantalla hd de 5\" color camara frontal 2mp trasera 8mp bateria 2200mah', '1', '0', '10', '2017-11-16 11:09:45', '2017-11-16 11:09:45');
INSERT INTO `products` VALUES ('237', '862556031436411', 'Huawei Y5 Lite Dorado Dual Sim', 'huawei-y5-lite-dorado-dual-sim', '3', '179', '463', '1', 'Dentro del Huawei Y5 Lite (2017) encontramos un procesador Quad-core 1.3GHz, acompañado de 1GB de memoria RAM. También cuenta con 8GB ', 'Android 6.0 es el sistema operativo del Huawei Y5 Lite (2017), que en cuanto a dimensiones tiene un perfil de 9.5 mm y un peso de 175 g. En cuanto a sus características técnicas, el Huawei Y5 Lite (2017) tiene una pantalla de 5\" con una resolución de 480 x 854 pixels', '0', 'huawei y5 lite dorado dual sim 2017 color pantalla 5\" camara 8mp', '1', '0', '10', '2017-11-16 11:23:45', '2017-11-16 11:23:45');
INSERT INTO `products` VALUES ('238', '8806088532707', 'Samsung Galaxy J5 (6) Dorado 16GB', 'samsung-galaxy-j5-6-dorado-16gb', '2', '125', '464', '1', 'El Samsung Galaxy J5 2016 es la segunda generación de este dispositivo y trae algunas mejoras sobre la primera versión, aunque sigue manteniendo el mismo espíritu sencillo con cierto toque premium.', 'El Samsung Galaxy J5 respeta la forma frontal que ya conocemos por prácticamente todo el catálogo reciente de la marca, con ese botón físico ocupando la parte inferior central', '0', 'samsung galaxy j5 (6) dorado 16gb sm-j510mn/ds color pantalla 131.8mm (5.2\") camara frontal 5mp  con flash trasera 13mp af memoria interna', '1', '0', '10', '2017-11-16 11:40:30', '2017-11-16 11:40:30');
INSERT INTO `products` VALUES ('239', '8806088590394', 'Samsung Galaxy J5 Prime Dorado 16 GB', 'samsung-galaxy-j5-prime-dorado-16-gb', '2', '185', '465', '1', 'Sus 5 pulgadas con resolución HD cuentan con tecnología TFT, distinta a las IPS LCD o AMOLED que Samsung suele utilizar, además del relieve propio de las pantallas 2.5D.', 'Estamos ante un smartphone con un juego de cámaras de 8 y 5 megapíxeles con apertura f/1.9 además de contar la trasera con flash LED. El terminal, de cuerpo metálico unibody, llega con lector de huellas', '0', 'samsung galaxy j5 prime dorado 16 gb tm-16-0267 color camara trasera 13mp frontal 5mp lector de huellas si material metal memoria interna 16gb pantalla 126.7mm', '1', '0', '10', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `products` VALUES ('240', '8806088795164', 'Samsung Galaxy J7 Prime Negro 16GB', 'samsung-galaxy-j7-prime-negro-16gb', '2', '124', '466', '1', 'apuesta por un panel de 5,5 pulgadas 2.5D con resolución FullHD. De los 294 píxeles por pulgada del J5 Prime pasamos a 400 en este J7 Prime. ', 'Para este modelo sí tenemos referencia del procesador, un chip Exynos 7870 de ocho núcleos y que formará equipo con 3GB de RAM y 16GB de memoria interna. Siempre ampliable mediante una microSD.', '0', 'samsung galaxy j7 prime negro 16gb sm-g610m/ds material metal camara frontal 8mp trasera 13mp lector de huellas si memoria interna pantalla 138.8mm (5,5\")fhd', '1', '0', '10', '2017-11-16 12:34:05', '2017-11-16 12:34:05');
INSERT INTO `products` VALUES ('241', '8806088814834', 'Samsung Galaxy J5 Pro  Dorado 16GB', 'samsung-galaxy-j5-pro-dorado-16gb', '2', '186', '467', '1', 'El J5 Pro cuenta con una pantalla de 5.2 pulgadas con resolución de 720 x 1280 pixeles. Samsung apostó por montarle un panel AMOLED aún cuando sea un modelo de gama media.', 'El procesador es un Exynos 7870 (Octa-core 1.6 GHz) firmado por la misma Samsung, y al ser el modelo \"Pro\" incorpora memoria RAM de 3GB y almacenamiento de 32GB ampliable vía microSD. Su batería es de 3000 mAh, aunque habrá que esperar a conocer su autonomía.', '0', 'samsung galaxy j5 pro  dorado 16gb sm-j530g/ds material metal camara frontal 13mp trasera lector de huellas si pantalla 131.8mm (5.2\") hd color', '1', '0', '10', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `products` VALUES ('242', '275355171081055006', 'LG Risio 2 Plateado ', 'lg-risio-2-plateado', '18', '187', '468', '1', 'Telefono moil LG Risio 2', 'Telefono movil con 4G LTE android, camara de 5MP, pantalla e 5\" y bateria de 2,500mAh', '0', 'lg risio 2 plateado  dlgn5008 color pantalla 5\" camara 5mp bateria 2,5000 mah', '1', '0', '10', '2017-11-16 13:01:24', '2017-11-16 13:01:24');
INSERT INTO `products` VALUES ('243', '275014678000910643', 'Alcatel Pixi 4 Theatre  DAL N3004', 'alcatel-pixi-4-theatre-dal-n3004', '7', '188', '469', '1', 'Alcatel pixi theatre 4G LTE, camara de 8MP.', 'Teléfono móvil  con pantalla de 6\" con una sim nano cable USB y bateria 2,580mAh', '0', 'alcatel pixi 4 theatre  dal n3004 color negro pantalla 6\" bateria 2,580mah bluetooth si camara 8mp', '1', '0', '10', '2017-11-16 13:15:49', '2017-11-16 13:15:49');
INSERT INTO `products` VALUES ('244', '65281081670', 'LG K4 Negro', 'lg-k4-negro', '18', '189', '470', '1', 'El LG K4 cuenta con una pantalla TFT de 4.5 pulgadas, con resolución 854x480. Alcanza una densidad de píxeles de 218 ppp.', 'en cuanto a conectividad, y además de las especificaciones técnicas que tienes a la izquierda, podemos contarte que el LG K4 utiliza una tarjeta microsim. Es además Dual SIM, por lo que puedes utilizar dos tarjetas al mismo tiempo', '0', 'lg k4 negro lg-vs425/k4 color memoria interna 8mp pantalla 4.5\" camara 5mp bluetooth si', '1', '0', '10', '2017-11-16 13:31:22', '2017-11-16 13:31:22');
INSERT INTO `products` VALUES ('245', '244354063081084022', 'LG K8 Negro 6 GB', 'lg-k8-negro-6-gb', '18', '190', '471', '1', 'El LG K8 es un móvil de gama media, es algo que se ve completamente reflejado al revisar la hoja de especificaciones del K8.', 'Su reproducción de colores, algo que se logra gracias al enorme trabajo en paneles que viene haciendo LG en los últimos años. El contraste y profundidad de negros quizás no alcance el de una AMOLED, pero debo decir que es más que decente, en especial si consideramos el segmento de precios en que el que está participando este terminal.', '0', 'lg k8 negro 6 gb camara frontal 5mp trasera color bateria 2,500mah memoria interna 16gb pantalla 5\"', '1', '0', '10', '2017-11-16 14:24:40', '2017-11-16 14:24:40');
INSERT INTO `products` VALUES ('246', '353118086082131', 'Samsung Galaxy J1 (6) Blanco 8GB', 'samsung-galaxy-j1-6-blanco-8gb', '2', '191', '472', '1', 'El Galaxy J1 2016 es un móvil hecho completamente de plástico, eso sí de muy alta calidad, estamos ante un smartphone de gama baja que vale menos de 100 euros, es comprensible que no utilice materiales premium como el metal.', ' El Galaxy J1 2016 tiene una diagonal de pantalla de 4.5 pulgadas, mientras que el Galaxy J1 de 2015 tiene un panel de sólo 4.3 pulgadas, es decir, que el nuevo modelo ha aumentado en 2 pulgadas, esta pequeña diferencia se nota mucho en el día a día y es una gran mejora.', '0', 'samsung galaxy j1 (6) blanco 8gb j120aucu2ap color pantalla 4.5\" memoria interna 8mp camara frontal 2mp trasera 5mp bateria 2000mah', '1', '0', '10', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `products` VALUES ('247', '244014802007254595', 'Alcatel Ideal Negro 8GB', 'alcatel-ideal-negro-8gb', '7', '192', '473', '1', 'Teléfono móvil alcatel  color negro ', '', '0', 'alcatel ideal negro 8gb  tct-4060a color memoria interna pantalla 4,5\" camara frontal 2mp trasera 5mp', '1', '0', '10', '2017-11-16 14:49:25', '2017-11-16 14:49:25');
INSERT INTO `products` VALUES ('248', '6947681545083', 'Moto C Plus  Dorado 16GB', 'moto-c-plus-dorado-16gb', '8', '194', '474', '1', 'encontramos un teléfono sumamente estándar, sin lector de huellas u otras características de teléfonos en gama media o gama alta.', ' El Moto C Plus ofrece una conexión 4G, casi 50GB de almacenamiento, una pantalla HD y batería de 4,000mAh. Con el Moto C Plus.', '0', 'moto c plus  dorado 16gb motorola xt1723 color pantalla 5\" camara frontal 2mp trasera 8mp dual sim si bluetooth', '1', '0', '10', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `products` VALUES ('249', '6947681532205', 'Moto G4 Negro 16GB Dual Sim', 'moto-g4-negro-16gb-dual-sim', '8', '195', '475', '1', 'el Moto G4 da sensación de ser un smartphone robusto, bien construido, y además ligero para sus 153 x 76.6 x 9.8 milímetros, pesando sólo 155 gramos.', 'Curiosa la apuesta de Motorola en este sentido, dejando al plástico como claro protagonista de un diseño muy clásico en líneas, sin arriesgar lo más mínimo, pues hemos de recordar que la propia compañía norteamericana había hecho hincapié en el acabados de sus terminales con su famoso Moto Maker.', '0', 'moto g4 negro 16gb dual sim motorola xt1621 color pantalla 5.5\" memoria interna bluetooth si', '1', '0', '10', '2017-11-16 15:28:11', '2017-11-16 15:28:11');
INSERT INTO `products` VALUES ('250', 'b251714029447', 'Caterpillar Negro ', 'caterpillar-negro', '23', '196', '476', '1', 'u fuerte, como el S30 y el S40 antes que él, es la resistencia. Su estructura de acero inoxidable le permite asegurar su supervivencia a caídas sobre cemento de hasta 1,8 metros. Eso le vale la certificación de grado militar 810G. ', 'Mide unos 13 milímetros de grosor, y su pantalla de 4,7 pulgadas y resolución 1280 x 720 tampoco es la mejor para ver vídeo en alta definición, pero sí para poder leer cualquier cosa independientemente de la luz ambiental, porque el brillo alcanza los 540 Nits.', '0', 'caterpillar negro  cat b25 camara si', '1', '0', '10', '2017-11-16 15:42:42', '2017-11-16 15:42:42');
INSERT INTO `products` VALUES ('251', '6947681540781', 'Moto C Negro 8 GB', 'moto-c-negro-8-gb', '8', '197', '477', '1', ' Disfruta de una versión actualizada del sistema operativo más famoso del mundo.', ' El Motorola Moto C es el smartphone más básico de Motorola para este año. El Moto C cuenta con una pantalla FWVGA de 5 pulgadas, procesador quad-core, 1GB de RAM, 8GB de almacenamiento interno y externa hasta 32GB micro SD, cámara principal de 5 MP de foco fijo, cámara frontal de 2 MP con flash LED, batería de 2350 mAh, variantes con solo 3G o LTE y Android 7.0 Nougat.', '0', 'moto c negro 8 gb motorola xt1750 color pantalla 5\" camara frontal 2mp trasera 5mp', '1', '0', '10', '2017-11-16 16:00:17', '2017-11-16 16:00:17');
INSERT INTO `products` VALUES ('252', '353484080982134', 'Celular Quick Tekia ', 'celular-quick-tekia', '24', '199', '478', '1', 'Practico teléfono móvil con radio FM, camara digital.', '', '0', 'celular quick tekia  qb1801 radio si camara', '1', '0', '10', '2017-11-16 16:21:02', '2017-11-16 16:21:02');
INSERT INTO `products` VALUES ('253', '359190080074343', 'Mc Mobile Mini Dual Sim', 'mc-mobile-mini-dual-sim', '12', '200', '479', '1', 'Celular Mc mobile mini con FM radio, dual sim, y camara', '', '0', 'mc mobile mini dual sim generico mtk6250m camara si radio', '1', '0', '10', '2017-11-16 16:30:21', '2017-11-16 16:30:21');
INSERT INTO `products` VALUES ('254', '1050A\'3AC8MX1', 'Alcatel onetouch Negro ', 'alcatel-onetouch-negro', '7', '201', '480', '1', 'Practico teléfono alcatel color negro. ', '', '0', 'alcatel onetouch negro  one touch 1050a color nego', '1', '0', '10', '2017-11-16 16:41:06', '2017-11-16 16:41:06');
INSERT INTO `products` VALUES ('255', '354684085759424', 'Azumi Negro ', 'azumi-negro', '15', '202', '481', '1', 'practico teléfono móvil negro ', '', '0', 'azumi negro  l2z pre', '1', '0', '10', '2017-11-16 16:57:12', '2017-11-16 16:57:12');
INSERT INTO `products` VALUES ('256', '851109007021', 'SKY  Fuego 5.0+', 'sky-fuego-50', '25', '203', '482', '30', 'Innovador teléfono móvil de la marca sky desvices color negro con un estilo elegante y sofisticado.', '', '0', 'sky  fuego 5.0+ color gris pantalla 5.0\" memoria interna 4gb camara frontal 2mp trasera 5mp', '1', '0', '10', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `products` VALUES ('257', '853582007185', 'Sky Elite 6.0L+ Gris 8GB', 'sky-elite-60l-gris-8gb', '25', '204', '483', '30', 'Un dispositivo increíble con pantalla de 6 pulgadas y una resolución de alta definición. Cuenta además con 8GB de memoria para que puedas almacenar lo que desees.', '', '0', 'sky elite 6.0l+ gris 8gb  desvices 6.0+ color memoria interna pantalla 6.0\" camara frontal 5mp trasera 13mp', '1', '0', '10', '2017-11-16 17:21:05', '2017-11-16 17:21:05');
INSERT INTO `products` VALUES ('258', '853582007192', 'Sky Elite 6.0L+ Plateado 8GB', 'sky-elite-60l-plateado-8gb', '25', '204', '484', '30', 'Un dispositivo increíble con pantalla de 6 pulgadas y una resolución de alta definición. Cuenta además con 8GB de memoria para que puedas almacenar lo que desees.', '', '0', 'sky elite 6.0l+ plateado 8gb  desvices 6.0+ memoria interna pantalla 6.0\" camara frontal 5mp trasera 13mp color', '1', '0', '10', '2017-11-16 17:23:13', '2017-11-16 17:23:13');
INSERT INTO `products` VALUES ('259', '853582007307', 'Sky Desvice 5.5C Blaco', 'sky-desvice-55c-blaco', '25', '205', '485', '30', '', '', '0', 'sky desvice 5.5c blaco  platinum color blanco pantalla 5,5\" camara frontal 5mp trasera 8mp memoria interna 8gb', '1', '0', '10', '2017-11-16 17:34:56', '2017-11-16 17:34:56');
INSERT INTO `products` VALUES ('260', '853582007291', 'Sky platinum 5.5C Negro', 'sky-platinum-55c-negro', '25', '205', '486', '30', '', '', '0', 'sky platinum 5.5c negro  color pantalla 5,5\" camara frontal 5mp trasera 8mp memoria interna 8gb', '1', '0', '10', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `products` VALUES ('261', '851109007649', 'Sky platinum 5.0W', 'sky-platinum-50w', '25', '206', '487', '30', '', '', '0', 'sky platinum 5.0w  pantalla 5,5\" camara frontal 5mp trasera 8mp memoria interna 8gb color blanco', '1', '0', '10', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `products` VALUES ('262', '851109007632', 'Sky platinum 5.0W Gris', 'sky-platinum-50w-gris', '25', '206', '488', '30', '', '', '0', 'sky platinum 5.0w gris  pantalla 5,5\" camara frontal 5mp trasera 8mp memoria interna 8gb color', '1', '0', '10', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `products` VALUES ('263', '853582007314', 'Sky Fuego 5.0+ Dorado', 'sky-fuego-50-dorado', '25', '203', '489', '1', '', '', '0', 'sky fuego 5.0+ dorado  color pantalla 5.0\" camara frontal 2mp trasera 5mp memoria interna 4gb', '1', '0', '10', '2017-11-16 17:59:34', '2017-11-30 15:28:01');
INSERT INTO `products` VALUES ('264', '851109007045', 'Sky Fuego 5.0+ Blanco', 'sky-fuego-50-blanco', '25', '207', '490', '30', '', '', '0', 'sky fuego 5.0+ blanco  desvice pantalla 5.0\" camara frontal 2mp trasera 5mp memoria interna 4gb color', '1', '0', '10', '2017-11-16 18:05:11', '2017-11-16 18:05:11');
INSERT INTO `products` VALUES ('265', '853582007468', 'Sky Platium 4.0 blanco', 'sky-platium-40-blanco', '25', '208', '491', '30', '', '', '0', 'sky platium 4.0 blanco  platinum color blano pantalla 4.0\" memoria interna 4gb camara frontal 1.3mp trasera 5mp', '1', '0', '10', '2017-11-16 18:13:14', '2017-11-16 18:13:14');
INSERT INTO `products` VALUES ('266', '853582007451', 'Sky Platium 4.0 rosado', 'sky-platium-40-rosado', '25', '209', '492', '30', '', '', '0', 'sky platium 4.0 rosado  platinum pantalla 4.0\" memoria interna 4gb camara frontal 1.3mp trasera 5mp', '1', '0', '10', '2017-11-16 18:15:26', '2017-11-16 18:15:26');
INSERT INTO `products` VALUES ('267', '10166', 'XBOX 360 Negro Mas XB 3028', 'xbox-360-negro-mas-xb-3028', '26', '210', '493', '1', 'La Xbox 360 supo hacerse de un grupo de séquitos masivo a nivel mundial', 'Xbox 360 es la segunda videoconsola de sobremesa de la marca Xbox producida por Microsoft. Fue desarrollada en colaboración con IBM y ATI y lanzada en América del Sur, América del Norte, Japón, Europa y Australia entre 2005 y 2006. Su servicio Xbox Live (de pago) permite a los jugadores competir en línea y descargar contenidos como juegos arcade, demos, tráilers, programas de televisión y películas.', '0', 'xbox 360 negro mas xb 3028 memoria interna 4gb', '1', '0', '22', '2017-11-17 08:33:43', '2017-11-17 08:33:43');
INSERT INTO `products` VALUES ('268', '10167', 'SONY Play Station 3', 'sony-play-station-3', '27', '212', '494', '1', 'la consola pasó por varios modelos con sus formas, materiales, y tamaños, pero todas tienen la capacidad de posicionarlas tanto horizontal como verticalmente.', 'La plataforma de Sony cuenta con una interfaz gráfica original y agradable, denominada XcrossMediaBar (XMB), que resulta ser muy dinámica para el usuario y que permite acceder a todos los servicios multimedia de manera fácil y rápida. Esta interfaz se vio originalmente presentada en el PSP.', '0', 'sony play station 3 color negro', '1', '0', '22', '2017-11-17 09:15:24', '2017-11-17 09:15:24');
INSERT INTO `products` VALUES ('269', '10168', 'SONY PSP 300', 'sony-psp-300', '27', '213', '495', '1', 'La PlayStation Portable 3000 es una videoconsola portátil fabricada por Sony.', 'Gracias a la cámara, que se conecta a través de un puerto USB de alta velocidad, Go!Cam convierte la PSP en una cámara de fotos y vídeo. Con una Memory Stick Duo de 8 GB, podrás grabar en tu PSP más de cuatro horas de vídeo y reproducir inmediatamente el contenido en la pantalla del sistema PSP. La cámara cuenta con una resolución de 1,3 MP y ha sido relanzada en color negro junto al juego Invizimals', '0', 'sony psp 300 color negro', '1', '0', '22', '2017-11-17 09:24:35', '2017-11-17 09:24:35');
INSERT INTO `products` VALUES ('270', '¡3931', 'Control XBOX ONE', 'control-xbox-one', '26', '214', '496', '1', '', '', '0', 'control xbox one color negro', '1', '0', '22', '2017-11-17 09:40:46', '2017-11-17 09:40:46');
INSERT INTO `products` VALUES ('271', '711719990048', 'Control Dual Sock 3', 'control-dual-sock-3', '27', '215', '497', '1', 'La superficie del Blackfire está recubierta de goma suave con zonas antideslizantes rugosas. El agarre es una delicia y se comporta mejor que el original tras largas horas de juego.', 'La configuración de botones del mando es la misma que en el DualShock con variación en las proporciones. Las setas de control, por ejemplo, están a la misma distancia, pero los botones de acción están algo más juntos y la cruceta es más pequeña.', '0', 'control dual sock 3 sony playstation color camuflado', '1', '0', '23', '2017-11-17 09:47:55', '2017-11-17 09:47:55');
INSERT INTO `products` VALUES ('272', '10169', 'Control PlayStation 3 Blanco', 'control-playstation-3-blanco', '27', '215', '498', '1', 'El Blackfire también incorpora un botón ‘Turbo’ que en principio sirve para acelerar la frecuencia de respuesta de los gatillos', 'La superficie del Blackfire está recubierta de goma suave con zonas antideslizantes rugosas. El agarre es una delicia y se comporta mejor que el original tras largas horas de juego.', '0', 'control playstation 3 blanco sony color', '1', '0', '23', '2017-11-17 09:51:10', '2017-11-17 09:51:10');
INSERT INTO `products` VALUES ('273', '¡3930', 'Control Dual Shock PS4', 'control-dual-shock-ps4', '27', '215', '499', '1', 'Sony reinventó su control de cierta forma y creó algo que representa un avance enorme para PlayStation. ', 'Un plus del DualShock 4 son sus múltiples características extras o nuevas: una bocina integrada al propio control, un touchpad muy útil en juegos como Killzone o Assassin’s Creed IV: Black Flag y una barra de luz que puede interactuar con los diferentes títulos y que si se se conecta a The Playroom, hasta puede reconocer jugadores.', '0', 'control dual shock ps4 sony playstation color negro', '1', '0', '23', '2017-11-17 09:55:37', '2017-11-17 09:55:37');
INSERT INTO `products` VALUES ('274', '639131705043', 'Audio portable Negro ', 'audio-portable-negro', '28', '216', '500', '1', 'Hermoso e innovador audio portable con entrada USB, ademas sistema MP3', '', '0', 'audio portable negro  supersonic radio si mp3 usb', '1', '0', '15', '2017-11-17 10:05:56', '2017-11-17 10:05:56');
INSERT INTO `products` VALUES ('275', '10170', 'Parlante Pequeño Negro ', 'parlante-pequeno-negro', '12', '158', '501', '1', 'Pequeño y hermoso parlante con 3W', '', '0', ' parlante pequeño negro generico color usb si bateria 800mah', '1', '0', '14', '2017-11-17 10:22:55', '2017-11-17 10:22:55');
INSERT INTO `products` VALUES ('276', '10171', 'Generico Parlante', 'generico-parlante', '12', '158', '502', '1', '', '', '0', 'generico parlante color verde usb si', '1', '0', '14', '2017-11-17 10:28:42', '2017-11-17 10:28:42');
INSERT INTO `products` VALUES ('277', '10172', 'Parlante Wster Gris', 'parlante-wster-gris', '12', '158', '503', '1', '', '', '0', 'parlante wster gris generico mp3 si usb radio', '1', '0', '14', '2017-11-17 10:38:21', '2017-11-17 10:38:21');
INSERT INTO `products` VALUES ('278', '10173', 'Parlante Music + Negro', 'parlante-music-negro', '12', '158', '504', '1', '', '', '0', 'parlante music + negro generico color bateria 22000mah usb si', '1', '0', '14', '2017-11-17 10:44:14', '2017-11-17 10:44:14');
INSERT INTO `products` VALUES ('279', '10174', ' XBOX ONE Negro', 'xbox-one-negro', '26', '211', '505', '1', ' Xbox One ha conseguido hacerse con uno de esos exitazos vendeconsolas desde el comienzo de su salida. Estamos hablando de su juego exclusivo Titanfall. ', 'Básicamente la Xbox One trae consigo todas las funcionalidades anteriores pero mejoradas gracias a sus componentes capaces de procesar y manejar unos y ceros por aquí y por allá.', '50', ' xbox one negro color', '1', '0', '22', '2017-11-17 10:48:41', '2017-11-17 14:31:32');
INSERT INTO `products` VALUES ('280', '10175', 'Play Station 4 Negro Incluye 3 Juegos', 'play-station-4-negro-incluye-3-juegos', '27', '212', '506', '1', 'La historia de la PlayStation se ha iniciado con un éxito instantáneo, lo que le permitió asegurarse su propio espacio en una industria que por ese entonces era liderado por Nintendo y Sega, orientados a un público más joven.', 'Son varias las novedades que trae consigo este sistema de juegos. Una de sus nuevas características principales es su enfoque hacia una experiencia compartida a través de las redes sociales y el streaming (transmisión en directo) entre la comunidad de jugadores', '0', 'play station 4 negro incluye 3 juegos sony color', '1', '0', '22', '2017-11-17 10:59:12', '2017-12-19 09:59:44');
INSERT INTO `products` VALUES ('281', '10176', 'Parlantes Mini 2.1 Negro con Rojo', 'parlantes-mini-21-negro-con-rojo', '12', '158', '507', '1', '', '', '0', 'parlantes mini 2.1 negro con rojo generico parlante color usb si mp3', '1', '0', '14', '2017-11-17 11:08:14', '2017-11-17 11:08:14');
INSERT INTO `products` VALUES ('282', '10177', 'Parlantes s5 Max Negro', 'parlantes-s5-max-negro', '12', '158', '508', '1', '', '', '0', 'parlantes s5 max negro generico parlante color', '1', '0', '14', '2017-11-17 11:13:29', '2017-11-17 11:13:29');
INSERT INTO `products` VALUES ('283', '10178', 'Parlante X- Bass Negro', 'parlante-x-bass-negro', '12', '158', '509', '1', '', '', '0', 'parlante x- bass negro generico color usb si', '1', '0', '14', '2017-11-17 11:20:32', '2017-11-17 11:20:32');
INSERT INTO `products` VALUES ('284', '10180', 'Parlante Movil Azul', 'parlante-movil-azul', '12', '158', '510', '1', '', '', '0', 'parlante movil azul generico color usb si mp3', '1', '0', '14', '2017-11-17 11:24:26', '2017-11-17 11:24:26');
INSERT INTO `products` VALUES ('285', '¡1997', 'Parlante Multicolores Recargable', 'parlante-multicolores-recargable', '12', '158', '511', '1', 'Hermoso y llamativo parlante multicolor, es recargable.', '', '0', 'parlante multicolores recargable generico color multicolor bateria', '1', '0', '14', '2017-11-17 11:31:24', '2017-11-17 11:31:24');
INSERT INTO `products` VALUES ('286', '10181', 'Juego de Parlantes Negro', 'juego-de-parlantes-negro', '12', '158', '512', '1', '', '', '0', 'juego de parlantes negro generico parlante color usb si mp3', '1', '0', '14', '2017-11-17 11:36:03', '2017-11-17 11:36:03');
INSERT INTO `products` VALUES ('287', '10182', 'Parlante iBastek Negro', 'parlante-ibastek-negro', '29', '217', '513', '1', 'Hermoso Parlante recargable con puerto USB, MP3, Bluetooth.', '', '0', 'parlante ibastek negro parlantes color usb si mp3', '1', '0', '14', '2017-11-17 11:42:33', '2017-11-17 11:42:33');
INSERT INTO `products` VALUES ('288', '770n1707009906', 'Tablets Touch Negra', 'tablets-touch-negra', '12', '220', '514', '1', 'Hermosa e inteligente tablets con capacidad de tarjeta SIM, pantalla de 7\".', '', '0', 'tablets touch negra generico u0ll camara si pantalla 7\" memoria interna 8gb wifi', '1', '0', '24', '2017-11-17 12:29:10', '2017-11-17 12:29:10');
INSERT INTO `products` VALUES ('289', '10183', 'Tablest CTech Blanca', 'tablest-ctech-blanca', '12', '221', '515', '1', '', '', '0', ' tablest ctech blanca generico camara si wifi color blanco', '1', '0', '24', '2017-11-17 12:33:37', '2017-11-17 12:33:37');
INSERT INTO `products` VALUES ('290', '10184', 'Impresora Epson L380 Negro', 'impresora-epson-l380-negro', '30', '222', '516', '1', ' La impresora L380 con tecnología EcoTank de tanque de tinta permite imprimir a un costo de impresión ultra bajo. Incluye 1 botella de tinta negra y 3 botellas a color. ', ' Completa tareas más rápido con velocidades máximas de impresión de hasta 33 ppm para negro y 15 ppm para color.', '0', 'impresora epson l380 negro color', '1', '0', '25', '2017-11-17 14:03:12', '2017-11-17 14:03:13');
INSERT INTO `products` VALUES ('291', '10185', 'Impresora Epson L395', 'impresora-epson-l395', '30', '223', '517', '1', 'La multifuncional inalámbrica EcoTank® L395 revoluciona la economía y productividad en los hogares activos y pequeñas empresas.', 'on el Sistema Original de Tanque de Tinta, con altísimo rendimiento y fácil de rellenar, podrás imprimir sin el estress de cambiar cartuchos.', '0', 'impresora epson l395 wifi si color negro', '1', '0', '25', '2017-11-17 14:07:40', '2017-11-17 14:07:40');
INSERT INTO `products` VALUES ('292', '10186', 'Ventilador Portátil Nego', 'ventilador-portatil-nego', '12', '225', '518', '1', '', '', '0', ' ventilador portátil nego generico portatil color negro', '1', '0', '26', '2017-11-17 14:18:25', '2017-11-17 14:18:25');
INSERT INTO `products` VALUES ('293', '10187', 'Generico MapaMundo', 'generico-mapamundo', '12', '226', '519', '1', '', '', '0', 'generico mapamundo', '1', '0', '27', '2017-11-17 14:27:59', '2017-11-17 14:27:59');
INSERT INTO `products` VALUES ('294', 'XP16S9726986', 'Teclado Genius Negro Mas Mouses', 'teclado-genius-negro-mas-mouses', '22', '227', '520', '1', '', '', '0', 'teclado genius negro mas mouses color', '1', '0', '28', '2017-11-17 14:37:03', '2017-11-17 14:37:03');
INSERT INTO `products` VALUES ('295', '10188', 'Teclado Negro con Azul Mas Mouses', 'teclado-negro-con-azul-mas-mouses', '12', '228', '521', '1', '', '', '0', 'teclado negro con azul mas mouses generico', '1', '0', '28', '2017-11-17 14:44:47', '2017-11-17 14:44:47');
INSERT INTO `products` VALUES ('296', '10189', 'Teclado Unitec Negro Mas Mouse', 'teclado-unitec-negro-mas-mouse', '12', '228', '522', '1', '', '', '0', 'teclado unitec negro mas mouse generico', '1', '0', '28', '2017-11-17 14:50:00', '2017-11-17 14:50:00');
INSERT INTO `products` VALUES ('297', '10190', 'Mouses K1 ', 'mouses-k1', '12', '229', '523', '1', '', '', '0', 'mouses k1  generico color negro', '1', '0', '29', '2017-11-17 14:54:56', '2017-11-17 14:54:56');
INSERT INTO `products` VALUES ('298', '10191', 'Mouse Led Negro', 'mouse-led-negro', '12', '228', '524', '1', '', '', '0', 'mouse led negro generico teclado', '1', '0', '29', '2017-11-17 14:59:38', '2017-11-17 14:59:38');
INSERT INTO `products` VALUES ('299', 'C54\'10165', 'Mouse Optical Negro', 'mouse-optical-negro', '12', '229', '525', '1', '', '', '0', 'mouse optical negro generico mouses', '1', '0', '29', '2017-11-17 15:04:59', '2017-11-17 15:04:59');
INSERT INTO `products` VALUES ('300', '¡3600', 'Mouse Gaming Negro', 'mouse-gaming-negro', '12', '229', '526', '1', '', '', '0', 'mouse gaming negro generico mouses', '1', '0', '29', '2017-11-17 15:07:15', '2017-11-17 15:07:15');
INSERT INTO `products` VALUES ('301', '10192', 'Genius Mouse', 'genius-mouse', '22', '230', '527', '1', '', '', '0', 'genius mouse', '1', '0', '29', '2017-11-17 15:13:08', '2017-11-17 15:13:08');
INSERT INTO `products` VALUES ('302', '10193', 'Generico Camara Web', 'generico-camara-web', '12', '231', '528', '1', '', '', '0', 'generico camara web', '1', '0', '30', '2017-11-17 15:21:13', '2017-11-17 15:21:13');
INSERT INTO `products` VALUES ('303', '¡671', 'Ventilador Portátil Negro ', 'ventilador-portatil-negro', '12', '225', '529', '1', '', '', '0', 'ventilador portátil negro  generico portatil', '1', '0', '26', '2017-11-17 15:27:47', '2017-11-17 15:27:47');
INSERT INTO `products` VALUES ('304', '¡639', 'Ventilador Portátil  Negro con Blanco', 'ventilador-portatil-negro-con-blanco', '12', '225', '530', '1', '', '', '0', 'ventilador portátil  negro con blanco generico portatil', '1', '0', '26', '2017-11-17 15:31:10', '2017-11-17 15:31:10');
INSERT INTO `products` VALUES ('305', '10194', 'Parlante 169BT', 'parlante-169bt', '12', '158', '531', '1', '', '', '0', 'parlante 169bt generico color azul usb si radio', '1', '0', '14', '2017-11-17 16:06:13', '2017-11-17 16:06:13');
INSERT INTO `products` VALUES ('306', '10195', 'Auricular G6 Gaming Negro con Azul', 'auricular-g6-gaming-negro-con-azul', '12', '232', '532', '1', '', '', '0', 'auricular g6 gaming negro con azul generico', '1', '0', '31', '2017-11-17 16:13:22', '2017-11-17 16:13:22');
INSERT INTO `products` VALUES ('307', '¡3556', 'Cargador Portátil Blanco', 'cargador-portatil-blanco', '20', '233', '533', '1', 'Practico cargador portátil, te permite carga tu celular desde cualquier lugar. ', '', '0', 'cargador portátil blanco remax portatil color  bateria 2600mah', '1', '0', '32', '2017-11-17 16:35:16', '2017-11-17 16:35:16');
INSERT INTO `products` VALUES ('308', '¡3602', 'Cargador Portátil fucsia', 'cargador-portatil-fucsia', '20', '233', '534', '1', '', '', '0', 'cargador portátil fucsia remax portatil color bandas 5500mah', '1', '0', '32', '2017-11-17 16:39:27', '2017-11-17 16:39:27');
INSERT INTO `products` VALUES ('309', '¡3558', 'Cargador Portátil  Superalloy', 'cargador-portatil-superalloy', '20', '233', '535', '1', '', '', '0', 'cargador portátil  superalloy remax portatil', '1', '0', '32', '2017-11-17 16:43:31', '2017-11-17 16:43:31');
INSERT INTO `products` VALUES ('310', '10196', ' Cargador Portátil Muse RPP-34', 'cargador-portatil-muse-rpp-34', '20', '233', '536', '1', '', '', '0', ' cargador portátil muse rpp-34 remax portatil', '1', '0', '32', '2017-11-17 16:53:28', '2017-11-17 16:53:28');
INSERT INTO `products` VALUES ('311', '10198', ' Cargador Portátil RLP-16', 'cargador-portatil-rlp-16', '20', '233', '537', '1', '', '', '0', ' cargador portátil rlp-16 remax portatil', '1', '0', '32', '2017-11-17 16:56:41', '2017-11-17 16:56:41');
INSERT INTO `products` VALUES ('312', '10199', 'Remax Cargador Portatil 20000mAh', 'remax-cargador-portatil-20000mah', '20', '233', '538', '1', '', '', '0', 'remax cargador portatil 20000mah', '1', '0', '32', '2017-11-17 17:02:23', '2017-11-17 17:02:23');
INSERT INTO `products` VALUES ('313', '10200', ' Camara Para Vehículo', 'camara-para-vehiculo', '20', '235', '539', '1', '', '', '0', ' camara para vehículo remax vehiculo', '1', '0', '33', '2017-11-17 17:10:12', '2017-11-17 17:10:12');
INSERT INTO `products` VALUES ('314', '10201', ' Cargador Para Carro', 'cargador-para-carro', '20', '236', '540', '1', '', '', '0', ' cargador para carro remax', '1', '0', '34', '2017-11-17 17:16:42', '2017-11-17 17:16:42');
INSERT INTO `products` VALUES ('315', '¡1398', 'Memoria USB 32GB', 'memoria-usb-32gb', '31', '237', '541', '1', '', '', '0', 'memoria usb 32gb kingston ', '1', '0', '35', '2017-11-17 17:27:02', '2017-11-17 17:27:02');
INSERT INTO `products` VALUES ('316', '¡737', 'Memoria USB 4GB', 'memoria-usb-4gb', '31', '238', '542', '1', '', '', '0', 'memoria usb 4gb kingston ', '1', '0', '35', '2017-11-17 17:31:36', '2017-11-17 17:31:36');
INSERT INTO `products` VALUES ('317', '¡3454', 'Micro SD 4GB', 'micro-sd-4gb', '31', '239', '543', '1', '', '', '0', 'micro sd 4gb kingston ', '1', '0', '36', '2017-11-17 17:35:28', '2017-11-17 17:35:28');
INSERT INTO `products` VALUES ('318', '¡3393', 'Memoria USB 16GB', 'memoria-usb-16gb', '31', '240', '544', '1', '', '', '0', 'memoria usb 16gb kingston ', '1', '0', '35', '2017-11-17 17:39:55', '2017-11-17 17:39:55');
INSERT INTO `products` VALUES ('319', '¡2460', 'Control XBOX 360', 'control-xbox-360', '26', '241', '545', '1', '', '', '0', 'control xbox 360', '1', '0', '37', '2017-11-17 17:48:22', '2017-11-17 17:48:22');
INSERT INTO `products` VALUES ('320', '10202', ' Guaya Para Computador MST', 'guaya-para-computador-mst', '12', '243', '546', '1', '', '', '0', ' guaya para computador mst generico mst-1038g-2', '1', '0', '38', '2017-11-17 18:00:47', '2017-11-17 18:00:47');
INSERT INTO `products` VALUES ('321', '10203', ' Cable HDMI 1x2 Negro', 'cable-hdmi-1x2-negro', '12', '244', '547', '50', '', '', '0', ' cable hdmi 1x2 negro generico', '1', '0', '18', '2017-11-17 18:07:59', '2017-11-17 18:07:59');
INSERT INTO `products` VALUES ('322', '10204', 'Cable  IPH7 ADAP ', 'cable-iph7-adap', '12', '166', '548', '50', '', '', '0', 'cable  iph7 adap generico 2x1', '1', '0', '18', '2017-11-17 18:15:17', '2017-11-17 18:15:17');
INSERT INTO `products` VALUES ('323', '3588', ' Cargador Led 2en1', 'cargador-led-2en1', '2', '246', '549', '50', '', '', '0', ' cargador led 2en1 samsung', '1', '0', '39', '2017-11-18 10:04:28', '2017-11-18 10:04:28');
INSERT INTO `products` VALUES ('324', '2983', ' Cargador Huawei Blanco', 'cargador-huawei-blanco', '3', '247', '550', '50', '', '', '0', ' cargador huawei blanco', '1', '0', '39', '2017-11-18 10:11:27', '2017-11-18 10:11:27');
INSERT INTO `products` VALUES ('325', '10205', ' Cargador de Celular ', 'cargador-de-celular', '12', '248', '551', '50', '', '', '0', ' cargador de celular generico', '1', '0', '39', '2017-11-18 10:15:16', '2017-11-18 10:15:16');
INSERT INTO `products` VALUES ('326', '2034', ' Cable VGA 1,5cms', 'cable-vga-15cms', '12', '249', '552', '50', '', '', '0', ' cable vga 1,5cms generico', '1', '0', '18', '2017-11-18 10:20:28', '2017-11-18 10:20:28');
INSERT INTO `products` VALUES ('327', '3319', ' Cable CBL-USBEX', 'cable-cbl-usbex', '12', '250', '553', '50', '', '', '0', ' cable cbl-usbex generico cbl-usbex/10cm', '1', '0', '18', '2017-11-18 10:27:13', '2017-11-18 10:27:13');
INSERT INTO `products` VALUES ('328', '4', ' Cable V8 LAZO ', 'cable-v8-lazo', '12', '251', '554', '50', '', '', '0', ' cable v8 lazo generico', '1', '0', '18', '2017-11-18 10:35:42', '2017-11-18 10:35:42');
INSERT INTO `products` VALUES ('329', '3110', ' Cable HDMI 3mt', 'cable-hdmi-3mt', '12', '252', '555', '50', '', '', '0', ' cable hdmi 3mt generico', '1', '0', '18', '2017-11-18 10:40:13', '2017-11-18 10:40:13');
INSERT INTO `products` VALUES ('330', '1462', ' Cable 3x3 de 1.5', 'cable-3x3-de-15', '12', '253', '556', '50', '', '', '0', ' cable 3x3 de 1.5 generico', '1', '0', '18', '2017-11-18 10:44:55', '2017-11-18 10:44:55');
INSERT INTO `products` VALUES ('331', '10206', 'Generico Cable IPH 4', 'generico-cable-iph-4', '12', '254', '557', '50', '', '', '0', 'generico cable iph 4', '1', '0', '18', '2017-11-18 10:57:40', '2017-11-18 10:57:40');
INSERT INTO `products` VALUES ('332', '2972', ' Cable Universal', 'cable-universal', '12', '255', '558', '50', '', '', '0', ' cable universal generico', '1', '0', '18', '2017-11-18 11:01:32', '2017-11-18 11:01:32');
INSERT INTO `products` VALUES ('333', '497', ' Cable para IPH 6', 'cable-para-iph-6', '12', '256', '559', '50', '', '', '0', ' cable para iph 6 generico', '1', '0', '18', '2017-11-18 11:05:19', '2017-11-18 11:05:19');
INSERT INTO `products` VALUES ('334', '2530', ' Cable Para Impresora', 'cable-para-impresora', '12', '257', '560', '50', '', '', '0', ' cable para impresora generico', '1', '0', '18', '2017-11-18 11:17:46', '2017-11-18 11:17:46');
INSERT INTO `products` VALUES ('335', '10207', 'Cable RC-039W', 'cable-rc-039w', '20', '258', '561', '50', '', '', '0', 'cable rc-039w remax', '1', '0', '10', '2017-11-18 11:24:17', '2017-11-18 11:24:17');
INSERT INTO `products` VALUES ('336', '3520', ' Audífonos Samsung Blanco', 'audifonos-samsung-blanco', '2', '259', '562', '50', '', '', '0', ' audífonos samsung blanco', '1', '0', '11', '2017-11-18 12:26:26', '2017-11-18 12:26:26');
INSERT INTO `products` VALUES ('337', '10208', ' Audífonos Samsung Negro', 'audifonos-samsung-negro', '2', '259', '563', '50', '', '', '0', ' audífonos samsung negro', '1', '0', '11', '2017-11-18 12:29:55', '2017-11-18 12:29:55');
INSERT INTO `products` VALUES ('338', '409', 'Audífonos Iphone Blanco', 'audifonos-iphone-blanco', '1', '260', '564', '50', '', '', '0', 'audífonos iphone blanco apple', '1', '0', '11', '2017-11-18 13:35:28', '2017-11-18 13:35:28');
INSERT INTO `products` VALUES ('339', '10209', 'Cable USB 5en1', 'cable-usb-5en1', '12', '261', '565', '50', '', '', '0', 'cable usb 5en1 generico cablr', '1', '0', '18', '2017-11-18 13:40:11', '2017-11-30 10:57:47');
INSERT INTO `products` VALUES ('340', '53', 'Modulador FM MP3', 'modulador-fm-mp3', '12', '262', '566', '1', '', '', '0', 'modulador fm mp3 generico', '1', '0', '17', '2017-11-18 13:50:20', '2017-11-18 13:50:20');
INSERT INTO `products` VALUES ('341', '1693', 'MP4 Azul Agua Marina', 'mp4-azul-agua-marina', '12', '263', '567', '1', 'Hermoso y practico MP4, tu días llenos de música serán mucho mejor, tiene USB.', '', '0', 'mp4 azul agua marina generico', '1', '0', '40', '2017-11-18 14:58:16', '2017-11-18 14:58:16');
INSERT INTO `products` VALUES ('342', '10210', 'MP4 Rosado', 'mp4-rosado', '12', '263', '568', '1', 'Hermoso y practico MP4, tu días llenos de música serán mucho mejor, tiene puerto USB.', '', '0', 'mp4 rosado generico', '1', '0', '40', '2017-11-18 15:02:04', '2017-11-18 15:02:04');
INSERT INTO `products` VALUES ('343', '10211', 'MP4 Morado', 'mp4-morado', '12', '263', '569', '1', 'Hermoso y practico MP4, tu días llenos de música serán mucho mejor, tiene puerto USB.', '', '0', 'mp4 morado generico', '1', '1', '40', '2017-11-18 15:03:01', '2017-11-18 15:03:01');
INSERT INTO `products` VALUES ('344', '3569', 'Auriculares Music Digital Negro', 'auriculares-music-digital-negro', '12', '232', '570', '50', '', '', '0', 'auriculares music digital negro generico auricular', '1', '0', '31', '2017-11-18 15:13:00', '2017-11-30 15:39:33');
INSERT INTO `products` VALUES ('345', '10212', 'Auriculares Music Digital Verde', 'auriculares-music-digital-verde', '12', '232', '571', '50', '', '', '0', 'auriculares music digital verde generico auricular', '1', '0', '31', '2017-11-18 15:14:39', '2017-11-18 15:14:39');
INSERT INTO `products` VALUES ('346', '2944', 'Control PC Play 2', 'control-pc-play-2', '12', '264', '572', '1', '', '', '0', 'control pc play 2 generico', '1', '0', '23', '2017-11-18 15:32:28', '2017-11-18 15:32:28');
INSERT INTO `products` VALUES ('347', '3483', 'Puerto Ahorrador de Energia', 'puerto-ahorrador-de-energia', '12', '265', '573', '1', '', '', '0', 'puerto ahorrador de energia generico puertos', '1', '0', '41', '2017-11-18 15:37:10', '2017-11-18 15:37:10');
INSERT INTO `products` VALUES ('348', '3480', 'Puerto PCI Adapter', 'puerto-pci-adapter', '12', '265', '574', '1', '', '', '0', 'puerto pci adapter generico puertos', '1', '0', '41', '2017-11-18 15:40:39', '2017-11-18 15:40:39');
INSERT INTO `products` VALUES ('349', '2438', 'Puerto inalambrico nano USB', 'puerto-inalambrico-nano-usb', '12', '265', '575', '1', '', '', '0', 'puerto inalambrico nano usb generico puertos', '1', '0', '41', '2017-11-18 15:46:10', '2017-11-18 15:46:10');
INSERT INTO `products` VALUES ('350', '2601', 'Soporte TV Negra', 'soporte-tv-negra', '12', '266', '576', '1', '', '', '0', ' soporte tv negra generico', '1', '0', '42', '2017-11-18 15:59:48', '2017-11-18 15:59:48');
INSERT INTO `products` VALUES ('351', '2469', 'Soporte TV Negra Con medidor', 'soporte-tv-negra-con-medidor', '12', '266', '577', '1', '', '', '0', ' soporte tv negra con medidor generico', '1', '0', '42', '2017-11-18 16:00:53', '2017-11-18 16:00:53');
INSERT INTO `products` VALUES ('352', '2852', 'Soporte TV Negra Kalley', 'soporte-tv-negra-kalley', '12', '266', '578', '1', '', '', '0', ' soporte tv negra kalley generico', '1', '0', '42', '2017-11-18 16:01:53', '2017-11-18 16:01:53');
INSERT INTO `products` VALUES ('353', '3917', 'Batería Huawei Y30', 'bateria-huawei-y30', '3', '267', '579', '50', '', '', '0', ' batería huawei y30', '1', '0', '43', '2017-11-20 08:59:20', '2017-11-20 08:59:20');
INSERT INTO `products` VALUES ('354', '1281', 'Batería Huawei G610', 'bateria-huawei-g610', '3', '268', '580', '50', '', '', '0', 'batería huawei g610', '1', '0', '43', '2017-11-20 09:02:49', '2017-11-20 09:02:49');
INSERT INTO `products` VALUES ('355', '3269', 'Bateria Alcatel 6030', 'bateria-alcatel-6030', '7', '269', '581', '50', '', '', '0', 'bateria alcatel 6030', '1', '0', '43', '2017-11-20 09:05:55', '2017-11-20 09:05:55');
INSERT INTO `products` VALUES ('356', '2649', 'Batería Alcatel OT 710', 'bateria-alcatel-ot-710', '7', '270', '582', '50', '', '', '0', ' batería alcatel ot 710', '1', '0', '43', '2017-11-20 09:09:34', '2017-11-20 09:09:34');
INSERT INTO `products` VALUES ('357', '1515', 'Bateria Alcatel POP C1', 'bateria-alcatel-pop-c1', '7', '271', '583', '50', '', '', '0', ' bateria alcatel pop c1', '1', '0', '43', '2017-11-20 09:13:16', '2017-11-20 09:13:16');
INSERT INTO `products` VALUES ('358', '2501', 'Batería Huawei Y5 II', 'bateria-huawei-y5-ii', '3', '272', '584', '50', '', '', '0', ' batería huawei y5 ii', '1', '0', '43', '2017-11-20 09:16:05', '2017-11-20 09:16:05');
INSERT INTO `products` VALUES ('359', '10213', 'Batería Huawei Y511', 'bateria-huawei-y511', '3', '273', '585', '50', '', '', '0', ' batería huawei y511', '1', '0', '43', '2017-11-20 09:19:21', '2017-11-20 09:19:21');
INSERT INTO `products` VALUES ('360', '3222', 'Portatil Lenovo V110 Negro', 'portatil-lenovo-v110-negro', '32', '274', '586', '1', 'El Lenovo V110 cuenta con todo lo que necesita un portátil de uso doméstico: un procesador suficientemente fuerte, una SSD rápida y una RAM que funciona en modo de doble canal. También tiene instalado un teclado decente.', '', '0', 'portatil lenovo v110 negro  v110-14iap cpu n3350 ram 4gb hdd 500gb lan 100/1000m display 14\" hd bateria 3cell color', '1', '0', '44', '2017-11-24 09:20:08', '2017-11-24 09:20:08');
INSERT INTO `products` VALUES ('361', '3223', 'Portátil acer Aspire ES 14', 'portatil-acer-aspire-es-14', '33', '275', '587', '1', '', '', '0', 'portátil acer aspire es 14 os boot-up linux bateria 4-cell li-on color negro lcd 14.0\" hd', '1', '0', '44', '2017-11-24 09:31:41', '2017-11-24 09:31:41');
INSERT INTO `products` VALUES ('362', '10214', 'Sky Platinum 7.0+', 'sky-platinum-70', '25', '276', '588', '1', '', '', '0', 'tblets sky platinum 7.0+  pantalla 7.0\" hd camara frontal 2mp trasera 8mp memoria interna 8gb color gris', '1', '0', '24', '2017-11-24 09:39:33', '2017-11-30 10:55:21');
INSERT INTO `products` VALUES ('390', '10216', ' Social Sport ultra Azul ', 'social-sport-ultra-azul', '16', '278', '616', null, '', '', '0', ' social sport ultra azul zoom camara si dual sim pantalla 5\" color', '1', '0', '10', '2017-11-30 11:39:41', '2017-11-30 11:39:41');
INSERT INTO `products` VALUES ('391', '10217', 'PSP VITA Sony Negro ', 'psp-vita-sony-negro', '27', '277', '617', null, 'Esta consola portátil tiene un diseño muy similar al PSP; su pantalla táctil es de 5 pulgadas con controles a los lados, dos botones en la parte superior, dos cámaras (una frontal y otra trasera) y en la parte de atrás una superficie táctil con la que puedes jugar algunos juegos que están planeados para aprovechar está función.', '', '0', 'psp vita sony negro  camara si color', '1', '0', '22', '2017-11-30 11:39:46', '2017-11-30 11:39:46');
INSERT INTO `products` VALUES ('392', '10218', ' Bateria sansumg J2 Prime', 'bateria-sansumg-j2-prime', '2', '279', '618', null, '', '', '0', ' bateria sansumg j2 prime samsung', '1', '1', '43', '2017-11-30 17:21:29', '2017-11-30 17:21:29');
INSERT INTO `products` VALUES ('393', '10219', 'SONY PlayStation 4 Versión Call Of Duty', 'sony-playstation-4-version-call-of-duty', '27', '280', '619', null, 'Tuvieron que pasar más de 10 años para que Call of Duty dejara atrás los jetpacks, el espacio y los saltos dobles y volviera a sus raíces.', 'la Segunda Guerra Mundial. A pesar de que el cambio puede parecer brusco, en esencia el juego sigue siendo un típico Call of Duty, pero ahora situado en la sangrienta Europa de mediados de los años 40. Igual que todas las entregas de la franquicia, el juego se divide en 3 partes esenciales, la campaña, el multijugador y el modo de zombies.', '0', 'sony playstation 4 versión call of duty color verde', '0', '1', '45', '2017-12-19 10:05:45', '2018-01-09 17:33:45');
INSERT INTO `products` VALUES ('394', '10220', 'Alcatel Pixi 4G', 'alcatel-pixi-4g', '7', '281', '620', null, 'El Alcatel Pixi 3 tiene un tamaño de pantalla de 5.5 pulgadas, con una resolución de 1280 x 720. La pantalla es de tipo IPS.', 'Más características técnicas: en el apartado de memoria, contamos con 1 GB de memoria RAM y 8 GB para almacenamiento de archivos, apps y datos. La memoria de almacenamiento se puede ampliar vía microSD.', '0', 'alcatel pixi 4g color negro camara frontal 2mp trasera 5mp', '0', '1', '10', '2017-12-27 09:17:36', '2018-01-09 17:33:42');

-- ----------------------------
-- Table structure for products_attributes
-- ----------------------------
DROP TABLE IF EXISTS `products_attributes`;
CREATE TABLE `products_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_attribute_unique` (`attribute_id`,`product_id`) USING BTREE,
  KEY `fk_product_id` (`product_id`) USING BTREE,
  CONSTRAINT `products_attributes_ibfk_1` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_attributes_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1466 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products_attributes
-- ----------------------------
INSERT INTO `products_attributes` VALUES ('6', '2', '17', 'Compatible', '2017-02-04 11:24:59', '2017-02-04 11:24:59');
INSERT INTO `products_attributes` VALUES ('7', '1', '17', 'Gris', '2017-02-04 11:24:59', '2017-02-04 11:24:59');
INSERT INTO `products_attributes` VALUES ('8', '3', '17', 'VGA', '2017-02-04 11:24:59', '2017-02-04 11:24:59');
INSERT INTO `products_attributes` VALUES ('9', '4', '17', 'Si', '2017-02-04 11:24:59', '2017-02-04 11:24:59');
INSERT INTO `products_attributes` VALUES ('14', '3', '18', '8MP', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `products_attributes` VALUES ('15', '1', '18', 'Azul', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `products_attributes` VALUES ('16', '2', '18', 'Compatible', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `products_attributes` VALUES ('17', '4', '18', 'Si', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `products_attributes` VALUES ('18', '5', '18', 'Quad-Core 1.3GHz', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `products_attributes` VALUES ('19', '6', '18', '8GB', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `products_attributes` VALUES ('20', '7', '18', '2G/3G', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `products_attributes` VALUES ('21', '3', '19', '8MP', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `products_attributes` VALUES ('22', '2', '19', 'Compatible', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `products_attributes` VALUES ('23', '4', '19', 'Si', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `products_attributes` VALUES ('24', '5', '19', 'Quad-Core 1.3GHz', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `products_attributes` VALUES ('25', '6', '19', '8GB', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `products_attributes` VALUES ('26', '7', '19', '2G/3G', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `products_attributes` VALUES ('27', '1', '19', 'Blanco', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `products_attributes` VALUES ('28', '1', '20', 'Negro', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `products_attributes` VALUES ('29', '7', '20', '2G/3G', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `products_attributes` VALUES ('30', '3', '20', '5MP', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `products_attributes` VALUES ('31', '4', '20', 'Si', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `products_attributes` VALUES ('32', '6', '20', '4GB', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `products_attributes` VALUES ('33', '8', '20', '512MB', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `products_attributes` VALUES ('34', '9', '20', '1.3MP', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `products_attributes` VALUES ('35', '5', '20', 'Dual-Core 1.0GHz', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `products_attributes` VALUES ('36', '10', '20', '3.5 pulgadas', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `products_attributes` VALUES ('37', '11', '20', 'hasta 32GB', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `products_attributes` VALUES ('38', '7', '21', '2G/3G', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `products_attributes` VALUES ('39', '4', '21', 'Si', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `products_attributes` VALUES ('40', '11', '21', 'hasta 32GB', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `products_attributes` VALUES ('41', '3', '21', '3MP', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `products_attributes` VALUES ('42', '9', '21', '1.3MP', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `products_attributes` VALUES ('43', '6', '21', '4GB', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `products_attributes` VALUES ('44', '8', '21', '512MB', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `products_attributes` VALUES ('45', '5', '21', 'Quad-Core 1.2GHz', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `products_attributes` VALUES ('46', '10', '21', '4.0 pulgadas', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `products_attributes` VALUES ('47', '12', '21', 'Android 5.1 Lollipop', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `products_attributes` VALUES ('48', '7', '22', '2G/3G', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `products_attributes` VALUES ('49', '4', '22', 'Si', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `products_attributes` VALUES ('50', '11', '22', 'hasta 32GB', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `products_attributes` VALUES ('51', '3', '22', '3MP', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `products_attributes` VALUES ('52', '9', '22', '1.3MP', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `products_attributes` VALUES ('53', '6', '22', '4GB', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `products_attributes` VALUES ('54', '8', '22', '512MB', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `products_attributes` VALUES ('55', '5', '22', 'Quad-Core 1.2GHz', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `products_attributes` VALUES ('56', '10', '22', '4.0 pulgadas', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `products_attributes` VALUES ('57', '12', '22', 'Android 5.1 Lollipop', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `products_attributes` VALUES ('58', '1', '22', 'Negro', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `products_attributes` VALUES ('59', '1', '21', 'Blanco', null, null);
INSERT INTO `products_attributes` VALUES ('60', '7', '23', '2G/3G', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `products_attributes` VALUES ('61', '4', '23', 'Si', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `products_attributes` VALUES ('62', '11', '23', 'hasta 32GB', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `products_attributes` VALUES ('63', '6', '23', '4GB', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `products_attributes` VALUES ('64', '8', '23', '512MB', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `products_attributes` VALUES ('65', '1', '23', 'Negro', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `products_attributes` VALUES ('66', '5', '23', 'Dual-Core 1.0GHz', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `products_attributes` VALUES ('67', '3', '23', '5MP', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `products_attributes` VALUES ('68', '9', '23', '2MP', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `products_attributes` VALUES ('69', '10', '23', '3.5 pulgadas', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `products_attributes` VALUES ('70', '12', '23', 'Android 4.4 KitKat', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `products_attributes` VALUES ('71', '4', '24', 'Si', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_attributes` VALUES ('72', '11', '24', 'hasta 32GB', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_attributes` VALUES ('73', '1', '24', 'Negro', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_attributes` VALUES ('74', '3', '24', '5MP', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_attributes` VALUES ('75', '9', '24', '2MP', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_attributes` VALUES ('76', '10', '24', '4.5 pulgadas', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_attributes` VALUES ('77', '6', '24', '8GB', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_attributes` VALUES ('78', '8', '24', '1GB', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_attributes` VALUES ('79', '12', '24', 'Android 5.1 Lollipop', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_attributes` VALUES ('80', '5', '24', 'Quad-Core 1.3GHz', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_attributes` VALUES ('81', '7', '24', '2G/3G/4G', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_attributes` VALUES ('82', '2', '24', 'Compatible', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_attributes` VALUES ('83', '4', '25', 'Si', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_attributes` VALUES ('84', '11', '25', 'hasta 32GB', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_attributes` VALUES ('85', '3', '25', '5MP', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_attributes` VALUES ('86', '9', '25', '2MP', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_attributes` VALUES ('87', '10', '25', '4.5 pulgadas', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_attributes` VALUES ('88', '6', '25', '8GB', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_attributes` VALUES ('89', '8', '25', '1GB', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_attributes` VALUES ('90', '12', '25', 'Android 5.1 Lollipop', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_attributes` VALUES ('91', '5', '25', 'Quad-Core 1.3GHz', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_attributes` VALUES ('92', '7', '25', '2G/3G/4G', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_attributes` VALUES ('93', '2', '25', 'Compatible', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_attributes` VALUES ('94', '1', '25', 'Blanco', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_attributes` VALUES ('95', '1', '26', 'Dorado', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_attributes` VALUES ('96', '7', '26', '2G/3G/4G', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_attributes` VALUES ('97', '3', '26', '13MP', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_attributes` VALUES ('98', '9', '26', '5MP', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_attributes` VALUES ('99', '2', '26', 'Compatible', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_attributes` VALUES ('100', '6', '26', '16GB', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_attributes` VALUES ('101', '8', '26', '2GB', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_attributes` VALUES ('102', '5', '26', 'Octa-Core 1.2GHz', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_attributes` VALUES ('103', '12', '26', 'Android 5.0.2 Lollipop, actualizable a 6.0.1 Marsmallow ', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_attributes` VALUES ('104', '4', '26', 'Si', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_attributes` VALUES ('105', '10', '26', '5.0 pulgadas', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_attributes` VALUES ('106', '11', '26', 'hasta 256GB usa slot de sim 2', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_attributes` VALUES ('119', '1', '28', 'Negro', '2017-02-04 12:53:10', '2017-02-04 12:53:10');
INSERT INTO `products_attributes` VALUES ('120', '10', '28', '5.0 pulgadas', '2017-02-04 12:53:10', '2017-02-04 12:53:10');
INSERT INTO `products_attributes` VALUES ('121', '3', '28', '8MP', '2017-02-04 12:53:10', '2017-02-04 12:53:10');
INSERT INTO `products_attributes` VALUES ('122', '8', '28', '2GB', '2017-02-04 12:53:10', '2017-02-04 12:53:10');
INSERT INTO `products_attributes` VALUES ('123', '9', '28', '5MP', '2017-02-04 12:53:10', '2017-02-04 12:53:10');
INSERT INTO `products_attributes` VALUES ('124', '6', '28', '16GB', '2017-02-04 12:53:10', '2017-02-04 12:53:10');
INSERT INTO `products_attributes` VALUES ('125', '5', '28', 'Quad-core 1.2 GHz', '2017-02-04 12:53:10', '2017-02-04 12:53:10');
INSERT INTO `products_attributes` VALUES ('126', '15', '29', '8mm', '2017-02-04 13:35:41', '2017-02-04 13:35:41');
INSERT INTO `products_attributes` VALUES ('127', '13', '29', '1.2m', '2017-02-04 13:35:41', '2017-02-04 13:35:41');
INSERT INTO `products_attributes` VALUES ('128', '14', '29', '3.5mm', '2017-02-04 13:35:41', '2017-02-04 13:35:41');
INSERT INTO `products_attributes` VALUES ('129', '1', '29', 'Verde', '2017-02-04 13:35:41', '2017-02-04 13:35:41');
INSERT INTO `products_attributes` VALUES ('136', '1', '32', 'Negro', '2017-02-04 14:28:21', '2017-02-04 14:28:21');
INSERT INTO `products_attributes` VALUES ('137', '16', '32', 'Metal & Silicona', '2017-02-04 14:28:21', '2017-02-04 14:28:21');
INSERT INTO `products_attributes` VALUES ('138', '17', '32', 'Anti-Golpe', '2017-02-04 14:28:21', '2017-02-04 14:28:21');
INSERT INTO `products_attributes` VALUES ('139', '16', '33', 'Metal & Silicona', '2017-02-04 14:39:33', '2017-02-04 14:39:33');
INSERT INTO `products_attributes` VALUES ('140', '17', '33', 'Anti-Golpe', '2017-02-04 14:39:33', '2017-02-04 14:39:33');
INSERT INTO `products_attributes` VALUES ('141', '1', '33', 'Dorado', '2017-02-04 14:39:33', '2017-02-04 14:39:33');
INSERT INTO `products_attributes` VALUES ('142', '16', '34', 'Metal & Silicona', '2017-02-04 14:40:37', '2017-02-04 14:40:37');
INSERT INTO `products_attributes` VALUES ('143', '17', '34', 'Anti-Golpe', '2017-02-04 14:40:37', '2017-02-04 14:40:37');
INSERT INTO `products_attributes` VALUES ('144', '1', '34', 'Rosado', '2017-02-04 14:40:37', '2017-02-04 14:40:37');
INSERT INTO `products_attributes` VALUES ('145', '16', '35', 'Metal & Silicona', '2017-02-04 14:43:18', '2017-02-04 14:43:18');
INSERT INTO `products_attributes` VALUES ('146', '17', '35', 'Anti-Golpe', '2017-02-04 14:43:18', '2017-02-04 14:43:18');
INSERT INTO `products_attributes` VALUES ('147', '1', '35', 'Fucsia', '2017-02-04 14:43:18', '2017-02-04 14:43:18');
INSERT INTO `products_attributes` VALUES ('148', '16', '36', 'Plastico & Silicona', '2017-02-04 14:45:11', '2017-02-04 14:45:11');
INSERT INTO `products_attributes` VALUES ('149', '17', '36', 'Anti-Golpe', '2017-02-04 14:45:11', '2017-02-04 14:45:11');
INSERT INTO `products_attributes` VALUES ('150', '1', '36', 'Blanco', '2017-02-04 14:45:11', '2017-02-04 14:45:11');
INSERT INTO `products_attributes` VALUES ('151', '16', '37', 'Metal & Silicona', '2017-02-04 14:49:26', '2017-02-04 14:49:26');
INSERT INTO `products_attributes` VALUES ('152', '17', '37', 'Anti-Golpe', '2017-02-04 14:49:26', '2017-02-04 14:49:26');
INSERT INTO `products_attributes` VALUES ('153', '1', '37', 'Rosado', '2017-02-04 14:49:26', '2017-02-04 14:49:26');
INSERT INTO `products_attributes` VALUES ('154', '16', '38', 'Metal & Silicona', '2017-02-04 14:50:42', '2017-02-04 14:50:42');
INSERT INTO `products_attributes` VALUES ('155', '17', '38', 'Anti-Golpe', '2017-02-04 14:50:42', '2017-02-04 14:50:42');
INSERT INTO `products_attributes` VALUES ('156', '1', '38', 'Azul', '2017-02-04 14:50:42', '2017-02-04 14:50:42');
INSERT INTO `products_attributes` VALUES ('157', '17', '39', 'Anti-Golpe', '2017-02-04 14:52:14', '2017-02-04 14:52:14');
INSERT INTO `products_attributes` VALUES ('158', '1', '39', 'Negro', '2017-02-04 14:52:14', '2017-02-04 14:52:14');
INSERT INTO `products_attributes` VALUES ('159', '16', '39', 'Plastico & Silicona', '2017-02-04 14:52:14', '2017-02-04 14:52:14');
INSERT INTO `products_attributes` VALUES ('160', '17', '40', 'Anti-Golpe', '2017-02-04 14:57:38', '2017-02-04 14:57:38');
INSERT INTO `products_attributes` VALUES ('161', '16', '40', 'Plastico & Silicona', '2017-02-04 14:57:38', '2017-02-04 14:57:38');
INSERT INTO `products_attributes` VALUES ('162', '1', '40', 'Dorado', '2017-02-04 14:57:38', '2017-02-04 14:57:38');
INSERT INTO `products_attributes` VALUES ('163', '17', '41', 'Anti-Golpe', '2017-02-04 15:02:08', '2017-02-04 15:02:08');
INSERT INTO `products_attributes` VALUES ('164', '16', '41', 'Plastico & Silicona', '2017-02-04 15:02:08', '2017-02-04 15:02:08');
INSERT INTO `products_attributes` VALUES ('165', '1', '41', 'Blanco', '2017-02-04 15:02:08', '2017-02-04 15:02:08');
INSERT INTO `products_attributes` VALUES ('166', '17', '42', 'Anti-Golpe', '2017-02-04 15:02:56', '2017-02-04 15:02:56');
INSERT INTO `products_attributes` VALUES ('167', '16', '42', 'Plastico & Silicona', '2017-02-04 15:02:56', '2017-02-04 15:02:56');
INSERT INTO `products_attributes` VALUES ('168', '1', '42', 'Dorado', '2017-02-04 15:02:56', '2017-02-04 15:02:56');
INSERT INTO `products_attributes` VALUES ('169', '17', '43', 'Anti-Golpe', '2017-02-04 15:03:46', '2017-02-04 15:03:46');
INSERT INTO `products_attributes` VALUES ('170', '16', '43', 'Plastico & Silicona', '2017-02-04 15:03:46', '2017-02-04 15:03:46');
INSERT INTO `products_attributes` VALUES ('171', '1', '43', 'Rojo', '2017-02-04 15:03:46', '2017-02-04 15:03:46');
INSERT INTO `products_attributes` VALUES ('172', '17', '44', 'Anti-Golpe', '2017-02-04 15:04:38', '2017-02-04 15:04:38');
INSERT INTO `products_attributes` VALUES ('173', '16', '44', 'Plastico & Silicona', '2017-02-04 15:04:38', '2017-02-04 15:04:38');
INSERT INTO `products_attributes` VALUES ('174', '1', '44', 'Azul', '2017-02-04 15:04:38', '2017-02-04 15:04:38');
INSERT INTO `products_attributes` VALUES ('175', '17', '45', 'Anti-Golpe', '2017-02-04 15:05:37', '2017-02-04 15:05:37');
INSERT INTO `products_attributes` VALUES ('176', '16', '45', 'Plastico & Silicona', '2017-02-04 15:05:37', '2017-02-04 15:05:37');
INSERT INTO `products_attributes` VALUES ('177', '1', '45', 'Verde', '2017-02-04 15:05:37', '2017-02-04 15:05:37');
INSERT INTO `products_attributes` VALUES ('178', '17', '46', 'Anti-Golpe', '2017-02-04 15:06:21', '2017-02-04 15:06:21');
INSERT INTO `products_attributes` VALUES ('179', '16', '46', 'Plastico & Silicona', '2017-02-04 15:06:21', '2017-02-04 15:06:21');
INSERT INTO `products_attributes` VALUES ('180', '1', '46', 'Negro', '2017-02-04 15:06:21', '2017-02-04 15:06:21');
INSERT INTO `products_attributes` VALUES ('181', '1', '47', 'Transparente', '2017-02-04 15:14:59', '2017-02-04 15:14:59');
INSERT INTO `products_attributes` VALUES ('182', '16', '47', 'Silicona', '2017-02-04 15:14:59', '2017-02-04 15:14:59');
INSERT INTO `products_attributes` VALUES ('183', '17', '47', 'Normal', '2017-02-04 15:14:59', '2017-02-04 15:14:59');
INSERT INTO `products_attributes` VALUES ('184', '1', '48', 'Transparente', '2017-02-04 15:17:03', '2017-02-04 15:17:03');
INSERT INTO `products_attributes` VALUES ('185', '16', '48', 'Silicona', '2017-02-04 15:17:03', '2017-02-04 15:17:03');
INSERT INTO `products_attributes` VALUES ('186', '17', '48', 'Normal', '2017-02-04 15:17:03', '2017-02-04 15:17:03');
INSERT INTO `products_attributes` VALUES ('187', '1', '49', 'Transparente', '2017-02-04 15:18:18', '2017-02-04 15:18:18');
INSERT INTO `products_attributes` VALUES ('188', '16', '49', 'Silicona', '2017-02-04 15:18:18', '2017-02-04 15:18:18');
INSERT INTO `products_attributes` VALUES ('189', '17', '49', 'Normal', '2017-02-04 15:18:18', '2017-02-04 15:18:18');
INSERT INTO `products_attributes` VALUES ('190', '17', '50', 'Anti-Golpe', '2017-02-04 15:22:10', '2017-02-04 15:22:10');
INSERT INTO `products_attributes` VALUES ('191', '16', '50', 'Plastico & Silicona', '2017-02-04 15:22:10', '2017-02-04 15:22:10');
INSERT INTO `products_attributes` VALUES ('192', '1', '50', 'Rojo', '2017-02-04 15:22:10', '2017-02-04 15:22:10');
INSERT INTO `products_attributes` VALUES ('193', '1', '51', 'Dorado', '2017-02-04 15:25:16', '2017-02-04 15:25:16');
INSERT INTO `products_attributes` VALUES ('194', '16', '51', 'Silicona', '2017-02-04 15:25:16', '2017-02-04 15:25:16');
INSERT INTO `products_attributes` VALUES ('195', '17', '51', 'Normal', '2017-02-04 15:25:16', '2017-02-04 15:25:16');
INSERT INTO `products_attributes` VALUES ('202', '16', '54', 'Silicona', '2017-02-04 15:44:09', '2017-02-04 15:44:09');
INSERT INTO `products_attributes` VALUES ('203', '17', '54', 'Normal', '2017-02-04 15:44:09', '2017-02-04 15:44:09');
INSERT INTO `products_attributes` VALUES ('204', '1', '54', 'Negro', '2017-02-04 15:44:09', '2017-02-04 15:44:09');
INSERT INTO `products_attributes` VALUES ('205', '16', '55', 'Silicona', '2017-02-04 15:46:02', '2017-02-04 15:46:02');
INSERT INTO `products_attributes` VALUES ('206', '17', '55', 'Normal', '2017-02-04 15:46:02', '2017-02-04 15:46:02');
INSERT INTO `products_attributes` VALUES ('207', '1', '55', 'Negro', '2017-02-04 15:46:02', '2017-02-04 15:46:02');
INSERT INTO `products_attributes` VALUES ('208', '16', '56', 'Silicona', '2017-02-04 15:47:28', '2017-02-04 15:47:28');
INSERT INTO `products_attributes` VALUES ('209', '17', '56', 'Normal', '2017-02-04 15:47:28', '2017-02-04 15:47:28');
INSERT INTO `products_attributes` VALUES ('210', '1', '56', 'Negro', '2017-02-04 15:47:28', '2017-02-04 15:47:28');
INSERT INTO `products_attributes` VALUES ('211', '16', '57', 'Silicona', '2017-02-04 15:53:32', '2017-02-04 15:53:32');
INSERT INTO `products_attributes` VALUES ('212', '17', '57', 'Normal', '2017-02-04 15:53:32', '2017-02-04 15:53:32');
INSERT INTO `products_attributes` VALUES ('213', '1', '57', 'Negro', '2017-02-04 15:53:32', '2017-02-04 15:53:32');
INSERT INTO `products_attributes` VALUES ('214', '16', '58', 'Silicona', '2017-02-04 15:58:26', '2017-02-04 15:58:26');
INSERT INTO `products_attributes` VALUES ('215', '17', '58', 'Normal', '2017-02-04 15:58:26', '2017-02-04 15:58:26');
INSERT INTO `products_attributes` VALUES ('216', '1', '58', 'Negro', '2017-02-04 15:58:26', '2017-02-04 15:58:26');
INSERT INTO `products_attributes` VALUES ('217', '16', '59', 'Silicona', '2017-02-04 16:02:49', '2017-02-04 16:02:49');
INSERT INTO `products_attributes` VALUES ('218', '17', '59', 'Normal', '2017-02-04 16:02:49', '2017-02-04 16:02:49');
INSERT INTO `products_attributes` VALUES ('219', '1', '59', 'Verde', '2017-02-04 16:02:49', '2017-02-04 16:02:49');
INSERT INTO `products_attributes` VALUES ('220', '16', '60', 'Silicona', '2017-02-04 16:03:34', '2017-02-04 16:03:34');
INSERT INTO `products_attributes` VALUES ('221', '17', '60', 'Normal', '2017-02-04 16:03:34', '2017-02-04 16:03:34');
INSERT INTO `products_attributes` VALUES ('222', '1', '60', 'Rosado', '2017-02-04 16:03:34', '2017-02-04 16:03:34');
INSERT INTO `products_attributes` VALUES ('223', '17', '61', 'Normal', '2017-02-04 16:05:51', '2017-02-04 16:05:51');
INSERT INTO `products_attributes` VALUES ('224', '1', '61', 'Negro', '2017-02-04 16:05:51', '2017-02-04 16:05:51');
INSERT INTO `products_attributes` VALUES ('225', '16', '61', 'Plástico', '2017-02-04 16:05:51', '2017-02-04 16:05:51');
INSERT INTO `products_attributes` VALUES ('226', '17', '62', 'Normal', '2017-02-04 16:09:35', '2017-02-04 16:09:35');
INSERT INTO `products_attributes` VALUES ('227', '1', '62', 'Negro', '2017-02-04 16:09:35', '2017-02-04 16:09:35');
INSERT INTO `products_attributes` VALUES ('228', '16', '62', 'Plástico', '2017-02-04 16:09:35', '2017-02-04 16:09:35');
INSERT INTO `products_attributes` VALUES ('229', '10', '63', '5,5\" (pulgadas)', '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `products_attributes` VALUES ('230', '18', '63', '21MP', '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `products_attributes` VALUES ('231', '8', '63', '2GB', '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `products_attributes` VALUES ('232', '5', '63', 'Octa-core SnapDragon 615 4x1,7GHz 4x1,0GHz', '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `products_attributes` VALUES ('233', '19', '63', '16GB', '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `products_attributes` VALUES ('234', '9', '63', '5MP', '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `products_attributes` VALUES ('283', '20', '68', 'GSM/HSPA/LTE', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('284', '21', '68', '4(1700/2100)', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('285', '22', '68', '171g(6.03oz)', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('286', '10', '68', '5.5', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('287', '12', '68', 'Android OS, v5.1 (Lollipop), upgradable to v6.0.1 (Marshmallow)', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('288', '23', '68', 'Qualcomm MSM8939 Snapdragon 615Exynos 7580 Octa', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('289', '5', '68', 'Octa-core (4x1.4 GHz Cortex-A53 & 4x1.0 GHz Cortex-A53)Octa-core 1.5 GHz Cortex-A53', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('290', '24', '68', 'Adreno 405Mali-T720MP2', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('291', '6', '68', '16GB', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('292', '8', '68', '1.5GB', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('293', '3', '68', '13MP', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('294', '9', '68', '5MP', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('295', '25', '68', 'Removible Li-Ion 3000 mAh', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('296', '1', '68', 'Negro', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_attributes` VALUES ('297', '20', '69', 'GSM/HSPA/LTE', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('298', '21', '69', '4(1700/2100)', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('299', '22', '69', '171g(6.03oz)', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('300', '10', '69', '5.5', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('301', '12', '69', 'Android OS, v5.1 (Lollipop), upgradable to v6.0.1 (Marshmallow)', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('302', '23', '69', 'Qualcomm MSM8939 Snapdragon 615Exynos 7580 Octa', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('303', '5', '69', 'Octa-core (4x1.4 GHz Cortex-A53 & 4x1.0 GHz Cortex-A53)Octa-core 1.5 GHz Cortex-A53', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('304', '24', '69', 'Adreno 405Mali-T720MP2', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('305', '6', '69', '16GB', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('306', '8', '69', '1.5GB', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('307', '3', '69', '13MP', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('308', '9', '69', '5MP', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('309', '25', '69', 'Removible Li-Ion 3000 mAh', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('310', '1', '69', 'Dorado', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('311', '20', '70', 'GSM/HSPA/LTE', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('312', '21', '70', '', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('313', '22', '70', '143g(5.04oz)', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('314', '10', '70', '5.0', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('315', '12', '70', 'Android OS, v6.0.1 (Marshmallow)', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('316', '23', '70', 'Exynos 7570 Quad', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('317', '5', '70', 'Quad-core 1.4 GHz Cortex-A53', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('318', '24', '70', 'Mali-T720', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('319', '6', '70', '16GB', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('320', '8', '70', '2GB', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('321', '3', '70', '13MP', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('322', '9', '70', '5MP', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('323', '25', '70', 'No-Removible Li-Ion 2400 mAh', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('324', '1', '70', 'Dorado', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('325', '2', '70', 'Compatible', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_attributes` VALUES ('341', '20', '72', 'GSM/CDMA/HSPA/EVDO/LTE', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('342', '21', '72', '4(1700/2100)', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('343', '22', '72', '155g(5.47oz)', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('344', '10', '72', '5.2', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('345', '12', '72', 'Android OS, v5.1.1 (Lollipop), actualizable a v6.0.1 (Marshmallow)', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('346', '23', '72', 'Qualcomm MSM8939 Snapdragon 615Exynos 7580 Octa', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('347', '5', '72', 'Octa-core (4x1.2 GHz Cortex-A53 & 4x1.5 GHz Cortex-A53)Octa-core 1.6 GHz Cortex-A53', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('348', '24', '72', 'Adreno 405Mali-T720MP2', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('349', '6', '72', '16GB', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('350', '8', '72', '2GB', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('351', '3', '72', '13MP', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('352', '9', '72', '5MP', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('353', '25', '72', 'No-Removible Li-Ion 2900 mAh', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('354', '1', '72', 'Negro', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_attributes` VALUES ('355', '20', '73', 'GSM/CDMA/HSPA/EVDO/LTE', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('356', '21', '73', '4(1700/2100)', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('357', '22', '73', '155g(5.47oz)', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('358', '10', '73', '5.2', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('359', '12', '73', 'Android OS, v5.1.1 (Lollipop), actualizable a v6.0.1 (Marshmallow)', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('360', '23', '73', 'Qualcomm MSM8939 Snapdragon 615Exynos 7580 Octa', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('361', '5', '73', 'Octa-core (4x1.2 GHz Cortex-A53 & 4x1.5 GHz Cortex-A53)Octa-core 1.6 GHz Cortex-A53', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('362', '24', '73', 'Adreno 405Mali-T720MP2', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('363', '6', '73', '16GB', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('364', '8', '73', '2GB', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('365', '3', '73', '13MP', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('366', '9', '73', '5MP', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('367', '25', '73', 'No-Removible Li-Ion 2900 mAh', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('368', '1', '73', 'Dorado', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_attributes` VALUES ('369', '20', '74', 'GSM/HSPA/LTE', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('370', '21', '74', '4(1700/2100)', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('371', '22', '74', '131g(4.62oz)', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('372', '10', '74', '4.3', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('373', '12', '74', 'Android OS, v4.4.4 (KitKat)', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('374', '23', '74', 'Spreadtrum SC9830Marvell PXA1908', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('375', '5', '74', 'Quad-core 1.5 GHz Cortex-A7', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('376', '24', '74', 'Mali-400MP2', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('377', '6', '74', '4GB', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('378', '8', '74', '512MB', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('379', '3', '74', '5MP', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('380', '9', '74', '2MP', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('381', '25', '74', 'Removible Li-Ion 1900 mAh', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('382', '1', '74', 'Negro', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('383', '2', '74', 'Compatible', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_attributes` VALUES ('384', '20', '75', 'GSM/HSPA/LTE', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('385', '21', '75', '4(1700/2100)', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('386', '22', '75', '131g(4.62oz)', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('387', '10', '75', '4.3', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('388', '12', '75', 'Android OS, v4.4.4 (KitKat)', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('389', '23', '75', 'Spreadtrum SC9830Marvell PXA1908', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('390', '5', '75', 'Quad-core 1.5 GHz Cortex-A7', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('391', '24', '75', 'Mali-400MP2', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('392', '6', '75', '4GB', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('393', '8', '75', '512MB', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('394', '3', '75', '5MP', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('395', '9', '75', '2MP', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('396', '25', '75', 'Removible Li-Ion 1900 mAh', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('397', '1', '75', 'Blanco', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('398', '2', '75', 'Compatible', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_attributes` VALUES ('399', '20', '76', 'GSM/HSPA/LTE', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('400', '21', '76', '4(1700/2100)', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('401', '22', '76', '146g(5.15oz)', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('402', '10', '76', '5.0', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('403', '12', '76', 'Android OS, v5.1 (Lollipop), actualizable ao v6.0.1 (Marshmallow)', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('404', '23', '76', 'Qualcomm MSM8916 Snapdragon 410', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('405', '5', '76', 'Quad-core 1.2 GHz Cortex-A53', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('406', '24', '76', 'Adreno 306', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('407', '6', '76', '8/16GB', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('408', '8', '76', '1.5GB', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('409', '3', '76', '13MP', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('410', '9', '76', '5MP', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('411', '25', '76', 'Removible Li-Ion 2600 mAh', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('412', '1', '76', 'Blanco', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_attributes` VALUES ('413', '20', '77', 'GSM/HSPA/LTE', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('414', '21', '77', '4(1700/2100)', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('415', '22', '77', '146g(5.15oz)', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('416', '10', '77', '5.0', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('417', '12', '77', 'Android OS, v5.1 (Lollipop), actualizable a v6.0.1 (Marshmallow)', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('418', '23', '77', 'Qualcomm MSM8916 Snapdragon 410', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('419', '5', '77', 'Quad-core 1.2 GHz Cortex-A53', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('420', '24', '77', 'Adreno 306', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('421', '6', '77', '8/16GB', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('422', '8', '77', '1.5GB', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('423', '3', '77', '13MP', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('424', '9', '77', '5MP', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('425', '25', '77', 'Removible Li-Ion 2600 mAh', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('426', '1', '77', 'Negro', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_attributes` VALUES ('442', '20', '79', 'GSM/HSPA/LTE', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('443', '21', '79', '4(1700/2100)', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('444', '22', '79', '131g(4.62oz)', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('445', '10', '79', '4.5', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('446', '12', '79', 'Android OS, v5.1.1 (Lollipop)', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('447', '23', '79', 'Spreadtrum SC9830', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('448', '5', '79', 'Quad-core 1.3 GHz Cortex-A7', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('449', '24', '79', 'Mali-400', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('450', '6', '79', '8GB', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('451', '8', '79', '1GB', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('452', '3', '79', '5MP', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('453', '9', '79', '2MP', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('454', '25', '79', 'Removible Li-Ion 2050 mAh', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('455', '1', '79', 'Dorado', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('456', '2', '79', 'Compatible', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_attributes` VALUES ('485', '3', '88', '13MP', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `products_attributes` VALUES ('486', '10', '88', '5.5\"', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `products_attributes` VALUES ('487', '19', '88', '16GB', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `products_attributes` VALUES ('488', '9', '88', '5MP', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `products_attributes` VALUES ('489', '4', '88', 'Flash Frontal', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `products_attributes` VALUES ('490', '21', '88', 'LTE Cat4', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `products_attributes` VALUES ('491', '5', '88', 'Octa-Core 1.6GHz', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `products_attributes` VALUES ('492', '10', '89', '5.0\"', '2017-02-24 10:10:43', '2017-02-24 10:10:43');
INSERT INTO `products_attributes` VALUES ('493', '5', '89', '1.2GHz', '2017-02-24 10:10:43', '2017-02-24 10:10:43');
INSERT INTO `products_attributes` VALUES ('494', '3', '89', '13MP', '2017-02-24 10:10:43', '2017-02-24 10:10:43');
INSERT INTO `products_attributes` VALUES ('495', '9', '89', '5MP', '2017-02-24 10:10:43', '2017-02-24 10:10:43');
INSERT INTO `products_attributes` VALUES ('496', '19', '89', '8GB', '2017-02-24 10:10:43', '2017-02-24 10:10:43');
INSERT INTO `products_attributes` VALUES ('497', '8', '89', '2GB', '2017-02-24 10:10:43', '2017-02-24 10:10:43');
INSERT INTO `products_attributes` VALUES ('498', '18', '90', '0.8MP', '2017-02-24 10:17:47', '2017-02-24 10:17:47');
INSERT INTO `products_attributes` VALUES ('499', '30', '90', 'Bluetooth v2.1', '2017-02-24 10:17:47', '2017-02-24 10:17:47');
INSERT INTO `products_attributes` VALUES ('500', '31', '90', 'Dual SIM', '2017-02-24 10:17:47', '2017-02-24 10:17:47');
INSERT INTO `products_attributes` VALUES ('501', '10', '91', '3.5\"', '2017-02-24 10:27:57', '2017-02-24 10:27:57');
INSERT INTO `products_attributes` VALUES ('502', '9', '91', '2MP', '2017-02-24 10:27:57', '2017-02-24 10:27:57');
INSERT INTO `products_attributes` VALUES ('503', '3', '91', '2MP', '2017-02-24 10:27:57', '2017-02-24 10:27:57');
INSERT INTO `products_attributes` VALUES ('504', '5', '91', 'Dual-Core 1.0GHz', '2017-02-24 10:27:57', '2017-02-24 10:27:57');
INSERT INTO `products_attributes` VALUES ('505', '18', '92', '0.3MP', '2017-02-24 11:10:37', '2017-02-24 11:10:37');
INSERT INTO `products_attributes` VALUES ('506', '10', '92', '2.4\"', '2017-02-24 11:10:37', '2017-02-24 11:10:37');
INSERT INTO `products_attributes` VALUES ('507', '30', '92', 'Bluetooth v2.1', '2017-02-24 11:10:37', '2017-02-24 11:10:37');
INSERT INTO `products_attributes` VALUES ('508', '11', '92', 'hasta 32GB', '2017-02-24 11:10:37', '2017-02-24 11:10:37');
INSERT INTO `products_attributes` VALUES ('509', '1', '92', 'Azul', null, null);
INSERT INTO `products_attributes` VALUES ('510', '1', '93', 'Negro', '2017-02-24 11:17:40', '2017-02-24 11:17:40');
INSERT INTO `products_attributes` VALUES ('511', '2', '93', 'Dual SIM', '2017-02-24 11:17:40', '2017-02-24 11:17:40');
INSERT INTO `products_attributes` VALUES ('512', '10', '93', '2.4\"', '2017-02-24 11:17:40', '2017-02-24 11:17:40');
INSERT INTO `products_attributes` VALUES ('513', '18', '93', '0.3MP', '2017-02-24 11:17:40', '2017-02-24 11:17:40');
INSERT INTO `products_attributes` VALUES ('514', '2', '94', 'Dual SIM', '2017-02-24 11:20:25', '2017-02-24 11:20:25');
INSERT INTO `products_attributes` VALUES ('515', '10', '94', '2.4\"', '2017-02-24 11:20:25', '2017-02-24 11:20:25');
INSERT INTO `products_attributes` VALUES ('516', '18', '94', '0.3MP', '2017-02-24 11:20:25', '2017-02-24 11:20:25');
INSERT INTO `products_attributes` VALUES ('517', '1', '94', 'Blanco', '2017-02-24 11:20:25', '2017-02-24 11:20:25');
INSERT INTO `products_attributes` VALUES ('518', '18', '95', '0.3MP', '2017-02-24 11:29:41', '2017-02-24 11:29:41');
INSERT INTO `products_attributes` VALUES ('519', '1', '95', 'Verde', '2017-02-24 11:29:41', '2017-02-24 11:29:41');
INSERT INTO `products_attributes` VALUES ('520', '2', '95', 'Dual SIM', '2017-02-24 11:29:41', '2017-02-24 11:29:41');
INSERT INTO `products_attributes` VALUES ('521', '11', '95', 'hasta 32GB', '2017-02-24 11:29:41', '2017-02-24 11:29:41');
INSERT INTO `products_attributes` VALUES ('523', '1', '97', 'Naranja', '2017-02-24 12:06:54', '2017-02-24 12:06:54');
INSERT INTO `products_attributes` VALUES ('524', '1', '98', 'Azul', '2017-02-24 12:07:33', '2017-02-24 12:07:33');
INSERT INTO `products_attributes` VALUES ('525', '1', '99', 'Amarillo', '2017-02-24 12:08:20', '2017-02-24 12:08:20');
INSERT INTO `products_attributes` VALUES ('526', '1', '100', 'Blanco', '2017-02-24 12:09:21', '2017-02-24 12:09:21');
INSERT INTO `products_attributes` VALUES ('527', '1', '101', 'Verde', '2017-02-24 12:10:17', '2017-02-24 12:10:17');
INSERT INTO `products_attributes` VALUES ('528', '1', '102', 'Blanco', '2017-02-24 12:14:46', '2017-02-24 12:14:46');
INSERT INTO `products_attributes` VALUES ('529', '2', '102', 'Dual SIM', '2017-02-24 12:14:46', '2017-02-24 12:14:46');
INSERT INTO `products_attributes` VALUES ('530', '1', '103', 'Nuevo', '2017-02-24 12:23:25', '2017-02-24 12:23:25');
INSERT INTO `products_attributes` VALUES ('531', '1', '104', 'Negro', '2017-02-24 12:26:45', '2017-02-24 12:26:45');
INSERT INTO `products_attributes` VALUES ('532', '2', '104', 'Dual SIM', '2017-02-24 12:26:45', '2017-02-24 12:26:45');
INSERT INTO `products_attributes` VALUES ('533', '1', '105', 'Blanco', '2017-02-24 12:32:56', '2017-02-24 12:32:56');
INSERT INTO `products_attributes` VALUES ('534', '10', '105', '4.0\"', '2017-02-24 12:32:56', '2017-02-24 12:32:56');
INSERT INTO `products_attributes` VALUES ('535', '5', '105', '1.3GHz', '2017-02-24 12:32:56', '2017-02-24 12:32:56');
INSERT INTO `products_attributes` VALUES ('536', '1', '106', 'Negro', '2017-02-24 12:36:30', '2017-02-24 12:36:30');
INSERT INTO `products_attributes` VALUES ('537', '1', '107', 'Plateado', '2017-03-01 10:58:43', '2017-03-01 10:58:43');
INSERT INTO `products_attributes` VALUES ('538', '16', '107', 'Silicona', '2017-03-01 10:58:43', '2017-03-01 10:58:43');
INSERT INTO `products_attributes` VALUES ('539', '16', '108', 'Silicona', '2017-03-01 11:02:12', '2017-03-01 11:02:12');
INSERT INTO `products_attributes` VALUES ('540', '1', '108', 'Dorado', '2017-03-01 11:02:12', '2017-03-01 11:02:12');
INSERT INTO `products_attributes` VALUES ('541', '16', '109', 'Silicona', '2017-03-01 11:04:43', '2017-03-01 11:04:43');
INSERT INTO `products_attributes` VALUES ('542', '1', '109', 'Negro', '2017-03-01 11:04:43', '2017-03-01 11:04:43');
INSERT INTO `products_attributes` VALUES ('543', '16', '110', 'Silicona', '2017-03-01 11:06:11', '2017-03-01 11:06:11');
INSERT INTO `products_attributes` VALUES ('544', '1', '110', 'Azul', '2017-03-01 11:06:11', '2017-03-01 11:06:11');
INSERT INTO `products_attributes` VALUES ('545', '16', '111', 'Silicona', '2017-03-01 11:09:59', '2017-03-01 11:09:59');
INSERT INTO `products_attributes` VALUES ('546', '1', '111', 'Rosado', '2017-03-01 11:09:59', '2017-03-01 11:09:59');
INSERT INTO `products_attributes` VALUES ('551', '16', '114', 'Silicona', '2017-03-01 11:29:22', '2017-03-01 11:29:22');
INSERT INTO `products_attributes` VALUES ('552', '1', '114', 'Gris', '2017-03-01 11:29:22', '2017-03-01 11:29:22');
INSERT INTO `products_attributes` VALUES ('553', '16', '115', 'Silicona', '2017-03-01 11:29:55', '2017-03-01 11:29:55');
INSERT INTO `products_attributes` VALUES ('554', '1', '115', 'Morado', '2017-03-01 11:29:55', '2017-03-01 11:29:55');
INSERT INTO `products_attributes` VALUES ('555', '16', '116', 'Silicona', '2017-03-01 11:30:30', '2017-03-01 11:30:30');
INSERT INTO `products_attributes` VALUES ('556', '1', '116', 'Negro', '2017-03-01 11:30:30', '2017-03-01 11:30:30');
INSERT INTO `products_attributes` VALUES ('557', '16', '117', 'Silicona', '2017-03-01 11:30:58', '2017-03-01 11:30:58');
INSERT INTO `products_attributes` VALUES ('558', '1', '117', 'Blanco', '2017-03-01 11:30:58', '2017-03-01 11:30:58');
INSERT INTO `products_attributes` VALUES ('559', '16', '118', 'Silicona', '2017-03-01 11:31:26', '2017-03-01 11:31:26');
INSERT INTO `products_attributes` VALUES ('560', '1', '118', 'Azul', '2017-03-01 11:31:26', '2017-03-01 11:31:26');
INSERT INTO `products_attributes` VALUES ('561', '16', '119', 'Silicona', '2017-03-01 11:32:08', '2017-03-01 11:32:08');
INSERT INTO `products_attributes` VALUES ('562', '1', '119', 'Rosado', '2017-03-01 11:32:08', '2017-03-01 11:32:08');
INSERT INTO `products_attributes` VALUES ('563', '16', '120', 'Silicona', '2017-03-01 11:45:59', '2017-03-01 11:45:59');
INSERT INTO `products_attributes` VALUES ('564', '1', '120', 'Amarillo Rosado Morado', '2017-03-01 11:45:59', '2017-03-01 11:45:59');
INSERT INTO `products_attributes` VALUES ('565', '16', '121', 'Silicona', '2017-03-01 11:46:45', '2017-03-01 11:46:45');
INSERT INTO `products_attributes` VALUES ('566', '1', '121', 'Amarillo Blanco Azul Rojo', '2017-03-01 11:46:45', '2017-03-01 11:46:45');
INSERT INTO `products_attributes` VALUES ('567', '16', '122', 'Silicona', '2017-03-01 11:48:07', '2017-03-01 11:48:07');
INSERT INTO `products_attributes` VALUES ('568', '1', '122', 'Blanco Rosado Verde', '2017-03-01 11:48:07', '2017-03-01 11:48:07');
INSERT INTO `products_attributes` VALUES ('569', '16', '123', 'Silicona', '2017-03-01 11:49:00', '2017-03-01 11:49:00');
INSERT INTO `products_attributes` VALUES ('570', '1', '123', 'Azul Amarillo Verde Rosado Blanco Rojo', '2017-03-01 11:49:00', '2017-03-01 11:49:00');
INSERT INTO `products_attributes` VALUES ('571', '16', '124', 'Silicona', '2017-03-01 11:49:53', '2017-03-01 11:49:53');
INSERT INTO `products_attributes` VALUES ('572', '1', '124', 'Negro Blanco Rosado Rojo', '2017-03-01 11:49:53', '2017-03-01 11:49:53');
INSERT INTO `products_attributes` VALUES ('573', '16', '125', 'Silicona', '2017-03-01 11:50:37', '2017-03-01 11:50:37');
INSERT INTO `products_attributes` VALUES ('574', '1', '125', 'Negro Blanco Azul', '2017-03-01 11:50:37', '2017-03-01 11:50:37');
INSERT INTO `products_attributes` VALUES ('575', '16', '126', 'Silicona', '2017-03-01 11:51:39', '2017-03-01 11:51:39');
INSERT INTO `products_attributes` VALUES ('576', '1', '126', 'Negro Verde', '2017-03-01 11:51:39', '2017-03-01 11:51:39');
INSERT INTO `products_attributes` VALUES ('577', '16', '127', 'Silicona', '2017-03-01 11:52:11', '2017-03-01 11:52:11');
INSERT INTO `products_attributes` VALUES ('578', '1', '127', 'Rojo Azul', '2017-03-01 11:52:11', '2017-03-01 11:52:11');
INSERT INTO `products_attributes` VALUES ('579', '16', '128', 'Silicona', '2017-03-01 11:53:23', '2017-03-01 11:53:23');
INSERT INTO `products_attributes` VALUES ('580', '1', '128', 'Azul y Plateado', '2017-03-01 11:53:23', '2017-03-01 11:53:23');
INSERT INTO `products_attributes` VALUES ('581', '16', '129', 'Silicona', '2017-03-01 11:53:52', '2017-03-01 11:53:52');
INSERT INTO `products_attributes` VALUES ('582', '1', '129', 'Plateado', '2017-03-01 11:53:52', '2017-03-01 11:53:52');
INSERT INTO `products_attributes` VALUES ('583', '16', '130', 'Silicona', '2017-03-01 11:54:28', '2017-03-01 11:54:28');
INSERT INTO `products_attributes` VALUES ('584', '1', '130', 'Rosado Plateado', '2017-03-01 11:54:28', '2017-03-01 11:54:28');
INSERT INTO `products_attributes` VALUES ('585', '16', '131', 'Silicona', '2017-03-01 11:55:01', '2017-03-01 11:55:01');
INSERT INTO `products_attributes` VALUES ('586', '1', '131', 'Rojo Plateado', '2017-03-01 11:55:01', '2017-03-01 11:55:01');
INSERT INTO `products_attributes` VALUES ('587', '16', '132', 'Silicona', '2017-03-01 11:55:44', '2017-03-01 11:55:44');
INSERT INTO `products_attributes` VALUES ('588', '1', '132', 'Transparente', '2017-03-01 11:55:44', '2017-03-01 11:55:44');
INSERT INTO `products_attributes` VALUES ('589', '16', '133', 'Silicona', '2017-03-01 11:56:20', '2017-03-01 11:56:20');
INSERT INTO `products_attributes` VALUES ('590', '16', '134', 'Silicona', '2017-03-01 11:56:54', '2017-03-01 11:56:54');
INSERT INTO `products_attributes` VALUES ('591', '1', '134', 'Rojo', '2017-03-01 11:56:54', '2017-03-01 11:56:54');
INSERT INTO `products_attributes` VALUES ('592', '16', '135', 'Silicona', '2017-03-01 11:59:08', '2017-03-01 11:59:08');
INSERT INTO `products_attributes` VALUES ('593', '1', '135', 'Gris', '2017-03-01 11:59:08', '2017-03-01 11:59:08');
INSERT INTO `products_attributes` VALUES ('594', '16', '136', 'Silicona', '2017-03-01 11:59:29', '2017-03-01 11:59:29');
INSERT INTO `products_attributes` VALUES ('595', '1', '136', 'Negro', '2017-03-01 11:59:29', '2017-03-01 11:59:29');
INSERT INTO `products_attributes` VALUES ('596', '16', '137', 'Silicona', '2017-03-01 12:00:23', '2017-03-01 12:00:23');
INSERT INTO `products_attributes` VALUES ('597', '1', '137', 'Gris', '2017-03-01 12:00:23', '2017-03-01 12:00:23');
INSERT INTO `products_attributes` VALUES ('598', '16', '138', 'Silicona', '2017-03-01 12:01:04', '2017-03-01 12:01:04');
INSERT INTO `products_attributes` VALUES ('599', '1', '138', 'Rojo', '2017-03-01 12:01:04', '2017-03-01 12:01:04');
INSERT INTO `products_attributes` VALUES ('600', '16', '139', 'Silicona', '2017-03-01 12:01:53', '2017-03-01 12:01:53');
INSERT INTO `products_attributes` VALUES ('601', '1', '139', 'Fucsia', '2017-03-01 12:01:53', '2017-03-01 12:01:53');
INSERT INTO `products_attributes` VALUES ('602', '16', '140', 'Silicona', '2017-03-01 12:02:24', '2017-03-01 12:02:24');
INSERT INTO `products_attributes` VALUES ('603', '1', '140', 'Dorado Negro', '2017-03-01 12:02:24', '2017-03-01 12:02:24');
INSERT INTO `products_attributes` VALUES ('604', '16', '141', 'Silicona', '2017-03-01 12:03:15', '2017-03-01 12:03:15');
INSERT INTO `products_attributes` VALUES ('605', '1', '141', 'Fucsia Negro', '2017-03-01 12:03:15', '2017-03-01 12:03:15');
INSERT INTO `products_attributes` VALUES ('606', '16', '142', 'Silicona', '2017-03-01 12:05:25', '2017-03-01 12:05:25');
INSERT INTO `products_attributes` VALUES ('607', '1', '142', 'Azul', '2017-03-01 12:05:25', '2017-03-01 12:05:25');
INSERT INTO `products_attributes` VALUES ('608', '16', '143', 'Silicona', '2017-03-01 12:05:54', '2017-03-01 12:05:54');
INSERT INTO `products_attributes` VALUES ('609', '1', '143', 'Plateado', '2017-03-01 12:05:54', '2017-03-01 12:05:54');
INSERT INTO `products_attributes` VALUES ('610', '14', '144', '3.5', '2017-03-28 21:56:15', '2017-03-28 21:56:15');
INSERT INTO `products_attributes` VALUES ('611', '1', '144', 'Rojo y Blanco', '2017-03-28 21:56:15', '2017-03-28 21:56:15');
INSERT INTO `products_attributes` VALUES ('612', '14', '145', '3.5', '2017-03-28 21:59:04', '2017-03-28 21:59:04');
INSERT INTO `products_attributes` VALUES ('613', '1', '145', 'Rosado con Blanco', '2017-03-28 21:59:04', '2017-03-28 21:59:04');
INSERT INTO `products_attributes` VALUES ('614', '14', '146', '3.5', '2017-03-28 22:00:44', '2017-03-28 22:00:44');
INSERT INTO `products_attributes` VALUES ('615', '1', '146', 'Negro con Blanco y Rosado', '2017-03-28 22:00:44', '2017-03-28 22:00:44');
INSERT INTO `products_attributes` VALUES ('616', '14', '147', '3.5', '2017-03-28 22:05:01', '2017-03-28 22:05:01');
INSERT INTO `products_attributes` VALUES ('617', '1', '147', 'Azul', '2017-03-28 22:05:01', '2017-03-28 22:05:01');
INSERT INTO `products_attributes` VALUES ('618', '14', '148', '3.5', '2017-03-28 22:05:52', '2017-03-28 22:05:52');
INSERT INTO `products_attributes` VALUES ('619', '1', '148', 'Rojo', '2017-03-28 22:05:52', '2017-03-28 22:05:52');
INSERT INTO `products_attributes` VALUES ('620', '14', '149', '3.5', '2017-03-28 22:06:19', '2017-03-28 22:06:19');
INSERT INTO `products_attributes` VALUES ('621', '1', '149', 'Blanco', '2017-03-28 22:06:19', '2017-03-28 22:06:19');
INSERT INTO `products_attributes` VALUES ('622', '14', '150', '3.5', '2017-03-28 22:06:48', '2017-03-28 22:06:48');
INSERT INTO `products_attributes` VALUES ('623', '1', '150', 'Naranja', '2017-03-28 22:06:48', '2017-03-28 22:06:48');
INSERT INTO `products_attributes` VALUES ('624', '14', '151', '3.5', '2017-03-28 22:08:11', '2017-03-28 22:08:11');
INSERT INTO `products_attributes` VALUES ('625', '1', '151', 'Negro con Dorado', '2017-03-28 22:08:11', '2017-03-28 22:08:11');
INSERT INTO `products_attributes` VALUES ('626', '14', '152', '3.5', '2017-03-28 22:09:49', '2017-03-28 22:09:49');
INSERT INTO `products_attributes` VALUES ('627', '1', '152', 'Azul', '2017-03-28 22:09:49', '2017-03-28 22:09:49');
INSERT INTO `products_attributes` VALUES ('628', '14', '153', '3.5', '2017-03-28 22:11:02', '2017-03-28 22:11:02');
INSERT INTO `products_attributes` VALUES ('629', '1', '153', 'Blanco', '2017-03-28 22:11:02', '2017-03-28 22:11:02');
INSERT INTO `products_attributes` VALUES ('630', '14', '154', '3.5', '2017-03-28 22:14:39', '2017-03-28 22:14:39');
INSERT INTO `products_attributes` VALUES ('631', '1', '154', 'Verde', '2017-03-28 22:14:39', '2017-03-28 22:14:39');
INSERT INTO `products_attributes` VALUES ('632', '14', '155', '3.5', '2017-03-28 22:15:06', '2017-03-28 22:15:06');
INSERT INTO `products_attributes` VALUES ('633', '1', '155', 'Azul', '2017-03-28 22:15:06', '2017-03-28 22:15:06');
INSERT INTO `products_attributes` VALUES ('636', '14', '157', '3.5', '2017-03-28 22:17:08', '2017-03-28 22:17:08');
INSERT INTO `products_attributes` VALUES ('637', '1', '157', 'Negro', '2017-03-28 22:17:08', '2017-03-28 22:17:08');
INSERT INTO `products_attributes` VALUES ('638', '14', '158', '3.5', '2017-03-28 22:18:29', '2017-03-28 22:18:29');
INSERT INTO `products_attributes` VALUES ('639', '1', '158', 'Rojo', '2017-03-28 22:18:29', '2017-03-28 22:18:29');
INSERT INTO `products_attributes` VALUES ('640', '14', '159', '3.5', '2017-03-28 22:19:06', '2017-03-28 22:19:06');
INSERT INTO `products_attributes` VALUES ('641', '14', '160', '3.5', '2017-03-28 22:20:58', '2017-03-28 22:20:58');
INSERT INTO `products_attributes` VALUES ('642', '1', '160', 'Rosado', '2017-03-28 22:20:58', '2017-03-28 22:20:58');
INSERT INTO `products_attributes` VALUES ('643', '14', '161', '3.5', '2017-03-28 22:21:47', '2017-03-28 22:21:47');
INSERT INTO `products_attributes` VALUES ('644', '1', '161', 'Gris Plateado', '2017-03-28 22:21:47', '2017-03-28 22:21:47');
INSERT INTO `products_attributes` VALUES ('645', '14', '162', '3.5', '2017-03-28 22:23:29', '2017-03-28 22:23:29');
INSERT INTO `products_attributes` VALUES ('646', '1', '162', 'Rojo con Amarillo', '2017-03-28 22:23:29', '2017-03-28 22:23:29');
INSERT INTO `products_attributes` VALUES ('647', '14', '163', '3.5', '2017-03-28 22:25:54', '2017-03-28 22:25:54');
INSERT INTO `products_attributes` VALUES ('648', '1', '163', 'Blanco con Negro', '2017-03-28 22:25:54', '2017-03-28 22:25:54');
INSERT INTO `products_attributes` VALUES ('649', '14', '164', '3.5', '2017-03-28 22:27:10', '2017-03-28 22:27:10');
INSERT INTO `products_attributes` VALUES ('650', '1', '164', 'Negro con Ocre', '2017-03-28 22:27:10', '2017-03-28 22:27:10');
INSERT INTO `products_attributes` VALUES ('651', '14', '165', '3.5', '2017-03-28 22:28:25', '2017-03-28 22:28:25');
INSERT INTO `products_attributes` VALUES ('652', '1', '165', 'Azul con Amarillo', '2017-03-28 22:28:25', '2017-03-28 22:28:25');
INSERT INTO `products_attributes` VALUES ('653', '14', '166', '3.5', '2017-03-28 22:29:18', '2017-03-28 22:29:18');
INSERT INTO `products_attributes` VALUES ('654', '1', '166', 'Blanco', '2017-03-28 22:29:18', '2017-03-28 22:29:18');
INSERT INTO `products_attributes` VALUES ('655', '14', '167', '3.5', '2017-03-28 22:30:37', '2017-03-28 22:30:37');
INSERT INTO `products_attributes` VALUES ('656', '1', '167', 'Azul', '2017-03-28 22:30:37', '2017-03-28 22:30:37');
INSERT INTO `products_attributes` VALUES ('657', '14', '168', '3.5', '2017-03-28 22:30:57', '2017-03-28 22:30:57');
INSERT INTO `products_attributes` VALUES ('658', '1', '168', 'Morado', '2017-03-28 22:30:57', '2017-03-28 22:30:57');
INSERT INTO `products_attributes` VALUES ('662', '14', '172', '3.5', '2017-03-28 22:58:44', '2017-03-28 22:58:44');
INSERT INTO `products_attributes` VALUES ('663', '1', '173', 'Blanco', '2017-04-02 22:40:55', '2017-04-02 22:40:55');
INSERT INTO `products_attributes` VALUES ('664', '14', '173', '3.5', '2017-04-02 22:40:55', '2017-04-02 22:40:55');
INSERT INTO `products_attributes` VALUES ('665', '14', '174', '3.5', '2017-04-02 22:41:39', '2017-04-02 22:41:39');
INSERT INTO `products_attributes` VALUES ('666', '1', '174', 'Morado', '2017-04-02 22:41:39', '2017-04-02 22:41:39');
INSERT INTO `products_attributes` VALUES ('667', '14', '175', '3.5', '2017-04-02 22:41:59', '2017-04-02 22:41:59');
INSERT INTO `products_attributes` VALUES ('668', '1', '175', 'Negro', '2017-04-02 22:41:59', '2017-04-02 22:41:59');
INSERT INTO `products_attributes` VALUES ('669', '14', '176', '3.5', '2017-04-02 22:43:42', '2017-04-02 22:43:42');
INSERT INTO `products_attributes` VALUES ('670', '1', '176', 'Amarillo con Rojo', '2017-04-02 22:43:42', '2017-04-02 22:43:42');
INSERT INTO `products_attributes` VALUES ('671', '14', '177', '3.5', '2017-04-02 22:46:20', '2017-04-02 22:46:20');
INSERT INTO `products_attributes` VALUES ('672', '1', '177', 'Negro', '2017-04-02 22:46:20', '2017-04-02 22:46:20');
INSERT INTO `products_attributes` VALUES ('673', '14', '178', '3.5', '2017-04-02 22:47:18', '2017-04-02 22:47:18');
INSERT INTO `products_attributes` VALUES ('674', '1', '178', 'Negro con Verde', '2017-04-02 22:47:18', '2017-04-02 22:47:18');
INSERT INTO `products_attributes` VALUES ('675', '14', '179', '3.5', '2017-04-02 22:53:47', '2017-04-02 22:53:47');
INSERT INTO `products_attributes` VALUES ('676', '1', '179', 'Negro', '2017-04-02 22:53:47', '2017-04-02 22:53:47');
INSERT INTO `products_attributes` VALUES ('677', '32', '179', 'FM', '2017-04-02 22:53:47', '2017-04-02 22:53:47');
INSERT INTO `products_attributes` VALUES ('678', '1', '180', 'Verde', '2017-04-02 23:00:06', '2017-04-02 23:00:06');
INSERT INTO `products_attributes` VALUES ('679', '30', '180', '2.0', '2017-04-02 23:00:06', '2017-04-02 23:00:06');
INSERT INTO `products_attributes` VALUES ('680', '32', '180', 'FM', '2017-04-02 23:00:06', '2017-04-02 23:00:06');
INSERT INTO `products_attributes` VALUES ('681', '30', '181', '2.0', '2017-04-02 23:03:36', '2017-04-02 23:03:36');
INSERT INTO `products_attributes` VALUES ('682', '32', '181', 'FM', '2017-04-02 23:03:36', '2017-04-02 23:03:36');
INSERT INTO `products_attributes` VALUES ('683', '1', '181', 'Blanco', '2017-04-02 23:03:36', '2017-04-02 23:03:36');
INSERT INTO `products_attributes` VALUES ('684', '30', '182', '2.0', '2017-04-02 23:04:38', '2017-04-02 23:04:38');
INSERT INTO `products_attributes` VALUES ('685', '32', '182', 'FM', '2017-04-02 23:04:38', '2017-04-02 23:04:38');
INSERT INTO `products_attributes` VALUES ('686', '1', '182', 'Gris', '2017-04-02 23:04:38', '2017-04-02 23:04:38');
INSERT INTO `products_attributes` VALUES ('687', '30', '183', '2.0', '2017-04-02 23:05:39', '2017-04-02 23:05:39');
INSERT INTO `products_attributes` VALUES ('688', '32', '183', 'FM', '2017-04-02 23:05:39', '2017-04-02 23:05:39');
INSERT INTO `products_attributes` VALUES ('689', '1', '183', 'Naranja', '2017-04-02 23:05:39', '2017-04-02 23:05:39');
INSERT INTO `products_attributes` VALUES ('693', '30', '185', '2.0', '2017-04-02 23:08:10', '2017-04-02 23:08:10');
INSERT INTO `products_attributes` VALUES ('694', '32', '185', 'FM', '2017-04-02 23:08:10', '2017-04-02 23:08:10');
INSERT INTO `products_attributes` VALUES ('695', '1', '185', 'Azul con Blanco', '2017-04-02 23:08:10', '2017-04-02 23:08:10');
INSERT INTO `products_attributes` VALUES ('696', '30', '186', '2.0', '2017-04-02 23:09:41', '2017-04-02 23:09:41');
INSERT INTO `products_attributes` VALUES ('697', '32', '186', 'FM', '2017-04-02 23:09:41', '2017-04-02 23:09:41');
INSERT INTO `products_attributes` VALUES ('698', '1', '186', 'Verde', '2017-04-02 23:09:41', '2017-04-02 23:09:41');
INSERT INTO `products_attributes` VALUES ('699', '30', '187', '2.0', '2017-04-02 23:10:20', '2017-04-02 23:10:20');
INSERT INTO `products_attributes` VALUES ('700', '32', '187', 'FM', '2017-04-02 23:10:20', '2017-04-02 23:10:20');
INSERT INTO `products_attributes` VALUES ('701', '1', '187', 'Azul', '2017-04-02 23:10:20', '2017-04-02 23:10:20');
INSERT INTO `products_attributes` VALUES ('702', '30', '188', '2.0', '2017-04-02 23:11:55', '2017-04-02 23:11:55');
INSERT INTO `products_attributes` VALUES ('703', '32', '188', 'FM', '2017-04-02 23:11:55', '2017-04-02 23:11:55');
INSERT INTO `products_attributes` VALUES ('704', '1', '188', 'Fucsia', '2017-04-02 23:11:55', '2017-04-02 23:11:55');
INSERT INTO `products_attributes` VALUES ('705', '30', '189', '2.0', '2017-04-02 23:12:37', '2017-04-02 23:12:37');
INSERT INTO `products_attributes` VALUES ('706', '32', '189', 'FM', '2017-04-02 23:12:37', '2017-04-02 23:12:37');
INSERT INTO `products_attributes` VALUES ('707', '1', '189', 'Morado', '2017-04-02 23:12:37', '2017-04-02 23:12:37');
INSERT INTO `products_attributes` VALUES ('708', '1', '190', 'Negro', '2017-04-02 23:14:46', '2017-04-02 23:14:46');
INSERT INTO `products_attributes` VALUES ('709', '14', '190', '3.5', '2017-04-02 23:14:46', '2017-04-02 23:14:46');
INSERT INTO `products_attributes` VALUES ('710', '14', '191', '3.5', '2017-04-02 23:16:29', '2017-04-02 23:16:29');
INSERT INTO `products_attributes` VALUES ('711', '14', '192', '3.5', '2017-04-02 23:17:53', '2017-04-02 23:17:53');
INSERT INTO `products_attributes` VALUES ('712', '1', '192', 'Azul', '2017-04-02 23:17:53', '2017-04-02 23:17:53');
INSERT INTO `products_attributes` VALUES ('713', '14', '193', '3.5', '2017-04-02 23:18:40', '2017-04-02 23:18:40');
INSERT INTO `products_attributes` VALUES ('714', '1', '193', 'Blanco', '2017-04-02 23:18:40', '2017-04-02 23:18:40');
INSERT INTO `products_attributes` VALUES ('715', '1', '194', 'Verde', '2017-04-02 23:22:50', '2017-04-02 23:22:50');
INSERT INTO `products_attributes` VALUES ('716', '30', '194', '2.0', '2017-04-02 23:22:50', '2017-04-02 23:22:50');
INSERT INTO `products_attributes` VALUES ('717', '30', '195', '2.0', '2017-04-02 23:24:06', '2017-04-02 23:24:06');
INSERT INTO `products_attributes` VALUES ('718', '1', '195', 'Rojo con Blanco', '2017-04-02 23:24:06', '2017-04-02 23:24:06');
INSERT INTO `products_attributes` VALUES ('721', '1', '197', 'Azul', '2017-04-02 23:30:48', '2017-04-02 23:30:48');
INSERT INTO `products_attributes` VALUES ('722', '32', '197', 'FM', '2017-04-02 23:30:48', '2017-04-02 23:30:48');
INSERT INTO `products_attributes` VALUES ('723', '32', '198', 'FM', '2017-04-02 23:33:18', '2017-04-02 23:33:18');
INSERT INTO `products_attributes` VALUES ('724', '1', '198', 'Negro', '2017-04-02 23:33:18', '2017-04-02 23:33:18');
INSERT INTO `products_attributes` VALUES ('726', '28', '199', 'prueba', '2017-04-23 21:15:12', '2017-04-23 21:15:12');
INSERT INTO `products_attributes` VALUES ('751', '1', '200', 'Gris Oscuro', '2017-06-28 13:44:37', '2017-06-28 13:44:37');
INSERT INTO `products_attributes` VALUES ('752', '19', '200', '32GB', '2017-06-28 13:44:37', '2017-06-28 13:44:37');
INSERT INTO `products_attributes` VALUES ('753', '3', '200', '12MP', '2017-06-28 13:44:37', '2017-06-28 13:44:37');
INSERT INTO `products_attributes` VALUES ('754', '9', '200', '5MP', '2017-06-28 13:44:37', '2017-06-28 13:44:37');
INSERT INTO `products_attributes` VALUES ('755', '25', '200', '3000mAh', '2017-06-28 13:44:37', '2017-06-28 13:44:37');
INSERT INTO `products_attributes` VALUES ('756', '5', '200', 'Octa-Core 2,0 GHz', '2017-06-28 13:44:37', '2017-06-28 13:44:37');
INSERT INTO `products_attributes` VALUES ('806', '20', '80', 'GSM/HSPA/LTE', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('807', '21', '80', '', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('808', '22', '80', '126g(4.44oz)', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('809', '10', '80', '4.0', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('810', '12', '80', 'Android OS, v5.1 (Lollipop)', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('811', '23', '80', 'Spreadtrum SC9830', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('812', '5', '80', 'Quad-core 1.5 GHz', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('813', '24', '80', 'Mali-400MP2', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('814', '6', '80', '8GB', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('815', '8', '80', '1GB', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('816', '3', '80', '5MP', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('817', '9', '80', 'VGA', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('818', '25', '80', 'Removible Li-Ion 1500 mAh', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('819', '1', '80', 'Negro', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('820', '2', '80', 'Compatible', '2017-06-28 14:26:30', '2017-06-28 14:26:30');
INSERT INTO `products_attributes` VALUES ('821', '1', '201', 'Plateado', '2017-08-01 10:13:45', '2017-08-01 10:13:45');
INSERT INTO `products_attributes` VALUES ('822', '19', '201', '64GB', '2017-08-01 10:13:45', '2017-08-01 10:13:45');
INSERT INTO `products_attributes` VALUES ('823', '9', '201', '13MP', '2017-08-01 10:13:45', '2017-08-01 10:13:45');
INSERT INTO `products_attributes` VALUES ('824', '21', '201', 'LTE', '2017-08-01 10:13:45', '2017-08-01 10:13:45');
INSERT INTO `products_attributes` VALUES ('840', '20', '78', 'GSM/HSPA/LTE', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('841', '21', '78', '4(1700/2100)', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('842', '22', '78', '131g(4.62oz)', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('843', '10', '78', '4.5', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('844', '12', '78', 'Android OS, v5.1.1 (Lollipop)', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('845', '23', '78', 'Spreadtrum SC9830', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('846', '5', '78', 'Quad-core 1.3 GHz Cortex-A7', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('847', '24', '78', 'Mali-400', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('848', '6', '78', '8GB', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('849', '8', '78', '1GB', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('850', '3', '78', '5MP', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('851', '9', '78', '2MP', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('852', '25', '78', 'Removible Li-Ion 2050 mAh', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('853', '1', '78', 'Blanco', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('854', '2', '78', 'Compatible', '2017-08-02 09:05:14', '2017-08-02 09:05:14');
INSERT INTO `products_attributes` VALUES ('855', '30', '196', '2.0', '2017-08-02 13:12:53', '2017-08-02 13:12:53');
INSERT INTO `products_attributes` VALUES ('856', '1', '196', 'Morado', '2017-08-02 13:12:53', '2017-08-02 13:12:53');
INSERT INTO `products_attributes` VALUES ('857', '30', '184', '2.0', '2017-08-02 13:16:34', '2017-08-02 13:16:34');
INSERT INTO `products_attributes` VALUES ('858', '32', '184', 'FM', '2017-08-02 13:16:34', '2017-08-02 13:16:34');
INSERT INTO `products_attributes` VALUES ('859', '1', '184', 'Verde', '2017-08-02 13:16:34', '2017-08-02 13:16:34');
INSERT INTO `products_attributes` VALUES ('860', '1', '15', 'Negro', '2017-08-02 13:17:28', '2017-08-02 13:17:28');
INSERT INTO `products_attributes` VALUES ('861', '2', '15', 'Compatible', '2017-08-02 13:17:28', '2017-08-02 13:17:28');
INSERT INTO `products_attributes` VALUES ('862', '3', '15', 'VGA', '2017-08-02 13:17:28', '2017-08-02 13:17:28');
INSERT INTO `products_attributes` VALUES ('863', '4', '15', 'Si', '2017-08-02 13:17:28', '2017-08-02 13:17:28');
INSERT INTO `products_attributes` VALUES ('872', '2', '16', 'Compatible', '2017-08-02 13:30:41', '2017-08-02 13:30:41');
INSERT INTO `products_attributes` VALUES ('873', '1', '16', 'Blanco', '2017-08-02 13:30:41', '2017-08-02 13:30:41');
INSERT INTO `products_attributes` VALUES ('874', '3', '16', 'VGA', '2017-08-02 13:30:41', '2017-08-02 13:30:41');
INSERT INTO `products_attributes` VALUES ('875', '4', '16', 'Si', '2017-08-02 13:30:41', '2017-08-02 13:30:41');
INSERT INTO `products_attributes` VALUES ('900', '1', '27', 'Dorado', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `products_attributes` VALUES ('901', '7', '27', '2G/3G/4G', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `products_attributes` VALUES ('902', '3', '27', '13MP', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `products_attributes` VALUES ('903', '2', '27', 'Compatible', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `products_attributes` VALUES ('904', '6', '27', '16GB', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `products_attributes` VALUES ('905', '4', '27', 'Si', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `products_attributes` VALUES ('906', '11', '27', 'hasta 256GB usa slot de sim 2', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `products_attributes` VALUES ('907', '9', '27', '8MP', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `products_attributes` VALUES ('908', '8', '27', '3GB', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `products_attributes` VALUES ('909', '5', '27', 'Octa-Core 4x2.0GHz & 4x1.7GHz', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `products_attributes` VALUES ('910', '12', '27', 'Android 6.0 Marshmallow', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `products_attributes` VALUES ('911', '10', '27', '5.2 pulgadas', '2017-08-02 14:06:37', '2017-08-02 14:06:37');
INSERT INTO `products_attributes` VALUES ('912', '16', '53', 'Silicona', '2017-08-02 14:09:04', '2017-08-02 14:09:04');
INSERT INTO `products_attributes` VALUES ('913', '17', '53', 'Normal', '2017-08-02 14:09:04', '2017-08-02 14:09:04');
INSERT INTO `products_attributes` VALUES ('914', '1', '53', 'Negro', '2017-08-02 14:09:04', '2017-08-02 14:09:04');
INSERT INTO `products_attributes` VALUES ('915', '16', '52', 'Silicona', '2017-08-02 14:09:58', '2017-08-02 14:09:58');
INSERT INTO `products_attributes` VALUES ('916', '17', '52', 'Normal', '2017-08-02 14:09:58', '2017-08-02 14:09:58');
INSERT INTO `products_attributes` VALUES ('917', '1', '52', 'Negro', '2017-08-02 14:09:58', '2017-08-02 14:09:58');
INSERT INTO `products_attributes` VALUES ('920', '14', '156', '3.5', '2017-08-02 14:13:44', '2017-08-02 14:13:44');
INSERT INTO `products_attributes` VALUES ('921', '1', '156', 'Fucsia', '2017-08-02 14:13:44', '2017-08-02 14:13:44');
INSERT INTO `products_attributes` VALUES ('929', '3', '87', '13MP', '2017-08-02 14:22:49', '2017-08-02 14:22:49');
INSERT INTO `products_attributes` VALUES ('930', '10', '87', '5.2\"', '2017-08-02 14:22:49', '2017-08-02 14:22:49');
INSERT INTO `products_attributes` VALUES ('931', '19', '87', '16GB', '2017-08-02 14:22:49', '2017-08-02 14:22:49');
INSERT INTO `products_attributes` VALUES ('932', '9', '87', '5MP', '2017-08-02 14:22:49', '2017-08-02 14:22:49');
INSERT INTO `products_attributes` VALUES ('933', '4', '87', 'Flash Frontal', '2017-08-02 14:22:49', '2017-08-02 14:22:49');
INSERT INTO `products_attributes` VALUES ('934', '5', '87', 'Quad-Core 1.2GHz', '2017-08-02 14:22:49', '2017-08-02 14:22:49');
INSERT INTO `products_attributes` VALUES ('935', '21', '87', 'LTE Cat4', '2017-08-02 14:22:49', '2017-08-02 14:22:49');
INSERT INTO `products_attributes` VALUES ('936', '9', '86', '8MP', '2017-08-02 14:27:22', '2017-08-02 14:27:22');
INSERT INTO `products_attributes` VALUES ('937', '3', '86', '13MP', '2017-08-02 14:27:22', '2017-08-02 14:27:22');
INSERT INTO `products_attributes` VALUES ('938', '10', '86', '5.5\"', '2017-08-02 14:27:22', '2017-08-02 14:27:22');
INSERT INTO `products_attributes` VALUES ('939', '5', '86', 'Octa-Core 1.6GHz', '2017-08-02 14:27:22', '2017-08-02 14:27:22');
INSERT INTO `products_attributes` VALUES ('940', '19', '86', '16GB', '2017-08-02 14:27:22', '2017-08-02 14:27:22');
INSERT INTO `products_attributes` VALUES ('941', '29', '86', 'Escáner de Huella', '2017-08-02 14:27:22', '2017-08-02 14:27:22');
INSERT INTO `products_attributes` VALUES ('942', '20', '71', 'GSM/HSPA/LTE', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('943', '21', '71', '', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('944', '22', '71', '143g(5.04oz)', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('945', '10', '71', '5.0', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('946', '12', '71', 'Android OS, v6.0.1 (Marshmallow)', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('947', '23', '71', 'Exynos 7570 Quad', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('948', '5', '71', 'Quad-core 1.4 GHz Cortex-A53', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('949', '24', '71', 'Mali-T720', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('950', '6', '71', '16GB', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('951', '8', '71', '2GB', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('952', '3', '71', '13MP', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('953', '9', '71', '5MP', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('954', '25', '71', 'No-Removible Li-Ion 2400 mAh', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('955', '1', '71', 'Negro', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('956', '2', '71', 'Compatible', '2017-08-02 14:30:30', '2017-08-02 14:30:30');
INSERT INTO `products_attributes` VALUES ('957', '20', '67', 'GSM/HSPA/LTE', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('958', '21', '67', '4(1700/2100)', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('959', '22', '67', '160g(5.64oz)', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('960', '10', '67', '5.0', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('961', '12', '67', 'Android OS, v6.0 (Marshmallow)', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('962', '23', '67', 'Mediatek MT6737T', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('963', '5', '67', 'Quad-core 1.4 GHz Cortex-A53', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('964', '24', '67', 'Mali-T720MP2', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('965', '6', '67', '8GB', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('966', '8', '67', '1.5GB', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('967', '3', '67', '8MP', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('968', '9', '67', '5MP', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('969', '25', '67', 'Removible Li-Ion 2600 mAh', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('970', '1', '67', 'Gris', '2017-08-02 14:33:23', '2017-08-02 14:33:23');
INSERT INTO `products_attributes` VALUES ('971', '20', '66', 'GSM/HSPA/LTE', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('972', '21', '66', '4(1700/2100)', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('973', '22', '66', '160g(5.64oz)', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('974', '10', '66', '5.0', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('975', '12', '66', 'Android OS, v6.0 (Marshmallow)', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('976', '23', '66', 'Mediatek MT6737T', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('977', '5', '66', 'Quad-core 1.4 GHz Cortex-A53', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('978', '24', '66', 'Mali-T720MP2', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('979', '6', '66', '8GB', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('980', '8', '66', '1.5GB', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('981', '3', '66', '8MP', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('982', '9', '66', '5MP', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('983', '25', '66', 'Removible Li-Ion 2600 mAh', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('984', '1', '66', 'Negro', '2017-08-02 14:35:12', '2017-08-02 14:35:12');
INSERT INTO `products_attributes` VALUES ('985', '20', '65', 'GSM/HSPA/LTE', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('986', '21', '65', '4(1700/2100)', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('987', '22', '65', '160g(5.64oz)', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('988', '10', '65', '5.0', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('989', '12', '65', 'Android OS, v6.0 (Marshmallow)', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('990', '23', '65', 'Mediatek MT6737T', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('991', '5', '65', 'Quad-core 1.4 GHz Cortex-A53', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('992', '24', '65', 'Mali-T720MP2', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('993', '6', '65', '8GB', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('994', '8', '65', '1.5GB', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('995', '3', '65', '8MP', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('996', '9', '65', '5MP', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('997', '25', '65', 'Removible Li-Ion 2600 mAh', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('998', '1', '65', 'Dorado', '2017-08-02 14:36:45', '2017-08-02 14:36:45');
INSERT INTO `products_attributes` VALUES ('999', '14', '202', 'conector de audio', '2017-08-02 14:52:27', '2017-08-02 14:52:27');
INSERT INTO `products_attributes` VALUES ('1000', '16', '203', 'Silicona', '2017-08-08 13:00:56', '2017-08-08 13:00:56');
INSERT INTO `products_attributes` VALUES ('1001', '1', '203', 'Azul ', '2017-08-08 13:00:56', '2017-08-08 13:00:56');
INSERT INTO `products_attributes` VALUES ('1002', '16', '204', 'Silicona', '2017-08-08 13:03:37', '2017-08-08 13:03:37');
INSERT INTO `products_attributes` VALUES ('1003', '1', '204', 'Azul ', '2017-08-08 13:03:37', '2017-08-08 13:03:37');
INSERT INTO `products_attributes` VALUES ('1004', '17', '204', 'Anti choques ', '2017-08-08 13:03:37', '2017-08-08 13:03:37');
INSERT INTO `products_attributes` VALUES ('1007', '16', '206', 'Goma', '2017-08-08 13:29:06', '2017-08-08 13:29:06');
INSERT INTO `products_attributes` VALUES ('1008', '1', '206', 'Azul', '2017-08-08 13:29:06', '2017-08-08 13:29:06');
INSERT INTO `products_attributes` VALUES ('1009', '16', '205', 'Goma', '2017-08-08 13:29:29', '2017-08-08 13:29:29');
INSERT INTO `products_attributes` VALUES ('1010', '1', '205', 'Blanco, Morado, Rosado, Amarillo, Verde y Negro', '2017-08-08 13:29:29', '2017-08-08 13:29:29');
INSERT INTO `products_attributes` VALUES ('1011', '16', '207', 'Silicona', '2017-08-08 13:33:35', '2017-08-08 13:33:35');
INSERT INTO `products_attributes` VALUES ('1012', '1', '207', 'Gris Ahumado', '2017-08-08 13:33:35', '2017-08-08 13:33:35');
INSERT INTO `products_attributes` VALUES ('1013', '16', '208', 'Silicona', '2017-08-08 13:37:10', '2017-08-08 13:37:10');
INSERT INTO `products_attributes` VALUES ('1014', '1', '208', 'Gris/Dorado', '2017-08-08 13:37:10', '2017-08-08 13:37:10');
INSERT INTO `products_attributes` VALUES ('1015', '16', '209', 'Silicona', '2017-08-08 14:51:18', '2017-08-08 14:51:18');
INSERT INTO `products_attributes` VALUES ('1016', '1', '209', 'Azul', '2017-08-08 14:51:18', '2017-08-08 14:51:18');
INSERT INTO `products_attributes` VALUES ('1017', '16', '210', 'Silicona/Goma', '2017-08-08 14:57:20', '2017-08-08 14:57:20');
INSERT INTO `products_attributes` VALUES ('1018', '1', '210', 'Negro', '2017-08-08 14:57:20', '2017-08-08 14:57:20');
INSERT INTO `products_attributes` VALUES ('1019', '16', '211', 'Silicona/Goma', '2017-08-08 15:04:56', '2017-08-08 15:04:56');
INSERT INTO `products_attributes` VALUES ('1020', '1', '211', 'Morado, Amarillo, Rosado, Verde y Azul', '2017-08-08 15:04:56', '2017-08-08 15:04:56');
INSERT INTO `products_attributes` VALUES ('1021', '16', '212', 'silicona/Goma', '2017-08-08 15:14:01', '2017-08-08 15:14:01');
INSERT INTO `products_attributes` VALUES ('1022', '1', '212', 'Rojo', '2017-08-08 15:14:01', '2017-08-08 15:14:01');
INSERT INTO `products_attributes` VALUES ('1023', '16', '213', 'Goma', '2017-08-08 15:50:26', '2017-08-08 15:50:26');
INSERT INTO `products_attributes` VALUES ('1024', '1', '213', 'Varios', '2017-08-08 15:50:26', '2017-08-08 15:50:26');
INSERT INTO `products_attributes` VALUES ('1025', '16', '214', 'silicona corrugada', '2017-08-08 15:56:37', '2017-08-08 15:56:37');
INSERT INTO `products_attributes` VALUES ('1026', '1', '214', 'Gris Oscuro', '2017-08-08 15:56:37', '2017-08-08 15:56:37');
INSERT INTO `products_attributes` VALUES ('1027', '16', '215', 'Silicona corrugada', '2017-08-08 16:02:36', '2017-08-08 16:02:36');
INSERT INTO `products_attributes` VALUES ('1028', '1', '215', 'Gris Claro', '2017-08-08 16:02:36', '2017-08-08 16:02:36');
INSERT INTO `products_attributes` VALUES ('1029', '16', '216', 'Silicona/Goma', '2017-08-08 16:11:50', '2017-08-08 16:11:50');
INSERT INTO `products_attributes` VALUES ('1030', '1', '216', 'Dorado', '2017-08-08 16:11:50', '2017-08-08 16:11:50');
INSERT INTO `products_attributes` VALUES ('1031', '16', '217', 'Silicona/Goma', '2017-08-08 16:16:53', '2017-08-08 16:16:53');
INSERT INTO `products_attributes` VALUES ('1032', '1', '217', 'Rosa, morado, blanco y negro', '2017-08-08 16:16:53', '2017-08-08 16:16:53');
INSERT INTO `products_attributes` VALUES ('1033', '16', '218', 'Silicona/Goma', '2017-08-08 16:19:28', '2017-08-08 16:19:28');
INSERT INTO `products_attributes` VALUES ('1034', '1', '218', 'Varios', '2017-08-08 16:19:28', '2017-08-08 16:19:28');
INSERT INTO `products_attributes` VALUES ('1035', '16', '219', 'Goma', '2017-08-08 16:24:39', '2017-08-08 16:24:39');
INSERT INTO `products_attributes` VALUES ('1036', '1', '219', 'Azul', '2017-08-08 16:24:39', '2017-08-08 16:24:39');
INSERT INTO `products_attributes` VALUES ('1037', '16', '220', 'Silicona/Goma', '2017-08-08 16:29:56', '2017-08-08 16:29:56');
INSERT INTO `products_attributes` VALUES ('1038', '1', '220', 'Gris', '2017-08-08 16:29:56', '2017-08-08 16:29:56');
INSERT INTO `products_attributes` VALUES ('1039', '30', '221', 'De carro', '2017-08-14 16:51:13', '2017-08-14 16:51:13');
INSERT INTO `products_attributes` VALUES ('1040', '14', '222', 'Mixto', '2017-08-14 16:59:15', '2017-08-14 16:59:15');
INSERT INTO `products_attributes` VALUES ('1041', '19', '223', 'Amplia', '2017-08-14 17:22:03', '2017-08-14 17:22:03');
INSERT INTO `products_attributes` VALUES ('1042', '19', '224', '2600 mAh', '2017-08-14 17:29:25', '2017-08-14 17:29:25');
INSERT INTO `products_attributes` VALUES ('1043', '14', '225', 'USB & OTG', '2017-08-14 17:44:43', '2017-08-14 17:44:43');
INSERT INTO `products_attributes` VALUES ('1044', '19', '226', 'Covertura total de la pantalla', '2017-08-14 17:55:57', '2017-08-14 17:55:57');
INSERT INTO `products_attributes` VALUES ('1045', '19', '227', '50000 mAh', '2017-08-14 18:04:47', '2017-08-14 18:04:47');
INSERT INTO `products_attributes` VALUES ('1046', '16', '228', 'Silinoca', '2017-08-14 18:15:08', '2017-08-14 18:15:08');
INSERT INTO `products_attributes` VALUES ('1047', '1', '228', 'Gris&azul', '2017-08-14 18:15:08', '2017-08-14 18:15:08');
INSERT INTO `products_attributes` VALUES ('1048', '18', '229', '5 mp', '2017-08-21 14:43:30', '2017-08-21 14:43:30');
INSERT INTO `products_attributes` VALUES ('1049', '7', '229', 'todas', '2017-08-21 14:43:30', '2017-08-21 14:43:30');
INSERT INTO `products_attributes` VALUES ('1050', '25', '229', '1300mah', '2017-08-21 14:43:30', '2017-08-21 14:43:30');
INSERT INTO `products_attributes` VALUES ('1051', '30', '229', 'si', '2017-08-21 14:43:30', '2017-08-21 14:43:30');
INSERT INTO `products_attributes` VALUES ('1052', '9', '229', '2 mp', '2017-08-21 14:43:30', '2017-08-21 14:43:30');
INSERT INTO `products_attributes` VALUES ('1053', '1', '229', 'negro', '2017-08-21 14:43:30', '2017-08-21 14:43:30');
INSERT INTO `products_attributes` VALUES ('1054', '7', '230', '4g lte', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `products_attributes` VALUES ('1055', '30', '230', 'si', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `products_attributes` VALUES ('1056', '18', '230', '5 mp', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `products_attributes` VALUES ('1057', '9', '230', '2 mp', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `products_attributes` VALUES ('1058', '19', '230', '16 gb', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `products_attributes` VALUES ('1059', '4', '230', 'si', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `products_attributes` VALUES ('1060', '6', '230', '16 gb', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `products_attributes` VALUES ('1061', '26', '230', '5\'\'', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `products_attributes` VALUES ('1062', '7', '231', '4g lte', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `products_attributes` VALUES ('1063', '30', '231', 'si', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `products_attributes` VALUES ('1064', '18', '231', '8mp', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `products_attributes` VALUES ('1065', '9', '231', '5mp', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `products_attributes` VALUES ('1066', '19', '231', '16gb', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `products_attributes` VALUES ('1067', '1', '231', 'negro', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `products_attributes` VALUES ('1068', '5', '231', '2 gb', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `products_attributes` VALUES ('1069', '4', '231', 'si', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `products_attributes` VALUES ('1070', '21', '232', '4g lte', '2017-08-21 15:07:26', '2017-08-21 15:07:26');
INSERT INTO `products_attributes` VALUES ('1071', '6', '232', '128gb', '2017-08-21 15:07:26', '2017-08-21 15:07:26');
INSERT INTO `products_attributes` VALUES ('1072', '27', '232', '5.5\'\'', '2017-08-21 15:07:26', '2017-08-21 15:07:26');
INSERT INTO `products_attributes` VALUES ('1073', '21', '233', '4g lte', '2017-08-21 15:20:39', '2017-08-21 15:20:39');
INSERT INTO `products_attributes` VALUES ('1074', '30', '233', 'si', '2017-08-21 15:20:39', '2017-08-21 15:20:39');
INSERT INTO `products_attributes` VALUES ('1075', '18', '233', '13mp', '2017-08-21 15:20:39', '2017-08-21 15:20:39');
INSERT INTO `products_attributes` VALUES ('1076', '9', '233', '2mp', '2017-08-21 15:20:39', '2017-08-21 15:20:39');
INSERT INTO `products_attributes` VALUES ('1077', '6', '233', '16gb', '2017-08-21 15:20:39', '2017-08-21 15:20:39');
INSERT INTO `products_attributes` VALUES ('1078', '8', '233', '1.5gb', '2017-08-21 15:20:39', '2017-08-21 15:20:39');
INSERT INTO `products_attributes` VALUES ('1080', '1', '234', 'Negro', '2017-11-16 10:06:01', '2017-11-16 10:06:01');
INSERT INTO `products_attributes` VALUES ('1081', '1', '235', 'Dorado', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `products_attributes` VALUES ('1082', '19', '235', '32GB', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `products_attributes` VALUES ('1083', '8', '235', '3GB', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `products_attributes` VALUES ('1084', '9', '235', '8MP', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `products_attributes` VALUES ('1085', '3', '235', '12MP', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `products_attributes` VALUES ('1086', '25', '235', '4000mAh', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `products_attributes` VALUES ('1087', '29', '235', 'SI', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `products_attributes` VALUES ('1088', '10', '235', '5.5\"', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `products_attributes` VALUES ('1089', '10', '236', 'HD DE 5\"', '2017-11-16 11:09:45', '2017-11-16 11:09:45');
INSERT INTO `products_attributes` VALUES ('1090', '1', '236', 'Blanco', '2017-11-16 11:09:45', '2017-11-16 11:09:45');
INSERT INTO `products_attributes` VALUES ('1091', '9', '236', '2MP', '2017-11-16 11:09:45', '2017-11-16 11:09:45');
INSERT INTO `products_attributes` VALUES ('1092', '3', '236', '8MP', '2017-11-16 11:09:45', '2017-11-16 11:09:45');
INSERT INTO `products_attributes` VALUES ('1093', '25', '236', '2200mAh', '2017-11-16 11:09:45', '2017-11-16 11:09:45');
INSERT INTO `products_attributes` VALUES ('1094', '1', '237', 'Dorado', '2017-11-16 11:23:45', '2017-11-16 11:23:45');
INSERT INTO `products_attributes` VALUES ('1095', '10', '237', '5\"', '2017-11-16 11:23:45', '2017-11-16 11:23:45');
INSERT INTO `products_attributes` VALUES ('1096', '18', '237', '8MP', '2017-11-16 11:23:45', '2017-11-16 11:23:45');
INSERT INTO `products_attributes` VALUES ('1097', '1', '238', 'Dorado', '2017-11-16 11:40:30', '2017-11-16 11:40:30');
INSERT INTO `products_attributes` VALUES ('1098', '10', '238', '131.8mm (5.2\")', '2017-11-16 11:40:30', '2017-11-16 11:40:30');
INSERT INTO `products_attributes` VALUES ('1099', '9', '238', '5MP  Con flash', '2017-11-16 11:40:30', '2017-11-16 11:40:30');
INSERT INTO `products_attributes` VALUES ('1100', '3', '238', '13MP AF', '2017-11-16 11:40:30', '2017-11-16 11:40:30');
INSERT INTO `products_attributes` VALUES ('1101', '6', '238', '16GB', '2017-11-16 11:40:30', '2017-11-16 11:40:30');
INSERT INTO `products_attributes` VALUES ('1102', '1', '239', 'Dorado', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `products_attributes` VALUES ('1103', '3', '239', '13MP', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `products_attributes` VALUES ('1104', '9', '239', '5MP', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `products_attributes` VALUES ('1105', '29', '239', 'SI', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `products_attributes` VALUES ('1106', '16', '239', 'Metal', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `products_attributes` VALUES ('1107', '6', '239', '16GB', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `products_attributes` VALUES ('1108', '10', '239', '126.7mm', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `products_attributes` VALUES ('1109', '16', '240', 'Metal', '2017-11-16 12:34:05', '2017-11-16 12:34:05');
INSERT INTO `products_attributes` VALUES ('1110', '9', '240', '8MP', '2017-11-16 12:34:05', '2017-11-16 12:34:05');
INSERT INTO `products_attributes` VALUES ('1111', '3', '240', '13MP', '2017-11-16 12:34:05', '2017-11-16 12:34:05');
INSERT INTO `products_attributes` VALUES ('1112', '29', '240', 'SI', '2017-11-16 12:34:05', '2017-11-16 12:34:05');
INSERT INTO `products_attributes` VALUES ('1113', '6', '240', '16GB', '2017-11-16 12:34:05', '2017-11-16 12:34:05');
INSERT INTO `products_attributes` VALUES ('1114', '10', '240', '138.8mm (5,5\")FHD', '2017-11-16 12:34:05', '2017-11-16 12:34:05');
INSERT INTO `products_attributes` VALUES ('1115', '16', '241', 'Metal', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `products_attributes` VALUES ('1116', '9', '241', '13MP', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `products_attributes` VALUES ('1117', '3', '241', '13MP', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `products_attributes` VALUES ('1118', '29', '241', 'SI', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `products_attributes` VALUES ('1119', '10', '241', '131.8mm (5.2\") HD', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `products_attributes` VALUES ('1120', '1', '241', 'Dorado', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `products_attributes` VALUES ('1121', '1', '242', 'plateado', '2017-11-16 13:01:24', '2017-11-16 13:01:24');
INSERT INTO `products_attributes` VALUES ('1122', '10', '242', '5\"', '2017-11-16 13:01:24', '2017-11-16 13:01:24');
INSERT INTO `products_attributes` VALUES ('1123', '18', '242', '5MP', '2017-11-16 13:01:24', '2017-11-16 13:01:24');
INSERT INTO `products_attributes` VALUES ('1124', '25', '242', '2,5000 mAh', '2017-11-16 13:01:24', '2017-11-16 13:01:24');
INSERT INTO `products_attributes` VALUES ('1125', '1', '243', 'Negro', '2017-11-16 13:15:49', '2017-11-16 13:15:49');
INSERT INTO `products_attributes` VALUES ('1126', '10', '243', '6\"', '2017-11-16 13:15:49', '2017-11-16 13:15:49');
INSERT INTO `products_attributes` VALUES ('1127', '25', '243', '2,580mAh', '2017-11-16 13:15:49', '2017-11-16 13:15:49');
INSERT INTO `products_attributes` VALUES ('1128', '30', '243', 'SI', '2017-11-16 13:15:49', '2017-11-16 13:15:49');
INSERT INTO `products_attributes` VALUES ('1129', '18', '243', '8MP', '2017-11-16 13:15:49', '2017-11-16 13:15:49');
INSERT INTO `products_attributes` VALUES ('1130', '1', '244', 'negro', '2017-11-16 13:31:22', '2017-11-16 13:31:22');
INSERT INTO `products_attributes` VALUES ('1131', '6', '244', '8MP', '2017-11-16 13:31:22', '2017-11-16 13:31:22');
INSERT INTO `products_attributes` VALUES ('1132', '10', '244', '4.5\"', '2017-11-16 13:31:22', '2017-11-16 13:31:22');
INSERT INTO `products_attributes` VALUES ('1133', '18', '244', '5MP', '2017-11-16 13:31:22', '2017-11-16 13:31:22');
INSERT INTO `products_attributes` VALUES ('1134', '30', '244', 'SI', '2017-11-16 13:31:22', '2017-11-16 13:31:22');
INSERT INTO `products_attributes` VALUES ('1135', '9', '245', '5MP', '2017-11-16 14:24:40', '2017-11-16 14:24:40');
INSERT INTO `products_attributes` VALUES ('1136', '3', '245', '5MP', '2017-11-16 14:24:40', '2017-11-16 14:24:40');
INSERT INTO `products_attributes` VALUES ('1137', '1', '245', 'Negro', '2017-11-16 14:24:40', '2017-11-16 14:24:40');
INSERT INTO `products_attributes` VALUES ('1138', '25', '245', '2,500mAh', '2017-11-16 14:24:40', '2017-11-16 14:24:40');
INSERT INTO `products_attributes` VALUES ('1139', '6', '245', '16GB', '2017-11-16 14:24:40', '2017-11-16 14:24:40');
INSERT INTO `products_attributes` VALUES ('1140', '10', '245', '5\"', '2017-11-16 14:24:40', '2017-11-16 14:24:40');
INSERT INTO `products_attributes` VALUES ('1141', '1', '246', 'Blanco', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `products_attributes` VALUES ('1142', '10', '246', '4.5\"', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `products_attributes` VALUES ('1143', '6', '246', '8MP', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `products_attributes` VALUES ('1144', '9', '246', '2MP', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `products_attributes` VALUES ('1145', '3', '246', '5MP', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `products_attributes` VALUES ('1146', '25', '246', '2000mAh', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `products_attributes` VALUES ('1147', '1', '247', 'Negro', '2017-11-16 14:49:25', '2017-11-16 14:49:25');
INSERT INTO `products_attributes` VALUES ('1148', '6', '247', '8GB', '2017-11-16 14:49:25', '2017-11-16 14:49:25');
INSERT INTO `products_attributes` VALUES ('1149', '10', '247', '4,5\"', '2017-11-16 14:49:25', '2017-11-16 14:49:25');
INSERT INTO `products_attributes` VALUES ('1150', '9', '247', '2MP', '2017-11-16 14:49:25', '2017-11-16 14:49:25');
INSERT INTO `products_attributes` VALUES ('1151', '3', '247', '5MP', '2017-11-16 14:49:25', '2017-11-16 14:49:25');
INSERT INTO `products_attributes` VALUES ('1152', '1', '248', 'Dorado', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `products_attributes` VALUES ('1153', '10', '248', '5\"', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `products_attributes` VALUES ('1154', '9', '248', '2MP', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `products_attributes` VALUES ('1155', '3', '248', '8MP', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `products_attributes` VALUES ('1156', '2', '248', 'SI', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `products_attributes` VALUES ('1157', '30', '248', 'SI', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `products_attributes` VALUES ('1158', '1', '249', 'Negro', '2017-11-16 15:28:11', '2017-11-16 15:28:11');
INSERT INTO `products_attributes` VALUES ('1159', '10', '249', '5.5\"', '2017-11-16 15:28:11', '2017-11-16 15:28:11');
INSERT INTO `products_attributes` VALUES ('1160', '6', '249', '16GB', '2017-11-16 15:28:11', '2017-11-16 15:28:11');
INSERT INTO `products_attributes` VALUES ('1161', '30', '249', 'SI', '2017-11-16 15:28:11', '2017-11-16 15:28:11');
INSERT INTO `products_attributes` VALUES ('1162', '18', '250', 'SI', '2017-11-16 15:42:42', '2017-11-16 15:42:42');
INSERT INTO `products_attributes` VALUES ('1163', '1', '251', 'Negro', '2017-11-16 16:00:17', '2017-11-16 16:00:17');
INSERT INTO `products_attributes` VALUES ('1164', '10', '251', '5\"', '2017-11-16 16:00:17', '2017-11-16 16:00:17');
INSERT INTO `products_attributes` VALUES ('1165', '9', '251', '2MP', '2017-11-16 16:00:17', '2017-11-16 16:00:17');
INSERT INTO `products_attributes` VALUES ('1166', '3', '251', '5MP', '2017-11-16 16:00:17', '2017-11-16 16:00:17');
INSERT INTO `products_attributes` VALUES ('1167', '32', '252', 'SI', '2017-11-16 16:21:02', '2017-11-16 16:21:02');
INSERT INTO `products_attributes` VALUES ('1168', '18', '252', 'SI', '2017-11-16 16:21:02', '2017-11-16 16:21:02');
INSERT INTO `products_attributes` VALUES ('1169', '18', '253', 'SI', '2017-11-16 16:30:21', '2017-11-16 16:30:21');
INSERT INTO `products_attributes` VALUES ('1170', '32', '253', 'SI', '2017-11-16 16:30:21', '2017-11-16 16:30:21');
INSERT INTO `products_attributes` VALUES ('1171', '1', '254', 'nego', '2017-11-16 16:41:06', '2017-11-16 16:41:06');
INSERT INTO `products_attributes` VALUES ('1172', '1', '256', 'gris', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `products_attributes` VALUES ('1173', '10', '256', '5.0\"', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `products_attributes` VALUES ('1174', '6', '256', '4GB', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `products_attributes` VALUES ('1175', '9', '256', '2MP', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `products_attributes` VALUES ('1176', '3', '256', '5MP', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `products_attributes` VALUES ('1177', '1', '257', 'Gris', '2017-11-16 17:21:05', '2017-11-16 17:21:05');
INSERT INTO `products_attributes` VALUES ('1178', '6', '257', '8GB', '2017-11-16 17:21:05', '2017-11-16 17:21:05');
INSERT INTO `products_attributes` VALUES ('1179', '10', '257', '6.0\"', '2017-11-16 17:21:05', '2017-11-16 17:21:05');
INSERT INTO `products_attributes` VALUES ('1180', '9', '257', '5MP', '2017-11-16 17:21:05', '2017-11-16 17:21:05');
INSERT INTO `products_attributes` VALUES ('1181', '3', '257', '13MP', '2017-11-16 17:21:05', '2017-11-16 17:21:05');
INSERT INTO `products_attributes` VALUES ('1182', '6', '258', '8GB', '2017-11-16 17:23:13', '2017-11-16 17:23:13');
INSERT INTO `products_attributes` VALUES ('1183', '10', '258', '6.0\"', '2017-11-16 17:23:13', '2017-11-16 17:23:13');
INSERT INTO `products_attributes` VALUES ('1184', '9', '258', '5MP', '2017-11-16 17:23:13', '2017-11-16 17:23:13');
INSERT INTO `products_attributes` VALUES ('1185', '3', '258', '13MP', '2017-11-16 17:23:13', '2017-11-16 17:23:13');
INSERT INTO `products_attributes` VALUES ('1186', '1', '258', 'Plateado', '2017-11-16 17:23:13', '2017-11-16 17:23:13');
INSERT INTO `products_attributes` VALUES ('1187', '1', '259', 'blanco', '2017-11-16 17:34:56', '2017-11-16 17:34:56');
INSERT INTO `products_attributes` VALUES ('1188', '10', '259', '5,5\"', '2017-11-16 17:34:56', '2017-11-16 17:34:56');
INSERT INTO `products_attributes` VALUES ('1189', '9', '259', '5MP', '2017-11-16 17:34:56', '2017-11-16 17:34:56');
INSERT INTO `products_attributes` VALUES ('1190', '3', '259', '8MP', '2017-11-16 17:34:56', '2017-11-16 17:34:56');
INSERT INTO `products_attributes` VALUES ('1191', '6', '259', '8GB', '2017-11-16 17:34:56', '2017-11-16 17:34:56');
INSERT INTO `products_attributes` VALUES ('1192', '1', '260', 'Negro', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `products_attributes` VALUES ('1193', '10', '260', '5,5\"', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `products_attributes` VALUES ('1194', '9', '260', '5MP', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `products_attributes` VALUES ('1195', '3', '260', '8MP', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `products_attributes` VALUES ('1196', '6', '260', '8GB', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `products_attributes` VALUES ('1197', '10', '261', '5,5\"', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `products_attributes` VALUES ('1198', '9', '261', '5MP', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `products_attributes` VALUES ('1199', '3', '261', '8MP', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `products_attributes` VALUES ('1200', '6', '261', '8GB', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `products_attributes` VALUES ('1201', '1', '261', 'Blanco', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `products_attributes` VALUES ('1202', '10', '262', '5,5\"', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `products_attributes` VALUES ('1203', '9', '262', '5MP', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `products_attributes` VALUES ('1204', '3', '262', '8MP', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `products_attributes` VALUES ('1205', '6', '262', '8GB', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `products_attributes` VALUES ('1206', '1', '262', 'gris', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `products_attributes` VALUES ('1212', '10', '264', '5.0\"', '2017-11-16 18:05:11', '2017-11-16 18:05:11');
INSERT INTO `products_attributes` VALUES ('1213', '9', '264', '2MP', '2017-11-16 18:05:11', '2017-11-16 18:05:11');
INSERT INTO `products_attributes` VALUES ('1214', '3', '264', '5MP', '2017-11-16 18:05:11', '2017-11-16 18:05:11');
INSERT INTO `products_attributes` VALUES ('1215', '6', '264', '4GB', '2017-11-16 18:05:11', '2017-11-16 18:05:11');
INSERT INTO `products_attributes` VALUES ('1216', '1', '264', 'Blanco', '2017-11-16 18:05:11', '2017-11-16 18:05:11');
INSERT INTO `products_attributes` VALUES ('1232', '1', '268', 'Negro', '2017-11-17 09:15:24', '2017-11-17 09:15:24');
INSERT INTO `products_attributes` VALUES ('1238', '32', '274', 'SI', '2017-11-17 10:05:56', '2017-11-17 10:05:56');
INSERT INTO `products_attributes` VALUES ('1239', '33', '274', 'SI', '2017-11-17 10:05:56', '2017-11-17 10:05:56');
INSERT INTO `products_attributes` VALUES ('1240', '34', '274', 'SI', '2017-11-17 10:05:56', '2017-11-17 10:05:56');
INSERT INTO `products_attributes` VALUES ('1241', '1', '275', 'negro', '2017-11-17 10:22:55', '2017-11-17 10:22:55');
INSERT INTO `products_attributes` VALUES ('1242', '34', '275', 'SI', '2017-11-17 10:22:55', '2017-11-17 10:22:55');
INSERT INTO `products_attributes` VALUES ('1243', '25', '275', '800mAh', '2017-11-17 10:22:55', '2017-11-17 10:22:55');
INSERT INTO `products_attributes` VALUES ('1244', '1', '276', 'verde', '2017-11-17 10:28:42', '2017-11-17 10:28:42');
INSERT INTO `products_attributes` VALUES ('1245', '34', '276', 'SI', '2017-11-17 10:28:42', '2017-11-17 10:28:42');
INSERT INTO `products_attributes` VALUES ('1246', '33', '277', 'SI', '2017-11-17 10:38:21', '2017-11-17 10:38:21');
INSERT INTO `products_attributes` VALUES ('1247', '34', '277', 'SI', '2017-11-17 10:38:21', '2017-11-17 10:38:21');
INSERT INTO `products_attributes` VALUES ('1248', '32', '277', 'SI', '2017-11-17 10:38:21', '2017-11-17 10:38:21');
INSERT INTO `products_attributes` VALUES ('1249', '1', '278', 'Negro', '2017-11-17 10:44:14', '2017-11-17 10:44:14');
INSERT INTO `products_attributes` VALUES ('1250', '25', '278', '22000mAh', '2017-11-17 10:44:14', '2017-11-17 10:44:14');
INSERT INTO `products_attributes` VALUES ('1251', '34', '278', 'SI', '2017-11-17 10:44:14', '2017-11-17 10:44:14');
INSERT INTO `products_attributes` VALUES ('1254', '1', '281', 'negro', '2017-11-17 11:08:14', '2017-11-17 11:08:14');
INSERT INTO `products_attributes` VALUES ('1255', '34', '281', 'SI', '2017-11-17 11:08:14', '2017-11-17 11:08:14');
INSERT INTO `products_attributes` VALUES ('1256', '33', '281', 'SI', '2017-11-17 11:08:14', '2017-11-17 11:08:14');
INSERT INTO `products_attributes` VALUES ('1257', '1', '282', 'Negro', '2017-11-17 11:13:29', '2017-11-17 11:13:29');
INSERT INTO `products_attributes` VALUES ('1258', '1', '283', 'Negro', '2017-11-17 11:20:32', '2017-11-17 11:20:32');
INSERT INTO `products_attributes` VALUES ('1259', '34', '283', 'SI', '2017-11-17 11:20:32', '2017-11-17 11:20:32');
INSERT INTO `products_attributes` VALUES ('1260', '1', '284', 'AZUL', '2017-11-17 11:24:26', '2017-11-17 11:24:26');
INSERT INTO `products_attributes` VALUES ('1261', '34', '284', 'SI', '2017-11-17 11:24:26', '2017-11-17 11:24:26');
INSERT INTO `products_attributes` VALUES ('1262', '33', '284', 'SI', '2017-11-17 11:24:26', '2017-11-17 11:24:26');
INSERT INTO `products_attributes` VALUES ('1263', '1', '285', 'Multicolor', '2017-11-17 11:31:24', '2017-11-17 11:31:24');
INSERT INTO `products_attributes` VALUES ('1264', '25', '285', 'Recargable', '2017-11-17 11:31:24', '2017-11-17 11:31:24');
INSERT INTO `products_attributes` VALUES ('1265', '1', '286', 'negro', '2017-11-17 11:36:03', '2017-11-17 11:36:03');
INSERT INTO `products_attributes` VALUES ('1266', '34', '286', 'si', '2017-11-17 11:36:03', '2017-11-17 11:36:03');
INSERT INTO `products_attributes` VALUES ('1267', '33', '286', 'si', '2017-11-17 11:36:03', '2017-11-17 11:36:03');
INSERT INTO `products_attributes` VALUES ('1271', '18', '288', 'SI', '2017-11-17 12:29:10', '2017-11-17 12:29:10');
INSERT INTO `products_attributes` VALUES ('1272', '10', '288', '7\"', '2017-11-17 12:29:10', '2017-11-17 12:29:10');
INSERT INTO `products_attributes` VALUES ('1273', '6', '288', '8GB', '2017-11-17 12:29:10', '2017-11-17 12:29:10');
INSERT INTO `products_attributes` VALUES ('1274', '35', '288', 'SI', '2017-11-17 12:29:10', '2017-11-17 12:29:10');
INSERT INTO `products_attributes` VALUES ('1275', '18', '289', 'SI', '2017-11-17 12:33:37', '2017-11-17 12:33:37');
INSERT INTO `products_attributes` VALUES ('1276', '35', '289', 'SI', '2017-11-17 12:33:37', '2017-11-17 12:33:37');
INSERT INTO `products_attributes` VALUES ('1277', '1', '289', 'Blanco', '2017-11-17 12:33:37', '2017-11-17 12:33:37');
INSERT INTO `products_attributes` VALUES ('1278', '1', '290', 'Negro', '2017-11-17 14:03:13', '2017-11-17 14:03:13');
INSERT INTO `products_attributes` VALUES ('1279', '35', '291', 'SI', '2017-11-17 14:07:40', '2017-11-17 14:07:40');
INSERT INTO `products_attributes` VALUES ('1280', '1', '291', 'Negro', '2017-11-17 14:07:40', '2017-11-17 14:07:40');
INSERT INTO `products_attributes` VALUES ('1281', '1', '292', 'Negro', '2017-11-17 14:18:25', '2017-11-17 14:18:25');
INSERT INTO `products_attributes` VALUES ('1282', '1', '294', 'Negro', '2017-11-17 14:37:03', '2017-11-17 14:37:03');
INSERT INTO `products_attributes` VALUES ('1283', '1', '297', 'Negro', '2017-11-17 14:54:56', '2017-11-17 14:54:56');
INSERT INTO `products_attributes` VALUES ('1284', '1', '305', 'Azul', '2017-11-17 16:06:13', '2017-11-17 16:06:13');
INSERT INTO `products_attributes` VALUES ('1285', '34', '305', 'SI', '2017-11-17 16:06:13', '2017-11-17 16:06:13');
INSERT INTO `products_attributes` VALUES ('1286', '32', '305', 'SI', '2017-11-17 16:06:13', '2017-11-17 16:06:13');
INSERT INTO `products_attributes` VALUES ('1287', '1', '307', 'Blanco ', '2017-11-17 16:35:16', '2017-11-17 16:35:16');
INSERT INTO `products_attributes` VALUES ('1288', '25', '307', '2600mAh', '2017-11-17 16:35:16', '2017-11-17 16:35:16');
INSERT INTO `products_attributes` VALUES ('1289', '1', '308', 'Fucsia', '2017-11-17 16:39:27', '2017-11-17 16:39:27');
INSERT INTO `products_attributes` VALUES ('1290', '7', '308', '5500mAh', '2017-11-17 16:39:27', '2017-11-17 16:39:27');
INSERT INTO `products_attributes` VALUES ('1302', '10', '362', '7.0\" HD', '2017-11-24 09:39:33', '2017-11-24 09:39:33');
INSERT INTO `products_attributes` VALUES ('1303', '9', '362', '2MP', '2017-11-24 09:39:33', '2017-11-24 09:39:33');
INSERT INTO `products_attributes` VALUES ('1304', '3', '362', '8MP', '2017-11-24 09:39:33', '2017-11-24 09:39:33');
INSERT INTO `products_attributes` VALUES ('1305', '6', '362', '8GB', '2017-11-24 09:39:33', '2017-11-24 09:39:33');
INSERT INTO `products_attributes` VALUES ('1306', '1', '362', 'Gris', '2017-11-24 09:39:33', '2017-11-24 09:39:33');
INSERT INTO `products_attributes` VALUES ('1307', '1', '279', 'Negro', '2017-11-30 09:53:29', '2017-11-30 09:53:29');
INSERT INTO `products_attributes` VALUES ('1325', '12', '361', 'Boot-up Linux', '2017-11-30 10:24:41', '2017-11-30 10:24:41');
INSERT INTO `products_attributes` VALUES ('1326', '25', '361', '4-Cell Li-on', '2017-11-30 10:24:41', '2017-11-30 10:24:41');
INSERT INTO `products_attributes` VALUES ('1327', '1', '361', 'Negro', '2017-11-30 10:24:41', '2017-11-30 10:24:41');
INSERT INTO `products_attributes` VALUES ('1328', '39', '361', '14.0\" HD Acer', '2017-11-30 10:24:41', '2017-11-30 10:24:41');
INSERT INTO `products_attributes` VALUES ('1336', '5', '360', 'N3350', '2017-11-30 10:25:40', '2017-11-30 10:25:40');
INSERT INTO `products_attributes` VALUES ('1337', '8', '360', '4GB', '2017-11-30 10:25:40', '2017-11-30 10:25:40');
INSERT INTO `products_attributes` VALUES ('1338', '36', '360', '500GB', '2017-11-30 10:25:40', '2017-11-30 10:25:40');
INSERT INTO `products_attributes` VALUES ('1339', '37', '360', '100/1000M', '2017-11-30 10:25:40', '2017-11-30 10:25:40');
INSERT INTO `products_attributes` VALUES ('1340', '38', '360', '14\" HD', '2017-11-30 10:25:40', '2017-11-30 10:25:40');
INSERT INTO `products_attributes` VALUES ('1341', '25', '360', '3CELL', '2017-11-30 10:25:40', '2017-11-30 10:25:40');
INSERT INTO `products_attributes` VALUES ('1342', '1', '360', 'Negro', '2017-11-30 10:25:40', '2017-11-30 10:25:40');
INSERT INTO `products_attributes` VALUES ('1344', '6', '267', '4GB', '2017-11-30 10:27:30', '2017-11-30 10:27:30');
INSERT INTO `products_attributes` VALUES ('1346', '1', '280', 'Negro', '2017-11-30 10:29:50', '2017-11-30 10:29:50');
INSERT INTO `products_attributes` VALUES ('1348', '1', '269', 'Negro', '2017-11-30 10:31:27', '2017-11-30 10:31:27');
INSERT INTO `products_attributes` VALUES ('1349', '1', '287', 'Negro', '2017-11-30 10:32:37', '2017-11-30 10:32:37');
INSERT INTO `products_attributes` VALUES ('1350', '34', '287', 'si', '2017-11-30 10:32:37', '2017-11-30 10:32:37');
INSERT INTO `products_attributes` VALUES ('1351', '33', '287', 'si', '2017-11-30 10:32:37', '2017-11-30 10:32:37');
INSERT INTO `products_attributes` VALUES ('1400', '18', '390', 'SI', '2017-11-30 11:39:41', '2017-11-30 11:39:41');
INSERT INTO `products_attributes` VALUES ('1401', '2', '390', 'SI', '2017-11-30 11:39:41', '2017-11-30 11:39:41');
INSERT INTO `products_attributes` VALUES ('1402', '10', '390', '5\"', '2017-11-30 11:39:41', '2017-11-30 11:39:41');
INSERT INTO `products_attributes` VALUES ('1403', '1', '390', 'Azul', '2017-11-30 11:39:41', '2017-11-30 11:39:41');
INSERT INTO `products_attributes` VALUES ('1404', '18', '391', 'SI', '2017-11-30 11:39:46', '2017-11-30 11:39:46');
INSERT INTO `products_attributes` VALUES ('1405', '1', '391', 'negro', '2017-11-30 11:39:46', '2017-11-30 11:39:46');
INSERT INTO `products_attributes` VALUES ('1406', '1', '273', 'Negro', '2017-11-30 15:15:03', '2017-11-30 15:15:03');
INSERT INTO `products_attributes` VALUES ('1407', '1', '272', 'blanco', '2017-11-30 15:15:24', '2017-11-30 15:15:24');
INSERT INTO `products_attributes` VALUES ('1408', '1', '271', 'Camuflado', '2017-11-30 15:15:49', '2017-11-30 15:15:49');
INSERT INTO `products_attributes` VALUES ('1409', '1', '270', 'Negro', '2017-11-30 15:16:08', '2017-11-30 15:16:08');
INSERT INTO `products_attributes` VALUES ('1414', '10', '266', '4.0\"', '2017-11-30 15:20:43', '2017-11-30 15:20:43');
INSERT INTO `products_attributes` VALUES ('1415', '6', '266', '4GB', '2017-11-30 15:20:43', '2017-11-30 15:20:43');
INSERT INTO `products_attributes` VALUES ('1416', '9', '266', '1.3MP', '2017-11-30 15:20:43', '2017-11-30 15:20:43');
INSERT INTO `products_attributes` VALUES ('1417', '3', '266', '5MP', '2017-11-30 15:20:43', '2017-11-30 15:20:43');
INSERT INTO `products_attributes` VALUES ('1418', '1', '265', 'blano', '2017-11-30 15:22:28', '2017-11-30 15:22:28');
INSERT INTO `products_attributes` VALUES ('1419', '10', '265', '4.0\"', '2017-11-30 15:22:28', '2017-11-30 15:22:28');
INSERT INTO `products_attributes` VALUES ('1420', '6', '265', '4GB', '2017-11-30 15:22:28', '2017-11-30 15:22:28');
INSERT INTO `products_attributes` VALUES ('1421', '9', '265', '1.3MP', '2017-11-30 15:22:28', '2017-11-30 15:22:28');
INSERT INTO `products_attributes` VALUES ('1422', '3', '265', '5MP', '2017-11-30 15:22:28', '2017-11-30 15:22:28');
INSERT INTO `products_attributes` VALUES ('1423', '1', '263', 'dorado', '2017-11-30 15:27:20', '2017-11-30 15:27:20');
INSERT INTO `products_attributes` VALUES ('1424', '10', '263', '5.0\"', '2017-11-30 15:27:20', '2017-11-30 15:27:20');
INSERT INTO `products_attributes` VALUES ('1425', '9', '263', '2MP', '2017-11-30 15:27:20', '2017-11-30 15:27:20');
INSERT INTO `products_attributes` VALUES ('1426', '3', '263', '5MP', '2017-11-30 15:27:20', '2017-11-30 15:27:20');
INSERT INTO `products_attributes` VALUES ('1427', '6', '263', '4GB', '2017-11-30 15:27:20', '2017-11-30 15:27:20');
INSERT INTO `products_attributes` VALUES ('1428', '1', '393', 'verde', '2017-12-19 10:05:45', '2017-12-19 10:05:45');
INSERT INTO `products_attributes` VALUES ('1429', '1', '394', 'Negro', '2017-12-27 09:17:36', '2017-12-27 09:17:36');
INSERT INTO `products_attributes` VALUES ('1430', '9', '394', '2MP', '2017-12-27 09:17:36', '2017-12-27 09:17:36');
INSERT INTO `products_attributes` VALUES ('1431', '3', '394', '5MP', '2017-12-27 09:17:36', '2017-12-27 09:17:36');
INSERT INTO `products_attributes` VALUES ('1432', '3', '395', '5mp', '2017-12-28 15:55:32', '2017-12-28 15:55:32');
INSERT INTO `products_attributes` VALUES ('1433', '1', '395', 'negro', '2017-12-28 15:55:32', '2017-12-28 15:55:32');
INSERT INTO `products_attributes` VALUES ('1442', '25', '397', '2050 mAh', '2017-12-28 17:48:32', '2017-12-28 17:48:32');
INSERT INTO `products_attributes` VALUES ('1443', '3', '397', '8mp', '2017-12-28 17:48:32', '2017-12-28 17:48:32');
INSERT INTO `products_attributes` VALUES ('1444', '9', '397', '5mp', '2017-12-28 17:48:32', '2017-12-28 17:48:32');
INSERT INTO `products_attributes` VALUES ('1445', '6', '397', '8gb', '2017-12-28 17:48:32', '2017-12-28 17:48:32');
INSERT INTO `products_attributes` VALUES ('1446', '9', '396', '2mp', '2017-12-28 18:02:57', '2017-12-28 18:02:57');
INSERT INTO `products_attributes` VALUES ('1447', '3', '396', '5mp', '2017-12-28 18:02:57', '2017-12-28 18:02:57');
INSERT INTO `products_attributes` VALUES ('1448', '25', '396', '2300 mAh', '2017-12-28 18:02:57', '2017-12-28 18:02:57');
INSERT INTO `products_attributes` VALUES ('1449', '40', '396', 'Qualcomm Snapdragon 210 MSM8909   F', '2017-12-28 18:02:57', '2017-12-28 18:02:57');
INSERT INTO `products_attributes` VALUES ('1450', '25', '398', '2500mAh', '2017-12-28 19:00:27', '2017-12-28 19:00:27');
INSERT INTO `products_attributes` VALUES ('1451', '9', '398', '5mp con flash y video HD', '2017-12-28 19:00:27', '2017-12-28 19:00:27');
INSERT INTO `products_attributes` VALUES ('1452', '3', '398', '5MP', '2017-12-28 19:00:27', '2017-12-28 19:00:27');
INSERT INTO `products_attributes` VALUES ('1453', '40', '398', 'Quad-Core de 1.1 GHz', '2017-12-28 19:00:27', '2017-12-28 19:00:27');
INSERT INTO `products_attributes` VALUES ('1454', '25', '399', '1750mAh', '2017-12-28 19:41:03', '2017-12-28 19:41:03');
INSERT INTO `products_attributes` VALUES ('1455', '9', '399', '2mp', '2017-12-28 19:41:03', '2017-12-28 19:41:03');
INSERT INTO `products_attributes` VALUES ('1456', '3', '399', ' 5MP con Flash', '2017-12-28 19:41:03', '2017-12-28 19:41:03');
INSERT INTO `products_attributes` VALUES ('1457', '6', '399', '4GB', '2017-12-28 19:41:03', '2017-12-28 19:41:03');
INSERT INTO `products_attributes` VALUES ('1458', '8', '399', '512mb', '2017-12-28 19:41:03', '2017-12-28 19:41:03');
INSERT INTO `products_attributes` VALUES ('1459', '25', '400', '3.000 mAh', '2017-12-28 20:29:06', '2017-12-28 20:29:06');
INSERT INTO `products_attributes` VALUES ('1460', '9', '400', '13mp', '2017-12-28 20:29:06', '2017-12-28 20:29:06');
INSERT INTO `products_attributes` VALUES ('1461', '3', '400', '13mp', '2017-12-28 20:29:06', '2017-12-28 20:29:06');
INSERT INTO `products_attributes` VALUES ('1462', '8', '401', '512MB-1G', '2017-12-29 12:44:28', '2017-12-29 12:44:28');
INSERT INTO `products_attributes` VALUES ('1463', '40', '401', 'ANDROID 4.0', '2017-12-29 12:44:28', '2017-12-29 12:44:28');
INSERT INTO `products_attributes` VALUES ('1464', '6', '401', '4G', '2017-12-29 12:44:28', '2017-12-29 12:44:28');
INSERT INTO `products_attributes` VALUES ('1465', '11', '401', '32G', '2017-12-29 12:44:28', '2017-12-29 12:44:28');

-- ----------------------------
-- Table structure for products_rating
-- ----------------------------
DROP TABLE IF EXISTS `products_rating`;
CREATE TABLE `products_rating` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `score` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_score_user` (`user_id`) USING BTREE,
  KEY `fk_score_product` (`product_id`) USING BTREE,
  CONSTRAINT `products_rating_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_rating_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products_rating
-- ----------------------------
INSERT INTO `products_rating` VALUES ('37', '1', '15', '3', '2017-12-28 15:30:32', '2017-12-28 15:30:34');
INSERT INTO `products_rating` VALUES ('38', '1', '16', '2', '2017-12-28 15:31:05', '2017-12-28 15:31:12');
INSERT INTO `products_rating` VALUES ('39', '12', '18', '5', '2017-12-28 15:31:09', '2017-12-28 15:31:15');
INSERT INTO `products_rating` VALUES ('40', '21', '15', '5', null, null);
INSERT INTO `products_rating` VALUES ('41', '27', '15', '2', null, null);

-- ----------------------------
-- Table structure for products_types
-- ----------------------------
DROP TABLE IF EXISTS `products_types`;
CREATE TABLE `products_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_type_unique` (`type_id`,`product_id`) USING BTREE,
  KEY `fk_productstypes_products` (`product_id`) USING BTREE,
  CONSTRAINT `products_types_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_types_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products_types
-- ----------------------------
INSERT INTO `products_types` VALUES ('14', '10', '15', '2017-02-04 11:16:51', '2017-02-04 11:16:51');
INSERT INTO `products_types` VALUES ('15', '10', '16', '2017-02-04 11:20:58', '2017-02-04 11:20:58');
INSERT INTO `products_types` VALUES ('16', '10', '17', '2017-02-04 11:24:59', '2017-02-04 11:24:59');
INSERT INTO `products_types` VALUES ('17', '10', '18', '2017-02-04 11:38:30', '2017-02-04 11:38:30');
INSERT INTO `products_types` VALUES ('18', '10', '19', '2017-02-04 11:40:25', '2017-02-04 11:40:25');
INSERT INTO `products_types` VALUES ('19', '10', '20', '2017-02-04 11:50:21', '2017-02-04 11:50:21');
INSERT INTO `products_types` VALUES ('20', '10', '21', '2017-02-04 12:01:31', '2017-02-04 12:01:31');
INSERT INTO `products_types` VALUES ('21', '10', '22', '2017-02-04 12:03:15', '2017-02-04 12:03:15');
INSERT INTO `products_types` VALUES ('22', '10', '23', '2017-02-04 12:14:03', '2017-02-04 12:14:03');
INSERT INTO `products_types` VALUES ('23', '10', '24', '2017-02-04 12:22:46', '2017-02-04 12:22:46');
INSERT INTO `products_types` VALUES ('24', '10', '25', '2017-02-04 12:25:21', '2017-02-04 12:25:21');
INSERT INTO `products_types` VALUES ('25', '10', '26', '2017-02-04 12:34:55', '2017-02-04 12:34:55');
INSERT INTO `products_types` VALUES ('26', '10', '27', '2017-02-04 12:41:50', '2017-02-04 12:41:50');
INSERT INTO `products_types` VALUES ('27', '10', '28', '2017-02-04 12:53:10', '2017-02-04 12:53:10');
INSERT INTO `products_types` VALUES ('28', '11', '29', '2017-02-04 13:35:41', '2017-02-04 13:35:41');
INSERT INTO `products_types` VALUES ('31', '12', '32', '2017-02-04 14:28:21', '2017-02-04 14:28:21');
INSERT INTO `products_types` VALUES ('32', '12', '33', '2017-02-04 14:39:33', '2017-02-04 14:39:33');
INSERT INTO `products_types` VALUES ('33', '12', '34', '2017-02-04 14:40:37', '2017-02-04 14:40:37');
INSERT INTO `products_types` VALUES ('34', '12', '35', '2017-02-04 14:43:18', '2017-02-04 14:43:18');
INSERT INTO `products_types` VALUES ('35', '12', '36', '2017-02-04 14:45:11', '2017-02-04 14:45:11');
INSERT INTO `products_types` VALUES ('36', '12', '37', '2017-02-04 14:49:26', '2017-02-04 14:49:26');
INSERT INTO `products_types` VALUES ('37', '12', '38', '2017-02-04 14:50:42', '2017-02-04 14:50:42');
INSERT INTO `products_types` VALUES ('38', '12', '39', '2017-02-04 14:52:14', '2017-02-04 14:52:14');
INSERT INTO `products_types` VALUES ('39', '12', '40', '2017-02-04 14:57:38', '2017-02-04 14:57:38');
INSERT INTO `products_types` VALUES ('40', '12', '41', '2017-02-04 15:02:08', '2017-02-04 15:02:08');
INSERT INTO `products_types` VALUES ('41', '12', '42', '2017-02-04 15:02:56', '2017-02-04 15:02:56');
INSERT INTO `products_types` VALUES ('42', '12', '43', '2017-02-04 15:03:46', '2017-02-04 15:03:46');
INSERT INTO `products_types` VALUES ('43', '12', '44', '2017-02-04 15:04:38', '2017-02-04 15:04:38');
INSERT INTO `products_types` VALUES ('44', '12', '45', '2017-02-04 15:05:37', '2017-02-04 15:05:37');
INSERT INTO `products_types` VALUES ('45', '12', '46', '2017-02-04 15:06:21', '2017-02-04 15:06:21');
INSERT INTO `products_types` VALUES ('46', '12', '47', '2017-02-04 15:14:59', '2017-02-04 15:14:59');
INSERT INTO `products_types` VALUES ('47', '12', '48', '2017-02-04 15:17:03', '2017-02-04 15:17:03');
INSERT INTO `products_types` VALUES ('48', '12', '49', '2017-02-04 15:18:18', '2017-02-04 15:18:18');
INSERT INTO `products_types` VALUES ('49', '12', '50', '2017-02-04 15:22:10', '2017-02-04 15:22:10');
INSERT INTO `products_types` VALUES ('50', '12', '51', '2017-02-04 15:25:16', '2017-02-04 15:25:16');
INSERT INTO `products_types` VALUES ('51', '12', '52', '2017-02-04 15:29:22', '2017-02-04 15:29:22');
INSERT INTO `products_types` VALUES ('52', '12', '53', '2017-02-04 15:42:47', '2017-02-04 15:42:47');
INSERT INTO `products_types` VALUES ('53', '12', '54', '2017-02-04 15:44:09', '2017-02-04 15:44:09');
INSERT INTO `products_types` VALUES ('54', '12', '55', '2017-02-04 15:46:02', '2017-02-04 15:46:02');
INSERT INTO `products_types` VALUES ('55', '12', '56', '2017-02-04 15:47:28', '2017-02-04 15:47:28');
INSERT INTO `products_types` VALUES ('56', '12', '57', '2017-02-04 15:53:32', '2017-02-04 15:53:32');
INSERT INTO `products_types` VALUES ('57', '12', '58', '2017-02-04 15:58:26', '2017-02-04 15:58:26');
INSERT INTO `products_types` VALUES ('58', '12', '59', '2017-02-04 16:02:49', '2017-02-04 16:02:49');
INSERT INTO `products_types` VALUES ('59', '12', '60', '2017-02-04 16:03:34', '2017-02-04 16:03:34');
INSERT INTO `products_types` VALUES ('60', '12', '61', '2017-02-04 16:05:51', '2017-02-04 16:05:51');
INSERT INTO `products_types` VALUES ('61', '12', '62', '2017-02-04 16:09:35', '2017-02-04 16:09:35');
INSERT INTO `products_types` VALUES ('62', '10', '63', '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `products_types` VALUES ('64', '10', '65', '2017-02-05 01:39:26', '2017-02-05 01:39:26');
INSERT INTO `products_types` VALUES ('65', '10', '66', '2017-02-05 01:39:27', '2017-02-05 01:39:27');
INSERT INTO `products_types` VALUES ('66', '10', '67', '2017-02-05 01:39:29', '2017-02-05 01:39:29');
INSERT INTO `products_types` VALUES ('67', '10', '68', '2017-02-05 01:39:30', '2017-02-05 01:39:30');
INSERT INTO `products_types` VALUES ('68', '10', '69', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_types` VALUES ('69', '10', '70', '2017-02-05 01:39:31', '2017-02-05 01:39:31');
INSERT INTO `products_types` VALUES ('70', '10', '71', '2017-02-05 01:45:19', '2017-02-05 01:45:19');
INSERT INTO `products_types` VALUES ('71', '10', '72', '2017-02-05 01:45:21', '2017-02-05 01:45:21');
INSERT INTO `products_types` VALUES ('72', '10', '73', '2017-02-05 01:45:23', '2017-02-05 01:45:23');
INSERT INTO `products_types` VALUES ('73', '10', '74', '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `products_types` VALUES ('74', '10', '75', '2017-02-05 01:45:26', '2017-02-05 01:45:26');
INSERT INTO `products_types` VALUES ('75', '10', '76', '2017-02-05 01:45:27', '2017-02-05 01:45:27');
INSERT INTO `products_types` VALUES ('76', '10', '77', '2017-02-05 01:45:30', '2017-02-05 01:45:30');
INSERT INTO `products_types` VALUES ('77', '10', '78', '2017-02-05 01:45:32', '2017-02-05 01:45:32');
INSERT INTO `products_types` VALUES ('78', '10', '79', '2017-02-05 01:45:33', '2017-02-05 01:45:33');
INSERT INTO `products_types` VALUES ('79', '10', '80', '2017-02-05 01:45:34', '2017-02-05 01:45:34');
INSERT INTO `products_types` VALUES ('80', '10', '81', '2017-02-05 02:05:20', '2017-02-05 02:05:20');
INSERT INTO `products_types` VALUES ('81', '10', '82', '2017-02-05 02:05:22', '2017-02-05 02:05:22');
INSERT INTO `products_types` VALUES ('83', '10', '84', '2017-02-05 02:05:25', '2017-02-05 02:05:25');
INSERT INTO `products_types` VALUES ('84', '10', '85', '2017-02-05 02:05:25', '2017-02-05 02:05:25');
INSERT INTO `products_types` VALUES ('85', '10', '86', '2017-02-24 09:44:01', '2017-02-24 09:44:01');
INSERT INTO `products_types` VALUES ('86', '10', '87', '2017-02-24 09:53:06', '2017-02-24 09:53:06');
INSERT INTO `products_types` VALUES ('87', '10', '88', '2017-02-24 10:00:46', '2017-02-24 10:00:46');
INSERT INTO `products_types` VALUES ('88', '10', '89', '2017-02-24 10:10:43', '2017-02-24 10:10:43');
INSERT INTO `products_types` VALUES ('89', '10', '90', '2017-02-24 10:17:47', '2017-02-24 10:17:47');
INSERT INTO `products_types` VALUES ('90', '10', '91', '2017-02-24 10:27:57', '2017-02-24 10:27:57');
INSERT INTO `products_types` VALUES ('91', '10', '92', '2017-02-24 11:10:37', '2017-02-24 11:10:37');
INSERT INTO `products_types` VALUES ('92', '10', '93', '2017-02-24 11:17:40', '2017-02-24 11:17:40');
INSERT INTO `products_types` VALUES ('93', '10', '94', '2017-02-24 11:20:25', '2017-02-24 11:20:25');
INSERT INTO `products_types` VALUES ('94', '10', '95', '2017-02-24 11:29:41', '2017-02-24 11:29:41');
INSERT INTO `products_types` VALUES ('96', '10', '97', '2017-02-24 12:06:54', '2017-02-24 12:06:54');
INSERT INTO `products_types` VALUES ('97', '10', '98', '2017-02-24 12:07:33', '2017-02-24 12:07:33');
INSERT INTO `products_types` VALUES ('98', '10', '99', '2017-02-24 12:08:20', '2017-02-24 12:08:20');
INSERT INTO `products_types` VALUES ('99', '10', '100', '2017-02-24 12:09:21', '2017-02-24 12:09:21');
INSERT INTO `products_types` VALUES ('100', '10', '101', '2017-02-24 12:10:17', '2017-02-24 12:10:17');
INSERT INTO `products_types` VALUES ('101', '10', '102', '2017-02-24 12:14:46', '2017-02-24 12:14:46');
INSERT INTO `products_types` VALUES ('102', '10', '103', '2017-02-24 12:23:25', '2017-02-24 12:23:25');
INSERT INTO `products_types` VALUES ('103', '10', '104', '2017-02-24 12:26:45', '2017-02-24 12:26:45');
INSERT INTO `products_types` VALUES ('104', '10', '105', '2017-02-24 12:32:56', '2017-02-24 12:32:56');
INSERT INTO `products_types` VALUES ('105', '10', '106', '2017-02-24 12:36:30', '2017-02-24 12:36:30');
INSERT INTO `products_types` VALUES ('106', '12', '107', '2017-03-01 10:58:43', '2017-03-01 10:58:43');
INSERT INTO `products_types` VALUES ('107', '12', '108', '2017-03-01 11:02:12', '2017-03-01 11:02:12');
INSERT INTO `products_types` VALUES ('108', '12', '109', '2017-03-01 11:04:43', '2017-03-01 11:04:43');
INSERT INTO `products_types` VALUES ('109', '12', '110', '2017-03-01 11:06:11', '2017-03-01 11:06:11');
INSERT INTO `products_types` VALUES ('110', '12', '111', '2017-03-01 11:09:59', '2017-03-01 11:09:59');
INSERT INTO `products_types` VALUES ('113', '12', '114', '2017-03-01 11:29:22', '2017-03-01 11:29:22');
INSERT INTO `products_types` VALUES ('114', '12', '115', '2017-03-01 11:29:55', '2017-03-01 11:29:55');
INSERT INTO `products_types` VALUES ('115', '12', '116', '2017-03-01 11:30:30', '2017-03-01 11:30:30');
INSERT INTO `products_types` VALUES ('116', '12', '117', '2017-03-01 11:30:58', '2017-03-01 11:30:58');
INSERT INTO `products_types` VALUES ('117', '12', '118', '2017-03-01 11:31:26', '2017-03-01 11:31:26');
INSERT INTO `products_types` VALUES ('118', '12', '119', '2017-03-01 11:32:08', '2017-03-01 11:32:08');
INSERT INTO `products_types` VALUES ('119', '12', '120', '2017-03-01 11:45:59', '2017-03-01 11:45:59');
INSERT INTO `products_types` VALUES ('120', '12', '121', '2017-03-01 11:46:45', '2017-03-01 11:46:45');
INSERT INTO `products_types` VALUES ('121', '12', '122', '2017-03-01 11:48:07', '2017-03-01 11:48:07');
INSERT INTO `products_types` VALUES ('122', '12', '123', '2017-03-01 11:49:00', '2017-03-01 11:49:00');
INSERT INTO `products_types` VALUES ('123', '12', '124', '2017-03-01 11:49:53', '2017-03-01 11:49:53');
INSERT INTO `products_types` VALUES ('124', '12', '125', '2017-03-01 11:50:37', '2017-03-01 11:50:37');
INSERT INTO `products_types` VALUES ('125', '12', '126', '2017-03-01 11:51:39', '2017-03-01 11:51:39');
INSERT INTO `products_types` VALUES ('126', '12', '127', '2017-03-01 11:52:11', '2017-03-01 11:52:11');
INSERT INTO `products_types` VALUES ('127', '12', '128', '2017-03-01 11:53:23', '2017-03-01 11:53:23');
INSERT INTO `products_types` VALUES ('128', '12', '129', '2017-03-01 11:53:52', '2017-03-01 11:53:52');
INSERT INTO `products_types` VALUES ('129', '12', '130', '2017-03-01 11:54:28', '2017-03-01 11:54:28');
INSERT INTO `products_types` VALUES ('130', '12', '131', '2017-03-01 11:55:01', '2017-03-01 11:55:01');
INSERT INTO `products_types` VALUES ('131', '12', '132', '2017-03-01 11:55:44', '2017-03-01 11:55:44');
INSERT INTO `products_types` VALUES ('132', '12', '133', '2017-03-01 11:56:20', '2017-03-01 11:56:20');
INSERT INTO `products_types` VALUES ('133', '12', '134', '2017-03-01 11:56:54', '2017-03-01 11:56:54');
INSERT INTO `products_types` VALUES ('134', '12', '135', '2017-03-01 11:59:08', '2017-03-01 11:59:08');
INSERT INTO `products_types` VALUES ('135', '12', '136', '2017-03-01 11:59:29', '2017-03-01 11:59:29');
INSERT INTO `products_types` VALUES ('136', '12', '137', '2017-03-01 12:00:23', '2017-03-01 12:00:23');
INSERT INTO `products_types` VALUES ('137', '12', '138', '2017-03-01 12:01:04', '2017-03-01 12:01:04');
INSERT INTO `products_types` VALUES ('138', '12', '139', '2017-03-01 12:01:53', '2017-03-01 12:01:53');
INSERT INTO `products_types` VALUES ('139', '12', '140', '2017-03-01 12:02:24', '2017-03-01 12:02:24');
INSERT INTO `products_types` VALUES ('140', '12', '141', '2017-03-01 12:03:15', '2017-03-01 12:03:15');
INSERT INTO `products_types` VALUES ('141', '12', '142', '2017-03-01 12:05:25', '2017-03-01 12:05:25');
INSERT INTO `products_types` VALUES ('142', '12', '143', '2017-03-01 12:05:54', '2017-03-01 12:05:54');
INSERT INTO `products_types` VALUES ('143', '11', '144', '2017-03-28 21:56:15', '2017-03-28 21:56:15');
INSERT INTO `products_types` VALUES ('144', '11', '145', '2017-03-28 21:59:04', '2017-03-28 21:59:04');
INSERT INTO `products_types` VALUES ('145', '11', '146', '2017-03-28 22:00:44', '2017-03-28 22:00:44');
INSERT INTO `products_types` VALUES ('146', '11', '147', '2017-03-28 22:05:01', '2017-03-28 22:05:01');
INSERT INTO `products_types` VALUES ('147', '11', '148', '2017-03-28 22:05:52', '2017-03-28 22:05:52');
INSERT INTO `products_types` VALUES ('148', '11', '149', '2017-03-28 22:06:19', '2017-03-28 22:06:19');
INSERT INTO `products_types` VALUES ('149', '11', '150', '2017-03-28 22:06:48', '2017-03-28 22:06:48');
INSERT INTO `products_types` VALUES ('150', '11', '151', '2017-03-28 22:08:11', '2017-03-28 22:08:11');
INSERT INTO `products_types` VALUES ('151', '11', '152', '2017-03-28 22:09:49', '2017-03-28 22:09:49');
INSERT INTO `products_types` VALUES ('152', '11', '153', '2017-03-28 22:11:02', '2017-03-28 22:11:02');
INSERT INTO `products_types` VALUES ('153', '11', '154', '2017-03-28 22:14:39', '2017-03-28 22:14:39');
INSERT INTO `products_types` VALUES ('154', '11', '155', '2017-03-28 22:15:06', '2017-03-28 22:15:06');
INSERT INTO `products_types` VALUES ('155', '11', '156', '2017-03-28 22:15:53', '2017-03-28 22:15:53');
INSERT INTO `products_types` VALUES ('156', '11', '157', '2017-03-28 22:17:08', '2017-03-28 22:17:08');
INSERT INTO `products_types` VALUES ('157', '11', '158', '2017-03-28 22:18:29', '2017-03-28 22:18:29');
INSERT INTO `products_types` VALUES ('158', '11', '159', '2017-03-28 22:19:06', '2017-03-28 22:19:06');
INSERT INTO `products_types` VALUES ('159', '11', '160', '2017-03-28 22:20:58', '2017-03-28 22:20:58');
INSERT INTO `products_types` VALUES ('160', '11', '161', '2017-03-28 22:21:47', '2017-03-28 22:21:47');
INSERT INTO `products_types` VALUES ('161', '11', '162', '2017-03-28 22:23:29', '2017-03-28 22:23:29');
INSERT INTO `products_types` VALUES ('162', '11', '163', '2017-03-28 22:25:54', '2017-03-28 22:25:54');
INSERT INTO `products_types` VALUES ('163', '11', '164', '2017-03-28 22:27:10', '2017-03-28 22:27:10');
INSERT INTO `products_types` VALUES ('164', '11', '165', '2017-03-28 22:28:25', '2017-03-28 22:28:25');
INSERT INTO `products_types` VALUES ('165', '11', '166', '2017-03-28 22:29:18', '2017-03-28 22:29:18');
INSERT INTO `products_types` VALUES ('166', '11', '167', '2017-03-28 22:30:37', '2017-03-28 22:30:37');
INSERT INTO `products_types` VALUES ('167', '11', '168', '2017-03-28 22:30:57', '2017-03-28 22:30:57');
INSERT INTO `products_types` VALUES ('171', '11', '172', '2017-03-28 22:58:44', '2017-03-28 22:58:44');
INSERT INTO `products_types` VALUES ('172', '11', '173', '2017-04-02 22:40:55', '2017-04-02 22:40:55');
INSERT INTO `products_types` VALUES ('173', '11', '174', '2017-04-02 22:41:39', '2017-04-02 22:41:39');
INSERT INTO `products_types` VALUES ('174', '11', '175', '2017-04-02 22:41:59', '2017-04-02 22:41:59');
INSERT INTO `products_types` VALUES ('175', '11', '176', '2017-04-02 22:43:42', '2017-04-02 22:43:42');
INSERT INTO `products_types` VALUES ('176', '11', '177', '2017-04-02 22:46:20', '2017-04-02 22:46:20');
INSERT INTO `products_types` VALUES ('177', '11', '178', '2017-04-02 22:47:18', '2017-04-02 22:47:18');
INSERT INTO `products_types` VALUES ('178', '11', '179', '2017-04-02 22:53:47', '2017-04-02 22:53:47');
INSERT INTO `products_types` VALUES ('179', '11', '180', '2017-04-02 23:00:06', '2017-04-02 23:00:06');
INSERT INTO `products_types` VALUES ('180', '11', '181', '2017-04-02 23:03:36', '2017-04-02 23:03:36');
INSERT INTO `products_types` VALUES ('181', '11', '182', '2017-04-02 23:04:38', '2017-04-02 23:04:38');
INSERT INTO `products_types` VALUES ('182', '11', '183', '2017-04-02 23:05:39', '2017-04-02 23:05:39');
INSERT INTO `products_types` VALUES ('183', '11', '184', '2017-04-02 23:07:33', '2017-04-02 23:07:33');
INSERT INTO `products_types` VALUES ('184', '11', '185', '2017-04-02 23:08:10', '2017-04-02 23:08:10');
INSERT INTO `products_types` VALUES ('185', '11', '186', '2017-04-02 23:09:41', '2017-04-02 23:09:41');
INSERT INTO `products_types` VALUES ('186', '11', '187', '2017-04-02 23:10:20', '2017-04-02 23:10:20');
INSERT INTO `products_types` VALUES ('187', '11', '188', '2017-04-02 23:11:55', '2017-04-02 23:11:55');
INSERT INTO `products_types` VALUES ('188', '11', '189', '2017-04-02 23:12:37', '2017-04-02 23:12:37');
INSERT INTO `products_types` VALUES ('189', '11', '190', '2017-04-02 23:14:46', '2017-04-02 23:14:46');
INSERT INTO `products_types` VALUES ('190', '11', '191', '2017-04-02 23:16:29', '2017-04-02 23:16:29');
INSERT INTO `products_types` VALUES ('191', '11', '192', '2017-04-02 23:17:52', '2017-04-02 23:17:52');
INSERT INTO `products_types` VALUES ('192', '11', '193', '2017-04-02 23:18:40', '2017-04-02 23:18:40');
INSERT INTO `products_types` VALUES ('193', '14', '194', '2017-04-02 23:22:50', '2017-04-02 23:22:50');
INSERT INTO `products_types` VALUES ('194', '14', '195', '2017-04-02 23:24:06', '2017-04-02 23:24:06');
INSERT INTO `products_types` VALUES ('195', '14', '196', '2017-04-02 23:26:40', '2017-04-02 23:26:40');
INSERT INTO `products_types` VALUES ('196', '15', '197', '2017-04-02 23:30:48', '2017-04-02 23:30:48');
INSERT INTO `products_types` VALUES ('197', '15', '198', '2017-04-02 23:33:18', '2017-04-02 23:33:18');
INSERT INTO `products_types` VALUES ('199', '10', '200', '2017-06-22 10:12:20', '2017-06-22 10:12:20');
INSERT INTO `products_types` VALUES ('200', '10', '201', '2017-08-01 10:13:45', '2017-08-01 10:13:45');
INSERT INTO `products_types` VALUES ('201', '18', '202', '2017-08-02 14:52:27', '2017-08-02 14:52:27');
INSERT INTO `products_types` VALUES ('202', '12', '203', '2017-08-08 13:00:56', '2017-08-08 13:00:56');
INSERT INTO `products_types` VALUES ('203', '12', '204', '2017-08-08 13:03:37', '2017-08-08 13:03:37');
INSERT INTO `products_types` VALUES ('204', '12', '205', '2017-08-08 13:22:08', '2017-08-08 13:22:08');
INSERT INTO `products_types` VALUES ('205', '12', '206', '2017-08-08 13:29:06', '2017-08-08 13:29:06');
INSERT INTO `products_types` VALUES ('206', '12', '207', '2017-08-08 13:33:35', '2017-08-08 13:33:35');
INSERT INTO `products_types` VALUES ('207', '12', '208', '2017-08-08 13:37:10', '2017-08-08 13:37:10');
INSERT INTO `products_types` VALUES ('208', '12', '209', '2017-08-08 14:51:18', '2017-08-08 14:51:18');
INSERT INTO `products_types` VALUES ('209', '12', '210', '2017-08-08 14:57:20', '2017-08-08 14:57:20');
INSERT INTO `products_types` VALUES ('210', '12', '211', '2017-08-08 15:04:56', '2017-08-08 15:04:56');
INSERT INTO `products_types` VALUES ('211', '12', '212', '2017-08-08 15:14:01', '2017-08-08 15:14:01');
INSERT INTO `products_types` VALUES ('212', '12', '213', '2017-08-08 15:50:26', '2017-08-08 15:50:26');
INSERT INTO `products_types` VALUES ('213', '12', '214', '2017-08-08 15:56:37', '2017-08-08 15:56:37');
INSERT INTO `products_types` VALUES ('214', '12', '215', '2017-08-08 16:02:36', '2017-08-08 16:02:36');
INSERT INTO `products_types` VALUES ('215', '12', '216', '2017-08-08 16:11:50', '2017-08-08 16:11:50');
INSERT INTO `products_types` VALUES ('216', '12', '217', '2017-08-08 16:16:53', '2017-08-08 16:16:53');
INSERT INTO `products_types` VALUES ('217', '12', '218', '2017-08-08 16:19:28', '2017-08-08 16:19:28');
INSERT INTO `products_types` VALUES ('218', '12', '219', '2017-08-08 16:24:39', '2017-08-08 16:24:39');
INSERT INTO `products_types` VALUES ('219', '12', '220', '2017-08-08 16:29:56', '2017-08-08 16:29:56');
INSERT INTO `products_types` VALUES ('220', '19', '221', '2017-08-14 16:51:13', '2017-08-14 16:51:13');
INSERT INTO `products_types` VALUES ('221', '19', '222', '2017-08-14 16:59:15', '2017-08-14 16:59:15');
INSERT INTO `products_types` VALUES ('222', '19', '223', '2017-08-14 17:22:03', '2017-08-14 17:22:03');
INSERT INTO `products_types` VALUES ('223', '20', '224', '2017-08-14 17:29:25', '2017-08-14 17:29:25');
INSERT INTO `products_types` VALUES ('224', '19', '225', '2017-08-14 17:44:43', '2017-08-14 17:44:43');
INSERT INTO `products_types` VALUES ('225', '16', '226', '2017-08-14 17:55:57', '2017-08-14 17:55:57');
INSERT INTO `products_types` VALUES ('226', '20', '227', '2017-08-14 18:04:47', '2017-08-14 18:04:47');
INSERT INTO `products_types` VALUES ('227', '11', '228', '2017-08-14 18:15:08', '2017-08-14 18:15:08');
INSERT INTO `products_types` VALUES ('228', '10', '229', '2017-08-21 14:43:30', '2017-08-21 14:43:30');
INSERT INTO `products_types` VALUES ('229', '10', '230', '2017-08-21 14:49:01', '2017-08-21 14:49:01');
INSERT INTO `products_types` VALUES ('230', '10', '231', '2017-08-21 15:00:32', '2017-08-21 15:00:32');
INSERT INTO `products_types` VALUES ('231', '10', '232', '2017-08-21 15:07:26', '2017-08-21 15:07:26');
INSERT INTO `products_types` VALUES ('232', '10', '233', '2017-08-21 15:20:39', '2017-08-21 15:20:39');
INSERT INTO `products_types` VALUES ('233', '21', '234', '2017-11-16 10:02:21', '2017-11-16 10:02:21');
INSERT INTO `products_types` VALUES ('234', '10', '235', '2017-11-16 10:52:48', '2017-11-16 10:52:48');
INSERT INTO `products_types` VALUES ('235', '10', '236', '2017-11-16 11:09:45', '2017-11-16 11:09:45');
INSERT INTO `products_types` VALUES ('236', '10', '237', '2017-11-16 11:23:45', '2017-11-16 11:23:45');
INSERT INTO `products_types` VALUES ('237', '10', '238', '2017-11-16 11:40:30', '2017-11-16 11:40:30');
INSERT INTO `products_types` VALUES ('238', '10', '239', '2017-11-16 12:00:21', '2017-11-16 12:00:21');
INSERT INTO `products_types` VALUES ('239', '10', '240', '2017-11-16 12:34:05', '2017-11-16 12:34:05');
INSERT INTO `products_types` VALUES ('240', '10', '241', '2017-11-16 12:44:47', '2017-11-16 12:44:47');
INSERT INTO `products_types` VALUES ('241', '10', '242', '2017-11-16 13:01:24', '2017-11-16 13:01:24');
INSERT INTO `products_types` VALUES ('242', '10', '243', '2017-11-16 13:15:49', '2017-11-16 13:15:49');
INSERT INTO `products_types` VALUES ('243', '10', '244', '2017-11-16 13:31:22', '2017-11-16 13:31:22');
INSERT INTO `products_types` VALUES ('244', '10', '245', '2017-11-16 14:24:40', '2017-11-16 14:24:40');
INSERT INTO `products_types` VALUES ('245', '10', '246', '2017-11-16 14:35:06', '2017-11-16 14:35:06');
INSERT INTO `products_types` VALUES ('246', '10', '247', '2017-11-16 14:49:25', '2017-11-16 14:49:25');
INSERT INTO `products_types` VALUES ('247', '10', '248', '2017-11-16 15:13:48', '2017-11-16 15:13:48');
INSERT INTO `products_types` VALUES ('248', '10', '249', '2017-11-16 15:28:11', '2017-11-16 15:28:11');
INSERT INTO `products_types` VALUES ('249', '10', '250', '2017-11-16 15:42:42', '2017-11-16 15:42:42');
INSERT INTO `products_types` VALUES ('250', '10', '251', '2017-11-16 16:00:17', '2017-11-16 16:00:17');
INSERT INTO `products_types` VALUES ('251', '10', '252', '2017-11-16 16:21:02', '2017-11-16 16:21:02');
INSERT INTO `products_types` VALUES ('252', '10', '253', '2017-11-16 16:30:21', '2017-11-16 16:30:21');
INSERT INTO `products_types` VALUES ('253', '10', '254', '2017-11-16 16:41:06', '2017-11-16 16:41:06');
INSERT INTO `products_types` VALUES ('254', '10', '255', '2017-11-16 16:57:12', '2017-11-16 16:57:12');
INSERT INTO `products_types` VALUES ('255', '10', '256', '2017-11-16 17:13:17', '2017-11-16 17:13:17');
INSERT INTO `products_types` VALUES ('256', '10', '257', '2017-11-16 17:21:05', '2017-11-16 17:21:05');
INSERT INTO `products_types` VALUES ('257', '10', '258', '2017-11-16 17:23:13', '2017-11-16 17:23:13');
INSERT INTO `products_types` VALUES ('258', '10', '259', '2017-11-16 17:34:56', '2017-11-16 17:34:56');
INSERT INTO `products_types` VALUES ('259', '10', '260', '2017-11-16 17:42:05', '2017-11-16 17:42:05');
INSERT INTO `products_types` VALUES ('260', '10', '261', '2017-11-16 17:46:55', '2017-11-16 17:46:55');
INSERT INTO `products_types` VALUES ('261', '10', '262', '2017-11-16 17:49:48', '2017-11-16 17:49:48');
INSERT INTO `products_types` VALUES ('262', '10', '263', '2017-11-16 17:59:34', '2017-11-16 17:59:34');
INSERT INTO `products_types` VALUES ('263', '10', '264', '2017-11-16 18:05:11', '2017-11-16 18:05:11');
INSERT INTO `products_types` VALUES ('264', '10', '265', '2017-11-16 18:13:14', '2017-11-16 18:13:14');
INSERT INTO `products_types` VALUES ('265', '10', '266', '2017-11-16 18:15:26', '2017-11-16 18:15:26');
INSERT INTO `products_types` VALUES ('266', '22', '267', '2017-11-17 08:33:43', '2017-11-17 08:33:43');
INSERT INTO `products_types` VALUES ('267', '22', '268', '2017-11-17 09:15:24', '2017-11-17 09:15:24');
INSERT INTO `products_types` VALUES ('268', '22', '269', '2017-11-17 09:24:35', '2017-11-17 09:24:35');
INSERT INTO `products_types` VALUES ('269', '22', '270', '2017-11-17 09:40:46', '2017-11-17 09:40:46');
INSERT INTO `products_types` VALUES ('270', '23', '271', '2017-11-17 09:47:55', '2017-11-17 09:47:55');
INSERT INTO `products_types` VALUES ('271', '23', '272', '2017-11-17 09:51:10', '2017-11-17 09:51:10');
INSERT INTO `products_types` VALUES ('272', '23', '273', '2017-11-17 09:55:37', '2017-11-17 09:55:37');
INSERT INTO `products_types` VALUES ('273', '15', '274', '2017-11-17 10:05:56', '2017-11-17 10:05:56');
INSERT INTO `products_types` VALUES ('274', '14', '275', '2017-11-17 10:22:55', '2017-11-17 10:22:55');
INSERT INTO `products_types` VALUES ('275', '14', '276', '2017-11-17 10:28:42', '2017-11-17 10:28:42');
INSERT INTO `products_types` VALUES ('276', '14', '277', '2017-11-17 10:38:21', '2017-11-17 10:38:21');
INSERT INTO `products_types` VALUES ('277', '14', '278', '2017-11-17 10:44:14', '2017-11-17 10:44:14');
INSERT INTO `products_types` VALUES ('278', '22', '279', '2017-11-17 10:48:41', '2017-11-17 10:48:41');
INSERT INTO `products_types` VALUES ('279', '22', '280', '2017-11-17 10:59:12', '2017-11-17 10:59:12');
INSERT INTO `products_types` VALUES ('280', '14', '281', '2017-11-17 11:08:14', '2017-11-17 11:08:14');
INSERT INTO `products_types` VALUES ('281', '14', '282', '2017-11-17 11:13:29', '2017-11-17 11:13:29');
INSERT INTO `products_types` VALUES ('282', '14', '283', '2017-11-17 11:20:32', '2017-11-17 11:20:32');
INSERT INTO `products_types` VALUES ('283', '14', '284', '2017-11-17 11:24:26', '2017-11-17 11:24:26');
INSERT INTO `products_types` VALUES ('284', '14', '285', '2017-11-17 11:31:24', '2017-11-17 11:31:24');
INSERT INTO `products_types` VALUES ('285', '14', '286', '2017-11-17 11:36:03', '2017-11-17 11:36:03');
INSERT INTO `products_types` VALUES ('286', '14', '287', '2017-11-17 11:42:33', '2017-11-17 11:42:33');
INSERT INTO `products_types` VALUES ('287', '24', '288', '2017-11-17 12:29:10', '2017-11-17 12:29:10');
INSERT INTO `products_types` VALUES ('288', '24', '289', '2017-11-17 12:33:37', '2017-11-17 12:33:37');
INSERT INTO `products_types` VALUES ('289', '25', '290', '2017-11-17 14:03:12', '2017-11-17 14:03:12');
INSERT INTO `products_types` VALUES ('290', '25', '291', '2017-11-17 14:07:40', '2017-11-17 14:07:40');
INSERT INTO `products_types` VALUES ('291', '26', '292', '2017-11-17 14:18:25', '2017-11-17 14:18:25');
INSERT INTO `products_types` VALUES ('292', '27', '293', '2017-11-17 14:27:59', '2017-11-17 14:27:59');
INSERT INTO `products_types` VALUES ('293', '28', '294', '2017-11-17 14:37:03', '2017-11-17 14:37:03');
INSERT INTO `products_types` VALUES ('294', '28', '295', '2017-11-17 14:44:47', '2017-11-17 14:44:47');
INSERT INTO `products_types` VALUES ('295', '28', '296', '2017-11-17 14:50:00', '2017-11-17 14:50:00');
INSERT INTO `products_types` VALUES ('296', '29', '297', '2017-11-17 14:54:56', '2017-11-17 14:54:56');
INSERT INTO `products_types` VALUES ('297', '29', '298', '2017-11-17 14:59:38', '2017-11-17 14:59:38');
INSERT INTO `products_types` VALUES ('298', '29', '299', '2017-11-17 15:04:59', '2017-11-17 15:04:59');
INSERT INTO `products_types` VALUES ('299', '29', '300', '2017-11-17 15:07:15', '2017-11-17 15:07:15');
INSERT INTO `products_types` VALUES ('300', '29', '301', '2017-11-17 15:13:08', '2017-11-17 15:13:08');
INSERT INTO `products_types` VALUES ('301', '30', '302', '2017-11-17 15:21:13', '2017-11-17 15:21:13');
INSERT INTO `products_types` VALUES ('302', '26', '303', '2017-11-17 15:27:47', '2017-11-17 15:27:47');
INSERT INTO `products_types` VALUES ('303', '26', '304', '2017-11-17 15:31:10', '2017-11-17 15:31:10');
INSERT INTO `products_types` VALUES ('304', '14', '305', '2017-11-17 16:06:13', '2017-11-17 16:06:13');
INSERT INTO `products_types` VALUES ('305', '31', '306', '2017-11-17 16:13:22', '2017-11-17 16:13:22');
INSERT INTO `products_types` VALUES ('306', '32', '307', '2017-11-17 16:35:16', '2017-11-17 16:35:16');
INSERT INTO `products_types` VALUES ('307', '32', '308', '2017-11-17 16:39:27', '2017-11-17 16:39:27');
INSERT INTO `products_types` VALUES ('308', '32', '309', '2017-11-17 16:43:31', '2017-11-17 16:43:31');
INSERT INTO `products_types` VALUES ('309', '32', '310', '2017-11-17 16:53:28', '2017-11-17 16:53:28');
INSERT INTO `products_types` VALUES ('310', '32', '311', '2017-11-17 16:56:41', '2017-11-17 16:56:41');
INSERT INTO `products_types` VALUES ('311', '32', '312', '2017-11-17 17:02:23', '2017-11-17 17:02:23');
INSERT INTO `products_types` VALUES ('312', '33', '313', '2017-11-17 17:10:12', '2017-11-17 17:10:12');
INSERT INTO `products_types` VALUES ('313', '34', '314', '2017-11-17 17:16:42', '2017-11-17 17:16:42');
INSERT INTO `products_types` VALUES ('314', '35', '315', '2017-11-17 17:27:02', '2017-11-17 17:27:02');
INSERT INTO `products_types` VALUES ('315', '35', '316', '2017-11-17 17:31:36', '2017-11-17 17:31:36');
INSERT INTO `products_types` VALUES ('316', '36', '317', '2017-11-17 17:35:28', '2017-11-17 17:35:28');
INSERT INTO `products_types` VALUES ('317', '35', '318', '2017-11-17 17:39:55', '2017-11-17 17:39:55');
INSERT INTO `products_types` VALUES ('318', '37', '319', '2017-11-17 17:48:22', '2017-11-17 17:48:22');
INSERT INTO `products_types` VALUES ('319', '38', '320', '2017-11-17 18:00:47', '2017-11-17 18:00:47');
INSERT INTO `products_types` VALUES ('320', '18', '321', '2017-11-17 18:07:59', '2017-11-17 18:07:59');
INSERT INTO `products_types` VALUES ('321', '18', '322', '2017-11-17 18:15:17', '2017-11-17 18:15:17');
INSERT INTO `products_types` VALUES ('322', '39', '323', '2017-11-18 10:04:28', '2017-11-18 10:04:28');
INSERT INTO `products_types` VALUES ('323', '39', '324', '2017-11-18 10:11:27', '2017-11-18 10:11:27');
INSERT INTO `products_types` VALUES ('324', '39', '325', '2017-11-18 10:15:16', '2017-11-18 10:15:16');
INSERT INTO `products_types` VALUES ('325', '18', '326', '2017-11-18 10:20:28', '2017-11-18 10:20:28');
INSERT INTO `products_types` VALUES ('326', '18', '327', '2017-11-18 10:27:13', '2017-11-18 10:27:13');
INSERT INTO `products_types` VALUES ('327', '18', '328', '2017-11-18 10:35:42', '2017-11-18 10:35:42');
INSERT INTO `products_types` VALUES ('328', '18', '329', '2017-11-18 10:40:13', '2017-11-18 10:40:13');
INSERT INTO `products_types` VALUES ('329', '18', '330', '2017-11-18 10:44:55', '2017-11-18 10:44:55');
INSERT INTO `products_types` VALUES ('330', '18', '331', '2017-11-18 10:57:40', '2017-11-18 10:57:40');
INSERT INTO `products_types` VALUES ('331', '18', '332', '2017-11-18 11:01:32', '2017-11-18 11:01:32');
INSERT INTO `products_types` VALUES ('332', '18', '333', '2017-11-18 11:05:19', '2017-11-18 11:05:19');
INSERT INTO `products_types` VALUES ('333', '18', '334', '2017-11-18 11:17:46', '2017-11-18 11:17:46');
INSERT INTO `products_types` VALUES ('334', '10', '335', '2017-11-18 11:24:17', '2017-11-18 11:24:17');
INSERT INTO `products_types` VALUES ('335', '11', '336', '2017-11-18 12:26:26', '2017-11-18 12:26:26');
INSERT INTO `products_types` VALUES ('336', '11', '337', '2017-11-18 12:29:55', '2017-11-18 12:29:55');
INSERT INTO `products_types` VALUES ('337', '11', '338', '2017-11-18 13:35:28', '2017-11-18 13:35:28');
INSERT INTO `products_types` VALUES ('338', '18', '339', '2017-11-18 13:40:11', '2017-11-18 13:40:11');
INSERT INTO `products_types` VALUES ('339', '17', '340', '2017-11-18 13:50:20', '2017-11-18 13:50:20');
INSERT INTO `products_types` VALUES ('340', '40', '341', '2017-11-18 14:58:16', '2017-11-18 14:58:16');
INSERT INTO `products_types` VALUES ('341', '40', '342', '2017-11-18 15:02:04', '2017-11-18 15:02:04');
INSERT INTO `products_types` VALUES ('342', '40', '343', '2017-11-18 15:03:01', '2017-11-18 15:03:01');
INSERT INTO `products_types` VALUES ('343', '31', '344', '2017-11-18 15:13:00', '2017-11-18 15:13:00');
INSERT INTO `products_types` VALUES ('344', '31', '345', '2017-11-18 15:14:39', '2017-11-18 15:14:39');
INSERT INTO `products_types` VALUES ('345', '23', '346', '2017-11-18 15:32:28', '2017-11-18 15:32:28');
INSERT INTO `products_types` VALUES ('346', '41', '347', '2017-11-18 15:37:10', '2017-11-18 15:37:10');
INSERT INTO `products_types` VALUES ('347', '41', '348', '2017-11-18 15:40:39', '2017-11-18 15:40:39');
INSERT INTO `products_types` VALUES ('348', '41', '349', '2017-11-18 15:46:10', '2017-11-18 15:46:10');
INSERT INTO `products_types` VALUES ('349', '42', '350', '2017-11-18 15:59:48', '2017-11-18 15:59:48');
INSERT INTO `products_types` VALUES ('350', '42', '351', '2017-11-18 16:00:53', '2017-11-18 16:00:53');
INSERT INTO `products_types` VALUES ('351', '42', '352', '2017-11-18 16:01:53', '2017-11-18 16:01:53');
INSERT INTO `products_types` VALUES ('352', '43', '353', '2017-11-20 08:59:20', '2017-11-20 08:59:20');
INSERT INTO `products_types` VALUES ('353', '43', '354', '2017-11-20 09:02:49', '2017-11-20 09:02:49');
INSERT INTO `products_types` VALUES ('354', '43', '355', '2017-11-20 09:05:55', '2017-11-20 09:05:55');
INSERT INTO `products_types` VALUES ('355', '43', '356', '2017-11-20 09:09:34', '2017-11-20 09:09:34');
INSERT INTO `products_types` VALUES ('356', '43', '357', '2017-11-20 09:13:16', '2017-11-20 09:13:16');
INSERT INTO `products_types` VALUES ('357', '43', '358', '2017-11-20 09:16:05', '2017-11-20 09:16:05');
INSERT INTO `products_types` VALUES ('358', '43', '359', '2017-11-20 09:19:21', '2017-11-20 09:19:21');
INSERT INTO `products_types` VALUES ('359', '44', '360', '2017-11-24 09:20:08', '2017-11-24 09:20:08');
INSERT INTO `products_types` VALUES ('360', '44', '361', '2017-11-24 09:31:41', '2017-11-24 09:31:41');
INSERT INTO `products_types` VALUES ('361', '24', '362', '2017-11-24 09:39:33', '2017-11-24 09:39:33');
INSERT INTO `products_types` VALUES ('389', '10', '390', '2017-11-30 11:39:41', '2017-11-30 11:39:41');
INSERT INTO `products_types` VALUES ('390', '22', '391', '2017-11-30 11:39:46', '2017-11-30 11:39:46');
INSERT INTO `products_types` VALUES ('391', '43', '392', '2017-11-30 17:21:29', '2017-11-30 17:21:29');
INSERT INTO `products_types` VALUES ('392', '45', '393', '2017-12-19 10:05:45', '2017-12-19 10:05:45');
INSERT INTO `products_types` VALUES ('393', '10', '394', '2017-12-27 09:17:36', '2017-12-27 09:17:36');

-- ----------------------------
-- Table structure for product_actions
-- ----------------------------
DROP TABLE IF EXISTS `product_actions`;
CREATE TABLE `product_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `action` varchar(20) NOT NULL,
  `val` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_p_a_user_id` (`user_id`) USING BTREE,
  KEY `fk_prodiuct` (`product_id`) USING BTREE,
  CONSTRAINT `product_actions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_actions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_actions
-- ----------------------------

-- ----------------------------
-- Table structure for recently_viewed
-- ----------------------------
DROP TABLE IF EXISTS `recently_viewed`;
CREATE TABLE `recently_viewed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(100) NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_session_unique` (`session_id`,`product_id`) USING BTREE,
  KEY `fk_rwp` (`product_id`) USING BTREE,
  CONSTRAINT `recently_viewed_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2967 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recently_viewed
-- ----------------------------
INSERT INTO `recently_viewed` VALUES ('2951', 'vSMwDoDWQlAu0VMMAqWODKghzCDg96F7Y8KrvV4h', '15', '2018-01-02 22:29:23', '2018-01-02 22:29:23');
INSERT INTO `recently_viewed` VALUES ('2956', 'vSMwDoDWQlAu0VMMAqWODKghzCDg96F7Y8KrvV4h', '392', '2018-01-02 23:19:12', '2018-01-02 23:19:12');
INSERT INTO `recently_viewed` VALUES ('2958', 'vSMwDoDWQlAu0VMMAqWODKghzCDg96F7Y8KrvV4h', '80', '2018-01-02 23:19:32', '2018-01-02 23:19:32');
INSERT INTO `recently_viewed` VALUES ('2959', 'vSMwDoDWQlAu0VMMAqWODKghzCDg96F7Y8KrvV4h', '193', '2018-01-02 23:22:54', '2018-01-02 23:22:54');
INSERT INTO `recently_viewed` VALUES ('2960', 'BVNPMYda0RwP7z24LeybWkgE8wyI4TKLDM5Jor8r', '391', '2018-01-04 15:52:12', '2018-01-04 15:52:12');
INSERT INTO `recently_viewed` VALUES ('2963', 'vM14b1p3PgyPwGsHPlhTV20bKcOB46a06VTpTyus', '15', '2018-01-07 23:24:10', '2018-01-07 23:24:10');
INSERT INTO `recently_viewed` VALUES ('2966', 'vM14b1p3PgyPwGsHPlhTV20bKcOB46a06VTpTyus', '34', '2018-01-08 00:16:37', '2018-01-08 00:16:37');

-- ----------------------------
-- Table structure for references
-- ----------------------------
DROP TABLE IF EXISTS `references`;
CREATE TABLE `references` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brand_ref_name_unique` (`brand_id`,`name`) USING BTREE,
  CONSTRAINT `references_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of references
-- ----------------------------
INSERT INTO `references` VALUES ('92', '1', 'iPhone 7', null, '2017-02-03 13:56:53', '2017-02-03 13:56:53');
INSERT INTO `references` VALUES ('93', '2', 'J2 Prime SM-G532M', null, '2017-02-03 22:19:16', '2017-02-03 22:19:16');
INSERT INTO `references` VALUES ('94', '2', 'J7 SM-J700M', null, '2017-02-03 22:19:23', '2017-02-03 22:19:23');
INSERT INTO `references` VALUES ('95', '2', 'J5 Prime Duos SM-G570M/DS', null, '2017-02-03 22:19:27', '2017-02-03 22:19:27');
INSERT INTO `references` VALUES ('96', '2', 'A5 2016 SM-A5100', null, '2017-02-03 22:19:29', '2017-02-03 22:19:29');
INSERT INTO `references` VALUES ('97', '2', 'J1 Ace Duos SM-J111M/DS', null, '2017-02-03 22:19:32', '2017-02-03 22:19:32');
INSERT INTO `references` VALUES ('98', '2', 'J5 SM-J500M', null, '2017-02-03 22:21:09', '2017-02-03 22:21:09');
INSERT INTO `references` VALUES ('99', '4', 'Onyx', null, '2017-02-04 11:12:38', '2017-02-04 11:12:38');
INSERT INTO `references` VALUES ('100', '6', 's5005', null, '2017-02-04 11:30:53', '2017-02-04 11:30:53');
INSERT INTO `references` VALUES ('101', '5', 'Ilium X110', null, '2017-02-04 11:42:42', '2017-02-04 11:42:42');
INSERT INTO `references` VALUES ('102', '4', 'Lynx', null, '2017-02-04 11:55:40', '2017-02-04 11:55:40');
INSERT INTO `references` VALUES ('103', '7', 'Pixi 3 4009A', null, '2017-02-04 12:08:05', '2017-02-04 12:08:05');
INSERT INTO `references` VALUES ('104', '3', 'ECO LUA-L23', null, '2017-02-04 12:15:24', '2017-02-04 12:15:24');
INSERT INTO `references` VALUES ('105', '3', 'P8 Lite ALE-L23', null, '2017-02-04 12:27:17', '2017-02-04 12:27:17');
INSERT INTO `references` VALUES ('106', '3', 'P9 Lite VNS-L23', null, '2017-02-04 12:36:17', '2017-02-04 12:36:17');
INSERT INTO `references` VALUES ('107', '8', 'Moto G4 Play XT1601', null, '2017-02-04 12:45:12', '2017-02-04 12:45:12');
INSERT INTO `references` VALUES ('108', '2', 'OE-HS130GEGWW', null, '2017-02-04 13:27:23', '2017-02-04 13:27:23');
INSERT INTO `references` VALUES ('109', '9', 'Samsung J5', null, '2017-02-04 14:00:14', '2017-02-04 14:00:14');
INSERT INTO `references` VALUES ('110', '10', 'Samsung J5', null, '2017-02-04 14:55:15', '2017-02-04 14:55:15');
INSERT INTO `references` VALUES ('111', '11', 'Samsung J5', null, '2017-02-04 14:59:33', '2017-02-04 14:59:33');
INSERT INTO `references` VALUES ('112', '12', 'Samsung J5', null, '2017-02-04 15:11:05', '2017-02-04 15:11:05');
INSERT INTO `references` VALUES ('113', '8', 'XT1563 ', null, '2017-02-05 01:39:06', '2017-02-05 01:39:06');
INSERT INTO `references` VALUES ('114', '8', 'XT1621', null, '2017-02-05 01:39:09', '2017-02-05 01:39:09');
INSERT INTO `references` VALUES ('115', '2', 'J1 Ace SM-J111M/DS', null, '2017-02-05 01:45:25', '2017-02-05 01:45:25');
INSERT INTO `references` VALUES ('116', '2', 'J1 2016 SM-J120H', null, '2017-02-05 01:45:32', '2017-02-05 01:45:32');
INSERT INTO `references` VALUES ('117', '2', 'J1 Mini Prime Duos SM-J106B/DS', null, '2017-02-05 01:45:34', '2017-02-05 01:45:34');
INSERT INTO `references` VALUES ('118', '3', 'Ascend G630', null, '2017-02-05 02:05:20', '2017-02-05 02:05:20');
INSERT INTO `references` VALUES ('119', '3', 'Y5 II CUN-L23', null, '2017-02-05 02:05:22', '2017-02-05 02:05:22');
INSERT INTO `references` VALUES ('120', '3', 'Y5 Y560-L02', null, '2017-02-05 02:05:24', '2017-02-05 02:05:24');
INSERT INTO `references` VALUES ('121', '3', 'Y600-U351', null, '2017-02-05 02:05:25', '2017-02-05 02:05:25');
INSERT INTO `references` VALUES ('122', '3', 'G6', null, '2017-02-05 02:05:25', '2017-02-05 02:05:25');
INSERT INTO `references` VALUES ('123', '13', 'Voyage', null, '2017-02-08 16:48:25', '2017-02-08 16:48:25');
INSERT INTO `references` VALUES ('124', '2', 'Galaxy J7 Prime SM-G610M/DS', null, '2017-02-24 09:32:54', '2017-02-24 09:32:54');
INSERT INTO `references` VALUES ('125', '2', 'Galaxy J5 (6) SM-J510MN/DS', null, '2017-02-24 09:47:07', '2017-02-24 09:47:07');
INSERT INTO `references` VALUES ('126', '2', 'Galaxy J7 (6) SM-J710MN/DS', null, '2017-02-24 09:55:27', '2017-02-24 09:55:27');
INSERT INTO `references` VALUES ('127', '3', 'G Play Mini CHC-U03', null, '2017-02-24 10:05:07', '2017-02-24 10:05:07');
INSERT INTO `references` VALUES ('128', '14', 'D245', null, '2017-02-24 10:13:19', '2017-02-24 10:13:19');
INSERT INTO `references` VALUES ('129', '15', 'A35S', null, '2017-02-24 10:25:27', '2017-02-24 10:25:27');
INSERT INTO `references` VALUES ('130', '16', 'Fly 2.4', null, '2017-02-24 11:06:56', '2017-02-24 11:06:56');
INSERT INTO `references` VALUES ('131', '17', 'Xcover V6', null, '2017-02-24 11:59:09', '2017-02-24 11:59:09');
INSERT INTO `references` VALUES ('132', '16', 'Ultra 220', null, '2017-02-24 12:11:50', '2017-02-24 12:11:50');
INSERT INTO `references` VALUES ('133', '7', '1050A', null, '2017-02-24 12:18:35', '2017-02-24 12:18:35');
INSERT INTO `references` VALUES ('134', '18', 'B220', null, '2017-02-24 12:24:52', '2017-02-24 12:24:52');
INSERT INTO `references` VALUES ('135', '3', 'Y3 Y360-U03', null, '2017-02-24 12:30:16', '2017-02-24 12:30:16');
INSERT INTO `references` VALUES ('136', '2', 'Galaxy Core Prime SM-G355M', null, '2017-03-01 10:12:50', '2017-03-01 10:12:50');
INSERT INTO `references` VALUES ('137', '12', 'Samsung J7 Prime', null, '2017-03-01 10:52:08', '2017-03-01 10:52:08');
INSERT INTO `references` VALUES ('138', '9', 'Samsung J7 Prime', null, '2017-03-01 11:26:33', '2017-03-01 11:26:33');
INSERT INTO `references` VALUES ('139', '12', 'Super Mario', null, '2017-03-28 21:52:39', '2017-03-28 21:52:39');
INSERT INTO `references` VALUES ('140', '12', 'Hello Kitty', null, '2017-03-28 21:57:20', '2017-03-28 21:57:20');
INSERT INTO `references` VALUES ('141', '12', 'Mickey Mouse', null, '2017-03-28 21:59:28', '2017-03-28 21:59:28');
INSERT INTO `references` VALUES ('142', '12', 'ZiPP EARPHONE', null, '2017-03-28 22:01:57', '2017-03-28 22:01:57');
INSERT INTO `references` VALUES ('143', '12', 'RAEN', null, '2017-03-28 22:07:13', '2017-03-28 22:07:13');
INSERT INTO `references` VALUES ('144', '12', 'Nike', null, '2017-03-28 22:08:25', '2017-03-28 22:08:25');
INSERT INTO `references` VALUES ('145', '12', 'LUGO', null, '2017-03-28 22:10:15', '2017-03-28 22:10:15');
INSERT INTO `references` VALUES ('146', '12', 'SONY', null, '2017-03-28 22:13:44', '2017-03-28 22:13:44');
INSERT INTO `references` VALUES ('147', '12', 'Adidas', null, '2017-03-28 22:17:30', '2017-03-28 22:17:30');
INSERT INTO `references` VALUES ('148', '12', 'JBL', null, '2017-03-28 22:18:43', '2017-03-28 22:18:43');
INSERT INTO `references` VALUES ('149', '12', 'REMAX', null, '2017-03-28 22:19:28', '2017-03-28 22:19:28');
INSERT INTO `references` VALUES ('150', '12', 'Super BASS', null, '2017-03-28 22:23:47', '2017-03-28 22:23:47');
INSERT INTO `references` VALUES ('151', '12', 'iPhone', null, '2017-03-28 22:28:39', '2017-03-28 22:28:39');
INSERT INTO `references` VALUES ('152', '12', 'Colourful', null, '2017-03-28 22:29:44', '2017-03-28 22:29:44');
INSERT INTO `references` VALUES ('153', '12', 'ZOMAR', null, '2017-04-02 22:48:31', '2017-04-02 22:48:31');
INSERT INTO `references` VALUES ('154', '12', 'NIA', null, '2017-04-02 22:56:58', '2017-04-02 22:56:58');
INSERT INTO `references` VALUES ('155', '12', 'Bluetooth', null, '2017-04-02 23:10:55', '2017-04-02 23:10:55');
INSERT INTO `references` VALUES ('156', '12', 'Beats', null, '2017-04-02 23:15:23', '2017-04-02 23:15:23');
INSERT INTO `references` VALUES ('157', '12', 'GIGO', null, '2017-04-02 23:16:52', '2017-04-02 23:16:52');
INSERT INTO `references` VALUES ('158', '12', 'Parlante', null, '2017-04-02 23:20:21', '2017-04-02 23:20:21');
INSERT INTO `references` VALUES ('159', '12', 'Royal', null, '2017-04-02 23:27:20', '2017-04-02 23:27:20');
INSERT INTO `references` VALUES ('160', '12', 'KINOTEC', null, '2017-04-02 23:36:16', '2017-04-02 23:36:16');
INSERT INTO `references` VALUES ('161', '12', 'test', null, '2017-04-06 16:39:26', '2017-04-06 16:39:26');
INSERT INTO `references` VALUES ('162', '8', 'Moto G5 Plus', 'XT1681', '2017-06-22 10:05:31', '2017-06-22 10:05:31');
INSERT INTO `references` VALUES ('163', '12', 'Mp3', null, '2017-06-27 11:49:17', '2017-06-27 11:49:17');
INSERT INTO `references` VALUES ('164', '2', 'Galaxy j5 SM-J500M/DS', null, '2017-06-28 13:59:19', '2017-06-28 13:59:19');
INSERT INTO `references` VALUES ('165', '19', 'M10', null, '2017-08-01 10:08:27', '2017-08-01 10:08:27');
INSERT INTO `references` VALUES ('166', '12', 'cable 2x1', null, '2017-08-02 14:47:44', '2017-08-02 14:47:44');
INSERT INTO `references` VALUES ('167', '12', 'Estuche', null, '2017-08-08 13:15:31', '2017-08-08 13:15:31');
INSERT INTO `references` VALUES ('168', '2', 'Estuche', null, '2017-08-08 13:25:39', '2017-08-08 13:25:39');
INSERT INTO `references` VALUES ('169', '10', 'Estuche', null, '2017-08-08 14:45:29', '2017-08-08 14:45:29');
INSERT INTO `references` VALUES ('170', '9', 'Huawei P10 Lite', null, '2017-08-08 16:00:28', '2017-08-08 16:00:28');
INSERT INTO `references` VALUES ('171', '11', 'Motorola', null, '2017-08-08 16:22:37', '2017-08-08 16:22:37');
INSERT INTO `references` VALUES ('172', '12', 'Kit conetor', null, '2017-08-14 16:54:57', '2017-08-14 16:54:57');
INSERT INTO `references` VALUES ('173', '12', 'Holder', null, '2017-08-14 17:01:24', '2017-08-14 17:01:24');
INSERT INTO `references` VALUES ('174', '20', 'Holder', null, '2017-08-14 17:06:43', '2017-08-14 17:06:43');
INSERT INTO `references` VALUES ('175', '12', 'Vidrio', null, '2017-08-14 17:52:19', '2017-08-14 17:52:19');
INSERT INTO `references` VALUES ('176', '21', 'Vidrio', null, '2017-08-14 17:52:57', '2017-08-14 17:52:57');
INSERT INTO `references` VALUES ('177', '22', 'Vincha', null, '2017-08-14 18:14:57', '2017-08-14 18:14:57');
INSERT INTO `references` VALUES ('178', '8', 'moto c', null, '2017-08-21 14:44:01', '2017-08-21 14:44:01');
INSERT INTO `references` VALUES ('179', '3', 'y5 lite 2017', null, '2017-08-21 14:50:11', '2017-08-21 14:50:11');
INSERT INTO `references` VALUES ('180', '1', 'iPhone 7 plus red', null, '2017-08-21 15:07:21', '2017-08-21 15:07:21');
INSERT INTO `references` VALUES ('181', '2', 'j7 neo', null, '2017-08-21 15:08:34', '2017-08-21 15:08:34');
INSERT INTO `references` VALUES ('182', '12', 'HOLD-073', null, '2017-11-16 09:50:22', '2017-11-16 09:50:22');
INSERT INTO `references` VALUES ('183', '3', 'Y7 Prime TRT-L53', null, '2017-11-16 10:38:18', '2017-11-16 10:38:18');
INSERT INTO `references` VALUES ('184', '3', 'Y5 II CUN-U29', null, '2017-11-16 11:01:20', '2017-11-16 11:01:20');
INSERT INTO `references` VALUES ('185', '2', 'J5 Prime TM-16-0267', null, '2017-11-16 11:42:49', '2017-11-16 11:42:49');
INSERT INTO `references` VALUES ('186', '2', 'SM-J530G/DS', null, '2017-11-16 12:36:02', '2017-11-16 12:36:02');
INSERT INTO `references` VALUES ('187', '18', 'LG Risio 2 DLGN5008', null, '2017-11-16 12:49:04', '2017-11-16 12:49:04');
INSERT INTO `references` VALUES ('188', '7', 'Pixi 4 Theatre  DAL N3004', null, '2017-11-16 13:06:02', '2017-11-16 13:06:02');
INSERT INTO `references` VALUES ('189', '18', 'LG-VS425/K4', null, '2017-11-16 13:22:01', '2017-11-16 13:22:01');
INSERT INTO `references` VALUES ('190', '18', 'LG K8 Negro', null, '2017-11-16 14:13:36', '2017-11-16 14:13:36');
INSERT INTO `references` VALUES ('191', '2', 'Samsung J120AUCU2AP', null, '2017-11-16 14:28:43', '2017-11-16 14:28:43');
INSERT INTO `references` VALUES ('192', '7', 'Alcatel Ideal  TCT-4060A IDEAL', null, '2017-11-16 14:39:40', '2017-11-16 14:39:40');
INSERT INTO `references` VALUES ('193', '7', 'Pixi 3 4009F- 2ALDUS1', null, '2017-11-16 14:59:42', '2017-11-16 14:59:42');
INSERT INTO `references` VALUES ('194', '8', 'Moto C Plus XT1723', null, '2017-11-16 15:04:19', '2017-11-16 15:04:19');
INSERT INTO `references` VALUES ('195', '8', 'Moto G4 XT1621', null, '2017-11-16 15:16:32', '2017-11-16 15:16:32');
INSERT INTO `references` VALUES ('196', '23', 'CAT B25  ', null, '2017-11-16 15:30:50', '2017-11-16 15:30:50');
INSERT INTO `references` VALUES ('197', '8', 'Moto C XT1750', null, '2017-11-16 15:51:09', '2017-11-16 15:51:09');
INSERT INTO `references` VALUES ('198', '24', 'Telefono', null, '2017-11-16 16:10:10', '2017-11-16 16:10:10');
INSERT INTO `references` VALUES ('199', '24', 'quick QB1801', null, '2017-11-16 16:11:53', '2017-11-16 16:11:53');
INSERT INTO `references` VALUES ('200', '12', 'Mobile Mini MTK6250M', null, '2017-11-16 16:24:42', '2017-11-16 16:24:42');
INSERT INTO `references` VALUES ('201', '7', 'Alcatel one touch 1050A', null, '2017-11-16 16:34:33', '2017-11-16 16:34:33');
INSERT INTO `references` VALUES ('202', '15', 'Azumi L2Z PRE', null, '2017-11-16 16:53:15', '2017-11-16 16:53:15');
INSERT INTO `references` VALUES ('203', '25', 'SKY Fuego 5.0+', null, '2017-11-16 17:01:57', '2017-11-16 17:01:57');
INSERT INTO `references` VALUES ('204', '25', 'SKY desvices Elite 6.0+', null, '2017-11-16 17:15:06', '2017-11-16 17:15:06');
INSERT INTO `references` VALUES ('205', '25', 'Sky Platinum 5.5C ', null, '2017-11-16 17:25:08', '2017-11-16 17:25:08');
INSERT INTO `references` VALUES ('206', '25', 'Sky Platinum 5.0W', null, '2017-11-16 17:44:15', '2017-11-16 17:44:15');
INSERT INTO `references` VALUES ('207', '25', 'Sky Desvice Fuego 5.0+', null, '2017-11-16 18:00:37', '2017-11-16 18:00:37');
INSERT INTO `references` VALUES ('208', '25', 'Sky Platinum 4.0 blanco', null, '2017-11-16 18:10:45', '2017-11-16 18:10:45');
INSERT INTO `references` VALUES ('209', '25', 'Sky platinum 4.0 rosado', null, '2017-11-16 18:15:11', '2017-11-16 18:15:11');
INSERT INTO `references` VALUES ('210', '26', 'XBOX 360 Negro', null, '2017-11-17 08:29:26', '2017-11-17 08:29:26');
INSERT INTO `references` VALUES ('211', '26', 'XBOX ONE Negro', null, '2017-11-17 08:38:03', '2017-11-17 08:38:03');
INSERT INTO `references` VALUES ('212', '27', 'Play Station', null, '2017-11-17 09:11:34', '2017-11-17 09:11:34');
INSERT INTO `references` VALUES ('213', '27', 'PSP', null, '2017-11-17 09:20:48', '2017-11-17 09:20:48');
INSERT INTO `references` VALUES ('214', '26', 'CONTROL XBOX ONE', null, '2017-11-17 09:33:38', '2017-11-17 09:33:38');
INSERT INTO `references` VALUES ('215', '27', 'Control PlayStation', null, '2017-11-17 09:42:36', '2017-11-17 09:42:36');
INSERT INTO `references` VALUES ('216', '28', 'Audio Portable', null, '2017-11-17 09:59:51', '2017-11-17 09:59:51');
INSERT INTO `references` VALUES ('217', '29', 'Parlantes', null, '2017-11-17 11:39:46', '2017-11-17 11:39:46');
INSERT INTO `references` VALUES ('218', '30', 'Impresoras', null, '2017-11-17 11:56:11', '2017-11-17 11:56:11');
INSERT INTO `references` VALUES ('219', '12', 'Tablets', null, '2017-11-17 12:18:53', '2017-11-17 12:18:53');
INSERT INTO `references` VALUES ('220', '12', 'Tablets U0LL', null, '2017-11-17 12:19:44', '2017-11-17 12:19:44');
INSERT INTO `references` VALUES ('221', '12', 'Tablest CTech', null, '2017-11-17 12:31:58', '2017-11-17 12:31:58');
INSERT INTO `references` VALUES ('222', '30', 'Epson L380', null, '2017-11-17 14:00:15', '2017-11-17 14:00:15');
INSERT INTO `references` VALUES ('223', '30', 'Epson L395', null, '2017-11-17 14:04:56', '2017-11-17 14:04:56');
INSERT INTO `references` VALUES ('224', '12', 'Base Portatil', null, '2017-11-17 14:13:11', '2017-11-17 14:13:11');
INSERT INTO `references` VALUES ('225', '12', 'Ventilador Portatil', null, '2017-11-17 14:15:08', '2017-11-17 14:15:08');
INSERT INTO `references` VALUES ('226', '12', 'MapaMundo', null, '2017-11-17 14:27:19', '2017-11-17 14:27:19');
INSERT INTO `references` VALUES ('227', '22', 'Teclado', null, '2017-11-17 14:33:37', '2017-11-17 14:33:37');
INSERT INTO `references` VALUES ('228', '12', 'Teclado', null, '2017-11-17 14:38:53', '2017-11-17 14:38:53');
INSERT INTO `references` VALUES ('229', '12', 'Mouses', null, '2017-11-17 14:53:18', '2017-11-17 14:53:18');
INSERT INTO `references` VALUES ('230', '22', 'Mouse', null, '2017-11-17 15:12:18', '2017-11-17 15:12:18');
INSERT INTO `references` VALUES ('231', '12', 'Camara Web', null, '2017-11-17 15:19:02', '2017-11-17 15:19:02');
INSERT INTO `references` VALUES ('232', '12', 'Auricular', null, '2017-11-17 16:11:49', '2017-11-17 16:11:49');
INSERT INTO `references` VALUES ('233', '20', 'Cargador Portatil', null, '2017-11-17 16:29:26', '2017-11-17 16:29:26');
INSERT INTO `references` VALUES ('234', '12', 'Cargador Portatil', null, '2017-11-17 16:46:35', '2017-11-17 16:46:35');
INSERT INTO `references` VALUES ('235', '20', 'Camara Para Vehiculo', null, '2017-11-17 17:07:29', '2017-11-17 17:07:29');
INSERT INTO `references` VALUES ('236', '20', 'Cargador Para Carro', null, '2017-11-17 17:14:41', '2017-11-17 17:14:41');
INSERT INTO `references` VALUES ('237', '31', 'USB Kingston 32GB', null, '2017-11-17 17:24:10', '2017-11-17 17:24:10');
INSERT INTO `references` VALUES ('238', '31', 'USB Kingston 4GB', null, '2017-11-17 17:30:44', '2017-11-17 17:30:44');
INSERT INTO `references` VALUES ('239', '31', 'Micro SD 4GB', null, '2017-11-17 17:34:07', '2017-11-17 17:34:07');
INSERT INTO `references` VALUES ('240', '31', 'Memoria USB 16GB', null, '2017-11-17 17:38:32', '2017-11-17 17:38:32');
INSERT INTO `references` VALUES ('241', '26', 'Control XBOX 360', null, '2017-11-17 17:44:41', '2017-11-17 17:44:41');
INSERT INTO `references` VALUES ('242', '12', 'Guaya', null, '2017-11-17 17:54:15', '2017-11-17 17:54:15');
INSERT INTO `references` VALUES ('243', '12', 'Guaya MST-1038G-2', null, '2017-11-17 17:54:55', '2017-11-17 17:54:55');
INSERT INTO `references` VALUES ('244', '12', 'Cable HDMI 1x2', null, '2017-11-17 18:05:45', '2017-11-17 18:05:45');
INSERT INTO `references` VALUES ('245', '2', 'Cargador', null, '2017-11-18 10:01:11', '2017-11-18 10:01:11');
INSERT INTO `references` VALUES ('246', '2', 'Cargador Led 2en1', null, '2017-11-18 10:01:41', '2017-11-18 10:01:41');
INSERT INTO `references` VALUES ('247', '3', 'Cargador Huawei', null, '2017-11-18 10:10:38', '2017-11-18 10:10:38');
INSERT INTO `references` VALUES ('248', '12', 'Cargador de Celular ', null, '2017-11-18 10:13:43', '2017-11-18 10:13:43');
INSERT INTO `references` VALUES ('249', '12', 'Cable VGA', null, '2017-11-18 10:17:53', '2017-11-18 10:17:53');
INSERT INTO `references` VALUES ('250', '12', 'Cable CBL-USBEX/10cm', null, '2017-11-18 10:25:19', '2017-11-18 10:25:19');
INSERT INTO `references` VALUES ('251', '12', 'Cable V8 LAZO', null, '2017-11-18 10:32:31', '2017-11-18 10:32:31');
INSERT INTO `references` VALUES ('252', '12', 'Cable HDMI', null, '2017-11-18 10:38:16', '2017-11-18 10:38:16');
INSERT INTO `references` VALUES ('253', '12', 'Cable 3x3 de 1.5', null, '2017-11-18 10:42:18', '2017-11-18 10:42:18');
INSERT INTO `references` VALUES ('254', '12', 'Cable IPH 4', null, '2017-11-18 10:51:12', '2017-11-18 10:51:12');
INSERT INTO `references` VALUES ('255', '12', 'Cable Universal', null, '2017-11-18 11:00:43', '2017-11-18 11:00:43');
INSERT INTO `references` VALUES ('256', '12', 'Cable IPH 6', null, '2017-11-18 11:04:14', '2017-11-18 11:04:14');
INSERT INTO `references` VALUES ('257', '12', 'Cable Para Impresora', null, '2017-11-18 11:16:03', '2017-11-18 11:16:03');
INSERT INTO `references` VALUES ('258', '20', 'Cable RC-039W', null, '2017-11-18 11:22:28', '2017-11-18 11:22:28');
INSERT INTO `references` VALUES ('259', '2', 'Audífonos Samsung', null, '2017-11-18 12:23:44', '2017-11-18 12:23:44');
INSERT INTO `references` VALUES ('260', '1', 'Audífonos Iphone Blanco', null, '2017-11-18 13:33:41', '2017-11-18 13:33:41');
INSERT INTO `references` VALUES ('261', '12', 'Cablr USB 5en1', null, '2017-11-18 13:36:12', '2017-11-18 13:36:12');
INSERT INTO `references` VALUES ('262', '12', 'Modulador FM', null, '2017-11-18 13:45:12', '2017-11-18 13:45:12');
INSERT INTO `references` VALUES ('263', '12', 'MP4', null, '2017-11-18 14:53:52', '2017-11-18 14:53:52');
INSERT INTO `references` VALUES ('264', '12', 'Control PC', null, '2017-11-18 15:20:06', '2017-11-18 15:20:06');
INSERT INTO `references` VALUES ('265', '12', 'Puertos', null, '2017-11-18 15:35:18', '2017-11-18 15:35:18');
INSERT INTO `references` VALUES ('266', '12', 'Soporte TV', null, '2017-11-18 15:56:03', '2017-11-18 15:56:03');
INSERT INTO `references` VALUES ('267', '3', 'Batería Huawei Y30', null, '2017-11-20 08:57:25', '2017-11-20 08:57:25');
INSERT INTO `references` VALUES ('268', '3', 'Batería Huawei G610', null, '2017-11-20 09:00:45', '2017-11-20 09:00:45');
INSERT INTO `references` VALUES ('269', '7', 'Bateria Alcatel 6030', null, '2017-11-20 09:04:42', '2017-11-20 09:04:42');
INSERT INTO `references` VALUES ('270', '7', 'Batería Alcatel OT 710', null, '2017-11-20 09:08:23', '2017-11-20 09:08:23');
INSERT INTO `references` VALUES ('271', '7', 'Bateria Alcatel POP C1', null, '2017-11-20 09:12:04', '2017-11-20 09:12:04');
INSERT INTO `references` VALUES ('272', '3', 'Batería Huawei Y5 II', null, '2017-11-20 09:15:32', '2017-11-20 09:15:32');
INSERT INTO `references` VALUES ('273', '3', 'Batería Huawei Y511', null, '2017-11-20 09:18:50', '2017-11-20 09:18:50');
INSERT INTO `references` VALUES ('274', '32', 'Lenovo V110-14IAP', null, '2017-11-24 09:11:53', '2017-11-24 09:11:53');
INSERT INTO `references` VALUES ('275', '33', 'Portátil acer Aspire ES 14', null, '2017-11-24 09:27:41', '2017-11-24 09:27:41');
INSERT INTO `references` VALUES ('276', '25', 'Sky Platinum 7.0+', null, '2017-11-24 09:35:50', '2017-11-24 09:35:50');
INSERT INTO `references` VALUES ('277', '27', 'PSP VITA', null, '2017-11-30 10:36:04', '2017-11-30 10:36:04');
INSERT INTO `references` VALUES ('278', '16', 'Social Sport ultra ', null, '2017-11-30 11:12:28', '2017-11-30 11:12:28');
INSERT INTO `references` VALUES ('279', '2', 'Bateria J2 Prime', null, '2017-11-30 17:20:38', '2017-11-30 17:20:38');
INSERT INTO `references` VALUES ('280', '27', 'PlayStation 4', null, '2017-12-19 10:02:54', '2017-12-19 10:02:54');
INSERT INTO `references` VALUES ('281', '7', 'Pixi 4G', null, '2017-12-27 09:16:07', '2017-12-27 09:16:07');
INSERT INTO `references` VALUES ('282', '36', 'Slim', null, '2018-01-11 14:06:38', '2018-01-11 14:06:38');
INSERT INTO `references` VALUES ('283', '36', 'delgado', null, '2018-01-11 14:08:11', '2018-01-11 14:08:11');
INSERT INTO `references` VALUES ('284', '45', 'pichi 3', null, '2018-01-23 17:49:37', '2018-01-23 17:49:37');
INSERT INTO `references` VALUES ('285', '45', 'opee', null, '2018-01-23 17:57:02', '2018-01-23 17:57:02');
INSERT INTO `references` VALUES ('286', '45', 'que perra mas linda', null, '2018-01-23 18:00:26', '2018-01-23 18:00:26');
INSERT INTO `references` VALUES ('287', '7', 'pixi 8', null, '2018-01-23 18:09:10', '2018-01-23 18:09:10');
INSERT INTO `references` VALUES ('288', '7', 'pixi 9', null, '2018-01-23 18:11:28', '2018-01-23 18:11:28');
INSERT INTO `references` VALUES ('289', '7', 'pixi 10', null, '2018-01-23 18:13:04', '2018-01-23 18:13:04');
INSERT INTO `references` VALUES ('290', '7', 'alcatel xx', null, '2018-01-23 18:14:02', '2018-01-23 18:14:02');
INSERT INTO `references` VALUES ('291', '7', 'muchis', null, '2018-01-23 18:15:42', '2018-01-23 18:15:42');
INSERT INTO `references` VALUES ('292', '7', 'rubicom', null, '2018-01-23 18:16:15', '2018-01-23 18:16:15');
INSERT INTO `references` VALUES ('293', '7', 'rucbit', null, '2018-01-23 18:16:46', '2018-01-23 18:16:46');
INSERT INTO `references` VALUES ('294', '44', '12a', null, '2018-01-23 18:19:43', '2018-01-23 18:19:43');
INSERT INTO `references` VALUES ('295', '44', '13a', null, '2018-01-23 18:20:08', '2018-01-23 18:20:08');
INSERT INTO `references` VALUES ('296', '41', 'ddsdasd', null, '2018-01-23 18:20:21', '2018-01-23 18:20:21');
INSERT INTO `references` VALUES ('297', '7', 'assdasd', null, '2018-01-23 18:20:42', '2018-01-23 18:20:42');
INSERT INTO `references` VALUES ('298', '1', 'iphone x', null, '2018-01-23 18:21:45', '2018-01-23 18:21:45');
INSERT INTO `references` VALUES ('299', '2', 'galaxy s8 plus', 'sm-g955f', '2018-01-23 18:22:08', '2018-01-23 18:22:08');
INSERT INTO `references` VALUES ('300', '1', 'iphone z', 'a900', '2018-01-23 18:29:08', '2018-01-23 18:29:08');
INSERT INTO `references` VALUES ('301', '1', 'iphone 8s', 'a1485', '2018-01-23 18:30:41', '2018-01-23 18:30:41');
INSERT INTO `references` VALUES ('302', '19', 'm18', 'opc123', '2018-01-23 18:31:49', '2018-01-23 18:31:49');
INSERT INTO `references` VALUES ('303', '19', 'm09', 'opc7778', '2018-01-23 18:33:08', '2018-01-23 18:33:08');
INSERT INTO `references` VALUES ('304', '3', 'p10 lite', 'cra-l23', '2018-01-24 10:38:50', '2018-01-24 10:38:50');
INSERT INTO `references` VALUES ('305', '54', 'system', 'sys32', '2018-01-26 13:43:52', '2018-01-26 13:43:52');
INSERT INTO `references` VALUES ('306', '54', 'leego', 'system2', '2018-01-26 13:46:47', '2018-01-26 13:46:47');
INSERT INTO `references` VALUES ('307', '1', 'iphone xzs', 'b5451-45', '2018-01-26 13:47:07', '2018-01-26 13:47:07');
INSERT INTO `references` VALUES ('308', '1', 'iphone 7 plus', 'a1598', '2018-01-27 17:45:49', '2018-01-27 17:45:49');

-- ----------------------------
-- Table structure for serials
-- ----------------------------
DROP TABLE IF EXISTS `serials`;
CREATE TABLE `serials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `lot_id` int(10) unsigned NOT NULL,
  `serial` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serials_unique` (`product_id`,`serial`) USING BTREE,
  KEY `splid` (`lot_id`),
  CONSTRAINT `spidfk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `splid` FOREIGN KEY (`lot_id`) REFERENCES `lots` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serials
-- ----------------------------
INSERT INTO `serials` VALUES ('1', '15', '239', '12345678900125', null, null);
INSERT INTO `serials` VALUES ('2', '15', '239', '12345678900126', null, null);
INSERT INTO `serials` VALUES ('3', '15', '239', '12345678900127', null, null);

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `org_name` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_id` (`user_id`) USING BTREE,
  CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suppliers
-- ----------------------------
INSERT INTO `suppliers` VALUES ('1', '1', 'CELUCLOCK', '2017-02-01 23:47:46', '2017-02-01 23:47:48');

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `typenameunique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES ('10', 'telefonos', '2017-02-01 23:54:53', '2017-02-01 23:54:53');
INSERT INTO `types` VALUES ('11', 'audifonos', '2017-02-04 13:29:38', '2017-02-04 13:29:38');
INSERT INTO `types` VALUES ('12', 'protector', '2017-02-04 14:12:07', '2017-02-04 14:12:07');
INSERT INTO `types` VALUES ('13', 'perfumes', '2017-02-08 16:49:37', '2017-02-08 16:49:37');
INSERT INTO `types` VALUES ('14', 'parlantes', '2017-04-02 23:22:35', '2017-04-02 23:22:35');
INSERT INTO `types` VALUES ('15', 'radios', '2017-04-02 23:30:33', '2017-04-02 23:30:33');
INSERT INTO `types` VALUES ('16', 'vidrio templado', '2017-06-07 10:27:42', '2017-06-07 10:27:42');
INSERT INTO `types` VALUES ('17', 'Mp3', '2017-06-27 12:11:10', '2017-06-27 12:11:10');
INSERT INTO `types` VALUES ('18', 'cable', '2017-08-02 14:49:26', '2017-08-02 14:49:26');
INSERT INTO `types` VALUES ('19', 'Dispositivo', '2017-08-14 16:48:41', '2017-08-14 16:48:41');
INSERT INTO `types` VALUES ('20', 'Banco de poder', '2017-08-14 17:28:05', '2017-08-14 17:28:05');
INSERT INTO `types` VALUES ('21', 'accesorio para telefono', '2017-11-16 09:58:04', '2017-11-16 09:58:04');
INSERT INTO `types` VALUES ('22', 'Video juego', '2017-11-17 08:30:44', '2017-11-17 08:30:44');
INSERT INTO `types` VALUES ('23', 'Control PlayStation', '2017-11-17 09:45:32', '2017-11-17 09:45:32');
INSERT INTO `types` VALUES ('24', 'Tablets', '2017-11-17 12:24:44', '2017-11-17 12:24:44');
INSERT INTO `types` VALUES ('25', 'Impresora', '2017-11-17 14:02:28', '2017-11-17 14:02:28');
INSERT INTO `types` VALUES ('26', 'Ventilador Portatil', '2017-11-17 14:17:32', '2017-11-17 14:17:32');
INSERT INTO `types` VALUES ('27', 'MapaMundo', '2017-11-17 14:25:46', '2017-11-17 14:25:46');
INSERT INTO `types` VALUES ('28', 'Teclado', '2017-11-17 14:35:56', '2017-11-17 14:35:56');
INSERT INTO `types` VALUES ('29', 'Mouses', '2017-11-17 14:53:53', '2017-11-17 14:53:53');
INSERT INTO `types` VALUES ('30', 'Camara Web', '2017-11-17 15:19:54', '2017-11-17 15:19:54');
INSERT INTO `types` VALUES ('31', 'Auricular', '2017-11-17 16:12:39', '2017-11-17 16:12:39');
INSERT INTO `types` VALUES ('32', 'Cargador Portatil', '2017-11-17 16:33:51', '2017-11-17 16:33:51');
INSERT INTO `types` VALUES ('33', 'Camara Para Vehiculo', '2017-11-17 17:08:42', '2017-11-17 17:08:42');
INSERT INTO `types` VALUES ('34', 'Cargador Para Vehiculo', '2017-11-17 17:16:11', '2017-11-17 17:16:11');
INSERT INTO `types` VALUES ('35', 'Memoria USB', '2017-11-17 17:25:34', '2017-11-17 17:25:34');
INSERT INTO `types` VALUES ('36', 'Micro SD 4GB', '2017-11-17 17:34:59', '2017-11-17 17:34:59');
INSERT INTO `types` VALUES ('37', 'Control Xbox', '2017-11-17 17:45:57', '2017-11-17 17:45:57');
INSERT INTO `types` VALUES ('38', 'Guaya Para Computadores', '2017-11-17 17:58:15', '2017-11-17 17:58:15');
INSERT INTO `types` VALUES ('39', 'Cargadores', '2017-11-18 10:03:53', '2017-11-18 10:03:53');
INSERT INTO `types` VALUES ('40', 'MP4', '2017-11-18 14:57:10', '2017-11-18 14:57:10');
INSERT INTO `types` VALUES ('41', 'puertos', '2017-11-18 15:36:31', '2017-11-18 15:36:31');
INSERT INTO `types` VALUES ('42', 'Soporte TV', '2017-11-18 15:59:13', '2017-11-18 15:59:13');
INSERT INTO `types` VALUES ('43', 'Batería de Celulares', '2017-11-20 08:58:51', '2017-11-20 08:58:51');
INSERT INTO `types` VALUES ('44', 'Portatiles', '2017-11-24 09:15:52', '2017-11-24 09:15:52');
INSERT INTO `types` VALUES ('45', 'tipos de amores', '2018-01-24 11:48:44', '2018-01-24 11:48:44');
INSERT INTO `types` VALUES ('46', 'amores como el nuestros', '2018-01-24 11:49:32', '2018-01-24 11:49:32');
INSERT INTO `types` VALUES ('47', 'ppruebas', '2018-01-25 10:56:20', '2018-01-25 10:56:20');
INSERT INTO `types` VALUES ('48', 'ootrt', '2018-01-26 12:24:49', '2018-01-26 12:24:49');
INSERT INTO `types` VALUES ('49', 'purras', '2018-01-26 12:39:32', '2018-01-26 12:39:32');
INSERT INTO `types` VALUES ('50', 'perras', '2018-01-26 12:39:40', '2018-01-26 12:39:40');
INSERT INTO `types` VALUES ('51', 'putas', '2018-01-26 12:39:48', '2018-01-26 12:39:48');
INSERT INTO `types` VALUES ('52', 'muebles', '2018-01-26 12:40:29', '2018-01-26 12:40:29');
INSERT INTO `types` VALUES ('53', 'baños', '2018-01-26 12:40:35', '2018-01-26 12:40:35');
INSERT INTO `types` VALUES ('54', 'huy', '2018-01-26 13:07:40', '2018-01-26 13:07:40');
INSERT INTO `types` VALUES ('55', 'uuio', '2018-01-26 13:16:59', '2018-01-26 13:16:59');
INSERT INTO `types` VALUES ('56', 'adioowe', '2018-01-26 13:18:41', '2018-01-26 13:18:41');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `gender` enum('m','f') DEFAULT NULL,
  `role` enum('admin','user','seller') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `active` enum('true','false') NOT NULL DEFAULT 'true',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', null, 'Jose Ruben Giraldo Giraldo', '', null, 'celuclock2121@hotmail.com', null, '$2a$06$XlweZGVkcdjLzGrCVJ3.uO/pfmPW6Xjt43V0S4FRh0nPPME.L33fO', null, 'admin', 'tvY1ExqHJLrLWTvpdoQI9vdopOdy3CNrENUFMwnaXqcVJqi1xMNxKs7Mk9Pn', 'true', '2017-02-01 23:46:44', '2017-02-01 23:46:44');
INSERT INTO `users` VALUES ('2', '73215587', 'fernando', 'delgado camargo', 'CELUTIENDA', 'xferchox@hotmail.com', '1985-07-11', '$2y$10$2VxUwVKoQMK.5r0w6UWnle1KjJ4x5AVUXbDb1ueizYtO8V8v/IUma', 'm', 'admin', '7CaDCmWsM5TzC0JYZOPpX4xQGALGcnip09lKhpLOV6Qag4IOzZWtVtftxlbh', 'true', '2017-02-01 23:26:16', '2017-12-27 12:44:19');
INSERT INTO `users` VALUES ('12', '122323', 'Jhon Turizo', '', '', 'jhonsitociudadela@hotmail.com', '1990-02-12', '$2y$10$zzCHJTV5.sFAum9F4vXV8eYOgp6DqPVA7Mg2cU9b7g9VROH79qwfK', 'm', 'user', 'M7NWw9xV3Rp8rHMcyqp4pH4Dz37H4Bv0L0KBrl4mrrioUSn87yeHKLIsyiXO', 'true', '2017-03-27 10:10:42', '2017-06-07 10:35:39');
INSERT INTO `users` VALUES ('19', '1047365156', 'Julian Tabares', '', '', 'juliantabares@gmail.com', '1985-12-12', '$2y$10$ro4RzsmNRbAn8Fpmnuga/u8H985PfTMxivq4LpCCsZan5utJKs8iW', 'm', 'user', 'MII1fTyXpJ7QIz4ZihnmwXcFN5XDbBFXRmcB0kz06Ov9W6GBrQTbkei00wJI', 'true', '2017-04-20 17:18:34', '2017-04-20 17:19:36');
INSERT INTO `users` VALUES ('20', '1065661727', 'ana maria martelo cardona', '', '', 'martelo903@gmail.com', '1994-03-09', '$2y$10$POu2FgsBRNI/g2YUUjEYt.S/cbzP5DFMo1s9XvIVoIjO7rph5vY7u', 'f', 'user', 'vJHNerN40ymPrdXHsFV5MJL2iRafFnrFhOyHFb2muxGaxzLbbGBJH5vb2oA6', 'true', '2017-04-25 00:28:53', '2017-04-25 00:30:47');
INSERT INTO `users` VALUES ('21', '1050971021', 'Maria marin', '', '', 'mmarinflorez09@gmail.com', '1995-11-09', '$2y$10$CEeUrtxISJhl31RLHaZJu.2BOGGZNhTCufi988GXXx4Y3VdYBP6jK', 'f', 'user', 'S06h2VmXqKD3lzMu31fUoPRrKuwwznIGUXrfsHbmvnQDHkxJ3gY3POk87cYs', 'true', '2017-06-22 09:52:40', '2017-06-22 10:29:21');
INSERT INTO `users` VALUES ('22', '99092217864', 'Manul Jose Gomez Brut', '', '', 'Yotascek095@gmail.com', '1999-09-22', '$2y$10$4pYveqZ3Q0FjWI8rsE6cWu863ClbltYTW6ltDIa6KO4M76zMjoHhy', 'm', 'user', 'EtMK4xcJS5u6jtDWv6r04y7ETGtoh7asAtoXJaYwFRbWb8NHWzX8GbYBbgQC', 'true', '2017-07-31 13:15:15', '2017-07-31 13:16:40');
INSERT INTO `users` VALUES ('23', '22684587', 'Jesus Hernandez', '', '', 'Jaime.2000.hernandezpolo@gmail.com', '1992-03-14', '$2y$10$TVoAJR1hHJ53Q2DM8BTEee1XxipehGeiCxRJ1tow1NiS1gyZBMEHC', 'm', 'user', 'hnvv6ALAZ7o2gun6hN1Y50d9Xm7O5SqojnkvVjjXMgkCGLQKvh1eTWYp7Ar2', 'true', '2017-07-31 14:05:22', '2017-07-31 14:09:19');
INSERT INTO `users` VALUES ('24', null, 'bonis cabrera cantillo', '', null, 'bonisacc66456@hotmail.com', null, '$2yppp', null, 'admin', 'L0SAcGlF4cVdDZYfvohvPi7UhVghyFkHTXsPhIXFTMkbOkNaNaUJAk8EdU1n', 'true', '2017-11-16 09:33:04', '2017-11-16 09:33:04');
INSERT INTO `users` VALUES ('27', '73215587', 'fernando slim', '', '', 'xferchox@gmail.comx', '1985-07-11', '$2y$10$FwiwU9OMxr4WcBymSGlrbO1iW5dNTs1czOYQzCmc4n3X0bBDvWEma', 'm', 'user', 'plldRYfFyxbc2Ya2UpfDfPMzy23IGcXNpXz78D8Ulfv5DIEcT26tcZfilQc4', 'true', '2017-11-17 13:22:55', '2017-11-17 13:30:25');
INSERT INTO `users` VALUES ('28', '73215587', 'fernando camargo', '', '', 'ferchoslim@gmail.com', '1985-07-11', '$2y$10$Z3ABLoxHxNgiAYDPc0BVE.OxzIGYkqRvxBK0yb7m5Y8xEcFefdqpe', 'm', 'user', 'o9MsX5NnSxYH4yg5d4Uu245XY3HAVpzIM3DQP8KB4o0BISS5dKOf6MXdKm2y', 'true', '2017-12-01 00:40:27', '2017-12-01 00:45:24');
INSERT INTO `users` VALUES ('29', null, 'yuranis maria martelo cueto', '', null, 'yuranismariamartelocueto@gmail.com', null, '$2y$10$xmIx43RhRCsyrYg/xTlaCuRvn49EkRN26p/kFKpx70XkZcoBgLfcy', null, 'user', '2uD7yjlXinf0HCZ4pJWriNS7sqUTKKxxE2rZaYjpUfxpucqMosSv4EXicV8p', 'true', '2017-12-02 13:38:43', '2017-12-02 13:38:43');
INSERT INTO `users` VALUES ('30', '1143381940', 'jhonny Julio Ospino', '', '', 'jhony.julio@outlook.com', '1994-01-03', '$2y$10$o/zW.J4x.5oAz9sc1VVvHOfNXtSN35SpH5ME2urvhjMi2oDxy846q', 'm', 'user', 'HDLwaBgM0XFx1LLhAYxUW6rRxBi28sSczUIZDvxg7m2xtgPyFd6CzgEyGdam', 'true', '2017-12-05 12:54:09', '2017-12-05 12:55:52');
INSERT INTO `users` VALUES ('40', null, 'fernando alonso', 'slim trump', null, 'ferchoslonso@slim.org', null, '$2y$10$wWNG0E0tFMz18Cv3a1i4beXQ00gThRp9bv0f3nPkhFnheRbqSRb.q', null, 'user', '1qIt3jdyMuy5pcYayze77YM30GvVoKqAAEMS5rZVd1jQpcM6upN7LZnj0Uwh', 'true', '2017-12-18 23:33:21', '2017-12-18 23:33:21');
INSERT INTO `users` VALUES ('42', null, 'ketherine', 'boiga molina', null, 'katheboigam@hotmail.com', null, '$2y$10$r9CWGOn7d0ZjDL5EwYT1iewpbs9za90dAA1WAMsD4CrxOULD5IdfW', null, 'user', 'OgxhKhgTBjHQTiaXpS3sgCzVie2hcE4KmqY1YaMNKpGU10IlQ3BCxR6g4z2m', 'true', '2017-12-18 23:40:10', '2017-12-18 23:40:10');
INSERT INTO `users` VALUES ('43', '73215587', 'fernando', 'delgado camargo', 'celutienda sas', 'xferchox@gmail.com', '1985-07-11', '$2y$10$kfMPZwUA11nPPARgovdwlO8hsBWsMLplnBE9I9li.mlgyTV5.C.9m', 'm', 'user', '3zYG9YtVFRtUFGJyK2TZQYyBMcI96sRAv7fhe4Ncl3T18xGjGQvtCQWGYugz', 'true', '2017-12-27 12:48:11', '2017-12-27 14:12:30');

-- ----------------------------
-- Table structure for users_addresses
-- ----------------------------
DROP TABLE IF EXISTS `users_addresses`;
CREATE TABLE `users_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `neighborhood` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` int(10) unsigned NOT NULL,
  `state` int(10) unsigned NOT NULL,
  `phone` varchar(255) NOT NULL,
  `cellphone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ud_user` (`id_user`) USING BTREE,
  CONSTRAINT `users_addresses_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_addresses
-- ----------------------------
INSERT INTO `users_addresses` VALUES ('4', '19', 'Manga', 'Carrera 19 #12-32 Edificio Tal Torre 4 Apto 5', '9', '4', '', '', '2017-04-20 17:19:36', '2017-04-20 17:19:36');
INSERT INTO `users_addresses` VALUES ('14', '20', 'contry', 'mz w lote 5 apto 4', '9', '4', '', '', '2017-04-25 00:30:47', '2017-04-25 00:30:47');
INSERT INTO `users_addresses` VALUES ('15', '12', 'barrio tal clle tal', 'calle tal', '9', '4', '', '', '2017-06-07 10:35:39', '2017-06-07 10:35:39');
INSERT INTO `users_addresses` VALUES ('16', '21', 'amberes', 'kra 41 # 26 D 16', '9', '4', '', '', '2017-06-22 10:29:21', '2017-06-22 10:29:21');
INSERT INTO `users_addresses` VALUES ('18', '22', 'El Bosque', 'Sector manzanillo 1ra calle la giralda #19-28', '9', '4', '', '', '2017-07-31 13:16:40', '2017-07-31 13:16:40');
INSERT INTO `users_addresses` VALUES ('19', '23', 'Los cerezos', 'Manzana b4 lote 11', '9', '4', '', '', '2017-07-31 14:09:19', '2017-07-31 14:09:19');
INSERT INTO `users_addresses` VALUES ('20', '27', 'el contry', 'manzana w lote 5 apto 4', '9', '4', '', '', '2017-11-17 13:30:25', '2017-11-17 13:30:25');
INSERT INTO `users_addresses` VALUES ('21', '28', 'el contry', 'manzana w lote 5 apto 401', '9', '4', '', '', '2017-12-01 00:45:24', '2017-12-01 00:45:24');
INSERT INTO `users_addresses` VALUES ('22', '30', 'san fernando ', 'cra 83 N° 13-36', '9', '4', '', '', '2017-12-05 12:55:52', '2017-12-05 12:55:52');
INSERT INTO `users_addresses` VALUES ('44', '2', 'centro', 'la matuna pasaje las vegas local 51', '9', '4', '5661745', '3008022262', '2017-12-15 15:39:19', '2017-12-15 15:39:19');
INSERT INTO `users_addresses` VALUES ('46', '43', 'centro', 'la matuna', '9', '4', '', '3008022262', '2017-12-27 15:33:01', '2017-12-27 15:33:01');

-- ----------------------------
-- Table structure for users_phones
-- ----------------------------
DROP TABLE IF EXISTS `users_phones`;
CREATE TABLE `users_phones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_up_user` (`id_user`) USING BTREE,
  CONSTRAINT `users_phones_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_phones
-- ----------------------------
INSERT INTO `users_phones` VALUES ('4', '19', '3008672150', '2017-04-20 17:19:36', '2017-04-20 17:19:36');
INSERT INTO `users_phones` VALUES ('23', '20', '3004462928', '2017-04-25 00:30:47', '2017-04-25 00:30:47');
INSERT INTO `users_phones` VALUES ('24', '12', '3009022272', '2017-06-07 10:35:39', '2017-06-07 10:35:39');
INSERT INTO `users_phones` VALUES ('25', '21', '302269204', '2017-06-22 10:29:21', '2017-06-22 10:29:21');
INSERT INTO `users_phones` VALUES ('26', '21', '6621921', '2017-06-22 10:29:21', '2017-06-22 10:29:21');
INSERT INTO `users_phones` VALUES ('28', '22', '3043252126', '2017-07-31 13:16:40', '2017-07-31 13:16:40');
INSERT INTO `users_phones` VALUES ('29', '23', '3204195623', '2017-07-31 14:09:19', '2017-07-31 14:09:19');
INSERT INTO `users_phones` VALUES ('30', '27', '3008022262', '2017-11-17 13:30:25', '2017-11-17 13:30:25');
INSERT INTO `users_phones` VALUES ('31', '27', '6647139', '2017-11-17 13:30:25', '2017-11-17 13:30:25');
INSERT INTO `users_phones` VALUES ('32', '28', '3008022262', '2017-12-01 00:45:24', '2017-12-01 00:45:24');
INSERT INTO `users_phones` VALUES ('33', '30', '3015420618', '2017-12-05 12:55:52', '2017-12-05 12:55:52');
INSERT INTO `users_phones` VALUES ('76', '2', '3008022262', '2017-12-15 15:39:19', '2017-12-15 15:39:19');
INSERT INTO `users_phones` VALUES ('77', '2', '56647139', '2017-12-15 15:39:19', '2017-12-15 15:39:19');

-- ----------------------------
-- Table structure for warehouses
-- ----------------------------
DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `warehouses_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouses
-- ----------------------------
INSERT INTO `warehouses` VALUES ('1', 'bodega principal', 'todos los productos', null, null);
INSERT INTO `warehouses` VALUES ('2', 'pagina web', 'productos de la pagina', null, null);
INSERT INTO `warehouses` VALUES ('3', 'castellana', 'almacen castellana', null, null);
INSERT INTO `warehouses` VALUES ('4', 'isla castellana', 'isla de la castellana', null, null);

-- ----------------------------
-- Table structure for warehouses_products
-- ----------------------------
DROP TABLE IF EXISTS `warehouses_products`;
CREATE TABLE `warehouses_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `serial_id` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wpunique` (`warehouse_id`,`serial_id`) USING BTREE,
  KEY `product_id` (`product_id`),
  KEY `wppsidfk` (`serial_id`),
  CONSTRAINT `wppidfk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wppsidfk` FOREIGN KEY (`serial_id`) REFERENCES `serials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wpwidfk` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouses_products
-- ----------------------------
INSERT INTO `warehouses_products` VALUES ('1', '1', '15', '1', '1', null, null);
INSERT INTO `warehouses_products` VALUES ('2', '1', '15', '2', '1', null, null);
INSERT INTO `warehouses_products` VALUES ('3', '1', '15', '3', '1', null, null);
