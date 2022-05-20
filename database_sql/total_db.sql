-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 05 月 20 日 10:47
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

-- --------------------------------------------------------

--
-- 資料表結構 `followed_list`
--

CREATE TABLE `followed_list` (
  `sid` int(11) NOT NULL,
  `items_sid` int(11) NOT NULL,
  `user_sid` int(11) NOT NULL,
  `followed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `items`
--

CREATE TABLE `items` (
  `sid` int(11) NOT NULL,
  `item_categories_sid` int(11) NOT NULL DEFAULT 1,
  `item_name` varchar(60) NOT NULL,
  `item_img` varchar(500) NOT NULL,
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

INSERT INTO `items` (`sid`, `item_categories_sid`, `item_name`, `item_img`, `item_price`, `item_introduction`, `item_author`, `item_story`, `item_type`, `item_created_at`) VALUES
(1, 1, '珍珠奶茶', 'vox_hand_left_BubbleTea.png', 100, '口感特別的台灣之光飲料，喝過的人都愛不釋口！', '4LpWeuvZ', 'Vox意外得到了粉絲請的珍奶，一試成主顧～', '物品', '2022-04-07');

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

-- --------------------------------------------------------

--
-- 資料表結構 `item_tags`
--

CREATE TABLE `item_tags` (
  `sid` int(11) NOT NULL,
  `items_sid` int(11) NOT NULL,
  `tags_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `user_img` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_mobile` varchar(255) DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `activated` int(11) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`user_id`, `user_name`, `user_img`, `user_email`, `user_password`, `user_mobile`, `hash`, `activated`, `create_at`) VALUES
(1, '李大仁', '', 'lee123@gmail.com', '123456', '0988123456', '', 0, '2022-05-20 10:28:01');

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `sid` int(11) NOT NULL,
  `user_sid` int(11) NOT NULL,
  `order_number` varchar(60) NOT NULL,
  `token_type` tinyint(1) NOT NULL,
  `price_total` int(11) NOT NULL,
  `order_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `order_details`
--

CREATE TABLE `order_details` (
  `sid` int(11) NOT NULL,
  `order_sid` int(11) NOT NULL,
  `items_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `own_list`
--

CREATE TABLE `own_list` (
  `sid` int(11) NOT NULL,
  `items_sid` int(11) NOT NULL,
  `user_sid` int(11) NOT NULL,
  `order_details_sid` int(11) NOT NULL,
  `own_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- 資料表索引 `coin_missions`
--
ALTER TABLE `coin_missions`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `user_sid` (`user_sid`);

--
-- 資料表索引 `followed_list`
--
ALTER TABLE `followed_list`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `items_sid` (`items_sid`),
  ADD KEY `user_sid` (`user_sid`);

--
-- 資料表索引 `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `item_categories_sid` (`item_categories_sid`);

--
-- 資料表索引 `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `item_tags`
--
ALTER TABLE `item_tags`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `items_sid` (`items_sid`),
  ADD KEY `tags_sid` (`tags_sid`);

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`user_id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `user_sid` (`user_sid`);

--
-- 資料表索引 `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `order_sid` (`order_sid`),
  ADD KEY `items_sid` (`items_sid`);

--
-- 資料表索引 `own_list`
--
ALTER TABLE `own_list`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `items_sid` (`items_sid`),
  ADD KEY `user_sid` (`user_sid`),
  ADD KEY `order_details_sid` (`order_details_sid`);

--
-- 資料表索引 `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coin_missions`
--
ALTER TABLE `coin_missions`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `followed_list`
--
ALTER TABLE `followed_list`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `items`
--
ALTER TABLE `items`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `item_tags`
--
ALTER TABLE `item_tags`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_details`
--
ALTER TABLE `order_details`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `own_list`
--
ALTER TABLE `own_list`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tags`
--
ALTER TABLE `tags`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `coin_missions`
--
ALTER TABLE `coin_missions`
  ADD CONSTRAINT `coin_missions_ibfk_1` FOREIGN KEY (`user_sid`) REFERENCES `members` (`user_id`);

--
-- 資料表的限制式 `followed_list`
--
ALTER TABLE `followed_list`
  ADD CONSTRAINT `followed_list_ibfk_1` FOREIGN KEY (`items_sid`) REFERENCES `items` (`sid`),
  ADD CONSTRAINT `followed_list_ibfk_2` FOREIGN KEY (`user_sid`) REFERENCES `members` (`user_id`);

--
-- 資料表的限制式 `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`item_categories_sid`) REFERENCES `item_categories` (`sid`);

--
-- 資料表的限制式 `item_tags`
--
ALTER TABLE `item_tags`
  ADD CONSTRAINT `item_tags_ibfk_1` FOREIGN KEY (`items_sid`) REFERENCES `items` (`sid`),
  ADD CONSTRAINT `item_tags_ibfk_2` FOREIGN KEY (`tags_sid`) REFERENCES `tags` (`sid`);

--
-- 資料表的限制式 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_sid`) REFERENCES `members` (`user_id`);

--
-- 資料表的限制式 `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_sid`) REFERENCES `orders` (`sid`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`items_sid`) REFERENCES `items` (`sid`);

--
-- 資料表的限制式 `own_list`
--
ALTER TABLE `own_list`
  ADD CONSTRAINT `own_list_ibfk_1` FOREIGN KEY (`items_sid`) REFERENCES `items` (`sid`),
  ADD CONSTRAINT `own_list_ibfk_2` FOREIGN KEY (`user_sid`) REFERENCES `members` (`user_id`),
  ADD CONSTRAINT `own_list_ibfk_3` FOREIGN KEY (`order_details_sid`) REFERENCES `order_details` (`sid`);
COMMIT;
