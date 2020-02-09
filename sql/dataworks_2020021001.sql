/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100140
 Source Host           : localhost:3306
 Source Schema         : dataworks

 Target Server Type    : MySQL
 Target Server Version : 100140
 File Encoding         : 65001

 Date: 10/02/2020 03:25:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hco_henan
-- ----------------------------
DROP TABLE IF EXISTS `hco_henan`;
CREATE TABLE `hco_henan` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `text` longtext COLLATE utf8_bin,
  `location_id` int(255) DEFAULT NULL COMMENT '地区外键',
  `country_id` int(255) DEFAULT NULL COMMENT '数据所属国家id',
  `province_id` int(255) DEFAULT NULL COMMENT '数据所属省id',
  `city_id` int(255) DEFAULT NULL COMMENT '数据所属城市id',
  `datetime` datetime DEFAULT NULL COMMENT '数据所属时间',
  `entry_time` datetime DEFAULT NULL COMMENT '录入本表的时间',
  `entry_log_id` int(255) DEFAULT NULL COMMENT '录入日志表id',
  `newly_confirmed_cases` int(255) DEFAULT NULL,
  `newly_cured_cases` int(255) DEFAULT NULL,
  `observers_removed_cases` int(255) DEFAULT NULL,
  `newly_suspected_cases` int(255) DEFAULT NULL,
  `href` text COLLATE utf8_bin,
  `cumulative_confirmed_cases` int(255) DEFAULT NULL,
  `cumulative_severe_cases` int(255) DEFAULT NULL,
  `cumulative_critical_cases` int(255) DEFAULT NULL,
  `cumulative_death_cases` int(255) DEFAULT NULL,
  `cumulative_cured_cases` int(255) DEFAULT NULL,
  `cumulative_close_contacts` int(255) DEFAULT NULL,
  `cumulative_medical_observers` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of hco_henan
-- ----------------------------
BEGIN;
INSERT INTO `hco_henan` VALUES (73, '·截至2月7日24时河南省新型冠状病毒感染的肺炎疫情最新情况', 455, 1, 455, 0, '2020-02-07 00:00:00', '2020-02-09 15:13:54', 0, 67, 29, 3516, 56, '/contents/854/48186.shtml', 981, 58, 28, 4, 97, 20928, 10187);
INSERT INTO `hco_henan` VALUES (74, '·截至2月5日24时河南省新型冠状病毒感染的肺炎疫情最新情况', 455, 1, 455, 0, '2020-02-05 00:00:00', '2020-02-09 15:13:54', 0, 87, 13, 2415, 45, '/contents/854/48151.shtml', 851, 38, 24, 2, 54, 17467, 9950);
INSERT INTO `hco_henan` VALUES (75, '·截至2月3日24时河南省新型冠状病毒感染的肺炎疫情最新情况', 455, 1, 455, 0, '2020-02-03 00:00:00', '2020-02-09 15:13:54', 0, 109, 6, 1827, 44, '/contents/854/48118.shtml', 675, 39, 15, 2, 20, 14533, 9030);
INSERT INTO `hco_henan` VALUES (76, '·截至2月6日24时河南省新型冠状病毒感染的肺炎疫情最新情况', 455, 1, 455, 0, '2020-02-06 00:00:00', '2020-02-09 15:13:54', 0, 63, 14, 3356, 66, '/contents/854/48170.shtml', 914, 48, 27, 3, 68, 19555, 10138);
INSERT INTO `hco_henan` VALUES (77, '·截至2月4日24时河南省新型冠状病毒感染的肺炎疫情最新情况', 455, 1, 455, 0, '2020-02-04 00:00:00', '2020-02-09 15:13:54', 0, 89, 21, 2285, 52, '/contents/854/48133.shtml', 764, 38, 19, 2, 41, 16088, 9695);
INSERT INTO `hco_henan` VALUES (78, '·截至2月1日24时河南省新型冠状病毒感染的肺炎疫情最新情况', 455, 1, 455, 0, '2020-02-01 00:00:00', '2020-02-09 15:13:54', 0, 71, 1, 1263, 17, '/contents/854/48099.shtml', 493, 32, 12, 2, 4, 11012, 7162);
INSERT INTO `hco_henan` VALUES (79, '·截至2月2日24时河南省新型冠状病毒感染的肺炎疫情最新情况', 455, 1, 455, 0, '2020-02-02 00:00:00', '2020-02-09 15:13:54', 0, 73, 10, 1424, 26, '/contents/854/48111.shtml', 566, 30, 14, 2, 14, 12797, 8250);
COMMIT;

-- ----------------------------
-- Table structure for hco_henan_growth_rates
-- ----------------------------
DROP TABLE IF EXISTS `hco_henan_growth_rates`;
CREATE TABLE `hco_henan_growth_rates` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `datetime` datetime(6) DEFAULT NULL COMMENT '数据所属时间',
  `cumulative_confirmed_cases_growth_rates` double(8,5) DEFAULT NULL COMMENT '确诊病例数目 较昨日的增长率',
  `cumulative_medical_observers_growth_rates` double(8,5) DEFAULT NULL COMMENT '正在接受医学观察人数 较昨日的增长率',
  `cumulative_death_cases_growth_rates` double(8,5) DEFAULT NULL COMMENT '死亡病例数目 较昨日的增长率',
  `cumulative_cured_cases_growth_rates` double(8,5) DEFAULT NULL COMMENT '治愈病例 较昨日的增长率',
  `cumulative_severe_cases_growth_rates` double(8,5) DEFAULT NULL COMMENT '重症病例 较昨日的增长率',
  `cumulative_critical_cases_growth_rates` double(8,5) DEFAULT NULL COMMENT '危重病例 较昨日的增长率',
  `cumulative_close_contacts_growth_rates` double(8,5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of hco_henan_growth_rates
-- ----------------------------
BEGIN;
INSERT INTO `hco_henan_growth_rates` VALUES (3, '2020-02-01 00:00:00.000000', -14.80730, 999.99999, -98.00000, -346.00000, -61.75000, -104.66667, 999.99999);
INSERT INTO `hco_henan_growth_rates` VALUES (4, '2020-02-06 00:00:00.000000', -7.33042, 999.99999, -130.33333, -74.64706, -72.83333, -76.70370, 999.99999);
INSERT INTO `hco_henan_growth_rates` VALUES (5, '2020-02-05 00:00:00.000000', -7.40306, 999.99999, -148.00000, -71.92593, -88.31579, -88.50000, 999.99999);
INSERT INTO `hco_henan_growth_rates` VALUES (6, '2020-02-04 00:00:00.000000', -11.38743, 999.99999, -98.00000, -90.70732, -62.00000, -107.31579, 999.99999);
INSERT INTO `hco_henan_growth_rates` VALUES (7, '2020-02-03 00:00:00.000000', -13.18519, 999.99999, -98.00000, -185.00000, -58.43590, -111.66667, 999.99999);
INSERT INTO `hco_henan_growth_rates` VALUES (8, '2020-02-02 00:00:00.000000', -19.25795, 999.99999, -98.00000, -128.85714, -100.00000, -93.14286, 999.99999);
INSERT INTO `hco_henan_growth_rates` VALUES (9, '2020-02-01 00:00:00.000000', -14.80730, 999.99999, -98.00000, -346.00000, -61.75000, -104.66667, 999.99999);
COMMIT;

-- ----------------------------
-- Table structure for hco_hubei
-- ----------------------------
DROP TABLE IF EXISTS `hco_hubei`;
CREATE TABLE `hco_hubei` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `location_id` int(255) DEFAULT NULL COMMENT '地区外键',
  `country_id` int(255) DEFAULT NULL COMMENT '数据所属国家id',
  `province_id` int(255) DEFAULT NULL COMMENT '数据所属省id',
  `city_id` int(255) DEFAULT NULL COMMENT '数据所属城市id',
  `datetime` datetime DEFAULT NULL COMMENT '数据所属时间',
  `totalConfirmed` int(128) DEFAULT NULL COMMENT '确诊病例数目',
  `totalDoubtful` int(128) DEFAULT NULL COMMENT '疑似病例数目',
  `totalDeath` int(128) DEFAULT NULL COMMENT '死亡病例数目',
  `totalCured` int(128) DEFAULT NULL COMMENT '治愈人数',
  `totalConfirmed_growth` int(128) DEFAULT NULL COMMENT '较昨日日新增病例',
  `totalCloseContact` int(128) DEFAULT NULL COMMENT '密切接触者',
  `totalUnderMedicalObservation` int(255) DEFAULT NULL COMMENT '尚在接受医学观察',
  `entry_time` datetime DEFAULT NULL COMMENT '录入本表的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of hco_hubei
-- ----------------------------
BEGIN;
INSERT INTO `hco_hubei` VALUES (14, 403, 1, 403, NULL, '2020-02-07 00:00:00', 24953, NULL, 699, 1115, 2841, 114044, 67802, '2020-02-10 03:25:03');
INSERT INTO `hco_hubei` VALUES (15, 403, 1, 403, NULL, '2020-02-06 00:00:00', 22112, NULL, 618, 817, 2447, 101599, 64057, '2020-02-10 03:25:03');
INSERT INTO `hco_hubei` VALUES (16, 403, 1, 403, NULL, '2020-02-01 00:00:00', 9074, NULL, 294, 215, 1921, 48571, 43121, '2020-02-10 03:25:03');
INSERT INTO `hco_hubei` VALUES (17, 403, 1, 403, NULL, '2020-02-02 00:00:00', 11177, NULL, 350, 295, 2103, 56088, 48171, '2020-02-10 03:25:03');
INSERT INTO `hco_hubei` VALUES (18, 403, 1, 403, NULL, '2020-02-05 00:00:00', 19665, NULL, 549, 633, 2987, 90997, 64127, '2020-02-10 03:25:03');
INSERT INTO `hco_hubei` VALUES (19, 403, 1, 403, NULL, '2020-02-08 00:00:00', 27100, NULL, 780, 1439, 2147, 123827, 70438, '2020-02-10 03:25:03');
COMMIT;

-- ----------------------------
-- Table structure for t_area
-- ----------------------------
DROP TABLE IF EXISTS `t_area`;
CREATE TABLE `t_area` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `level` int(16) DEFAULT NULL COMMENT '等级;1:国,2:省/直辖市/自治区,3:市',
  `parent_id` int(255) DEFAULT NULL COMMENT '上级地区id',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '地区名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=807 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='地区表';

-- ----------------------------
-- Records of t_area
-- ----------------------------
BEGIN;
INSERT INTO `t_area` VALUES (1, 1, NULL, '中国');
INSERT INTO `t_area` VALUES (403, 2, 1, '湖北省');
INSERT INTO `t_area` VALUES (404, 3, 403, '武汉');
INSERT INTO `t_area` VALUES (405, 3, 403, '黄冈');
INSERT INTO `t_area` VALUES (406, 3, 403, '孝感');
INSERT INTO `t_area` VALUES (407, 3, 403, '襄阳');
INSERT INTO `t_area` VALUES (408, 3, 403, '荆州');
INSERT INTO `t_area` VALUES (409, 3, 403, '随州');
INSERT INTO `t_area` VALUES (410, 3, 403, '宜昌');
INSERT INTO `t_area` VALUES (411, 3, 403, '荆门');
INSERT INTO `t_area` VALUES (412, 3, 403, '黄石');
INSERT INTO `t_area` VALUES (413, 3, 403, '鄂州');
INSERT INTO `t_area` VALUES (414, 3, 403, '咸宁');
INSERT INTO `t_area` VALUES (415, 3, 403, '十堰');
INSERT INTO `t_area` VALUES (416, 3, 403, '仙桃');
INSERT INTO `t_area` VALUES (417, 3, 403, '天门');
INSERT INTO `t_area` VALUES (418, 3, 403, '恩施');
INSERT INTO `t_area` VALUES (419, 3, 403, '潜江');
INSERT INTO `t_area` VALUES (420, 3, 403, '神农架林区');
INSERT INTO `t_area` VALUES (421, 3, 403, '待确认地区');
INSERT INTO `t_area` VALUES (422, 2, 1, '广东省');
INSERT INTO `t_area` VALUES (423, 3, 422, '深圳');
INSERT INTO `t_area` VALUES (424, 3, 422, '广州');
INSERT INTO `t_area` VALUES (425, 3, 422, '珠海');
INSERT INTO `t_area` VALUES (426, 3, 422, '佛山');
INSERT INTO `t_area` VALUES (427, 3, 422, '东莞');
INSERT INTO `t_area` VALUES (428, 3, 422, '惠州');
INSERT INTO `t_area` VALUES (429, 3, 422, '中山');
INSERT INTO `t_area` VALUES (430, 3, 422, '汕头');
INSERT INTO `t_area` VALUES (431, 3, 422, '湛江');
INSERT INTO `t_area` VALUES (432, 3, 422, '肇庆');
INSERT INTO `t_area` VALUES (433, 3, 422, '阳江');
INSERT INTO `t_area` VALUES (434, 3, 422, '梅州');
INSERT INTO `t_area` VALUES (435, 3, 422, '清远');
INSERT INTO `t_area` VALUES (436, 3, 422, '揭阳');
INSERT INTO `t_area` VALUES (437, 3, 422, '汕尾');
INSERT INTO `t_area` VALUES (438, 3, 422, '韶关');
INSERT INTO `t_area` VALUES (439, 3, 422, '江门');
INSERT INTO `t_area` VALUES (440, 3, 422, '茂名');
INSERT INTO `t_area` VALUES (441, 3, 422, '潮州');
INSERT INTO `t_area` VALUES (442, 3, 422, '河源');
INSERT INTO `t_area` VALUES (443, 2, 1, '浙江省');
INSERT INTO `t_area` VALUES (444, 3, 443, '温州');
INSERT INTO `t_area` VALUES (445, 3, 443, '杭州');
INSERT INTO `t_area` VALUES (446, 3, 443, '台州');
INSERT INTO `t_area` VALUES (447, 3, 443, '宁波');
INSERT INTO `t_area` VALUES (448, 3, 443, '金华');
INSERT INTO `t_area` VALUES (449, 3, 443, '绍兴');
INSERT INTO `t_area` VALUES (450, 3, 443, '嘉兴');
INSERT INTO `t_area` VALUES (451, 3, 443, '丽水');
INSERT INTO `t_area` VALUES (452, 3, 443, '衢州');
INSERT INTO `t_area` VALUES (453, 3, 443, '湖州');
INSERT INTO `t_area` VALUES (454, 3, 443, '舟山');
INSERT INTO `t_area` VALUES (455, 2, 1, '河南省');
INSERT INTO `t_area` VALUES (456, 3, 455, '信阳');
INSERT INTO `t_area` VALUES (457, 3, 455, '南阳');
INSERT INTO `t_area` VALUES (458, 3, 455, '郑州');
INSERT INTO `t_area` VALUES (459, 3, 455, '驻马店');
INSERT INTO `t_area` VALUES (460, 3, 455, '商丘');
INSERT INTO `t_area` VALUES (461, 3, 455, '周口');
INSERT INTO `t_area` VALUES (462, 3, 455, '安阳');
INSERT INTO `t_area` VALUES (463, 3, 455, '新乡');
INSERT INTO `t_area` VALUES (464, 3, 455, '漯河');
INSERT INTO `t_area` VALUES (465, 3, 455, '平顶山');
INSERT INTO `t_area` VALUES (466, 3, 455, '许昌');
INSERT INTO `t_area` VALUES (467, 3, 455, '开封');
INSERT INTO `t_area` VALUES (468, 3, 455, '焦作');
INSERT INTO `t_area` VALUES (469, 3, 455, '鹤壁');
INSERT INTO `t_area` VALUES (470, 3, 455, '洛阳');
INSERT INTO `t_area` VALUES (471, 3, 455, '三门峡');
INSERT INTO `t_area` VALUES (472, 3, 455, '濮阳');
INSERT INTO `t_area` VALUES (473, 3, 455, '济源示范区');
INSERT INTO `t_area` VALUES (474, 2, 1, '湖南省');
INSERT INTO `t_area` VALUES (475, 3, 474, '长沙');
INSERT INTO `t_area` VALUES (476, 3, 474, '岳阳');
INSERT INTO `t_area` VALUES (477, 3, 474, '邵阳');
INSERT INTO `t_area` VALUES (478, 3, 474, '常德');
INSERT INTO `t_area` VALUES (479, 3, 474, '娄底');
INSERT INTO `t_area` VALUES (480, 3, 474, '衡阳');
INSERT INTO `t_area` VALUES (481, 3, 474, '怀化');
INSERT INTO `t_area` VALUES (482, 3, 474, '益阳');
INSERT INTO `t_area` VALUES (483, 3, 474, '永州');
INSERT INTO `t_area` VALUES (484, 3, 474, '株洲');
INSERT INTO `t_area` VALUES (485, 3, 474, '郴州');
INSERT INTO `t_area` VALUES (486, 3, 474, '湘潭');
INSERT INTO `t_area` VALUES (487, 3, 474, '湘西自治州');
INSERT INTO `t_area` VALUES (488, 3, 474, '张家界');
INSERT INTO `t_area` VALUES (489, 2, 1, '安徽省');
INSERT INTO `t_area` VALUES (490, 3, 489, '合肥');
INSERT INTO `t_area` VALUES (491, 3, 489, '阜阳');
INSERT INTO `t_area` VALUES (492, 3, 489, '安庆');
INSERT INTO `t_area` VALUES (493, 3, 489, '亳州');
INSERT INTO `t_area` VALUES (494, 3, 489, '蚌埠');
INSERT INTO `t_area` VALUES (495, 3, 489, '马鞍山');
INSERT INTO `t_area` VALUES (496, 3, 489, '宿州');
INSERT INTO `t_area` VALUES (497, 3, 489, '六安');
INSERT INTO `t_area` VALUES (498, 3, 489, '铜陵');
INSERT INTO `t_area` VALUES (499, 3, 489, '芜湖');
INSERT INTO `t_area` VALUES (500, 3, 489, '黄山');
INSERT INTO `t_area` VALUES (501, 3, 489, '滁州');
INSERT INTO `t_area` VALUES (502, 3, 489, '淮北');
INSERT INTO `t_area` VALUES (503, 3, 489, '淮南');
INSERT INTO `t_area` VALUES (504, 3, 489, '池州');
INSERT INTO `t_area` VALUES (505, 3, 489, '宣城');
INSERT INTO `t_area` VALUES (506, 2, 1, '江西省');
INSERT INTO `t_area` VALUES (507, 3, 506, '南昌');
INSERT INTO `t_area` VALUES (508, 3, 506, '九江');
INSERT INTO `t_area` VALUES (509, 3, 506, '新余');
INSERT INTO `t_area` VALUES (510, 3, 506, '宜春');
INSERT INTO `t_area` VALUES (511, 3, 506, '赣州');
INSERT INTO `t_area` VALUES (512, 3, 506, '上饶');
INSERT INTO `t_area` VALUES (513, 3, 506, '抚州');
INSERT INTO `t_area` VALUES (514, 3, 506, '萍乡');
INSERT INTO `t_area` VALUES (515, 3, 506, '吉安');
INSERT INTO `t_area` VALUES (516, 3, 506, '鹰潭');
INSERT INTO `t_area` VALUES (517, 3, 506, '景德镇');
INSERT INTO `t_area` VALUES (518, 2, 1, '重庆市');
INSERT INTO `t_area` VALUES (519, 2, 1, '江苏省');
INSERT INTO `t_area` VALUES (520, 3, 519, '苏州');
INSERT INTO `t_area` VALUES (521, 3, 519, '南京');
INSERT INTO `t_area` VALUES (522, 3, 519, '徐州');
INSERT INTO `t_area` VALUES (523, 3, 519, '无锡');
INSERT INTO `t_area` VALUES (524, 3, 519, '泰州');
INSERT INTO `t_area` VALUES (525, 3, 519, '南通');
INSERT INTO `t_area` VALUES (526, 3, 519, '淮安');
INSERT INTO `t_area` VALUES (527, 3, 519, '盐城');
INSERT INTO `t_area` VALUES (528, 3, 519, '常州');
INSERT INTO `t_area` VALUES (529, 3, 519, '扬州');
INSERT INTO `t_area` VALUES (530, 3, 519, '连云港');
INSERT INTO `t_area` VALUES (531, 3, 519, '宿迁');
INSERT INTO `t_area` VALUES (532, 3, 519, '镇江');
INSERT INTO `t_area` VALUES (533, 2, 1, '山东省');
INSERT INTO `t_area` VALUES (534, 3, 533, '烟台');
INSERT INTO `t_area` VALUES (535, 3, 533, '青岛');
INSERT INTO `t_area` VALUES (536, 3, 533, '临沂');
INSERT INTO `t_area` VALUES (537, 3, 533, '威海');
INSERT INTO `t_area` VALUES (538, 3, 533, '济南');
INSERT INTO `t_area` VALUES (539, 3, 533, '德州');
INSERT INTO `t_area` VALUES (540, 3, 533, '济宁');
INSERT INTO `t_area` VALUES (541, 3, 533, '枣庄');
INSERT INTO `t_area` VALUES (542, 3, 533, '日照');
INSERT INTO `t_area` VALUES (543, 3, 533, '潍坊');
INSERT INTO `t_area` VALUES (544, 3, 533, '泰安');
INSERT INTO `t_area` VALUES (545, 3, 533, '淄博');
INSERT INTO `t_area` VALUES (546, 3, 533, '滨州');
INSERT INTO `t_area` VALUES (547, 3, 533, '菏泽');
INSERT INTO `t_area` VALUES (548, 3, 533, '聊城');
INSERT INTO `t_area` VALUES (549, 2, 1, '四川省');
INSERT INTO `t_area` VALUES (550, 3, 549, '成都');
INSERT INTO `t_area` VALUES (551, 3, 549, '南充');
INSERT INTO `t_area` VALUES (552, 3, 549, '广安');
INSERT INTO `t_area` VALUES (553, 3, 549, '绵阳');
INSERT INTO `t_area` VALUES (554, 3, 549, '巴中');
INSERT INTO `t_area` VALUES (555, 3, 549, '内江');
INSERT INTO `t_area` VALUES (556, 3, 549, '达州');
INSERT INTO `t_area` VALUES (557, 3, 549, '攀枝花');
INSERT INTO `t_area` VALUES (558, 3, 549, '德阳');
INSERT INTO `t_area` VALUES (559, 3, 549, '自贡');
INSERT INTO `t_area` VALUES (560, 3, 549, '泸州');
INSERT INTO `t_area` VALUES (561, 3, 549, '宜宾');
INSERT INTO `t_area` VALUES (562, 3, 549, '凉山州');
INSERT INTO `t_area` VALUES (563, 3, 549, '甘孜州');
INSERT INTO `t_area` VALUES (564, 3, 549, '遂宁');
INSERT INTO `t_area` VALUES (565, 3, 549, '广元');
INSERT INTO `t_area` VALUES (566, 3, 549, '雅安');
INSERT INTO `t_area` VALUES (567, 3, 549, '眉山');
INSERT INTO `t_area` VALUES (568, 3, 549, '乐山');
INSERT INTO `t_area` VALUES (569, 3, 549, '资阳');
INSERT INTO `t_area` VALUES (570, 3, 549, '阿坝州');
INSERT INTO `t_area` VALUES (571, 2, 1, '北京市');
INSERT INTO `t_area` VALUES (572, 3, 571, '海淀区');
INSERT INTO `t_area` VALUES (573, 3, 571, '朝阳区');
INSERT INTO `t_area` VALUES (574, 3, 571, '大兴区');
INSERT INTO `t_area` VALUES (575, 3, 571, '西城区');
INSERT INTO `t_area` VALUES (576, 3, 571, '来京人士');
INSERT INTO `t_area` VALUES (577, 3, 571, '丰台区');
INSERT INTO `t_area` VALUES (578, 3, 571, '昌平区');
INSERT INTO `t_area` VALUES (579, 3, 571, '通州区');
INSERT INTO `t_area` VALUES (580, 3, 571, '顺义区');
INSERT INTO `t_area` VALUES (581, 3, 571, '石景山区');
INSERT INTO `t_area` VALUES (582, 3, 571, '房山区');
INSERT INTO `t_area` VALUES (583, 3, 571, '怀柔区');
INSERT INTO `t_area` VALUES (584, 3, 571, '门头沟区');
INSERT INTO `t_area` VALUES (585, 3, 571, '东城区');
INSERT INTO `t_area` VALUES (586, 3, 571, '延庆区');
INSERT INTO `t_area` VALUES (587, 3, 571, '待确认地区');
INSERT INTO `t_area` VALUES (588, 2, 1, '上海市');
INSERT INTO `t_area` VALUES (589, 2, 1, '福建省');
INSERT INTO `t_area` VALUES (590, 3, 589, '福州');
INSERT INTO `t_area` VALUES (591, 3, 589, '莆田');
INSERT INTO `t_area` VALUES (592, 3, 589, '泉州');
INSERT INTO `t_area` VALUES (593, 3, 589, '厦门');
INSERT INTO `t_area` VALUES (594, 3, 589, '漳州');
INSERT INTO `t_area` VALUES (595, 3, 589, '宁德');
INSERT INTO `t_area` VALUES (596, 3, 589, '南平');
INSERT INTO `t_area` VALUES (597, 3, 589, '三明');
INSERT INTO `t_area` VALUES (598, 3, 589, '龙岩');
INSERT INTO `t_area` VALUES (599, 2, 1, '陕西省');
INSERT INTO `t_area` VALUES (600, 3, 599, '西安');
INSERT INTO `t_area` VALUES (601, 3, 599, '安康');
INSERT INTO `t_area` VALUES (602, 3, 599, '汉中');
INSERT INTO `t_area` VALUES (603, 3, 599, '咸阳');
INSERT INTO `t_area` VALUES (604, 3, 599, '宝鸡');
INSERT INTO `t_area` VALUES (605, 3, 599, '铜川');
INSERT INTO `t_area` VALUES (606, 3, 599, '延安');
INSERT INTO `t_area` VALUES (607, 3, 599, '渭南');
INSERT INTO `t_area` VALUES (608, 3, 599, '商洛');
INSERT INTO `t_area` VALUES (609, 3, 599, '韩城');
INSERT INTO `t_area` VALUES (610, 3, 599, '榆林');
INSERT INTO `t_area` VALUES (611, 2, 1, '广西壮族自治区');
INSERT INTO `t_area` VALUES (612, 3, 611, '北海');
INSERT INTO `t_area` VALUES (613, 3, 611, '桂林');
INSERT INTO `t_area` VALUES (614, 3, 611, '南宁');
INSERT INTO `t_area` VALUES (615, 3, 611, '柳州');
INSERT INTO `t_area` VALUES (616, 3, 611, '防城港');
INSERT INTO `t_area` VALUES (617, 3, 611, '玉林');
INSERT INTO `t_area` VALUES (618, 3, 611, '河池');
INSERT INTO `t_area` VALUES (619, 3, 611, '梧州');
INSERT INTO `t_area` VALUES (620, 3, 611, '贵港');
INSERT INTO `t_area` VALUES (621, 3, 611, '贺州');
INSERT INTO `t_area` VALUES (622, 3, 611, '钦州');
INSERT INTO `t_area` VALUES (623, 3, 611, '百色');
INSERT INTO `t_area` VALUES (624, 2, 1, '黑龙江省');
INSERT INTO `t_area` VALUES (625, 3, 624, '哈尔滨');
INSERT INTO `t_area` VALUES (626, 3, 624, '绥化');
INSERT INTO `t_area` VALUES (627, 3, 624, '大庆');
INSERT INTO `t_area` VALUES (628, 3, 624, '佳木斯');
INSERT INTO `t_area` VALUES (629, 3, 624, '牡丹江');
INSERT INTO `t_area` VALUES (630, 3, 624, '双鸭山');
INSERT INTO `t_area` VALUES (631, 3, 624, '七台河');
INSERT INTO `t_area` VALUES (632, 3, 624, '齐齐哈尔');
INSERT INTO `t_area` VALUES (633, 3, 624, '鸡西');
INSERT INTO `t_area` VALUES (634, 3, 624, '大兴安岭');
INSERT INTO `t_area` VALUES (635, 3, 624, '黑河');
INSERT INTO `t_area` VALUES (636, 3, 624, '鹤岗');
INSERT INTO `t_area` VALUES (637, 2, 1, '云南省');
INSERT INTO `t_area` VALUES (638, 3, 637, '昆明');
INSERT INTO `t_area` VALUES (639, 3, 637, '西双版纳州');
INSERT INTO `t_area` VALUES (640, 3, 637, '玉溪');
INSERT INTO `t_area` VALUES (641, 3, 637, '昭通');
INSERT INTO `t_area` VALUES (642, 3, 637, '保山');
INSERT INTO `t_area` VALUES (643, 3, 637, '丽江');
INSERT INTO `t_area` VALUES (644, 3, 637, '大理州');
INSERT INTO `t_area` VALUES (645, 3, 637, '曲靖');
INSERT INTO `t_area` VALUES (646, 3, 637, '地区待确认');
INSERT INTO `t_area` VALUES (647, 3, 637, '红河州');
INSERT INTO `t_area` VALUES (648, 3, 637, '德宏州');
INSERT INTO `t_area` VALUES (649, 3, 637, '普洱');
INSERT INTO `t_area` VALUES (650, 3, 637, '楚雄州');
INSERT INTO `t_area` VALUES (651, 3, 637, '临沧');
INSERT INTO `t_area` VALUES (652, 2, 1, '河北省');
INSERT INTO `t_area` VALUES (653, 3, 652, '沧州');
INSERT INTO `t_area` VALUES (654, 3, 652, '石家庄');
INSERT INTO `t_area` VALUES (655, 3, 652, '邢台');
INSERT INTO `t_area` VALUES (656, 3, 652, '保定');
INSERT INTO `t_area` VALUES (657, 3, 652, '廊坊');
INSERT INTO `t_area` VALUES (658, 3, 652, '邯郸');
INSERT INTO `t_area` VALUES (659, 3, 652, '唐山');
INSERT INTO `t_area` VALUES (660, 3, 652, '张家口');
INSERT INTO `t_area` VALUES (661, 3, 652, '衡水');
INSERT INTO `t_area` VALUES (662, 3, 652, '秦皇岛');
INSERT INTO `t_area` VALUES (663, 3, 652, '承德');
INSERT INTO `t_area` VALUES (664, 2, 1, '辽宁省');
INSERT INTO `t_area` VALUES (665, 3, 664, '沈阳');
INSERT INTO `t_area` VALUES (666, 3, 664, '大连');
INSERT INTO `t_area` VALUES (667, 3, 664, '盘锦');
INSERT INTO `t_area` VALUES (668, 3, 664, '锦州');
INSERT INTO `t_area` VALUES (669, 3, 664, '丹东');
INSERT INTO `t_area` VALUES (670, 3, 664, '朝阳');
INSERT INTO `t_area` VALUES (671, 3, 664, '阜新');
INSERT INTO `t_area` VALUES (672, 3, 664, '葫芦岛');
INSERT INTO `t_area` VALUES (673, 3, 664, '铁岭');
INSERT INTO `t_area` VALUES (674, 3, 664, '本溪');
INSERT INTO `t_area` VALUES (675, 3, 664, '辽阳');
INSERT INTO `t_area` VALUES (676, 3, 664, '鞍山');
INSERT INTO `t_area` VALUES (677, 3, 664, '营口');
INSERT INTO `t_area` VALUES (678, 2, 1, '海南省');
INSERT INTO `t_area` VALUES (679, 3, 678, '三亚');
INSERT INTO `t_area` VALUES (680, 3, 678, '海口');
INSERT INTO `t_area` VALUES (681, 3, 678, '万宁');
INSERT INTO `t_area` VALUES (682, 3, 678, '儋州');
INSERT INTO `t_area` VALUES (683, 3, 678, '琼海');
INSERT INTO `t_area` VALUES (684, 3, 678, '陵水县');
INSERT INTO `t_area` VALUES (685, 3, 678, '临高县');
INSERT INTO `t_area` VALUES (686, 3, 678, '昌江县');
INSERT INTO `t_area` VALUES (687, 3, 678, '澄迈县');
INSERT INTO `t_area` VALUES (688, 3, 678, '文昌');
INSERT INTO `t_area` VALUES (689, 3, 678, '乐东县');
INSERT INTO `t_area` VALUES (690, 3, 678, '定安县');
INSERT INTO `t_area` VALUES (691, 3, 678, '琼中县');
INSERT INTO `t_area` VALUES (692, 3, 678, '东方');
INSERT INTO `t_area` VALUES (693, 2, 1, '山西省');
INSERT INTO `t_area` VALUES (694, 3, 693, '晋中');
INSERT INTO `t_area` VALUES (695, 3, 693, '运城');
INSERT INTO `t_area` VALUES (696, 3, 693, '大同');
INSERT INTO `t_area` VALUES (697, 3, 693, '晋城');
INSERT INTO `t_area` VALUES (698, 3, 693, '太原');
INSERT INTO `t_area` VALUES (699, 3, 693, '吕梁');
INSERT INTO `t_area` VALUES (700, 3, 693, '忻州');
INSERT INTO `t_area` VALUES (701, 3, 693, '长治');
INSERT INTO `t_area` VALUES (702, 3, 693, '朔州');
INSERT INTO `t_area` VALUES (703, 3, 693, '阳泉');
INSERT INTO `t_area` VALUES (704, 3, 693, '临汾');
INSERT INTO `t_area` VALUES (705, 2, 1, '天津市');
INSERT INTO `t_area` VALUES (706, 2, 1, '甘肃省');
INSERT INTO `t_area` VALUES (707, 3, 706, '兰州');
INSERT INTO `t_area` VALUES (708, 3, 706, '天水');
INSERT INTO `t_area` VALUES (709, 3, 706, '陇南');
INSERT INTO `t_area` VALUES (710, 3, 706, '定西');
INSERT INTO `t_area` VALUES (711, 3, 706, '临夏州');
INSERT INTO `t_area` VALUES (712, 3, 706, '张掖');
INSERT INTO `t_area` VALUES (713, 3, 706, '庆阳');
INSERT INTO `t_area` VALUES (714, 3, 706, '甘南州');
INSERT INTO `t_area` VALUES (715, 3, 706, '平凉');
INSERT INTO `t_area` VALUES (716, 3, 706, '金昌');
INSERT INTO `t_area` VALUES (717, 3, 706, '白银');
INSERT INTO `t_area` VALUES (718, 2, 1, '贵州省');
INSERT INTO `t_area` VALUES (719, 3, 718, '六盘水');
INSERT INTO `t_area` VALUES (720, 3, 718, '遵义');
INSERT INTO `t_area` VALUES (721, 3, 718, '贵阳');
INSERT INTO `t_area` VALUES (722, 3, 718, '铜仁');
INSERT INTO `t_area` VALUES (723, 3, 718, '黔南州');
INSERT INTO `t_area` VALUES (724, 3, 718, '黔东南州');
INSERT INTO `t_area` VALUES (725, 3, 718, '毕节');
INSERT INTO `t_area` VALUES (726, 3, 718, '安顺');
INSERT INTO `t_area` VALUES (727, 3, 718, '黔西南州');
INSERT INTO `t_area` VALUES (728, 2, 1, '内蒙古自治区');
INSERT INTO `t_area` VALUES (729, 3, 728, '鄂尔多斯');
INSERT INTO `t_area` VALUES (730, 3, 728, '包头');
INSERT INTO `t_area` VALUES (731, 3, 728, '呼和浩特');
INSERT INTO `t_area` VALUES (732, 3, 728, '乌兰察布');
INSERT INTO `t_area` VALUES (733, 3, 728, '巴彦淖尔');
INSERT INTO `t_area` VALUES (734, 3, 728, '呼伦贝尔');
INSERT INTO `t_area` VALUES (735, 3, 728, '赤峰');
INSERT INTO `t_area` VALUES (736, 3, 728, '锡林郭勒盟');
INSERT INTO `t_area` VALUES (737, 3, 728, '乌海');
INSERT INTO `t_area` VALUES (738, 3, 728, '兴安盟');
INSERT INTO `t_area` VALUES (739, 3, 728, '通辽');
INSERT INTO `t_area` VALUES (740, 2, 1, '吉林省');
INSERT INTO `t_area` VALUES (741, 3, 740, '长春');
INSERT INTO `t_area` VALUES (742, 3, 740, '四平');
INSERT INTO `t_area` VALUES (743, 3, 740, '吉林');
INSERT INTO `t_area` VALUES (744, 3, 740, '延边州');
INSERT INTO `t_area` VALUES (745, 3, 740, '松原');
INSERT INTO `t_area` VALUES (746, 3, 740, '通化');
INSERT INTO `t_area` VALUES (747, 3, 740, '公主岭');
INSERT INTO `t_area` VALUES (748, 2, 1, '宁夏回族自治区');
INSERT INTO `t_area` VALUES (749, 3, 748, '银川');
INSERT INTO `t_area` VALUES (750, 3, 748, '吴忠');
INSERT INTO `t_area` VALUES (751, 3, 748, '中卫');
INSERT INTO `t_area` VALUES (752, 3, 748, '固原');
INSERT INTO `t_area` VALUES (753, 3, 748, '宁东管委会');
INSERT INTO `t_area` VALUES (754, 2, 1, '新疆维吾尔自治区');
INSERT INTO `t_area` VALUES (755, 3, 754, '乌鲁木齐');
INSERT INTO `t_area` VALUES (756, 3, 754, '伊犁州');
INSERT INTO `t_area` VALUES (757, 3, 754, '兵团第九师');
INSERT INTO `t_area` VALUES (758, 3, 754, '阿克苏');
INSERT INTO `t_area` VALUES (759, 3, 754, '兵团第七师');
INSERT INTO `t_area` VALUES (760, 3, 754, '第八师石河子');
INSERT INTO `t_area` VALUES (761, 3, 754, '吐鲁番');
INSERT INTO `t_area` VALUES (762, 2, 1, '中国香港');
INSERT INTO `t_area` VALUES (763, 3, 762, '中国香港');
INSERT INTO `t_area` VALUES (764, 2, 1, '青海省');
INSERT INTO `t_area` VALUES (765, 3, 764, '西宁');
INSERT INTO `t_area` VALUES (766, 3, 764, '海北州');
INSERT INTO `t_area` VALUES (767, 2, 1, '中国台湾');
INSERT INTO `t_area` VALUES (768, 3, 767, '中国台湾');
INSERT INTO `t_area` VALUES (769, 2, 1, '中国澳门');
INSERT INTO `t_area` VALUES (770, 3, 769, '中国澳门');
INSERT INTO `t_area` VALUES (771, 2, 1, '西藏自治区');
INSERT INTO `t_area` VALUES (772, 3, 771, '拉萨');
INSERT INTO `t_area` VALUES (773, 1, NULL, '日本');
INSERT INTO `t_area` VALUES (774, 1, NULL, '泰国');
INSERT INTO `t_area` VALUES (775, 1, NULL, '新加坡');
INSERT INTO `t_area` VALUES (776, 1, NULL, '韩国');
INSERT INTO `t_area` VALUES (777, 1, NULL, '澳大利亚');
INSERT INTO `t_area` VALUES (778, 1, NULL, '美国');
INSERT INTO `t_area` VALUES (779, 1, NULL, '德国');
INSERT INTO `t_area` VALUES (780, 1, NULL, '马来西亚');
INSERT INTO `t_area` VALUES (781, 1, NULL, '越南');
INSERT INTO `t_area` VALUES (782, 1, NULL, '法国');
INSERT INTO `t_area` VALUES (783, 1, NULL, '阿联酋');
INSERT INTO `t_area` VALUES (784, 1, NULL, '加拿大');
INSERT INTO `t_area` VALUES (785, 1, NULL, '印度');
INSERT INTO `t_area` VALUES (786, 1, NULL, '意大利');
INSERT INTO `t_area` VALUES (787, 1, NULL, '英国');
INSERT INTO `t_area` VALUES (788, 1, NULL, '菲律宾');
INSERT INTO `t_area` VALUES (789, 1, NULL, '俄罗斯');
INSERT INTO `t_area` VALUES (790, 1, NULL, '柬埔寨');
INSERT INTO `t_area` VALUES (791, 1, NULL, '斯里兰卡');
INSERT INTO `t_area` VALUES (792, 1, NULL, '瑞典');
INSERT INTO `t_area` VALUES (793, 1, NULL, '尼泊尔');
INSERT INTO `t_area` VALUES (794, 1, NULL, '芬兰');
INSERT INTO `t_area` VALUES (795, 1, NULL, '西班牙');
INSERT INTO `t_area` VALUES (796, 3, 599, '杨凌示范区');
INSERT INTO `t_area` VALUES (797, 3, 637, '文山州');
INSERT INTO `t_area` VALUES (798, 3, 678, '保亭县');
INSERT INTO `t_area` VALUES (799, 3, 740, '辽源');
INSERT INTO `t_area` VALUES (800, 3, 748, '宁东');
INSERT INTO `t_area` VALUES (801, 3, 748, '石嘴山');
INSERT INTO `t_area` VALUES (802, 3, 754, '昌吉州');
INSERT INTO `t_area` VALUES (803, 3, 754, '兵团第八师石河子');
INSERT INTO `t_area` VALUES (804, 3, 754, '兵团第六师五家渠');
INSERT INTO `t_area` VALUES (805, 3, 754, '阿克苏地区');
INSERT INTO `t_area` VALUES (806, 1, NULL, '比利时');
COMMIT;

-- ----------------------------
-- Table structure for t_data_entry_log
-- ----------------------------
DROP TABLE IF EXISTS `t_data_entry_log`;
CREATE TABLE `t_data_entry_log` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `datetime` datetime DEFAULT NULL COMMENT '数据所属时间日期',
  `data_source_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '数据源名称',
  `entry_time` datetime DEFAULT NULL COMMENT '录入时间日期',
  `data_source_url` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '数据源url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_data_entry_log
-- ----------------------------
BEGIN;
INSERT INTO `t_data_entry_log` VALUES (11, '2020-02-03 23:44:00', 'alibaba', '2020-02-04 04:35:36', 'http://h5api.m.taobao.com/h5/mtop.alihealth.mdeer.pidemic.getalldiseaseinfo/1.0/?jsv=3.0.5&appKey=12574478&t=1580745402079&sign=cc1847111feb772d9ba39ad0b9955a52&type=originaljson&valueType=original&v=1.0&api=mtop.alihealth.mdeer.pidemic.getAllDiseaseInfo&env=m&cookie2=57f3e6c517bc789a7520228543ed15f3&sg=810&data=%7B\"province\"%3A\"湖北省\"%2C\"city\"%3A\"武汉\"%7D');
INSERT INTO `t_data_entry_log` VALUES (14, '2020-02-05 23:55:00', 'alibaba', '2020-02-06 17:05:27', 'http://h5api.m.taobao.com/h5/mtop.alihealth.mdeer.pidemic.getalldiseaseinfo/1.0/?jsv=3.0.5&appKey=12574478&t=1580745402079&sign=cc1847111feb772d9ba39ad0b9955a52&type=originaljson&valueType=original&v=1.0&api=mtop.alihealth.mdeer.pidemic.getAllDiseaseInfo&env=m&cookie2=57f3e6c517bc789a7520228543ed15f3&sg=810&data=%7B\"province\"%3A\"湖北省\"%2C\"city\"%3A\"武汉\"%7D');
COMMIT;

-- ----------------------------
-- Table structure for t_epidemic_situation
-- ----------------------------
DROP TABLE IF EXISTS `t_epidemic_situation`;
CREATE TABLE `t_epidemic_situation` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `location_id` int(255) DEFAULT NULL COMMENT '地区外键',
  `country_id` int(255) DEFAULT NULL COMMENT '数据所属国家id',
  `province_id` int(255) DEFAULT NULL COMMENT '数据所属省id',
  `city_id` int(255) DEFAULT NULL COMMENT '数据所属城市id',
  `datetime` datetime DEFAULT NULL COMMENT '数据所属时间',
  `totalConfirmed` int(128) DEFAULT NULL COMMENT '确诊病例数目',
  `totalDoubtful` int(128) DEFAULT NULL COMMENT '疑似病例数目',
  `totalDeath` int(128) DEFAULT NULL COMMENT '死亡病例数目',
  `totalCured` int(128) DEFAULT NULL COMMENT '治愈人数',
  `entry_time` datetime DEFAULT NULL COMMENT '录入本表的时间',
  `entry_log_id` int(255) DEFAULT NULL COMMENT '录入日志表id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1582 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='疫情数据表';

-- ----------------------------
-- Records of t_epidemic_situation
-- ----------------------------
BEGIN;
INSERT INTO `t_epidemic_situation` VALUES (759, 1, 1, NULL, NULL, '2020-02-03 23:44:00', 17345, 21558, 361, 521, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (760, 403, 1, 403, NULL, '2020-02-03 23:44:00', 11177, 0, 350, 296, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (761, 404, 1, 403, 404, '2020-02-03 23:44:00', 5142, 0, 265, 192, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (762, 405, 1, 403, 405, '2020-02-03 23:44:00', 1246, 0, 17, 32, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (763, 406, 1, 403, 406, '2020-02-03 23:44:00', 918, 0, 14, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (764, 407, 1, 403, 407, '2020-02-03 23:44:00', 548, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (765, 408, 1, 403, 408, '2020-02-03 23:44:00', 499, 0, 6, 7, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (766, 409, 1, 403, 409, '2020-02-03 23:44:00', 458, 0, 5, 3, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (767, 410, 1, 403, 410, '2020-02-03 23:44:00', 392, 0, 1, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (768, 411, 1, 403, 411, '2020-02-03 23:44:00', 345, 0, 11, 6, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (769, 412, 1, 403, 412, '2020-02-03 23:44:00', 334, 0, 2, 9, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (770, 413, 1, 403, 413, '2020-02-03 23:44:00', 306, 0, 15, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (771, 414, 1, 403, 414, '2020-02-03 23:44:00', 296, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (772, 415, 1, 403, 415, '2020-02-03 23:44:00', 256, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (773, 416, 1, 403, 416, '2020-02-03 23:44:00', 169, 0, 3, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (774, 417, 1, 403, 417, '2020-02-03 23:44:00', 115, 0, 10, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (775, 418, 1, 403, 418, '2020-02-03 23:44:00', 111, 0, 0, 5, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (776, 419, 1, 403, 419, '2020-02-03 23:44:00', 35, 0, 1, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (777, 420, 1, 403, 420, '2020-02-03 23:44:00', 7, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (778, 421, 1, 403, 421, '2020-02-03 23:44:00', 0, 0, 0, 31, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (779, 422, 1, 422, NULL, '2020-02-03 23:44:00', 725, 0, 0, 20, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (780, 423, 1, 422, 423, '2020-02-03 23:44:00', 245, 0, 0, 10, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (781, 424, 1, 422, 424, '2020-02-03 23:44:00', 200, 0, 0, 3, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (782, 425, 1, 422, 425, '2020-02-03 23:44:00', 55, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (783, 426, 1, 422, 426, '2020-02-03 23:44:00', 45, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (784, 427, 1, 422, 427, '2020-02-03 23:44:00', 31, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (785, 428, 1, 422, 428, '2020-02-03 23:44:00', 28, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (786, 429, 1, 422, 429, '2020-02-03 23:44:00', 25, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (787, 430, 1, 422, 430, '2020-02-03 23:44:00', 18, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (788, 431, 1, 422, 431, '2020-02-03 23:44:00', 14, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (789, 432, 1, 422, 432, '2020-02-03 23:44:00', 10, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (790, 433, 1, 422, 433, '2020-02-03 23:44:00', 10, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (791, 434, 1, 422, 434, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (792, 435, 1, 422, 435, '2020-02-03 23:44:00', 7, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (793, 436, 1, 422, 436, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (794, 437, 1, 422, 437, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (795, 438, 1, 422, 438, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (796, 439, 1, 422, 439, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (797, 440, 1, 422, 440, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (798, 441, 1, 422, 441, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (799, 442, 1, 422, 442, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (800, 443, 1, 443, NULL, '2020-02-03 23:44:00', 724, 0, 0, 44, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (801, 444, 1, 443, 444, '2020-02-03 23:44:00', 291, 0, 0, 17, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (802, 445, 1, 443, 445, '2020-02-03 23:44:00', 118, 0, 0, 3, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (803, 446, 1, 443, 446, '2020-02-03 23:44:00', 109, 0, 0, 11, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (804, 447, 1, 443, 447, '2020-02-03 23:44:00', 75, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (805, 448, 1, 443, 448, '2020-02-03 23:44:00', 36, 0, 0, 6, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (806, 449, 1, 443, 449, '2020-02-03 23:44:00', 30, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (807, 450, 1, 443, 450, '2020-02-03 23:44:00', 19, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (808, 451, 1, 443, 451, '2020-02-03 23:44:00', 16, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (809, 452, 1, 443, 452, '2020-02-03 23:44:00', 14, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (810, 453, 1, 443, 453, '2020-02-03 23:44:00', 9, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (811, 454, 1, 443, 454, '2020-02-03 23:44:00', 7, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (812, 455, 1, 455, NULL, '2020-02-03 23:44:00', 566, 0, 2, 16, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (813, 456, 1, 455, 456, '2020-02-03 23:44:00', 99, 0, 0, 4, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (814, 457, 1, 455, 457, '2020-02-03 23:44:00', 84, 0, 2, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (815, 458, 1, 455, 458, '2020-02-03 23:44:00', 72, 0, 0, 5, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (816, 459, 1, 455, 459, '2020-02-03 23:44:00', 58, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (817, 460, 1, 455, 460, '2020-02-03 23:44:00', 50, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (818, 461, 1, 455, 461, '2020-02-03 23:44:00', 47, 0, 0, 4, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (819, 462, 1, 455, 462, '2020-02-03 23:44:00', 29, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (820, 463, 1, 455, 463, '2020-02-03 23:44:00', 27, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (821, 464, 1, 455, 464, '2020-02-03 23:44:00', 20, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (822, 465, 1, 455, 465, '2020-02-03 23:44:00', 19, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (823, 466, 1, 455, 466, '2020-02-03 23:44:00', 15, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (824, 467, 1, 455, 467, '2020-02-03 23:44:00', 11, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (825, 468, 1, 455, 468, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (826, 469, 1, 455, 469, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (827, 470, 1, 455, 470, '2020-02-03 23:44:00', 7, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (828, 471, 1, 455, 471, '2020-02-03 23:44:00', 7, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (829, 472, 1, 455, 472, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (830, 473, 1, 455, 473, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (831, 474, 1, 474, NULL, '2020-02-03 23:44:00', 521, 0, 0, 22, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (832, 475, 1, 474, 475, '2020-02-03 23:44:00', 125, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (833, 476, 1, 474, 476, '2020-02-03 23:44:00', 70, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (834, 477, 1, 474, 477, '2020-02-03 23:44:00', 51, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (835, 478, 1, 474, 478, '2020-02-03 23:44:00', 45, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (836, 479, 1, 474, 479, '2020-02-03 23:44:00', 35, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (837, 480, 1, 474, 480, '2020-02-03 23:44:00', 32, 0, 0, 4, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (838, 481, 1, 474, 481, '2020-02-03 23:44:00', 32, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (839, 482, 1, 474, 482, '2020-02-03 23:44:00', 30, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (840, 483, 1, 474, 483, '2020-02-03 23:44:00', 26, 0, 0, 5, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (841, 484, 1, 474, 484, '2020-02-03 23:44:00', 26, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (842, 485, 1, 474, 485, '2020-02-03 23:44:00', 21, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (843, 486, 1, 474, 486, '2020-02-03 23:44:00', 19, 0, 0, 3, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (844, 487, 1, 474, 487, '2020-02-03 23:44:00', 6, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (845, 488, 1, 474, 488, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (846, 489, 1, 489, NULL, '2020-02-03 23:44:00', 408, 0, 0, 11, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (847, 490, 1, 489, 490, '2020-02-03 23:44:00', 75, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (848, 491, 1, 489, 491, '2020-02-03 23:44:00', 65, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (849, 492, 1, 489, 492, '2020-02-03 23:44:00', 47, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (850, 493, 1, 489, 493, '2020-02-03 23:44:00', 39, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (851, 494, 1, 489, 494, '2020-02-03 23:44:00', 37, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (852, 495, 1, 489, 495, '2020-02-03 23:44:00', 28, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (853, 496, 1, 489, 496, '2020-02-03 23:44:00', 21, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (854, 497, 1, 489, 497, '2020-02-03 23:44:00', 20, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (855, 498, 1, 489, 498, '2020-02-03 23:44:00', 18, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (856, 499, 1, 489, 499, '2020-02-03 23:44:00', 16, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (857, 500, 1, 489, 500, '2020-02-03 23:44:00', 9, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (858, 501, 1, 489, 501, '2020-02-03 23:44:00', 8, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (859, 502, 1, 489, 502, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (860, 503, 1, 489, 503, '2020-02-03 23:44:00', 7, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (861, 504, 1, 489, 504, '2020-02-03 23:44:00', 6, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (862, 505, 1, 489, 505, '2020-02-03 23:44:00', 4, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (863, 506, 1, 506, NULL, '2020-02-03 23:44:00', 391, 0, 0, 18, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (864, 507, 1, 506, 507, '2020-02-03 23:44:00', 103, 0, 0, 4, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (865, 508, 1, 506, 508, '2020-02-03 23:44:00', 64, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (866, 509, 1, 506, 509, '2020-02-03 23:44:00', 50, 0, 0, 3, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (867, 510, 1, 506, 510, '2020-02-03 23:44:00', 36, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (868, 511, 1, 506, 511, '2020-02-03 23:44:00', 35, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (869, 512, 1, 506, 512, '2020-02-03 23:44:00', 32, 0, 0, 4, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (870, 513, 1, 506, 513, '2020-02-03 23:44:00', 29, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (871, 514, 1, 506, 514, '2020-02-03 23:44:00', 18, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (872, 515, 1, 506, 515, '2020-02-03 23:44:00', 13, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (873, 516, 1, 506, 516, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (874, 517, 1, 506, 517, '2020-02-03 23:44:00', 3, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (875, 518, 1, 518, NULL, '2020-02-03 23:44:00', 312, 0, 2, 9, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (876, 519, 1, 519, NULL, '2020-02-03 23:44:00', 271, 0, 0, 8, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (877, 520, 1, 519, 520, '2020-02-03 23:44:00', 44, 0, 0, 3, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (878, 521, 1, 519, 521, '2020-02-03 23:44:00', 40, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (879, 522, 1, 519, 522, '2020-02-03 23:44:00', 36, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (880, 523, 1, 519, 523, '2020-02-03 23:44:00', 23, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (881, 524, 1, 519, 524, '2020-02-03 23:44:00', 21, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (882, 525, 1, 519, 525, '2020-02-03 23:44:00', 19, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (883, 526, 1, 519, 526, '2020-02-03 23:44:00', 18, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (884, 527, 1, 519, 527, '2020-02-03 23:44:00', 15, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (885, 528, 1, 519, 528, '2020-02-03 23:44:00', 15, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (886, 529, 1, 519, 529, '2020-02-03 23:44:00', 14, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (887, 530, 1, 519, 530, '2020-02-03 23:44:00', 14, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (888, 531, 1, 519, 531, '2020-02-03 23:44:00', 9, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (889, 532, 1, 519, 532, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (890, 533, 1, 533, NULL, '2020-02-03 23:44:00', 259, 0, 0, 7, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (891, 534, 1, 533, 534, '2020-02-03 23:44:00', 26, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (892, 535, 1, 533, 535, '2020-02-03 23:44:00', 26, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (893, 536, 1, 533, 536, '2020-02-03 23:44:00', 25, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (894, 537, 1, 533, 537, '2020-02-03 23:44:00', 25, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (895, 538, 1, 533, 538, '2020-02-03 23:44:00', 22, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (896, 539, 1, 533, 539, '2020-02-03 23:44:00', 19, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (897, 540, 1, 533, 540, '2020-02-03 23:44:00', 18, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (898, 541, 1, 533, 541, '2020-02-03 23:44:00', 16, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (899, 542, 1, 533, 542, '2020-02-03 23:44:00', 14, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (900, 543, 1, 533, 543, '2020-02-03 23:44:00', 13, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (901, 544, 1, 533, 544, '2020-02-03 23:44:00', 12, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (902, 545, 1, 533, 545, '2020-02-03 23:44:00', 12, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (903, 546, 1, 533, 546, '2020-02-03 23:44:00', 11, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (904, 547, 1, 533, 547, '2020-02-03 23:44:00', 10, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (905, 548, 1, 533, 548, '2020-02-03 23:44:00', 10, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (906, 549, 1, 549, NULL, '2020-02-03 23:44:00', 254, 0, 1, 14, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (907, 550, 1, 549, 550, '2020-02-03 23:44:00', 77, 0, 1, 10, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (908, 551, 1, 549, 551, '2020-02-03 23:44:00', 26, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (909, 552, 1, 549, 552, '2020-02-03 23:44:00', 21, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (910, 553, 1, 549, 553, '2020-02-03 23:44:00', 17, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (911, 554, 1, 549, 554, '2020-02-03 23:44:00', 12, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (912, 555, 1, 549, 555, '2020-02-03 23:44:00', 12, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (913, 556, 1, 549, 556, '2020-02-03 23:44:00', 11, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (914, 557, 1, 549, 557, '2020-02-03 23:44:00', 10, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (915, 558, 1, 549, 558, '2020-02-03 23:44:00', 10, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (916, 559, 1, 549, 559, '2020-02-03 23:44:00', 9, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (917, 560, 1, 549, 560, '2020-02-03 23:44:00', 7, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (918, 561, 1, 549, 561, '2020-02-03 23:44:00', 7, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (919, 562, 1, 549, 562, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (920, 563, 1, 549, 563, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (921, 564, 1, 549, 564, '2020-02-03 23:44:00', 5, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (922, 565, 1, 549, 565, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (923, 566, 1, 549, 566, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (924, 567, 1, 549, 567, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (925, 568, 1, 549, 568, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (926, 569, 1, 549, 569, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (927, 570, 1, 549, 570, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (928, 571, 1, 571, NULL, '2020-02-03 23:44:00', 212, 0, 1, 12, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (929, 572, 1, 571, 572, '2020-02-03 23:44:00', 42, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (930, 573, 1, 571, 573, '2020-02-03 23:44:00', 31, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (931, 574, 1, 571, 574, '2020-02-03 23:44:00', 28, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (932, 575, 1, 571, 575, '2020-02-03 23:44:00', 26, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (933, 576, 1, 571, 576, '2020-02-03 23:44:00', 19, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (934, 577, 1, 571, 577, '2020-02-03 23:44:00', 17, 0, 0, 3, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (935, 578, 1, 571, 578, '2020-02-03 23:44:00', 13, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (936, 579, 1, 571, 579, '2020-02-03 23:44:00', 13, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (937, 580, 1, 571, 580, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (938, 581, 1, 571, 581, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (939, 582, 1, 571, 582, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (940, 583, 1, 571, 583, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (941, 584, 1, 571, 584, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (942, 585, 1, 571, 585, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (943, 586, 1, 571, 586, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (944, 587, 1, 571, 587, '2020-02-03 23:44:00', 0, 0, 1, 3, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (945, 588, 1, 588, NULL, '2020-02-03 23:44:00', 203, 0, 1, 10, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (946, 589, 1, 589, NULL, '2020-02-03 23:44:00', 179, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (947, 590, 1, 589, 590, '2020-02-03 23:44:00', 47, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (948, 591, 1, 589, 591, '2020-02-03 23:44:00', 34, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (949, 592, 1, 589, 592, '2020-02-03 23:44:00', 31, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (950, 593, 1, 589, 593, '2020-02-03 23:44:00', 19, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (951, 594, 1, 589, 594, '2020-02-03 23:44:00', 13, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (952, 595, 1, 589, 595, '2020-02-03 23:44:00', 12, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (953, 596, 1, 589, 596, '2020-02-03 23:44:00', 11, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (954, 597, 1, 589, 597, '2020-02-03 23:44:00', 11, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (955, 598, 1, 589, 598, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (956, 599, 1, 599, NULL, '2020-02-03 23:44:00', 128, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (957, 600, 1, 599, 600, '2020-02-03 23:44:00', 55, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (958, 601, 1, 599, 601, '2020-02-03 23:44:00', 17, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (959, 602, 1, 599, 602, '2020-02-03 23:44:00', 15, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (960, 603, 1, 599, 603, '2020-02-03 23:44:00', 9, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (961, 604, 1, 599, 604, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (962, 605, 1, 599, 605, '2020-02-03 23:44:00', 7, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (963, 606, 1, 599, 606, '2020-02-03 23:44:00', 7, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (964, 607, 1, 599, 607, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (965, 608, 1, 599, 608, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (966, 609, 1, 599, 609, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (967, 610, 1, 599, 610, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (968, 611, 1, 611, NULL, '2020-02-03 23:44:00', 127, 0, 0, 7, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (969, 612, 1, 611, 612, '2020-02-03 23:44:00', 26, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (970, 613, 1, 611, 613, '2020-02-03 23:44:00', 24, 0, 0, 4, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (971, 614, 1, 611, 614, '2020-02-03 23:44:00', 22, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (972, 615, 1, 611, 615, '2020-02-03 23:44:00', 14, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (973, 616, 1, 611, 616, '2020-02-03 23:44:00', 9, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (974, 617, 1, 611, 617, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (975, 618, 1, 611, 618, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (976, 619, 1, 611, 619, '2020-02-03 23:44:00', 5, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (977, 620, 1, 611, 620, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (978, 621, 1, 611, 621, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (979, 622, 1, 611, 622, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (980, 623, 1, 611, 623, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (981, 624, 1, 624, NULL, '2020-02-03 23:44:00', 121, 0, 2, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (982, 625, 1, 624, 625, '2020-02-03 23:44:00', 45, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (983, 626, 1, 624, 626, '2020-02-03 23:44:00', 16, 0, 2, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (984, 627, 1, 624, 627, '2020-02-03 23:44:00', 11, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (985, 628, 1, 624, 628, '2020-02-03 23:44:00', 11, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (986, 629, 1, 624, 629, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (987, 630, 1, 624, 630, '2020-02-03 23:44:00', 7, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (988, 631, 1, 624, 631, '2020-02-03 23:44:00', 7, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (989, 632, 1, 624, 632, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (990, 633, 1, 624, 633, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (991, 634, 1, 624, 634, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (992, 635, 1, 624, 635, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (993, 636, 1, 624, 636, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (994, 637, 1, 637, NULL, '2020-02-03 23:44:00', 114, 0, 0, 5, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (995, 638, 1, 637, 638, '2020-02-03 23:44:00', 32, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (996, 639, 1, 637, 639, '2020-02-03 23:44:00', 13, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (997, 640, 1, 637, 640, '2020-02-03 23:44:00', 12, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (998, 641, 1, 637, 641, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (999, 642, 1, 637, 642, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1000, 643, 1, 637, 643, '2020-02-03 23:44:00', 7, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1001, 644, 1, 637, 644, '2020-02-03 23:44:00', 7, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1002, 645, 1, 637, 645, '2020-02-03 23:44:00', 6, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1003, 646, 1, 637, 646, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1004, 647, 1, 637, 647, '2020-02-03 23:44:00', 5, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1005, 648, 1, 637, 648, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1006, 649, 1, 637, 649, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1007, 650, 1, 637, 650, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1008, 651, 1, 637, 651, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1009, 652, 1, 652, NULL, '2020-02-03 23:44:00', 113, 0, 1, 3, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1010, 653, 1, 652, 653, '2020-02-03 23:44:00', 19, 0, 1, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1011, 654, 1, 652, 654, '2020-02-03 23:44:00', 16, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1012, 655, 1, 652, 655, '2020-02-03 23:44:00', 14, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1013, 656, 1, 652, 656, '2020-02-03 23:44:00', 13, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1014, 657, 1, 652, 657, '2020-02-03 23:44:00', 12, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1015, 658, 1, 652, 658, '2020-02-03 23:44:00', 11, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1016, 659, 1, 652, 659, '2020-02-03 23:44:00', 11, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1017, 660, 1, 652, 660, '2020-02-03 23:44:00', 9, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1018, 661, 1, 652, 661, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1019, 662, 1, 652, 662, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1020, 663, 1, 652, 663, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1021, 664, 1, 664, NULL, '2020-02-03 23:44:00', 74, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1022, 665, 1, 664, 665, '2020-02-03 23:44:00', 15, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1023, 666, 1, 664, 666, '2020-02-03 23:44:00', 12, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1024, 667, 1, 664, 667, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1025, 668, 1, 664, 668, '2020-02-03 23:44:00', 7, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1026, 669, 1, 664, 669, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1027, 670, 1, 664, 670, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1028, 671, 1, 664, 671, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1029, 672, 1, 664, 672, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1030, 673, 1, 664, 673, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1031, 674, 1, 664, 674, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1032, 675, 1, 664, 675, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1033, 676, 1, 664, 676, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1034, 677, 1, 664, 677, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1035, 678, 1, 678, NULL, '2020-02-03 23:44:00', 72, 0, 1, 4, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1036, 679, 1, 678, 679, '2020-02-03 23:44:00', 18, 0, 0, 4, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1037, 680, 1, 678, 680, '2020-02-03 23:44:00', 13, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1038, 681, 1, 678, 681, '2020-02-03 23:44:00', 9, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1039, 682, 1, 678, 682, '2020-02-03 23:44:00', 7, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1040, 683, 1, 678, 683, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1041, 684, 1, 678, 684, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1042, 685, 1, 678, 685, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1043, 686, 1, 678, 686, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1044, 687, 1, 678, 687, '2020-02-03 23:44:00', 2, 0, 1, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1045, 688, 1, 678, 688, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1046, 689, 1, 678, 689, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1047, 690, 1, 678, 690, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1048, 691, 1, 678, 691, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1049, 692, 1, 678, 692, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1050, 693, 1, 693, NULL, '2020-02-03 23:44:00', 66, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1051, 694, 1, 693, 694, '2020-02-03 23:44:00', 15, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1052, 695, 1, 693, 695, '2020-02-03 23:44:00', 13, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1053, 696, 1, 693, 696, '2020-02-03 23:44:00', 9, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1054, 697, 1, 693, 697, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1055, 698, 1, 693, 698, '2020-02-03 23:44:00', 6, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1056, 699, 1, 693, 699, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1057, 700, 1, 693, 700, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1058, 701, 1, 693, 701, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1059, 702, 1, 693, 702, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1060, 703, 1, 693, 703, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1061, 704, 1, 693, 704, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1062, 705, 1, 705, NULL, '2020-02-03 23:44:00', 60, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1063, 706, 1, 706, NULL, '2020-02-03 23:44:00', 55, 0, 0, 3, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1064, 707, 1, 706, 707, '2020-02-03 23:44:00', 28, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1065, 708, 1, 706, 708, '2020-02-03 23:44:00', 10, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1066, 709, 1, 706, 709, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1067, 710, 1, 706, 710, '2020-02-03 23:44:00', 3, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1068, 711, 1, 706, 711, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1069, 712, 1, 706, 712, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1070, 713, 1, 706, 713, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1071, 714, 1, 706, 714, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1072, 715, 1, 706, 715, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1073, 716, 1, 706, 716, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1074, 717, 1, 706, 717, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1075, 718, 1, 718, NULL, '2020-02-03 23:44:00', 46, 0, 0, 2, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1076, 719, 1, 718, 719, '2020-02-03 23:44:00', 9, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1077, 720, 1, 718, 720, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1078, 721, 1, 718, 721, '2020-02-03 23:44:00', 7, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1079, 722, 1, 718, 722, '2020-02-03 23:44:00', 6, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1080, 723, 1, 718, 723, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1081, 724, 1, 718, 724, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1082, 725, 1, 718, 725, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1083, 726, 1, 718, 726, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1084, 727, 1, 718, 727, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1085, 728, 1, 728, NULL, '2020-02-03 23:44:00', 34, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1086, 729, 1, 728, 729, '2020-02-03 23:44:00', 9, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1087, 730, 1, 728, 730, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1088, 731, 1, 728, 731, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1089, 732, 1, 728, 732, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1090, 733, 1, 728, 733, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1091, 734, 1, 728, 734, '2020-02-03 23:44:00', 2, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1092, 735, 1, 728, 735, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1093, 736, 1, 728, 736, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1094, 737, 1, 728, 737, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1095, 738, 1, 728, 738, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1096, 739, 1, 728, 739, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1097, 740, 1, 740, NULL, '2020-02-03 23:44:00', 31, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1098, 741, 1, 740, 741, '2020-02-03 23:44:00', 17, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1099, 742, 1, 740, 742, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1100, 743, 1, 740, 743, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1101, 744, 1, 740, 744, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1102, 745, 1, 740, 745, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1103, 746, 1, 740, 746, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1104, 747, 1, 740, 747, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1105, 748, 1, 748, NULL, '2020-02-03 23:44:00', 31, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1106, 749, 1, 748, 749, '2020-02-03 23:44:00', 19, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1107, 750, 1, 748, 750, '2020-02-03 23:44:00', 7, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1108, 751, 1, 748, 751, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1109, 752, 1, 748, 752, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1110, 753, 1, 748, 753, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1111, 754, 1, 754, NULL, '2020-02-03 23:44:00', 24, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1112, 755, 1, 754, 755, '2020-02-03 23:44:00', 10, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1113, 756, 1, 754, 756, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1114, 757, 1, 754, 757, '2020-02-03 23:44:00', 4, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1115, 758, 1, 754, 758, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1116, 759, 1, 754, 759, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1117, 760, 1, 754, 760, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1118, 761, 1, 754, 761, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1119, 762, 1, 762, NULL, '2020-02-03 23:44:00', 15, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1120, 763, 1, 762, 763, '2020-02-03 23:44:00', 15, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1121, 764, 1, 764, NULL, '2020-02-03 23:44:00', 13, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1122, 765, 1, 764, 765, '2020-02-03 23:44:00', 12, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1123, 766, 1, 764, 766, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1124, 767, 1, 767, NULL, '2020-02-03 23:44:00', 10, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1125, 768, 1, 767, 768, '2020-02-03 23:44:00', 10, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1126, 769, 1, 769, NULL, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1127, 770, 1, 769, 770, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1128, 771, 1, 771, NULL, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1129, 772, 1, 771, 772, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1130, 773, 773, NULL, NULL, '2020-02-03 23:44:00', 20, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1131, 774, 774, NULL, NULL, '2020-02-03 23:44:00', 19, 0, 0, 7, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1132, 775, 775, NULL, NULL, '2020-02-03 23:44:00', 18, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1133, 776, 776, NULL, NULL, '2020-02-03 23:44:00', 15, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1134, 777, 777, NULL, NULL, '2020-02-03 23:44:00', 12, 0, 0, 3, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1135, 778, 778, NULL, NULL, '2020-02-03 23:44:00', 11, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1136, 779, 779, NULL, NULL, '2020-02-03 23:44:00', 10, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1137, 780, 780, NULL, NULL, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1138, 781, 781, NULL, NULL, '2020-02-03 23:44:00', 8, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1139, 782, 782, NULL, NULL, '2020-02-03 23:44:00', 6, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1140, 783, 783, NULL, NULL, '2020-02-03 23:44:00', 5, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1141, 784, 784, NULL, NULL, '2020-02-03 23:44:00', 4, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1142, 785, 785, NULL, NULL, '2020-02-03 23:44:00', 3, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1143, 786, 786, NULL, NULL, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1144, 787, 787, NULL, NULL, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1145, 788, 788, NULL, NULL, '2020-02-03 23:44:00', 2, 0, 1, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1146, 789, 789, NULL, NULL, '2020-02-03 23:44:00', 2, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1147, 790, 790, NULL, NULL, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1148, 791, 791, NULL, NULL, '2020-02-03 23:44:00', 1, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1149, 792, 792, NULL, NULL, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1150, 793, 793, NULL, NULL, '2020-02-03 23:44:00', 1, 0, 0, 1, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1151, 794, 794, NULL, NULL, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1152, 795, 795, NULL, NULL, '2020-02-03 23:44:00', 1, 0, 0, 0, '2020-02-04 04:35:36', 11);
INSERT INTO `t_epidemic_situation` VALUES (1154, 1, 1, NULL, NULL, '2020-02-05 23:55:00', 24444, 23260, 493, 998, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1155, 1, 1, NULL, NULL, '2020-01-10 23:59:59', 27, NULL, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1156, 1, 1, NULL, NULL, '2020-01-11 23:59:59', 41, NULL, 1, 6, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1157, 1, 1, NULL, NULL, '2020-01-12 23:59:59', 41, NULL, 1, 7, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1158, 1, 1, NULL, NULL, '2020-01-13 23:59:59', 41, NULL, 1, 7, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1159, 1, 1, NULL, NULL, '2020-01-14 23:59:59', 41, NULL, 1, 7, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1160, 1, 1, NULL, NULL, '2020-01-15 23:59:59', 41, NULL, 2, 12, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1161, 1, 1, NULL, NULL, '2020-01-16 23:59:59', 45, NULL, 2, 15, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1162, 1, 1, NULL, NULL, '2020-01-17 23:59:59', 62, NULL, 2, 19, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1163, 1, 1, NULL, NULL, '2020-01-18 23:59:59', 121, NULL, 3, 24, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1164, 1, 1, NULL, NULL, '2020-01-19 23:59:59', 198, NULL, 4, 25, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1165, 1, 1, NULL, NULL, '2020-01-20 23:59:59', 291, NULL, 6, 25, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1166, 1, 1, NULL, NULL, '2020-01-21 23:59:59', 440, NULL, 9, 25, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1167, 1, 1, NULL, NULL, '2020-01-22 23:59:59', 574, NULL, 17, 25, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1168, 1, 1, NULL, NULL, '2020-01-23 23:59:59', 835, NULL, 25, 34, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1169, 1, 1, NULL, NULL, '2020-01-24 23:59:59', 1297, NULL, 41, 38, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1170, 1, 1, NULL, NULL, '2020-01-25 23:59:59', 1985, NULL, 56, 49, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1171, 1, 1, NULL, NULL, '2020-01-26 23:59:59', 2761, NULL, 80, 51, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1172, 1, 1, NULL, NULL, '2020-01-27 23:59:59', 4535, NULL, 106, 60, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1173, 1, 1, NULL, NULL, '2020-01-28 23:59:59', 5997, NULL, 132, 103, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1174, 1, 1, NULL, NULL, '2020-01-29 23:59:59', 7736, NULL, 170, 124, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1175, 1, 1, NULL, NULL, '2020-01-30 23:59:59', 9720, NULL, 213, 171, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1176, 1, 1, NULL, NULL, '2020-01-31 23:59:59', 11821, NULL, 259, 243, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1177, 1, 1, NULL, NULL, '2020-02-01 23:59:59', 14411, NULL, 304, 328, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1178, 1, 1, NULL, NULL, '2020-02-02 23:59:59', 17238, NULL, 361, 475, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1179, 1, 1, NULL, NULL, '2020-02-04 23:59:59', 24363, NULL, 491, 892, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1180, 403, 1, 403, NULL, '2020-02-05 23:55:00', 16680, 0, 479, 525, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1181, 404, 1, 403, 404, '2020-02-05 23:55:00', 8353, 0, 362, 341, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1182, 405, 1, 403, 405, '2020-02-05 23:55:00', 1645, 0, 25, 52, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1183, 406, 1, 403, 406, '2020-02-05 23:55:00', 1462, 0, 18, 6, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1184, 407, 1, 403, 407, '2020-02-05 23:55:00', 735, 0, 2, 7, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1185, 408, 1, 403, 408, '2020-02-05 23:55:00', 713, 0, 9, 10, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1186, 409, 1, 403, 409, '2020-02-05 23:55:00', 706, 0, 8, 9, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1187, 412, 1, 403, 412, '2020-02-05 23:55:00', 509, 0, 2, 18, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1188, 410, 1, 403, 410, '2020-02-05 23:55:00', 496, 0, 4, 9, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1189, 411, 1, 403, 411, '2020-02-05 23:55:00', 422, 0, 16, 16, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1190, 414, 1, 403, 414, '2020-02-05 23:55:00', 384, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1191, 413, 1, 403, 413, '2020-02-05 23:55:00', 382, 0, 18, 6, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1192, 415, 1, 403, 415, '2020-02-05 23:55:00', 318, 0, 0, 9, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1193, 416, 1, 403, 416, '2020-02-05 23:55:00', 225, 0, 4, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1194, 418, 1, 403, 418, '2020-02-05 23:55:00', 138, 0, 0, 6, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1195, 417, 1, 403, 417, '2020-02-05 23:55:00', 128, 0, 10, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1196, 419, 1, 403, 419, '2020-02-05 23:55:00', 54, 0, 1, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1197, 420, 1, 403, 420, '2020-02-05 23:55:00', 10, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1198, 421, 1, 403, 421, '2020-02-05 23:55:00', 0, 0, 0, 32, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1199, 422, 1, 422, NULL, '2020-02-05 23:55:00', 895, 0, 0, 41, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1200, 423, 1, 422, 423, '2020-02-05 23:55:00', 291, 0, 0, 16, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1201, 424, 1, 422, 424, '2020-02-05 23:55:00', 249, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1202, 425, 1, 422, 425, '2020-02-05 23:55:00', 72, 0, 0, 4, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1203, 426, 1, 422, 426, '2020-02-05 23:55:00', 50, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1204, 427, 1, 422, 427, '2020-02-05 23:55:00', 44, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1205, 429, 1, 422, 429, '2020-02-05 23:55:00', 36, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1206, 428, 1, 422, 428, '2020-02-05 23:55:00', 34, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1207, 430, 1, 422, 430, '2020-02-05 23:55:00', 20, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1208, 431, 1, 422, 431, '2020-02-05 23:55:00', 18, 0, 0, 4, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1209, 432, 1, 422, 432, '2020-02-05 23:55:00', 13, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1210, 433, 1, 422, 433, '2020-02-05 23:55:00', 12, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1211, 434, 1, 422, 434, '2020-02-05 23:55:00', 10, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1212, 435, 1, 422, 435, '2020-02-05 23:55:00', 10, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1213, 439, 1, 422, 439, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1214, 436, 1, 422, 436, '2020-02-05 23:55:00', 6, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1215, 440, 1, 422, 440, '2020-02-05 23:55:00', 6, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1216, 438, 1, 422, 438, '2020-02-05 23:55:00', 6, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1217, 437, 1, 422, 437, '2020-02-05 23:55:00', 5, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1218, 441, 1, 422, 441, '2020-02-05 23:55:00', 5, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1219, 442, 1, 422, 442, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1220, 421, 1, 422, 421, '2020-02-05 23:55:00', 0, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1221, 443, 1, 443, NULL, '2020-02-05 23:55:00', 895, 0, 0, 78, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1222, 444, 1, 443, 444, '2020-02-05 23:55:00', 364, 0, 0, 28, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1223, 445, 1, 443, 445, '2020-02-05 23:55:00', 141, 0, 0, 14, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1224, 446, 1, 443, 446, '2020-02-05 23:55:00', 122, 0, 0, 14, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1225, 447, 1, 443, 447, '2020-02-05 23:55:00', 120, 0, 0, 4, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1226, 448, 1, 443, 448, '2020-02-05 23:55:00', 44, 0, 0, 8, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1227, 449, 1, 443, 449, '2020-02-05 23:55:00', 30, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1228, 450, 1, 443, 450, '2020-02-05 23:55:00', 27, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1229, 451, 1, 443, 451, '2020-02-05 23:55:00', 16, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1230, 452, 1, 443, 452, '2020-02-05 23:55:00', 15, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1231, 453, 1, 443, 453, '2020-02-05 23:55:00', 9, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1232, 454, 1, 443, 454, '2020-02-05 23:55:00', 7, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1233, 455, 1, 455, NULL, '2020-02-05 23:55:00', 764, 0, 2, 52, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1234, 456, 1, 455, 456, '2020-02-05 23:55:00', 138, 0, 0, 9, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1235, 457, 1, 455, 457, '2020-02-05 23:55:00', 107, 0, 2, 4, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1236, 458, 1, 455, 458, '2020-02-05 23:55:00', 92, 0, 0, 19, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1237, 459, 1, 455, 459, '2020-02-05 23:55:00', 82, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1238, 460, 1, 455, 460, '2020-02-05 23:55:00', 61, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1239, 461, 1, 455, 461, '2020-02-05 23:55:00', 56, 0, 0, 5, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1240, 463, 1, 455, 463, '2020-02-05 23:55:00', 39, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1241, 462, 1, 455, 462, '2020-02-05 23:55:00', 35, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1242, 465, 1, 455, 465, '2020-02-05 23:55:00', 34, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1243, 464, 1, 455, 464, '2020-02-05 23:55:00', 24, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1244, 466, 1, 455, 466, '2020-02-05 23:55:00', 24, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1245, 467, 1, 455, 467, '2020-02-05 23:55:00', 17, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1246, 470, 1, 455, 470, '2020-02-05 23:55:00', 17, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1247, 468, 1, 455, 468, '2020-02-05 23:55:00', 15, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1248, 469, 1, 455, 469, '2020-02-05 23:55:00', 10, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1249, 471, 1, 455, 471, '2020-02-05 23:55:00', 7, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1250, 472, 1, 455, 472, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1251, 473, 1, 455, 473, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1252, 421, 1, 455, 421, '2020-02-05 23:55:00', 0, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1253, 474, 1, 474, NULL, '2020-02-05 23:55:00', 661, 0, 0, 52, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1254, 475, 1, 474, 475, '2020-02-05 23:55:00', 164, 0, 0, 8, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1255, 476, 1, 474, 476, '2020-02-05 23:55:00', 89, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1256, 477, 1, 474, 477, '2020-02-05 23:55:00', 68, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1257, 478, 1, 474, 478, '2020-02-05 23:55:00', 56, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1258, 479, 1, 474, 479, '2020-02-05 23:55:00', 45, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1259, 482, 1, 474, 482, '2020-02-05 23:55:00', 40, 0, 0, 6, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1260, 480, 1, 474, 480, '2020-02-05 23:55:00', 39, 0, 0, 5, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1261, 484, 1, 474, 484, '2020-02-05 23:55:00', 38, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1262, 481, 1, 474, 481, '2020-02-05 23:55:00', 35, 0, 0, 6, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1263, 483, 1, 474, 483, '2020-02-05 23:55:00', 30, 0, 0, 8, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1264, 485, 1, 474, 485, '2020-02-05 23:55:00', 24, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1265, 486, 1, 474, 486, '2020-02-05 23:55:00', 23, 0, 0, 4, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1266, 487, 1, 474, 487, '2020-02-05 23:55:00', 7, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1267, 488, 1, 474, 488, '2020-02-05 23:55:00', 3, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1268, 506, 1, 506, NULL, '2020-02-05 23:55:00', 548, 0, 0, 27, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1269, 507, 1, 506, 507, '2020-02-05 23:55:00', 134, 0, 0, 7, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1270, 508, 1, 506, 508, '2020-02-05 23:55:00', 86, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1271, 512, 1, 506, 512, '2020-02-05 23:55:00', 69, 0, 0, 5, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1272, 509, 1, 506, 509, '2020-02-05 23:55:00', 69, 0, 0, 4, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1273, 510, 1, 506, 510, '2020-02-05 23:55:00', 48, 0, 0, 4, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1274, 511, 1, 506, 511, '2020-02-05 23:55:00', 48, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1275, 513, 1, 506, 513, '2020-02-05 23:55:00', 44, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1276, 514, 1, 506, 514, '2020-02-05 23:55:00', 22, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1277, 515, 1, 506, 515, '2020-02-05 23:55:00', 15, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1278, 516, 1, 506, 516, '2020-02-05 23:55:00', 9, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1279, 517, 1, 506, 517, '2020-02-05 23:55:00', 4, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1280, 489, 1, 489, NULL, '2020-02-05 23:55:00', 530, 0, 0, 22, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1281, 490, 1, 489, 490, '2020-02-05 23:55:00', 93, 0, 0, 5, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1282, 491, 1, 489, 491, '2020-02-05 23:55:00', 84, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1283, 493, 1, 489, 493, '2020-02-05 23:55:00', 58, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1284, 492, 1, 489, 492, '2020-02-05 23:55:00', 56, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1285, 494, 1, 489, 494, '2020-02-05 23:55:00', 48, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1286, 497, 1, 489, 497, '2020-02-05 23:55:00', 34, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1287, 495, 1, 489, 495, '2020-02-05 23:55:00', 30, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1288, 496, 1, 489, 496, '2020-02-05 23:55:00', 24, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1289, 499, 1, 489, 499, '2020-02-05 23:55:00', 23, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1290, 498, 1, 489, 498, '2020-02-05 23:55:00', 19, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1291, 502, 1, 489, 502, '2020-02-05 23:55:00', 14, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1292, 503, 1, 489, 503, '2020-02-05 23:55:00', 12, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1293, 504, 1, 489, 504, '2020-02-05 23:55:00', 11, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1294, 501, 1, 489, 501, '2020-02-05 23:55:00', 11, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1295, 500, 1, 489, 500, '2020-02-05 23:55:00', 9, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1296, 505, 1, 489, 505, '2020-02-05 23:55:00', 4, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1297, 518, 1, 518, NULL, '2020-02-05 23:55:00', 376, 0, 2, 15, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1298, 519, 1, 519, NULL, '2020-02-05 23:55:00', 341, 0, 0, 22, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1299, 520, 1, 519, 520, '2020-02-05 23:55:00', 55, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1300, 521, 1, 519, 521, '2020-02-05 23:55:00', 47, 0, 0, 10, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1301, 522, 1, 519, 522, '2020-02-05 23:55:00', 45, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1302, 523, 1, 519, 523, '2020-02-05 23:55:00', 26, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1303, 524, 1, 519, 524, '2020-02-05 23:55:00', 26, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1304, 526, 1, 519, 526, '2020-02-05 23:55:00', 26, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1305, 525, 1, 519, 525, '2020-02-05 23:55:00', 25, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1306, 528, 1, 519, 528, '2020-02-05 23:55:00', 24, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1307, 530, 1, 519, 530, '2020-02-05 23:55:00', 20, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1308, 529, 1, 519, 529, '2020-02-05 23:55:00', 15, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1309, 527, 1, 519, 527, '2020-02-05 23:55:00', 15, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1310, 531, 1, 519, 531, '2020-02-05 23:55:00', 11, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1311, 532, 1, 519, 532, '2020-02-05 23:55:00', 6, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1312, 533, 1, 533, NULL, '2020-02-05 23:55:00', 307, 0, 0, 15, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1313, 535, 1, 533, 535, '2020-02-05 23:55:00', 35, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1314, 536, 1, 533, 536, '2020-02-05 23:55:00', 30, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1315, 538, 1, 533, 538, '2020-02-05 23:55:00', 29, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1316, 537, 1, 533, 537, '2020-02-05 23:55:00', 27, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1317, 534, 1, 533, 534, '2020-02-05 23:55:00', 27, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1318, 540, 1, 533, 540, '2020-02-05 23:55:00', 25, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1319, 539, 1, 533, 539, '2020-02-05 23:55:00', 24, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1320, 541, 1, 533, 541, '2020-02-05 23:55:00', 17, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1321, 543, 1, 533, 543, '2020-02-05 23:55:00', 16, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1322, 542, 1, 533, 542, '2020-02-05 23:55:00', 14, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1323, 544, 1, 533, 544, '2020-02-05 23:55:00', 14, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1324, 545, 1, 533, 545, '2020-02-05 23:55:00', 14, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1325, 548, 1, 533, 548, '2020-02-05 23:55:00', 12, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1326, 547, 1, 533, 547, '2020-02-05 23:55:00', 12, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1327, 546, 1, 533, 546, '2020-02-05 23:55:00', 11, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1328, 549, 1, 549, NULL, '2020-02-05 23:55:00', 301, 0, 1, 26, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1329, 550, 1, 549, 550, '2020-02-05 23:55:00', 92, 0, 1, 17, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1330, 551, 1, 549, 551, '2020-02-05 23:55:00', 28, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1331, 552, 1, 549, 552, '2020-02-05 23:55:00', 24, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1332, 553, 1, 549, 553, '2020-02-05 23:55:00', 17, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1333, 556, 1, 549, 556, '2020-02-05 23:55:00', 17, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1334, 555, 1, 549, 555, '2020-02-05 23:55:00', 15, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1335, 554, 1, 549, 554, '2020-02-05 23:55:00', 15, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1336, 558, 1, 549, 558, '2020-02-05 23:55:00', 12, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1337, 557, 1, 549, 557, '2020-02-05 23:55:00', 11, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1338, 560, 1, 549, 560, '2020-02-05 23:55:00', 10, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1339, 563, 1, 549, 563, '2020-02-05 23:55:00', 10, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1340, 559, 1, 549, 559, '2020-02-05 23:55:00', 9, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1341, 562, 1, 549, 562, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1342, 561, 1, 549, 561, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1343, 565, 1, 549, 565, '2020-02-05 23:55:00', 6, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1344, 566, 1, 549, 566, '2020-02-05 23:55:00', 6, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1345, 567, 1, 549, 567, '2020-02-05 23:55:00', 5, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1346, 564, 1, 549, 564, '2020-02-05 23:55:00', 5, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1347, 568, 1, 549, 568, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1348, 569, 1, 549, 569, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1349, 570, 1, 549, 570, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1350, 571, 1, 571, NULL, '2020-02-05 23:55:00', 253, 0, 1, 24, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1351, 572, 1, 571, 572, '2020-02-05 23:55:00', 45, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1352, 573, 1, 571, 573, '2020-02-05 23:55:00', 43, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1353, 574, 1, 571, 574, '2020-02-05 23:55:00', 29, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1354, 575, 1, 571, 575, '2020-02-05 23:55:00', 29, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1355, 576, 1, 571, 576, '2020-02-05 23:55:00', 21, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1356, 577, 1, 571, 577, '2020-02-05 23:55:00', 20, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1357, 578, 1, 571, 578, '2020-02-05 23:55:00', 15, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1358, 579, 1, 571, 579, '2020-02-05 23:55:00', 13, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1359, 582, 1, 571, 582, '2020-02-05 23:55:00', 11, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1360, 581, 1, 571, 581, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1361, 585, 1, 571, 585, '2020-02-05 23:55:00', 6, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1362, 580, 1, 571, 580, '2020-02-05 23:55:00', 6, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1363, 583, 1, 571, 583, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1364, 584, 1, 571, 584, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1365, 586, 1, 571, 586, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1366, 421, 1, 571, 421, '2020-02-05 23:55:00', 0, 0, 1, 15, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1367, 588, 1, 588, NULL, '2020-02-05 23:55:00', 243, 0, 1, 15, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1368, 589, 1, 589, NULL, '2020-02-05 23:55:00', 205, 0, 0, 11, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1369, 590, 1, 589, 590, '2020-02-05 23:55:00', 55, 0, 0, 4, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1370, 591, 1, 589, 591, '2020-02-05 23:55:00', 38, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1371, 592, 1, 589, 592, '2020-02-05 23:55:00', 37, 0, 0, 4, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1372, 593, 1, 589, 593, '2020-02-05 23:55:00', 21, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1373, 594, 1, 589, 594, '2020-02-05 23:55:00', 15, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1374, 595, 1, 589, 595, '2020-02-05 23:55:00', 14, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1375, 596, 1, 589, 596, '2020-02-05 23:55:00', 12, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1376, 597, 1, 589, 597, '2020-02-05 23:55:00', 11, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1377, 598, 1, 589, 598, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1378, 624, 1, 624, NULL, '2020-02-05 23:55:00', 190, 0, 2, 7, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1379, 625, 1, 624, 625, '2020-02-05 23:55:00', 73, 0, 0, 6, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1380, 626, 1, 624, 626, '2020-02-05 23:55:00', 24, 0, 2, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1381, 632, 1, 624, 632, '2020-02-05 23:55:00', 20, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1382, 630, 1, 624, 630, '2020-02-05 23:55:00', 16, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1383, 633, 1, 624, 633, '2020-02-05 23:55:00', 12, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1384, 628, 1, 624, 628, '2020-02-05 23:55:00', 11, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1385, 627, 1, 624, 627, '2020-02-05 23:55:00', 11, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1386, 631, 1, 624, 631, '2020-02-05 23:55:00', 9, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1387, 629, 1, 624, 629, '2020-02-05 23:55:00', 9, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1388, 634, 1, 624, 634, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1389, 636, 1, 624, 636, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1390, 635, 1, 624, 635, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1391, 599, 1, 599, NULL, '2020-02-05 23:55:00', 165, 0, 0, 6, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1392, 600, 1, 599, 600, '2020-02-05 23:55:00', 70, 0, 0, 5, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1393, 601, 1, 599, 601, '2020-02-05 23:55:00', 19, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1394, 602, 1, 599, 602, '2020-02-05 23:55:00', 19, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1395, 603, 1, 599, 603, '2020-02-05 23:55:00', 15, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1396, 604, 1, 599, 604, '2020-02-05 23:55:00', 10, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1397, 607, 1, 599, 607, '2020-02-05 23:55:00', 9, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1398, 606, 1, 599, 606, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1399, 605, 1, 599, 605, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1400, 608, 1, 599, 608, '2020-02-05 23:55:00', 6, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1401, 796, 1, 599, 796, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1402, 610, 1, 599, 610, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1403, 609, 1, 599, 609, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1404, 611, 1, 611, NULL, '2020-02-05 23:55:00', 150, 0, 0, 14, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1405, 612, 1, 611, 612, '2020-02-05 23:55:00', 29, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1406, 614, 1, 611, 614, '2020-02-05 23:55:00', 28, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1407, 613, 1, 611, 613, '2020-02-05 23:55:00', 26, 0, 0, 5, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1408, 615, 1, 611, 615, '2020-02-05 23:55:00', 17, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1409, 616, 1, 611, 616, '2020-02-05 23:55:00', 13, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1410, 618, 1, 611, 618, '2020-02-05 23:55:00', 9, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1411, 617, 1, 611, 617, '2020-02-05 23:55:00', 8, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1412, 619, 1, 611, 619, '2020-02-05 23:55:00', 5, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1413, 620, 1, 611, 620, '2020-02-05 23:55:00', 5, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1414, 621, 1, 611, 621, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1415, 622, 1, 611, 622, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1416, 623, 1, 611, 623, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1417, 652, 1, 652, NULL, '2020-02-05 23:55:00', 135, 0, 1, 6, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1418, 654, 1, 652, 654, '2020-02-05 23:55:00', 21, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1419, 653, 1, 652, 653, '2020-02-05 23:55:00', 20, 0, 1, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1420, 656, 1, 652, 656, '2020-02-05 23:55:00', 17, 0, 0, 4, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1421, 655, 1, 652, 655, '2020-02-05 23:55:00', 16, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1422, 658, 1, 652, 658, '2020-02-05 23:55:00', 14, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1423, 657, 1, 652, 657, '2020-02-05 23:55:00', 13, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1424, 659, 1, 652, 659, '2020-02-05 23:55:00', 12, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1425, 660, 1, 652, 660, '2020-02-05 23:55:00', 10, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1426, 661, 1, 652, 661, '2020-02-05 23:55:00', 5, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1427, 663, 1, 652, 663, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1428, 662, 1, 652, 662, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1429, 637, 1, 637, NULL, '2020-02-05 23:55:00', 124, 0, 0, 5, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1430, 638, 1, 637, 638, '2020-02-05 23:55:00', 35, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1431, 639, 1, 637, 639, '2020-02-05 23:55:00', 15, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1432, 640, 1, 637, 640, '2020-02-05 23:55:00', 12, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1433, 641, 1, 637, 641, '2020-02-05 23:55:00', 10, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1434, 645, 1, 637, 645, '2020-02-05 23:55:00', 10, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1435, 642, 1, 637, 642, '2020-02-05 23:55:00', 8, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1436, 643, 1, 637, 643, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1437, 644, 1, 637, 644, '2020-02-05 23:55:00', 7, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1438, 648, 1, 637, 648, '2020-02-05 23:55:00', 5, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1439, 647, 1, 637, 647, '2020-02-05 23:55:00', 5, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1440, 649, 1, 637, 649, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1441, 650, 1, 637, 650, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1442, 651, 1, 637, 651, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1443, 797, 1, 637, 797, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1444, 678, 1, 678, NULL, '2020-02-05 23:55:00', 99, 0, 1, 5, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1445, 679, 1, 678, 679, '2020-02-05 23:55:00', 30, 0, 0, 5, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1446, 680, 1, 678, 680, '2020-02-05 23:55:00', 16, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1447, 681, 1, 678, 681, '2020-02-05 23:55:00', 11, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1448, 682, 1, 678, 682, '2020-02-05 23:55:00', 10, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1449, 683, 1, 678, 683, '2020-02-05 23:55:00', 6, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1450, 685, 1, 678, 685, '2020-02-05 23:55:00', 5, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1451, 687, 1, 678, 687, '2020-02-05 23:55:00', 4, 0, 1, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1452, 684, 1, 678, 684, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1453, 690, 1, 678, 690, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1454, 686, 1, 678, 686, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1455, 692, 1, 678, 692, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1456, 798, 1, 678, 798, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1457, 689, 1, 678, 689, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1458, 688, 1, 678, 688, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1459, 691, 1, 678, 691, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1460, 664, 1, 664, NULL, '2020-02-05 23:55:00', 89, 0, 0, 4, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1461, 665, 1, 664, 665, '2020-02-05 23:55:00', 23, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1462, 666, 1, 664, 666, '2020-02-05 23:55:00', 14, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1463, 667, 1, 664, 667, '2020-02-05 23:55:00', 8, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1464, 669, 1, 664, 669, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1465, 672, 1, 664, 672, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1466, 668, 1, 664, 668, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1467, 671, 1, 664, 671, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1468, 670, 1, 664, 670, '2020-02-05 23:55:00', 6, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1469, 674, 1, 664, 674, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1470, 673, 1, 664, 673, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1471, 675, 1, 664, 675, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1472, 677, 1, 664, 677, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1473, 676, 1, 664, 676, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1474, 693, 1, 693, NULL, '2020-02-05 23:55:00', 81, 0, 0, 5, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1475, 694, 1, 693, 694, '2020-02-05 23:55:00', 21, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1476, 695, 1, 693, 695, '2020-02-05 23:55:00', 17, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1477, 696, 1, 693, 696, '2020-02-05 23:55:00', 9, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1478, 698, 1, 693, 698, '2020-02-05 23:55:00', 9, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1479, 697, 1, 693, 697, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1480, 699, 1, 693, 699, '2020-02-05 23:55:00', 5, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1481, 702, 1, 693, 702, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1482, 700, 1, 693, 700, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1483, 701, 1, 693, 701, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1484, 703, 1, 693, 703, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1485, 704, 1, 693, 704, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1486, 705, 1, 705, NULL, '2020-02-05 23:55:00', 69, 0, 1, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1487, 718, 1, 718, NULL, '2020-02-05 23:55:00', 64, 0, 1, 5, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1488, 721, 1, 718, 721, '2020-02-05 23:55:00', 12, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1489, 725, 1, 718, 725, '2020-02-05 23:55:00', 11, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1490, 719, 1, 718, 719, '2020-02-05 23:55:00', 9, 0, 1, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1491, 720, 1, 718, 720, '2020-02-05 23:55:00', 9, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1492, 722, 1, 718, 722, '2020-02-05 23:55:00', 6, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1493, 723, 1, 718, 723, '2020-02-05 23:55:00', 6, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1494, 724, 1, 718, 724, '2020-02-05 23:55:00', 5, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1495, 726, 1, 718, 726, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1496, 727, 1, 718, 727, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1497, 706, 1, 706, NULL, '2020-02-05 23:55:00', 57, 0, 0, 5, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1498, 707, 1, 706, 707, '2020-02-05 23:55:00', 30, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1499, 708, 1, 706, 708, '2020-02-05 23:55:00', 10, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1500, 709, 1, 706, 709, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1501, 711, 1, 706, 711, '2020-02-05 23:55:00', 3, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1502, 710, 1, 706, 710, '2020-02-05 23:55:00', 3, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1503, 712, 1, 706, 712, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1504, 715, 1, 706, 715, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1505, 713, 1, 706, 713, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1506, 714, 1, 706, 714, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1507, 717, 1, 706, 717, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1508, 716, 1, 706, 716, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1509, 740, 1, 740, NULL, '2020-02-05 23:55:00', 54, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1510, 741, 1, 740, 741, '2020-02-05 23:55:00', 28, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1511, 742, 1, 740, 742, '2020-02-05 23:55:00', 8, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1512, 743, 1, 740, 743, '2020-02-05 23:55:00', 5, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1513, 747, 1, 740, 747, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1514, 744, 1, 740, 744, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1515, 799, 1, 740, 799, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1516, 745, 1, 740, 745, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1517, 746, 1, 740, 746, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1518, 728, 1, 728, NULL, '2020-02-05 23:55:00', 42, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1519, 729, 1, 728, 729, '2020-02-05 23:55:00', 11, 0, 0, 2, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1520, 730, 1, 728, 730, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1521, 731, 1, 728, 731, '2020-02-05 23:55:00', 5, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1522, 733, 1, 728, 733, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1523, 732, 1, 728, 732, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1524, 734, 1, 728, 734, '2020-02-05 23:55:00', 3, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1525, 735, 1, 728, 735, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1526, 737, 1, 728, 737, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1527, 736, 1, 728, 736, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1528, 738, 1, 728, 738, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1529, 739, 1, 728, 739, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1530, 748, 1, 748, NULL, '2020-02-05 23:55:00', 34, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1531, 749, 1, 748, 749, '2020-02-05 23:55:00', 20, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1532, 750, 1, 748, 750, '2020-02-05 23:55:00', 7, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1533, 751, 1, 748, 751, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1534, 752, 1, 748, 752, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1535, 800, 1, 748, 800, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1536, 801, 1, 748, 801, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1537, 754, 1, 754, NULL, '2020-02-05 23:55:00', 32, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1538, 755, 1, 754, 755, '2020-02-05 23:55:00', 12, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1539, 756, 1, 754, 756, '2020-02-05 23:55:00', 9, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1540, 757, 1, 754, 757, '2020-02-05 23:55:00', 4, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1541, 802, 1, 754, 802, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1542, 759, 1, 754, 759, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1543, 803, 1, 754, 803, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1544, 804, 1, 754, 804, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1545, 761, 1, 754, 761, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1546, 805, 1, 754, 805, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1547, 762, 1, 762, NULL, '2020-02-05 23:55:00', 21, 0, 1, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1548, 763, 1, 762, 763, '2020-02-05 23:55:00', 21, 0, 1, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1549, 764, 1, 764, NULL, '2020-02-05 23:55:00', 17, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1550, 765, 1, 764, 765, '2020-02-05 23:55:00', 14, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1551, 766, 1, 764, 766, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1552, 767, 1, 767, NULL, '2020-02-05 23:55:00', 11, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1553, 768, 1, 767, 768, '2020-02-05 23:55:00', 11, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1554, 769, 1, 769, NULL, '2020-02-05 23:55:00', 10, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1555, 770, 1, 769, 770, '2020-02-05 23:55:00', 10, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1556, 771, 1, 771, NULL, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1557, 772, 1, 771, 772, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1558, 773, 773, NULL, NULL, '2020-02-05 23:55:00', 35, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1559, 774, 774, NULL, NULL, '2020-02-05 23:55:00', 25, 0, 0, 7, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1560, 775, 775, NULL, NULL, '2020-02-05 23:55:00', 24, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1561, 776, 776, NULL, NULL, '2020-02-05 23:55:00', 19, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1562, 777, 777, NULL, NULL, '2020-02-05 23:55:00', 14, 0, 0, 3, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1563, 779, 779, NULL, NULL, '2020-02-05 23:55:00', 12, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1564, 778, 778, NULL, NULL, '2020-02-05 23:55:00', 11, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1565, 780, 780, NULL, NULL, '2020-02-05 23:55:00', 10, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1566, 781, 781, NULL, NULL, '2020-02-05 23:55:00', 10, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1567, 782, 782, NULL, NULL, '2020-02-05 23:55:00', 6, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1568, 783, 783, NULL, NULL, '2020-02-05 23:55:00', 5, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1569, 784, 784, NULL, NULL, '2020-02-05 23:55:00', 5, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1570, 788, 788, NULL, NULL, '2020-02-05 23:55:00', 3, 0, 1, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1571, 785, 785, NULL, NULL, '2020-02-05 23:55:00', 3, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1572, 786, 786, NULL, NULL, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1573, 787, 787, NULL, NULL, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1574, 789, 789, NULL, NULL, '2020-02-05 23:55:00', 2, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1575, 790, 790, NULL, NULL, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1576, 806, 806, NULL, NULL, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1577, 791, 791, NULL, NULL, '2020-02-05 23:55:00', 1, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1578, 792, 792, NULL, NULL, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1579, 793, 793, NULL, NULL, '2020-02-05 23:55:00', 1, 0, 0, 1, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1580, 794, 794, NULL, NULL, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
INSERT INTO `t_epidemic_situation` VALUES (1581, 795, 795, NULL, NULL, '2020-02-05 23:55:00', 1, 0, 0, 0, '2020-02-06 17:05:27', 14);
COMMIT;

-- ----------------------------
-- Table structure for t_epidemic_situation_growth_rates
-- ----------------------------
DROP TABLE IF EXISTS `t_epidemic_situation_growth_rates`;
CREATE TABLE `t_epidemic_situation_growth_rates` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `location_id` int(255) DEFAULT NULL COMMENT '地区外键',
  `datetime` datetime DEFAULT NULL COMMENT '数据所属时间',
  `entry_time` datetime DEFAULT NULL COMMENT '录入本表的时间',
  `totalConfirmed_growth_rates` double(8,5) DEFAULT NULL COMMENT '确诊病例数目 较昨日的增长率',
  `totalDoubtful_growth_rates` double(8,5) DEFAULT NULL COMMENT '疑似病例数目 较昨日的增长率',
  `totalDeath_growth_rates` double(8,5) DEFAULT NULL COMMENT '死亡病例数目 较昨日的增长率',
  `totalCured_growth_rates` double(8,5) DEFAULT NULL COMMENT '治愈人数 较昨日的增长率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='各地疫情增长率统计表';

-- ----------------------------
-- Records of t_epidemic_situation_growth_rates
-- ----------------------------
BEGIN;
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (29, 1, '2020-01-11 00:00:00', '2020-02-06 18:34:08', 0.51852, 0.00000, 0.00000, 2.00000);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (30, 1, '2020-01-12 00:00:00', '2020-02-06 18:34:08', 0.00000, 0.00000, 0.00000, 0.16667);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (31, 1, '2020-01-13 00:00:00', '2020-02-06 18:34:08', 0.00000, 0.00000, 0.00000, 0.00000);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (32, 1, '2020-01-14 00:00:00', '2020-02-06 18:34:08', 0.00000, 0.00000, 0.00000, 0.00000);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (33, 1, '2020-01-15 00:00:00', '2020-02-06 18:34:08', 0.00000, 0.00000, 1.00000, 0.71429);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (34, 1, '2020-01-16 00:00:00', '2020-02-06 18:34:08', 0.09756, 0.00000, 0.00000, 0.25000);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (35, 1, '2020-01-17 00:00:00', '2020-02-06 18:34:08', 0.37778, 0.00000, 0.00000, 0.26667);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (36, 1, '2020-01-18 00:00:00', '2020-02-06 18:34:08', 0.95161, 0.00000, 0.50000, 0.26316);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (37, 1, '2020-01-19 00:00:00', '2020-02-06 18:34:08', 0.63636, 0.00000, 0.33333, 0.04167);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (38, 1, '2020-01-20 00:00:00', '2020-02-06 18:34:08', 0.46970, 0.00000, 0.50000, 0.00000);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (39, 1, '2020-01-21 00:00:00', '2020-02-06 18:34:08', 0.51203, 0.00000, 0.50000, 0.00000);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (40, 1, '2020-01-22 00:00:00', '2020-02-06 18:34:08', 0.30455, 0.00000, 0.88889, 0.00000);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (41, 1, '2020-01-23 00:00:00', '2020-02-06 18:34:08', 0.45470, 0.00000, 0.47059, 0.36000);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (42, 1, '2020-01-24 00:00:00', '2020-02-06 18:34:08', 0.55329, 0.00000, 0.64000, 0.11765);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (43, 1, '2020-01-25 00:00:00', '2020-02-06 18:34:08', 0.53045, 0.00000, 0.36585, 0.28947);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (44, 1, '2020-01-26 00:00:00', '2020-02-06 18:34:08', 0.39093, 0.00000, 0.42857, 0.04082);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (45, 1, '2020-01-27 00:00:00', '2020-02-06 18:34:08', 0.64252, 0.00000, 0.32500, 0.17647);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (46, 1, '2020-01-28 00:00:00', '2020-02-06 18:34:08', 0.32238, 0.00000, 0.24528, 0.71667);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (47, 1, '2020-01-29 00:00:00', '2020-02-06 18:34:08', 0.28998, 0.00000, 0.28788, 0.20388);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (48, 1, '2020-01-30 00:00:00', '2020-02-06 18:34:08', 0.25646, 0.00000, 0.25294, 0.37903);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (49, 1, '2020-01-31 00:00:00', '2020-02-06 18:34:08', 0.21615, 0.00000, 0.21596, 0.42105);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (50, 1, '2020-02-01 00:00:00', '2020-02-06 18:34:08', 0.21910, 0.00000, 0.17375, 0.34979);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (51, 1, '2020-02-02 00:00:00', '2020-02-06 18:34:08', 0.19617, 0.00000, 0.18750, 0.44817);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (52, 1, '2020-02-03 00:00:00', '2020-02-06 18:34:08', 0.00621, 0.00000, 0.00000, 0.09684);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (53, 1, '2020-02-04 00:00:00', '2020-02-06 18:34:08', 0.40461, 0.00000, 0.36011, 0.71209);
INSERT INTO `t_epidemic_situation_growth_rates` VALUES (54, 1, '2020-02-05 00:00:00', '2020-02-06 18:34:08', 0.00332, 0.00000, 0.00407, 0.11883);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
