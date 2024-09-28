-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2024 at 10:16 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2024year12_kaelangraham`
--
CREATE DATABASE IF NOT EXISTS `2024year12_kaelangraham` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `2024year12_kaelangraham`;

-- --------------------------------------------------------

--
-- Table structure for table `body`
--

CREATE TABLE `body` (
  `id` int(2) NOT NULL,
  `body` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `body`
--

INSERT INTO `body` (`id`, `body`) VALUES
(1, 'Convertible'),
(2, 'Wagon'),
(3, 'Utility'),
(4, 'Coupe'),
(5, 'Hatchback'),
(6, 'Van'),
(7, 'Sedan'),
(8, 'SUV');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`) VALUES
(1, 'Audi'),
(2, 'BMW'),
(3, 'Daihatsu'),
(4, 'Ford'),
(5, 'Holden'),
(6, 'Honda'),
(7, 'Hyundai'),
(8, 'Jeep'),
(9, 'KIA'),
(10, 'Mazda'),
(11, 'Mercedes Benz'),
(12, 'Mitsubishi'),
(13, 'Nissan'),
(14, 'Subaru'),
(15, 'Suzuki'),
(16, 'Toyota'),
(17, 'Volkswagen'),
(18, 'Volvo');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand_id` int(2) NOT NULL,
  `body_id` int(2) NOT NULL,
  `price` int(6) NOT NULL,
  `year` int(5) NOT NULL,
  `odometer` int(6) NOT NULL,
  `fuel_id` int(1) NOT NULL,
  `transmission_id` int(1) NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) NOT NULL,
  `img3` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `brand_id`, `body_id`, `price`, `year`, `odometer`, `fuel_id`, `transmission_id`, `img1`, `img2`, `img3`) VALUES
(1, 'Mazda Atenza', 10, 2, 15900, 2017, 146677, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2017-mazda-atenza-25566870_19198402.jpg', 'https://content.tgstatic.co.nz/photos/good/2017-mazda-atenza-25566870_19198426.jpg', 'https://content.tgstatic.co.nz/photos/good/2017-mazda-atenza-25566870_19198412.jpg'),
(2, 'Nissan Navara ST-X', 13, 3, 29000, 2017, 129557, 2, 1, 'https://content.tgstatic.co.nz/photos/good/2017-nissan-navara-25781277_19197588.jpg', 'https://content.tgstatic.co.nz/photos/good/2017-nissan-navara-25781277_19197596.jpg', 'https://content.tgstatic.co.nz/photos/good/2017-nissan-navara-25781277_19197605.jpg'),
(3, 'Ford Mondeo', 4, 5, 8990, 2012, 140000, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2012-ford-mondeo-25736913_19197228.jpg', 'https://content.tgstatic.co.nz/photos/good/2012-ford-mondeo-25736913_19197237.jpg', 'https://content.tgstatic.co.nz/photos/good/2012-ford-mondeo-25736913_19197241.jpg'),
(4, 'Toyota Rav4 GX', 16, 8, 32595, 2020, 44244, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2020-toyota-rav4-25771847_19196222.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-toyota-rav4-25771847_19196224.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-toyota-rav4-25771847_19196222.jpg'),
(5, 'Toyota Corolla GLX', 16, 5, 16995, 2017, 67950, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2017-toyota-corolla-25760807_19195774.jpg', 'https://content.tgstatic.co.nz/photos/good/2017-toyota-corolla-25760807_19195787.jpg', 'https://content.tgstatic.co.nz/photos/good/2017-toyota-corolla-25760807_19195806.jpg'),
(6, 'Subaru Outback Premium', 14, 8, 25993, 2020, 135099, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2020-subaru-outback-19384765_19195676.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-subaru-outback-19384765_19195681.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-subaru-outback-19384765_19195692.jpg'),
(7, 'Audi A1', 1, 5, 11995, 2014, 77612, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2014-audi-a1-25788421_19195561.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-audi-a1-25788421_19195567.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-audi-a1-25788421_19195576.jpg'),
(8, 'Suzuki Jimny JXB', 15, 8, 15990, 2014, 117153, 1, 2, 'https://content.tgstatic.co.nz/photos/good/2014-suzuki-jimny-25781616_19194931.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-suzuki-jimny-25781616_19194938.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-suzuki-jimny-25781616_19194948.jpg'),
(9, 'Mazda Atenza', 10, 2, 15900, 2013, 117097, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2013-mazda-atenza-25631061_19194907.jpg', 'https://content.tgstatic.co.nz/photos/good/2013-mazda-atenza-25631061_19194657.jpg', 'https://content.tgstatic.co.nz/photos/good/2013-mazda-atenza-25631061_19194666.jpg'),
(10, 'Hyundai I30 PDE 1.5 Hatch', 7, 5, 16995, 2021, 54465, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2021-hyundai-i30-25770015_19194910.jpg', 'https://content.tgstatic.co.nz/photos/good/2021-hyundai-i30-25770015_19194917.jpg', 'https://content.tgstatic.co.nz/photos/good/2021-hyundai-i30-25770015_19194925.jpg'),
(11, 'Subaru Exiga', 14, 2, 11990, 2012, 103117, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2012-subaru-exiga-25690000_19194226.jpg', 'https://content.tgstatic.co.nz/photos/good/2012-subaru-exiga-25690000_19194235.jpg', 'https://content.tgstatic.co.nz/photos/good/2012-subaru-exiga-25690000_19194240.jpg'),
(12, 'Suzuki Swift GLC', 15, 5, 17530, 2020, 13629, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2020-suzuki-swift-24951336_19194184.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-suzuki-swift-24951336_19194192.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-suzuki-swift-24951336_19194202.jpg'),
(13, 'Toyota Rav4 GX', 16, 8, 36095, 2020, 118759, 6, 1, 'https://content.tgstatic.co.nz/photos/good/2020-toyota-rav4-19384636_19193840.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-toyota-rav4-19384636_19193846.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-toyota-rav4-19384636_19193854.jpg'),
(14, 'Ford Falcon FG XR6', 4, 7, 11995, 2011, 222280, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2011-ford-falcon-25777979_19193688.jpg', 'https://content.tgstatic.co.nz/photos/good/2011-ford-falcon-25777979_19193705.jpg', 'https://content.tgstatic.co.nz/photos/good/2011-ford-falcon-25777979_19193718.jpg'),
(15, 'Toyota Corolla GX', 16, 5, 26095, 2021, 33400, 6, 1, 'https://content.tgstatic.co.nz/photos/good/2021-toyota-corolla-25750870_19193424.jpg', 'https://content.tgstatic.co.nz/photos/good/2021-toyota-corolla-25750870_19193430.jpg', 'https://content.tgstatic.co.nz/photos/good/2021-toyota-corolla-25750870_19193440.jpg'),
(16, 'Ford Ranger XLT Double CAB W/SA', 4, 3, 34665, 2020, 196404, 2, 1, 'https://content.tgstatic.co.nz/photos/good/2020-ford-ranger-22983635_19193377.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-ford-ranger-22983635_19193392.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-ford-ranger-22983635_19193407.jpg'),
(17, 'KIA Stonic LX', 9, 8, 19815, 2021, 19320, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2021-kia-stonic-25763822_19192668.jpg', 'https://content.tgstatic.co.nz/photos/good/2021-kia-stonic-25763822_19192674.jpg', 'https://content.tgstatic.co.nz/photos/good/2021-kia-stonic-25763822_19192683.jpg'),
(19, 'Audi A3 1.4T', 1, 5, 12990, 2013, 58858, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2013-audi-a3-25713410_19192625.jpg', 'https://content.tgstatic.co.nz/photos/good/2013-audi-a3-25713410_19192631.jpg', 'https://content.tgstatic.co.nz/photos/good/2013-audi-a3-25713410_19192640.jpg'),
(20, 'Mazda Atenza', 10, 7, 13990, 2015, 149811, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2015-mazda-atenza-25774759_19192521.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-mazda-atenza-25774759_19192528.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-mazda-atenza-25774759_19192536.jpg'),
(21, 'Suzuki Vitara Turbo', 15, 8, 24990, 2021, 28215, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2021-suzuki-vitara-25755351_19192501.jpg', 'https://content.tgstatic.co.nz/photos/good/2021-suzuki-vitara-25755351_19192505.jpg', 'https://content.tgstatic.co.nz/photos/good/2021-suzuki-vitara-25755351_19192513.jpg'),
(22, 'Nissan Micra', 13, 5, 6990, 2008, 71478, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2008-nissan-micra-25760811_19192344.jpg', 'https://content.tgstatic.co.nz/photos/good/2008-nissan-micra-25760811_19192353.jpg', 'https://content.tgstatic.co.nz/photos/good/2008-nissan-micra-25760811_19192363.jpg'),
(23, 'Suzuki Swift Sport', 15, 5, 20990, 2022, 24904, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2022-suzuki-swift-25766935_19191981.jpg', 'https://content.tgstatic.co.nz/photos/good/2022-suzuki-swift-25766935_19191985.jpg', 'https://content.tgstatic.co.nz/photos/good/2022-suzuki-swift-25766935_19191995.jpg'),
(24, 'Holden Colorado LT DC PU', 5, 3, 16990, 2015, 171991, 2, 1, 'https://content.tgstatic.co.nz/photos/good/2015-holden-colorado-25781443_19192695.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-holden-colorado-25781443_19192705.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-holden-colorado-25781443_19192710.jpg'),
(25, 'Toyota IST', 16, 5, 2995, 2002, 192818, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2002-toyota-ist-25778034_19199132.jpg', 'https://content.tgstatic.co.nz/photos/good/2002-toyota-ist-25778034_19199141.jpg', 'https://content.tgstatic.co.nz/photos/good/2002-toyota-ist-25778034_19199150.jpg'),
(26, 'Suzuki SX4', 15, 5, 4595, 2006, 108121, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2006-suzuki-sx4-25773557_19193636.jpg', 'https://content.tgstatic.co.nz/photos/good/2006-suzuki-sx4-25773557_19193644.jpg', 'https://content.tgstatic.co.nz/photos/good/2006-suzuki-sx4-25773557_19193653.jpg'),
(27, 'Mazda Bt-50 GSX D/C W/S', 10, 3, 14995, 2016, 239423, 2, 1, 'https://content.tgstatic.co.nz/photos/good/2016-mazda-bt-50-22982508_19198833.jpg', 'https://content.tgstatic.co.nz/photos/good/2016-mazda-bt-50-22982508_19198835.jpg', 'https://content.tgstatic.co.nz/photos/good/2016-mazda-bt-50-22982508_19198847.jpg'),
(28, 'Subaru Outback', 14, 8, 21990, 2020, 130898, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2020-subaru-outback-22930840_19196821.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-subaru-outback-22930840_19196826.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-subaru-outback-22930840_19196833.jpg'),
(29, 'Hyundai Santa FE DM', 7, 8, 6550, 2014, 197447, 2, 1, 'https://content.tgstatic.co.nz/photos/good/2014-hyundai-santa-fe-25775565_19193954.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-hyundai-santa-fe-25775565_19193958.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-hyundai-santa-fe-25775565_19193968.jpg'),
(30, 'Holden Rodeo 4X4 LX Crew PU TD', 5, 3, 3990, 2008, 414611, 2, 2, 'https://content.tgstatic.co.nz/photos/good/2008-holden-rodeo-4x4-25757684_19195892.jpg', 'https://content.tgstatic.co.nz/photos/good/2008-holden-rodeo-4x4-25757684_19195899.jpg', 'https://content.tgstatic.co.nz/photos/good/2008-holden-rodeo-4x4-25757684_19195918.jpg'),
(32, 'Ford Fiesta Sport', 4, 5, 11690, 2014, 94680, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2014-ford-fiesta-25715416_19005286.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-ford-fiesta-25715416_19005293.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-ford-fiesta-25715416_19005303.jpg'),
(33, 'Nissan Note E-Power', 13, 5, 13095, 2018, 51124, 6, 1, 'https://content.tgstatic.co.nz/photos/good/2018-nissan-note-25507982_18293782.jpg', 'https://content.tgstatic.co.nz/photos/good/2018-nissan-note-25507982_18293774.jpg', ''),
(34, 'Nissan Pulsar ST', 13, 5, 11888, 2017, 72976, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2017-nissan-pulsar-25737772_19038194.jpg', 'https://content.tgstatic.co.nz/photos/good/2017-nissan-pulsar-25737772_19038211.jpg', 'https://content.tgstatic.co.nz/photos/good/2017-nissan-pulsar-25737772_19038238.jpg'),
(35, 'Mitsubishi ASX XLS 2WD', 12, 8, 16695, 2016, 50779, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2016-mitsubishi-asx-25691427_18942850.jpg', 'https://content.tgstatic.co.nz/photos/good/2016-mitsubishi-asx-25691427_18942865.jpg', 'https://content.tgstatic.co.nz/photos/good/2016-mitsubishi-asx-25691427_18942886.jpg'),
(36, 'Mitsubishi ASX XLS 2WD', 12, 8, 16990, 2017, 94470, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2017-mitsubishi-asx-25709588_18963906.jpg', 'https://content.tgstatic.co.nz/photos/good/2017-mitsubishi-asx-25709588_18963908.jpg', 'https://content.tgstatic.co.nz/photos/good/2017-mitsubishi-asx-25709588_18963918.jpg'),
(37, 'Honda Grace', 6, 7, 11850, 2015, 119725, 6, 1, 'https://content.tgstatic.co.nz/photos/good/2015-honda-grace-25529117_18803175.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-honda-grace-25529117_18803189.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-honda-grace-25529117_18803203.jpg'),
(38, 'Ford Fiesta Sport', 4, 5, 11690, 2014, 94680, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2014-ford-fiesta-25715416_19005286.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-ford-fiesta-25715416_19005293.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-ford-fiesta-25715416_19005303.jpg'),
(40, 'Toyota Corolla GX', 16, 5, 15895, 2019, 124140, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2019-toyota-corolla-25654228_18791464.jpg', 'https://content.tgstatic.co.nz/photos/good/2019-toyota-corolla-25654228_18791472.jpg', 'https://content.tgstatic.co.nz/photos/good/2019-toyota-corolla-25654228_18791481.jpg'),
(41, 'Nissan Serena', 13, 2, 12965, 2015, 101866, 1, 0, 'https://content.tgstatic.co.nz/photos/good/2015-nissan-serena-25604310_19048677.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-nissan-serena-25604310_19048672.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-nissan-serena-25604310_19048682.jpg'),
(42, 'Subaru Outback  4WD', 14, 2, 16950, 2015, 105917, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2015-subaru-outback-25145610_18658829.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-subaru-outback-25145610_18658841.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-subaru-outback-25145610_18658865.jpg'),
(43, 'Ford Escape Trend AWD Diesel 4WD', 4, 8, 19530, 2020, 81722, 2, 1, 'https://content.tgstatic.co.nz/photos/good/2020-ford-escape-22983313_19014202.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-ford-escape-22983313_19014211.jpg', 'https://content.tgstatic.co.nz/photos/good/2020-ford-escape-22983313_19014225.jpg'),
(44, 'Nissan Qashqai TI 2WD', 13, 8, 18815, 2015, 99165, 1, 0, 'https://content.tgstatic.co.nz/photos/good/2015-nissan-qashqai-25601963_18801308.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-nissan-qashqai-25601963_18801314.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-nissan-qashqai-25601963_18801324.jpg'),
(45, 'Suzuki Swift RS', 15, 5, 17890, 2021, 33452, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2021-suzuki-swift-25687859_18890344.jpg', 'https://content.tgstatic.co.nz/photos/good/2021-suzuki-swift-25687859_18890353.jpg', 'https://content.tgstatic.co.nz/photos/good/2021-suzuki-swift-25687859_18890362.jpg'),
(46, 'Mazda Demio', 10, 5, 12000, 2014, 43913, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2014-mazda-demio-25566889_18889661.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-mazda-demio-25566889_18889670.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-mazda-demio-25566889_18889678.jpg'),
(47, 'BMW 1 Series 118D 1.8L', 2, 5, 10095, 2012, 148445, 2, 1, 'https://content.tgstatic.co.nz/photos/good/2012-bmw-1-series-25668351_18860218.jpg', 'https://content.tgstatic.co.nz/photos/good/2012-bmw-1-series-25668351_18860233.jpg', 'https://content.tgstatic.co.nz/photos/good/2012-bmw-1-series-25668351_18860243.jpg'),
(48, 'BMW 523D', 2, 2, 14490, 2014, 70795, 2, 1, 'https://content.tgstatic.co.nz/photos/good/2014-bmw-523d-24486057_18416338.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-bmw-523d-24486057_18416346.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-bmw-523d-24486057_18416355.jpg'),
(49, 'BMW 118I M Sport', 2, 5, 11850, 2015, 80223, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2015-bmw-118i-25564361_18600104.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-bmw-118i-25564361_18600110.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-bmw-118i-25564361_18600132.jpg'),
(50, 'Honda FIT Hybrid', 6, 5, 12990, 2016, 97147, 6, 1, 'https://content.tgstatic.co.nz/photos/good/2016-honda-fit-25494754_19020605.jpg', 'https://content.tgstatic.co.nz/photos/good/2016-honda-fit-25494754_19020609.jpg', 'https://content.tgstatic.co.nz/photos/good/2016-honda-fit-25494754_19020617.jpg'),
(51, 'Honda FIT Shuttle', 6, 5, 10700, 2013, 76676, 6, 1, 'https://content.tgstatic.co.nz/photos/good/2013-honda-fit-shuttle-25500174_18770148.jpg', 'https://content.tgstatic.co.nz/photos/good/2013-honda-fit-shuttle-25500174_18770158.jpg', 'https://content.tgstatic.co.nz/photos/good/2013-honda-fit-shuttle-25500174_18770176.jpg'),
(52, 'Jeep Cherokee Sport 2WD', 8, 8, 14415, 2015, 147278, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2015-jeep-cherokee-25697382_18904989.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-jeep-cherokee-25697382_18904994.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-jeep-cherokee-25697382_18905010.jpg'),
(54, 'Mercedes Benz B180', 11, 5, 10490, 2013, 51938, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2013-mercedes-benz-b180-24448974_19079347.jpg', 'https://content.tgstatic.co.nz/photos/good/2013-mercedes-benz-b180-24448974_19079348.jpg', 'https://content.tgstatic.co.nz/photos/good/2013-mercedes-benz-b180-24448974_19079354.jpg'),
(55, 'Volkswagen Tiguan TSI 110KW 2WD', 17, 8, 11190, 2013, 160270, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2013-volkswagen-tiguan-25699996_18953532.jpg', 'https://content.tgstatic.co.nz/photos/good/2013-volkswagen-tiguan-25699996_18953535.jpg', 'https://content.tgstatic.co.nz/photos/good/2013-volkswagen-tiguan-25699996_18953543.jpg'),
(56, 'Volkswagen Golf', 17, 5, 10190, 2010, 68183, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2010-volkswagen-golf-25701635_18961803.jpg', 'https://content.tgstatic.co.nz/photos/good/2010-volkswagen-golf-25701635_18961819.jpg', 'https://content.tgstatic.co.nz/photos/good/2010-volkswagen-golf-25701635_18961835.jpg'),
(57, 'Volkswagen Tiguan TSI Highline 4Motion 4WD', 17, 8, 19590, 2016, 120413, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2016-volkswagen-tiguan-22917496_18360617.jpg', 'https://content.tgstatic.co.nz/photos/good/2016-volkswagen-tiguan-22917496_18360626.jpg', 'https://content.tgstatic.co.nz/photos/good/2016-volkswagen-tiguan-22917496_18360635.jpg'),
(58, 'Volkswagen Golf', 17, 2, 13480, 2015, 77109, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2015-volkswagen-golf-25500436_18725328.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-volkswagen-golf-25500436_18725335.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-volkswagen-golf-25500436_18725346.jpg'),
(59, 'Volkswagen Polo', 17, 5, 12950, 2014, 27886, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2014-volkswagen-polo-24475749_18851336.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-volkswagen-polo-24475749_18851342.jpg', 'https://content.tgstatic.co.nz/photos/good/2014-volkswagen-polo-24475749_18851352.jpg'),
(60, 'Nissan NV350', 13, 6, 17990, 2016, 112578, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2016-nissan-nv350-25648291_18812509.jpg', 'https://content.tgstatic.co.nz/photos/good/2016-nissan-nv350-25648291_18812518.jpg', 'https://content.tgstatic.co.nz/photos/good/2016-nissan-nv350-25648291_18812524.jpg'),
(61, 'Nissan NV350 Caravan', 13, 6, 19530, 2015, 143964, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2015-nissan-nv350-25669613_18889351.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-nissan-nv350-25669613_18889357.jpg', 'https://content.tgstatic.co.nz/photos/good/2015-nissan-nv350-25669613_18889376.jpg'),
(62, 'Hyundai Iload Crdi', 7, 6, 10980, 2013, 229187, 2, 1, 'https://content.tgstatic.co.nz/photos/good/2013-hyundai-iload-25651879_18862739.jpg', 'https://content.tgstatic.co.nz/photos/good/2013-hyundai-iload-25651879_18862748.jpg', 'https://content.tgstatic.co.nz/photos/good/2013-hyundai-iload-25651879_18862755.jpg'),
(63, 'Volkswagen T5 LWB TDI TIP', 17, 6, 20930, 2008, 174129, 2, 1, 'https://content.tgstatic.co.nz/photos/good/2008-volkswagen-t5-25607357_18687091.jpg', 'https://content.tgstatic.co.nz/photos/good/2008-volkswagen-t5-25607357_18687099.jpg', 'https://content.tgstatic.co.nz/photos/good/2008-volkswagen-t5-25607357_18687107.jpg'),
(64, 'KIA Koup LX', 9, 4, 10120, 2010, 44333, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2010-kia-koup-25632290_18879259.jpg', 'https://content.tgstatic.co.nz/photos/good/2010-kia-koup-25632290_18879262.jpg', 'https://content.tgstatic.co.nz/photos/good/2010-kia-koup-25632290_18879269.jpg'),
(65, 'KIA Koup LX', 9, 4, 10120, 2010, 44333, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2010-kia-koup-25632290_18879259.jpg', 'https://content.tgstatic.co.nz/photos/good/2010-kia-koup-25632290_18879262.jpg', 'https://content.tgstatic.co.nz/photos/good/2010-kia-koup-25632290_18879269.jpg'),
(66, 'Mercedes-Benz CLS 500', 11, 4, 8090, 2005, 93815, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2005-mercedes-benz-cls-500-25649320_18766636.jpg', 'https://content.tgstatic.co.nz/photos/good/2005-mercedes-benz-cls-500-25649320_18766643.jpg', 'https://content.tgstatic.co.nz/photos/good/2005-mercedes-benz-cls-500-25649320_18766653.jpg'),
(67, 'Mitsubishi ASX XLS 2WD', 12, 8, 16990, 2017, 94470, 1, 1, 'https://content.tgstatic.co.nz/photos/good/2017-mitsubishi-asx-25709588_18963906.jpg', 'https://content.tgstatic.co.nz/photos/good/2017-mitsubishi-asx-25709588_18963908.jpg', 'https://content.tgstatic.co.nz/photos/good/2017-mitsubishi-asx-25709588_18963918.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fuel`
--

CREATE TABLE `fuel` (
  `id` int(1) NOT NULL,
  `fuel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fuel`
--

INSERT INTO `fuel` (`id`, `fuel`) VALUES
(1, 'Petrol'),
(2, 'Diesel'),
(3, 'Hybrid'),
(4, 'Electric'),
(5, 'Plugin Hybrid'),
(6, 'Petrol Hybrid');

-- --------------------------------------------------------

--
-- Table structure for table `transmission`
--

CREATE TABLE `transmission` (
  `id` int(1) NOT NULL,
  `transmission` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transmission`
--

INSERT INTO `transmission` (`id`, `transmission`) VALUES
(1, 'Automatic'),
(2, 'Manual');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `body`
--
ALTER TABLE `body`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuel`
--
ALTER TABLE `fuel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transmission`
--
ALTER TABLE `transmission`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `body`
--
ALTER TABLE `body`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transmission`
--
ALTER TABLE `transmission`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
