/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 8.0.33 : Database - bdtrabalhadores
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bdtrabalhadores` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `bdtrabalhadores`;

/*Table structure for table `trabalhadores` */

DROP TABLE IF EXISTS `trabalhadores`;

CREATE TABLE `trabalhadores` (
  `cpf` varchar(14) NOT NULL,
  `nome` varchar(120) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `salario` float DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trabalhadores` */

insert  into `trabalhadores`(`cpf`,`nome`,`idade`,`salario`) values 
('111.222.333-44','Ana Lopes Lima',23,3500),
('222.222.333-33','Pedro Alves',44,3800),
('2323232311','Luisito Linares',22,7890);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
