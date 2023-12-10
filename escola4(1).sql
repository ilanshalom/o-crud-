/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 8.0.33 : Database - escola4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`escola4` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `escola4`;

/*Table structure for table `professores` */

DROP TABLE IF EXISTS `professores`;

CREATE TABLE `professores` (
  `codigo` int NOT NULL,
  `nome` varbinary(120) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `professores` */

insert  into `professores`(`codigo`,`nome`,`salario`,`sexo`) values 
(101,'Martha Lima',2500,'F'),
(102,'Caio Fernandes',3300,'M'),
(103,'Ana Lopes',7000,'F'),
(104,'Pedro Dias',6500,'M'),
(109,'William D. Dias',5550,'M'),
(110,'Beatriz Alves',6000,'F'),
(133,'Luiz Alves',4500,'M'),
(134,'Euclides Lima',3780,'M'),
(135,'Bruna Souza',5600,'F'),
(138,'Renata Prime',8900,'F'),
(177,'Orlando A. Lima',3800,'M'),
(179,'Miriam Peres',9000,'F'),
(190,'Lara Cabana',8500,'F'),
(198,'Alfonso M. Padura',7900,'M'),
(5690,'Luis Alves Lima',8900,'M'),
(6901,'Mariano da Conceição',1234,'M');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
