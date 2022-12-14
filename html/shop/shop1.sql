-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-12-14 03:43:03
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `shop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `password`, `manager`) VALUES
(1, 'pbkdf2:sha256:50000$TkExX9Jm$d63477853a17dcaedcd52be4b6213ebb74b61a12456762ac19d6b7dfb559aa57', 'mr'),
(2, '123', 'ms');

-- --------------------------------------------------------

--
-- 資料表結構 `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('57aaa8e1f498');

-- --------------------------------------------------------

--
-- 資料表結構 `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `cart`
--

INSERT INTO `cart` (`id`, `goods_id`, `user_id`, `number`, `addtime`) VALUES
(1, 59, 1, 1, '2022-12-09 14:29:40'),
(2, 59, 0, 1, '2022-12-09 14:30:46'),
(3, 59, 0, 1, '2022-12-09 14:31:48'),
(4, 59, 0, 1, '2022-12-09 14:32:06'),
(5, 59, 0, 1, '2022-12-09 14:34:34'),
(6, 59, 0, 1, '2022-12-09 14:34:44'),
(7, 59, 0, 5, '2022-12-09 14:35:00'),
(8, 59, 0, 1, '2022-12-09 14:38:46'),
(9, 60, 0, 1, '2022-12-09 14:39:00'),
(10, 60, 0, 3, '2022-12-09 14:39:21'),
(11, 46, 0, 0, '2022-12-09 14:45:31'),
(12, 46, 0, 0, '2022-12-09 14:47:45'),
(13, 48, 0, 0, '2022-12-09 14:51:03'),
(14, 46, 0, 0, '2022-12-09 14:51:10'),
(15, 47, 0, 0, '2022-12-09 14:51:58'),
(16, 46, 0, 0, '2022-12-09 14:52:17'),
(17, 58, 0, 1, '2022-12-09 14:53:38'),
(18, 59, 0, 1, '2022-12-09 15:42:02'),
(19, 58, 0, 1, '2022-12-09 15:50:09'),
(20, 53, 0, 1, '2022-12-09 15:51:06'),
(21, 50, 0, 1, '2022-12-09 15:51:12'),
(22, 51, 0, 1, '2022-12-09 16:01:23'),
(23, 51, 0, 2, '2022-12-09 16:01:29'),
(24, 51, 0, 1, '2022-12-09 16:05:18'),
(25, 56, 0, 3, '2022-12-09 16:05:30'),
(26, 57, 0, 1, '2022-12-09 16:05:57'),
(27, 3, 0, 1, '2022-12-09 16:21:02'),
(28, 58, 0, 1, '2022-12-09 16:22:46'),
(29, 3, 0, 1, '2022-12-09 16:24:54'),
(30, 3, 0, 1, '2022-12-09 16:25:42'),
(31, 3, 0, 1, '2022-12-09 16:25:46'),
(32, 2, 0, 1, '2022-12-09 16:25:51'),
(33, 58, 0, 1, '2022-12-09 16:25:56'),
(34, 60, 0, 1, '2022-12-09 16:26:00'),
(35, 56, 0, 1, '2022-12-09 16:26:05'),
(36, 54, 0, 1, '2022-12-09 16:26:11'),
(37, 35, 0, 1, '2022-12-09 16:26:17'),
(38, 46, 0, 1, '2022-12-09 16:26:43'),
(39, 2, 0, 1, '2022-12-09 16:52:00'),
(40, 58, 0, 1, '2022-12-09 17:57:57'),
(41, 58, 0, 1, '2022-12-09 17:59:48'),
(42, 58, 0, 1, '2022-12-09 18:05:01'),
(43, 58, 0, 1, '2022-12-09 18:12:12'),
(44, 2, 0, 1, '2022-12-09 18:12:25'),
(45, 3, 0, 1, '2022-12-09 18:12:34'),
(46, 58, 0, 1, '2022-12-09 18:14:21'),
(47, 56, 0, 1, '2022-12-09 18:14:27'),
(48, 57, 0, 1, '2022-12-09 18:15:35'),
(49, 58, 0, 1, '2022-12-09 18:16:49'),
(50, 50, 0, 1, '2022-12-09 18:16:59'),
(51, 3, 0, 1, '2022-12-09 18:21:45'),
(52, 2, 0, 1, '2022-12-09 18:22:18'),
(53, 3, 0, 1, '2022-12-09 18:22:22'),
(54, 59, 0, 1, '2022-12-09 18:24:49'),
(55, 57, 0, 1, '2022-12-09 18:24:52'),
(56, 57, 0, 1, '2022-12-09 18:25:55'),
(57, 56, 0, 1, '2022-12-09 18:25:59'),
(58, 59, 0, 1, '2022-12-09 18:27:25'),
(59, 57, 0, 1, '2022-12-09 18:27:29'),
(60, 57, 0, 1, '2022-12-09 18:28:03'),
(61, 2, 0, 1, '2022-12-09 18:50:21'),
(62, 3, 0, 1, '2022-12-09 18:50:24'),
(63, 18, 0, 1, '2022-12-09 18:52:13'),
(64, 19, 0, 1, '2022-12-09 18:52:17'),
(65, 47, 0, 1, '2022-12-09 18:52:31'),
(66, 49, 0, 1, '2022-12-09 18:52:34'),
(67, 50, 0, 1, '2022-12-09 18:52:36'),
(68, 56, 0, 1, '2018-11-01 09:04:24'),
(69, 2, 0, 1, '2018-11-01 09:09:52'),
(70, 3, 0, 5, '2018-11-01 09:52:09'),
(71, 58, 0, 1, '2018-11-01 09:57:54'),
(72, 58, 0, 4, '2018-11-01 09:58:03'),
(73, 61, 0, 5, '2018-11-01 09:58:12'),
(74, 57, 0, 1, '2018-11-02 13:51:49'),
(75, 2, 0, 1, '2018-11-02 15:30:54'),
(76, 2, 0, 1, '2018-11-02 15:33:40'),
(77, 17, 0, 1, '2018-11-02 15:33:47'),
(78, 60, 0, 1, '2018-11-02 15:53:49'),
(79, 4, 0, 1, '2018-11-02 15:55:09'),
(80, 7, 0, 1, '2018-11-02 15:55:15'),
(81, 60, 0, 1, '2022-12-14 10:24:27');

-- --------------------------------------------------------

--
-- 資料表結構 `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `original_price` decimal(10,0) DEFAULT NULL,
  `current_price` decimal(10,0) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `introduction` text DEFAULT NULL,
  `is_sale` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `views_count` int(11) DEFAULT NULL,
  `subcat_id` int(11) DEFAULT NULL,
  `supercat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `goods`
--

INSERT INTO `goods` (`id`, `name`, `original_price`, `current_price`, `picture`, `introduction`, `is_sale`, `is_new`, `addtime`, `views_count`, `subcat_id`, `supercat_id`) VALUES
(2, 'RW0520公主方形鑽石戒指', '6520', '5868', '1.jpg', '優雅、復古又具現代風，公主方形切割鑽石戒指是有一顆方形主鑽，鑽石的四角均為 90 度。通常被稱為方形鑽石訂婚戒指，此形狀是異形鑽中最受歡迎的鑽石形狀。\r\n這款完美無暇的鑽石戒指鑲有多顆法式密釘鑲鑽石，與您所選擇的主鑽作完美配襯，讓人移不開視線。', 1, 0, '2016-07-20 09:58:53', 20, 27, 14),
(3, 'RW0636 圓鑽婚戒', '18000', '16200', '2.jpg', 'Princess 20分浪漫公主款式，外圈小鑽細緻包覆，復古設計卻不失低調優雅，屬於小公主般的華麗冒險。', 1, 0, '2016-07-20 10:10:38', 12, 28, 14),
(4, 'RW0704 鑽石線戒', '20000', '18000', '3.jpg', '18K金戒指鑲嵌天然鑽石，在簡單中營造獨特，閃耀指間，皆能表現出最耀眼品味。', 1, 0, '2016-07-20 10:12:00', 0, 31, 14),
(5, 'RW0637 鑽石線戒', '16500', '14850', '4.jpg', 'Princess 30分浪漫公主款式，外圈小鑽細緻包覆，復古設計卻不失低調優雅，屬於小公主般的華麗冒險。', 1, 0, '2016-07-20 10:13:06', 3, 28, 14),
(6, 'RW0310交織圈戒指', '6800', '6120', '5.jpg', '鑽石採用時尚的混合切割方式，將階梯式切割的冠部與明亮式切割的底部相結合。', 1, 0, '2016-07-20 10:14:24', 9, 30, 14),
(7, 'RW0312風格戒指', '5800', '5220', '6.jpg', '鑽石採用時尚的混合切割方式，將階梯式切割的冠部與明亮式切割的底部相結合。', 1, 0, '2016-07-20 10:18:19', 2, 30, 14),
(8, 'RW0233梨形水鑽', '38000', '34200', '7.jpg', '梨形切割融合圓形明亮式切割與欖尖形切割風格，創造出逐漸收細的流線水滴形狀，展示出非凡光線。就如橢圓形和欖尖形鑽石那般，令人更顯美態的梨形鑽石亦會讓手指顯得更修長，尤其在採用將尖端指向指甲的佩戴方式時。梨形鑽石展現出精準的對稱，與光環鑲嵌方式配合時尤為美麗。', 1, 1, '2016-07-20 10:20:10', 2, 29, 14),
(9, 'RW0110花型鑽戒', '66800', '60120', '8.jpg', '採用時尚的混合切割方式，將階梯式切割的冠部與明亮式切割的底部相結合。十分適合追求富現代感訂情戒指款式之人，它呈現出明亮強烈的白色反光，並巧妙地與彩虹及光線移動取得平衡。', 1, 0, '2016-07-20 10:24:51', 0, 32, 14),
(10, 'RW0522法式密釘公主方鑽戒指', '47400', '42660', '9.jpg', '這款觸動人心的訂婚鑽戒配有兩圈相互交融的戒指，象徵著兩人的邂逅相遇。 一圈是光滑的鉑金，另一圈是精緻的密釘鑲鑽。 在戒指中央，一顆公主方形切割美鑽鑲嵌於這兩圈並立的戒指上，盡顯璀然亮光。 這款經典之作上選用的所有鑽石都以遵循道德章程的方式採購，並悉心手工鑲嵌。 與結婚戒指搭配亦華美絕倫。', 1, 0, '2016-07-20 10:26:06', 0, 28, 14),
(11, 'RW0655圓鑽鑽戒', '35000', '31500', '10.jpg', 'Princess 20分浪漫公主款式，外圈小鑽細緻包覆，復古設計卻不失低調優雅，屬於小公主般的華麗冒險。', 1, 0, '2016-07-20 10:27:22', 0, 28, 14),
(12, 'RW0115璀璨紫鑽', '46800', '42120', '11.jpg', '璀璨的珠式鑲嵌鑽石閃爍的光環加上令人心動、切工精巧的橢圓形主寶石，整個設計各處都集聚著光芒，映照出無與倫比的閃耀光輝。橢圓形主鑽本身就引人矚目，加上一行鑽石使之更顯高貴美麗。', 1, 0, '2016-07-20 10:29:44', 0, 30, 14),
(13, 'RW0366簡約線鑽', '25000', '22500', '12.jpg', '鑽石採用時尚的混合切割方式，將階梯式切割的冠部與明亮式切割的底部相結合。', 1, 0, '2016-07-20 10:31:56', 0, 31, 14),
(14, 'RW0345簡約對戒', '85800', '77220', '13.jpg', '鑽石採用時尚的混合切割方式，將階梯式切割的冠部與明亮式切割的底部相結合。', 1, 0, '2016-07-20 10:34:32', 1, 31, 14),
(15, 'RW0128花形線戒', '8800', '7920', '14.jpg', '18K金戒指鑲嵌天然鑽石，在簡單中營造獨特，閃耀指間，皆能表現出最耀眼品味。', 1, 0, '2016-07-20 10:39:48', 1, 32, 14),
(16, 'RW0318白金對戒', '38500', '34650', '15.jpg', '鑽石採用時尚的混合切割方式，將階梯式切割的冠部與明亮式切割的底部相結合。18K金戒指鑲嵌天然鑽石，在簡單中營造獨特，閃耀指間，皆能表現出最耀眼品味。', 1, 0, '2016-07-20 10:40:43', 0, 31, 14),
(17, 'KA6211個性鏈墜', '8800', '7920', '16.jpg', '優雅革命，展現紐約市女力特質。這款項鏈兼具優雅與桀驁不馴風格。', 1, 0, '2016-07-20 10:43:27', 0, 33, 15),
(18, 'KA6022復古方鑽', '23600', '21240', '17.jpg', '10K金鑽石項鍊，使用精緻優質的鑽石，優美細膩的設計，最適合送給甜美可愛的她，鑽石浪漫禮物推薦！', 1, 0, '2016-07-20 10:45:55', 0, 34, 15),
(19, 'KA6055璀璨花鏈', '7650', '6885', '18.jpg', '18K金鑽石項鍊，織入完美鑽石的燦耀火光，弧線與美鑽交錯的結合，纖膩的設計風格，點綴在胸前的燦爛星光，增添美好的每一天，象徵年輕且充滿活力的姿態。', 1, 0, '2016-07-20 10:46:55', 0, 34, 15),
(20, 'KA6012藍色眼淚', '5300', '4770', '19.jpg', '10K藍色寶石項鍊，使用精緻優質的寶石，優美細膩的設計，最適合送給甜美可愛的她，鑽石浪漫禮物推薦！', 1, 0, '2016-07-20 10:47:48', 0, 34, 15),
(21, 'KA6045神秘冰晶鑽鏈', '3200', '2880', '20.jpg', '獨特的高級鑽石珠寶作品融匯了女性優雅與性感的元素演繹您對生活品味的璀璨的想望，玩味於光影與華麗的設計，將自由與精緻做難得一件的完美結合，呈現瑰麗的藝術禮讚，風情萬種、盡藏動人細節。', 1, 0, '2016-07-20 10:49:30', 0, 34, 15),
(22, 'KA6219紅心花圈墜鏈', '4300', '3870', '21.jpg', '獨特的高級鑽石珠寶作品融匯了女性優雅與性感的元素演繹您對生活品味的璀璨的想望，玩味於光影與華麗的設計，將自由與精緻做難得一件的完美結合，呈現瑰麗的藝術禮讚，風情萬種、盡藏動人細節。', 1, 0, '2016-07-20 10:50:35', 1, 33, 15),
(23, 'KA6255愛鏈紫水晶', '3000', '2700', '22.jpg', '獨特的高級鑽石珠寶作品融匯了女性優雅與性感的元素演繹您對生活品味的璀璨的想望，玩味於光影與華麗的設計，將自由與精緻做難得一件的完美結合，呈現瑰麗的藝術禮讚，風情萬種、盡藏動人細節。', 1, 0, '2016-07-20 10:51:57', 0, 33, 15),
(24, 'KA6002花形編織環鏈', '3200', '2880', '23.jpg', '花朵被賦予了生命的活力，充滿了自信、熱情，猶如破蛹而出蛻變重生，以令人驚豔的非凡工藝展現現代不可抗拒的女性魅力。', 1, 0, '2016-07-20 10:52:58', 0, 30, 15),
(25, 'KA6001光之穹頂 鑽石項鍊', '3500', '3150', '24.jpg', '此款為方鑽車工，經過勘探、開採，精心的設計、切割、打磨，散發璀璨的光芒，經曆難以想象的奇跡旅程，流轉關於愛的感動，將一切美麗終於可以呈現在您眼前，閃耀於您的頸間。', 1, 0, '2016-07-20 10:54:58', 0, 30, 15),
(26, 'KA6088小寶石鑽鏈', '2800', '2520', '25.jpg', '10K彩色寶石項鍊，使用精緻優質的寶石，優美細膩的設計，最適合送給甜美可愛的她，鑽石浪漫禮物推薦！', 1, 0, '2016-07-20 10:56:21', 0, 34, 15),
(27, 'KA6030經典四爪 鑽石項鍊', '42500', '38250', '26.jpg', '鑽戒以簡單經典的六爪鑲做設計，就像我們初識時那般單純而美好， 在我眼裡你就如鑽石般純潔閃亮，如此的明亮動人。 戒身的線條彷彿那封情書的封口，乘載著你滿懷的愛和我的悸動期待。 幸福很簡單就是我喜歡你，妳也剛好喜歡著我。 單鑽設計配上純淨的戒身，簡約經典。', 1, 0, '2016-07-20 10:57:39', 0, 34, 15),
(28, 'KA6027經典復古藍鑽', '68000', '61200', '27.jpg', '不言而喻的默契是理想中愛情的模樣， 我愛上你的瞬間，你剛好也在那一刻愛上了我， 這是我們默契的開端，兩顆心慢慢靠近， 同節奏的步伐讓我們譜出最浪漫和諧的樂章， 無須言語，只要有你一個堅定眼神 與你默契相伴 是一生一世的承諾 是無人能及的完美。', 1, 0, '2016-07-20 10:58:36', 0, 30, 15),
(29, 'KA6066淚之海', '58000', '52200', '28.jpg', '將彼此的紅線打上結，許下一生一世的諾言， 茫茫人海一眼相遇，是命運的秘密，是世紀的約定， 兩個人，兩顆心，永結連理，白首不相離 你是我，我是你，我們就是永遠的證據。', 1, 0, '2016-07-20 11:00:27', 0, 29, 15),
(30, 'KA6098小巧心型鑽鏈', '2800', '2520', '29.jpg', '紀錄我們愛情的模樣\r\n為戀人寫下愛情的模樣\r\n將戀人間從相遇到守護的故事點綴於指尖\r\n那些互訴心意、有默契眨眼的瞬間，\r\n亦或是兩人在舞池裡旋轉耀眼\r\n到背後環抱著給予堅強依靠\r\n此系列將時刻幸福縮影為設計理念\r\n化心動的剎那為雋永深長', 1, 0, '2016-07-20 11:01:39', 0, 30, 15),
(31, 'KA6057繫數甜蜜', '5580', '5022', '30.jpg', '初識時的青澀悸動，讓每一次相見都充滿期待。 那一封告白的情書，是彼此緣分的開端，承載了憧憬與期待。 然而這攜手相伴的時刻，情書裡的文字已不足以傾訴你我的愛， 我願用一輩子的陪伴，給你最長情的告白。', 1, 0, '2016-07-20 11:02:43', 0, 30, 15),
(32, 'ES0131珍愛系列 閃耀寶石珍珠耳環', '7700', '6930', '31.jpg', '以單顆7-7.5mm珍珠做為主視覺，底下搭配一彎閃耀寶石，彷彿一抹可愛的微笑，讓優雅自信的女人，在舉手投足間散發出女孩的活潑感。在寶石的搭配之下，此款閃耀寶石珍珠耳環的設計感絕佳，適合有個性的你。配戴著它參加聚會，絕對成為詢問度最高的單品！', 1, 0, '2016-07-20 11:04:26', 2, 28, 16),
(33, 'ES0102白金耳鑽', '30000', '27000', '32.jpg', '總重鑲有約0.30克拉圓鑽搭配18K金的圈型鑽石耳環，在耳際邊搖曳擺動，輝映出女人萬種美麗姿態。', 1, 1, '2016-07-20 11:06:02', 3, 35, 16),
(34, 'ES0815小巧鑽石耳環', '27500', '24750', '33.jpg', '18K金Petite鑽石耳環，使用精緻優質的鑽石，優美細膩的設計，最適合送給甜美可愛的她。', 1, 1, '2016-07-20 11:07:22', 2, 28, 16),
(35, 'ES8024浪漫圓鑽', '26400', '23760', '34.jpg', '為每個特殊場合增添光彩。紀念您每個時刻的亮麗之選。', 1, 0, '2016-07-20 11:08:38', 1, 28, 16),
(36, 'ES1312花間精靈', '7690', '6921', '35.jpg', '我們的愛情沒有轟轟烈烈，卻細水長流未來每一天都有我陪你走過。\r\n', 1, 0, '2016-07-20 11:09:51', 1, 33, 16),
(37, 'ES1223復古光彩', '23000', '20700', '36.jpg', '天然真鑽搭配綠寶石，最適合送給甜美可愛的她，浪漫禮物推薦!!', 1, 0, '2016-07-20 11:12:04', 1, 28, 16),
(38, 'ES0133珍愛系列 未來珍藏', '6690', '6021', '37.jpg', '以單顆7-7.5mm珍珠做為主視覺，底下搭配一彎閃耀寶石，彷彿一抹可愛的微笑，讓優雅自信的女人，在舉手投足間散發出女孩的活潑感。在寶石的搭配之下，此款閃耀寶石珍珠耳環的設計感絕佳，適合有個性的你。配戴著它參加聚會，絕對成為詢問度最高的單品！', 1, 0, '2016-07-20 11:13:03', 0, 28, 16),
(39, 'ES0105金色時光', '27000', '24300', '38.jpg', '總重鑲有約0.30克拉圓鑽搭配18K金的圈型鑽石耳環，在耳際邊搖曳擺動，輝映出女人萬種美麗姿態。', 1, 0, '2016-07-20 11:14:48', 0, 35, 16),
(40, 'ES0816小巧圓鑽寶石', '27500', '24750', '39.jpg', '18K金Petite鑽石耳環，使用精緻優質的鑽石，優美細膩的設計，最適合送給甜美可愛的她。', 1, 0, '2016-07-20 11:15:57', 0, 28, 16),
(41, 'ES8025經典浪漫', '26400', '23760', '40.jpg', '為每個特殊場合增添光彩。紀念您每個時刻的亮麗之選。', 1, 0, '2016-07-20 11:17:06', 2, 28, 16),
(42, 'ES1314花間起舞', '7690', '6921', '41.jpg', '我們的愛情沒有轟轟烈烈，卻細水長流未來每一天都有我陪你走過。', 1, 1, '2016-07-20 11:18:48', 0, 33, 16),
(43, 'ES1224復刻經典', '23000', '20700', '42.jpg', '天然真鑽搭配綠寶石，最適合送給甜美可愛的她，浪漫禮物推薦!!', 1, 1, '2016-07-20 11:20:07', 0, 28, 16),
(44, 'ES0130珍愛系列 永恆承諾', '7700', '6930', '43.jpg', '以單顆7-7.5mm珍珠做為主視覺，底下搭配一彎閃耀寶石，彷彿一抹可愛的微笑，讓優雅自信的女人，在舉手投足間散發出女孩的活潑感。在寶石的搭配之下，此款閃耀寶石珍珠耳環的設計感絕佳，適合有個性的你。配戴著它參加聚會，絕對成為詢問度最高的單品！', 0, 1, '2016-07-20 11:21:19', 0, 28, 16),
(45, 'ES0100璀璨環抱', '30000', '27000', '44.jpg', '總重鑲有約0.30克拉圓鑽搭配18K金的圈型鑽石耳環，在耳際邊搖曳擺動，輝映出女人萬種美麗姿態。', 1, 0, '2016-07-20 11:25:22', 0, 35, 16),
(46, 'ES0811小巧純粹', '27500', '24750', '45.jpg', '18K金Petite鑽石耳環，使用精緻優質的鑽石，優美細膩的設計，最適合送給甜美可愛的她。', 1, 0, '2016-07-20 11:27:00', 0, 28, 16),
(47, 'FF1255層次星河手鏈', '13500', '12150', '46.jpg', '鑽石手鍊帶來亮眼璀璨與雅緻風格。鑽石手鐲與鑽石手鍊都是體現經典魅力的華麗單品。佩戴金製或鉑金鑽石手鍊，讓您無比耀眼、成為眾人注目的焦點。', 1, 1, '2016-07-20 11:28:23', 5, 35, 17),
(48, 'FF1125凝望星河 ', '7200', '6480', '47.jpg', '運用純正18K金材質，在一年四季中，隨意搭配一件簡單亮眼的配件，立刻帶出時尚氣息。不論是送給情人或是給自己一份小禮，都是最佳的選擇。', 1, 0, '2016-07-20 11:29:16', 3, 36, 17),
(49, 'FF0138簡約時尚', '5500', '4950', '48.jpg', '每一顆星星都有屬於自己的旅程，\r\n就像每個人都有自己獨一無二的人生故事\r\n銀河系是我們所在的星系，宇宙中眾多美麗的恆星，被稱為銀河\r\n因為星辰如一條星光熠熠的長河，聚集了無盡光彩', 1, 0, '2016-07-20 11:30:20', 4, 35, 17),
(50, 'FF0158 18K金手鍊', '17500', '15750', '49.jpg', '運用純正18K金材質，在一年四季中，隨意搭配一件簡單亮眼的配件，立刻帶出時尚氣息。不論是送給情人或是給自己一份小禮，都是最佳的選擇。', 0, 1, '2016-07-20 11:31:28', 1, 33, 17),
(51, 'FF1366層次寶石手鏈', '5500', '4950', '50.jpg', '鑽石手鍊帶來亮眼璀璨與雅緻風格。鑽石手鐲與鑽石手鍊都是體現經典魅力的華麗單品。佩戴金製或鉑金鑽石手鍊，讓您無比耀眼、成為眾人注目的焦點。', 0, 1, '2016-07-20 11:32:20', 9, 35, 17),
(52, 'FF1115小巧多彩圓鑽', '3200', '2880', '51.jpg', '在一年四季中，隨意搭配一件簡單亮眼的配件，立刻帶出時尚氣息。不論是送給情人或是給自己一份小禮，都是最佳的選擇。', 0, 1, '2016-07-20 11:34:09', 3, 37, 17),
(53, 'FF1250多層次時尚墜鏈', '13500', '12150', '52.jpg', '鑽石手鍊帶來亮眼璀璨與雅緻風格。鑽石手鐲與鑽石手鍊都是體現經典魅力的華麗單品。佩戴金製或鉑金鑽石手鍊，讓您無比耀眼、成為眾人注目的焦點。', 0, 1, '2016-07-20 11:36:28', 0, 33, 17),
(54, 'FF1126經典白鑽', '7200', '6480', '53.jpg', '運用純正18K金材質，在一年四季中，隨意搭配一件簡單亮眼的配件，立刻帶出時尚氣息。不論是送給情人或是給自己一份小禮，都是最佳的選擇。', 0, 1, '2016-07-20 11:37:29', 1, 36, 17),
(55, 'FF0139簡約白金', '5500', '4950', '54.jpg', '每一顆星星都有屬於自己的旅程， 就像每個人都有自己獨一無二的人生故事 銀河系是我們所在的星系，宇宙中眾多美麗的恆星，被稱為銀河 因為星辰如一條星光熠熠的長河，聚集了無盡光彩。', 0, 1, '2016-07-20 11:38:45', 0, 35, 17),
(56, 'FF0153 太陽之心', '17500', '15750', '55.jpg', '運用純正18K金材質，在一年四季中，隨意搭配一件簡單亮眼的配件，立刻帶出時尚氣息。不論是送給情人或是給自己一份小禮，都是最佳的選擇。', 0, 1, '2016-07-20 11:39:52', 2, 35, 17),
(57, 'FF1365層次時搭手鏈', '5500', '4950', '56.jpg', '鑽石手鍊帶來亮眼璀璨與雅緻風格。鑽石手鐲與鑽石手鍊都是體現經典魅力的華麗單品。佩戴金製或鉑金鑽石手鍊，讓您無比耀眼、成為眾人注目的焦點。', 0, 1, '2016-07-20 11:41:14', 2, 33, 17),
(58, 'FF1111繽紛多彩圓鑽', '3200', '2880', '57.jpg', '在一年四季中，隨意搭配一件簡單亮眼的配件，立刻帶出時尚氣息。不論是送給情人或是給自己一份小禮，都是最佳的選擇。', 0, 1, '2016-07-20 11:42:31', 5, 37, 17),
(59, 'FF1267層次銀河手鏈', '13500', '12150', '58.jpg', '鑽石手鍊帶來亮眼璀璨與雅緻風格。鑽石手鐲與鑽石手鍊都是體現經典魅力的華麗單品。佩戴金製或鉑金鑽石手鍊，讓您無比耀眼、成為眾人注目的焦點。', 0, 1, '2016-07-20 11:43:18', 74, 35, 17),
(60, 'FF1127心動時分', '7200', '6480', '59.jpg', '運用純正18K金材質，在一年四季中，隨意搭配一件簡單亮眼的配件，立刻帶出時尚氣息。不論是送給情人或是給自己一份小禮，都是最佳的選擇。', 0, 1, '2016-07-20 11:44:21', 49, 36, 17),
(61, 'FF0228帥氣簡約', '5500', '4950', '60.jpg', '每一顆星星都有屬於自己的旅程， 就像每個人都有自己獨一無二的人生故事 銀河系是我們所在的星系，宇宙中眾多美麗的恆星，被稱為銀河 因為星辰如一條星光熠熠的長河，聚集了無盡光彩。', 0, 0, '2016-07-20 11:45:23', 16, 35, 17);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `recevie_name` varchar(255) DEFAULT NULL,
  `recevie_address` varchar(255) DEFAULT NULL,
  `recevie_tel` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `recevie_name`, `recevie_address`, `recevie_tel`, `remark`, `addtime`) VALUES
(21, 3, '測試', '這是誰', '18910441510', '閃電法師', '2022-12-09 18:50:36'),
(22, 3, '測試3', '手動閥', '18910441510', '手動閥', '2022-12-09 18:52:26'),
(23, 3, '側室', '123', '18910441510', '的所發生的', '2022-12-09 18:52:50'),
(24, 3, '張三', '長春', '18910441510', '測試', '2018-11-01 09:06:16'),
(25, 3, '李四', '長春', '18910441510', '阿斯頓發生', '2018-11-01 09:52:41'),
(26, 6, '小明', '吉林長春', '18910441510', '請送貨上門', '2018-11-02 15:55:01'),
(27, 6, '郭靖', '北京回龍觀', '18910441510', '快點發貨', '2018-11-02 15:55:50'),
(28, 7, '123', '111111', '11111', '', '2022-12-14 10:24:40');

-- --------------------------------------------------------

--
-- 資料表結構 `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `goods_id`, `order_id`, `number`) VALUES
(8, 2, 21, 1),
(9, 3, 21, 1),
(10, 18, 22, 1),
(11, 19, 22, 1),
(12, 47, 23, 1),
(13, 49, 23, 1),
(14, 50, 23, 1),
(15, 56, 24, 1),
(16, 2, 25, 1),
(17, 3, 25, 5),
(18, 2, 26, 1),
(19, 17, 26, 1),
(20, 60, 26, 1),
(21, 4, 27, 1),
(22, 7, 27, 1),
(23, 60, 28, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `subcat`
--

CREATE TABLE `subcat` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT current_timestamp() COMMENT '創建時間',
  `super_cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `subcat`
--

INSERT INTO `subcat` (`id`, `cat_name`, `addtime`, `super_cat_id`) VALUES
(27, '金製戒指', '2022-12-09 15:01:59', 14),
(28, '銀製戒指', '2022-12-09 15:01:59', 14),
(29, '合金製戒指', '2022-12-09 15:01:59', 14),
(30, '金製耳環', '2022-12-09 15:01:59', 15),
(31, '銀製耳環', '2022-12-09 15:01:59', 15),
(32, '不鏽鋼製耳環', '2022-12-09 15:01:59', 15),
(33, '金項鍊', '2022-12-09 15:01:59', 16),
(34, '銀項鍊', '2022-12-09 15:01:59', 16),
(35, '不鏽鋼製項鍊', '2022-12-09 15:01:59', 16),
(36, '金手環', '2022-12-09 15:01:59', 17),
(37, '銀手環', '2022-12-09 15:01:59', 17),
(38, '合金手環', '2022-12-09 15:01:59', 17);

-- --------------------------------------------------------

--
-- 資料表結構 `supercat`
--

CREATE TABLE `supercat` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT current_timestamp() COMMENT '創建時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `supercat`
--

INSERT INTO `supercat` (`id`, `cat_name`, `addtime`) VALUES
(14, '戒指', '2022-12-09 15:01:59'),
(15, '耳環', '2022-12-09 15:02:59'),
(16, '項鍊', '2022-12-09 15:03:59'),
(17, '手環', '2022-12-09 15:04:59'),
(30, '是的法定', '2022-12-09 15:05:59');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `consumption` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `phone`, `addtime`, `password`, `consumption`) VALUES
(1, 'andy', '694798056@qq.com', '13912345678', '2018-10-27 13:37:33', 'pbkdf2:sha256:50000$TkExX9Jm$d63477853a17dcaedcd52be4b6213ebb74b61a12456762ac19d6b7dfb559aa57', '0.00'),
(2, 'Tom', '1232434@qq.com', '123343467', '2018-10-27 13:55:03', 'pbkdf2:sha256:50000$TkExX9Jm$d63477853a17dcaedcd52be4b6213ebb74b61a12456762ac19d6b7dfb559aa57', '0.00'),
(3, 'kiki', '123456@qq.com', '18910441212', '2022-12-09 09:42:14', 'pbkdf2:sha256:50000$LSXCOuSP$8be298f1360258b419844a128bf053d63c84af626d30404237b3f8ca417e3d9b', '0.00'),
(5, 'lisi', '1234567@qq.com', '18910441213', '2022-12-09 09:49:23', 'pbkdf2:sha256:50000$6ghkMYvc$d2c93fa14932f0dc6e6aa3ea98c39dafba21cd367c6a9c0d3d99360649c94755', '0.00'),
(6, 'kinda', 'mr@mrsoft.com', '13578982158', '2018-11-01 16:51:26', 'pbkdf2:sha256:50000$U27W3Fbe$2c861e8d7ed40a7dfe384a9d490097f2bb6a27a5afd0f85537ea805f9aeb08d4', '0.00'),
(7, '123', NULL, NULL, NULL, '123', NULL),
(8, '123', NULL, NULL, NULL, '123', NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manager` (`manager`);

--
-- 資料表索引 `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- 資料表索引 `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goods_id` (`goods_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ix_cart_addtime` (`addtime`);

--
-- 資料表索引 `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_goods_addtime` (`addtime`),
  ADD KEY `supercat_id` (`supercat_id`),
  ADD KEY `subcat_id` (`subcat_id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ix_orders_addtime` (`addtime`);

--
-- 資料表索引 `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goods_id` (`goods_id`),
  ADD KEY `order_id` (`order_id`);

--
-- 資料表索引 `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `super_cat_id` (`super_cat_id`),
  ADD KEY `ix_subcat_addtime` (`addtime`);

--
-- 資料表索引 `supercat`
--
ALTER TABLE `supercat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_supercat_addtime` (`addtime`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `ix_user_addtime` (`addtime`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `subcat`
--
ALTER TABLE `subcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `supercat`
--
ALTER TABLE `supercat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`);

--
-- 資料表的限制式 `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`supercat_id`) REFERENCES `supercat` (`id`),
  ADD CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`subcat_id`) REFERENCES `subcat` (`id`);

--
-- 資料表的限制式 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- 資料表的限制式 `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  ADD CONSTRAINT `orders_detail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- 資料表的限制式 `subcat`
--
ALTER TABLE `subcat`
  ADD CONSTRAINT `subcat_ibfk_1` FOREIGN KEY (`super_cat_id`) REFERENCES `supercat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
