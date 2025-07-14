/*
SQLyog Community v12.5.0 (64 bit)
MySQL - 10.4.32-MariaDB : Database - bd_utic
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bd_utic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `bd_utic`;

/*Table structure for table `deposito` */

DROP TABLE IF EXISTS `deposito`;

CREATE TABLE `deposito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `capacidad` decimal(10,2) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `deposito` */

insert  into `deposito`(`id`,`codigo`,`nombre`,`ubicacion`,`capacidad`,`fecha_registro`) values 
(1,'DEP00001','Deposito Central','San Lorenzo',12.00,'2025-01-11 19:39:51'),
(2,'DEP00002','Deposito Tercierizado','Asuncion',10.00,'2025-01-12 13:10:30'),
(3,'DEP00003','Deposito Antiguo','Luque',10.00,'2025-01-12 13:10:48');

/*Table structure for table `tbl_credit_note` */

DROP TABLE IF EXISTS `tbl_credit_note`;

CREATE TABLE `tbl_credit_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `series` varchar(10) NOT NULL,
  `number` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `referenced_doc_id` int(11) NOT NULL,
  `referenced_doc_type_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ruc` varchar(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `reference` varchar(300) NOT NULL,
  `payment_days` int(11) NOT NULL,
  `date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `currency` varchar(50) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `discount_rate` float NOT NULL,
  `discount_value` float NOT NULL,
  `total_sub` float NOT NULL,
  `total_tax` float NOT NULL,
  `total_net` float NOT NULL,
  `seller_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_update` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_credit_note` */

insert  into `tbl_credit_note`(`id`,`series`,`number`,`status`,`referenced_doc_id`,`referenced_doc_type_id`,`customer_id`,`ruc`,`name`,`address`,`reference`,`payment_days`,`date`,`delivery_date`,`currency`,`reason`,`discount_rate`,`discount_value`,`total_sub`,`total_tax`,`total_net`,`seller_id`,`user_id`,`registration_date`,`last_update`) values 
(1,'FNC1','0000001',1,2,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',15,'2024-12-18','2024-12-18','ME','ANULACION',0,0,50,9,59,1,1,'2024-12-19 01:35:37','2024-12-19 01:35:37'),
(2,'FNC1','0000002',1,12,1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','',0,'1970-01-01','2025-01-07','MN','DEVOLUCION_TOTAL',0,0,25,4.5,29.5,1,1,'2025-01-07 23:32:28','2025-01-07 23:32:28'),
(3,'FNC1','0000003',1,18,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','DFSDFS',30,'1970-01-01','2025-01-07','MN','DEVOLUCION_TOTAL',0,0,12.5,2.25,14.75,1,1,'2025-01-11 00:37:10','2025-01-11 00:37:10'),
(4,'FNC1','0000004',1,16,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',0,'1970-01-01','2024-12-02','MN','DEVOLUCION_TOTAL',0,0,6937.5,1248.75,8186.25,1,1,'2025-01-14 02:38:24','2025-01-14 02:38:24'),
(5,'FNC1','0000005',1,15,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',0,'1970-01-01','2024-12-02','MN','CORRECCION',0,0,6937.5,1248.75,8186.25,1,1,'2025-01-14 02:38:47','2025-01-13 22:52:46'),
(6,'FNC1','0000006',1,5,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',15,'1970-01-01','2024-12-18','ME','CORRECCION',0,0,25125,4522.5,29647.5,1,1,'2025-01-14 02:39:22','2025-01-13 22:52:42'),
(7,'FNC1','0000007',1,2,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',15,'2024-12-18','2024-12-18','ME','CORRECCION',0,0,25000,4500,29500,1,1,'2025-01-14 02:53:22','2025-01-14 02:53:22'),
(8,'FNC1','0000008',1,18,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','DFSDFS',30,'1970-01-01','2025-01-07','MN','CORRECCION',0,0,20,3.6,23.6,1,1,'2025-01-14 03:01:45','2025-01-14 03:01:45'),
(9,'FNC1','0000009',1,18,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','DFSDFS',30,'1970-01-01','2025-01-07','MN','DEVOLUCION_TOTAL',0,0,12.5,2.25,14.75,1,1,'2025-01-14 04:14:20','2025-01-14 04:14:20'),
(10,'FNC1','0000010',1,9,1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Sin Referencias',0,'1970-01-01','2024-12-30','MN','DEVOLUCION_TOTAL',25,950.055,7500,1350,7899.94,1,1,'2025-01-14 04:19:24','2025-01-14 04:19:24'),
(11,'FNC1','0000011',4,0,1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Petropar',0,'2025-01-14','2025-01-14','MN','OTROS',0,0,7500,1350,8850,1,1,'2025-01-14 23:01:55','2025-01-15 01:53:17'),
(12,'FNC1','0000012',1,11,1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Petropar',15,'2025-01-02','2025-01-02','MN','DEVOLUCION_ITEM',0,0,2500,450,2950,1,1,'2025-01-15 01:50:36','2025-01-15 01:50:36'),
(13,'FNC1','0000013',1,7,1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Sin Referencias',45,'1970-01-01','2024-12-30','MN','CORRECCION',0,0,2500,450,2950,1,1,'2025-01-15 05:54:12','2025-01-15 05:54:12'),
(14,'FNC1','0000014',1,19,1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','',0,'2025-01-14','2025-01-14','MN','CORRECCION',0,0,5000,900,5900,1,1,'2025-01-15 05:54:47','2025-01-15 05:54:47'),
(15,'FNC1','0000015',1,20,1,0,'12142142','bRIAN','Av. España 1234, Asunción','Petropar',0,'1970-01-01','2025-01-07','MN','DEVOLUCION_TOTAL',0,0,62,11.16,73.16,1,1,'2025-01-15 06:37:53','2025-01-15 06:37:53'),
(16,'FNC1','0000016',1,13,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',15,'1970-01-01','2025-01-07','MN','ANULACION',0,0,2525,454.5,2979.5,1,1,'2025-01-15 09:25:47','2025-01-15 09:25:47'),
(17,'FNC1','0000017',1,18,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','DFSDFS',30,'1970-01-01','2025-01-07','MN','DEVOLUCION_TOTAL',0,0,12.5,2.25,14.75,1,1,'2025-01-15 09:26:40','2025-01-15 09:26:40'),
(18,'FNC1','0000018',1,19,1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','',0,'2025-01-14','2025-01-14','MN','CORRECCION',0,0,2500,450,2950,1,1,'2025-01-15 09:27:02','2025-01-15 09:27:02'),
(19,'FNC1','0000019',1,21,1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Petropar',0,'2025-01-15','2025-01-15','MN','ANULACION',0,0,25000,4500,29500,1,1,'2025-01-15 23:49:34','2025-01-15 23:49:34'),
(20,'FNC1','0000020',1,21,1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Petropar',0,'2025-01-15','2025-01-15','MN','DEVOLUCION_ITEM',0,0,25000,4500,29500,1,1,'2025-01-15 23:49:58','2025-01-15 23:49:58');

/*Table structure for table `tbl_credit_note_detail` */

DROP TABLE IF EXISTS `tbl_credit_note_detail`;

CREATE TABLE `tbl_credit_note_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_note_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `item_description` varchar(300) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_unit_price` float NOT NULL,
  `item_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_credit_note_detail` */

insert  into `tbl_credit_note_detail`(`id`,`credit_note_id`,`item_id`,`item_code`,`item_description`,`item_quantity`,`item_unit_price`,`item_name`) values 
(1,1,1,'P001','Leche en polvo de 400g',4,12.5,'Leche en polvo'),
(2,2,1,'P001','Leche en polvo de 400g',2,12.5,'Leche en polvo'),
(3,3,1,'P001','Leche en polvo de 400g',1,12.5,'Leche en polvo'),
(4,4,1,'P001','Leche en polvo de 400g',555,12.5,'Leche en polvo'),
(5,5,1,'P001','Leche en polvo de 400g',555,12.5,'Leche en polvo'),
(6,6,1,'P001','Leche en polvo de 400g',10,12.5,'Leche en polvo'),
(7,6,2,'P002','Yerba Mate Campesino 250g',10,2500,'Yerba Mate'),
(8,7,2,'','Yerba Mate Campesino 250g',10,2500,'Yerba Mate'),
(9,8,1,'','Leche en polvo de 400g',2,10,'Leche en polvo'),
(10,10,2,'','Yerba Mate Campesino 250g',1,2500,'Yerba Mate'),
(11,10,4,'','Nescafe Belen 200gr',2,2500,'Nescafe'),
(12,11,4,'','Nescafe Belen 200gr',3,2500,'Nescafe'),
(13,12,4,'','Nescafe Belen 200gr',1,2500,'Nescafe'),
(14,14,4,'','Nescafe Belen 200gr',2,2500,'Nescafe'),
(15,15,1,'','Leche en polvo de 400g',4,15.5,'Leche en polvo'),
(16,16,2,'P002','Yerba Mate Campesino 250g',1,2500,'Yerba Mate'),
(17,17,1,'P001','Leche en polvo de 400g',1,12.5,'Leche en polvo'),
(18,18,4,'','Nescafe Belen 200gr',1,2500,'Nescafe'),
(19,19,4,'','Nescafe Belen 200gr',10,2500,'Nescafe'),
(20,20,4,'','Nescafe Belen 200gr',10,2500,'Nescafe');

/*Table structure for table `tbl_customer` */

DROP TABLE IF EXISTS `tbl_customer`;

CREATE TABLE `tbl_customer` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `ruc` varchar(11) NOT NULL,
  `business_name` varchar(300) NOT NULL,
  `trade_name` varchar(300) DEFAULT NULL,
  `email` varchar(200) DEFAULT 'no@disponible.com',
  `phone` varchar(200) DEFAULT '0985 748 548',
  `cellphone` varchar(300) DEFAULT '021 78547858',
  `address` varchar(300) NOT NULL,
  `department_id` varchar(300) DEFAULT 'Asuncion',
  `province_id` varchar(300) DEFAULT 'Asuncion',
  `district_id` varchar(300) DEFAULT 'Asuncion',
  `contact1_name` varchar(200) NOT NULL,
  `contact1_phone` varchar(20) NOT NULL,
  `contact2_name` varchar(200) NOT NULL,
  `contact2_phone` varchar(20) NOT NULL,
  `commission` float NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `ruc` (`ruc`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_customer` */

insert  into `tbl_customer`(`client_id`,`ruc`,`business_name`,`trade_name`,`email`,`phone`,`cellphone`,`address`,`department_id`,`province_id`,`district_id`,`contact1_name`,`contact1_phone`,`contact2_name`,`contact2_phone`,`commission`,`registration_date`) values 
(1,'12345678-9','Comercial ABC S.A.','Comercial ABC','contacto@comercialabc.com.py','021 123 456','0981 234 567','Av. España 1234, Asunción','3','3','','Juan Pérez','0981 111 222','María García','0971 234 567',5,'2024-12-03 00:00:00'),
(2,'12345678-1','Nissei','Aseguradora del Este','deleste@aseguradora.com.py','021 123 457','0991 234 567','Rep Argentina 1234, Asunción','3','3','','Luis Fonsi','0981 111 222','Leo Messi','0971 234 567',0,'2024-12-30 00:00:00'),
(3,'12345678901','Empresa S.A.','Comercial Empresa','correo@empresa.com','1234567','987654321','Calle Falsa 123','01','0101','010101','Contacto 1','111111111','Contacto 2','222222222',5,'2025-01-15 21:52:27');

/*Table structure for table `tbl_detalle_presupuesto` */

DROP TABLE IF EXISTS `tbl_detalle_presupuesto`;

CREATE TABLE `tbl_detalle_presupuesto` (
  `id_detalle_presupuesto` int(11) NOT NULL AUTO_INCREMENT,
  `id_presupuesto` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `precio_unitario` float NOT NULL,
  `subtotal` decimal(10,2) GENERATED ALWAYS AS (`cantidad` * `precio_unitario`) STORED,
  PRIMARY KEY (`id_detalle_presupuesto`),
  KEY `id_presupuesto` (`id_presupuesto`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `tbl_detalle_presupuesto_ibfk_1` FOREIGN KEY (`id_presupuesto`) REFERENCES `tbl_presupuesto` (`id`),
  CONSTRAINT `tbl_detalle_presupuesto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `tbl_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_detalle_presupuesto` */

insert  into `tbl_detalle_presupuesto`(`id_detalle_presupuesto`,`id_presupuesto`,`id_producto`,`cantidad`,`precio_unitario`) values 
(47,27,1,2.00,111);

/*Table structure for table `tbl_employee` */

DROP TABLE IF EXISTS `tbl_employee`;

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `last_name_1` varchar(100) NOT NULL,
  `last_name_2` varchar(100) NOT NULL,
  `id_doc_type` varchar(50) NOT NULL,
  `id_doc_number` varchar(50) NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(300) NOT NULL,
  `job` varchar(50) NOT NULL,
  `study_level` varchar(50) NOT NULL,
  `study_career` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `admission_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_doc_number` (`id_doc_number`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_employee` */

insert  into `tbl_employee`(`id`,`name`,`last_name_1`,`last_name_2`,`id_doc_type`,`id_doc_number`,`civil_status`,`email`,`phone`,`address`,`job`,`study_level`,`study_career`,`birth_date`,`admission_date`) values 
(1,'Carlos','Ramírez','Gómez','C.I.','12345678','Soltero','carlos.ramirez@gmail.com','021 234 567','Calle 10, Asunción','Vendedor','Superior','Ingeniería Industrial','1985-06-15','2022-01-10'),
(2,'Eduardo Andres','Balbuena','Ramirez','DNI','5103107','Soltero','eduwinzex@gmail.com','985472527','San Lorenzo','Gerente General','Técnico','Analisis De Sistemas','2003-03-28','2024-12-03'),
(3,'Erika','Souberlich','Fernandez','DNI','5628558','Soltero','erikasoub@gmail.com','985472528','San Lorenzo','Gerente de Marketing','Titulado','Comunicacion Audiovisual','2002-01-07','2024-12-03'),
(4,'Edu','Prueba','Balbuena','DNI','121545','Soltero','eduwinzex@gmail.com','','San Lorenzo','Secretario','Actualmente cursando','Data Enginier','2025-01-09','2025-01-17');

/*Table structure for table `tbl_invoice` */

DROP TABLE IF EXISTS `tbl_invoice`;

CREATE TABLE `tbl_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `series` varchar(10) NOT NULL,
  `number` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ruc` varchar(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `reference` varchar(300) NOT NULL,
  `payment_days` int(11) NOT NULL,
  `date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `currency` varchar(50) NOT NULL,
  `discount_rate` float NOT NULL,
  `discount_value` float NOT NULL,
  `total_sub` float NOT NULL,
  `total_tax` float NOT NULL,
  `total_net` float NOT NULL,
  `seller_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_update` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_invoice` */

insert  into `tbl_invoice`(`id`,`series`,`number`,`status`,`quotation_id`,`customer_id`,`ruc`,`name`,`address`,`reference`,`payment_days`,`date`,`delivery_date`,`currency`,`discount_rate`,`discount_value`,`total_sub`,`total_tax`,`total_net`,`seller_id`,`user_id`,`registration_date`,`last_update`) values 
(1,'F001','0000001',3,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','sAN tOÑITO',0,'2024-12-08','2024-12-08','MN',0,0,11250,2025,13275,1,1,'2024-12-09 01:33:57','2024-12-09 01:33:57'),
(2,'F001','0000002',1,2,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',15,'2024-12-18','2024-12-18','ME',0,0,50,9,59,1,1,'2024-12-19 01:31:45','2024-12-19 01:31:45'),
(3,'F001','0000003',2,2,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',15,'1970-01-01','2024-12-18','ME',0,0,125,22.5,147.5,1,1,'2024-12-19 01:44:14','2024-12-19 01:44:14'),
(4,'F001','0000004',2,2,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',15,'1970-01-01','2024-12-18','ME',0,0,125,22.5,147.5,1,1,'2024-12-19 01:45:02','2024-12-19 01:45:02'),
(5,'F001','0000005',4,2,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',15,'1970-01-01','2024-12-18','ME',0,0,25125,4522.5,29647.5,1,1,'2024-12-19 02:38:26','2024-12-19 02:38:26'),
(6,'F001','0000006',3,3,1,'adsff','Comercial ABC S.A.','Av. España 1234, Asunción','Sin Referencias',0,'1970-01-01','2024-12-30','ME',0,0,1237.5,222.75,1460.25,1,1,'2024-12-30 23:37:05','2024-12-30 23:37:05'),
(7,'F001','0000007',2,4,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Sin Referencias',45,'1970-01-01','2024-12-30','MN',0,0,2500,450,2950,1,1,'2024-12-31 01:30:24','2024-12-31 01:30:24'),
(8,'F001','0000008',1,5,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Sin Referencias',30,'1970-01-01','2024-12-30','MN',0,0,2500,450,2950,1,1,'2024-12-31 01:32:38','2024-12-31 01:32:38'),
(9,'F001','0000009',2,6,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Sin Referencias',0,'1970-01-01','2024-12-30','MN',0,0,2500,450,2950,1,1,'2024-12-31 01:34:31','2024-12-31 01:34:31'),
(10,'F001','0000010',1,7,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Petropar',15,'1970-01-01','2025-01-02','MN',0,0,12500,2250,14750,1,1,'2025-01-02 23:51:58','2025-01-02 23:51:58'),
(11,'F001','0000011',1,8,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Petropar',15,'2025-01-02','2025-01-02','MN',0,0,22500,4050,26550,1,1,'2025-01-02 23:54:12','2025-01-02 23:54:12'),
(12,'F001','0000012',4,9,0,'12142142','bRIAN','Av. España 1234, Asunción','Petropar',0,'1970-01-01','2025-01-07','MN',0,0,25,4.5,29.5,1,1,'2025-01-07 22:59:59','2025-01-07 22:59:59'),
(13,'F001','0000013',2,10,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',15,'1970-01-01','2025-01-07','MN',0,0,2525,454.5,2979.5,1,1,'2025-01-07 23:39:31','2025-01-07 23:39:31'),
(14,'F001','0000014',2,11,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','DFSDFS',30,'1970-01-01','2025-01-07','MN',0,0,12.5,2.25,14.75,1,1,'2025-01-07 23:42:05','2025-01-07 23:42:05'),
(15,'F001','0000015',1,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',0,'1970-01-01','2024-12-02','MN',0,0,6937.5,1248.75,8186.25,2,1,'2025-01-07 23:44:19','2025-01-07 23:44:19'),
(16,'F001','0000016',4,1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',0,'1970-01-01','2024-12-02','MN',0,0,6937.5,1248.75,8186.25,2,1,'2025-01-07 23:44:45','2025-01-07 23:44:45'),
(17,'F001','0000017',4,11,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','DFSDFS',30,'1970-01-01','2025-01-07','MN',0,0,12.5,2.25,14.75,1,1,'2025-01-07 23:48:11','2025-01-07 23:48:11'),
(18,'F001','0000018',2,11,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','DFSDFS',30,'1970-01-01','2025-01-07','MN',0,0,12.5,2.25,14.75,1,1,'2025-01-07 23:48:54','2025-01-07 23:48:54'),
(19,'F001','0000019',1,0,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','',0,'2025-01-14','2025-01-14','MN',0,0,2500,450,2950,1,1,'2025-01-14 23:00:03','2025-01-14 23:00:03'),
(20,'F001','0000020',1,9,0,'12142142','bRIAN','Av. España 1234, Asunción','Petropar',0,'1970-01-01','2025-01-07','MN',0,0,62,11.16,73.16,1,1,'2025-01-15 06:35:21','2025-01-15 06:35:21'),
(21,'F001','0000021',1,0,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Petropar',0,'2025-01-15','2025-01-15','MN',0,0,50000,9000,59000,1,1,'2025-01-15 23:48:05','2025-01-15 23:48:05'),
(22,'F001','0000022',1,12,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Petropar',30,'1970-01-01','2025-01-15','MN',100,64015,70000,12600,18585,1,1,'2025-01-15 23:53:30','2025-01-15 23:53:30'),
(23,'F001','0000023',1,13,2,'12345678-1','Nissei','Rep Argentina 1234, Asunción','',0,'1970-01-01','2025-01-15','MN',100,77.29,65.5,11.79,0,1,1,'2025-01-16 02:36:14','2025-01-16 02:36:14');

/*Table structure for table `tbl_invoice_detail` */

DROP TABLE IF EXISTS `tbl_invoice_detail`;

CREATE TABLE `tbl_invoice_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `item_description` varchar(300) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_unit_price` float NOT NULL,
  `item_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_invoice_detail` */

insert  into `tbl_invoice_detail`(`id`,`invoice_id`,`item_id`,`item_code`,`item_description`,`item_quantity`,`item_unit_price`,`item_name`) values 
(1,1,1,'P001','Leche en polvo de 400g',900,12.5,'Leche en polvo'),
(2,2,1,'P001','Leche en polvo de 400g',4,12.5,'Leche en polvo'),
(3,3,1,'P001','Leche en polvo de 400g',10,12.5,'Leche en polvo'),
(4,4,1,'P001','Leche en polvo de 400g',10,12.5,'Leche en polvo'),
(5,5,1,'P001','Leche en polvo de 400g',10,12.5,'Leche en polvo'),
(6,5,2,'P002','Yerba Mate Campesino 250g',10,2500,'Yerba Mate'),
(7,6,1,'P001','Leche en polvo de 400g',99,12.5,'Leche en polvo'),
(8,7,2,'P002','Yerba Mate Campesino 250g',1,2500,'Yerba Mate'),
(9,8,2,'P002','Yerba Mate Campesino 250g',1,2500,'Yerba Mate'),
(10,9,2,'P002','Yerba Mate Campesino 250g',1,2500,'Yerba Mate'),
(11,10,2,'P002','Yerba Mate Campesino 250g',5,2500,'Yerba Mate'),
(12,11,2,'P002','Yerba Mate Campesino 250g',9,2500,'Yerba Mate'),
(13,12,1,'P001','Leche en polvo de 400g',2,12.5,'Leche en polvo'),
(14,13,2,'P002','Yerba Mate Campesino 250g',1,2500,'Yerba Mate'),
(15,14,1,'P001','Leche en polvo de 400g',1,12.5,'Leche en polvo'),
(16,15,1,'P001','Leche en polvo de 400g',555,12.5,'Leche en polvo'),
(17,16,1,'P001','Leche en polvo de 400g',555,12.5,'Leche en polvo'),
(18,17,1,'P001','Leche en polvo de 400g',1,12.5,'Leche en polvo'),
(19,18,1,'P001','Leche en polvo de 400g',1,12.5,'Leche en polvo'),
(20,19,4,'','Nescafe Belen 200gr',1,2500,'Nescafe'),
(21,20,1,'','Leche en polvo de 400g',4,15.5,'Leche en polvo'),
(22,21,4,'','Nescafe Belen 200gr',20,2500,'Nescafe'),
(23,22,1,'P001','Leche en polvo de 400g',3,15000,'Leche en polvo'),
(24,22,4,'P003','Nescafe Belen 200gr',10,2500,'Nescafe'),
(25,23,1,'P001','Leche en polvo de 400g',1,15.5,'Leche en polvo'),
(26,23,6,'P005','Pastas Anita 300gs',1,50,'Pastas Anita');

/*Table structure for table `tbl_order` */

DROP TABLE IF EXISTS `tbl_order`;

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `number` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `issue_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `provider_id` int(11) NOT NULL,
  `payment_days` int(11) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `quotation` varchar(100) NOT NULL,
  `requester` varchar(200) NOT NULL,
  `approver` varchar(200) NOT NULL,
  `observation` varchar(3000) NOT NULL,
  `total_purchase` float NOT NULL,
  `total_tax` float NOT NULL,
  `total_net` float NOT NULL,
  `exchange_rate_sale` float NOT NULL,
  `exchange_rate_purchase` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_order` */

insert  into `tbl_order`(`id`,`type`,`number`,`status`,`currency`,`issue_date`,`delivery_date`,`provider_id`,`payment_days`,`account_number`,`quotation`,`requester`,`approver`,`observation`,`total_purchase`,`total_tax`,`total_net`,`exchange_rate_sale`,`exchange_rate_purchase`) values 
(1,1,'OC-001','Pendiente','PYG','2024-12-01','2024-12-10',1,30,'123456','Q001','José Díaz','Ana Sánchez','Observación de prueba',125000,25000,150000,1,1),
(2,1,'OC-2','Aprobado','MN','2024-12-18','2024-12-18',2,0,'','','Eduardo Balbuena','Eduardo Balbuena','Sin Observaciones',428,77.04,505.04,7190,7200),
(3,1,'OC-3','Anulado','MN','2024-12-30','2024-12-30',1,0,'8484','','Eduardo Balbuena','Eduardo Balbuena','Sin Observaciones',25000,4500,29500,0,0);

/*Table structure for table `tbl_order_detail` */

DROP TABLE IF EXISTS `tbl_order_detail`;

CREATE TABLE `tbl_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_description` varchar(500) NOT NULL,
  `item_gloss` varchar(500) NOT NULL,
  `item_unit_value` varchar(100) NOT NULL,
  `item_unit_price` float NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_discount_rate` float NOT NULL,
  `item_discounted_total` float NOT NULL,
  `presupuesto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_order_detail` */

insert  into `tbl_order_detail`(`id`,`order_id`,`item_code`,`item_description`,`item_gloss`,`item_unit_value`,`item_unit_price`,`item_quantity`,`item_discount_rate`,`item_discounted_total`,`presupuesto_id`) values 
(4,3,'P002','P002','k','gr',2500,10,0,25000,0),
(5,2,'2','yerba','fdds','gr',214,2,0,428,0);

/*Table structure for table `tbl_pedido_detalles` */

DROP TABLE IF EXISTS `tbl_pedido_detalles`;

CREATE TABLE `tbl_pedido_detalles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_detalles_pedido` (`pedido_id`),
  KEY `fk_pedido_detalles_producto` (`producto_id`),
  CONSTRAINT `fk_pedido_detalles_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `tbl_pedidos` (`id`),
  CONSTRAINT `fk_pedido_detalles_producto` FOREIGN KEY (`producto_id`) REFERENCES `tbl_product` (`id`),
  CONSTRAINT `tbl_pedido_detalles_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `tbl_pedidos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tbl_pedido_detalles_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_pedido_detalles` */

insert  into `tbl_pedido_detalles`(`id`,`pedido_id`,`producto_id`,`cantidad`,`precio_unitario`) values 
(1,1,1,10,100),
(2,7,2,11,0),
(3,8,1,10,0),
(4,9,4,100,0),
(5,10,4,5,0),
(6,11,2,2,0),
(7,13,1,2,0),
(8,13,1,3,0),
(9,13,2,2,0),
(10,14,1,2,0),
(11,14,1,3,0),
(12,14,2,2,0),
(13,15,1,2,0),
(14,15,1,3,0),
(15,15,1,4,0),
(16,16,1,2,0),
(17,16,1,3,0),
(18,16,1,4,0),
(19,17,1,2,0),
(20,17,1,3,0),
(21,17,1,4,0),
(22,18,1,2,0),
(23,18,1,3,0),
(24,18,1,4,0),
(25,19,1,2,0),
(26,20,1,2,0),
(27,20,2,3,0),
(28,20,1,4,0),
(29,21,2,100,0),
(30,22,2,100,0),
(31,23,4,10,0),
(32,24,1,32,0),
(33,24,1,3,0),
(34,25,1,2,0);

/*Table structure for table `tbl_pedidos` */

DROP TABLE IF EXISTS `tbl_pedidos`;

CREATE TABLE `tbl_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_pedido` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` enum('pendiente','aprobado','cancelado','anulado') NOT NULL DEFAULT 'pendiente',
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_pedido` (`numero_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_pedidos` */

insert  into `tbl_pedidos`(`id`,`numero_pedido`,`fecha`,`estado`) values 
(1,1,'2025-01-11 13:06:21','aprobado'),
(2,2,'2025-01-11 13:06:31','cancelado'),
(3,3,'2025-01-11 13:42:48','cancelado'),
(5,4,'2025-01-11 13:56:20','cancelado'),
(6,5,'2025-01-11 14:10:23','cancelado'),
(7,6,'2025-01-11 14:11:06','cancelado'),
(8,7,'2025-01-12 22:19:39','cancelado'),
(9,8,'2025-01-13 22:31:50','cancelado'),
(10,9,'2025-01-14 20:20:30','cancelado'),
(11,10,'2025-01-14 20:21:13','cancelado'),
(12,11,'2025-01-15 02:45:53','cancelado'),
(13,12,'2025-01-14 22:46:21','cancelado'),
(14,13,'2025-01-14 22:48:02','cancelado'),
(15,14,'2025-01-14 22:48:13','cancelado'),
(16,15,'2025-01-14 22:50:14','cancelado'),
(17,16,'2025-01-14 22:52:02','cancelado'),
(18,17,'2025-01-14 22:52:05','cancelado'),
(19,18,'2025-01-14 22:57:41','cancelado'),
(20,19,'2025-01-14 22:57:51','cancelado'),
(21,20,'2025-01-14 23:44:54','pendiente'),
(22,21,'2025-01-14 23:45:01','pendiente'),
(23,22,'2025-01-15 01:07:03','pendiente'),
(24,23,'2025-01-15 19:50:23','pendiente'),
(25,24,'2025-01-16 00:30:44','pendiente');

/*Table structure for table `tbl_presupuesto` */

DROP TABLE IF EXISTS `tbl_presupuesto`;

CREATE TABLE `tbl_presupuesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_presupuesto` varchar(50) NOT NULL,
  `fecha_hora` datetime NOT NULL DEFAULT current_timestamp(),
  `proveedor_id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_presupuesto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedor_id` (`proveedor_id`),
  KEY `pedido_id` (`pedido_id`),
  CONSTRAINT `tbl_presupuesto_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `tbl_provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_presupuesto_ibfk_2` FOREIGN KEY (`pedido_id`) REFERENCES `tbl_pedidos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_presupuesto` */

insert  into `tbl_presupuesto`(`id`,`numero_presupuesto`,`fecha_hora`,`proveedor_id`,`pedido_id`,`total`,`id_presupuesto`) values 
(5,'1736616108','2025-01-11 12:21:48',1,7,16500.00,NULL),
(6,'1736891662','2025-01-14 16:54:22',1,9,250000.00,NULL),
(11,'1736911845','2025-01-14 22:30:45',3,22,200.00,NULL),
(12,'1736911853','2025-01-14 22:30:53',3,22,0.00,NULL),
(13,'1736911901','2025-01-14 22:31:41',2,22,0.00,NULL),
(14,'1736911910','2025-01-14 22:31:50',2,21,0.00,NULL),
(15,'1736911923','2025-01-14 22:32:03',1,14,0.00,NULL),
(23,'1736913749','2025-01-14 23:02:29',2,11,3.00,NULL),
(24,'1736913856','2025-01-14 23:04:16',1,14,18.00,NULL),
(25,'1736914033','2025-01-14 23:07:13',1,23,12500.00,NULL),
(26,'1736981458','2025-01-15 17:50:58',2,24,0.00,NULL),
(27,'1736998251','2025-01-15 22:30:51',11,25,222.00,NULL);

/*Table structure for table `tbl_product` */

DROP TABLE IF EXISTS `tbl_product`;

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `brand` varchar(200) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `unit_price` float NOT NULL,
  `unit_value` varchar(100) NOT NULL,
  `active_status` tinyint(1) NOT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  `precio` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `fk_product_deposit` (`deposit_id`),
  CONSTRAINT `fk_product_deposit` FOREIGN KEY (`deposit_id`) REFERENCES `deposito` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_product` */

insert  into `tbl_product`(`id`,`code`,`brand`,`name`,`description`,`stock_quantity`,`unit_price`,`unit_value`,`active_status`,`deposit_id`,`registration_date`,`precio`) values 
(1,'P001','Lactolanda','Leche en polvo','Leche en polvo de 400g',110,15.5,'lt',1,1,'2024-12-03 00:25:11',0),
(2,'P002','Campesino','Yerba Mate','Yerba Mate Campesino 250g',84,2500,'gr',1,NULL,'2024-12-18 21:39:58',0),
(4,'P003','Belen','Nescafe','Nescafe Belen 200gr',50,2500,'gr',1,NULL,'2025-01-10 20:42:41',0),
(6,'P005','Anita','Pastas Anita','Pastas Anita 300gs',501,5000,'gr',1,1,'2025-01-15 21:30:29',0);

/*Table structure for table `tbl_productos_detalle` */

DROP TABLE IF EXISTS `tbl_productos_detalle`;

CREATE TABLE `tbl_productos_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_detalle_presupuesto` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `precio_unitario` float NOT NULL,
  `subtotal` decimal(10,2) GENERATED ALWAYS AS (`cantidad` * `precio_unitario`) STORED,
  PRIMARY KEY (`id`),
  KEY `id_detalle_presupuesto` (`id_detalle_presupuesto`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `tbl_productos_detalle_ibfk_1` FOREIGN KEY (`id_detalle_presupuesto`) REFERENCES `tbl_detalle_presupuesto` (`id_detalle_presupuesto`) ON DELETE CASCADE,
  CONSTRAINT `tbl_productos_detalle_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_productos_detalle` */

/*Table structure for table `tbl_provider` */

DROP TABLE IF EXISTS `tbl_provider`;

CREATE TABLE `tbl_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `business_name` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL,
  `contact1_name` varchar(200) NOT NULL,
  `contact1_phone` varchar(20) NOT NULL,
  `contact2_name` varchar(200) NOT NULL,
  `contact2_phone` varchar(20) NOT NULL,
  `bank1_name` varchar(100) NOT NULL,
  `bank1_currency` varchar(50) NOT NULL,
  `bank1_account_number` varchar(50) NOT NULL,
  `bank1_account_holder` varchar(200) NOT NULL,
  `bank2_name` varchar(100) NOT NULL,
  `bank2_currency` varchar(50) NOT NULL,
  `bank2_account_number` varchar(50) NOT NULL,
  `bank2_account_holder` varchar(200) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_provider` */

insert  into `tbl_provider`(`id`,`code`,`business_name`,`address`,`country`,`city`,`district`,`contact1_name`,`contact1_phone`,`contact2_name`,`contact2_phone`,`bank1_name`,`bank1_currency`,`bank1_account_number`,`bank1_account_holder`,`bank2_name`,`bank2_currency`,`bank2_account_number`,`bank2_account_holder`,`registration_date`) values 
(1,'P0001','Proveedores del Paraguay S.A.','Av. Ñeembucú 200, Asunción','Paraguay','Asunción','Central','Luis López','0971 555 555','Ana Martínez','0971 666 666','Banco Nacional de Fomento','PYG','1234567890','Proveedores del Paraguay','','','','','2024-12-03 00:24:37'),
(2,'80014857-9','Yerbatera Campesino','San Lorenzo','Paraguay','Encarnacion','Encarnacion','Richard Sanchez','09854789748','Silvana Godoy','0985478557','BN','MN','454464878','YERBATERA CAMPESINO SRL','BCP','ME','1515464565464','YERBATERA CAMPESINO SRL','2024-12-19 01:41:30'),
(3,'898875','Nissei','Avenida España','Paraguay','Asuncion','Centra','Richard Sanchez','09854789748','Silvana Godoy','0985478557','BN','ME','124412142142142','NISSEI SA','BBVA','MN','123255312','NISSEI SRL','2025-01-16 00:17:18'),
(11,'898875745789','Seltz','San Lorenzo','Paraguay','Asunción','Encarnacion','Richard Sanchez','09854789748','Silvana Godoy','0985478557','BN','MN','124412142142142','SELTS SA','INTERBANK','MN','1515464565464','SELTS SRL','2025-01-16 01:55:06'),
(16,'89887524','Galmedic','San Lorenzo','Paraguay','Asunción','','Richard Sanchez','09854789748','Silvana Godoy','0985478557','','','','','','','','','2025-01-16 02:20:36');

/*Table structure for table `tbl_quotation` */

DROP TABLE IF EXISTS `tbl_quotation`;

CREATE TABLE `tbl_quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ruc` varchar(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `reference` varchar(300) NOT NULL,
  `payment_days` int(11) NOT NULL,
  `date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `currency` varchar(50) NOT NULL,
  `discount_rate` float NOT NULL,
  `discount_value` float NOT NULL,
  `total_sub` float NOT NULL,
  `total_tax` float NOT NULL,
  `total_net` float NOT NULL,
  `seller_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_update` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_quotation` */

insert  into `tbl_quotation`(`id`,`number`,`status`,`customer_id`,`ruc`,`name`,`address`,`reference`,`payment_days`,`date`,`delivery_date`,`currency`,`discount_rate`,`discount_value`,`total_sub`,`total_tax`,`total_net`,`seller_id`,`user_id`,`registration_date`,`last_update`) values 
(1,'COTZ-1',1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',0,'2024-12-02','2024-12-02','MN',0,0,6937.5,1248.75,8186.25,2,2,'2024-12-03 04:41:55','2024-12-03 00:41:55'),
(2,'COTZ-2',2,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',15,'2024-12-18','2024-12-18','ME',0,0,125,22.5,147.5,1,1,'2024-12-19 01:20:11','2024-12-18 21:20:11'),
(3,'COTZ-3',2,1,'adsff','Comercial ABC S.A.','Av. España 1234, Asunción','Sin Referencias',0,'2024-12-30','2024-12-30','ME',0,0,1237.5,222.75,1460.25,1,1,'2024-12-30 23:34:46','2024-12-30 19:34:46'),
(4,'COTZ-4',2,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Sin Referencias',45,'2024-12-30','2024-12-30','MN',0,0,2500,450,2950,1,1,'2024-12-31 01:30:13','2024-12-30 21:30:13'),
(5,'COTZ-5',2,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Sin Referencias',30,'2024-12-30','2024-12-30','MN',0,0,2500,450,2950,1,1,'2024-12-31 01:32:29','2024-12-30 21:32:29'),
(6,'COTZ-6',1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Sin Referencias',0,'2024-12-30','2024-12-30','MN',0,0,2500,450,2950,1,1,'2024-12-31 01:33:53','2024-12-30 21:33:53'),
(7,'COTZ-7',1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Petropar',15,'2025-01-02','2025-01-02','MN',0,0,12500,2250,14750,1,1,'2025-01-02 23:51:42','2025-01-02 19:51:42'),
(8,'COTZ-8',1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Petropar',15,'2025-01-02','2025-01-02','MN',0,0,22500,4050,26550,1,1,'2025-01-02 23:53:49','2025-01-02 19:53:49'),
(9,'COTZ-9',1,0,'12142142','bRIAN','Av. España 1234, Asunción','Petropar',0,'2025-01-07','2025-01-07','MN',0,0,25,4.5,29.5,1,1,'2025-01-07 22:59:40','2025-01-07 18:59:40'),
(10,'COTZ-10',1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','Petropar',15,'2025-01-07','2025-01-07','MN',0,0,2525,454.5,2979.5,1,1,'2025-01-07 23:38:08','2025-01-07 19:38:08'),
(11,'COTZ-11',1,1,'12345678-9','Comercial ABC S.A.','Av. España 1234, Asunción','DFSDFS',30,'2025-01-07','2025-01-07','MN',0,0,12.5,2.25,14.75,1,1,'2025-01-07 23:41:40','2025-01-07 19:41:40'),
(12,'COTZ-12',1,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','Petropar',30,'2025-01-15','2025-01-15','MN',0,0,70000,12600,82600,1,1,'2025-01-15 23:52:12','2025-01-15 19:52:12'),
(13,'COTZ-13',1,2,'12345678-1','Nissei','Rep Argentina 1234, Asunción','',0,'2025-01-15','2025-01-15','MN',100,77.29,65.5,11.79,0,1,1,'2025-01-16 02:34:10','2025-01-15 22:34:10');

/*Table structure for table `tbl_quotation_detail` */

DROP TABLE IF EXISTS `tbl_quotation_detail`;

CREATE TABLE `tbl_quotation_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(300) NOT NULL,
  `item_description` varchar(500) NOT NULL,
  `item_unit_price` float NOT NULL,
  `item_quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_quotation_detail` */

insert  into `tbl_quotation_detail`(`id`,`quotation_id`,`item_id`,`item_name`,`item_description`,`item_unit_price`,`item_quantity`) values 
(1,1,1,'Leche en polvo','Leche en polvo de 400g',12.5,555),
(2,2,1,'Leche en polvo','Leche en polvo de 400g',12.5,10),
(3,3,1,'Leche en polvo','Leche en polvo de 400g',12.5,99),
(4,4,2,'Yerba Mate','Yerba Mate Campesino 250g',2500,1),
(5,5,2,'Yerba Mate','Yerba Mate Campesino 250g',2500,1),
(6,6,2,'Yerba Mate','Yerba Mate Campesino 250g',2500,1),
(7,7,2,'Yerba Mate','Yerba Mate Campesino 250g',2500,5),
(8,8,2,'Yerba Mate','Yerba Mate Campesino 250g',2500,9),
(9,9,1,'Leche en polvo','Leche en polvo de 400g',12.5,2),
(10,10,1,'Leche en polvo','Leche en polvo de 400g',12.5,1),
(11,10,2,'Yerba Mate','Yerba Mate Campesino 250g',2500,1),
(12,11,1,'Leche en polvo','Leche en polvo de 400g',12.5,1),
(13,12,1,'Leche en polvo','Leche en polvo de 400g',15000,3),
(14,12,4,'Nescafe','Nescafe Belen 200gr',2500,10),
(15,13,1,'Leche en polvo','Leche en polvo de 400g',15.5,1),
(16,13,6,'Pastas Anita','Pastas Anita 300gs',50,1);

/*Table structure for table `tbl_receipt` */

DROP TABLE IF EXISTS `tbl_receipt`;

CREATE TABLE `tbl_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `series` varchar(10) NOT NULL,
  `number` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ruc` varchar(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `reference` varchar(300) NOT NULL,
  `payment_days` int(11) NOT NULL,
  `date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `currency` varchar(50) NOT NULL,
  `discount_rate` float NOT NULL,
  `discount_value` float NOT NULL,
  `total_sub` float NOT NULL,
  `total_tax` float NOT NULL,
  `total_net` float NOT NULL,
  `seller_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_update` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_receipt` */

insert  into `tbl_receipt`(`id`,`series`,`number`,`status`,`quotation_id`,`customer_id`,`ruc`,`name`,`address`,`reference`,`payment_days`,`date`,`delivery_date`,`currency`,`discount_rate`,`discount_value`,`total_sub`,`total_tax`,`total_net`,`seller_id`,`user_id`,`registration_date`,`last_update`) values 
(1,'B001','0000001',1,11,2,'12345678-1','Aseguradora del Este','Rep Argentina 1234, Asunción','',0,'2025-01-14','2025-01-14','MN',0,0,5000,900,5900,1,1,'2025-01-14 23:53:46','2025-01-14 23:53:46');

/*Table structure for table `tbl_receipt_detail` */

DROP TABLE IF EXISTS `tbl_receipt_detail`;

CREATE TABLE `tbl_receipt_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receipt_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `item_description` varchar(300) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_unit_price` float NOT NULL,
  `item_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1244 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_receipt_detail` */

/*Table structure for table `tbl_stock` */

DROP TABLE IF EXISTS `tbl_stock`;

CREATE TABLE `tbl_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `deposito_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT 0,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `deposito_id` (`deposito_id`),
  CONSTRAINT `tbl_stock_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`),
  CONSTRAINT `tbl_stock_ibfk_2` FOREIGN KEY (`deposito_id`) REFERENCES `deposito` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_stock` */

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `photo_url` varchar(1000) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id`,`username`,`password`,`employee_id`,`photo_url`,`registration_date`) values 
(1,'Administrador','$2y$10$SLrO3JYqgkhSf6XdKaDvMOYN/JdxuL1icrVtLllAVrRXCQuOmPWfm',2,'','2024-12-03 04:29:03'),
(2,'Erika','$2y$10$sZ5CoQ1AeYt.9KFzC26COOLOvx7DsNlZ/mG/LXW.Y4fdKaUYve08.',3,'','2024-12-03 04:38:16'),
(3,'Carlos','$2y$10$vo1qCYPTfh8V2QhTQxWLZ.v.MeLeUp9Bu3fmxnUiflTxTZjv6nf1S',1,'','2024-12-03 05:03:44');

/*Table structure for table `tbl_warehouse_movement` */

DROP TABLE IF EXISTS `tbl_warehouse_movement`;

CREATE TABLE `tbl_warehouse_movement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `observation` varchar(100) NOT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `doc_reference` varchar(50) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_warehouse_movement` */

insert  into `tbl_warehouse_movement`(`id`,`type`,`product_id`,`quantity`,`observation`,`provider_id`,`doc_reference`,`expiration_date`,`user_id`,`registration_date`) values 
(1,2,1,101,'',NULL,NULL,NULL,1,'2024-12-11 20:51:53'),
(2,2,1,-101,'',NULL,NULL,NULL,1,'2024-12-11 20:52:11'),
(3,1,2,100,'',2,'','2024-12-18',1,'2024-12-18 21:41:59'),
(4,2,2,-10,'',NULL,NULL,NULL,1,'2024-12-18 21:42:51'),
(5,2,1,20,'',NULL,NULL,NULL,1,'2024-12-30 19:32:00'),
(6,2,1,10,'',NULL,NULL,NULL,1,'2024-12-30 19:32:14'),
(7,2,1,-1,'',NULL,NULL,NULL,1,'2024-12-30 19:32:28'),
(8,2,2,1,'',NULL,NULL,NULL,1,'2024-12-30 21:36:17'),
(9,1,1,10,'Donacion de navidad',1,'','2025-01-02',1,'2025-01-02 20:07:46'),
(10,2,1,1,'-1',NULL,NULL,NULL,1,'2025-01-02 20:08:07'),
(11,2,1,-1,'Error de operacion',NULL,NULL,NULL,1,'2025-01-02 20:08:33'),
(12,2,1,-2,'Error de operacion',NULL,NULL,NULL,1,'2025-01-02 20:09:02'),
(13,2,1,5000,'',NULL,NULL,NULL,1,'2025-01-07 19:46:39'),
(14,1,4,15,'',1,'123','2025-01-12',1,'2025-01-12 11:08:13'),
(15,1,2,1,'Donacion de navidad',1,'','2025-01-12',1,'2025-01-12 13:41:35'),
(16,1,4,1,'Donacion de navidad',1,'85578','2025-01-12',1,'2025-01-12 23:10:33'),
(17,1,1,100,'Donacion de navidad',1,'85578','2025-01-14',1,'2025-01-15 01:45:07'),
(18,2,1,1,'Ingreso por devolucion conforme a la fac 00897',NULL,NULL,NULL,1,'2025-01-15 01:49:16'),
(19,2,1,-5,'Correcion por factura N654855',NULL,NULL,NULL,1,'2025-01-15 02:39:30'),
(20,2,1,1,'Correcion por error en la actualizacion del stock',NULL,NULL,NULL,1,'2025-01-15 02:39:53'),
(21,1,6,500,'Donacion de navidad',1,'85578','2025-01-15',1,'2025-01-15 21:32:22');

/*Table structure for table `ubigeo_py_ciudad` */

DROP TABLE IF EXISTS `ubigeo_py_ciudad`;

CREATE TABLE `ubigeo_py_ciudad` (
  `province_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT 'Nombre de la ciudad',
  `department_id` int(11) NOT NULL COMMENT 'ID del departamento asociado',
  PRIMARY KEY (`province_id`),
  KEY `fk_department_idx` (`department_id`),
  CONSTRAINT `fk_department` FOREIGN KEY (`department_id`) REFERENCES `ubigeo_py_departments` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ubigeo_py_ciudad` */

insert  into `ubigeo_py_ciudad`(`province_id`,`name`,`department_id`) values 
(1,'Luque',2),
(2,'San Lorenzo',2),
(3,'Ciudad del Este',3),
(4,'Encarnación',4);

/*Table structure for table `ubigeo_py_departments` */

DROP TABLE IF EXISTS `ubigeo_py_departments`;

CREATE TABLE `ubigeo_py_departments` (
  `department_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT 'Nombre del departamento',
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ubigeo_py_departments` */

insert  into `ubigeo_py_departments`(`department_id`,`name`) values 
(3,'Alto Paraná'),
(1,'Asunción'),
(2,'Central'),
(4,'Itapúa');

/* Trigger structure for table `tbl_credit_note` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `before_update_credit_note` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `before_update_credit_note` BEFORE UPDATE ON `tbl_credit_note` FOR EACH ROW SET NEW.last_update = CURRENT_TIMESTAMP */$$


DELIMITER ;

/* Trigger structure for table `tbl_customer` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `after_customer_insert` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `after_customer_insert` AFTER INSERT ON `tbl_customer` FOR EACH ROW BEGIN
    INSERT INTO tbl_provider (
        business_name,
        address,
        contact1_name,
        contact1_phone,
        contact2_name,
        contact2_phone,
        registration_date
    )
    VALUES (
        NEW.business_name,
        NEW.address,
        NEW.contact1_name,
        NEW.contact1_phone,
        NEW.contact2_name,
        NEW.contact2_phone,
        NEW.registration_date
    );
END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
