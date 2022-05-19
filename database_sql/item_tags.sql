-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 05 月 19 日 00:25
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
-- 資料表結構 `item_tags`
--

CREATE TABLE `item_tags` (
  `sid` int(11) NOT NULL,
  `items_sid` int(11) NOT NULL,
  `tags_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `item_tags`
--
ALTER TABLE `item_tags`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `items_sid` (`items_sid`),
  ADD KEY `tags_sid` (`tags_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `item_tags`
--
ALTER TABLE `item_tags`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `item_tags`
--
ALTER TABLE `item_tags`
  ADD CONSTRAINT `item_tags_ibfk_1` FOREIGN KEY (`items_sid`) REFERENCES `items` (`sid`),
  ADD CONSTRAINT `item_tags_ibfk_2` FOREIGN KEY (`tags_sid`) REFERENCES `tags` (`sid`);
COMMIT;
