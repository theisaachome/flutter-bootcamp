-- MySQL dump 10.13  Distrib 5.7.20, for macos10.12 (x86_64)
--
-- Host: localhost    Database: ngtestdb
-- ------------------------------------------------------
-- Server version	5.7.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `lessons_count` int(11) NOT NULL,
  `long_description` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `seq_no` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'BEGINNER','Serverless Angular with Firebase Course','https://s3-us-west-1.amazonaws.com/angular-university/course-images/serverless-angular-small.png',10,'Serveless Angular with Firestore, Firebase Storage & Hosting, Firebase Cloud Functions & AngularFire',50,6,'serverless-angular'),(2,'BEGINNER','Angular Core Deep Dive','https://s3-us-west-1.amazonaws.com/angular-university/course-images/angular-core-in-depth-small.png',10,'A detailed walk-through of the most important part of Angular - the Core and Common modules',50,3,'angular-core-course'),(3,'BEGINNER','RxJs In Practice Course','https://s3-us-west-1.amazonaws.com/angular-university/course-images/rxjs-in-practice-course.png',10,'Understand the RxJs Observable pattern, learn the RxJs Operators via practical examples',50,2,'rxjs-course'),(4,'BEGINNER','NgRx (with NgRx Data) - The Complete Guide','https://angular-university.s3-us-west-1.amazonaws.com/course-images/ngrx-v2.png',10,'Learn the modern Ngrx Ecosystem, including NgRx Data, Store, Effects, Router Store, Ngrx Entity, and Dev Tools.',50,1,'ngrx-course'),(5,'BEGINNER','Angular for Beginners','https://angular-academy.s3.amazonaws.com/thumbnails/angular2-for-beginners-small-v2.png',10,'Establish a solid layer of fundamentals, learn what\'s under the hood of Angular',50,4,'angular-for-beginners'),(6,'ADVANCED','Angular Security Course - Web Security Fundamentals','https://s3-us-west-1.amazonaws.com/angular-university/course-images/security-cover-small-v2.png',11,'Learn Web Security Fundamentals and apply them to defend an Angular / Node Application from multiple types of attacks.',50,9,'angular-security-course'),(7,'ADVANCED','Angular PWA - Progressive Web Apps Course','https://s3-us-west-1.amazonaws.com/angular-university/course-images/angular-pwa-course.png',8,'Learn Angular Progressive Web Applications, build the future of the Web Today.',50,10,'angular-pwa-course'),(8,'ADVANCED','Angular Advanced Library Laboratory: Build Your Own Library','https://angular-academy.s3.amazonaws.com/thumbnails/advanced_angular-small-v3.png',0,'Learn Advanced Angular functionality typically used in Library Development. Advanced Components, Directives, Testing, Npm',50,11,'angular-advanced-course'),(9,'BEGINNER','The Complete Typescript Course','https://angular-academy.s3.amazonaws.com/thumbnails/typescript-2-small.png',0,'Complete Guide to Typescript From Scratch: Learn the language in-depth and use it to build a Node REST API.',50,12,'typescript-course'),(10,'BEGINNER','Angular Material Course','https://s3-us-west-1.amazonaws.com/angular-university/course-images/material_design.png',0,'Build Applications with the official Angular Widget Library',50,14,'angular-material-course'),(11,'BEGINNER','Angular Testing Course','https://s3-us-west-1.amazonaws.com/angular-university/course-images/angular-testing-small.png',10,'In-depth guide to Unit Testing and E2E Testing of Angular Applications',50,5,'angular-testing-course'),(12,'BEGINNER','NestJs In Practice (with MongoDB)','https://angular-university.s3-us-west-1.amazonaws.com/course-images/nestjs-v2.png',10,'Build a modern REST backend using Typescript, MongoDB and the familiar Angular API.',50,8,'nestjs-course'),(13,'BEGINNER','Stripe Payments In Practice','https://angular-university.s3-us-west-1.amazonaws.com/course-images/stripe-course.jpg',10,'Build your own ecommerce store & membership website with Firebase, Stripe and Express',50,7,'stripe-course'),(14,'BEGINNER','Reactive Angular Course','https://angular-university.s3-us-west-1.amazonaws.com/course-images/reactive-angular-course.jpg',10,'How to build Angular applications in Reactive style using plain RxJs - Patterns and Anti-Patterns',50,0,'reactive-angular-course');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-12 22:21:58
