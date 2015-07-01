-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 01-07-2015 a las 07:27:50
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `ventas`
-- 
CREATE DATABASE `ventas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ventas`;

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `cliente`
-- 

CREATE TABLE IF NOT EXISTS `cliente` (
  `IdCliente` int(11) NOT NULL auto_increment,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Fecha_Nacimiento` varchar(45) NOT NULL,
  `Direccion` text,
  PRIMARY KEY  (`IdCliente`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `cliente`
-- 

INSERT INTO `cliente` (`IdCliente`, `Nombre`, `Apellido`, `Fecha_Nacimiento`, `Direccion`) VALUES 
(1, 'ronald', 'arrieta', '23-12-2008', 'uc123'),
(2, 'enrique', 'leyva', '21-12-2006', 'er222'),
(3, 'ronald2', 'enrique', '21-12-2006', 'uc123'),
(4, 'erika', 're', '21-12-2006', 'uc123'),
(5, 'liz', 'rerr', '21-12-2006', 'uc123'),
(6, 'teo', 'chv', '21-12-2006', 'uc123'),
(7, 'silv', 'ww', '21-12-2006', 'uc123'),
(8, 'gor', 'ee', '21-12-2006', 'uc123');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `detalleventa`
-- 

CREATE TABLE IF NOT EXISTS `detalleventa` (
  `IdDetalle` int(11) NOT NULL auto_increment,
  `IdVenta` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `Descuento` decimal(18,2) default NULL,
  PRIMARY KEY  (`IdDetalle`),
  KEY `IdVentas_idx` (`IdVenta`),
  KEY `IdProductos_idx` (`IdProducto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `detalleventa`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `productos`
-- 

CREATE TABLE IF NOT EXISTS `productos` (
  `IdProdcuto` int(11) NOT NULL auto_increment,
  `Nombre` varchar(45) NOT NULL,
  `Precio` decimal(18,2) NOT NULL,
  PRIMARY KEY  (`IdProdcuto`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `productos`
-- 

INSERT INTO `productos` (`IdProdcuto`, `Nombre`, `Precio`) VALUES 
(1, 'decla', 33.00),
(2, 'toxi', 35.00),
(3, 'her', 54.00),
(4, 'dwe', 456.00),
(5, 'rte', 465456.00),
(6, 'wew', 34.00),
(7, 'reew', 534.00),
(8, 'erw', 23.00);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ventas`
-- 

CREATE TABLE IF NOT EXISTS `ventas` (
  `IdVenta` int(11) NOT NULL auto_increment,
  `Fecha` date NOT NULL,
  `IdCliente` int(11) NOT NULL,
  PRIMARY KEY  (`IdVenta`),
  KEY `IdClientes_idx` (`IdCliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `ventas`
-- 

