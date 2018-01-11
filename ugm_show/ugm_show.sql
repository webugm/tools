CREATE TABLE `ugm_show_users` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '使用者編號',
  `name` varchar(255) NOT NULL COMMENT '使用者姓名',
  `email` varchar(255) NOT NULL COMMENT '使用者Email',
  `pass` varchar(255) NOT NULL COMMENT '使用者密碼',
  `group` enum('user','admin') NOT NULL COMMENT '使用者群組',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `ugm_show_prod` (
`sn` int(10) unsigned NOT NULL auto_increment comment 'prod_sn',
`kind` smallint(5) unsigned NOT NULL default 0 comment '分類',
`title` varchar(255) NOT NULL default '' comment '名稱',
`summary` text NULL comment '摘要',
`content` text NULL comment '內容',
`price` int(10) unsigned NOT NULL comment '價格',
`amount` int(10) unsigned NOT NULL comment '數量',
`enable` enum('1','0') NOT NULL default '1' comment '狀態',
`choice` enum('1','0') NOT NULL default '0' comment '精選',
`date` int(10) unsigned NOT NULL default 0 comment '建立日期',
`sort` smallint(5) unsigned NOT NULL default 0 comment '排序',
`counter` int(10) unsigned NOT NULL default 0 comment '人氣',
`icon` varchar(255) NOT NULL default ''  comment '圖示',
PRIMARY KEY  (`sn`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;


CREATE TABLE `ugm_show_kind` (
`sn` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'sn',
`ofsn` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT '父類別',
`kind` varchar(255) NOT NULL DEFAULT '' COMMENT '分類',
`title` varchar(255) NOT NULL DEFAULT '' COMMENT '標題',
`sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
`enable` enum('1','0') NOT NULL DEFAULT '1' COMMENT '狀態',
`url` varchar(255) NOT NULL DEFAULT '' COMMENT '網址',
`target` enum('1','0') NOT NULL DEFAULT '0' COMMENT '外連',
`col_sn` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'col_sn',
`content` text NULL COMMENT '內容',
PRIMARY KEY (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `ugm_show_files_center` (
`files_sn` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '檔案流水號',
`col_name` varchar(255) NOT NULL DEFAULT '' COMMENT '欄位名稱',
`col_sn` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '欄位編號',
`sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
`kind` enum('img','file') NOT NULL DEFAULT 'img' COMMENT '檔案種類',
`file_name` varchar(255) NOT NULL DEFAULT '' COMMENT '檔案名稱',
`file_type` varchar(255) NOT NULL DEFAULT '' COMMENT '檔案類型',
`file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '檔案大小',
`description` text  NULL COMMENT '檔案說明',
`counter` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '下載人次',
`original_filename` varchar(255) NOT NULL DEFAULT '' COMMENT '檔案名稱',
`hash_filename` varchar(255) NOT NULL DEFAULT '' COMMENT '加密檔案名稱',
`sub_dir` varchar(255) NOT NULL DEFAULT '' COMMENT '檔案子路徑',
PRIMARY KEY (`files_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;