-- create db
create database guanxin default character set utf8mb4 collate utf8mb4_unicode_ci;

use guanxin
-- create table user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL COMMENT '用户名称',
  `phone` VARCHAR(255) NULL COMMENT '用户手机',
  `gender` TINYINT NULL COMMENT '性别，0-男，1-女',
    `password`  VARCHAR(30) NULL COMMENT '密码',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `user_phone_uiq` (`phone` ASC),
  INDEX `user_gender_idx` (`gender` ASC))
ENGINE = InnoDB;



