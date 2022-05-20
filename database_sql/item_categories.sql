-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 05 月 20 日 15:38
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
-- 資料表結構 `item_categories`
--

CREATE TABLE `item_categories` (
  `sid` int(11) NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `parent_sid` int(11) NOT NULL DEFAULT 0,
  `sequence` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `item_categories`
--

INSERT INTO `item_categories` (`sid`, `category_name`, `parent_sid`, `sequence`) VALUES
(1, '配件物品', 0, 0),
(2, '手部裝飾', 0, 0),
(3, '頭部裝飾', 0, 0),
(4, '身體裝飾', 0, 0),
(5, 'Vox Akuma', 1, 1),
(6, 'Ike Eveland', 1, 2),
(7, 'Mysta Rias', 1, 3),
(8, 'Luca Kaneshiro', 1, 4),
(9, 'Shu Yamino', 1, 5),
(10, 'Vox Akuma', 2, 1),
(11, 'Ike Eveland', 2, 2),
(12, 'Mysta Rias', 2, 3),
(13, 'Luca Kaneshiro', 2, 4),
(14, 'Shu Yamino', 2, 5),
(15, 'Vox Akuma', 3, 1),
(16, 'Ike Eveland', 3, 2),
(17, 'Mysta Rias', 3, 3),
(18, 'Luca Kaneshiro', 3, 4),
(19, 'Shu Yamino', 3, 5),
(20, 'Vox Akuma', 4, 1),
(21, 'Ike Eveland', 4, 2),
(22, 'Mysta Rias', 4, 3),
(23, 'Luca Kaneshiro', 4, 4),
(24, 'Shu Yamino', 4, 5);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;
