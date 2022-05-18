-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 05 月 19 日 00:18
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
-- 資料表結構 `tags`
--

CREATE TABLE `tags` (
  `sid` int(11) NOT NULL,
  `tag_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `tags`
--

INSERT INTO `tags` (`sid`, `tag_name`) VALUES
(1, '麥克風'),
(2, '美食'),
(3, '螢光棒'),
(4, '愛心'),
(5, '帽子');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tags`
--
ALTER TABLE `tags`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;
