CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order_id` INT NULL,
  `oder_detail_uuid` VARCHAR(150) NULL,
  `order_size` VARCHAR(45) NULL,
  `order_color` VARCHAR(45) NULL,
  `order_price` DECIMAL(13,2) NULL,
  `order_quantity` INT NULL,
  `order_subtotal` DECIMAL(13,2) NULL,
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
  PRIMARY KEY (`id`),
  INDEX `FK_ORDER_ORDER_DETAIL_idx` (`order_id`),
  CONSTRAINT `FK_ORDER_ORDER_DETAIL`
    FOREIGN KEY (`order_id`)
    REFERENCES `order` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB