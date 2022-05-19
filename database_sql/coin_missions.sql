-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 05 月 19 日 00:20
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
-- 資料表結構 `coin_missions`
--

CREATE TABLE `coin_missions` (
  `sid` int(11) NOT NULL,
  `user_sid` int(11) NOT NULL,
  `coin_mission_login` tinyint(1) NOT NULL,
  `coin_mission_test` tinyint(1) NOT NULL,
  `coin_mission_createimg` tinyint(1) NOT NULL,
  `coin_mission_messenge` tinyint(1) NOT NULL,
  `coin_mission_ad` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `coin_missions`
--
ALTER TABLE `coin_missions`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `user_sid` (`user_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coin_missions`
--
ALTER TABLE `coin_missions`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `coin_missions`
--
ALTER TABLE `coin_missions`
  ADD CONSTRAINT `coin_missions_ibfk_1` FOREIGN KEY (`user_sid`) REFERENCES `members` (`user_id`);
COMMIT;
