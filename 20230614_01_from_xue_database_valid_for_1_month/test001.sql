/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : test001

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2023-06-14 12:25:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `adminuser`
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(40) DEFAULT NULL,
  `PASSWORD` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appUketsukeNo` varchar(40) DEFAULT NULL,
  `appShinseiKubun` varchar(40) DEFAULT NULL,
  `appShinseiDate` date DEFAULT NULL,
  `appKokaiyoStatus` varchar(40) DEFAULT NULL,
  `appShinseishaKoshinDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '再開', '新規申請', '2023-05-29', '一時保存', '2023-05-29 09:43:25');
INSERT INTO `news` VALUES ('2', '再開', '再開', '2023-05-17', '一時保存', '2023-05-17 09:53:22');
INSERT INTO `news` VALUES ('3', '再開', '新規申請', '2023-04-27', '申請内容に指摘あり', '2023-04-27 09:53:45');
INSERT INTO `news` VALUES ('4', 'APL-0000002580', '再開', '2023-05-03', '受付済', '2023-05-03 09:54:03');
INSERT INTO `news` VALUES ('5', 'APL-0000002577', '新規申請', '2023-04-19', '受付済', '2023-04-19 09:54:26');
INSERT INTO `news` VALUES ('6', '再開', '新規申請', '2023-05-02', '一時保存', '2023-05-02 09:54:43');
INSERT INTO `news` VALUES ('7', '再開', '新規申請', '2023-02-16', '一時保存', '2023-02-16 13:21:32');

-- ----------------------------
-- Table structure for `newspaper`
-- ----------------------------
DROP TABLE IF EXISTS `newspaper`;
CREATE TABLE `newspaper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ntcTITLE` varchar(255) DEFAULT NULL,
  `ntcJUYO` varchar(1000) DEFAULT NULL,
  `ntcDATE` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newspaper
-- ----------------------------
INSERT INTO `newspaper` VALUES ('1', 'VanillaNet：深度学习极简主义的力量', '\r\n在过去的几十年里，人工神经网络取得了显著进步，其驱动因素是增加网络复杂性可以提高性能。这些网络具有大量神经元或Transformer块组成，能够执行各种类似人类的任务，例如人脸识别、语音识别、目标检测、自然语言处理和内容生成。现代硬件令人印象深刻的计算能力使神经网络能够以高精度和高效率完成这些任务。因此，人工智能嵌入式设备在我们的生活中变得越来越普遍，包括智能手机、人工智能相机、语音助手和自动驾驶。\r\n\r\n不可否认，这一领域的一个显著突破是AlexNet的发展，它由12层组成，在大规模图像识别基准上实现了最先进的性能。在此成功的基础上，ResNet通过残差连接引入原始映射，从而能够在广泛的计算机视觉应用程序中训练具有高性能的深度神经网络，例如图像分类、对象检测和语义分隔。在这些模型中加入人工设计的模块，以及网络复杂性的持续增加，无疑增强了深度神经网络的表达能力，导致关于如何训练具有更复杂架构的网络以实现更高性能的研究激增。\r\n\r\n除了卷积架构，Dosovitskiy将Transformer引入图像识别任务中，展示了其利用大规模训练数据的潜力。Zhai等研究了vision transformers架构的缩放定律，在ImageNet数据集上实现了令人印象深刻的90.45%（top-1）准确率，这表明更深层次的transformers架构，如卷积网络，往往表现出更好的性能。wang等进一步建议将Transformer深度扩展到1000层以获得更高的精度。liu等重新审视了神经网络的设计空间并引入了ConvNext，实现了与最先进的变压器架构相似的性能。', '2023-06-01');
INSERT INTO `newspaper` VALUES ('2', '数据清洗和预处理', '数据清洗是指对数据中的错误、缺失、不一致、重复等问题进行识别、分析和纠正的过程。数据清洗的目的是提高数据质量和准确性，避免在后续的数据分析和建模中受到干扰和误导。', '2023-05-31');
INSERT INTO `newspaper` VALUES ('3', 'AI 正在变革软件工程', '生成式 AI 的爆发已经开始改变很多行业的工作方式，但对于软件工程来说，转型早就开始。一位顶级华人学者在一篇16年前的经典论文中就已尝试用智能化的方式解决特定的软件工程领域的问题，在之后的十几年，这篇智能化软件开发领域的早期经典代表作引领着无数技术人在软件工程领域开疆拓土。', '2023-05-10');
INSERT INTO `newspaper` VALUES ('4', 'Flutter元老级人物Tim离职', '前天在 insiders 收到 Tim Sneath 的离职邮件时感觉很震惊，因为他绝对是 Flutter 团队的元老级人物，几乎每次一次 Flutter 版本发布和社区活动都有他的身影，可以说他是我的 Flutter 领路人之一。\r\n\r\nTim 是在 2017 加入 Flutter 团队，作为 Flutter 和 Dart 的 PM 和 UX ，他对于 Flutter 的发展和推进起到诸多关键性的作用，甚至当年不少人是因为 Tim 离开微软加入 Flutter 而开始接触 Flutter 。\r\n\r\n所以这对于 Flutter 团队来说，这是自 Filip、Chris、Eric 之后的一大「损失」。', '2023-05-10');
INSERT INTO `newspaper` VALUES ('5', '打跑个人开源转角的“拦路虎”', '在OpenCloudOS 发行版之外，将其他用户态软件、上游开源社区定位为 L0 级别，例如 Linux、APACHE、Org Foundation 等。其发行版则由 L1 到 L4 四个级别构成，源社区（L1）是 Linux 内核+GNU 组件+其他开源组件的组合，聚焦了多方协同开发，投入大，但社区版本未经过大规模生产环境验证，非稳定版本，无法直接用于生产环境；商业版（L2）由 L1 版本加固+技术支持/服务组成，如 TencentOS Sever 3 等，但上游社区维护能力与投入不足造成L2国产商业版本稀缺；社区稳定版（L3）经企业大规模验证，基于L2的重编译或定制优化，例如 OpenCloudOS V8.5、OpenCloudOS V8.6 版本；此外，基于 L3 优化改造，红旗发布 Open Cloud Linux V8.5、超凡桌面 SIG 发布 OC8.6 NDE 桌面版，逐渐形成衍生发行版（L4）。总而言之，OpenCloudOS 开源社区产品体系完善，能够为国内企业提供稳定可持续的服务器操作系统。\r\n', '2023-05-09');

-- ----------------------------
-- Table structure for `queren`
-- ----------------------------
DROP TABLE IF EXISTS `queren`;
CREATE TABLE `queren` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aPLShinseisyaName` varchar(50) DEFAULT NULL,
  `aPLAddressYubinNo3` varchar(3) DEFAULT NULL,
  `aPLAddressYubinNo4` varchar(4) DEFAULT NULL,
  `aPLAddressTodofuken` varchar(40) DEFAULT NULL,
  `aPLAddressShikuchoson` varchar(40) DEFAULT NULL,
  `aPLAddressBanchi` varchar(255) DEFAULT NULL,
  `aPLAddressTodofukenKana` varchar(50) DEFAULT NULL,
  `aPLAddressShikuchosonKana` varchar(255) DEFAULT NULL,
  `aPLAddressBanchiKana` varchar(255) DEFAULT NULL,
  `aPLAddressManshon` varchar(255) DEFAULT NULL,
  `aPLDaihyoshaYakushoku` varchar(255) DEFAULT NULL,
  `aPLDaihyoshaName` varchar(40) DEFAULT NULL,
  `aPLHojinNo` varchar(13) DEFAULT NULL,
  `aPLTantoshaName` varchar(255) DEFAULT NULL,
  `aPLCSTEL` varchar(11) DEFAULT NULL,
  `aPLCSFAX` varchar(11) DEFAULT NULL,
  `aPLCSTantoshaMail` varchar(40) DEFAULT NULL,
  `aPLCSKakuninyoMail` varchar(40) DEFAULT NULL,
  `now` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of queren
-- ----------------------------
INSERT INTO `queren` VALUES ('27', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `queren` VALUES ('28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `queren` VALUES ('29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `queren` VALUES ('30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `queren` VALUES ('31', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `queren` VALUES ('32', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `queren` VALUES ('33', '我11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `queren` VALUES ('34', '薛某', '110', '0015', '東京都', '台東区', '東上野', 'セツ', 'セツ', 'セツ', 'wetech', '我', '我', '1234567890123', '我', '18698604369', '12345678901', 'setsu6666@gmail.com', 'setsu6666@gmail.com', null);
INSERT INTO `queren` VALUES ('35', '薛某', '110', '0015', '東京都', '台東区', '東上野', 'セツ', 'セツ', 'セツ', 'wetech', '我', '我', '1234567890123', '我', '18698604369', '12345678901', 'setsu6666@gmail.com', 'setsu6666@gmail.com', '2023-06-09 18:13:22');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(40) DEFAULT NULL,
  `PASSWORD` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张三', '123456');
