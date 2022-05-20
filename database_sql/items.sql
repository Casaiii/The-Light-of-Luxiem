-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 05 月 20 日 15:37
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 8.0.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- 資料庫: `0518luxiem`
--

-- --------------------------------------------------------

--
-- 資料表結構 `items`
--

CREATE TABLE `items` (
  `sid` int(11) NOT NULL,
  `item_categories_sid` int(11) NOT NULL DEFAULT 1,
  `item_name` varchar(60) NOT NULL,
  `item_img` varchar(500) NOT NULL,
  `item_img_position` varchar(60) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_introduction` varchar(255) NOT NULL,
  `item_author` varchar(60) NOT NULL,
  `item_story` varchar(255) NOT NULL,
  `item_type` varchar(60) NOT NULL,
  `item_created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `items`
--

INSERT INTO `items` (`sid`, `item_categories_sid`, `item_name`, `item_img`, `item_img_position`, `item_price`, `item_introduction`, `item_author`, `item_story`, `item_type`, `item_created_at`) VALUES
(1, 10, '珍珠奶茶', 'vox_hand_left_BubbleTea.png', 'left', 100, '口感特別的台灣之光飲料，喝過的人都愛不釋口！', '4LpWeuvZ', 'Vox意外得到了粉絲請的珍奶，一試成主顧～', '物品', '2022-04-07');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `item_categories_sid` (`item_categories_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `items`
--
ALTER TABLE `items`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`item_categories_sid`) REFERENCES `item_categories` (`sid`);
COMMIT;
