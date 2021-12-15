-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2021 a las 11:49:53
-- Versión del servidor: 10.5.12-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u499315869_UNSTA`
--

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_tp_mask_2`
--

CREATE VIEW `vista_tp_mask_2`  AS  select `Client_info`.`CLIENTNUM` AS `CLIENTNUM`,`Client_info`.`Gender` AS `Gender`,`Customer_type`.`Customer_type` AS `Attrition_Flag`,`Finance_info`.`Card_Category` AS `Card_Category`,'XXXX' AS `Income_Category` from ((`Finance_info` join `Client_info` on(`Finance_info`.`CLIENTNUM` = `Client_info`.`CLIENTNUM`)) join `Customer_type` on(`Finance_info`.`Attrition_Flag_ID` = `Customer_type`.`ID`)) ;

--
-- VIEW  `vista_tp_mask_2`
-- Datos: Ninguna
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
