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

 Date: 13/03/2026 13:50:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
