-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 05 月 20 日 15:39
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
-- 資料表結構 `item_hot`
--

CREATE TABLE `item_hot` (
  `sid` int(11) NOT NULL,
  `hot_type` int(11) NOT NULL,
  `items_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `item_hot`
--
ALTER TABLE `item_hot`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `items_sid` (`items_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `item_hot`
--
ALTER TABLE `item_hot`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `item_hot`
--
ALTER TABLE `item_hot`
  ADD CONSTRAINT `item_hot_ibfk_1` FOREIGN KEY (`items_sid`) REFERENCES `items` (`sid`);
COMMIT;
