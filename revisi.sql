/*
 Navicat Premium Data Transfer

 Source Server         : Umroh ionos
 Source Server Type    : MariaDB
 Source Server Version : 100331
 Source Host           : 104.254.244.150:3306
 Source Schema         : revisi

 Target Server Type    : MariaDB
 Target Server Version : 100331
 File Encoding         : 65001

 Date: 20/04/2022 04:18:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alternative_criteria
-- ----------------------------
DROP TABLE IF EXISTS `alternative_criteria`;
CREATE TABLE `alternative_criteria`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `alternative_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `criteria_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `score` int(10) UNSIGNED NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alternative_criteria
-- ----------------------------
INSERT INTO `alternative_criteria` VALUES (2, 2, 2, 60, 1);
INSERT INTO `alternative_criteria` VALUES (3, 2, 3, 65, 1);
INSERT INTO `alternative_criteria` VALUES (4, 2, 4, 58, 1);
INSERT INTO `alternative_criteria` VALUES (5, 2, 5, 65, 1);
INSERT INTO `alternative_criteria` VALUES (6, 3, 2, 40, 1);
INSERT INTO `alternative_criteria` VALUES (7, 3, 3, 75, 1);
INSERT INTO `alternative_criteria` VALUES (8, 3, 4, 58, 1);
INSERT INTO `alternative_criteria` VALUES (9, 3, 5, 75, 1);
INSERT INTO `alternative_criteria` VALUES (10, 4, 2, 70, 1);
INSERT INTO `alternative_criteria` VALUES (11, 4, 3, 60, 1);
INSERT INTO `alternative_criteria` VALUES (12, 4, 4, 55, 1);
INSERT INTO `alternative_criteria` VALUES (13, 4, 5, 60, 1);
INSERT INTO `alternative_criteria` VALUES (14, 5, 2, 50, 1);
INSERT INTO `alternative_criteria` VALUES (15, 5, 3, 70, 1);
INSERT INTO `alternative_criteria` VALUES (16, 5, 4, 65, 1);
INSERT INTO `alternative_criteria` VALUES (17, 5, 5, 70, 1);
INSERT INTO `alternative_criteria` VALUES (18, 6, 2, 85, 1);
INSERT INTO `alternative_criteria` VALUES (19, 6, 3, 58, 1);
INSERT INTO `alternative_criteria` VALUES (20, 6, 4, 50, 1);
INSERT INTO `alternative_criteria` VALUES (21, 6, 5, 58, 1);
INSERT INTO `alternative_criteria` VALUES (22, 7, 2, 80, 1);
INSERT INTO `alternative_criteria` VALUES (23, 7, 3, 55, 1);
INSERT INTO `alternative_criteria` VALUES (24, 7, 4, 50, 1);
INSERT INTO `alternative_criteria` VALUES (25, 7, 5, 55, 1);
INSERT INTO `alternative_criteria` VALUES (36, 2, 7, 60, 1);
INSERT INTO `alternative_criteria` VALUES (37, 3, 7, 60, 1);
INSERT INTO `alternative_criteria` VALUES (38, 4, 7, 58, 1);
INSERT INTO `alternative_criteria` VALUES (39, 5, 7, 65, 1);
INSERT INTO `alternative_criteria` VALUES (40, 6, 7, 58, 1);
INSERT INTO `alternative_criteria` VALUES (41, 7, 7, 70, 1);

-- ----------------------------
-- Table structure for announcements
-- ----------------------------
DROP TABLE IF EXISTS `announcements`;
CREATE TABLE `announcements`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `recipient_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announcements
-- ----------------------------
INSERT INTO `announcements` VALUES (4, 'Pengunguman', '<p>Diadakannya kembali Masa umrah</p>', '61e0fa7a2e12a.jpg', '[\"rendywijaya.if@gmail.com\"]', 0, 1, '2022-01-14 04:22:18', '2022-01-14 04:22:18');

-- ----------------------------
-- Table structure for criteria
-- ----------------------------
DROP TABLE IF EXISTS `criteria`;
CREATE TABLE `criteria`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of criteria
-- ----------------------------
INSERT INTO `criteria` VALUES (2, 'Harga', '80');
INSERT INTO `criteria` VALUES (3, 'Wisata', '70');
INSERT INTO `criteria` VALUES (4, 'Durasi', '50');
INSERT INTO `criteria` VALUES (5, 'Fasilitas', '60');
INSERT INTO `criteria` VALUES (7, 'Ibadah', '70');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity_card` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `passport_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_already_umrah` tinyint(1) NOT NULL DEFAULT 0,
  `last_education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_identity_card` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_phone` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_relationship` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of members
-- ----------------------------
INSERT INTO `members` VALUES (1, 6, 'Rendy Wijaya', 'H', '1234567890111111', 'Bdg', '2021-12-22', '67867877', 'Bdg', 'Dhhsjsjsjdjdjdj', '081222583585', 'rendywijaya.if@gmail.com', 'Bdbdbdh', 0, 'SD / Sederajat', 'Hdhdhxhx', '1234567890123456', '66666666', 'Jdhdhdbdh', 'Dhdhshhddh', NULL, '2021-12-26 13:26:46', '2021-12-26 13:26:46');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_12_18_174600_create_packages_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_12_18_174637_create_orders_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_12_18_174707_create_payments_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_12_22_162406_create_tables_spk', 1);
INSERT INTO `migrations` VALUES (8, '2020_12_26_140326_create_members_table', 1);
INSERT INTO `migrations` VALUES (9, '2021_12_16_104307_add_status_to_alternative_criteria_table', 2);
INSERT INTO `migrations` VALUES (10, '2021_12_16_124124_add_status_to_users_table', 2);
INSERT INTO `migrations` VALUES (11, '2021_12_16_152059_make_identity_card_users_unique', 2);
INSERT INTO `migrations` VALUES (12, '2021_12_16_154433_make_identity_card_member_unique', 2);
INSERT INTO `migrations` VALUES (13, '2021_12_30_150608_add_closing_date_in_table_packages', 3);
INSERT INTO `migrations` VALUES (14, '2022_01_05_105316_create_announcements_table', 3);
INSERT INTO `migrations` VALUES (15, '2022_01_05_105457_create_recipient_announcements_table', 3);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(12, 2) NOT NULL,
  `additional_fee` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `price_total` decimal(12, 2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 100,
  `payment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_paid_off` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '61C86DA672F3E', 6, 7, 28500000.00, 0.00, 28500000.00, 10, 'parsial', 0, '2021-12-26 13:27:02', '2022-01-10 00:30:47');
INSERT INTO `orders` VALUES (2, '61E0FAAA31CA2', 6, 6, 23000000.00, 0.00, 23000000.00, 210, 'lumpsum', 1, '2022-01-14 04:23:06', '2022-01-14 04:25:25');
INSERT INTO `orders` VALUES (3, '61E118F5D6927', 6, 7, 28500000.00, 0.00, 28500000.00, 10, 'lumpsum', 0, '2022-01-14 06:32:21', '2022-01-14 06:34:23');
INSERT INTO `orders` VALUES (4, '61E11C15C0234', 6, 7, 28500000.00, 0.00, 28500000.00, 10, 'parsial', 0, '2022-01-14 06:45:41', '2022-01-14 07:14:31');
INSERT INTO `orders` VALUES (5, '61E3996119A15', 6, 6, 23000000.00, 0.00, 23000000.00, 10, 'parsial', 0, '2022-01-16 04:04:49', '2022-01-16 04:21:52');
INSERT INTO `orders` VALUES (6, '61E39DBDDF392', 6, 7, 28500000.00, 0.00, 28500000.00, 200, 'parsial', 0, '2022-01-16 04:23:25', '2022-01-16 09:25:44');
INSERT INTO `orders` VALUES (7, '61E42C713C05A', 6, 5, 39950000.00, 0.00, 39950000.00, 10, 'parsial', 0, '2022-01-16 14:32:17', '2022-01-16 14:57:04');

-- ----------------------------
-- Table structure for packages
-- ----------------------------
DROP TABLE IF EXISTS `packages`;
CREATE TABLE `packages`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quota` int(11) NULL DEFAULT NULL,
  `start_date` date NOT NULL,
  `closing_date` date NOT NULL DEFAULT current_timestamp(),
  `end_date` date NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 100,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of packages
-- ----------------------------
INSERT INTO `packages` VALUES (2, 'UMRAH PLUS ISTANBUL', '<p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">TANGGAL BERANGKAT : 31 Oktober, 28 November, 26 Desember 2017, 23 januari &amp; 27 Februari 2018</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARGA PAKET : Rp. 36.620.000,- + Rp. 2.000.000,- /pax&nbsp;</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">(Mekkah&amp;Madinah : Quad), (Istn : Double)&nbsp;</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">(*) Harga &amp; jadwal sewaktu-waktu dapat berubah disebabkan adanya perubahan tarif, jadwal penerbangan, regulasi dan lain-lain tanpa pemberitahuan sebelumnya.</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">AKOMODASI :&nbsp;</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">MADINAH : HOTEL Dallar Taibah : 3 malam&nbsp;</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">MAKKAH : HOTEL Makarim Ajyad : 4 malam&nbsp;</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">ISTANBUL : HOTEL WOW</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">RUTE :</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\"><strong>HARI 01:&nbsp;</strong><strong>BANDUNG</strong><strong>-JKT-MADINAH</strong><br>BANDUNG-JKT menggunakan bis AC, makan di Executive lounge bandara Soekarno-Hatta. perjalanan menuju Madinah dengan menggunakan penerbangan Ekonomi Class. tiba di Madinah perjalanan dilanjutkan menuju Hotel &nbsp;Transfer hotel.(B,L,D)<br><br><strong>HARI 02: MADINAH</strong><br>Ibadah di Masjid Nabawi ,Tahajud, Ziarah Nabawi: Makam Rasul, Raudhah, Makam Baqi, dll.(B,L,D)<br><br><strong>HARI 03: MADINAH</strong><br>Ibadah di Masjid Nabawi, Tahajud, tausyiah, Ziarah Madinah : Mesjid Quba, Jabal Uhud, Masjid Qiblatain, Stasion Kereta Api Turkey, Kebun Kurma, Percetakan Al- Quran.(B,L,D)<br>&nbsp;<br><strong>HARI 04: MADINAH-MEKKAH</strong><br>Ibadah di Masjid Nabawi, tahajud, tausyiah, dilanjutkan persiapan Miqat/ Umroh dari Bir Ali kemudian Menuju Mekkah menggunakan Bus AC, Transfer Hotel untuk melaksanakan Thawaf Umrah, Sa\'i dan tahalul,(B,L,D)<br><br><strong>HARI 05: MEKKAH</strong><br>Ibadah Masjidil Harrom, Ibadah Thawaf Sunat, Tahajud, tadarus, Tausyiah dan Ibadah Lainnya, tour masjidil harom (B,L,D)<br><br><strong>HARI 06: MEKKAH</strong><br>Ibadah di Masjidil Harrom, Ibadah Thawaf Sunat, Tahajud, tadarus, Tausyiah dan Ibadah lainnya Ziarah Mekkah : Arafah, Jabal Rahmah, Muzdalifah, Mina, Jabal Tsur, Jabal Nur/ Gua Hira, Hudaibiyah, peternakan unta, museum.(B,L,D)<br><br><strong>HARI 07: MEKKAH</strong><br>Ibadah di masjidil haram , thawaf sunat, tahajud , tadarus , Tausiah.(B,L,D)<br>&nbsp;<br><strong>HARI 08:&nbsp;</strong><strong>&nbsp;MEKKAH-</strong><strong>JEDDAH-</strong><strong>ISTANBUL</strong><br>Thawaf Wada , City Tour Jeddah : Pertokoan Corness/Balad , Laut Merah/Masjid terapung, Berkeliling kota jeddah , perjalanan menuju Istanbul dan akan akan dijemput&nbsp; oleh guide lokal<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; . (B,L,D)<br>&nbsp;<br><strong>HARI KE&nbsp;</strong><strong>09</strong>&nbsp; :&nbsp;<strong>ISTANBUL</strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sarapan pagi, mengunjungi&nbsp;<strong>Hippodrome</strong>,&nbsp;<strong>Kolom Egyption</strong>,&nbsp;<strong>Kolom Cerpentine</strong>,&nbsp;<strong>Germain fountain</strong>&nbsp;Kunjungan ke&nbsp;<strong>Blue Mosque</strong>&nbsp;dan&nbsp;<strong>Topkapi Palace</strong>. Kunjungan dilanjutkan naik ferry untuk menelusuri selat bosphorus,Transfer ke hotel untuk bermalam. (B,L,D)<br>&nbsp;<br><strong>HARI KE&nbsp;</strong><strong>10</strong>&nbsp; :&nbsp;<strong>ISTANBUL</strong><br>Setelah makan pagi di hotel, kita tour mulai dengan kunjungan ke Negara bagian asia anda akan di ajak untuk memasuki daerah bukit camillca melihat pemandangan di sekitar maiden tower&nbsp; dilanjutkan mengunjungi istana&nbsp; Beylerbeyi,<strong>&nbsp;Grand Bazar&nbsp;</strong><strong>dan mengunjungi toko kulit</strong><strong>, perhiasan</strong><strong>&nbsp;dan karpet&nbsp;</strong><strong>Eyup&nbsp;Masjid,</strong><strong>dan eyup region dilanjutkan mengunjungi st Sopia(Hagia Sopia)</strong><strong>,</strong>&nbsp;(B,L,D)<br>&nbsp;<br><strong>HARI KE&nbsp;</strong><strong>11</strong>&nbsp; :&nbsp;<strong>ISTANBUL - JEDDAH-JKT</strong><br>Proses check out setelah sarapan di hotel, berkunjung di Masjid Suleymaniye Mosque. spice bazar, istiklal street.Setelah selesai diantar ke airport. Untuk perjalanan ke Jeddah (B.L.D)<br>&nbsp;&nbsp;&nbsp;<br><strong>HARI KE 1</strong><strong>2</strong>&nbsp; :&nbsp;<strong>JKT - BANDUNG</strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tiba di Jakarta ,&nbsp; perjalanan dilanjutkan menuju Kantor Qiblat tour, singgah makan diperjalanan pembagian koper bagasi dan air zamzam&nbsp; dan dengan mengucapkan Alhamdulillah perjalanan ibadah Umroh Plus usai,&nbsp; para&nbsp; jamaah pulang ke rumah masing-masing. (L)<br><br><strong><em>Catatan : Program sewaktu – waktu dapat berubah disesuaikan dengan kondisi saat itu</em></strong>&nbsp;<strong><em>dan&nbsp; jadwal penerbangan tanpa mengurangi nilai ibadah.</em></strong></p>', 20, '2023-01-01', '2022-01-06', '2023-01-13', 36620000.00, '5ff562bcb0652.jpg', 100, '2020-12-18 18:39:11', '2021-12-22 06:42:56');
INSERT INTO `packages` VALUES (3, 'UMROH PLUS AL-AQSA', '<p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\"><strong>TANGGAL BERANGKAT :&nbsp;</strong>31 Oktober, 26 Desember 2017 &amp; 27 Februari 2018</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\"><strong>HARGA PAKET :&nbsp;</strong>Rp. 42.650.000,- + Rp. 2.000.000,- /pax</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">(Mekkah&amp;Madinah : Quad), (Amman &amp; Yerusalem : Double)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">(*) Harga &amp; jadwal sewaktu-waktu dapat berubah disebabkan adanya perubahan tarif, jadwal penerbangan, regulasi dan lain-lain tanpa pemberitahuan sebelumnya.</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\"><strong>AKOMODASI :</strong></p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">MADINAH : HOTEL DALLAR TAIBAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">MAKKAH : HOTEL MAKARIM</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">AMMAN : HOTEL JARUSALEM INT / HOTEL DAYS INN</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">JARUSALEM : HOLI LAND / NATIONAL HOTEL</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\"><strong>RUTE :</strong></p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\"><strong>HARI 01:&nbsp;</strong><strong>BANDUNG</strong><strong>-JKT-MADINAH</strong><br>BANDUNG-JKT menggunakan bis AC, makan di Executive lounge bandara Soekarno-Hatta. perjalanan menuju Madinah dengan menggunakan penerbangan Ekonomi Class. tiba di Madinah perjalanan dilanjutkan menuju Hotel &nbsp;Transfer hotel.(B,L,D)<br><br><strong>HARI 02: MADINAH</strong><br>Ibadah di Masjid Nabawi ,Tahajud, Ziarah Nabawi: Makam Rasul, Raudhah, Makam Baqi, dll.(B,L,D)<br><br><strong>HARI 03: MADINAH</strong><br>Ibadah di Masjid Nabawi, Tahajud, tausyiah, Ziarah Madinah : Mesjid Quba, Jabal Uhud, Masjid Qiblatain, Stasion Kereta Api Turkey, Kebun Kurma, Percetakan Al- Quran.(B,L,D)<br>&nbsp;<br><strong>HARI 04: MADINAH-MEKKAH</strong><br>Ibadah di Masjid Nabawi, tahajud, tausyiah, dilanjutkan persiapan Miqat/ Umroh dari Bir Ali kemudian Menuju Mekkah menggunakan Bus AC, Transfer Hotel untuk melaksanakan Thawaf Umrah, Sa\'i dan tahalul,(B,L,D)<br><br><strong>HARI 05: MEKKAH</strong><br>Ibadah Masjidil Harrom, Ibadah Thawaf Sunat, Tahajud, tadarus, Tausyiah dan Ibadah Lainnya, tour masjidil harom (B,L,D)<br><br><strong>HARI 06: MEKKAH</strong><br>Ibadah di Masjidil Harrom, Ibadah Thawaf Sunat, Tahajud, tadarus, Tausyiah dan Ibadah lainnya Ziarah Mekkah : Arafah, Jabal Rahmah, Muzdalifah, Mina, Jabal Tsur, Jabal Nur/ Gua Hira, Hudaibiyah, peternakan unta, museum.(B,L,D)<br><br><strong>HARI 07: MEKKAH</strong><br>Ibadah di masjidil haram , thawaf sunat, tahajud , tadarus , Tausiah.(B,L,D)<br><br><strong>HARI 08:&nbsp;</strong><strong>MEKKAH-&nbsp;</strong><strong>JEDDAH-</strong><strong>AMAN- JERUSALEM</strong><br>Setelah sarapan pagi , Perjalanan Menuju bandara king abdul azis untuk terbang ke &nbsp;&nbsp;Aman Yordania.(B,L,D)<br>Tiba di Amman, &nbsp;makan Siang di Restaurant lokal, &nbsp;menaruh &nbsp;&nbsp;&nbsp;kopor / bagasi di&nbsp; Toko Holyland Ceramic &amp; Glass Factory ( ABU&nbsp; ALA ) &nbsp;,setelah itu langsung menuju perbatasan&nbsp; ALLENBY BRIDGE,mengunjungi &nbsp;tempat &nbsp;&nbsp;kelahiran Nabi ISA&nbsp; as di Bethlehem. Kunjungan selanjutnya ke HEBRON untuk &nbsp;Shalat di&nbsp; &nbsp;Masjidil KHALILULL RAHMAN ( Masjid Ibrahim ). Sore hari kembali ke &nbsp;&nbsp;MASJID AL &nbsp;AQSA untuk Shalat &nbsp;Magrib&nbsp; &amp; Isya yang di Jama Qasr. Check in di Hotel&nbsp; &amp; &nbsp;&nbsp;makan &nbsp;&nbsp;malam. ( B,L,D )<br>&nbsp;<br><strong>HARI KE&nbsp;</strong><strong>09</strong><strong>&nbsp; : JERUSALEM</strong><br>&nbsp;Dinihari kita siap untuk berangkat&nbsp; Shalat Shubuh di Masjidil AL AQSA. Setelah Shalat &nbsp;Shubuh , kita mengunjungi WAILLING WALL ( Tembok Ratapan kaum Yahudi ) .Kembali ke Hotel&nbsp; untuk sarapan pagi. Setelah sarapan pagi ziarah&nbsp; mengunjungi Maqam SALMAN AL FARIZI &amp;&nbsp; RABI’AH AL ADAWIYAH di Bukit Zaitun. Shalat Dzuhur &amp; Ashar dilakukan secara jama’ Qasr di Masjidil AL AQSA, begitu juga Magrib &amp; Isya. ( B,L,D )<br>&nbsp;<br><strong>HARI KE&nbsp;</strong><strong>10</strong><strong>&nbsp; : JERUSALEM – AMMAN</strong><br>&nbsp;Setelah sarapan pagi ,check out dari Hotel, ziarah ke Maqam Nabi MUSA as dan mengunjungi JERICHO. Setelah itu menuju&nbsp; perbatasan&nbsp; ALLENBY BRIDGE, memasuki Negara Jordan kembali. Makan&nbsp; siang di Restaurant di pantai Danau Laut Mati ( DEAD SEA ). Disana terletak bekas – bekas peninggalan Sejarah SODDOM &amp; ]&nbsp;&nbsp;&nbsp;&nbsp; GOMORRAH pada zaman Nabi LUTH as. Dilanjutkan mandi – mandi di tepi pantai tersebut. Kembali ke Toko ABU ALA untuk Shopping &amp; mengambil kopor – kopor&nbsp; &amp; menyimpan belanjaan didalam kopor tersebut. Ziarah dilanjutkan ke Maqam Nabi SYU’AIB as. Kunjungan terakhir hari itu ke&nbsp; GUA AL KAHFI. Setelah itu masuk Hotel dan bermalam. ( B,L,D )<br>&nbsp;<br><strong>HARI KE&nbsp;</strong><strong>11</strong><strong>&nbsp; : AMMAN –&nbsp;</strong><strong>JEDDAH -JAKARATA</strong><br>Makan pagi check out dari Hotel untuk &nbsp;transfer ke Bandara untuk &nbsp;terbang ke Jakarta namun transit di jeddah ( B,L )<br><br><strong>HARI KE 1</strong><strong>2</strong>&nbsp; :&nbsp;<strong>JKT - BANDUNG</strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tiba di Jakarta ,&nbsp; perjalanan dilanjutkan menuju Kantor Qiblat tourSinggah makan diperjalanan pembagian koper bagasi dan air zamzam&nbsp; dan dengan mengucapkan Alhamdulillah perjalanan ibadah Umroh Plus usai,&nbsp; para&nbsp; jamaah pulang ke rumah masing-masing. (L)<br><br><strong><em>Catatan : Program sewaktu – waktu dapat berubah disesuaikan dengan kondisi saat itu dan&nbsp; jadwal penerbangan tanpa mengurangi nilai ibadah.</em></strong></p>', 20, '2023-02-23', '2022-01-06', '2023-03-07', 43650000.00, '5ff563894deed.jpg', 100, '2020-12-19 12:09:06', '2021-12-22 06:43:45');
INSERT INTO `packages` VALUES (4, 'UMROH PLUS CAIRO', '<p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">TANGGAL BERANGKAT : 31 Okt, 28 Nov, 26 Des 2017 &amp; 23 Jan, 27 Feb 2018</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARGA PAKET : Rp. 33.980.000,- + Rp. 2.000.000,- /PAX</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">(Mekkah &amp; Madinah : Quad), (Cairo : Double)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">(*) Harga &amp; jadwal sewaktu-waktu dapat berubah disebabkan adanya perubahan tarif, jadwal penerbangan, regulasi dan lain-lain tanpa pemberitahuan sebelumnya.</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">AKOMODASI :&nbsp;</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">MADINAH : Hotel Dallah Taibah (3 malam),&nbsp;</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">MEKKAH : Hotel Makarim Ajyad (4 malam)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">CAIRO : Hotel Sofitel Le SPinx / Hotel Le Meridien</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">RUTE :</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARI 01 : BANDUNG - JAKARTA - MADINAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">perjalanan Bdg - Jkt menggunakan Bus AC, makan di Executive Lounge Bandara Soekarno - Hatta, perjalanan menuju Madinah dengan menggunakan penerbangan Economy Class, tiba di Madinah perjalanan dilanjutkan menuju Hotel. (B,L,D)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARI 02 : MADINAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Ibadah di Mesjid Nabawi, Tahajud, Ziarah Madinah : Mesjid Quba, Kebun Kurma, Jabal Uhud, Percetakan Al-quran, Mesjid Qiblatain, Mesjid Tujuh/Khandaq, Kebun kurma. (B,L,D)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARI 03 : MADINAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Ibadah di Mesjdi Nabawi, Tahajud, Tausyiah, Ziarah Mesjid Nabawi : Makam Rosul, Raudhoh, Makam Baqi, Ziarah Mesjid Ghamamah, Ex-Rumah para sahabat Rosul. (B,L,D)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARI 04 : MADINAH - CAIRO</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Setelah solat subuh, sarapan pagi, check out hotel, perjalanan menuju Bandara King Abdul Aziz, perjalanan menuju Cairo, setelah urusan imigrasi selesai dijemput dan transfer hotel, langsung makan malam diatas kapal berlayar di Sungai Nile, kembali ke hotel &amp; istirahat. (B,L,D)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARI 05 : CAIRO</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Setelah sarapan pagi, mengunjungi El Sayeeda Zainab, Masjid El Husein, Mesjid Moh. Aly, Universitas Al-Azhar, kembali ke hotel dan istirahat. (B,L,D)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARI 06 : CAIRO</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Setelah sarapan pagi, kunjungan ke Pyramid &amp; Spinx di Giza, kemudian ke Museum Mesir &amp; Khan Khalili Bazaar, Pharaonic, &amp; Felucca Ride di Sungai Nile, setelah makan malam langsung masuk hotel &amp; istirahat. (B,L,D)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARI 07 CAIRO - MEKKAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">setelah sarapan dilanjutkan check out dan diantar menuju Queen Alia International Airport untuk menuju Mekkah, transit hotel di Mekkah. (B,L,D)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARI 08 : MEKKAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Ibadah di Mesjidil Harom, ziarah Mesjidil Harom : Maulid Nabi, Istana Raja, Zam zam Tower. (B,L,D)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARI 09 : MEKKAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Ibadah di Mesjidil Harom, Ziarah Mekkah :&nbsp;Jabal Tsur, Arafah, Jabal Rahmah, Muzdalifah, Mina , Jabal Nur, Hudaibiyah dan Museum Asmaul Husna (jika dapat tasreh). (B,L,D)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARI 10 : MEKKAH - JEDDAH - JAKARTA</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Ibadah di mesjidil Harom, Thawaf Whada, perjalanan menuju Jeddah, Sholat Dzuhur di Mesjid Qishas, Makan siang di Tomyam Resto, Shoping Chornise/Balad, Laut Merah, Makam Siti Hawa, Shalat Ashar di Mesjid Terapung, Take Off Jeddah - Jakarta. (B,L,D)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">HARI 11 : JAKARTA - BANDUNG</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Tiba di Bandara Soekarno - Hatta Jakarta, perjalanan menuju Kantor Qiblat Tour, singgah makan di perjalanan. (B,L,D)</p>', 20, '2023-12-21', '2022-01-06', '2024-01-01', 33980000.00, '5ff563f2ea2fe.png', 100, '2020-12-19 12:12:03', '2021-12-22 06:44:16');
INSERT INTO `packages` VALUES (5, 'Umroh Plus Dubai', '<p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\"><strong>TANGGAL BERANGKAT :</strong>&nbsp;31 Okt, 28 Nov, 26 Des 2017 &amp; 23 jan, 27 Feb 2018</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\"><strong>HARGA PAKET :&nbsp;</strong>Rp. 39.950.000,- + Rp. 2.000.000,- /pax</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">(*) Harga &amp; jadwal sewaktu-waktu dapat berubah disebabkan adanya perubahan tarif, jadwal penerbangan, regulasi dan lain-lain tanpa pemberitahuan sebelumnya.</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\"><strong>AKOMODASI :</strong></p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">MADINAH : HOTEL DALLAR TAIBAH / AL HARAM</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">MAKKAH : HOTEL ELAF KINDA / ROYAL DAR AL EIMAN</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">DUBAI : HOTEL SIGNATURE AL BARSHA / HILTON GARDEN INN AL MINA</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">&nbsp;</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">RUTE PERJALANAN :</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Hari Ke 01: JAKARTA – DUBAI - MEDINAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Dari gedung Qiblat Tour dengan menggunakan Bis AC berangkat menuju Bandara Internasional Soekarno – Hatta, dengan menggunakan penerbangan Economy Class menuju Medinah dengan transit penerbangan di Dubai, tiba di Medinah transfer menuju hotel. (Breakfast, Lunch, Dinner)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Hari Ke 02 : MEDINAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Ibadah di Masjid Nabawi, ziarah Masjid Nabawi : Raudha, Makam Rasulullah SAW, Masjid Gamamah, Masjid Ali, Ex-rumah para sahabat Rosul, Pemakaman Baqe. (Breakfast, Lunch, Dinner)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Hari Ke 03 : MEDINAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Ibadah di Masjid Nabawi, ziarah Madinah dengan berkunjung ke Masjid Quba, Jabal Uhud, Masjid Qiblatain, Percetakan Al-quran, Museum Nabawi/Asmaul Husna (jika mendapat Tasreh), Kebun Kurma. (Breakfast, Lunch, Dinner)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Hari Ke 04 : MEDINAH – MAKKAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Check Out Hotel dilanjutkan dengan mengunjungi Laut Merah, Masjid Qishas dan Pusat Pertokoan Balad. Makan siang di Resto Tom Yam. Solat&nbsp; ashar di Masjid Terapung. Miqat di Bir Ali. Transfer menuju hotel untuk beristirahat. (Breakfast, Lunch, Dinner)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Hari Ke 05 : MAKKAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Ibadah di Masjidil Haram, Tahajud, ziarah Masjidil Haram : Maulid Nabi, Istana Raja, Zam zam Tower dll. (Breakfast, Lunch, Dinner)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Hari Ke 06 : MAKKAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Ibadah di Masjidil Haram, Tahajud, Tawaf Sunat. (Breakfast, Lunch, Dinner)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Hari Ke 07 : MAKKAH</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Ibadah di Masjidil Haram, ziarah Makkah :&nbsp; Jabal Tsur, Jabal Rahmah, Arafah, Muzdalifah, Mina, Jabal Nur / Gua Hira, Pemakaman Ma’la, kemudian menuju Masjid Abu Hurairah. (Breakfast, Lunch, Dinner)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Hari Ke 08 : MAKKAH – DUBAI</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Ibadah di Masjidil Haram, Thawaf Wada, check out hotel, perjalanan menuju Bandara di kota Jeddah, Take off Jeddah – Dubai, tiba di Dubai langsung transfer hotel, Setelah makan siang kemudian melaksanakan City Tour kota lama Dubai (old Dubai) dengan mengunjungi Dubai Museum, Bastakiya Area, Abras Water Taxi dan Gold Souk. Setelah makan siang transfer menuju hotel untuk beristirahat. (Breakfast, Lunch, Dinner)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">&nbsp;</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Hari Ke 09 : DUBAI</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Sore hari jamaah akan di jemput dengan menggunakan kendaraan 4 X 4 Jeep untuk mengikuti petualangan SAFARI PADANG PASIR , di tempat tujuan akan disajikan atraksi Tunggang Unta &amp; Hena Painting. (Breakfast, Lunch, Dinner)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Hari Ke 10 : DUBAI</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Setelah sarapan pagi dilanjutkan dengan City Tour kota Dubai mengunjungi Photo Stop Burj Al Arab, Palm Jumeirah menggunakan Monorail, Masjid Jumeirah, Photo Stop di Atlantis Palm dan Burj Khalif. (Breakfast, Lunch, Dinner)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Hari Ke 11 : DUBAI – JAKARTA</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Pagi hari setelah makan pagi check out dari hotel untuk kemudian melanjutkan perjalanan menuju airport untuk kembali ke Jakarta. (Breakfast, Lunch, Dinner)</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Hari Ke 12 : JAKARTA – BANDUNG</p><p style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px;\">Tiba di Bandara Internasional Soekarno – Hatta Jakarta dilanjutkan perjalanan menuju Qiblat Tour, singgah makan di perjalanan. (Breakfast, Lunch)</p>', 30, '2023-12-31', '2022-01-06', '2024-01-12', 39950000.00, '5fddee4ccf941.jpg', 100, '2020-12-19 12:13:00', '2021-12-22 06:44:53');
INSERT INTO `packages` VALUES (6, 'Paket Raudhah', '<p><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif;\">Telah di buka lagi Paket Raudhoh</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif;\">karena banyaknya permintaan Jamaah pada paket Raudhoh ini kami membuka lagi Paket ini di Bulan Desember !!!!</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif;\">.</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif;\">Ayo Daftarkan diri Anda beserta keluarga dan Sahabat sebelum Kehabisan !!!!</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif;\">.</span><span class=\"text_exposed_show\" style=\"display: inline; font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33);\"><br>Paket Raudhoh bisa dikatakan jarang di Qiblat Tour ini oleh karena itu<br>daftarkan segera sebelum kehabisan !!!!<br>.<br>Dengan biaya tersebut Calon Jamaah Mendapatkan<br><br>1. Tiket Pesawat PP Saudi Arabian Airlines (Economy Class)<br>2. Pembimbing mulai dari pemberangkatan sampai kepulangan<br>3. 1 Orang Muthawif berbahasa Indonesia Per Bus<br>4. Akomodasi di Madinah dan Mekkah sesuai dengan paket yang di pilih<br>5. Makan 3x (B/L/D)<br>6. Transportasi Bus AC dari syarikah resmi selasa program umroh (dinegara tujuan)<br>7. Ziarah di Madinah, Ziarah Mekkah dan City Tour Jeddah<br>8. Handling Airport dan Bagasi saat kedatangan dan kepulangan di Airport Jeddah atau Madinah<br>9. Extra Mealbox saat kedatangan dan kepulangan, snack 4x selama program Umroh<br>10. Air Zam-zam 5 Liter (Disesuaikan dengan peraturan penerbangan)<br>11. Pengurusan chek-in dan check-out Hotel<br>12. Bagi perempuan, di Madinah desediakan Muthawif wanita untuk ke Raudhoh<br>13. Pembuatan Visa Umrah<br>14. Asuransi Perjalanan<br><br>ada juga biaya lokal sebesar 1,5 Jt<br>dan biaya tersebut untuk :<br><br>1. Handling Airport bandara Soekarno-Hatta<br>2. Manasik<br>3. Perlengkapan Umroh : Travel Bag, Hand Bag, Kerudung, Mukena, Buku Doa, Buku Ibadah dan Teknis<br>4. Trasportasi Bus Full- AC Bandung - Jakarta - Bandung<br>5. Makan pada saat Keberangkatan dan akan di perjalanan saat kepulangan<br>Informasi Pendaftaran<br></span></p>', 20, '2023-02-11', '2022-01-06', '2023-02-20', 23000000.00, '61809d886b3d9.jpg', 100, '2021-11-02 02:08:08', '2021-12-22 06:45:36');
INSERT INTO `packages` VALUES (7, 'Paket Ramadhan', '<p>TANGGAL BERANGKAT : 24 April, 13 Mei 2020</p><p><br></p><p>HARGA PAKET : Rp. 28.500.000,-&nbsp;</p><p><br></p><p>(Mekkah&amp;Madinah : Quad),&nbsp;</p><p><br></p><p>(*) Harga &amp; jadwal sewaktu-waktu dapat berubah disebabkan adanya perubahan tarif, jadwal penerbangan, regulasi dan lain-lain tanpa pemberitahuan sebelumnya.</p>', 24, '2023-04-24', '2022-01-06', '2023-05-03', 28500000.00, '6180a58518ee0.jpeg', 100, '2021-11-02 02:42:13', '2021-12-22 06:46:18');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_holder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid` decimal(12, 2) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_count` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `is_down_payment` tinyint(1) NOT NULL DEFAULT 0,
  `is_verification` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payments
-- ----------------------------
INSERT INTO `payments` VALUES (1, 2, 'Transfer Ke Bank BCA', 'rendy wijaya', 23000000.00, '61e0faf87f249.jpeg', 0, 0, 1, '2022-01-14 04:24:24', '2022-01-14 04:25:25');
INSERT INTO `payments` VALUES (2, 6, 'Transfer Ke Bank BCA', 'okoplpokp', 10000000.00, '61e39dff45342.jpg', 0, 1, 1, '2022-01-16 04:24:31', '2022-01-16 09:25:44');

-- ----------------------------
-- Table structure for recipient_announcements
-- ----------------------------
DROP TABLE IF EXISTS `recipient_announcements`;
CREATE TABLE `recipient_announcements`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `announcement_id` int(10) UNSIGNED NOT NULL,
  `recipient_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipient_announcements
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `identity_card` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `users_identity_card_unique`(`identity_card`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Administrator', 'admin@gmail.com', '087112334556', '3256167898763456', NULL, '$2y$10$iZNEEUmfsjorjQrLyesJ9.9Ei/NXMHtLsP7/GwztwYLZUjRnAY2rK', '5fdcea2fab2e6.png', 'admin', 'yLI3A0tmg1UFTgJuSFhQf6HhKvbcDQTx7X5IiPt29uZZNQR3kIcbQ0fE1gyv', '2020-12-18 10:29:30', '2020-12-18 10:43:11', 1);
INSERT INTO `users` VALUES (6, 'Rendy Wijaya', 'rendywijaya.if@gmail.com', '081222583585', '1234567891233333', NULL, '$2y$10$AYB6SFWdqXSsZejW520/B.0huAZptRqx8tYv8/h4LvJtxP.PZ6Ylu', NULL, 'member', 'RhlWgJeigMlStaj6ncgKCynbnSMhkjiAYwINg3TbSyjEOdvHEr4AOJ3fDs6K', '2021-12-26 13:19:57', '2021-12-26 13:19:57', 1);
INSERT INTO `users` VALUES (8, 'alex', 'alex@gmail.com', '081221399105', '1234567891234565', NULL, '$2y$10$3JRwGAncxiqakwxgdzFwKeumY9kU9hw/uJhNuPIp7uRQarmxvKhqK', NULL, 'member', NULL, '2022-01-16 05:57:00', '2022-01-16 05:57:00', 1);

SET FOREIGN_KEY_CHECKS = 1;
