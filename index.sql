

CREATE TABLE IF NOT EXISTS `wechat_public_platform` (
  `p_id` INT unsigned NOT NULL AUTO_INCREMENT COMMENT '平台编号',
  `appid` CHAR(18) NOT NULL COMMENT '第三方用户唯一凭证',
  `appsecret` CHAR(32) NOT NULL COMMENT '第三方用户唯一凭证密钥',
  `status` TINYINT unsigned DEFAULT '0' COMMENT '状态 0未删除 1已删除',
  `delete_time` INT unsigned DEFAULT '0' COMMENT '删除时间',
  `update_time` INT unsigned DEFAULT '0' COMMENT '最后更新时间',
  `create_time` INT unsigned DEFAULT '0' COMMENT '创建时间',
  `creator` INT unsigned DEFAULT '0' COMMENT '创建人',
  PRIMARY KEY (`p_id`),
  UNIQUE KEY (`appid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信公众平台';
