-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-11-30 06:06:18
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- 表的结构 `adminuser`
--

CREATE TABLE IF NOT EXISTS `adminuser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `adminuser`
--

INSERT INTO `adminuser` (`uid`, `username`, `password`) VALUES
(2, 'admin', 'admin'),
(3, 'zhangchao', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`cid`, `cname`) VALUES
(1, '小说'),
(2, '文艺'),
(3, '青春'),
(4, '编程');

-- --------------------------------------------------------

--
-- 表的结构 `categorysecond`
--

CREATE TABLE IF NOT EXISTS `categorysecond` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`csid`),
  KEY `FK936FCAF21DB1FD15` (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `categorysecond`
--

INSERT INTO `categorysecond` (`csid`, `csname`, `cid`) VALUES
(1, '名著', 1),
(2, '武侠', 1),
(3, '故事', 2),
(4, '随笔', 2),
(5, '校园', 3),
(6, '言情', 3),
(7, 'C/C++', 4),
(8, 'Java', 4);

-- --------------------------------------------------------

--
-- 表的结构 `orderitem`
--

CREATE TABLE IF NOT EXISTS `orderitem` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `FKE8B2AB6166C01961` (`oid`),
  KEY `FKE8B2AB6171DB7AE4` (`pid`),
  KEY `FKE8B2AB6140ACF87A` (`oid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `orderitem`
--

INSERT INTO `orderitem` (`itemid`, `count`, `subtotal`, `pid`, `oid`) VALUES
(1, 4, 99.2, 9, 1),
(2, 1, 19.5, 7, 2),
(3, 1, 28.1, 10, 2);

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL,
  `ordertime` date DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FKC3DF62E5AA3D9C7` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`oid`, `total`, `ordertime`, `state`, `name`, `phone`, `addr`, `uid`) VALUES
(1, 99.2, '2016-11-26', 1, NULL, NULL, NULL, 9),
(2, 47.6, '2016-11-28', 1, NULL, NULL, NULL, 9);

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEFB9B74E02` (`csid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`pid`, `pname`, `market_price`, `shop_price`, `image`, `pdesc`, `is_hot`, `pdate`, `csid`) VALUES
(1, '红楼梦', 88, 47.1, 'products/a1_01.jpg', '本书为中国古典文学读本丛书。如果你还在为了阅读或收藏价格昂贵的中国古典名著而在书架前徘徊，那么现在你不用愁了，该版的《红楼梦》，不仅价格便宜、印刷美观、装帧古朴，收藏、送人都让你特有面子！', 0, '2014-11-02', 1),
(2, '西游记', 88, 28.8, 'products/a1_02.jpg', '《西游记》的故事对人们来说是非常熟悉的，其中最精彩的章节，如孙悟空大闹天宫、猪八戒高老庄娶媳妇、打白骨精、借芭蕉扇等等，更是家喻户晓，妇孺皆知。几百年来，它以其强烈的艺术魁力，吸引着一代又一代人，从而使它成为中国人民最喜爱的古典名著之一。', 0, '2014-11-04', 1),
(3, '三国演义', 88, 23.7, 'products/a1_03.jpg', '三国演义》又名《三国志演义》、《三国志通俗演义》，是我国小说史上最著名最杰出的长篇章回体历史小说。《三国演义》的作者是元末明初人罗贯中，在其成书前，“三国故事”已经历了数百年的历史发展过程。', 0, '2014-10-01', 1),
(4, '笑傲江湖', 88, 83.7, 'products/a2_01.jpg', '《笑傲江湖》这部小说是金庸1967年写的一部武侠小说，是金庸的后期作品，其叙事状物，已到炉火纯青、出神入化的境界。所谓文有余思，笔无滞得，信笔所至，皆成妙谛。书中所涉及的场景、人物以及各类武林人物交手搏斗的场在不可胜数，但历历写来，景随情转，变化无穷而皆能贴合生活，让你如同身历其境。', 0, '2014-12-07', 2),
(5, '鹿鼎记', 188, 107.4, 'products/a2_02.jpg', '《金庸作品集(32－36)－鹿鼎记(全五册)(朗声旧版)》讲述了出身于妓院的少年韦小宝，凭一时之勇搭救了落难的江湖好汉茅十八，又阴差阳错地假冒小太监，成为少年康熙驾前第一红人；他既是天地会总舵主的关门弟子，被寄予反清复明重任；他又艳福齐天，娶得七个如花似玉的夫人；他不肯反清，只因当今皇上是好朋友小玄子；他不肯剿灭天地会，只因不愿坏了江湖义气；他不学无术，却是天下第一好运的小无赖；他建功无数，却懂得功成身退。', 0, '2014-11-02', 2),
(6, '天龙八部', 188, 109, 'products/a2_03.jpg', '金庸，本名查良镛，浙江海宁人，一九二四年生。曾任报社记者、编辑，电影公司编剧、导演等。一九五九年在香港创办《明报》机构，出版报纸、杂志及书籍，一九九三年退休。先后撰写武侠小说十五部，开创了中国当代文学新领域，广受当代读者欢迎，至今已蔚为全球华人的共同语言，并兴起海内外金学研究风气。', 0, '2014-11-10', 2),
(7, '好吗好的', 58, 19.5, 'products/b1_01.jpg', '百万级畅销书《乖，摸摸头》《阿弥陀佛么么哒》作者。', 1, '2016-11-25', 3),
(8, '阿弥陀佛，么么哒', 58, 19, 'products/b1_02.jpg', '百万级畅销书《乖，摸摸头》《阿弥陀佛么么哒》作者。', 1, '2016-11-25', 3),
(9, '乖，摸摸头', 58, 24.8, 'products/b1_03.jpg', '百万级畅销书《乖，摸摸头》《阿弥陀佛么么哒》作者。', 1, '2016-11-25', 3),
(10, '自在独行', 58, 28.1, 'products/b2_01.jpg', '贾平凹是我国当代文坛屈指可数的文学大师。他是一位极具叛逆性的作家，但又不失淳朴的本色。他是中国少有的高产作家，更为可贵的是他每一部作品都堪称精品。毫无疑问，他也是当代中国可以载入世界文学史册的文学家之一。', 1, '2016-11-25', 4),
(11, '文化苦旅', 58, 19, 'products/b2_02.jpg', '余秋雨，浙江余姚人，当代著名散文家，文化学者，艺术理论家，文化史学家。著有《文化苦旅》《何谓文化》《中国文脉》《山河之书》《霜冷长河》等。', 1, '2016-11-25', 4),
(12, '活着本来单纯', 58, 31, 'products/b2_03.jpg', '丰子恺，画家、散文家，卓有成就的文艺大师。师从弘一法师，学贯中西。朱自清，郁达夫，巴金、叶圣陶、林清玄，对其文章和漫画赞誉有加。日本汉学家吉川幸次郎则说，丰子恺是最中国的中国人。他的散文兼有平易纯朴之风、宽仁隽永之意和童真天然之趣，是现代文学中备受推崇的佳品，多次被选入学生教材，作语文教育典范。漫画幽默风趣，流传广泛 ，深受人们的喜爱，争相收藏。', 1, '2016-11-25', 4),
(13, '此间的少年', 58, 19.2, 'products/c1_01.jpg', '江南，男，安徽合肥人，毕业于北京大学、Washington University in St.Louis，化学专业学士，分析专业硕士，中国著名青春小说作家。代表作《此间的少年》《九州?缥缈录》《龙族》。现任北京九州天辰信息咨询有限公司总经理。定居北京。', 0, '2016-11-25', 5),
(14, '星光偶像少年男', 58, 14.6, 'products/c1_02.jpg', '猫小橘，90后，新晋写作人。深深地热爱着世界上的所有海岛，以及一切人迹罕至的地方。喜欢孤独，或许正是因为对孤独的迷恋，才会选择文字作为避风港，用以逃离忙碌琐碎的日常生活。在文字里，可以不用跟人打招呼，却拥有异常丰沛的世界；可以离人群很远，却又能观察生活本身。亲爱的小淑女们，欢迎来到我的孤独世界，欣赏我内心浪漫的故事。', 0, '2016-11-25', 5),
(15, '世界上所有的童话都是写给大人看的', 58, 23.7, 'products/c1_03.jpg', '陈谌：90后写作者，吉他手，「一个」App人气作者，已在「一个」发表《冰箱里的企鹅》、《时光若刻》、《莉莉安公主的烦恼》、《南极姑娘》等。', 0, '2016-11-25', 5),
(16, '如果你嫁了他', 58, 15.2, 'products/c2_01.jpg', '飞言情工作室主编', 0, '2016-11-25', 6),
(17, '南柯一梦', 58, 14.8, 'products/c2_02.jpg', '落清，典型狮子女，生于美丽的江南小城。偶尔神经，闲时码字，非专业的码字者。喜欢讲故事，如此而已。已出版长篇《唱给你的小情歌》《如果回忆不记得》《距离爱情26岁》《我爱你，直到时光尽头》等。', 0, '2016-11-25', 6),
(18, '顾恋心安', 58, 23, 'products/c2_03.jpg', '苏苏，女，生长于南方小镇，编辑。2012年开始创作第一部作品，迄今为止已创作250万字以上言情作品。风格多变，较擅长轻松言情文。曾用笔名五更雨，出版《门当夫不对》等。', 0, '2016-11-25', 6),
(19, 'C Primer Plus(第6版)中文版', 88, 66.4, 'products/d1_01.jpg', '《C Primer Plus(第6版)中文版》针对C 初学者，书中从C语言基础知识开始介绍，然后在此基础上详细阐述C 新增的特性，因此不要求读者有C语言方面的背景知识。本书可作为高等院校教授C课程的教材，也可供初学者自学C 时使用。', 1, '2014-10-01', 7),
(20, 'Visual C 从入门到精通（第3版）', 88, 55.1, 'products/d1_02.jpg', '《Visual C 从入门到精通（第3版）》从初学者的角度出发，以通俗易懂的语言，配合丰富多彩的实例，详细介绍了使用VisualC 6.0进行程序开发应该掌握的各方面知识。', 1, '2014-11-03', 7),
(21, 'C++从入门到精通', 88, 50.8, 'products/d1_03.jpg', '丛书说明：“软件开发视频大讲堂”（第1版）2008年出版以来，因为首次全程配备视频，编写细腻，易学实用，在计算机图书市场上产生了强烈反响，多个品种被评为“全国优秀畅销书”。', 1, '2014-11-03', 7),
(22, 'Java编程思想（第4版）', 88, 70.2, 'products/d2_01.jpg', '《计算机科学丛书：Java编程思想（第4版）》赢得了全球程序员的广泛赞誉，即使是晦涩的概念，在BruceEckel的文字亲和力和小而直接的编程示例面前也会化解于无形。从Java的基础语法到高级特性（深入的面向对象概念、多线程、自动项目构建、单元测试和调试等），本书都能逐步指导你轻松掌握。', 1, '2014-11-03', 8),
(23, '深入分析Java Web技术内幕（修订版）', 88, 54.5, 'products/d2_02.jpg', '《深入分析Java Web技术内幕（修订版）》新增了淘 宝在无线端的应用实践，包括：CDN 动态加速、多终端化改造、 多终端Session 统一 ，以及在大流量的情况下，如何跨越性能、网络和一个地区的电力瓶颈等内容，并提供了比较完整的解决方案。', 1, '2014-11-03', 8),
(24, '深入理解Java虚拟机', 88, 54.5, 'products/d2_03.jpg', 'Java是目前用户最多、使用范围最广的软件开发技术之一。Java的技术体系主要由支撑Java程序运行的虚拟机、提供各开发领域接口支持的JavaAPI、Java编程语言及许多第三方Java框架（如Spring、Struts等）构成。在国内，有关JavaAPI、Java语言语法及第三方框架的技术资料和书籍非常丰富。', 1, '2014-11-03', 8);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `username`, `password`, `name`, `email`, `phone`, `addr`, `state`, `code`) VALUES
(9, '张超', '123456', '张超', 'test1@zc.com', '13006125320', '中国地质大学（武汉）', 1, NULL),
(10, 'nullptr', '123456', '超', 'test1@zc.com', '123456', '地大', 1, NULL),
(11, 'null', '123', '张超', 'test1@zc.com', '123456', '地大', 0, '48b4b36013854f82937b2e8f3c818c3fd3a1c20bfcde4278a108f1c4c19648b2');

--
-- 限制导出的表
--

--
-- 限制表 `categorysecond`
--
ALTER TABLE `categorysecond`
  ADD CONSTRAINT `FK936FCAF21DB1FD15` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`);

--
-- 限制表 `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `FKE8B2AB6140ACF87A` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`),
  ADD CONSTRAINT `FKE8B2AB6171DB7AE4` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`);

--
-- 限制表 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKC3DF62E5AA3D9C7` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- 限制表 `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FKED8DCCEFB9B74E02` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
