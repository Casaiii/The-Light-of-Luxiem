-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 05 月 19 日 00:24
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
(1, '熱銷排名', 0, 0),
(2, '情人節特輯', 0, 0),
(3, '演唱會專場', 0, 0),
(4, '配件物品', 0, 0),
(5, '手部裝飾', 0, 0),
(6, '頭部裝飾', 0, 0),
(7, '身體裝飾', 0, 0),
(8, '場景', 0, 0),
(9, 'Vox Akuma', 4, 1),
(10, 'Ike Eveland', 4, 2),
(11, 'Mysta Rias', 4, 3),
(12, 'Luca Kaneshiro', 4, 4),
(13, 'Shu Yamino', 4, 5),
(14, 'Vox Akuma', 5, 1),
(15, 'Ike Eveland', 5, 2),
(16, 'Mysta Rias', 5, 3),
(17, 'Luca Kaneshiro', 5, 4),
(18, 'Shu Yamino', 5, 5),
(19, 'Vox Akuma', 6, 1),
(20, 'Ike Eveland', 6, 2),
(21, 'Mysta Rias', 6, 3),
(22, 'Luca Kaneshiro', 6, 4),
(23, 'Shu Yamino', 6, 5),
(24, 'Vox Akuma', 7, 1),
(25, 'Ike Eveland', 7, 2),
(26, 'Mysta Rias', 7, 3),
(27, 'Luca Kaneshiro', 7, 4),
(28, 'Shu Yamino', 7, 5),
(29, 'Vox Akuma', 8, 1),
(30, 'Ike Eveland', 8, 2),
(31, 'Mysta Rias', 8, 3),
(32, 'Luca Kaneshiro', 8, 4),
(33, 'Shu Yamino', 8, 5);

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
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;
