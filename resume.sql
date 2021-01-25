-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-01-25 07:24:03
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `resume`
--

-- --------------------------------------------------------

--
-- 資料表結構 `basic_intro`
--

CREATE TABLE `basic_intro` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `addr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graduate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `basic_intro`
--

INSERT INTO `basic_intro` (`id`, `name`, `addr`, `email`, `graduate`, `position`) VALUES
(1, '庭瑋', '新北市, 永和區', 'yuan097@kimo.com', '德明財經科技大學—行銷管理系', '前/後端工程師[全職]');

-- --------------------------------------------------------

--
-- 資料表結構 `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wk` tinyint(1) DEFAULT NULL,
  `por` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `porName` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `image`
--

INSERT INTO `image` (`id`, `img`, `sh`, `intro`, `wk`, `por`, `porName`) VALUES
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
(81, 'por20210125021856.jpg', 1, NULL, NULL, '1', '假作品4');

-- --------------------------------------------------------

--
-- 資料表結構 `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `acc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `login`
--

INSERT INTO `login` (`id`, `acc`, `pw`) VALUES
(1, 'chel', '123455');

-- --------------------------------------------------------

--
-- 資料表結構 `porfolio`
--

CREATE TABLE `porfolio` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sh` tinyint(1) NOT NULL,
  `del` tinyint(1) DEFAULT NULL,
  `php` tinyint(1) UNSIGNED DEFAULT NULL,
  `mysql` tinyint(1) UNSIGNED DEFAULT NULL,
  `js` tinyint(1) UNSIGNED DEFAULT NULL,
  `jquery` tinyint(1) UNSIGNED DEFAULT NULL,
  `css` tinyint(1) UNSIGNED DEFAULT NULL,
  `bootstrap` tinyint(1) UNSIGNED DEFAULT NULL,
  `ps` int(10) UNSIGNED DEFAULT NULL,
  `ai` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `porfolio`
--

INSERT INTO `porfolio` (`id`, `name`, `href`, `sh`, `del`, `php`, `mysql`, `js`, `jquery`, `css`, `bootstrap`, `ps`, `ai`) VALUES
(21, '萬年曆', 'href', 1, 0, 1, 1, NULL, NULL, 1, NULL, NULL, NULL),
(22, '鋼筆繪製女孩', 'href', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(23, '假作品1', 'href', 1, 0, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL),
(24, '假作品2', 'href', 1, 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(25, '假作品3', 'href', 1, 0, 1, 1, NULL, NULL, NULL, NULL, 1, NULL),
(27, '假作品4', 'href', 1, 0, NULL, NULL, NULL, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `self_intro`
--

CREATE TABLE `self_intro` (
  `id` int(10) UNSIGNED NOT NULL,
  `textC` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `textE` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `del` tinyint(1) DEFAULT NULL,
  `sh` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `self_intro`
--

INSERT INTO `self_intro` (`id`, `textC`, `textE`, `del`, `sh`) VALUES
(4, 'BBBBBBBBBBBBBBBBBBBB', 'BBBBBBBBBBBBBBB', 0, 0),
(8, '之前上班之餘,閒暇時間購買了Udemy線上課程自學程式語言,\r\n因緣際會下參加了泰山職訓的甄試便開始學習程式技術,\r\n在寫程式的過程不僅找到了興趣也獲得了些許的成就感,\r\n期盼未來能找到相關工作與公司夥伴們一同進步!', 'Hi! I am Chelsea.\r\nI purchased an online course for studying programming language, currently participating in Taishan vocational training.\r\nduring the period, I also gained some accomplishments.\r\nLooking forward to continued progress on this road.', NULL, 1),
(11, 'AAAAAAAAAAAAAAAAAA', 'AAAAAAAAAAAAAAAAAAAAA', NULL, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `skills`
--

CREATE TABLE `skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `ct` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `skills`
--

INSERT INTO `skills` (`id`, `ct`, `name`, `sh`, `del`) VALUES
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
-- 資料表結構 `sk_text`
--

CREATE TABLE `sk_text` (
  `id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `sk_text`
--

INSERT INTO `sk_text` (`id`, `text`, `title`) VALUES
(1, '我喜歡先用htmlcss先製作靜態網站\r\n包含排版布局配色字體選擇等等\r\n也會注意H標籤使用合理性或各容器層級關係\r\n網站架構大致完成後按照RWD設計適應多種顯示裝置\r\n幫助移動用戶獲得更好的移動頁瀏覽體驗\r\n最後運用javascript做現在主流的動態網頁, ajax做網頁的更新\r\n讓使用者的體驗能夠更好        ', 'frontend'),
(2, '後台建立最重要的是資料庫設計(表中的資訊聯結性應高一些)\r\n妥善設計的資料庫不僅提取資料時sql語法較簡短,\r\n使用到後期資料多時維護起來也方便許多\r\n我做後台傳遞資料時是用php\r\nphp除了跨平台性強, 具備成熟的物件導向且提供豐富的函式\r\n未來也希望能學習其他的程式語言!', 'backend'),
(4, 'PS、AI一直廣為大家熟悉\r\n在泰山培訓這段期間經常性地使用到這兩個軟體\r\n期間製作作品集若找不到適合圖片都會開PS進行素材精緻化或創作\r\n再丟到AI裡排版 轉存為svg檔 就不會有擔心失真的疑慮\r\n', 'graphic_design'),
(5, '在高中大學都是商科的關係加上待過壽險公司\r\n考取了一些金融相關證照\r\n具備基礎的英文聽讀能力\r\n在興趣使然下也取得了日文檢定N3', 'others');

-- --------------------------------------------------------

--
-- 資料表結構 `work_experience`
--

CREATE TABLE `work_experience` (
  `id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `work_experience`
--

INSERT INTO `work_experience` (`id`, `text`, `sh`) VALUES
(1, '犇亞會議中心\r\n櫃檯人員\r\n<hr>說明場地預訂方案並完成訂單\r\n協助電話諮詢、客戶疑問處理\r\n現場顧客之接待\r\n一般文書資料處理及簡易報表製作                                ', 1),
(2, '國泰人壽保險股份有限公司\r\n業務人員\r\n<hr>各項理財商品業務\r\n為顧客做保險規劃及商品說明\r\n維護客戶關係\r\n具備壽險產險外幣及投資型證照', 1),
(3, 'ZARA\r\n專櫃人員\r\n<hr>負責介紹及銷售門市商品\r\n商品進貨入庫、銷售管理及庫存管理\r\n陳列及促銷品換檔工作\r\n顧客關係維護協助、POS帳務作業                                  ', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `basic_intro`
--
ALTER TABLE `basic_intro`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 資料表索引 `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `porfolio`
--
ALTER TABLE `porfolio`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `self_intro`
--
ALTER TABLE `self_intro`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `sk_text`
--
ALTER TABLE `sk_text`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `basic_intro`
--
ALTER TABLE `basic_intro`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `porfolio`
--
ALTER TABLE `porfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `self_intro`
--
ALTER TABLE `self_intro`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sk_text`
--
ALTER TABLE `sk_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
