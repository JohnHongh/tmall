-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 03 月 31 日 11:35
-- 服务器版本: 5.5.8
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `tmall`
--

-- --------------------------------------------------------

--
-- 表的结构 `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `activity`
--

INSERT INTO `activity` (`sid`, `url`, `title`) VALUES
(1, 'https://img.alicdn.com/tfs/TB1ZZJeeVOWBuNjy0FiXXXFxVXa-476-260.jpg_240x5000q100.jpg_.webp', 'ac1'),
(2, 'https://img.alicdn.com/tfs/TB13d1sfCCWBuNjy0FhXXb6EVXa-476-260.jpg_240x5000q100.jpg_.webp', 'ac2'),
(3, 'https://img.alicdn.com/tfs/TB17nlWe4GYBuNjy0FnXXX5lpXa-476-260.jpg_240x5000q100.jpg_.webp', 'ac3'),
(4, 'https://img.alicdn.com/imgextra/i1/699634751/TB2Jw8fbsj_B1NjSZFHXXaDWpXa_!!699634751.jpg_240x5000q100.jpg_.webp', 'ac4'),
(5, 'https://img.alicdn.com/imgextra/i1/2081502851/TB2msCueCtYBeNjSspkXXbU8VXa_!!2081502851.jpg_240x5000q100.jpg_.webp', 'ac5');

-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `banner`
--

INSERT INTO `banner` (`sid`, `url`, `title`) VALUES
(1, 'https://img.alicdn.com/tfs/TB1bVz3fh9YBuNjy0FfXXXIsVXa-1130-500.jpg_q100.jpg_.webp', 'banner1'),
(2, 'https://img.alicdn.com/simba/img/TB1l4R2XHuWBuNjSszgSuv8jVXa.jpg', 'banner2'),
(3, 'http://img.alicdn.com/tps/i4/TB17s5ZfkyWBuNjy0FpSuussXXa.jpg', 'banner3'),
(4, 'https://img.alicdn.com/simba/img/TB1qGfEfgmTBuNjy1XbSuuMrVXa.jpg', 'banner4'),
(5, 'http://img.alicdn.com/imgextra/i1/80/TB21wXDfTlYBeNjSszcXXbwhFXa_!!80-0-luban.jpg_q100.jpg_.webp', 'banner5'),
(6, 'http://img.alicdn.com/imgextra/i1/119/TB2w6w3fnJYBeNjy1zeXXahzVXa_!!119-0-luban.jpg_q100.jpg_.webp', 'banner6');

-- --------------------------------------------------------

--
-- 表的结构 `car`
--

CREATE TABLE IF NOT EXISTS `car` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `car`
--

INSERT INTO `car` (`sid`, `url`, `title`, `price`) VALUES
(1, 'https://img.alicdn.com/bao/uploaded/i2/TB18EicRVXXXXXRXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg', 'Apple/苹果 13 英寸 MacBook Pro Multi-Touch Bar 和 Touch ID 3.1GHz 处理器 512GB 存储容量', 15888),
(2, '//img.alicdn.com/bao/uploaded/i1/1917047079/TB1eRzHcGmgSKJjSsphXXcy1VXa_!!0-item_pic.jpg_220x220.jpg', 'Apple/苹果 深空黑色不锈钢表壳搭配黑色运动型表带', 4988),
(3, '//img.alicdn.com/bao/uploaded/i4/1917047079/TB24vKYcVXXXXbzXXXXXXXXXXXX_!!1917047079.jpg_220x220.jpg', 'Apple iPad Air 2 平板电脑 9.7英寸（64G WLAN版/A8X 芯片/Retina显示屏/Touch ID技术 MH182CH）金色', 3299),
(4, '//img.alicdn.com/bao/uploaded/i2/1917047079/TB2zfXEswJlpuFjSspjXXcT.pXa_!!1917047079.jpg_220x220.jpg', 'Apple iPad Air 平板电脑 9.7英寸（16G WLAN版/A7芯片/Retina显示屏 MD788CH）银色', 2099),
(5, '//img.alicdn.com/bao/uploaded/i4/1917047079/TB2zA35u9XlpuFjy0FeXXcJbFXa_!!1917047079.jpg_220x220.jpg', 'Apple Mac air电脑 (Core i5 处理器/8GB内存/1TB 存储 MGEN2CH/A)', 4388);

-- --------------------------------------------------------

--
-- 表的结构 `demac`
--

CREATE TABLE IF NOT EXISTS `demac` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `demac`
--

INSERT INTO `demac` (`sid`, `url`) VALUES
(1, 'https://img.alicdn.com/bao/uploaded/i2/TB18EicRVXXXXXRXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg'),
(2, 'https://img.alicdn.com/imgextra/i2/1917047079/TB2DKmmugNlpuFjy0FfXXX3CpXa_!!1917047079.jpg_430x430q90.jpg'),
(3, 'https://img.alicdn.com/imgextra/i2/1917047079/TB2kyzoubplpuFjSspiXXcdfFXa_!!1917047079.jpg_430x430q90.jpg'),
(4, 'https://img.alicdn.com/imgextra/i3/1917047079/TB27KziugFkpuFjSspnXXb4qFXa_!!1917047079.jpg_430x430q90.jpg'),
(5, 'https://img.alicdn.com/imgextra/i3/1917047079/TB2.PG4yhxmpuFjSZFNXXXrRXXa_!!1917047079.jpg_430x430q90.jpg'),
(11, '//img.alicdn.com/bao/uploaded/i4/1917047079/TB21wI9u80kpuFjSsziXXa.oVXa_!!1917047079.jpg_40x40q90.jpg'),
(12, '//img.alicdn.com/bao/uploaded/i2/1917047079/TB2dmOCvmJjpuFjy0FdXXXmoFXa_!!1917047079.jpg_40x40q90.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `deside`
--

CREATE TABLE IF NOT EXISTS `deside` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `deside`
--

INSERT INTO `deside` (`sid`, `url`) VALUES
(1, 'https://img.alicdn.com/imgextra/i4/2146022675/TB2mGlWaIrI8KJjy0FhXXbfnpXa_!!2146022675.jpg_430x430q90.jpg'),
(2, 'https://img.alicdn.com/imgextra/i2/268451883/TB2EHrnaDTI8KJjSsphXXcFppXa_!!268451883.jpg_430x430q90.jpg'),
(3, 'https://img.alicdn.com/imgextra/i4/268451883/TB2zVPqasrI8KJjy0FhXXbfnpXa_!!268451883.jpg_430x430q90.jpg'),
(4, 'https://img.alicdn.com/imgextra/i4/268451883/TB2cfzqawfH8KJjy1zcXXcTzpXa_!!268451883.jpg_430x430q90.jpg'),
(5, 'https://img.alicdn.com/bao/uploaded/i3/1917047079/TB1IfFybl_85uJjSZPfXXcp0FXa_!!0-item_pic.jpg_430x430q90.jpg'),
(6, 'https://img.alicdn.com/imgextra/i1/1917047079/TB2ExXzblY85uJjSZPcXXaGGpXa_!!1917047079.jpg_430x430q90.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`sid`, `url`, `title`) VALUES
(1, 'https://img.alicdn.com/tfs/TB13n6TgkyWBuNjy0FpXXassXXa-1190-600.png', 'main');

-- --------------------------------------------------------

--
-- 表的结构 `market`
--

CREATE TABLE IF NOT EXISTS `market` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `market`
--

INSERT INTO `market` (`sid`, `url`, `title`) VALUES
(1, 'https://img.alicdn.com/tfs/TB1AHwDdN1YBuNjy1zcXXbNcXXa-468-1236.jpg', 'big1'),
(2, 'https://gw.alicdn.com/tfs/TB1IC42eSCWBuNjy0FhXXb6EVXa-400-400.jpg', 'ad1'),
(3, 'https://img.alicdn.com/tfs/TB1Gzc9geuSBuNjy1XcXXcYjFXa-400-400.jpg', 'ad2'),
(4, 'https://img.alicdn.com/tps/i4/TB1Xf67gh9YBuNjy0FfSutIsVXa.jpg', 'big2'),
(5, 'https://img.alicdn.com/tps/i4/TB1M62Ygb5YBuNjSspoSuveNFXa.jpg', 'big3'),
(6, 'https://img.alicdn.com/tps/i4/TB1oKdkc41YBuNjy1zcSuvNcXXa.jpg', 'bigerji1');

-- --------------------------------------------------------

--
-- 表的结构 `modelbig`
--

CREATE TABLE IF NOT EXISTS `modelbig` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `modelbig`
--

INSERT INTO `modelbig` (`sid`, `url`, `title`, `price`) VALUES
(1, 'https://img.alicdn.com/imgextra/i1/669642169/TB2B_pyfgMPMeJjy1XdXXasrXXa_!!669642169.jpg', '01', 0),
(2, 'https://img.alicdn.com/tps/i4/TB19Wsvh0nJ8KJjSszdSuuxuFXa.jpg', '02', 0),
(3, 'https://img.alicdn.com/tps/i4/TB1abBoeAyWBuNjy0FpSuussXXa.jpg', '03', 0),
(4, 'https://img.alicdn.com/tps/i4/TB12kSbbijQBKNjSZFnSuu_DpXa.jpg', '04', 0),
(5, 'https://img.alicdn.com/tps/i4/TB1h6qrfntYBeNjy1XdSutXyVXa.jpg', '05', 0);

-- --------------------------------------------------------

--
-- 表的结构 `modelsmall`
--

CREATE TABLE IF NOT EXISTS `modelsmall` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- 转存表中的数据 `modelsmall`
--

INSERT INTO `modelsmall` (`sid`, `url`, `title`, `price`) VALUES
(1, '//gw.alicdn.com/bao/uploaded/i1/TB1ezctPVXXXXbpaVXXXXXXXXXX_!!0-item_pic.jpg', '回力拖鞋夏室外男士拖鞋防滑韩版人字拖鞋潮男沙滩鞋3352', 22.5),
(2, '//gw.alicdn.com/bao/uploaded/i2/1659049236/TB1HoaCeKOSBuNjy0FdXXbDnVXa_!!2-item_pic.png', '吉普盾男士钓鱼马甲 春夏季薄款户外网眼多口袋马夹 速干摄影背心', 128),
(3, '//gw.alicdn.com/bao/uploaded/i1/TB1Ed4YRpXXXXaoXXXXXXXXXXXX_!!0-item_pic.jpg', '环球百搭小白鞋女夏季韩版2018新款港风帆布鞋女透气板鞋学生白鞋', 39),
(4, '//gw.alicdn.com/bao/uploaded/i4/389335512/TB2o52lgXmWBuNjSspdXXbugXXa_!!389335512-0-item_pic.jpg', '露得清密集滋润身体乳 保湿滋润补水润肤乳 挪威配方修护干燥肌肤', 89),
(5, '//gw.alicdn.com/bao/uploaded/i3/TB126bHOVXXXXXSXpXXXXXXXXXX_!!2-item_pic.png', '冠琴超薄男表钢带防水女表潮流学生韩版简约休闲大气女士石英手表', 688),
(6, '//gw.alicdn.com/bao/uploaded/i3/1660041980/TB1qGv.dpOWBuNjy0FiXXXFxVXa_!!0-item_pic.jpg', 'Daphne/达芙妮时尚休闲单肩斜跨休闲女包手提包小包1115583123', 49),
(7, '//gw.alicdn.com/bao/uploaded/i4/2056227885/TB1L.47fpmWBuNjSspdXXbugXXa_!!0-item_pic.jpg', '李宁男鞋跑步鞋2018新款正品网面透气跑鞋男休闲鞋春夏季运动鞋', 89),
(8, '//gw.alicdn.com/bao/uploaded/i8/TB1oh6KOVXXXXcKaXXXYXGcGpXX_M2.SS2', '新款回力拖鞋男夏室内外男女款一字凉拖鞋防滑耐磨拖鞋女情侣拖鞋', 19.5),
(9, '//gw.alicdn.com/bao/uploaded/i1/2453068735/TB1tZOUav1TBuNjy0FjXXajyXXa_!!0-item_pic.jpg', '华为蓝牙耳机P10Mate9荣耀8双耳无线音乐原裝正品库·曼 V8挂耳式', 79),
(10, '//gw.alicdn.com/bao/uploaded/i1/TB1jx1yQpXXXXamXFXXXXXXXXXX_!!0-item_pic.jpg', '幻侣智能vr眼镜手机4d虚拟现实头戴式3d影院vr游戏一体机ar眼睛', 88),
(11, '//gw.alicdn.com/bao/uploaded/i2/2317410555/TB1dSLilMvD8KJjSsplXXaIEFXa_!!0-item_pic.jpg', '干衣机家用双层铝管宝宝专用烘干机超静音 烘衣器省电杀菌烘衣机', 139),
(12, '//gw.alicdn.com/bao/uploaded/i4/2378188590/TB1C1G8eDJYBeNjy1zeXXahzVXa_!!0-item_pic.jpg', 'FiiO/飞傲 RC-MMCX3S耳机3.5mm接口线 RC-MMCX3B耳机2.5mm平衡线', 98),
(13, '//gw.alicdn.com/bao/uploaded/i4/1691312394/TB1DisbqYsTMeJjSszgXXacpFXa_!!2-item_pic.png', 'ASUS/华硕 WT425无线鼠标包邮 笔记本台式办公游戏黑/白色鼠标', 89),
(14, '//gw.alicdn.com/bao/uploaded/i3/TB1LAPwRXXXXXXDXFXXXXXXXXXX_!!0-item_pic.jpg', '机器机械键盘加鼠标耳机吃鸡三件套装牧马人游戏电脑键鼠电竞外设', 169),
(15, '//gw.alicdn.com/bao/uploaded/i2/T12P3KXj8eXXXXXXXX_!!0-item_pic.jpg', 'PANDA/熊猫 F-322磁带复读机磁带机英语学习录音机磁带随身听', 109),
(16, '//gw.alicdn.com/bao/uploaded/i3/TB1XgAuRVXXXXapXFXXXXXXXXXX_!!0-item_pic.jpg', 'Hivi/惠威MT-ST3.1 M200MKIII音箱音响 木质支架脚架', 499),
(17, '//gw.alicdn.com/bao/uploaded/i3/1771427043/TB1Ki6QaWSWBuNjSsrbXXa0mVXa_!!0-item_pic.jpg', '南极人暖贴宝宝暖身贴暖腰关节贴暖宫暖贴寒自发热贴足保暖贴热贴', 13.9),
(18, '//gw.alicdn.com/bao/uploaded/i1/3243519086/TB1e3VNdRxRMKJjy0FdXXaifFXa_!!0-item_pic.jpg', '不锈钢筷子勺子套装便携餐具三件套装学生创意可爱筷子盒长柄', 5.9),
(19, '//gw.alicdn.com/bao/uploaded/i2/2194800572/TB1iUnumBHH8KJjy0FbXXcqlpXa_!!0-item_pic.jpg', '汤臣倍健R牛初乳加钙咀嚼片 1.2g/片*30片*2瓶', 119.9),
(20, '//gw.alicdn.com/bao/uploaded/i4/TB1wpVTQpXXXXajXFXXXXXXXXXX_!!0-item_pic.jpg', '冬季珊瑚绒毯子法兰绒毛毯加厚床单1.8m单人办公室午睡毛巾小被子', 19),
(21, '//gw.alicdn.com/bao/uploaded/i4/2014491970/TB17itvXnzGK1JjSsphXXXc6XXa_!!0-item_pic.jpg', 'A4横版文件夹书写板夹a4写字板夹抄写硬垫板可悬挂式夹板加厚横式', 12.8),
(22, '//gw.alicdn.com/bao/uploaded/i2/TB1W09IHVXXXXXBaXXXXXXXXXXX_!!0-item_pic.jpg', '皇室儿童婴幼儿0-1岁早教益智乐器玩具小宝宝星星喇叭可吹奏J', 27.8),
(23, '//gw.alicdn.com/bao/uploaded/i4/TB1ROBgRpXXXXayaXXXXXXXXXXX_!!0-item_pic.jpg', 'E宠商城顽皮犬用鸡肉鳕鱼三明治多口味可选狗狗奖励零食30g', 5),
(24, '//gw.alicdn.com/bao/uploaded/i1/TB1dQe1LpXXXXa1aXXXXXXXXXXX_!!0-item_pic.jpg', '0-3岁宝宝撕不烂早教卡 婴儿幼儿童学习卡 启蒙认知卡片早教卡片', 28),
(25, '//gw.alicdn.com/bao/uploaded/i2/TB1fZsMRVXXXXadXpXXXXXXXXXX_!!0-item_pic.jpg', 'Bear/小熊 DKX-C32U5家用大容量多功能大烤箱32L', 299.9),
(26, '//gw.alicdn.com/bao/uploaded/i2/TB1.5elKVXXXXbTXFXXXXXXXXXX_!!0-item_pic.jpg', '东彩 弹簧床垫椰棕软床垫定制各种尺寸卧室加厚双人床弹簧垫', 1360),
(27, '//gw.alicdn.com/bao/uploaded/i3/T1uSx9XfRtXXao3V.4_051652.jpg', 'DM钢制仓储货架角钢  仓库家用超市地下室储物架置物架100*40*200', 148),
(28, '//gw.alicdn.com/bao/uploaded/i2/TB1fx0_KXXXXXXYXVXXXXXXXXXX_!!0-item_pic.jpg', '海秀复古铆钉鼓边美发大工椅大工凳/师傅椅/师傅凳定型棉升降凳子', 100),
(29, '//gw.alicdn.com/bao/uploaded/i1/3055986482/TB1WZxwgTlYBeNjSszcXXbwhFXa_!!0-item_pic.jpg', 'Royalstar/荣事达 JY40L电热水壶304不锈钢烧水壶4升家用分体', 139),
(30, '//gw.alicdn.com/bao/uploaded/i1/T1i0mQXodjXXaad7c1_041725.jpg', 'INTEX68765双人充气床 气垫床套装 冲气床垫  配手泵枕头户外床', 179),
(31, '//gw.alicdn.com/bao/uploaded/i3/TB1wxN2FVXXXXX3XFXXXXXXXXXX_!!0-item_pic.jpg', 'Tonze/天际 DDZ-16BW隔水电炖锅预约白瓷 电炖盅煲汤煮粥一锅三胆', 159),
(32, '//gw.alicdn.com/bao/uploaded/i4/TB1rUQdOXXXXXa2XpXXXXXXXXXX_!!0-item_pic.jpg', '雪仑尔五星级酒店床上用品高回弹纤维枕芯可水洗枕头柔软舒适', 59),
(33, '//gw.alicdn.com/bao/uploaded/i1/TB1iLcNSXXXXXXaapXXXXXXXXXX_!!0-item_pic.jpg', '李宁 轻盈男款减震跑鞋跑步系列ARHL029-1', 99),
(34, '//gw.alicdn.com/bao/uploaded/i3/TB13Mo4QFXXXXXXapXXXXXXXXXX_!!0-item_pic.jpg', '2017BIJIA尊享8x22高倍高清双筒微光夜视望远镜 超清便携户外望远', 69.9),
(35, '//gw.alicdn.com/bao/uploaded/i2/3247122661/TB1veskh3vD8KJjSsplXXaIEFXa_!!0-item_pic.jpg', 'SABOLAY新品男士潜水服套装 分体速干大码浮潜衣 防晒冲浪水母衣', 246),
(36, '//gw.alicdn.com/bao/uploaded/i2/458288662/TB1nXAkf29TBuNjy1zbXXXpepXa_!!0-item_pic.jpg', '阿迪达斯足球包男2018户外运动健身包男士单肩包斜挎包足球运动包', 169),
(37, '//gw.alicdn.com/bao/uploaded/i2/1704300038/TB1gPvmmlHH8KJjy0FbXXcqlpXa_!!0-item_pic.jpg', '特步双肩包男背包女韩版潮商务男女电脑包高中学生书包休闲旅行包', 167),
(38, '//gw.alicdn.com/bao/uploaded/i4/3058266652/TB1LjM2hRHH8KJjy0FbXXcqlpXa_!!0-item_pic.jpg', 'Hazard4美国危机4战术单肩包户外登山骑行运动斜跨包男多功能背包', 799),
(39, '//gw.alicdn.com/bao/uploaded/i3/11194032174019654/T12lwMFjNbXXXXXXXX_!!0-item_pic.jpg', 'onepolar/极地 男女可背挎可手提包 拉杆箱 极地7005旅行箱\\', 192),
(40, '//gw.alicdn.com/bao/uploaded/i1/TB1THmyKpXXXXXtXpXXXXXXXXXX_!!0-item_pic.jpg', '博冠望远镜手机拍照夹链接天文双筒 单筒望远镜通用手机摄影支架', 35);

-- --------------------------------------------------------

--
-- 表的结构 `nation`
--

CREATE TABLE IF NOT EXISTS `nation` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `nation`
--

INSERT INTO `nation` (`sid`, `url`, `title`, `price`) VALUES
(1, '//gw.alicdn.com/bao/uploaded/i2/725677994/TB1CQXhXVOWBuNjy0FiXXXFxVXa_!!0-item_pic.jpg', '旁氏洗面奶米粹亮采净澈润泽洁面乳150g 加量更优惠', 23),
(2, '//gw.alicdn.com/bao/uploaded/i1/1910146537/TB1_9sUe_JYBeNjy1zeXXahzVXa_!!2-item_pic.png', '恒都巴西牛腱子1kg 进口牛肉 牛腱子肉 牛腿肉 牛腱肉', 85),
(3, '//gw.alicdn.com/bao/uploaded/i4/725677994/TB1GE82XpooBKNjSZPhXXc2CXXa_!!0-item_pic.jpg', '怡宝饮用水  纯净水  4.5L*4支/箱  箱装  桶装水', 30),
(4, '//gw.alicdn.com/bao/uploaded/i3/725677994/TB1E3YRb_lYBeNjSszcXXbwhFXa_!!0-item_pic.jpg', '海天味极鲜380ml  特级酱油 生抽 炒菜凉拌非转基因', 15),
(5, '//gw.alicdn.com/bao/uploaded/i3/725677994/TB1ejipXHGYBuNjy0FoXXciBFXa_!!0-item_pic.jpg', '植护竹浆本色抽纸3层110抽25包面巾纸卫生纸巾整箱批发', 40),
(6, '//gw.alicdn.com/bao/uploaded/i2/725677994/TB1P9zVduuSBuNjy1XcXXcYjFXa_!!0-item_pic.jpg', '德芙巧克力礼盒 脆香米牛奶碗装216g大包装 休闲零食', 25),
(7, '//gw.alicdn.com/bao/uploaded/i1/1879183449/TB1NjRUnv6H8KJjy0FjXXaXepXa_!!0-item_pic.jpg', '赠品试吃装20g 克德拉克山羊奶粉成人养胃食品请勿单独购买', 10),
(8, '//gw.alicdn.com/bao/uploaded/i2/2923591511/TB1mbwWjL6H8KJjSspmXXb2WXXa_!!0-item_pic.jpg', 'TangleAngel迷你宠物天使美发梳按摩防静电防细菌滋生狗抓梳', 88),
(9, '//gw.alicdn.com/bao/uploaded/i2/1984927845/TB1qld.arsrBKNjSZFpXXcXhFXa_!!0-item_pic.jpg', '日本Shiseido/资生堂 UNO吾诺男士洗面奶洁净保湿洁面乳 蓝色', 42),
(10, '//gw.alicdn.com/bao/uploaded/i4/2165616006/TB1ri6efeuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg', '佳思敏成人维生素C软糖120粒维C软糖儿童VC软糖成人澳洲原装进口', 88),
(11, '//gw.alicdn.com/bao/uploaded/i4/1986163697/TB1aJ6ygDtYBeNjy1XdXXXXyVXa_!!0-item_pic.jpg', '澳洲直邮Ostelin奥斯特林钙片 儿童维生素D+钙咀嚼片恐龙钙90片*2', 168),
(12, '//gw.alicdn.com/bao/uploaded/i1/2967933529/TB1eaKjaTtYBeNjy1XdXXXXyVXa_!!0-item_pic.jpg', '百利Instinct本能 生鲜冻干 冻干拌饭猫粮猫零食 鸡肉味 1oz/6oz', 26),
(13, '//gw.alicdn.com/bao/uploaded/i2/2849136065/TB13n_LcKOSBuNjy0FdXXbDnVXa_!!0-item_pic.jpg', 'Merba荷兰进口榛子酱味巧克力夹心曲奇休闲零食早餐饼干200g/袋装', 29),
(14, '//gw.alicdn.com/bao/uploaded/i1/1910146537/TB1_9sUe_JYBeNjy1zeXXahzVXa_!!2-item_pic.png', '恒都巴西牛腱子1kg 进口牛肉 牛腱子肉 牛腿肉 牛腱肉', 88);

-- --------------------------------------------------------

--
-- 表的结构 `pinpai`
--

CREATE TABLE IF NOT EXISTS `pinpai` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pinpai`
--

INSERT INTO `pinpai` (`sid`, `url`, `title`) VALUES
(1, 'https://img.alicdn.com/tfs/TB12VB_eL9TBuNjy0FcXXbeiFXa-468-644.jpg_320x5000q100.jpg_.webp', 'num1'),
(2, 'https://img.alicdn.com/imgextra/i2/2671315119/TB2b2zabvNNTKJjSspeXXaSwpXa_!!2671315119.jpg_490x490q100.jpg_.webp', 'num2'),
(3, 'http://img.alicdn.com/tps/i4/TB17EiLeASWBuNjSszdSuveSpXa.jpg_490x490q100.jpg_.webp', 'num3');

-- --------------------------------------------------------

--
-- 表的结构 `topandbot`
--

CREATE TABLE IF NOT EXISTS `topandbot` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `topandbot`
--

INSERT INTO `topandbot` (`sid`, `url`) VALUES
(1, 'https://img.alicdn.com/simba/img/TB1FXNRbDXYBeNkHFrdSuwiuVXa.jpg'),
(2, 'https://img.alicdn.com/simba/img/TB1hnrFdAfb_uJkHFCcSutagFXa.jpg'),
(3, 'https://img.alicdn.com/simba/img/TB1IdBXaQOWBuNjSsppSutPgpXa.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` int(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`sid`, `username`, `password`, `phone`) VALUES
(1, '洪俊华', 'e10adc3949ba59abbe56e057f20f883e', 2147483647),
(3, '李四', 'e3ceb5881a0a1fdaad01296d7554868d', 2147483647),
(4, '张三', '96e79218965eb72c92a549dd5a330112', 2147483647);

-- --------------------------------------------------------

--
-- 表的结构 `youlike`
--

CREATE TABLE IF NOT EXISTS `youlike` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- 转存表中的数据 `youlike`
--

INSERT INTO `youlike` (`sid`, `url`, `title`, `price`) VALUES
(1, '//img.alicdn.com/bao/uploaded/i2/2616970884/TB2IU3OdkOWBuNjSsppXXXPgpXa_!!2616970884.jpg_400x400q60.jpg', '【12期免息】Apple/苹果iPhone X 全网通4G手机苹果10 苹果X', 8388),
(2, '//img.alicdn.com/bao/uploaded/bao/upload/TB1bvkNlcnI8KJjSspewu3wIpXa.png_400x400q60.jpg', '科沃斯地宝DD35扫地机器人吸尘器智能家用超薄全自动洗擦地机拖地', 1499),
(3, '//img.alicdn.com/bao/uploaded/i4/2616970884/TB2TPEjeN9YBuNjy0FfXXXIsVXa_!!2616970884.jpg_400x400q60.jpg', '2017新款Apple/苹果iPad 9.7英寸苹果平板电脑 32G/128G WiFi版', 2388),
(4, '//img.alicdn.com/bao/uploaded/bao/upload/TB1hAkYb2JNTKJjSspowu36mpXa.png_400x400q60.jpg', '亿健精灵ELF跑步机家用款健身器材多功能电动静音折叠智能跑步机', 1699),
(5, '//img.alicdn.com/bao/uploaded/bao/upload/TB1R1YESFXXXXcUXFXXwu0bFXXX.png_400x400q60.jpg', 'Apple/苹果MacBook Air 13.3英寸笔记本轻薄便携电脑 128G/256G', 6288),
(6, '//img.alicdn.com/bao/uploaded/i1/3570503317/TB2xOEtmdzJ8KJjSspkXXbF7VXa_!!3570503317.png_400x400q60.jpg', '【官方正品】纪梵希小羊皮口红高定香榭天鹅绒唇膏持久滋润正品', 355),
(7, '//img.alicdn.com/bao/uploaded/i4/1714128138/TB2IQB5nYXlpuFjy1zbXXb_qpXa_!!1714128138.jpg_400x400q60.jpg', 'Xiaomi/小米 小米电视4A 55英寸 4k超高清智能wifi网络液晶电视机', 2599),
(8, '//img.alicdn.com/bao/uploaded/bao/upload/TB11twJdOwIL1JjSZFswu3XFFXa.png_400x400q60.jpg', 'Olay光感小白瓶水感透白光塑精华露面部精华烟酰胺美白保湿精华液', 248),
(9, '//img.alicdn.com/bao/uploaded/i1/430490406/TB2uB3MfDtYBeNjy1XdXXXXyVXa_!!430490406.jpg_400x400q60.jpg', '全棉时代 婴儿纯棉柔巾 新生儿干湿两用 宝宝可湿纸巾 加厚18包', 243),
(10, '//img.alicdn.com/bao/uploaded/i3/TB1ZBpnNpXXXXXzaXXXXXXXXXXX_!!0-item_pic.jpg_400x400q60.jpg', 'Haier/海尔 EG10014B39GU1 10公斤kg智能变频滚筒全自动洗衣机', 2999),
(11, '//img.alicdn.com/bao/uploaded/i4/2616970884/TB1.ZqNbXmWBuNjSspdXXbugXXa_!!0-item_pic.jpg_400x400q60.jpg', 'SIEMENS\\西门子BCD-610W(KA92NV02TI)对开门变频冰箱风冷', 4798),
(12, '//img.alicdn.com/bao/uploaded/i1/3075133459/TB1pfAfa6uhSKJjSspjXXci8VXa_!!0-item_pic.jpg_400x400q60.jpg', 'Gree/格力 KFR-72LW/NhMaB3W 3匹智能冷暖变频客厅空调立式柜机', 8699),
(13, '//img.alicdn.com/bao/uploaded/i4/2360209412/TB2iXonXQfb_uJkHFCcXXXagFXa-2360209412.png_400x400q60.jpg', '兰蔻清滢柔肤水400ml 粉水 舒缓滋润补水修护易吸收保湿水爽肤水', 420),
(14, '//img.alicdn.com/bao/uploaded/bao/upload/TB1QUrHd93PL1JjSZFtwu3lRVXa.png_400x400q60.jpg', '美的正品大功率烫衣服挂烫机家用蒸汽手持挂立式迷你电熨斗熨烫机', 198),
(15, '//img.alicdn.com/bao/uploaded/i1/853154147/TB1T8ZtfxSYBuNjSspjXXX73VXa_!!0-item_pic.jpg_400x400q60.jpg', 'Joyoung/九阳 JYL-Y99 加热破壁料理机豆浆全自动家用多功能辅食', 1099),
(16, '//img.alicdn.com/bao/uploaded/bao/upload/TB1I0X3PFXXXXbVapXXwu0bFXXX.png_400x400q60.jpg', '【直营】德国Braun博朗宝宝/儿童耳温枪IRT6520体温计', 300),
(17, '//img.alicdn.com/bao/uploaded/i2/763968012/TB2WsXbfEdnpuFjSZPhXXbChpXa_!!763968012.png_400x400q60.jpg', '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品FS373', 99),
(18, '//img.alicdn.com/bao/uploaded/bao/upload/TB1NnXwNVXXXXXlXVXXwu0bFXXX.png_400x400q60.jpg', '【6期免息】小米九号平衡车智能体感 电动蓝牙骑行遥控代步车双轮', 1999),
(19, '//img.alicdn.com/bao/uploaded/bao/upload/TB1zRpgXlxRMKJjy0Fdwu1ifFXa.png_400x400q60.jpg', 'ISDIN怡思丁防水隔离防晒霜女SPF50 海边面部全身防晒乳保湿正品', 99),
(20, '//img.alicdn.com/bao/uploaded/i2/667454208/TB2m6rLra8lpuFjy0FpXXaGrpXa_!!667454208.jpg_400x400q60.jpg', '方太JQ08TS+HT8BE侧吸式01近吸抽油烟机燃气灶煤气灶套装烟灶套餐', 5699),
(21, '//img.alicdn.com/bao/uploaded/bao/upload/TB11hJDkUQIL1JjSZFhwu1DZFXa.png_400x400q60.jpg', 'KUB可优比婴儿床实木宝宝床bb床多功能新生儿拼接大床摇床带蚊帐', 528),
(22, '//img.alicdn.com/bao/uploaded/i3/917264765/TB2OyG6cQCWBuNjy0FaXXXUlXXa_!!917264765.png_400x400q60.jpg', 'sk-ii sk2入门神仙水套装skii面部精华 保湿收缩毛孔提亮肤色75ml', 590),
(23, '//img.alicdn.com/bao/uploaded/i2/2360209412/TB2OdV4fh1YBuNjy1zcXXbNcXXa_!!2360209412.png_400x400q60.jpg', '兰蔻「小黑瓶」大眼精华眼霜眼部肌底液20ml 保湿淡褪细纹眼袋', 680),
(24, '//img.alicdn.com/bao/uploaded/i1/2616970884/TB2QPTLa5AnBKNjSZFvXXaTKXXa_!!2616970884.jpg_400x400q60.jpg', '小米净水器厨下式厨房家用自来水RO反渗透水龙头过滤器直饮纯水机', 1999),
(25, '//img.alicdn.com/bao/uploaded/i4/1046707508/TB21jGWbXHzQeBjSZFmXXbcDVXa_!!1046707508.png_400x400q60.jpg', 'CONVERSE 匡威 经典款 休闲男女帆布鞋  情侣鞋101001', 398),
(26, '//img.alicdn.com/bao/uploaded/i4/2436848051/TB27qHvnbXlpuFjy1zbXXb_qpXa_!!2436848051.jpg_400x400q60.jpg', '美国童年时光CHILDLIFE钙镁锌婴儿幼儿童补钙片宝宝补锌液体乳钙', 182.4),
(27, '//img.alicdn.com/bao/uploaded/bao/upload/TB1ormxalsmBKNjSZFswu1XSVXa.png_400x400q60.jpg', '【官方旗舰店】全新亚马逊Kindle Oasis电子书阅读器（礼盒可选）', 2399),
(28, '//img.alicdn.com/bao/uploaded/i1/196993935/TB2mm8lgxGYBuNjy0FnXXX5lpXa-196993935.png_400x400q60.jpg', '女装U 圆领T恤(短袖) 406456 优衣库UNIQLO', 79),
(29, '//img.alicdn.com/bao/uploaded/bao/upload/TB1v9X8NVXXXXaVapXXwu0bFXXX.png_400x400q60.jpg', 'KUB可优比天然椰棕可拆洗婴儿床垫 宝宝床垫儿童床垫无甲醛可定做', 149),
(30, '//img.alicdn.com/bao/uploaded/i3/196993935/TB2AarVciqAXuNjy1XdXXaYcVXa-196993935.png_400x400q60.jpg', '女装 高腰男友款牛仔裤(水洗产品) 407399 优衣库UNIQLO', 249),
(31, '//img.alicdn.com/bao/uploaded/bao/upload/TB1iqRFf_TI8KJjSsphwu3FppXa.png_400x400q60.jpg', 'Nike 耐克官方 NIKE TANJUN 女子运动休闲鞋 812655', 499),
(32, '//img.alicdn.com/bao/uploaded/bao/upload/TB1oAOFd1ySBuNjy1zdwu0PxFXa.png_400x400q60.jpg', 'adidas 阿迪达斯 足球 男子 NEMEZIZ TANGO 17.1 TR足球鞋', 288),
(33, '//img.alicdn.com/bao/uploaded/bao/upload/TB1DdaznbsTMeJjSszhwu3GCFXa.png_400x400q60.jpg', '美宝莲橡皮擦遮瑕笔遮眼袋黑眼圈脸眼部遮瑕膏粉底液轻薄海淘爆款', 89),
(34, '//img.alicdn.com/bao/uploaded/bao/upload/TB14zZscvjM8KJjSZFNwu2QjFXa.png_400x400q60.jpg', '聚【三只松鼠开口松子218gx2】休闲零食坚果炒货东北手剥红松', 49.9),
(35, '//img.alicdn.com/bao/uploaded/bao/upload/TB1E9uDQVXXXXcgXpXXwu0bFXXX.png_400x400q60.jpg', '小白熊恒温调奶器暖奶器旗舰店婴儿泡奶粉机恒温水壶冲奶器温奶器', 299),
(36, '//img.alicdn.com/bao/uploaded/i2/2317068008/TB2ns3OfQKWBuNjy1zjXXcOypXa_!!2317068008.jpg_400x400q60.jpg', 'Midea/美的 M1-L213C 微波炉智能21L迷你转盘式多功能家用正品', 379),
(37, '//img.alicdn.com/bao/uploaded/i3/2993967042/TB1h5v9nMDD8KJjy0FdXXcjvXXa_!!0-item_pic.jpg_400x400q60.jpg', '小米路由器3A千兆5G双频1200M无线家用wifi穿墙光纤高速穿墙王3', 129.9),
(38, '//img.alicdn.com/bao/uploaded/i2/749391658/TB2.MBrXU.iyKJjy1XbXXc4cXXa_!!749391658.png_400x400q60.jpg', 'Olay大红瓶面霜新生塑颜金纯面霜50g补水保湿滋润女紧致淡化细纹', 228),
(39, '//img.alicdn.com/bao/uploaded/bao/upload/TB14OHRfxrI8KJjy0Fpwu25hVXa.png_400x400q60.jpg', '【直营】香港直邮天梭力洛克系列全自动机械男表正品', 2559),
(40, '//img.alicdn.com/bao/uploaded/bao/upload/TB1fEtUXlTH8KJjy0Fiwu3RsXXa.png_400x400q60.jpg', 'Apple Watch/苹果 Series 3 苹果智能手表3代 42mm GPS款', 2798);
