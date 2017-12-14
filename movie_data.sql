/*
Navicat MySQL Data Transfer

Source Server         : node
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : mov

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2017-12-06 11:45:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for movie_data
-- ----------------------------
DROP TABLE IF EXISTS `movie_data`;
CREATE TABLE `movie_data` (
  `_id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `flash` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `intime` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_data
-- ----------------------------
INSERT INTO `movie_data` VALUES ('2', '空天猎', '李晨', '大陆', '111', 'http://r1.ykimg.com/0516000059C49F3B859B5D02F60D420E', '汉语', 'http://player.youku.com/player.php/sid/XMzE3MzgxOTE4OA/v.swf', '霸天狼，一支神秘的空军顶级团队，每一名飞行员都是“金头盔” 级别的王牌飞行员。吴迪（李晨 饰）、亚莉（范冰冰 饰）、巴图（郭洺宇 饰）、高原（李晨浩 饰）通过层层考核，成为了霸天狼秘密基地的一员。可谁也没有想到，吴迪的好友浩辰（李佳航 饰）却在任务中陷入了一场境外战乱的阴谋。更大的威胁接踵而至，恐怖势力突如其来的导弹危机和人质危机，空前地挑战着中国空军的实战能力！十万火急之下，最新式的中国战机和最顶级的飞行员，与掌握导弹密码和先进战机的敌人，在境外天空展开了一场生死对决…', '2017-12-06 10:17:28');
INSERT INTO `movie_data` VALUES ('3', '银魂', '福田雄一', '日本', '2017', 'http://r1.ykimg.com/05160000599FE820ADBC0938560379BE', '日语', 'http://player.youku.com/player.php/sid/XMzE3NjYyMDIyOA/v.swf', '这是一个外星人和地球人混居的时代，在外星移民的压迫和统治下，流传百年的武士道精神已然没落，然而，在一片倾颓之势面前，依然有一群人默默的遵守着他们的准则和正义。家道中落的青年志村新八（菅田将晖 饰）在一场意外中结识了万事屋老板坂田银时（小栗旬 饰）和天人少女神乐（桥本环奈 饰），三人成为好友。他们共同的朋友桂小太郎（冈田将生 饰）无故失踪，经过调查，一个名叫冈田似藏（新井浩文 饰）的男人和一把名为“红缨”的妖刀浮出水面。冈田似藏是曾经的攘夷志士高杉晋助（堂本刚 饰）的手下，高杉恨透了这个堕落的世界，', '2017-12-04 08:47:36');
INSERT INTO `movie_data` VALUES ('4', '看不见客人', '奥利奥尔·保罗', '西班牙', '2017', 'http://r1.ykimg.com/0516000059B8C0C2AD881A030607EA78', '西班牙语', 'http://player.youku.com/player.php/sid/XMzE1MDk4MjQyNA/v.swf', '艾德里安（马里奥·卡萨斯 饰）经营着一间科技公司，事业蒸蒸日上，家中有美丽贤惠的妻子和活泼可爱的女儿，事业家庭双丰收的他是旁人羡慕的对象。然而，野心勃勃的艾德里安并未珍惜眼前这来之不易的生活，一直以来，他和一位名叫劳拉（芭芭拉·蓝妮 饰）的女摄影师保持着亲密关系。 　　某日幽会过后，两人驱车离开别墅，却在路上发生了车祸，为了掩盖事件的真相，两人决定将在车祸中死去的青年丹尼尔连同他的车一起沉入湖底。之后，劳拉遇见了一位善良的老人，老人将劳拉坏掉的车拉回家中修理。然而，令劳拉没有想到的是，这位老人，', '2017-12-04 08:47:32');
