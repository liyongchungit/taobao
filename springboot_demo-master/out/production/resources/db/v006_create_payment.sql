
CREATE TABLE IF NOT EXISTS `payment` (
  `pay_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` TINYINT NULL COMMENT '0-支付宝，1-微信',
  `amount` INTEGER(30) NULL COMMENT '金额',
   `status` TINYINT Null comment '1-upaid,2-paying,3-paid',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pay_id`)
  )
ENGINE = InnoDB;


