-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 03 月 02 日 07:33
-- 伺服器版本： 5.5.64-MariaDB
-- PHP 版本： 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `s1090402`
--

-- --------------------------------------------------------

--
-- 資料表結構 `resume_basic_intro`
--

CREATE TABLE `resume_basic_intro` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `addr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graduate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `resume_basic_intro`
--

INSERT INTO `resume_basic_intro` (`id`, `name`, `addr`, `email`, `graduate`, `position`) VALUES
(1, '庭瑋', '新北市, 永和區', 'yuan097@kimo.com', '德明財經科技大學—行銷管理系', '前/後端工程師[全職]');

-- --------------------------------------------------------

--
-- 資料表結構 `resume_image`
--

CREATE TABLE `resume_image` (
  `id` int(11) NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci,
  `wk` tinyint(1) DEFAULT NULL,
  `por` text COLLATE utf8mb4_unicode_ci,
  `porName` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `resume_image`
--

INSERT INTO `resume_image` (`id`, `img`, `sh`, `intro`, `wk`, `por`, `porName`) VALUES
(49, 'intro20210120041300.png', 0, '1', 0, '0', NULL),
(50, 'intro20210120041307.png', 0, '1', 0, '0', NULL),
(53, 'work20210121044614.png', 0, '0', 0, '0', NULL),
(54, 'work20210121045217.png', 0, '0', 0, '0', NULL),
(55, 'work20210121045744.png', 0, '0', 0, '0', NULL),
(56, 'work20210121050506.png', 0, '0', 0, '0', NULL),
(58, 'work20210121120124.png', 0, '0', 0, '0', NULL),
(60, 'work20210121124722.png', 0, '0', 0, '0', NULL),
(61, 'intro20210121075545.png', 0, '1', 0, '0', NULL),
(63, 'work20210121081720.png', 0, '0', 1, '0', NULL),
(65, 'work20210121081733.png', 0, '0', 1, '0', NULL),
(70, 'intro20210122121415.jpg', 1, '1', 0, '0', NULL),
(73, 'work20210124093423.png', 1, NULL, 1, NULL, NULL),
(74, 'work20210124093713.png', 1, NULL, 1, NULL, NULL),
(76, 'por20210125011214.png', 1, NULL, NULL, '1', '萬年曆'),
(77, 'por20210125021354.png', 1, NULL, NULL, '1', '鋼筆繪製女孩'),
(78, 'por20210125021736.jpg', 1, NULL, NULL, '1', '假作品1'),
(79, 'por20210125021753.jpg', 1, NULL, NULL, '1', '假作品2'),
(80, 'por20210125021810.jpg', 1, NULL, NULL, '1', '假作品3'),
(81, 'por20210125021856.jpg', 1, NULL, NULL, '1', '假作品4'),
(82, 'por20210223034119.png', 1, NULL, NULL, '1', '數位時鐘'),
(83, 'por20210223041204.png', 1, NULL, NULL, '1', '類比時鐘'),
(84, 'por20210223041633.png', 1, NULL, NULL, '1', '36小時天氣API'),
(85, 'por20210223042128.jpg', 1, NULL, NULL, '1', '2021calendar'),
(86, 'por20210223043235.png', 1, NULL, NULL, '1', 'hover效果'),
(87, 'por20210223043804.png', 1, NULL, NULL, '1', '調色盤'),
(88, 'por20210302043235.png', 1, NULL, NULL, '1', '影城網站');

-- --------------------------------------------------------

--
-- 資料表結構 `resume_login`
--

CREATE TABLE `resume_login` (
  `id` int(11) NOT NULL,
  `acc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `resume_login`
--

INSERT INTO `resume_login` (`id`, `acc`, `pw`) VALUES
(1, 'chel', '123455');

-- --------------------------------------------------------

--
-- 資料表結構 `resume_porfolio`
--

CREATE TABLE `resume_porfolio` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` text COLLATE utf8mb4_unicode_ci,
  `sh` tinyint(1) NOT NULL,
  `del` tinyint(1) DEFAULT NULL,
  `php` tinyint(1) UNSIGNED DEFAULT NULL,
  `mysql` tinyint(1) UNSIGNED DEFAULT NULL,
  `js` tinyint(1) UNSIGNED DEFAULT NULL,
  `jquery` tinyint(1) UNSIGNED DEFAULT NULL,
  `css` tinyint(1) UNSIGNED DEFAULT NULL,
  `bootstrap` tinyint(1) UNSIGNED DEFAULT NULL,
  `ps` int(10) UNSIGNED DEFAULT NULL,
  `ai` int(10) UNSIGNED DEFAULT NULL,
  `rank` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `resume_porfolio`
--

INSERT INTO `resume_porfolio` (`id`, `name`, `href`, `sh`, `del`, `php`, `mysql`, `js`, `jquery`, `css`, `bootstrap`, `ps`, `ai`, `rank`) VALUES
(21, '萬年曆', 'http://220.128.133.15/s1090402/calendar/', 1, 0, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1),
(22, '鋼筆繪製女孩', 'http://220.128.133.15/s1090402/AIgirl.png', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7),
(28, '數位時鐘', 'http://220.128.133.15/s1090402/dig/', 1, 0, NULL, NULL, 1, NULL, 1, NULL, NULL, 1, 6),
(29, '類比時鐘', 'http://220.128.133.15/s1090402/analog/', 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, 1, 5),
(30, '36小時天氣API', 'http://220.128.133.15/s1090402/weatherAPI/', 1, 0, 1, NULL, 1, 1, 1, 1, NULL, NULL, 3),
(31, '2021calendar', 'http://220.128.133.15/s1090402/2021calendar.jpg', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 9),
(32, 'hover效果', 'http://220.128.133.15/s1090402/hover/', 1, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 8),
(33, '調色盤', 'http://220.128.133.15/s1090402/colorSelector/', 1, 0, NULL, NULL, 1, 1, 1, NULL, 1, NULL, 4),
(34, '影城網站', 'http://220.128.133.15/s1090402/theater/', 1, NULL, 1, 1, 1, 1, 1, 1, 0, NULL, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `resume_self_intro`
--

CREATE TABLE `resume_self_intro` (
  `id` int(10) UNSIGNED NOT NULL,
  `textC` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `textE` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `del` tinyint(1) DEFAULT NULL,
  `sh` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `resume_self_intro`
--

INSERT INTO `resume_self_intro` (`id`, `textC`, `textE`, `del`, `sh`) VALUES
(4, 'BBBBBBBBBBBBBBBBBBBB', 'BBBBBBBBBBBBBBB', 0, 0),
(8, '之前上班之餘,閒暇時間購買了Udemy線上課程自學程式語言,\r\n因緣際會下參加了泰山職訓的甄試便開始學習程式技術,\r\n在寫程式的過程不僅找到了興趣也獲得了些許的成就感,\r\n期盼未來能找到相關工作與公司夥伴們一同進步!', 'Hi! I am Chelsea.\r\nI purchased an online course for studying programming language, currently participating in Taishan vocational training.\r\nduring the period, I also gained some accomplishments.\r\nLooking forward to continued progress on this road.', NULL, 1),
(11, 'AAAAAAAAAAAAAAAAAA', 'AAAAAAAAAAAAAAAAAAAAA', NULL, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `resume_skills`
--

CREATE TABLE `resume_skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `ct` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `resume_skills`
--

INSERT INTO `resume_skills` (`id`, `ct`, `name`, `sh`, `del`) VALUES
(1, 'frontend', 'html', 1, 0),
(2, 'backend', 'php', 1, 0),
(4, 'graphic_design', 'AI', 1, 0),
(6, 'backend', 'mySQL', 1, 0),
(7, 'frontend', 'css', 1, 0),
(8, 'frontend', 'JavaScript', 1, 0),
(11, 'others', 'TOEIC 600', 1, 0),
(13, 'graphic_design', 'PhotoShop', 1, 0),
(14, 'others', 'JLPT N3', 1, 0),
(15, 'frontend', 'Ajax', 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `resume_sk_text`
--

CREATE TABLE `resume_sk_text` (
  `id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `resume_sk_text`
--

INSERT INTO `resume_sk_text` (`id`, `text`, `title`) VALUES
(1, '我喜歡先用htmlcss先製作靜態網站\r\n包含排版布局配色字體選擇等等\r\n也會注意H標籤使用合理性或各容器層級關係\r\n網站架構大致完成後按照RWD設計適應多種顯示裝置\r\n幫助移動用戶獲得更好的移動頁瀏覽體驗\r\n最後運用javascript做現在主流的動態網頁, ajax做網頁的更新\r\n讓使用者的體驗能夠更好        ', 'frontend'),
(2, '後台建立最重要的是資料庫設計(表中的資訊聯結性應高一些)\r\n妥善設計的資料庫不僅提取資料時sql語法較簡短,\r\n使用到後期資料多時維護起來也方便許多\r\n我做後台傳遞資料時是用php\r\nphp除了跨平台性強, 具備成熟的物件導向且提供豐富的函式\r\n未來也希望能學習其他的程式語言!', 'backend'),
(4, 'PS、AI一直廣為大家熟悉\r\n在泰山培訓這段期間經常性地使用到這兩個軟體\r\n期間製作作品集若找不到適合圖片都會開PS進行素材精緻化或創作\r\n再丟到AI裡排版 轉存為svg檔 就不會有擔心失真的疑慮\r\n', 'graphic_design'),
(5, '在高中大學都是商科的關係加上待過壽險公司\r\n考取了一些金融相關證照\r\n具備基礎的英文聽讀能力\r\n在興趣使然下也取得了日文檢定N3', 'others');

-- --------------------------------------------------------

--
-- 資料表結構 `resume_work_experience`
--

CREATE TABLE `resume_work_experience` (
  `id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `resume_work_experience`
--

INSERT INTO `resume_work_experience` (`id`, `text`, `sh`) VALUES
(1, '犇亞會議中心\r\n櫃檯人員\r\n<hr>說明場地預訂方案並完成訂單\r\n協助電話諮詢、客戶疑問處理\r\n現場顧客之接待\r\n一般文書資料處理及簡易報表製作                                ', 1),
(2, '國泰人壽保險股份有限公司\r\n業務人員\r\n<hr>各項理財商品業務\r\n為顧客做保險規劃及商品說明\r\n維護客戶關係\r\n具備壽險產險外幣及投資型證照', 1),
(3, 'ZARA\r\n專櫃人員\r\n<hr>負責介紹及銷售門市商品\r\n商品進貨入庫、銷售管理及庫存管理\r\n陳列及促銷品換檔工作\r\n顧客關係維護協助、POS帳務作業                                  ', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `theater_admin`
--

CREATE TABLE `theater_admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `acc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `theater_admin`
--

INSERT INTO `theater_admin` (`id`, `acc`, `pw`) VALUES
(1, 'admin', '123455');

-- --------------------------------------------------------

--
-- 資料表結構 `theater_carousel`
--

CREATE TABLE `theater_carousel` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` int(11) UNSIGNED NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `theater_carousel`
--

INSERT INTO `theater_carousel` (`id`, `name`, `img`, `rank`, `sh`) VALUES
(1, '湯姆貓與傑利鼠海報', '1.jpg', 3, 1),
(2, '國賓影城手機app海報', '2.jpg', 4, 0),
(3, '國賓影城防疫九宮格', '3.jpg', 5, 0),
(5, 'test1', '1.jpg', 7, 0),
(6, 'test2', '2.jpg', 6, 0),
(7, '【尋龍使者：拉雅】海報', '7.jpg', 1, 1),
(8, '哆啦a夢standbyme海報', '8.jpg', 2, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `theater_heartlog`
--

CREATE TABLE `theater_heartlog` (
  `id` int(11) UNSIGNED NOT NULL,
  `mem_id` int(11) UNSIGNED NOT NULL,
  `movie_id` int(11) UNSIGNED NOT NULL,
  `movie_type` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `theater_heartlog`
--

INSERT INTO `theater_heartlog` (`id`, `mem_id`, `movie_id`, `movie_type`) VALUES
(4, 4, 18, 'a:2:{i:0;s:9:\"愛情片\";i:1;s:9:\"驚悚片\";}'),
(8, 4, 12, 'a:2:{i:0;s:9:\"愛情片\";i:1;s:9:\"喜劇片\";}'),
(10, 4, 20, 'a:1:{i:0;s:9:\"愛情片\";}'),
(13, 7, 6, 'a:2:{i:0;s:9:\"驚悚片\";i:1;s:9:\"科幻片\";}'),
(15, 7, 8, 'a:2:{i:0;s:9:\"驚悚片\";i:1;s:9:\"恐怖片\";}'),
(16, 7, 7, 'a:1:{i:0;s:9:\"戰爭片\";}'),
(18, 7, 19, 'a:2:{i:0;s:9:\"驚悚片\";i:1;s:9:\"戰爭片\";}'),
(20, 7, 5, 'a:2:{i:0;s:9:\"驚悚片\";i:1;s:9:\"恐怖片\";}'),
(29, 5, 6, 'a:2:{i:0;s:9:\"驚悚片\";i:1;s:9:\"科幻片\";}'),
(30, 5, 5, 'a:2:{i:0;s:9:\"驚悚片\";i:1;s:9:\"恐怖片\";}'),
(32, 4, 17, 'a:1:{i:0;s:9:\"卡通片\";}'),
(37, 4, 2, 'a:2:{i:0;s:9:\"喜劇片\";i:1;s:9:\"卡通片\";}'),
(40, 1, 12, 'a:2:{i:0;s:9:\"愛情片\";i:1;s:9:\"喜劇片\";}'),
(49, 5, 7, 'a:1:{i:0;s:9:\"戰爭片\";}'),
(51, 5, 9, 'a:1:{i:0;s:9:\"科幻片\";}'),
(55, 1, 14, 'a:1:{i:0;s:9:\"卡通片\";}'),
(58, 1, 9, 'a:1:{i:0;s:9:\"科幻片\";}'),
(59, 4, 9, 'a:1:{i:0;s:9:\"科幻片\";}'),
(60, 4, 6, 'a:2:{i:0;s:9:\"驚悚片\";i:1;s:9:\"科幻片\";}'),
(61, 1, 2, 'a:2:{i:0;s:9:\"喜劇片\";i:1;s:9:\"卡通片\";}'),
(63, 1, 13, 'a:2:{i:0;s:9:\"喜劇片\";i:1;s:9:\"卡通片\";}');

-- --------------------------------------------------------

--
-- 資料表結構 `theater_mem`
--

CREATE TABLE `theater_mem` (
  `id` int(11) UNSIGNED NOT NULL,
  `acc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `theater_mem`
--

INSERT INTO `theater_mem` (`id`, `acc`, `pw`, `name`, `email`, `tel`, `heart`, `status`) VALUES
(1, 'chel', '12345', '庭瑋', 'yuan097@kimo.com', '0930931022', 5, 1),
(4, 'qoooo', 'qqqq', 'q寶', '1111@', '0911', 7, 1),
(5, '9833', '9833', '媽媽', '9833@', '0930', 4, 1),
(6, 'yuyu', 'yuyu', 'yuyu', 'yuyu@', '0920', 0, 0),
(7, 'tingting', '111', 'call me ting ting', 'ting11111@', '0911', 5, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `theater_movie`
--

CREATE TABLE `theater_movie` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_c` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_e` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ondate` date NOT NULL,
  `actor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `rank` int(11) UNSIGNED NOT NULL,
  `heart` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `theater_movie`
--

INSERT INTO `theater_movie` (`id`, `name_c`, `name_e`, `length`, `level`, `type`, `ondate`, `actor`, `poster`, `background`, `trailer`, `intro`, `sh`, `rank`, `heart`) VALUES
(2, '銀龍出任務', 'Dragon Rider', '91', '普遍級', 'a:2:{i:0;s:9:\"喜劇片\";i:1;s:9:\"卡通片\";}', '2021-02-27', '湯瑪士桑斯特(Thomas Brodie-Sangster)、費莉絲蒂瓊斯(Felicity Jones)、派屈克史都華(Patrick Stewart)、佛萊迪海默爾(Freddie Highmore)', 'dragonRider.jpg', 'dragonRiderB.jpg', 'NULL', '《銀龍出任務》故事描述被龍族包袱困柱而成長的銀龍「飛克」，因人類即將入侵龍族隱居的家園，決定與同住於森林的精靈族兼摯友「黃小玲」挺身行動，尋找傳說中的飛龍聖地-「天堂之境」。兩人誤闖人類世界，以為可以透由「智慧大神－網路」找到線索，沒想到卻認識了意圖不明，自稱「龍騎士」的男孩，一心尋求友好信任的飛克、與對人類充滿不信任的小玲，就這樣與「龍騎士」組隊。不太靠譜的三人搭檔，在廣大的天際，與緊鄰的危機中，勇闖世界盡頭，展開橫跨歐亞非的冒險，向龍族的最後樂土，傳說中的「天堂之境」前進… ', 1, 4, 0),
(3, '湯姆貓與傑利鼠', 'Tom and Jerry', '101', '普遍級', 'a:2:{i:0;s:9:\"喜劇片\";i:1;s:9:\"卡通片\";}', '2021-02-27', '克蘿伊摩蕾茲(Chloe Grace Moretz)、麥可潘納(Michael Peña)、鄭肯(Ken Jeong)、喬丹博爾傑(Jordan Bolger)', 'tomandjerry.jpg', 'tomandjerryB.jpg', 'NULL', '湯姆貓與傑利鼠轉戰大城市，來到紐約展開新生活，並在一間豪華飯店遇上「超殺女」克蘿伊摩蕾茲扮演的飯店新員工。她即將協助舉辦世紀婚禮，而且必須在婚禮前驅逐傑利鼠，於是找到湯姆貓來幫助她，但是計畫當然不是這麼簡單，湯姆貓與傑利鼠這對冤家在飯店裡追追跑跑，展開新的爆笑追逐。', 1, 3, 0),
(5, '鬼鄰居', 'The Other Side', '120', '限制級', 'a:2:{i:0;s:9:\"驚悚片\";i:1;s:9:\"恐怖片\";}', '2021-02-27', '蒂蓮葛溫(Dilan Gwyn)、萊納斯華格倫(Niklas Jarneheim)', 'theotherside.jpg', 'theothersideB.jpg', 'NULL', '一位父親帶著5歲兒子盧卡斯，還有認識多年的女友席琳一起搬到郊外的別墅，準備展開新的家庭生活。當父親離家上班，隔壁早已荒廢多時、久無人居的屋宅時常傳出神秘的聲響，使人夜不能眠；盧卡斯更時常和不知哪來的「新朋友」對話、玩耍。席琳偶然從鄰居口中得知自己新家的秘密：前屋主入住後小孩失蹤、女主人精神異常因而搬離，席琳這才驚覺自家黑暗處有恐怖形體在騷動…', 1, 8, 0),
(6, '噪反', 'Chaos Walking', '120', '輔導級', 'a:2:{i:0;s:9:\"驚悚片\";i:1;s:9:\"科幻片\";}', '2021-02-24', '麥斯米克森(Mads Mikkelsen)、湯姆霍蘭德(Tom Holland)、黛西蕾德莉(Daisy Ridley)、大衛歐洛沃(David Oyelowo)、德米安畢齊(Demián Bichir)、尼克強納斯(Nick Jonas)、辛西婭艾利沃(Cynthia Erivo)', 'chaosWalking.jpg', 'chaosWalkingB.jpg', 'NULL', '描述距今不遠的「近未來」時空，人類移居至的星球飽受「噪音菌」侵害，女人皆已滅亡，男人則可以相互竊聽彼此內心的聲音。一日，少年陶德（湯姆荷蘭德飾）竟遇見一位從天而降的神秘女孩薇拉，兩人身處危機四伏的人類小鎮，為保衛薇拉的安危只得奔走逃亡，卻也意外發現牽動世界安危的暗黑祕密。', 1, 7, 0),
(7, '俘虜', 'Merry Christmas, Mr Lawrence', '123', '輔導級', 'a:1:{i:0;s:9:\"戰爭片\";}', '2021-02-25', '大衛鮑伊(David Bowie)、坂本龍一(Ryuichi Sakamoto)、北野武(Takeshi Kitano)', 'MrLawrenc.jpg', 'MrLawrencB.jpg', 'NULL', '1942年爪哇日軍戰俘營裡，被俘的英軍上校勞倫斯(湯姆康提飾)因熟悉日語，經常擔任日軍與戰俘間的翻譯，減少兩方因觀念差異而造成的衝突，也因此與日方軍官關係不錯。直到某日，戰俘營長官世野井上尉(坂本龍一飾)帶回一名戰俘傑克(大衛鮑伊飾)，傑克狂放不羈又具煽動性的態度讓日軍與戰俘間的關係更為緊張，也讓居於中間的勞倫斯疲於奔命，而世野井與傑克之間隱晦的情愫卻悄悄展開…', 1, 12, 0),
(8, '杏林醫院', 'Hospital', '90', '輔導級', 'a:2:{i:0;s:9:\"驚悚片\";i:1;s:9:\"恐怖片\";}', '2021-02-25', '林柏宏、太保(Tai-Bo)、朱芷瑩、徐立期', 'Hospital.jpg', 'HospitalB.jpg', 'NULL', '由台南最負盛名的法師帶隊，曉玲與妙如，她們各懷目的，義無反顧踏入醫院，曾經在這發生的過往，逐漸湧上眼前。不料，醫院陰氣太重，壓的眾人喘不過氣；無法投胎的怨魂糾纏，生死危在旦夕…', 1, 16, 0),
(9, '女巫們', 'The Witches', '104', '普遍級', 'a:1:{i:0;s:9:\"科幻片\";}', '2021-02-26', '安海瑟威(Anne Hathaway)、奧塔薇亞史班森(Octavia Spencer)、史丹利圖奇(Stanley Tucci)、克里斯洛克(Chris Rock)', 'TheWitches.jpg', 'TheWitchesB.jpg', 'NULL', '這部作品以黑色幽默又暖人心房的手法，述說在1967年年底，有一個孤苦伶仃的男童（賈瑟布魯諾 飾）來到阿拉巴馬州鄉下的迪莫波利斯鎮，去跟他親愛的奶奶（奧塔薇亞史班森 飾）一起住。男孩與奶奶遇到一群神祕、迷人卻又殘忍的女巫，機靈的奶奶很快帶著孫子逃到一處熱鬧的海濱名勝。好巧不巧，就在他們抵達時，世上最厲害的「高階女巫」（安海瑟葳 飾）召集了她在全世界的同伴來到這裡，她們都做了偽裝，要一同展開高階女巫的邪惡計劃。', 1, 5, 0),
(12, '我沒有談的那場戀愛', 'I Missed You', '99', '保護級', 'a:2:{i:0;s:9:\"愛情片\";i:1;s:9:\"喜劇片\";}', '2021-02-28', '吳慷仁、艾怡良、傅孟柏、9m88', 'imissedyou.jpg', 'imissedyouB.jpg', '', '劇情從「臉書的封鎖名單」展開，探討封鎖一個人，是因為一時任性？還是徹底不願再得知對方的任何消息？封鎖之後，就真的可以忘記嗎？\r\n \r\n男主角吳慷仁顛覆了以往偏愛的嚴肅角色，改以「花形壯美男」的形象詮釋一名桃花滿天的廣告才子，總是嘻皮笑臉的遊戲人間，一出口就是讓人分不清是實話還是玩笑話的人生金句。而在他跌落谷底之際，雖有眾多女友卻無處可歸，只好吃定了臉臭心善的女主角艾怡良，硬是賴在她的人生裡。', 1, 2, 0),
(13, '靈魂急轉彎', 'Soul', '107', '普遍級', 'a:2:{i:0;s:9:\"喜劇片\";i:1;s:9:\"卡通片\";}', '2021-02-26', '傑米福克斯(Jamie Foxx)、蒂娜費(Tina Fey)、理查艾尤德(Richard Ayoade)、安琪拉貝瑟(Angela Bassett)', 'soul.jpg', 'SoulB.jpg', '', '一但準備就緒，你的靈魂就畢業，隨後降臨到這個世界，開啟有意義的一生。但在故事主角喬賈德納的身上，卻出了差錯，他是天生的爵士鋼琴好手，卻一直不得志，只能在中學擔任樂團老師的工作，有一天，他獲得了千載難逢的演奏機會，還沒享受到成功的果實，就失足受傷陷入昏迷，一系列的陰錯陽差，喬來到了投胎先修班，被誤認為是啟發新靈魂的導師，並碰到了始終無法在投胎先修班畢業的靈魂22號，師徒二人想盡辦法要讓喬回到真實世界，這場特別的旅程，更讓喬重新審視人生的意義…', 1, 9, 0),
(14, '鬼滅之刃 無限列車篇', 'Kimetsu no Yaiba: Mugen Ressha-Hen', '117', '保護級', 'a:1:{i:0;s:9:\"卡通片\";}', '2021-02-25', '花江夏樹(Natsuki Hanae)、松岡禎丞', 'KimetsunoYaibaMugenRessha-Hen.jpg', 'KimetsunoYaibaMugenRessha-HenB.jpg', '', '《鬼滅之刃》是家人慘遭鬼殺害的少年－竈門炭治郎，為了讓化為鬼的妹妹禰豆子恢復回人 類，自願加入「鬼殺隊」的故事。以人鬼間的悲痛故事、驚心動魄的劍戰，以及偶然穿插的 滑稽場景，贏得廣大人氣，不僅紅遍日本，更掀起全球觀眾的熱烈討論。 \r\n以多人行蹤不明的這輛列車為舞台，炭治郎帶著禰豆子與善逸、伊之助一行人，與鬼殺隊最 強劍士〝柱〞其中之一「炎柱‧煉獄杏壽郎」會合， 新的任務即將開始！ ', 1, 14, 0),
(17, '尋龍使者：拉雅', 'Raya and the last Dragon', '120', '普遍級', 'a:1:{i:0;s:9:\"卡通片\";}', '2021-02-26', '艾倫圖克(Alan Tudyk)、陳嘉瑪(Gemma Chan)、奧卡菲娜(Awkwafina)、吳珊卓 (Sandra Oh)', 'RayaandthelastDragon.jpg', 'RayaandthelastDragonB.jpg', '', '《尋龍使者：拉雅》由風靡全球的《瘋狂亞洲富豪》編劇所編，故事背景帶有濃濃的亞洲神祕色彩。故事背景在很久以前，神龍為世界帶來雨水、生命與希望，但恐怖的莊魔出現帶走生命，將人們石化，眾神龍為拯救人類犧牲，直到剩下最後的神龍希蘇，祂將僅存的力量放入龍珠消滅莊魔，神龍也就此消失，留下龍珠庇護大地。\r\n \r\n五百年後，世界分為五大部分，拉雅家族為龍珠的守護者，決心團結四散的部落，召開五陸大會，然而卻遭到背叛，龍珠碎裂，莊魔再度出現，各部落趁亂搶走碎片，世界再度陷入混亂，拉雅帶著唯一的龍珠碎片，踏上尋龍之旅，這微小的光芒是否能為世界重新帶來曙光…', 1, 15, 0),
(18, '花漾女子', 'Promising Young Woman', '120', '限制級', 'a:2:{i:0;s:9:\"愛情片\";i:1;s:9:\"驚悚片\";}', '2021-02-26', '博伯翰(Bo Burnham)、珍妮佛庫里吉(Jennifer Coolidge) ', 'PromisingYoungWoman.jpg', 'PromisingYoungWomanB.jpg', '', '突破傳統的導演艾莫芮德芬諾（《追殺夏娃》）全新詮釋復仇的精彩作品。每個人都說凱西（凱莉墨里根 飾）是前途光明的年輕女性...直到一起神秘事件突然使她的未來脫離正軌。凱西的生活裡，沒有一件事是表面上看起來的那樣：她不懷好意，聰明狡猾，挑逗人心，在夜晚換上另一張臉，過著雙重生活。現在，一次意外的相遇將讓凱西在這個驚悚又超級精彩的故事裡，有機會糾正過去的錯誤。 \r\n \r\n※請注意，需提醒觀眾本片涉及性侵議題，對於某些觀眾而言可能帶來不適或難以面對。', 1, 18, 0),
(19, 'T-34：玩命坦克', 'T-34', '139', '保護級', 'a:2:{i:0;s:9:\"驚悚片\";i:1;s:9:\"戰爭片\";}', '2021-02-26', '亞歷山大佩托洛夫(Alexander Petrov)、文森茲凱佛(Vinzenz Kiefer)、艾琳娜史塔薛包姆(Irina Starshenbaum)', 'T-34.jpg', 'T-34B.jpg', '', '正值二戰如火如荼進行的1944年，一群勇敢無畏的俄羅斯士兵，試圖駕駛一台半毀的T-34戰車，從德軍的掌控中殺出重圍。為了所愛之人與祖國，他們將不計任何代價，誓死重返家園……\r\n', 1, 19, 0),
(20, '想見你的愛', 'Your Eyes Tell', '123', '保護級', 'a:1:{i:0;s:9:\"愛情片\";}', '2021-02-26', '橫濱流星(Ryusei Yokohama)、吉高由里子(Yuriko Yoshitaka)、町田啓太', 'YourEyesTell.jpg', 'YourEyesTellB.jpg', '', '因犯罪放棄拳擊生涯的壘（橫濱流星 飾）在停車場打工維生，意外結識失明女孩明香里（吉高由里子 飾），因意外失去雙親與視力的她，用開朗點亮了壘沉寂已久的生活。被悲劇折磨的兩人墜入愛河並開始同居，壘也積極重返拳擊擂台，為兩人的未來努力奮鬥。此時過去的組織老大（町田啟太 飾）找上門，用明香里的安全威脅他參加地下拳擊賭博。為了讓明香里重見光明，壘決定站上地下擂台打最後一場拳...。', 1, 20, 0),
(21, '空中謎航', 'Horizon Line', '92', '保護級', 'a:2:{i:0;s:9:\"驚悚片\";i:1;s:9:\"戰爭片\";}', '2021-02-26', '亞歷山大德雷蒙(Alexander Dreymon)、愛莉森威廉絲(Allison Williams)、凱斯大衛(Keith David)', 'HorizonLine.jpg', 'HorizonLineB.jpg', '', '莎拉（愛莉森威廉絲 飾）和傑克森（亞歷山大德雷蒙 飾）準備搭飛機到熱帶島嶼參加朋友的婚禮，沒想到原訂一個多小時的航程，在飛機起飛沒多久後，機師便心臟病發身亡。他們不知道自己在哪裡，更不知道該如何駕駛飛機。更慘的是，暴風雨即將迎面來襲，這次他們決心放手一搏，靠自己把握最後活下去的機會⋯⋯。', 1, 13, 0),
(23, '100%小狼人', '100%WOLF', '96', '普遍級', 'a:2:{i:0;s:9:\"喜劇片\";i:1;s:9:\"卡通片\";}', '2021-02-27', '珍琳奇(Jane Lynch)、傑寇特尼(Jai Courtney)、詹姆士馬許(James Marsh)、薩瑪拉薇明(Samara Weaving)', '100WOLF.jpg', '100WOLFB.jpg', '', '福來弟魯賓即將繼位成為狼人家族的領袖，他也相信自己有如父親福霸一般，會成為史上最威猛的狼人...。\r\n \r\n然而，在福來弟14歲生日第一次變身時，他居然變成一隻名副其實的……貴賓犬，讓他的美夢破碎。狼人群們更傻了眼，咩噗～族中長老給了他一項任務，在明天日出之前，他需要證明自己夠格當狼人，否則他就會因資格不符永遠遭到家族放逐。\r\n \r\n福來弟在出發之前被表弟表妹惡整染上了粉紅色的頭髮，看起來更不威了～但他還是鼓起勇氣踏上探險之路，卻在夜晚大城市的街道失去了方向，一隻流浪狗大姊大貝貝陰錯陽差幫助了他，卻同時被捕狗隊抓住，而他必須在今晚克服粉紅色超萌的外表，逃出捕狗隊的牢籠，更要證明自己是百分之百的狼人。', 1, 17, 0),
(24, '刻在你心底的名字', 'Your Name Engraved Herein', '116', '保護級', 'a:1:{i:0;s:9:\"愛情片\";}', '2021-02-27', '陳昊森、曾敬驊、邵奕玫、陳怡叡、王識賢、戴立忍、法比歐、龍劭華、王彩樺、洪都拉斯、林暉閔', 'YourNameEngravedHerein.jpg', 'YourNameEngravedHereinB.jpg', '', '電影《刻在你心底的名字》故事聚焦在80年代剛解嚴的台灣，一對遊走在友誼，愛慕之間的高中同窗，他們在青春的騷動與性啟蒙的渴望牽引下冒險，因為學妹的出現而讓曖昧關係產生變化。', 1, 21, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `theater_news`
--

CREATE TABLE `theater_news` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `theater_news`
--

INSERT INTO `theater_news` (`id`, `title`, `content`, `tags`, `sh`, `date`) VALUES
(1, '秋冬防疫專案啟動', '出入電影院請佩戴口罩！\r\n影城防疫措施：\r\n員工出勤前均測量體溫、值勤時全程配戴口罩及定時手部清潔\r\n每日定時進行場域消毒並於主要出入口提供手部消毒用品\r\n定時請專案公司消毒所有公共區域', '未佩戴且勸導不聽者，由地方政府柴裁罰新台幣三千以上一萬五以下罰鍰', 1, '2021-02-16'),
(2, '影廳內注意事項', '影廳內、電影正片（含片尾），均禁止拍照、錄音、錄影\r\n任何未經授權之攝錄行為，已觸犯著作權法第91條\r\n最高可處5年有期徒刑\r\n', '檢舉專線0800-016-597', 1, '2021-02-16'),
(3, '電影優待券之使用須知調整部份條文公告', '2021/1/1起\r\n因應行政院消保處「商品(服務)禮券定型化契約應記載及不得記載事項」之修訂，\r\n電影優待券之使用須知配合調整部份條文，詳情請參閱網站說明。\r\n目前流通中之票券皆適用新版使用須知。', '免費電影交換券逾期恕無法展延或補差額使用', 1, '2021-02-25'),
(4, '未滿2歲之兒童購票須知', '未滿二歲且不佔位之兒童可免費入場，恕不提供座位，\r\n每位兒童須由一位已購票之成人陪同。\r\n免費入場之兒童如需租用3D眼鏡應支付NT.50元，\r\n二歲以上且未滿十二歲之兒童，請購買優待票入場。', '兒童均應遵守電影分級制度入場', 1, '2021-02-25');

-- --------------------------------------------------------

--
-- 資料表結構 `theater_order`
--

CREATE TABLE `theater_order` (
  `id` int(11) UNSIGNED NOT NULL,
  `num` int(11) UNSIGNED NOT NULL,
  `mem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `moviedate` date NOT NULL,
  `session` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderdate` date NOT NULL,
  `seat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qt` int(2) UNSIGNED NOT NULL,
  `food` text COLLATE utf8mb4_unicode_ci,
  `money` int(11) UNSIGNED NOT NULL,
  `ordertime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `theater_order`
--

INSERT INTO `theater_order` (`id`, `num`, `mem`, `movie`, `moviedate`, `session`, `orderdate`, `seat`, `qt`, `food`, `money`, `ordertime`) VALUES
(1, 2102251216, '4', '女巫們', '2021-02-26', '4', '2021-02-25', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 2, 'NULL', 600, '12:16:04'),
(2, 2102251310, '4', '女巫們', '2021-02-26', '4', '2021-02-25', 'a:2:{i:0;s:1:\"6\";i:1;s:1:\"7\";}', 2, 'NULL', 600, '13:10:05'),
(3, 2102251907, '4', '女巫們', '2021-02-26', '4', '2021-02-25', 'a:2:{i:0;s:2:\"11\";i:1;s:2:\"12\";}', 2, 'NULL', 600, '19:07:07'),
(4, 2002251907, '4', '女巫們', '2020-02-28', '4', '2020-02-25', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 2, 'NULL', 600, '19:07:07'),
(5, 2102280055, '4', '湯姆貓與傑利鼠', '2021-02-28', '1', '2021-02-28', 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"4\";i:2;s:1:\"5\";}', 3, 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}', 1130, '00:55:30'),
(6, 2102280106, '4', '我沒有談的那場戀愛', '2021-02-28', '2', '2021-02-28', 'a:4:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"8\";i:3;s:1:\"9\";}', 4, 'a:2:{i:0;s:1:\"4\";i:1;s:1:\"5\";}', 1270, '01:06:57'),
(7, 2102280132, '4', '銀龍出任務', '2021-02-28', '1', '2021-02-28', 'a:3:{i:0;s:2:\"13\";i:1;s:2:\"14\";i:2;s:2:\"15\";}', 3, 'a:1:{i:0;s:1:\"4\";}', 935, '01:32:27'),
(8, 2102280216, '5', '湯姆貓與傑利鼠', '2021-02-28', '1', '2021-02-28', 'a:4:{i:0;s:1:\"9\";i:1;s:2:\"14\";i:2;s:2:\"15\";i:3;s:2:\"10\";}', 4, 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"4\";}', 1395, '02:16:59'),
(9, 2102280241, '5', '尋龍使者：拉雅', '2021-03-02', '5', '2021-02-28', 'a:2:{i:0;s:2:\"11\";i:1;s:2:\"12\";}', 2, 'a:1:{i:0;s:1:\"2\";}', 700, '02:41:07'),
(10, 2102281217, '1', '我沒有談的那場戀愛', '2021-02-28', '3', '2021-02-28', 'a:4:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"5\";}', 4, 'a:4:{i:0;s:1:\"1\";i:1;s:1:\"4\";i:2;s:1:\"5\";i:3;s:1:\"3\";}', 1400, '12:17:11'),
(11, 2102281219, '1', '我沒有談的那場戀愛', '2021-02-28', '3', '2021-02-28', 'a:4:{i:0;s:1:\"7\";i:1;s:2:\"12\";i:2;s:1:\"6\";i:3;s:2:\"11\";}', 4, 'NULL', 1200, '12:19:38'),
(12, 2102281255, '7', '鬼鄰居', '2021-03-02', '7', '2021-02-28', 'a:1:{i:0;s:1:\"1\";}', 1, 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"5\";}', 435, '12:55:43'),
(13, 2102281338, '5', '我沒有談的那場戀愛', '2021-02-28', '3', '2021-02-28', 'a:3:{i:0;s:2:\"19\";i:1;s:2:\"20\";i:2;s:2:\"18\";}', 3, 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}', 1070, '13:38:34'),
(14, 2102281359, '1', '靈魂急轉彎', '2021-03-04', '1', '2021-02-28', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}', 3, 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"5\";}', 1035, '13:59:45'),
(15, 2102281408, '1', '女巫們', '2021-03-02', '1', '2021-02-28', 'a:4:{i:0;s:1:\"5\";i:1;s:1:\"4\";i:2;s:1:\"9\";i:3;s:2:\"10\";}', 4, 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"4\";}', 1295, '14:08:46'),
(16, 2102281411, '5', '湯姆貓與傑利鼠', '2021-02-28', '4', '2021-02-28', 'a:3:{i:0;s:1:\"4\";i:1;s:1:\"5\";i:2;s:1:\"3\";}', 3, 'NULL', 900, '14:11:17'),
(18, 2102282051, '5', '靈魂急轉彎', '2021-03-04', '1', '2021-02-28', 'a:4:{i:0;s:1:\"4\";i:1;s:1:\"5\";i:2;s:1:\"9\";i:3;s:2:\"10\";}', 4, 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"4\";i:2;s:1:\"3\";}', 1365, '20:51:37'),
(19, 2102282141, '4', '湯姆貓與傑利鼠', '2021-02-28', '7', '2021-02-28', 'a:4:{i:0;s:1:\"5\";i:1;s:1:\"4\";i:2;s:1:\"9\";i:3;s:2:\"10\";}', 4, 'N;', 1200, '21:41:13'),
(20, 2103011203, '1', '湯姆貓與傑利鼠', '2021-03-01', '3', '2021-03-01', 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"4\";i:2;s:1:\"5\";}', 3, 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"4\";}', 995, '12:03:09'),
(21, 2103011846, '4', '女巫們', '2021-03-02', '1', '2021-03-01', 'a:3:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"1\";}', 3, 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"3\";i:2;s:1:\"5\";}', 1065, '18:46:11'),
(22, 2103020009, '5', '想見你的愛', '2021-03-02', '6', '2021-03-02', 'a:2:{i:0;s:2:\"11\";i:1;s:2:\"12\";}', 2, 'N;', 600, '00:09:50'),
(23, 2103020011, '5', '銀龍出任務', '2021-03-05', '6', '2021-03-02', 'a:2:{i:0;s:2:\"11\";i:1;s:2:\"12\";}', 2, 'a:1:{i:0;s:1:\"2\";}', 700, '00:11:04'),
(24, 2103020805, '5', '湯姆貓與傑利鼠', '2021-03-02', '1', '2021-03-02', 'a:2:{i:0;s:1:\"5\";i:1;s:1:\"4\";}', 2, 'N;', 600, '08:05:23'),
(25, 2103021000, '1', '靈魂急轉彎', '2021-03-02', '4', '2021-03-02', 'a:1:{i:0;s:2:\"18\";}', 1, 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"5\";}', 395, '10:00:13');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `resume_basic_intro`
--
ALTER TABLE `resume_basic_intro`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `resume_image`
--
ALTER TABLE `resume_image`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 資料表索引 `resume_login`
--
ALTER TABLE `resume_login`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `resume_porfolio`
--
ALTER TABLE `resume_porfolio`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `resume_self_intro`
--
ALTER TABLE `resume_self_intro`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `resume_skills`
--
ALTER TABLE `resume_skills`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `resume_sk_text`
--
ALTER TABLE `resume_sk_text`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `resume_work_experience`
--
ALTER TABLE `resume_work_experience`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `theater_admin`
--
ALTER TABLE `theater_admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `theater_carousel`
--
ALTER TABLE `theater_carousel`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `theater_heartlog`
--
ALTER TABLE `theater_heartlog`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `theater_mem`
--
ALTER TABLE `theater_mem`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `theater_movie`
--
ALTER TABLE `theater_movie`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `theater_news`
--
ALTER TABLE `theater_news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `theater_order`
--
ALTER TABLE `theater_order`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `resume_basic_intro`
--
ALTER TABLE `resume_basic_intro`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `resume_image`
--
ALTER TABLE `resume_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `resume_login`
--
ALTER TABLE `resume_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `resume_porfolio`
--
ALTER TABLE `resume_porfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `resume_self_intro`
--
ALTER TABLE `resume_self_intro`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `resume_skills`
--
ALTER TABLE `resume_skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `resume_sk_text`
--
ALTER TABLE `resume_sk_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `resume_work_experience`
--
ALTER TABLE `resume_work_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `theater_admin`
--
ALTER TABLE `theater_admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `theater_carousel`
--
ALTER TABLE `theater_carousel`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `theater_heartlog`
--
ALTER TABLE `theater_heartlog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `theater_mem`
--
ALTER TABLE `theater_mem`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `theater_movie`
--
ALTER TABLE `theater_movie`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `theater_news`
--
ALTER TABLE `theater_news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `theater_order`
--
ALTER TABLE `theater_order`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
