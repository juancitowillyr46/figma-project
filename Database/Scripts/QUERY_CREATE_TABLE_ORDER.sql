CREATE TABLE IF NOT EXISTS `order` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `order_uuid` VARCHAR(150) NULL,
  `product_id` INT(10) NULL,
  `order_quantity` INT(10) NULL,
  `order_total` DECIMAL(13,2) NULL,
  `order_timestamp` VARCHAR(45) NULL,
  `createdon` DATETIME NULL,
  `createdby` INT(10) NULL,
  `editedon` DATETIME NULL,
  `editedby` INT(10) NULL,
  `deletedon` DATETIME NULL,
  `deletedby` INT(10) NULL,
  `publishedon` DATETIME NULL,
  `publishedby` INT(10) NULL,
  `published` TINYINT NULL,
  `active` TINYINT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB