-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LittleLemonDB` DEFAULT CHARACTER SET utf8 ;
USE `LittleLemonDB` ;

-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`Customers` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Customers` (
  `CustomerID` INT NOT NULL,
  `CustomerFirstName` VARCHAR(45) NOT NULL,
  `CustomerLastName` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `ContactNumber` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Staff`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`Staff` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Staff` (
  `StaffID` INT NOT NULL,
  `StaffFirstName` VARCHAR(45) NULL,
  `StaffLastName` VARCHAR(45) NULL,
  `StaffRole` VARCHAR(45) NULL,
  `StaffSalary` DECIMAL(10,2) NULL,
  PRIMARY KEY (`StaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Bookings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`Bookings` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Bookings` (
  `BookingID` INT NOT NULL,
  `BookingDate` DATETIME NOT NULL,
  `TableNumber` VARCHAR(45) NOT NULL,
  `NumberOfGuests` VARCHAR(45) NOT NULL,
  `CustomerID` INT NOT NULL,
  `StaffID` INT NULL,
  PRIMARY KEY (`BookingID`),
  INDEX `Bookings-Customer_idx` (`CustomerID` ASC) VISIBLE,
  INDEX `Booking-Staff_idx` (`StaffID` ASC) VISIBLE,
  CONSTRAINT `Bookings-Customer`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `LittleLemonDB`.`Customers` (`CustomerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `Booking-Staff`
    FOREIGN KEY (`StaffID`)
    REFERENCES `LittleLemonDB`.`Staff` (`StaffID`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`MenuItems`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`MenuItems` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`MenuItems` (
  `MenuItemID` INT NOT NULL,
  `Category` VARCHAR(45) NOT NULL,
  `ItemName` VARCHAR(45) NOT NULL,
  `Price` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`MenuItemID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`Orders` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Orders` (
  `OrderID` INT NOT NULL,
  `BookingID` INT NOT NULL,
  `OrderDate` DATE NOT NULL,
  `TotalCost` DECIMAL(10,2) NOT NULL,
  `CustomerID` INT NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `Customers-Orders_idx` (`CustomerID` ASC) VISIBLE,
  INDEX `Booking-Orders_idx` (`BookingID` ASC) VISIBLE,
  CONSTRAINT `Customers-Orders`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `LittleLemonDB`.`Customers` (`CustomerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `Booking-Orders`
    FOREIGN KEY (`BookingID`)
    REFERENCES `LittleLemonDB`.`Bookings` (`BookingID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`CustomerAddresses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`CustomerAddresses` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`CustomerAddresses` (
  `AddressID` INT NOT NULL,
  `Street` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `PostalCode` VARCHAR(45) NULL,
  `State` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `CustomerID` INT NOT NULL,
  PRIMARY KEY (`AddressID`),
  INDEX `Customer-Addresses_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `Customer-Addresses`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `LittleLemonDB`.`Customers` (`CustomerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`OrderDeliveryStatus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`OrderDeliveryStatus` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`OrderDeliveryStatus` (
  `DeliveryID` INT NOT NULL,
  `DeliveryDate` DATE NOT NULL,
  `DeliveryStatus` VARCHAR(45) NOT NULL,
  `AddressID` INT NOT NULL,
  `OrderID` INT NOT NULL,
  PRIMARY KEY (`DeliveryID`),
  INDEX `Orders-OrderDeliveryS_idx` (`OrderID` ASC) VISIBLE,
  INDEX `Address-OrderDeliveryS_idx` (`AddressID` ASC) VISIBLE,
  CONSTRAINT `Orders-OrderDeliveryS`
    FOREIGN KEY (`OrderID`)
    REFERENCES `LittleLemonDB`.`Orders` (`OrderID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `Address-OrderDeliveryS`
    FOREIGN KEY (`AddressID`)
    REFERENCES `LittleLemonDB`.`CustomerAddresses` (`AddressID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`OrderDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDB`.`OrderDetails` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`OrderDetails` (
  `OrderID` INT NOT NULL,
  `Quantity` INT NOT NULL,
  `MenuItemID` INT NOT NULL,
  PRIMARY KEY (`OrderID`, `MenuItemID`),
  INDEX `MenuItem-OrderDetails_idx` (`MenuItemID` ASC) VISIBLE,
  CONSTRAINT `Order-OrderDetails`
    FOREIGN KEY (`OrderID`)
    REFERENCES `LittleLemonDB`.`Orders` (`OrderID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `MenuItem-OrderDetails`
    FOREIGN KEY (`MenuItemID`)
    REFERENCES `LittleLemonDB`.`MenuItems` (`MenuItemID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
