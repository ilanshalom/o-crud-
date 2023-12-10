/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.5.28 : Database - consultorio
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`consultorio` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `consultorio`;

/*Table structure for table `agendamentos` */

DROP TABLE IF EXISTS `agendamentos`;

CREATE TABLE `agendamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(20) DEFAULT NULL,
  `data` varchar(10) DEFAULT NULL,
  `hora` varchar(5) DEFAULT NULL,
  `procedimento` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `agendamentos` */

/*Table structure for table `pacientes` */

DROP TABLE IF EXISTS `pacientes`;

CREATE TABLE `pacientes` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `nascimento` varchar(10) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pacientes` */

insert  into `pacientes`(`cpf`,`nome`,`nascimento`,`endereco`) values 
('111.111.111-11','Beatriz Lopes Lima','21/02/1989','Rua Prof. Pedro L., 344, apt 2'),
('121.212.121-21','Ana Silva','21/11/1988','R. da Paz, 3409, apt 221 interior'),
('176.874.567-54','José Lopes','04/11/2000','Av. Consolação 456, apt 202 A'),
('333.333.333-33','Luis Peres','12/08/1943','Rua Prof. Alberto Lopes, 434, apt 1234'),
('334.334.334-34','Murilo Sierra','14/01/1977','Rua Limeira, 721'),
('444.444.444-44','Kaio Cesar Fernande','12/09/1979','Av. Paulist, 1234'),
('555.555.555-55','Lea Lopes','10/10/1998','Rua Prof. Luis A, 234, apt 222'),
('787.878.787-87','Pedro Rei','21/10/1990','Av. Monte Alegre, 456'),
('989.876.123-11','Luiza Alves','04/12/1959','Rua Vilela, 724');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
