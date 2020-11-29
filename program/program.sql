-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.53 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.5.0.5220
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 wzhost 的数据库结构
CREATE DATABASE IF NOT EXISTS `wzhost` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wzhost`;

-- 导出  表 wzhost.flower_car 结构
CREATE TABLE IF NOT EXISTS `flower_car` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_img1` varchar(500) DEFAULT NULL,
  `f_img2` varchar(500) DEFAULT NULL,
  `f_img3` varchar(500) DEFAULT NULL,
  `f_img4` varchar(500) DEFAULT NULL,
  `f_info` varchar(500) DEFAULT NULL,
  `f_price` varchar(500) DEFAULT NULL,
  `f_language` varchar(500) DEFAULT NULL,
  `f_materials` varchar(500) DEFAULT NULL,
  `f_box` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- 正在导出表  wzhost.flower_car 的数据：26 rows
/*!40000 ALTER TABLE `flower_car` DISABLE KEYS */;
INSERT INTO `flower_car` (`f_id`, `f_img1`, `f_img2`, `f_img3`, `f_img4`, `f_info`, `f_price`, `f_language`, `f_materials`, `f_box`) VALUES
	(1, 'https://img01.hua.com/uploadpic/newpic/9012471.jpg', 'https://img01.hua.com/uploadpic/newpic/202007011457331923.jpg', 'https://img01.hua.com/uploadpic/newpic/202007011457390026.jpg', 'https://img01.hua.com/uploadpic/newpic/202007011457443359.jpg', '爱情。你是唯一', '￥139', '人间蹉跎，你是唯一值得', '卡罗拉红玫瑰11枝、白色满天星3枝、尤加利10枝', '红/金色鎏金纸5张、白色雪梨纸2张、酒红色罗纹烫金丝带2米'),
	(2, 'https://img01.hua.com/uploadpic/newpic/9012455.jpg', 'https://img01.hua.com/uploadpic/newpic/201809061455222856.jpg', 'https://img01.hua.com/uploadpic/newpic/201809061455181633.jpg', 'https://img01.hua.com/uploadpic/newpic/201809061512161441.jpg', '爱情.韩式系列/亲爱的你', '￥245', ' 让每点阳光，洒于你脸庞；令你的微笑，比花更盛放！', ' 粉绣球1枝，粉雪山玫瑰6枝，粉桔梗0.3扎，栀子叶0.5扎', ' 长方形手提花篮1个'),
	(3, 'https://img01.hua.com/uploadpic/newpic/9012467.jpg', 'https://img01.hua.com/uploadpic/newpic/202006291605484620.jpg', 'https://img01.hua.com/uploadpic/newpic/202006291604536458.jpg', 'https://img01.hua.com/uploadpic/newpic/202006291604580738.jpg', '爱情。Best for You', '￥148', ' I still want the best for you！', ' 戴安娜粉玫瑰11枝、浅紫勿忘我3枝、尤加利10枝', '嫣粉/玫粉色欧雅纸5张、白色雪梨纸2张、浅粉色罗纹玫瑰金丝带2米'),
	(4, 'https://img01.hua.com/uploadpic/newpic/9012450.jpg', 'https://img01.hua.com/uploadpic/newpic/202004091611450507.jpg', 'https://img01.hua.com/uploadpic/newpic/202004091610528228.jpg', 'https://img01.hua.com/uploadpic/newpic/202004091611385094.jpg', '爱情。韩式系列/初心不负', '￥228', ' 以热烈主题的红玫瑰及红色包装，搭配象征白色无暇的桔梗为设计主题，打造全新韩式系列。将这一簇美景包裹在一片雪白中，一条满载希望的丝带扎紧了无限的惊喜，只为将全世界的风景奉献于你怀里', '韩式花束系列：卡罗拉玫瑰11枝、3头或以上白底粉边洋桔梗5枝（如白底粉边桔梗缺货，可用白色桔梗代替）、大叶尤加利10枝、4枝红豆（红豆属于季节性花材，如缺货用相思梅等类似花材代替）', '红/金色鎏金纸5张、透明雾面纸3张、酒红色罗纹烫金丝带2米'),
	(5, 'https://img01.hua.com/uploadpic/newpic/9012009.jpg', 'https://img01.hua.com/uploadpic/newpic/201505161715457343.jpg', 'https://img01.hua.com/uploadpic/newpic/201505161715590781.jpg', 'https://img01.hua.com/uploadpic/newpic/201505161716191250.jpg', '爱情。忘情巴黎', '￥298', '只想和你忘掉一切烦恼，尽情沉醉在最浪漫的气氛中。', ' 33枝红玫瑰，石竹梅20枝', ' 黑色条纹纸，红色缎带花结'),
	(6, 'https://img01.hua.com/uploadpic/newpic/9012481.jpg', 'https://img01.hua.com/uploadpic/newpic/202007241435319432.jpg', 'https://img01.hua.com/uploadpic/newpic/202007241435360629.jpg', 'https://img01.hua.com/uploadpic/newpic/202007241435400860.jpg', '爱情。爱莎公主99', '￥639', ' 想把你宠成公主，也想给你全部温柔', ' 艾莎玫瑰99枝', '嫣粉/玫粉色欧雅纸7张、透明雾面纸3张、白色雪梨纸2张、粉色罗纹烫金丝带2米'),
	(7, 'https://img01.hua.com/uploadpic/newpic/9012452.jpg', 'https://img01.hua.com/uploadpic/newpic/202004091616390990.jpg', 'https://img01.hua.com/uploadpic/newpic/202004091616452946.jpg', 'https://img01.hua.com/uploadpic/newpic/202004091616452946.jpg', '送长辈.韩式系列/一路向阳', '￥296', ' 以秋色和暖阳为设计主题，打造全新韩式系列，在凛冽冬日，你的爱就像一束阳光，照进了我的心中！', '韩式花束系列：向日葵3枝、香槟玫瑰9枝、橙色多头玫5枝、黄色腊梅5枝、大叶尤加利5枝（腊梅花期为11-4月初，其他季节用跳舞兰或其他黄色线状花材代替）', '姜黄色双面牛皮纸8张、白色雪梨纸1大张、浅粉色罗纹玫瑰金丝带2米'),
	(8, 'https://img01.hua.com/uploadpic/newpic/9012092.jpg', 'https://img01.hua.com/uploadpic/newpic/201708091917222536.jpg', 'https://img01.hua.com/uploadpic/newpic/201708091917272068.jpg', 'https://img01.hua.com/uploadpic/newpic/201708091920351663.jpg', '送长辈.母爱', '￥162', '没你疼爱我怎么生活，没你抚养我怎能长大，你给了我青春的年华，自己却满头白发，不负青春年华，是对你最好的报答！', '紫红色康乃馨9枝，粉色多头康乃馨10枝', '白色雪梨纸，香芋紫人造纸，粉色opp雾面纸，白蓝罗纹带花结'),
	(9, 'https://img01.hua.com/uploadpic/newpic/9012462.jpg', 'https://img01.hua.com/uploadpic/newpic/202004131653343573.jpg', 'https://img01.hua.com/uploadpic/newpic/202004131653402169.jpg', 'https://img01.hua.com/uploadpic/newpic/202004131653453099.jpg', '送长辈。韩式花篮/平淡岁月', '￥286', ' 花开无声，静默温情', '韩式系列花篮精选：苏醒玫瑰13枝，蓝紫色绣球1枝，香槟洋桔梗5枝，粉洋桔梗3枝，尤加利叶5枝', ' 手工花篮'),
	(10, 'https://img01.hua.com/uploadpic/newpic/9012204.jpg', 'https://img01.hua.com/uploadpic/newpic/202009091721078143.jpg', 'https://img01.hua.com/uploadpic/newpic/201704251758397148.jpg', 'https://img01.hua.com/uploadpic/newpic/201704251758479918.jpg', '送长辈。幸福万年长', '￥346', '家是什么?有人说家是倦鸟归来的巢，家是小船避风的港......有爱有家，幸福万年长。', ' 红色康乃馨66枝，搭配白边紫色多头康乃馨15枝，栀子叶2扎', '蓝灰色绝色纸2张，墨绿色条纹纸2张，玻璃纸1.5米，白绿粗条纹罗文带1.5米'),
	(11, 'https://img01.hua.com/uploadpic/newpic/9012440.jpg', 'https://img01.hua.com/uploadpic/newpic/201908221540506433.jpg', 'https://img01.hua.com/uploadpic/newpic/201908221541003486.jpg', 'https://img01.hua.com/uploadpic/newpic/201908221541057365.jpg', '送长辈。星河璀璨', '￥288', '你如璀璨的星河，于苍穹之中，焕发光芒，闪耀着我的人生。', '香槟玫瑰9枝、蓝绣球1枝、向日葵3枝、白色洋桔梗5枝、大叶尤加利5枝！', '蓝色人造纸5张、褐绿色OPP膜书法纸3张、香槟缎带1.5米、灰蓝色罗纹烫金丝带1.5米'),
	(12, 'https://img01.hua.com/uploadpic/newpic/9012095.jpg', 'https://img01.hua.com/uploadpic/newpic/201604271726445625.jpg', 'https://img01.hua.com/uploadpic/newpic/201604271726515156.jpg', 'https://img01.hua.com/uploadpic/newpic/201604271726585625.jpg', '送长辈。幸福绽放', '￥165', ' 携带一束鲜花来到您的身旁，花儿浓缩了我对您的祝福，您在我的心里永远美丽、漂亮！', ' 粉色康乃馨19枝，石竹梅10枝、紫色勿忘我0.2扎、栀子叶10枝', '内层紫红色不织布，外层粉色白牛皮纸，玫红色缎带花结'),
	(13, 'https://img01.hua.com/uploadpic/newpic/9012201.jpg', 'https://img01.hua.com/uploadpic/newpic/201704251739035644.jpg', 'https://img01.hua.com/uploadpic/newpic/201704251739133989.jpg', 'https://img01.hua.com/uploadpic/newpic/201909051653043825.jpg', '送长辈。馨情无限', '￥237', '曾经有人说“回家叫一声妈妈，是一件很幸福的事”。直到现在，才体会到这种甜蜜，原来我一直都过得如此美满...因为有妳，我的妈妈！', '高档礼盒装鲜花:戴安娜粉玫瑰11枝，红色康乃馨11支，红色石竹梅4枝，栀子叶4枝', '蓝灰色绝色纸1张，粉色OPP雾面纸1米，白绿粗条纹罗文带1米，魔力铁山灰盒（大）'),
	(14, 'https://img01.hua.com/uploadpic/newpic/9012461.jpg', 'https://img01.hua.com/uploadpic/newpic/202003231547274786.jpg', 'https://img01.hua.com/uploadpic/newpic/202003231547317057.jpg', 'https://img01.hua.com/uploadpic/newpic/202006021703206190.jpg', '送长辈。韩式系列/温柔以待', '￥239', '温柔的人，都是人间宝藏', ' 韩式花束系列：粉色康乃馨13枝，戴安娜玫瑰5枝、3头或以上粉色洋桔梗5枝、浅紫紫罗兰5枝（紫罗兰花期为12-4月，其他月份用浅紫色金鱼草/浅紫色桔梗/浅紫色风铃花等相似线状花材替代）、尤加利10枝', ' 嫣粉/玫粉色欧雅纸8张、白色雪梨纸2大张、浅粉色罗纹玫瑰金丝带2米'),
	(15, 'https://img01.hua.com/uploadpic/newpic/1073276.jpg', 'https://img01.hua.com/uploadpic/newpic/202004221339561350.jpg', 'https://img01.hua.com/uploadpic/newpic/202004221340030775.jpg', 'https://img01.hua.com/uploadpic/newpic/202004221340395605.jpg', '花好月圆永生花台灯/送父母长辈定制款', '￥298', '精选进口多色永生康乃馨台灯', ' 进口多色永生康乃馨、永生花玫瑰、双色永生绣球、尤加利果、松果、八角花、虞美人、情人草、小叶黄杨、羊齿叶、红色米花', ' 礼盒装'),
	(16, 'https://img01.hua.com/uploadpic/newpic/1073264.jpg', 'https://img01.hua.com/uploadpic/newpic/201909161736535708.jpg', 'https://img01.hua.com/uploadpic/newpic/201909161736576696.jpg', 'https://img01.hua.com/uploadpic/newpic/201909161737022762.jpg', '一鹿(路)有你永生花小夜灯', '￥288', '永生花礼盒', '哥伦比亚进口玫瑰、绣球，苔藓，满天星等、小鹿公仔，经花艺师手工精制而成，再搭配温馨小夜灯，适合生日、周年纪念日等特别的日子送女朋友、妻子之优选！', '精致永生花礼盒'),
	(17, 'https://img01.hua.com/uploadpic/newpic/1073033.jpg', 'https://img01.hua.com/uploadpic/newpic/201512151600569218.jpg', 'https://img01.hua.com/uploadpic/newpic/201512151601038281.jpg', 'https://img01.hua.com/uploadpic/newpic/201512151601110468.jpg', '一生一世', '￥198', '厄瓜多尔进口永生红玫1朵，双色永生绣球', '厄瓜多尔进口永生红玫1朵(直径6-7CM)，搭配双色永生绣球，白色小星花（所有材料均为永生花花材，可存放2～3年）', '心形玻璃罩+礼盒'),
	(18, 'https://img01.hua.com/uploadpic/newpic/1073256.jpg', 'https://img01.hua.com/uploadpic/newpic/202008181517247906.jpg', 'https://img01.hua.com/uploadpic/newpic/202008181517310863.jpg', 'https://img01.hua.com/uploadpic/newpic/202008181517366309.jpg', '我如此爱你-施华洛世奇ONE浪漫心形项链', '￥1190', 'SWAROVSKI新款浪漫心形项链', ' 厄瓜多尔进口永生红玫1朵(直径6-7CM)、红色小玫瑰2朵、进口红色永生玫瑰1朵、红色小果子2颗、进口红绣球适量、进口松树枝适量；搭配施华洛世奇（SWAROVSKI）One浪漫心形项链/红，产品尺寸：38cm，商品颜色：镀白金色，商品材质：仿水晶石由奥地利制造。点点爱心，打造浪漫一刻。', '蓝色高档定制礼盒'),
	(19, 'https://img01.hua.com/uploadpic/newpic/1073263.jpg', 'https://img01.hua.com/uploadpic/newpic/201911221656200986.jpg', 'https://img01.hua.com/uploadpic/newpic/201911221656200986.jpg', 'https://img01.hua.com/uploadpic/newpic/201909161730186006.jpg', '永生花满月艺术台灯/朦胧粉', '￥398', '进口哥伦比亚优质永生花园玫瑰3朵，搭配绣球等永生花材，手工精制而成。再搭配满月型艺术台灯，造型独特，创意十足，是送礼、居家自用的极佳选择。', '进口哥伦比亚优质永生花园玫瑰3朵，搭配绣球等永生花材，手工精制而成。再搭配满月型艺术台灯，造型独特，创意十足，是送礼、居家自用的极佳选择。', '礼盒包装'),
	(20, 'https://img01.hua.com/uploadpic/newpic/1073186.jpg', 'https://img01.hua.com/uploadpic/newpic/201805101137396143.jpg', 'https://img01.hua.com/uploadpic/newpic/201805101137396523.jpg', 'https://img01.hua.com/uploadpic/newpic/201805141537031185.jpg', '我如此爱你-口红款520', '￥599', 'Dior#520口红(专柜正品)＋进口永生玫瑰礼盒', ' 厄瓜多尔进口永生红玫1朵(直径6-7CM)、红色小玫瑰2朵、进口红色永生玫瑰1朵、红色小果子2颗、进口红绣球适量、进口松树枝适量；搭配专柜正品迪奥Dior#520口红（专属畅销款）。高档蓝色定制多功能礼盒（永生花盒+升级款带化妆镜+带首饰盒功能）。', '蓝色高档定制礼盒'),
	(21, 'https://img01.hua.com/uploadpic/newpic/1073278.jpg', 'https://img01.hua.com/uploadpic/newpic/202007171154192045.jpg', 'https://img01.hua.com/uploadpic/newpic/202007171148506176.jpg', 'https://img01.hua.com/uploadpic/newpic/202007171154589855.jpg', '永生花蓝牙音箱小夜灯', '￥398', '永生花礼盒', ' 精致卡通小玩偶，蒲公英，绿色苔藓，小星花，进口绿色黄色兔尾草适量，绿色绣球，蕨叶适量，经花艺师手工精制而成，再搭配温馨小夜灯，适合生日、周年纪念日等特别的日子送女朋友、妻子之优选！', '精致永生花礼盒'),
	(25, 'https://img01.hua.com/uploadpic/newpic/9012345.jpg', 'https://img01.hua.com/uploadpic/newpic/201809291155416861.jpg', 'https://img01.hua.com/uploadpic/newpic/201809291155509985.jpg', 'https://img01.hua.com/uploadpic/newpic/201809291155565015.jpg', '甜蜜相伴', '￥169', '让我花掉一整幅青春，用来寻你。', ' 粉佳人玫瑰9枝，白色洋桔梗0.2扎，尤加利叶5枝', ' 蓝色手提花篮1个，花泥1块'),
	(26, 'https://img01.hua.com/uploadpic/newpic/9010947.jpg', 'https://img01.hua.com/uploadpic/newpic/201901251406233631.jpg', 'https://img01.hua.com/uploadpic/newpic/201901251441497857.jpg', 'https://img01.hua.com/uploadpic/newpic/201901251441550394.jpg', '雪山玫瑰11枝、深紫色勿忘我0.3扎', '￥194', ' 用一袭白裙装扮你那无瑕的身姿，向一抹白云倾诉对你的思念，用一捧鲜花证明我不变的心。', '高档礼盒装鲜花:雪山玫瑰11枝、深紫色勿忘我0.3扎', ' 中灰人造纸3张，雪梨纸0.5张，银灰色logo缎带1米，魔力铁山灰盒(小)'),
	(27, 'https://img01.hua.com/uploadpic/newpic/9012148.jpg', 'https://img01.hua.com/uploadpic/newpic/201611021752449859.jpg', 'https://img01.hua.com/uploadpic/newpic/201611021754041503.jpg', 'https://img01.hua.com/uploadpic/newpic/201611021846477521.jpg', '初心永不变', '￥616', ' 最开始的地方，最动心的凝望，谢谢你陪我，在不忘初心的路上！', ' 白玫瑰99枝，栀子叶10枝', ' 内层白色雪梨纸，外层牛皮纸，拉菲草缎带花结'),
	(28, 'https://img01.hua.com/uploadpic/newpic/9092114.jpg', 'https://img01.hua.com/uploadpic/newpic/201807091406072866.jpg', 'https://img01.hua.com/uploadpic/newpic/201807091406074396.jpg', 'https://img01.hua.com/uploadpic/newpic/201807091435454569.jpg', '真爱+ 生日蛋糕B款（8寸）', '￥263', '我用回忆温暖了想你的每一刻　', ' 红玫瑰9枝，石竹梅4枝，栀子叶0.5扎', '内层雪梨纸1张，外层粉色opp雾面纸1.5米，白绿宽罗纹带'),
	(29, 'https://img01.hua.com/uploadpic/newpic/9012275.jpg', 'https://img01.hua.com/uploadpic/newpic/201711231722258870.jpg', 'https://img01.hua.com/uploadpic/newpic/201711231722320537.jpg', 'https://img01.hua.com/uploadpic/newpic/201711231722364854.jpg', '伴你久久', '￥629', '为你动情一瞬，便想相爱一生。对你的思念太深，只想和你一直走下去，直到永远。', '冷美人玫瑰99枝', ' 浅灰色素染纸6张，白蓝细条纹罗文带2米');
/*!40000 ALTER TABLE `flower_car` ENABLE KEYS */;

-- 导出  表 wzhost.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- 正在导出表  wzhost.user 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `email`, `pwd`, `sex`, `img`, `text`) VALUES
	(5, '冉菁', '222@qq.com', '444', '男', 'http://192.168.43.30:7001/public/upload/2.jpg', '康乃馨'),
	(8, '赵萌', '333@qq.com', '333', '女', 'http://192.168.43.30:7001/public/upload/3.jpg', '郁金香'),
	(9, '吴一', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(10, '吴二', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(11, '吴三', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(12, '吴四', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(13, '吴无', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(14, '吴珊', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(15, '百年女', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(16, '折桂', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(17, '杨平', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(18, '尚未加', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(19, '柱子', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(20, '孙号', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(21, '小李', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(22, '叮咚', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(23, '王辉', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(24, '赵四', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(25, '倪浩', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(26, '吴珊', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(27, '吴珊', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(28, '吴珊', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(29, '吴珊', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(30, '吴珊', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(31, '吴珊', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(32, '吴珊', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(33, '吴珊', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(34, '吴珊', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑'),
	(35, '吴珊', '444@qq.com', '444', '女', 'http://192.168.43.30:7001/public/upload/4.jpg', '格桑');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 导出  表 wzhost.userinfo 结构
CREATE TABLE IF NOT EXISTS `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- 正在导出表  wzhost.userinfo 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` (`id`, `username`, `pwd`, `email`, `img`, `text`) VALUES
	(12, 'yanrui', '999', '1212@qq.com', 'http://192.168.2.111:7001/public/upload/car.png', '哈哈哈'),
	(13, '大蒜', '111', '1842982683@qq.com', 'http://192.168.2.111:7001/public/upload/car.png', '哈哈哈'),
	(14, '小冉', '111', '111@qq.com', 'http://192.168.2.111:7001/public/upload/car.png', '哈哈哈');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;

-- 导出  表 wzhost.wzhostinfo 结构
CREATE TABLE IF NOT EXISTS `wzhostinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(50) DEFAULT '0',
  `pwd` char(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员\r\n';

-- 正在导出表  wzhost.wzhostinfo 的数据：1 rows
/*!40000 ALTER TABLE `wzhostinfo` DISABLE KEYS */;
INSERT INTO `wzhostinfo` (`id`, `username`, `pwd`) VALUES
	(1, '110', '123');
/*!40000 ALTER TABLE `wzhostinfo` ENABLE KEYS */;

-- 导出  表 wzhost.wzshops 结构
CREATE TABLE IF NOT EXISTS `wzshops` (
  `flowerid` int(11) NOT NULL AUTO_INCREMENT,
  `img1` varchar(500) DEFAULT '0' COMMENT '第一张图片',
  `img2` varchar(500) DEFAULT '0' COMMENT '第二张图片',
  `img3` varchar(500) DEFAULT '0' COMMENT '第三张图片',
  `img4` varchar(500) DEFAULT '0' COMMENT '第四张图片',
  `price` varchar(500) DEFAULT '0' COMMENT '价格',
  `huayu` varchar(500) DEFAULT '0' COMMENT '花语',
  `cailiao` varchar(500) DEFAULT '0' COMMENT '材料',
  `baozhaung` varchar(500) DEFAULT '0' COMMENT '包装',
  `talk` varchar(500) DEFAULT '0' COMMENT '配送说明',
  `sent` varchar(500) DEFAULT '0' COMMENT '配送到',
  PRIMARY KEY (`flowerid`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='这是所有的商品的信息';

-- 正在导出表  wzhost.wzshops 的数据：29 rows
/*!40000 ALTER TABLE `wzshops` DISABLE KEYS */;
INSERT INTO `wzshops` (`flowerid`, `img1`, `img2`, `img3`, `img4`, `price`, `huayu`, `cailiao`, `baozhaung`, `talk`, `sent`) VALUES
	(1, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(2, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(3, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(4, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(5, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(6, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(7, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(8, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(9, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(10, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(11, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(12, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(13, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(14, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(15, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(50, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(17, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(18, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(19, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(20, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(21, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(22, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(23, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(24, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(25, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(26, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(27, '1\r\n', '2', '3', '4', '5', '6', '7', '8', '9', 'sheng/shi'),
	(28, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
	(51, '11', '11', '11', '11', '11', '11', '11', '11', '11', '11');
/*!40000 ALTER TABLE `wzshops` ENABLE KEYS */;

-- 导出  表 wzhost.wzusers 结构
CREATE TABLE IF NOT EXISTS `wzusers` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(50) DEFAULT '0',
  `pwd` varchar(50) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 正在导出表  wzhost.wzusers 的数据：21 rows
/*!40000 ALTER TABLE `wzusers` DISABLE KEYS */;
INSERT INTO `wzusers` (`uid`, `tel`, `pwd`) VALUES
	(8, '444', '123'),
	(11, '444', '123'),
	(12, '444', '123'),
	(13, '444', '123'),
	(14, '444', '123'),
	(15, '444', '123'),
	(16, '444', '123'),
	(17, '444', '123'),
	(18, '444', '123'),
	(19, '444', '123'),
	(20, '444', '123'),
	(21, '444', '123'),
	(22, '444', '123'),
	(23, '444', '123'),
	(24, '444', '123'),
	(25, '444', '123'),
	(26, '444', '123'),
	(27, '444', '123'),
	(28, '444', '123'),
	(29, '444', '123'),
	(30, '444', '123');
/*!40000 ALTER TABLE `wzusers` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
