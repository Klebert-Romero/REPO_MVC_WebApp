-- MySQL Workbench Forward Engineering



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- -----------------------------------------------------
-- Schema carteleradb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `carteleradb2` ;

-- -----------------------------------------------------
-- Schema carteleradb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `carteleradb2` DEFAULT CHARACTER SET utf8 ;
USE `carteleradb2` ;

-- -----------------------------------------------------
-- Table `carteleradb`.`Cine`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `carteleradb2`.`cine` ;

CREATE TABLE IF NOT EXISTS `carteleradb2`.`cine` (
  `idCine` INT NOT NULL auto_increment,
  `razonSocial` VARCHAR(100) NOT NULL,
  `nombre` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idCine`))
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Table `carteleradb`.`Pelicula`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `carteleradb2`.`pelicula` ;

CREATE TABLE IF NOT EXISTS `carteleradb2`.`pelicula` (
  `idPelicula` INT NOT NULL auto_increment,
  `nombre` VARCHAR(45) NOT NULL,
  `duracion` VARCHAR(10) NULL,
  `clasificacion` VARCHAR(20) NULL,
  `idioma` VARCHAR(20) NULL,
  `genero` VARCHAR(20) NULL,
  `formato` VARCHAR(3) NULL,
  `sinopsis` VARCHAR(200) NULL,
  PRIMARY KEY (`idPelicula`))
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Table `carteleradb`.`Categoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `carteleradb2`.`categoria` ;

CREATE TABLE IF NOT EXISTS `carteleradb2`.`categoria` (
  `idCategoria` INT NOT NULL auto_increment,
  `codigo` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- -----------------------------------------------------
-- Table `carteleradb`.`Sede`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `carteleradb2`.`sede` ;

CREATE TABLE IF NOT EXISTS `carteleradb2`.`sede` (
  `idSede` INT NOT NULL auto_increment,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `categoria` INT NOT NULL,
  `cine` INT NOT NULL,
  PRIMARY KEY (`idSede`),
  KEY `fk_Sede_Categoria` USING HASH (`categoria`),
  KEY `fk_Sede_Cine` USING HASH (`cine`),
  CONSTRAINT `fk_Sede_Categoria`
    FOREIGN KEY (`categoria`)
    REFERENCES `carteleradb2`.`categoria` (`idCategoria`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Sede_Cine`
    FOREIGN KEY (`cine`)
    REFERENCES `carteleradb2`.`cine` (`idCine`)
    ON UPDATE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- -----------------------------------------------------
-- Table `carteleradb`.`Sala`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `carteleradb2`.`sala` ;

CREATE TABLE IF NOT EXISTS `carteleradb2`.`sala` (
  `idSala` INT NOT NULL auto_increment,
  `nombre` VARCHAR(10) NOT NULL,
  `capacidad` INT NULL,
  `sede` INT NOT NULL,
  PRIMARY KEY (`idSala`),
  KEY `fk_Sala_Sede` USING HASH (`sede`),
  CONSTRAINT `fk_Sala_Sede`
    FOREIGN KEY (`sede`)
    REFERENCES `carteleradb2`.`sede` (`idSede`)
    ON UPDATE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- -----------------------------------------------------
-- Table `carteleradb`.`Funciones`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `carteleradb2`.`funciones` ;

CREATE TABLE IF NOT EXISTS `carteleradb2`.`funciones` (
  `idFunciones` INT NOT NULL auto_increment,
  `horaInicio` VARCHAR(20) NOT NULL,
  `horaFin` VARCHAR(20) NOT NULL,
  `precio` VARCHAR(20) NOT NULL,
  `sala` INT NOT NULL,
  `pelicula` INT NOT NULL,
  PRIMARY KEY (`idFunciones`),
  KEY `fk_Funciones_Sala` USING HASH (`sala`),
  KEY `fk_Funciones_Pelicula` USING HASH (`pelicula`),
  CONSTRAINT `fk_Funciones_Sala`
    FOREIGN KEY (`sala`)
    REFERENCES `carteleradb2`.`sala` (`idSala`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funciones_Pelicula`
    FOREIGN KEY (`pelicula`)
    REFERENCES `carteleradb2`.`pelicula` (`idPelicula`)
    ON UPDATE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=utf8;





/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
commit;