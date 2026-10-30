/*
 Navicat Premium Dump SQL

 Source Server         : zcx
 Source Server Type    : MySQL
 Source Server Version : 90001 (9.0.1)
 Source Host           : localhost:3306
 Source Schema         : campus_lostfound

 Target Server Type    : MySQL
 Target Server Version : 90001 (9.0.1)
 File Encoding         : 65001

 Date: 09/04/2026 15:45:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 学校', 7, 'add_school');
INSERT INTO `auth_permission` VALUES (26, 'Can change 学校', 7, 'change_school');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 学校', 7, 'delete_school');
INSERT INTO `auth_permission` VALUES (28, 'Can view 学校', 7, 'view_school');
INSERT INTO `auth_permission` VALUES (29, 'Can add 失物信息', 8, 'add_lostitem');
INSERT INTO `auth_permission` VALUES (30, 'Can change 失物信息', 8, 'change_lostitem');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 失物信息', 8, 'delete_lostitem');
INSERT INTO `auth_permission` VALUES (32, 'Can view 失物信息', 8, 'view_lostitem');
INSERT INTO `auth_permission` VALUES (33, 'Can add 认领申请', 9, 'add_claim');
INSERT INTO `auth_permission` VALUES (34, 'Can change 认领申请', 9, 'change_claim');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 认领申请', 9, 'delete_claim');
INSERT INTO `auth_permission` VALUES (36, 'Can view 认领申请', 9, 'view_claim');
INSERT INTO `auth_permission` VALUES (37, 'Can add 用户信息', 10, 'add_profile');
INSERT INTO `auth_permission` VALUES (38, 'Can change 用户信息', 10, 'change_profile');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 用户信息', 10, 'delete_profile');
INSERT INTO `auth_permission` VALUES (40, 'Can view 用户信息', 10, 'view_profile');
INSERT INTO `auth_permission` VALUES (41, 'Can add 系统公告', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change 系统公告', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 系统公告', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view 系统公告', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add 招领信息', 12, 'add_founditem');
INSERT INTO `auth_permission` VALUES (46, 'Can change 招领信息', 12, 'change_founditem');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 招领信息', 12, 'delete_founditem');
INSERT INTO `auth_permission` VALUES (48, 'Can view 招领信息', 12, 'view_founditem');
INSERT INTO `auth_permission` VALUES (49, 'Can add 密码重置验证码', 13, 'add_passwordresettoken');
INSERT INTO `auth_permission` VALUES (50, 'Can change 密码重置验证码', 13, 'change_passwordresettoken');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 密码重置验证码', 13, 'delete_passwordresettoken');
INSERT INTO `auth_permission` VALUES (52, 'Can view 密码重置验证码', 13, 'view_passwordresettoken');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (12, 'pbkdf2_sha256$1000000$ypmWUHd4yyLrsu6asFG2Oz$fAG0S96NCkwhZC4pNzZ879aUP1Zk+NxhEY6UIRDwukI=', '2026-03-14 12:46:31.814995', 0, 'test1', '', '', 'test1@qq.com', 0, 1, '2026-01-31 14:43:32.312997');
INSERT INTO `auth_user` VALUES (185, 'pbkdf2_sha256$1000000$LJUFebJefBQVOkvy0w5fbn$hxgLttp7z6A35sEKzASyX3Pybo/dGwJLVQBg6bYMtiA=', '2026-03-22 07:53:13.857143', 1, 'AdminZcx', '', '', '2696432514@qq.com', 1, 1, '2026-02-01 09:15:00.000000');
INSERT INTO `auth_user` VALUES (186, 'pbkdf2_sha256$1000000$rh7PPKTBHX5X4tIFFNjG1V$pY1K9JaB5+deHcZbAZ9fFyEemkAnD3h6MSKP9Jl4HYM=', '2026-03-16 13:24:34.788115', 0, 'test2', '', '', 'test2@qq.com', 0, 1, '2026-02-01 09:18:00.000000');
INSERT INTO `auth_user` VALUES (187, 'pbkdf2_sha256$1000000$GwBK6pMnSY8zJzAXlH3qdT$mGTf+WNuo6bMYhSC96luplPrj9kVEORJtItPKTVXOhM=', '2026-03-16 13:24:51.449545', 0, 'test22', '', '', 'test22@qq.com', 0, 1, '2026-02-01 09:18:00.000000');
INSERT INTO `auth_user` VALUES (189, 'pbkdf2_sha256$1000000$wAsj5bBIiqA1HwYwVccNRL$OqEGGZbxpLcy1TblZS2M6akVj+aoZnKuJC8I7ZjXlII=', '2026-02-02 12:27:52.586494', 0, 'test3', '', '', 'test3@qq.com', 0, 1, '2026-02-01 09:19:24.105478');
INSERT INTO `auth_user` VALUES (190, 'pbkdf2_sha256$1000000$BKtgIWVGP2p4TwwKaD9Ucj$IvqqzsCkn2vc2eCdDdC2rLkXlLE2yngvehG8/wOoH74=', '2026-02-02 08:30:48.576668', 0, 'test33', '', '', 'test33@qq.com', 0, 1, '2026-02-01 09:20:00.000000');
INSERT INTO `auth_user` VALUES (192, 'pbkdf2_sha256$1000000$qanrDibuzIxVvasWqsb35f$JH1SzSs4GLMu5K+kngCOSBZTXgIVqeuhTO7AD2MX46s=', '2026-02-02 09:22:53.362117', 0, 'test4', '', '', 'test4@qq.com', 0, 1, '2026-02-02 09:22:45.498676');
INSERT INTO `auth_user` VALUES (198, 'pbkdf2_sha256$1000000$uGgbhOzEspb11qtFHrs9eh$UWaUw/3QIws8ylldyfJaXEiUB6z2g/WU1/oosKyxG7o=', '2026-03-14 13:06:20.900522', 0, 'zhw', '', '', 'zhw@266.com', 0, 0, '2026-03-08 14:44:44.752535');
INSERT INTO `auth_user` VALUES (201, 'pbkdf2_sha256$1000000$f574VSdOQPkbRJR4bSi1Zg$+/TGKegZX3hmke/VnZgUTrqExbu5BNwqw94GRj+w3lY=', '2026-03-08 15:24:59.493997', 0, 'zhw666', '', '', 'zhw@666.com', 0, 1, '2026-03-08 15:24:09.942126');
INSERT INTO `auth_user` VALUES (202, 'pbkdf2_sha256$1000000$4FmEHKws2xnJH1FJXZTw53$Nnz/k+LX1bD/yToOySXqP2MDKOwLnSxjht7y/ES/i+o=', '2026-03-14 13:53:00.997028', 0, 'test11', '', '', 'test11@qq.com', 0, 1, '2026-03-08 15:49:25.530878');
INSERT INTO `auth_user` VALUES (203, 'pbkdf2_sha256$1000000$JgMRQ4nnFmfHQVB5WXWZmK$u14gMBYpIcIn8DUvsxsxMcEzQfcUN7SegozrLXYkkAY=', '2026-03-14 13:53:20.344971', 0, 'test111', '', '', 'test111@qq.com', 0, 1, '2026-03-12 07:03:00.000000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for claim
-- ----------------------------
DROP TABLE IF EXISTS `claim`;
CREATE TABLE `claim`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `claim_reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `claim_user_id` int NOT NULL,
  `lost_item_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `claim_claim_user_id_27db6faf_fk_auth_user_id`(`claim_user_id` ASC) USING BTREE,
  INDEX `claim_lost_item_id_7d438b55_fk_lost_item_id`(`lost_item_id` ASC) USING BTREE,
  CONSTRAINT `claim_claim_user_id_27db6faf_fk_auth_user_id` FOREIGN KEY (`claim_user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `claim_lost_item_id_7d438b55_fk_lost_item_id` FOREIGN KEY (`lost_item_id`) REFERENCES `lost_item` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of claim
-- ----------------------------
INSERT INTO `claim` VALUES (4, '我的 我的！', 'approved', '可以哦', '2026-02-01 09:34:13.638048', '2026-02-02 07:19:50.180494', 186, 242);
INSERT INTO `claim` VALUES (5, '哒哒哒', 'approved', '', '2026-03-12 07:02:58.745367', '2026-03-12 07:07:02.173061', 202, 250);
INSERT INTO `claim` VALUES (6, '是我的', 'pending', '', '2026-03-14 12:52:12.660267', '2026-03-14 12:52:12.660267', 187, 251);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 871 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (842, '2026-02-01 09:22:29.707923', '187', 'test22', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (843, '2026-02-01 09:23:10.292098', '188', 'test222', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (844, '2026-02-01 09:23:16.213453', '190', 'test33', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (845, '2026-02-01 09:24:17.331880', '187', 'test22', 2, '[{\"changed\": {\"fields\": [\"Superuser status\", \"Last login\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (846, '2026-02-01 09:24:29.758147', '188', 'test222', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (847, '2026-02-01 09:25:07.198776', '186', 'test2', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (848, '2026-02-01 09:25:15.572382', '191', 'test333', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\", \"Last login\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (849, '2026-02-01 09:25:18.465691', '191', 'test333', 2, '[]', 4, 185);
INSERT INTO `django_admin_log` VALUES (850, '2026-02-01 09:25:52.767682', '187', 'test22', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (851, '2026-02-01 09:26:00.594509', '188', 'test222', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (852, '2026-02-01 09:26:13.729769', '190', 'test33', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (853, '2026-02-01 09:26:21.242680', '191', 'test333', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (854, '2026-02-01 09:27:41.893668', '187', 'test22', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\", \"Last login\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (855, '2026-02-01 09:28:56.929236', '191', 'test333', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (856, '2026-02-01 09:30:16.190248', '188', 'test222', 3, '', 4, 185);
INSERT INTO `django_admin_log` VALUES (857, '2026-02-01 09:30:16.190267', '191', 'test333', 3, '', 4, 185);
INSERT INTO `django_admin_log` VALUES (858, '2026-02-01 09:30:24.764433', '186', 'test2', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (859, '2026-02-01 09:30:29.810166', '187', 'test22', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (860, '2026-02-01 09:30:43.489590', '185', 'AdminZcx', 2, '[{\"changed\": {\"fields\": [\"Last login\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (861, '2026-02-01 09:31:02.140454', '193', 'test33 - 武汉大学', 2, '[{\"changed\": {\"fields\": [\"\\u89d2\\u8272\"]}}]', 10, 185);
INSERT INTO `django_admin_log` VALUES (862, '2026-02-01 09:31:06.278961', '190', 'test22 - 武汉工程科技学院', 2, '[{\"changed\": {\"fields\": [\"\\u89d2\\u8272\"]}}]', 10, 185);
INSERT INTO `django_admin_log` VALUES (863, '2026-02-02 08:25:00.554367', '190', 'test33', 2, '[{\"changed\": {\"fields\": [\"Superuser status\", \"Last login\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (864, '2026-02-02 08:25:11.209056', '193', 'test33 - 武汉大学', 2, '[]', 10, 185);
INSERT INTO `django_admin_log` VALUES (865, '2026-02-02 12:22:57.043534', '8', '校园失物招领系统网站运营时间 - 武汉工程科技学院', 3, '', 11, 185);
INSERT INTO `django_admin_log` VALUES (866, '2026-02-02 12:26:48.710089', '6', '欢迎使用校园失物招领系统！！！ - 系统公告', 3, '', 11, 185);
INSERT INTO `django_admin_log` VALUES (867, '2026-03-12 07:04:52.886108', '211', 'test111 - 武汉工程职业技术学院', 2, '[{\"changed\": {\"fields\": [\"\\u89d2\\u8272\"]}}]', 10, 185);
INSERT INTO `django_admin_log` VALUES (868, '2026-03-12 07:10:00.691894', '200', 'test_pwd', 3, '', 4, 185);
INSERT INTO `django_admin_log` VALUES (869, '2026-03-12 07:10:28.668360', '203', 'test111', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\", \"User permissions\", \"Last login\"]}}]', 4, 185);
INSERT INTO `django_admin_log` VALUES (870, '2026-03-12 07:11:46.674226', '203', 'test111', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\", \"User permissions\", \"Last login\"]}}]', 4, 203);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'lostfound', 'claim');
INSERT INTO `django_content_type` VALUES (12, 'lostfound', 'founditem');
INSERT INTO `django_content_type` VALUES (8, 'lostfound', 'lostitem');
INSERT INTO `django_content_type` VALUES (11, 'lostfound', 'notice');
INSERT INTO `django_content_type` VALUES (13, 'lostfound', 'passwordresettoken');
INSERT INTO `django_content_type` VALUES (10, 'lostfound', 'profile');
INSERT INTO `django_content_type` VALUES (7, 'lostfound', 'school');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2026-01-31 07:27:31.227614');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2026-01-31 07:27:31.439974');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2026-01-31 07:27:31.493023');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2026-01-31 07:27:31.498429');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2026-01-31 07:27:31.503608');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2026-01-31 07:27:31.543567');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2026-01-31 07:27:31.573441');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2026-01-31 07:27:31.587752');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2026-01-31 07:27:31.591457');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2026-01-31 07:27:31.613464');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2026-01-31 07:27:31.614509');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2026-01-31 07:27:31.617949');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2026-01-31 07:27:31.643092');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2026-01-31 07:27:31.668005');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2026-01-31 07:27:31.677633');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2026-01-31 07:27:31.681571');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2026-01-31 07:27:31.708363');
INSERT INTO `django_migrations` VALUES (18, 'lostfound', '0001_initial', '2026-01-31 07:27:31.986782');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2026-01-31 07:27:32.000280');
INSERT INTO `django_migrations` VALUES (20, 'lostfound', '0002_alter_profile_school', '2026-01-31 08:54:31.514169');
INSERT INTO `django_migrations` VALUES (21, 'lostfound', '0003_alter_profile_unique_together', '2026-01-31 14:49:40.486902');
INSERT INTO `django_migrations` VALUES (22, 'lostfound', '0004_alter_profile_unique_together_founditem_status', '2026-01-31 15:55:08.573787');
INSERT INTO `django_migrations` VALUES (23, 'lostfound', '0005_notice_is_pinned', '2026-02-01 09:41:58.024436');
INSERT INTO `django_migrations` VALUES (24, 'lostfound', '0006_profile_security_answer_profile_security_question', '2026-03-08 14:34:36.333113');
INSERT INTO `django_migrations` VALUES (25, 'lostfound', '0007_alter_profile_security_question_passwordresettoken', '2026-03-09 07:18:56.959076');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('16dwk718pzrpludjq0q9j64ggl439ojg', '.eJxVjDsOwjAQBe_iGlnrX-ylpOcM1voTHEC2FCcV4u5gKQU0r3gzmhfztG_F7z2vfknszISz7PT7BoqPXAdKd6q3xmOr27oEPhR-0M6vLeXn5XD_AoV6GeGAgmAC_R3jVKToJASLUsiIJoVIOs8aFAi0qIUxNEuYyOpMUqFx7P0BD-43OQ:1vmwej:4KzFuLPej0Wy9k_rBDHkNwruDYuhVVsepDptxLjEydg', '2026-02-16 16:20:05.518889');
INSERT INTO `django_session` VALUES ('84rxtrua9fjvkoqqixd3ukjirfwlgdhr', '.eJxVjEEOwiAQRe_C2pBCgaEu3XsGMjNMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJU1ZnZaJXp9-VkB9Sd5TvWG-z5rmuy0R6V_RBm77OWZ6Xw_07KNjKtxbGgV30WUI_Mgg413F2vUVLwFFgsCEQODtS54IFIfGcTUAEAjJRvT9K_zjW:1w4DcX:DxtB7kVNqGhaAKPPuRBd2BE3HiXJLnzAU83yoNIWSRs', '2026-04-05 07:53:13.864138');
INSERT INTO `django_session` VALUES ('n4n2fornleghl7soruwxgz65dfstrgnu', 'e30:1vmBjp:P5a1YRcNtJYB7WcLxcKNTJ1D5oGnT7B7FdvTObWDPGQ', '2026-02-14 14:14:13.638579');

-- ----------------------------
-- Table structure for found_item
-- ----------------------------
DROP TABLE IF EXISTS `found_item`;
CREATE TABLE `found_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `found_time` datetime(6) NOT NULL,
  `found_location` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `publish_user_id` int NOT NULL,
  `school_id` bigint NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `found_item_publish_user_id_9b8f8bcf_fk_auth_user_id`(`publish_user_id` ASC) USING BTREE,
  INDEX `found_item_school_id_f3fcc2b2_fk_school_id`(`school_id` ASC) USING BTREE,
  CONSTRAINT `found_item_publish_user_id_9b8f8bcf_fk_auth_user_id` FOREIGN KEY (`publish_user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `found_item_school_id_f3fcc2b2_fk_school_id` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 266 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of found_item
-- ----------------------------
INSERT INTO `found_item` VALUES (259, '宿舍捡到小八咯', '可可爱爱', 'other', '2026-02-21 13:34:00.000000', '15栋', '120', 'found_items/IMG_8943.JPG', '2026-02-01 09:34:59.788009', 186, 44, 'unclaimed');
INSERT INTO `found_item` VALUES (260, '你也看到我的小八了嘛', '小八', 'other', '2026-02-20 11:23:00.000000', '小卖部', '999999', 'found_items/IMG_8934.JPG', '2026-02-02 08:24:20.395526', 189, 1, 'returned');
INSERT INTO `found_item` VALUES (264, '呼呼呼', '哒哒哒', 'other', '2026-03-06 16:26:00.000000', '大卖部', '999999', 'found_items/IMG_8937.JPG', '2026-03-08 16:25:20.784797', 202, 51, 'unclaimed');
INSERT INTO `found_item` VALUES (265, '小八', '软软的', 'other', '2026-03-07 12:52:00.000000', '走道', '999999', 'found_items/IMG_8944.JPG', '2026-03-14 12:50:41.354889', 186, 44, 'unclaimed');

-- ----------------------------
-- Table structure for lost_item
-- ----------------------------
DROP TABLE IF EXISTS `lost_item`;
CREATE TABLE `lost_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lost_time` datetime(6) NOT NULL,
  `lost_location` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `publish_user_id` int NOT NULL,
  `school_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lost_item_publish_user_id_b7179849_fk_auth_user_id`(`publish_user_id` ASC) USING BTREE,
  INDEX `lost_item_school_id_989d9f68_fk_school_id`(`school_id` ASC) USING BTREE,
  CONSTRAINT `lost_item_publish_user_id_b7179849_fk_auth_user_id` FOREIGN KEY (`publish_user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lost_item_school_id_989d9f68_fk_school_id` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 252 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lost_item
-- ----------------------------
INSERT INTO `lost_item` VALUES (242, '可爱小八', '蓝色的', 'other', '2026-02-01 11:33:00.000000', '1教', '110', 'lost_items/IMG_8941.JPG', 'claimed', '2026-02-01 09:32:49.454531', 187, 44);
INSERT INTO `lost_item` VALUES (243, '聪明的小八', '粉色的', 'other', '2026-02-01 11:36:00.000000', '2教', '120', 'lost_items/IMG_8948.JPG', 'unclaimed', '2026-02-01 09:33:56.394296', 186, 44);
INSERT INTO `lost_item` VALUES (244, '奇怪的小八', '可可爱爱没有脑袋', 'other', '2026-02-02 02:25:00.000000', '雷军楼', '11000', 'lost_items/IMG_8938.JPG', 'unclaimed', '2026-02-02 08:23:13.986143', 189, 1);
INSERT INTO `lost_item` VALUES (250, '哔哔哔', '哇咔咔', 'other', '2026-03-06 15:47:00.000000', '2教', '119', 'lost_items/IMG_8946.JPG', 'claimed', '2026-03-08 15:47:36.232148', 12, 51);
INSERT INTO `lost_item` VALUES (251, '遗落的物品', '可爱的小八', 'other', '2026-03-06 14:48:00.000000', '1教', '999999', 'lost_items/IMG_8925.JPG', 'unclaimed', '2026-03-14 12:48:23.791575', 186, 44);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `publish_user_id` int NOT NULL,
  `school_id` bigint NULL DEFAULT NULL,
  `is_pinned` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notice_publish_user_id_525d6064_fk_auth_user_id`(`publish_user_id` ASC) USING BTREE,
  INDEX `notice_school_id_a2feb3eb_fk_school_id`(`school_id` ASC) USING BTREE,
  CONSTRAINT `notice_publish_user_id_525d6064_fk_auth_user_id` FOREIGN KEY (`publish_user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `notice_school_id_a2feb3eb_fk_school_id` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (7, '欢迎加入武汉工程科技学院大家庭', 'We Are Family ! ! !', '2026-02-01 09:31:58.919134', 187, 44, 0);
INSERT INTO `notice` VALUES (9, '同学有任何问题请反馈！！！', '邮箱:WhatHappenWithU@120.com', '2026-02-01 09:51:49.473712', 187, 44, 0);
INSERT INTO `notice` VALUES (11, '这是本系统运作的第二天！', '接受大家的批评与指导\r\n有任何联系请联系邮箱：WhatHappenWithU@120.com', '2026-02-02 07:59:21.990000', 187, 44, 0);
INSERT INTO `notice` VALUES (12, '武汉大学校园失物招领系统开始Working！', '欢迎同学们的使用！！！', '2026-02-02 08:31:36.241085', 190, 1, 0);
INSERT INTO `notice` VALUES (13, '校园失物招领系统网站运营时间', '每天早上8点------每天晚上8点', '2026-02-02 12:23:23.102795', 185, NULL, 1);
INSERT INTO `notice` VALUES (14, '欢迎使用校园失物招领系统！！！', '此网站由Django框架支持！！！\r\n如果想申请进入校级管理员请联系我：28192673@qq.com', '2026-02-02 12:27:21.976356', 185, NULL, 1);

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dorm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  `school_id` bigint NULL DEFAULT NULL,
  `security_answer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `security_question` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `profile_school_id_4cd7f706`(`school_id` ASC) USING BTREE,
  CONSTRAINT `profile_school_id_4cd7f706_fk_school_id` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `profile_user_id_2aeb6f6b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 212 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES (15, '18086666679', '01', '15栋', 'user', '2026-01-31 14:43:32.678809', 12, 51, '2024', '你的入学年份是？');
INSERT INTO `profile` VALUES (188, '', 'SUPER_185', '', 'admin', '2026-02-01 09:15:39.872800', 185, NULL, '', '');
INSERT INTO `profile` VALUES (189, '18086666002', '002', '002栋', 'user', '2026-02-01 09:18:08.592179', 186, 44, '', '');
INSERT INTO `profile` VALUES (190, '18086666022', '022', '022栋', 'admin', '2026-02-01 09:18:31.819026', 187, 44, '', '');
INSERT INTO `profile` VALUES (192, '18086666003', '003', '003栋', 'user', '2026-02-01 09:19:24.525060', 189, 1, '', '');
INSERT INTO `profile` VALUES (193, '18086666033', '033', '033栋', 'admin', '2026-02-01 09:20:05.761261', 190, 1, '', '');
INSERT INTO `profile` VALUES (195, '18181818004', '004', '004栋', 'user', '2026-02-02 09:22:45.904865', 192, 2, '', '');
INSERT INTO `profile` VALUES (205, '18086666673', '001', '01', 'user', '2026-03-08 14:44:45.226205', 198, 49, '荆州', 'birth_city');
INSERT INTO `profile` VALUES (209, '18086666666', '006', '01', 'user', '2026-03-08 15:24:10.410558', 201, 68, '2024', '你的入学年份是？');
INSERT INTO `profile` VALUES (210, '18086666677', '011', '05', 'user', '2026-03-08 15:49:25.991337', 202, 51, '', '');
INSERT INTO `profile` VALUES (211, '1643434343', '111', '111栋', 'admin', '2026-03-12 07:03:53.313252', 203, 51, '', '');

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES (1, '武汉大学', 'WH001', '2026-01-31 13:53:49.738755');
INSERT INTO `school` VALUES (2, '华中科技大学', 'WH002', '2026-01-31 13:53:49.739822');
INSERT INTO `school` VALUES (3, '武汉科技大学', 'WH003', '2026-01-31 13:53:49.740950');
INSERT INTO `school` VALUES (4, '武汉工程大学', 'WH004', '2026-01-31 13:53:49.741805');
INSERT INTO `school` VALUES (5, '中国地质大学（武汉）', 'WH005', '2026-01-31 13:53:49.742724');
INSERT INTO `school` VALUES (6, '武汉纺织大学', 'WH006', '2026-01-31 13:53:49.743654');
INSERT INTO `school` VALUES (7, '武汉轻工大学', 'WH007', '2026-01-31 13:53:49.744488');
INSERT INTO `school` VALUES (8, '武汉理工大学', 'WH008', '2026-01-31 13:53:49.745365');
INSERT INTO `school` VALUES (9, '湖北工业大学', 'WH009', '2026-01-31 13:53:49.746447');
INSERT INTO `school` VALUES (10, '华中农业大学', 'WH010', '2026-01-31 13:53:49.747374');
INSERT INTO `school` VALUES (11, '湖北中医药大学', 'WH011', '2026-01-31 13:53:49.748200');
INSERT INTO `school` VALUES (12, '华中师范大学', 'WH012', '2026-01-31 13:53:49.749181');
INSERT INTO `school` VALUES (13, '湖北大学', 'WH013', '2026-01-31 13:53:49.750045');
INSERT INTO `school` VALUES (14, '中南财经政法大学', 'WH014', '2026-01-31 13:53:49.750892');
INSERT INTO `school` VALUES (15, '武汉体育学院', 'WH015', '2026-01-31 13:53:49.751712');
INSERT INTO `school` VALUES (16, '湖北美术学院', 'WH016', '2026-01-31 13:53:49.752741');
INSERT INTO `school` VALUES (17, '中南民族大学', 'WH017', '2026-01-31 13:53:49.753554');
INSERT INTO `school` VALUES (18, '江汉大学', 'WH018', '2026-01-31 13:53:49.754249');
INSERT INTO `school` VALUES (19, '湖北警官学院', 'WH019', '2026-01-31 13:53:49.755271');
INSERT INTO `school` VALUES (20, '武汉音乐学院', 'WH020', '2026-01-31 13:53:49.756313');
INSERT INTO `school` VALUES (21, '湖北经济学院', 'WH021', '2026-01-31 13:53:49.757247');
INSERT INTO `school` VALUES (22, '武汉商学院', 'WH022', '2026-01-31 13:53:49.758133');
INSERT INTO `school` VALUES (23, '湖北第二师范学院', 'WH023', '2026-01-31 13:53:49.759072');
INSERT INTO `school` VALUES (24, '武汉职业技术大学', 'WH024', '2026-01-31 13:53:49.760006');
INSERT INTO `school` VALUES (25, '武汉东湖学院', 'WH025', '2026-01-31 13:53:49.760829');
INSERT INTO `school` VALUES (26, '汉口学院', 'WH026', '2026-01-31 13:53:49.761958');
INSERT INTO `school` VALUES (27, '武昌首义学院', 'WH027', '2026-01-31 13:53:49.762835');
INSERT INTO `school` VALUES (28, '武昌理工学院', 'WH028', '2026-01-31 13:53:49.763964');
INSERT INTO `school` VALUES (29, '武汉生物工程学院', 'WH029', '2026-01-31 13:53:49.765045');
INSERT INTO `school` VALUES (30, '武汉晴川学院', 'WH030', '2026-01-31 13:53:49.765988');
INSERT INTO `school` VALUES (31, '湖北大学知行学院', 'WH031', '2026-01-31 13:53:49.766842');
INSERT INTO `school` VALUES (32, '武汉城市学院', 'WH032', '2026-01-31 13:53:49.768092');
INSERT INTO `school` VALUES (33, '武汉文理学院', 'WH033', '2026-01-31 13:53:49.769347');
INSERT INTO `school` VALUES (34, '湖北工业大学工程技术学院', 'WH034', '2026-01-31 13:53:49.770223');
INSERT INTO `school` VALUES (35, '武汉工程大学邮电与信息工程学院', 'WH035', '2026-01-31 13:53:49.771267');
INSERT INTO `school` VALUES (36, '武汉纺织大学外经贸学院', 'WH036', '2026-01-31 13:53:49.772091');
INSERT INTO `school` VALUES (37, '武昌工学院', 'WH037', '2026-01-31 13:53:49.772887');
INSERT INTO `school` VALUES (38, '武汉工商学院', 'WH038', '2026-01-31 13:53:49.773834');
INSERT INTO `school` VALUES (39, '湖北商贸学院', 'WH039', '2026-01-31 13:53:49.774725');
INSERT INTO `school` VALUES (40, '湖北经济学院法商学院', 'WH040', '2026-01-31 13:53:49.775603');
INSERT INTO `school` VALUES (41, '武汉体育学院体育科技学院', 'WH041', '2026-01-31 13:53:49.776404');
INSERT INTO `school` VALUES (42, '文华学院', 'WH042', '2026-01-31 13:53:49.777164');
INSERT INTO `school` VALUES (43, '武汉学院', 'WH043', '2026-01-31 13:53:49.777936');
INSERT INTO `school` VALUES (44, '武汉工程科技学院', 'WH044', '2026-01-31 13:53:49.778754');
INSERT INTO `school` VALUES (45, '武汉华夏理工学院', 'WH045', '2026-01-31 13:53:49.779701');
INSERT INTO `school` VALUES (46, '武汉传媒学院', 'WH046', '2026-01-31 13:53:49.780717');
INSERT INTO `school` VALUES (47, '武汉设计工程学院', 'WH047', '2026-01-31 13:53:49.781554');
INSERT INTO `school` VALUES (48, '长江职业学院', 'WH048', '2026-01-31 13:53:49.782367');
INSERT INTO `school` VALUES (49, '武汉城市职业学院', 'WH049', '2026-01-31 13:53:49.783349');
INSERT INTO `school` VALUES (50, '武汉船舶职业技术学院', 'WH050', '2026-01-31 13:53:49.784098');
INSERT INTO `school` VALUES (51, '武汉工程职业技术学院', 'WH051', '2026-01-31 13:53:49.784804');
INSERT INTO `school` VALUES (52, '湖北轻工职业技术学院', 'WH052', '2026-01-31 13:53:49.785800');
INSERT INTO `school` VALUES (53, '湖北交通职业技术学院', 'WH053', '2026-01-31 13:53:49.787135');
INSERT INTO `school` VALUES (54, '武汉航海职业技术学院', 'WH054', '2026-01-31 13:53:49.788195');
INSERT INTO `school` VALUES (55, '武汉铁路职业技术学院', 'WH055', '2026-01-31 13:53:49.788984');
INSERT INTO `school` VALUES (56, '武汉软件工程职业学院', 'WH056', '2026-01-31 13:53:49.789702');
INSERT INTO `school` VALUES (57, '武汉电力职业技术学院', 'WH057', '2026-01-31 13:53:49.790410');
INSERT INTO `school` VALUES (58, '湖北水利水电职业技术学院', 'WH058', '2026-01-31 13:53:49.791137');
INSERT INTO `school` VALUES (59, '湖北城市建设职业技术学院', 'WH059', '2026-01-31 13:53:49.792029');
INSERT INTO `school` VALUES (60, '武汉警官职业学院', 'WH060', '2026-01-31 13:53:49.793027');
INSERT INTO `school` VALUES (61, '湖北生物科技职业学院', 'WH061', '2026-01-31 13:53:49.793898');
INSERT INTO `school` VALUES (62, '湖北艺术职业学院', 'WH062', '2026-01-31 13:53:49.794683');
INSERT INTO `school` VALUES (63, '武汉交通职业学院', 'WH063', '2026-01-31 13:53:49.795424');
INSERT INTO `school` VALUES (64, '长江工程职业技术学院', 'WH064', '2026-01-31 13:53:49.796327');
INSERT INTO `school` VALUES (65, '武汉民政职业学院', 'WH065', '2026-01-31 13:53:49.797064');
INSERT INTO `school` VALUES (66, '湖北财税职业学院', 'WH066', '2026-01-31 13:53:49.797881');
INSERT INTO `school` VALUES (67, '湖北国土资源职业学院', 'WH067', '2026-01-31 13:53:49.798714');
INSERT INTO `school` VALUES (68, '湖北生态工程职业技术学院', 'WH068', '2026-01-31 13:53:49.799564');
INSERT INTO `school` VALUES (69, '湖北科技职业学院', 'WH069', '2026-01-31 13:53:49.800536');
INSERT INTO `school` VALUES (70, '湖北青年职业学院', 'WH070', '2026-01-31 13:53:49.801468');
INSERT INTO `school` VALUES (71, '湖北体育职业学院', 'WH071', '2026-01-31 13:53:49.802653');
INSERT INTO `school` VALUES (72, '湖北幼儿师范高等专科学校', 'WH072', '2026-01-31 13:53:49.803744');
INSERT INTO `school` VALUES (73, '湖北铁道运输职业学院', 'WH073', '2026-01-31 13:53:49.804620');
INSERT INTO `school` VALUES (74, '武汉海事职业学院', 'WH074', '2026-01-31 13:53:49.805651');
INSERT INTO `school` VALUES (75, '武汉铁路桥梁职业学院', 'WH075', '2026-01-31 13:53:49.806433');
INSERT INTO `school` VALUES (76, '武汉工贸职业学院', 'WH076', '2026-01-31 13:53:49.807301');
INSERT INTO `school` VALUES (77, '湖北开放职业学院', 'WH077', '2026-01-31 13:53:49.808200');
INSERT INTO `school` VALUES (78, '武汉科技职业学院', 'WH078', '2026-01-31 13:53:49.809093');
INSERT INTO `school` VALUES (79, '武汉外语外事职业学院', 'WH079', '2026-01-31 13:53:49.810049');
INSERT INTO `school` VALUES (80, '武汉信息传播职业技术学院', 'WH080', '2026-01-31 13:53:49.810807');
INSERT INTO `school` VALUES (81, '武昌职业学院', 'WH081', '2026-01-31 13:53:49.811680');
INSERT INTO `school` VALUES (82, '武汉商贸职业学院', 'WH082', '2026-01-31 13:53:49.812600');
INSERT INTO `school` VALUES (83, '武汉光谷职业学院', 'WH083', '2026-01-31 13:53:49.813588');

SET FOREIGN_KEY_CHECKS = 1;
