-- 切换数据库
use rainbond;

-- 升级表结构
ALTER TABLE `rainbond`.`role_info` ADD `create_time` datetime DEFAULT NULL;