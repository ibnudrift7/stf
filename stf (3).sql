-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2020 pada 09.19
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stf`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `address`
--

CREATE TABLE `address` (
  `id` int(25) NOT NULL,
  `category_id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `address_1` varchar(100) NOT NULL,
  `address_2` varchar(100) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `prov` varchar(200) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lat` decimal(15,7) NOT NULL,
  `lng` decimal(15,7) NOT NULL,
  `link` text,
  `type` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `address`
--

INSERT INTO `address` (`id`, `category_id`, `nama`, `address_1`, `address_2`, `telp`, `fax`, `image`, `prov`, `kota`, `email`, `lat`, `lng`, `link`, `type`, `sort`) VALUES
(2, 0, 'PT. Toscar Perkasa Indonesia', 'Jl. Taman Surya 5 Kawasan Palm Paradise Ruko Royal Paradise A19, RT.4/RW.3, Pegadungan, Kalideres', '', '021 - 2967 1014', '', '', 'DKI Jakarta', 'Jakarta Barat', '', '-6.1343570', '106.7068275', NULL, 'dealer', 106),
(3, 0, 'PT. Dynami Perkasa Indonesia', 'Komplek Surya Inti Permata I Blok B 8-9, Jl. HR. Muhammad Kav. 360-380, Pradahkalikendal, Surabaya', '', '031 - 734 2189', '', '', 'Jawa Timur', 'Surabaya', '', '-7.2825370', '112.6864250', NULL, 'dealer', 111),
(4, 0, 'PT. Hamparan Daya Cipta Infinity', 'Jl. Musyawarah No.29, RT.3/RW.2, Kb. Jeruk, Kota, Jakarta Barat', '', '021 - 5695 8989', '', '', 'DKI Jakarta', 'Jakarta Barat', '', '-6.2005790', '106.7717330', NULL, 'dealer', 101),
(5, 0, 'PT. Binamitra Handaya Perkasa', 'JL kelapa Hibrida Raya RA. 3/15, Pegangsaan dua, Kelapa gading, Jakarta Utara 14250', '', '021 - 4534512', '', '', 'DKI Jakarta', 'Jakarta Utara', '', '-6.1480720', '106.9104790', NULL, 'dealer', 116),
(6, 0, 'PT. Seltech Utama Mandiri', 'Jl. Sisingamangaraja KM.7,2 No.170, Harjosari II, Medan Amplas, Kota Medan', '', '061 - 7862123', '', '', 'Sumatera Utara', 'Medan ', '', '3.5373010', '98.7097430', NULL, 'dealer', 121),
(7, 0, 'PT. Wijaya Makmur Abadi Sejahtera', 'The Icon Business Park Ruko C Blok G/3 Lantai 1  BSD City Tangerang ', '', '+62 813-8373-2211', '', '', 'Banten', 'Tangerang', '', '-6.3164810', '106.6518290', NULL, 'dealer', 126),
(8, 0, 'PT. Penta Aircond', 'The Icon Business Park Ruko C Blok G/3 Lantai 2  BSD City Tangerang ', '', '0882-1091-9772', '', '', 'Banten', 'Tangerang', '', '-6.3164810', '106.6518290', NULL, 'dealer', 131),
(9, 0, 'PT. Eskimo Wieraperdana', 'Jl. Palmerah Barat Blok B-5 No. 38, Grogol Utara, Kebayoran Lama, Jakarta Selatan', '', '(021) 5308791   ', '', '', 'DKI Jakarta', 'Jakarta Selatan', '', '-6.2073270', '106.7865160', NULL, 'dealer', 136),
(10, 0, 'PT. Arista Pratama Jaya', 'Jl. Tebet Barat Dalam Raya No.35, RT.6/RW.3, Tebet, Kota Jakarta Selatan', '', '021 8302150', '', '', 'DKI Jakarta', 'Jakarta Selatan', '', '-6.2365220', '106.8473160', NULL, 'dealer', 141),
(12, 0, 'PT. Anekabangun Eka Pratama', 'Rukan Royal Palace Blok B-26 JL Prof. Dr. Soepomo, SH No. 178 Jakarta Selatan 12870', '', '021 - 8350103', '', '', 'DKI Jakarta', 'Jakarta Selatan', '', '-6.2291320', '106.8473150', NULL, 'dealer', 146),
(13, 0, 'CV. Multi Wahana Aircond', 'Rukan Artha Gading Niaga blok C No. 8, Kelapa Gading, Jakarta Utara', '', '021 453 3996 / 021 4533899 / 021 45850561 / 021 45850562', '', '', 'DKI Jakarta', 'Jakarta Utara', '', '-6.1460890', '106.8954940', 'http://www.acwahana.com', 'dealer', 20),
(14, 0, 'PT. Asri Lestari (Dunia Electric)', 'Ruko Glodok Plaza H/12A, Jl. Pinangsia Raya, Jakarta Barat', '', '021-6296264, 6280186, 6261323, 6011903', '', '', 'DKI Jakarta', 'Jakarta Barat', '', '-6.1427747', '106.8168229', NULL, 'dealer', 1),
(15, 0, 'PT. Gunung Bintang Semesta', 'JL Danau Sunter Utara Blok J 12/23,Jakarta Utara', '', '021 - 6505022, 6505236, 6505021', '', '', 'DKI Jakarta', 'Jakarta Utara', '', '-6.1406010', '106.8833000', NULL, 'dealer', 10),
(16, 0, 'PT. Grand Indo Sukses (Grand Elektronik)', 'JL Pluit Permai Raya No. 18 C, RT 002 RW.004, Pluit - Penjaringan Jakarta Utara', '', '021 - 6684826, 6626652, 6627282, 6627304', '', '', 'DKI Jakarta', 'Jakarta Utara', '', '-6.1155610', '106.7888440', NULL, 'dealer', 5),
(22, 0, 'PT. Berca Carrier Indonesia (JKT-SC)', 'Jl. Agung Timur II Blok O No. 40-41, Sunter, Jakarta 14350', '', '021-26608088', '', '', 'DKI Jakarta', 'Jakarta', '', '-6.1311320', '106.8987500', NULL, 'asp', 401),
(23, 0, 'Vida Air* (JKT-ASP-VDR)', 'Jl. Kemuning No. 67, Tomang, Jakarta 11440', '', '021-80681341, 083815001100', '', '', 'DKI Jakarta', 'Jakarta Barat', '', '-6.1232430', '106.9081690', NULL, 'asp', 406),
(24, 0, 'CV. Jumadi Inti Teknik (BTN-ASP-JIT)', 'Green Lake City Rukan CBD Blok M 33, Gondrong, Tangerang 15146', '', '021-22052969, 087780700014', '', '', 'Banten', 'Tangerang', '', '-6.2252540', '106.9068690', NULL, 'asp', 411),
(25, 0, 'Berkat Service (BTN-ASP-BTS)', 'Perum Villa Taman Bandara Blok B1 No. 10, Jl.Raya Perancis Dadap, Tangerang', '', '08118702832, 021-55961152/98226924/70283268/95016070', '', '', 'Banten', 'Tangerang', '', '-6.0920650', '106.6988340', NULL, 'asp', 416),
(26, 0, 'CV. Lintas Teknik (JWB-ASP-CLT)', 'Jl. Bintara 4 No. 5 RT. 02/16, Bintara, Bekasi Barat', '', '021-29485981', '', '', 'Jawa Barat', 'Bekasi', '', '-6.2232890', '106.9509000', NULL, 'asp', 421),
(27, 0, 'Anugrah Service (JWB-ASP-ANS)', 'Jl. Raya Cilendek No. 28, Cemplang Baru, Bogor', '', '0251-7539400/081314611100', '', '', 'Jawa Barat', 'Bogor', '', '-6.5686350', '106.7658930', NULL, 'asp', 426),
(28, 0, 'Mandiri Jaya Electronics (JWB-ASP-MJE)', 'Jl. Proklamasi Blok E No. 11 RT. 02/23, Kel. Abadijaya, Kec. Sukmajaya, Depok ', '', '021-77827663/92168349/94066940/93238276', '', '', 'Jawa Barat', 'Depok', '', '-6.3963580', '106.8430440', NULL, 'asp', 431),
(29, 0, 'YS Service (JWB-ASP-YSS)', 'Kp. Marga Mulya RT. 01/05 Kavling, Kel. Marga Mulya, Kec. Kota Baru Cikampek 41361', '', '0264-7001253', '', '', 'Jawa Barat', 'Cikampek', '', '-6.4178130', '107.4762030', NULL, 'asp', 436),
(30, 0, 'Mandiri Jaya Electronics (JWB-ASP-MJE)', 'Jl. Jendral Amir Mahmud / Raya Cibabat No. 351, Cimahi, Jawa Barat ', '', '022-70097199/93871789', '', '', 'Jawa Barat', 'Cimahi', '', '-6.8872300', '107.5549510', NULL, 'asp', 441),
(31, 0, 'CV. Sinar Teknindo Perkasa  (JWB-ASP-STP)', 'Perum Griya Mas Lestari Blok B-4 No. 2 RT. 38/09, Pondang Jaya, Klari, Karawang ', '', '0267–8635904/7011191/085119902225', '', '', 'Jawa Barat', 'Karawang', '', '-6.3288940', '107.3379060', NULL, 'asp', 446),
(32, 0, 'Mandiri Jaya Electronics (JWB-ASP-MJE)', 'Jl. Raya Sadang Subang No. 11 RT. 04/02, Kec. Campaka, Purwakarta', '', '0264-9114355', '', '', 'Jawa Barat', 'Purwakarta', '', '-6.5204240', '107.4587700', NULL, 'asp', 451),
(33, 0, 'Abie Anugerah Service (JWB-ASP-ANS)', 'Jl. Jaksa Ii No. 09 D, Sukamelang, Subang 41251', '', '0260-421962', '', '', 'Jawa Barat', 'Subang', '', '-6.5515360', '107.7732130', NULL, 'asp', 456),
(34, 0, 'YS Service (JWB-ASP-YSS)', 'Jl. Raya Tanjung Wangi No. 184 RT. 04/02, Kec. Cijambe, Subang 41372', '', '0260-422348/08882223949', '', '', 'Jawa Barat', 'Subang', '', '-6.5970660', '107.7344770', NULL, 'asp', 461),
(35, 0, 'Bhayangkara Service (JWB-ASP-BHS)', 'Jl. Bhayangkara No. 72, Sukabumi, Jawa Barat', '', '0266-223622/081563275011/081381049409', '', '', 'Jawa Barat', 'Sukabumi', '', '-6.9186480', '106.9161820', NULL, 'asp', 466),
(36, 0, 'Electronics 99 (JWB-ASP-E99)', 'Jl. KH. Mustofa No. 345, Tasik Indah Plaza No. 10, Tasikmalaya 46115', '', '0265-345035/085223456699', '', '', 'Jawa Barat', 'Tasikmalaya', '', '-7.3451390', '108.2179150', NULL, 'asp', 471),
(37, 0, 'Dadi Electronic (JWT-ASP-DDE)', 'Jl. Kuta Banjarnegara RT. 01/02, Banjar Negara 53414', '', '0286-592254/591792/592256', '', '', 'Jawa Tengah', 'Banjarnegara', '', '-7.3978150', '123456.0000000', NULL, 'asp', 476),
(38, 0, 'Surya Kencana Elektronik (JWT-ASP-SKE)', 'Jl. Lesanpura RT. 05/02, Ruko Fajar No. 1, Teluk Purwokerto Selatan, Kab. Banyumas 53145', '', '0851 0161 4414 / 0813 2741 3344 / 0816 6945 70', '', '', 'Jawa Tengah', 'Banyumas', '', '-7.4320830', '109.2477340', NULL, 'asp', 481),
(39, 0, 'CV. Kadang Bayu (JWT-ASP-CKB)', 'Jl. Gatot Subroto Km. 1, Blora 58213', '', '08112708133, 0296-532761', '', '', 'Jawa Tengah', 'Blora', '', '-6.9691280', '111.3971820', NULL, 'asp', 486),
(40, 0, 'Surya Kencana Elektronik (JWT-ASP-SKE)', 'Jl. Rinjani No. 233, Cilacap', '', '08164280209', '', '', 'Jawa Tengah', 'Cilacap', '', '-7.6687320', '109.0743810', NULL, 'asp', 491),
(41, 0, 'Mekar Jaya Tehnik (JWT-ASP-MJT)', 'Ds. Kedung Waringin RT. 01/ 02, Kec. Patikreja, Kab. Banyumas, Purwokerto 53171', '', '0281-5140330 ', '', '', 'Jawa Tengah', 'Cirebon', '', '-7.4254710', '109.2509230', NULL, 'asp', 496),
(42, 0, 'CV. Kadang Bayu (JWT-ASP-CKB)', 'Ds. Sowan Kidul RT. 05/03, Kedung, Jepara 59463', '', '08122509384', '', '', 'Jawa Tengah', 'Jepara', '', '-7.0207030', '110.4106910', NULL, 'asp', 501),
(43, 0, 'CV. Kadang Bayu (JWT-ASP-CKB)', 'Jl. Raya Kudus Pati Km. 14, Kudus', '', '081325225077', '', '', 'Jawa Tengah', 'Kudus', '', '-6.8052910', '110.9076930', NULL, 'asp', 506),
(44, 0, 'CV. Kadang Bayu (JWT-ASP-CKB)', 'Jl. Raya Secang No. 69, Magelang 56195', '', '0293-5532001/5562299', '', '', 'Jawa Tengah', 'Magelang', '', '-7.3985430', '110.2428010', NULL, 'asp', 511),
(45, 0, 'CV. Kadang Bayu (JWT-ASP-CKB)', 'Jl. Urip Sumoharjo No. 22, Pekalongan', '', '0285-7863550', '', '', 'Jawa Tengah', 'Pekalongan', '', '-6.9015570', '109.6647120', NULL, 'asp', 516),
(46, 0, 'MAS Servis (JWT-ASP-MAS)', 'Jl. Sunan Bonan RT. 05/05, Dukuh Waluh, Purwokerto, Jawa Tengah', '', '0281 – 6843635', '', '', 'Jawa Tengah', 'Purwokerto', '', '-7.4023790', '109.2664020', NULL, 'asp', 521),
(47, 0, 'Purnama Jaya Service (JWT-ASP-PJS)', 'Jl. WR Supratman RT. 01/01 Tambakrejo, Purworejo 54118', '', '082137497356', '', '', 'Jawa Tengah', 'Purworejo', '', '-7.7174930', '110.0221080', NULL, 'asp', 526),
(48, 0, 'CV. Kadang Bayu (JWT-ASP-CKB)', 'Jl. Leli Blok C No. 304 Perum Diponegoro Tembalang, Semarang', '', '024- 8506755, 081802440077, 024-74013987, 024-8507494', '', '', 'Jawa Tengah', 'Semarang', '', '-7.0426280', '110.4420570', NULL, 'asp', 531),
(49, 0, 'Purnama Jaya Service (JWT-ASP-PJS)', 'Jl. Tentara Pelajar Trimulyo I Kepek Wonosari Gunung  Kidul (Depan Toko Setya Baru)', '', '0816215843', '', '', 'Jawa Tengah', 'Wonosari', '', '-7.9690080', '110.6167100', NULL, 'asp', 536),
(50, 0, 'Purnama Jaya Service (JWT-ASP-PJS)', 'Jl. Ringroad Utara No. 265A, Gorongan, Condongcatur, Yogyakarta 55283', '', '0274-486123/489192/9190090', '', '', 'Yogyakarta', 'Yogyakarta', '', '-7.7595740', '110.4045750', NULL, 'asp', 541),
(51, 0, 'Purnama Jaya Service (JWT-ASP-PJS)', 'Jl. KH. Ahmad Dahlan No. 23, Badegan Tengah Bantul Yogjakarta', '', '0816215842', '', '', 'Yogyakarta', 'Bantul', '', '-7.8897510', '110.3300510', NULL, 'asp', 546),
(52, 0, 'UD. Wandira Service (JWT-ASP-WDS)', 'Jl. Ikan Cucut No. 44, Banyuwangi, Jawa Timur 68413', '', '0333-423417', '', '', 'Jawa Timur', 'Banyuwangi', '', '-8.2106780', '114.3798400', NULL, 'asp', 551),
(53, 0, 'Duta Bina Teknik (JWT-ASP-DBT)', 'Jl. Panglima Sudirman No. 08, Gresik', '', '031-3981616/031-71992192 ', '', '', 'Jawa Timur', 'Gresik', '', '-7.1637270', '112.6549630', NULL, 'asp', 556),
(54, 0, 'Lumajang Electronic Service (JWT-ASP-LES)', 'Jl. Kapten Kyai Ilyas No.140, Lumajang ', '', '0334-885378', '', '', 'Jawa Timur', 'Lumajang', '', '-8.1318080', '113.2162310', NULL, 'asp', 561),
(55, 0, 'Windra Service (JWT-ASP-WNS)', 'Jl. Lio Sudarmo No. 49, Malang ', '', '0341-485976', '', '', 'Jawa Timur', 'Malang', '', '-8.1846850', '113.7067760', NULL, 'asp', 566),
(56, 0, 'Jimmy Elektronik (JWT-ASP-JME)', 'Jl. Raya Panglima Soedirman No. 368, Probolinggo-Mayangan 67218', '', '0335-435383, 08166595388', '', '', 'Jawa Timur', 'Probolinggo', '', '-7.7588570', '113.2284240', NULL, 'asp', 571),
(57, 0, 'PT. Toscar Perkasa Indonesia (SBY-ASD)', 'Komp. Perkantoran Permata 1 Blok B-9, Jl. Mayjen HR Mohammad Kav. 360-380', '', '031-7342189', '', '', 'Jawa Timur', 'Surabaya', '', '-7.2825610', '112.6863710', NULL, 'asp', 576),
(58, 0, 'PT. Dynami Perkasa Indonesia (BLI-ASD)', 'Komp. Perkantoran Sunset Indah II Blok B-3A, Jl. Sunset Road B-3A, Kuta, Bali 80361', '', '0361-751691', '', '', 'Bali', 'Denpasar', '', '-8.7151510', '115.1867220', NULL, 'asp', 581),
(59, 0, 'CV. Sanjaya Karma (BLI-ASP-SJK)', 'Jl. Gunung Abang No. 1, Monang-Maning, Denpasar, Bali 80119', '', '0361-484473/0361-8806750', '', '', 'Bali', 'Denpasar', '', '-8.6378590', '115.2014740', NULL, 'asp', 586),
(60, 0, 'Stema Service (ACH-ASP-STM)', 'Jl. Aceh-Medan No. 1, Kuta Blang, Bireun 24300', '', '0644-7010434', '', '', 'Aceh', 'Bireun', '', '5.2114740', '96.8334640', NULL, 'asp', 591),
(61, 0, 'Duta Com (ACH-ASP-DTC)', 'Jl. DI.Panjaitan No. 29, Kec. Kuala Simpang, Kab. Aceh Tamiang. Aceh 24475', '', '0641-333566/085262953995', '', '', 'Aceh', 'Tamiang', '', '5.5621290', '95.3253460', NULL, 'asp', 596),
(62, 0, 'PT. Seltech Utama Mandiri (MDN-ASD)', 'Jl. Sisingamangaraja XII Km. 7,2 No. 170, Medan', '', '061-7862123', '', '', 'Sumatera Utara', 'Medan', '', '3.5600770', '98.6940990', NULL, 'asp', 601),
(63, 0, 'Arya Tehnik (SMU-ASP-ART)', 'Jl. Protokol Dusun 1 Sei Bamban Km. 65, Kab. Serdang Bedagai 20995', '', '085297800172/085261721515', '', '', 'Sumatera Utara', 'Serdang Bedagai', '', '3.5018230', '99.1164120', NULL, 'asp', 606),
(64, 0, 'PT. Terima Karya (SMB-ASP-TRK)', 'Simpang Bawah Patai No. 16 RT. 03/01, Kel. Indarung, Padang 25231', '', '0751-777758 / 085278239378', '', '', 'Sumatera Barat', 'Padang', '', '-7.3733540', '112.7303290', NULL, 'asp', 611),
(65, 0, 'PT. Seltech Utama Karya (BTM-ASD)', 'Komp. Srijaya Abadi Blok J No. 3, Lubuk Baja, Batam', '', '062-778456168', '', '', 'Riau', 'Batam', '', '1.1423370', '104.0119810', NULL, 'asp', 616),
(66, 0, 'Leo Service (PKB-ASP-LOS)', 'Jl. Nangka No. 70, Dumai Barat, Dumai', '', '08127504292', '', '', 'Riau', 'Dumai', '', '1.6755300', '101.4344120', NULL, 'asp', 621),
(67, 0, 'Mandiri Teknik (PKB-ASP-MDT)', 'Jl. H. Guru Sulaiman, Gang Pribadi No. 24, Tampan, Pekanbaru', '', '081365558591', '', '', 'Riau', 'Pekanbaru', '', '0.5310330', '101.4277550', NULL, 'asp', 626),
(68, 0, 'Pesona Teknik (JMB-ASP-PST)', 'Jl. Sultan Agung No. 23 RT. 09, Lrg. Telagal, Kel. Murni, Kec. Telanai Pura, Jambi', '', '081366014571', '', '', 'Jambi', 'Jambi', '', '-1.5969450', '103.6072060', NULL, 'asp', 631),
(69, 0, 'Mode Teknik (BKU-ASP-MDT)', 'Komp. Ruko Depan Asrama Kompi 144, Jl. Zainul Arifin, Bengkulu 38221', '', '082184377829', '', '', 'Bengkulu', 'Bengkulu', '', '-3.8226450', '102.3092900', NULL, 'asp', 636),
(70, 0, 'Utama Service  (LMP-ASP-UTS)', 'Jl. A. Prawira Negara No. 18A, Metro 41113', '', '0725-7850991', '', '', 'Lampung', 'Metro ', '', '-3.0021400', '104.7214270', NULL, 'asp', 641),
(71, 0, 'AV Elektronik (LMP-ASP-AVE)', 'Jl. Jend. A. Yani No. 10, Samping Hotel Balong Kuring, Pringsewu Tanggamus, Lampung 35373', '', '0729-23817', '', '', 'Lampung', 'Pringsewu', '', '-5.3575010', '104.9864610', NULL, 'asp', 646),
(72, 0, 'PT. Fath Jaya Lestari (BLP-ASD)', 'Jl. Pialing II Blok K1 No. 35, Damai, Balikpapan 76114', '', '0542-871400', '', '', 'Kalimantan Timur', 'Balikpapan', '', '-1.2457660', '116.8882550', NULL, 'asp', 651),
(73, 0, 'PT Triaji Mandiri Teknika', 'Jl. Kincan Raya No.22, Jatibening Baru, Pondokgede, Kota Bks, Jawa Barat 17412', '', '(021) 86902459', '', '', 'Jawa Barat', 'Bekasi', '', '-6.2566740', '106.9426090', NULL, 'dealer', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `province` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `postal_code` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `city`
--

INSERT INTO `city` (`id`, `province_id`, `province`, `type`, `city_name`, `postal_code`) VALUES
(1, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat', '23600'),
(2, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat Daya', '23700'),
(3, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Besar', '23000'),
(4, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Jaya', '23600'),
(5, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Selatan', '23700'),
(6, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Singkil', '24700'),
(7, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tamiang', '24400'),
(8, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tengah', '24500'),
(9, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tenggara', '24600'),
(10, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Timur', '24400'),
(11, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Utara', '24300'),
(12, 32, 'Sumatera Barat', 'Kabupaten', 'Agam', '26000'),
(13, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Alor', '85800'),
(14, 19, 'Maluku', 'Kota', 'Ambon', '97000'),
(15, 34, 'Sumatera Utara', 'Kabupaten', 'Asahan', '21000'),
(16, 24, 'Papua', 'Kabupaten', 'Asmat', '99700'),
(17, 1, 'Bali', 'Kabupaten', 'Badung', '80361'),
(18, 13, 'Kalimantan Selatan', 'Kabupaten', 'Balangan', '71400'),
(19, 15, 'Kalimantan Timur', 'Kota', 'Balikpapan', '76100'),
(20, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Banda Aceh', '23000'),
(21, 18, 'Lampung', 'Kota', 'Bandar Lampung', '35000'),
(22, 9, 'Jawa Barat', 'Kabupaten', 'Bandung', '40000'),
(23, 9, 'Jawa Barat', 'Kota', 'Bandung', '40000'),
(24, 9, 'Jawa Barat', 'Kabupaten', 'Bandung Barat', '40000'),
(25, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai', '94791'),
(26, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai Kepulauan', '94791'),
(27, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka', '33200'),
(28, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Barat', '33300'),
(29, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Selatan', '33700'),
(30, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Tengah', '33600'),
(31, 11, 'Jawa Timur', 'Kabupaten', 'Bangkalan', '69100'),
(32, 1, 'Bali', 'Kabupaten', 'Bangli', '80600'),
(33, 13, 'Kalimantan Selatan', 'Kabupaten', 'Banjar', '70600'),
(34, 9, 'Jawa Barat', 'Kota', 'Banjar', '46300'),
(35, 13, 'Kalimantan Selatan', 'Kota', 'Banjarbaru', '70700'),
(36, 13, 'Kalimantan Selatan', 'Kota', 'Banjarmasin', '70000'),
(37, 10, 'Jawa Tengah', 'Kabupaten', 'Banjarnegara', '53400'),
(38, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bantaeng', '92400'),
(39, 5, 'DI Yogyakarta', 'Kabupaten', 'Bantul', '55700'),
(40, 33, 'Sumatera Selatan', 'Kabupaten', 'Banyuasin', '30758'),
(41, 10, 'Jawa Tengah', 'Kabupaten', 'Banyumas', '53100'),
(42, 11, 'Jawa Timur', 'Kabupaten', 'Banyuwangi', '68400'),
(43, 13, 'Kalimantan Selatan', 'Kabupaten', 'Barito Kuala', '70500'),
(44, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Selatan', '73700'),
(45, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Timur', '73600'),
(46, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Utara', '73800'),
(47, 28, 'Sulawesi Selatan', 'Kabupaten', 'Barru', '90700'),
(48, 17, 'Kepulauan Riau', 'Kota', 'Batam', '29400'),
(49, 10, 'Jawa Tengah', 'Kabupaten', 'Batang', '51200'),
(50, 8, 'Jambi', 'Kabupaten', 'Batang Hari', '36600'),
(51, 11, 'Jawa Timur', 'Kota', 'Batu', '65311'),
(52, 34, 'Sumatera Utara', 'Kabupaten', 'Batu Bara', '21200'),
(53, 30, 'Sulawesi Tenggara', 'Kota', 'Bau-Bau', '93700'),
(54, 9, 'Jawa Barat', 'Kabupaten', 'Bekasi', '17000'),
(55, 9, 'Jawa Barat', 'Kota', 'Bekasi', '17000'),
(56, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung', '33400'),
(57, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung Timur', '33400'),
(58, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Belu', '85700'),
(59, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bener Meriah', '24500'),
(60, 26, 'Riau', 'Kabupaten', 'Bengkalis', '28700'),
(61, 12, 'Kalimantan Barat', 'Kabupaten', 'Bengkayang', '79200'),
(62, 4, 'Bengkulu', 'Kota', 'Bengkulu', '38000'),
(63, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Selatan', '38500'),
(64, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Tengah', '38000'),
(65, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Utara', '38600'),
(66, 15, 'Kalimantan Timur', 'Kabupaten', 'Berau', '77300'),
(67, 24, 'Papua', 'Kabupaten', 'Biak Numfor', '98100'),
(68, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Bima', '84100'),
(69, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Bima', '84100'),
(70, 34, 'Sumatera Utara', 'Kota', 'Binjai', '20700'),
(71, 17, 'Kepulauan Riau', 'Kabupaten', 'Bintan', '29100'),
(72, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bireuen', '24200'),
(73, 31, 'Sulawesi Utara', 'Kota', 'Bitung', '95500'),
(74, 11, 'Jawa Timur', 'Kabupaten', 'Blitar', '66100'),
(75, 11, 'Jawa Timur', 'Kota', 'Blitar', '66100'),
(76, 10, 'Jawa Tengah', 'Kabupaten', 'Blora', '58200'),
(77, 7, 'Gorontalo', 'Kabupaten', 'Boalemo', '96200'),
(78, 9, 'Jawa Barat', 'Kabupaten', 'Bogor', '16000'),
(79, 9, 'Jawa Barat', 'Kota', 'Bogor', '16000'),
(80, 11, 'Jawa Timur', 'Kabupaten', 'Bojonegoro', '62100'),
(81, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow (Bolmong)', '95700'),
(82, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Selatan', '95700'),
(83, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Timur', '95700'),
(84, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Utara', '95700'),
(85, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Bombana', '93700'),
(86, 11, 'Jawa Timur', 'Kabupaten', 'Bondowoso', '68200'),
(87, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bone', '92552'),
(88, 7, 'Gorontalo', 'Kabupaten', 'Bone Bolango', '96184'),
(89, 15, 'Kalimantan Timur', 'Kota', 'Bontang', '75300'),
(90, 24, 'Papua', 'Kabupaten', 'Boven Digoel', '99600'),
(91, 10, 'Jawa Tengah', 'Kabupaten', 'Boyolali', '57300'),
(92, 10, 'Jawa Tengah', 'Kabupaten', 'Brebes', '52200'),
(93, 32, 'Sumatera Barat', 'Kota', 'Bukittinggi', '26100'),
(94, 1, 'Bali', 'Kabupaten', 'Buleleng', '81100'),
(95, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bulukumba', '92500'),
(96, 16, 'Kalimantan Utara', 'Kabupaten', 'Bulungan (Bulongan)', '77200'),
(97, 8, 'Jambi', 'Kabupaten', 'Bungo', '37200'),
(98, 29, 'Sulawesi Tengah', 'Kabupaten', 'Buol', '94500'),
(99, 19, 'Maluku', 'Kabupaten', 'Buru', '97500'),
(100, 19, 'Maluku', 'Kabupaten', 'Buru Selatan', '97500'),
(101, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton', '93700'),
(102, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton Utara', '93600'),
(103, 9, 'Jawa Barat', 'Kabupaten', 'Ciamis', '46200'),
(104, 9, 'Jawa Barat', 'Kabupaten', 'Cianjur', '43200'),
(105, 10, 'Jawa Tengah', 'Kabupaten', 'Cilacap', '53200'),
(106, 3, 'Banten', 'Kota', 'Cilegon', '42400'),
(107, 9, 'Jawa Barat', 'Kota', 'Cimahi', '40500'),
(108, 9, 'Jawa Barat', 'Kabupaten', 'Cirebon', '45100'),
(109, 9, 'Jawa Barat', 'Kota', 'Cirebon', '45100'),
(110, 34, 'Sumatera Utara', 'Kabupaten', 'Dairi', '22200'),
(111, 24, 'Papua', 'Kabupaten', 'Deiyai (Deliyai)', '98700'),
(112, 34, 'Sumatera Utara', 'Kabupaten', 'Deli Serdang', '20500'),
(113, 10, 'Jawa Tengah', 'Kabupaten', 'Demak', '59500'),
(114, 1, 'Bali', 'Kota', 'Denpasar', '80000'),
(115, 9, 'Jawa Barat', 'Kota', 'Depok', '16400'),
(116, 32, 'Sumatera Barat', 'Kabupaten', 'Dharmasraya', '27600'),
(117, 24, 'Papua', 'Kabupaten', 'Dogiyai', '98800'),
(118, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Dompu', '84200'),
(119, 29, 'Sulawesi Tengah', 'Kabupaten', 'Donggala', '94351'),
(120, 26, 'Riau', 'Kota', 'Dumai', '28800'),
(121, 33, 'Sumatera Selatan', 'Kabupaten', 'Empat Lawang', '31500'),
(122, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ende', '86300'),
(123, 28, 'Sulawesi Selatan', 'Kabupaten', 'Enrekang', '91700'),
(124, 25, 'Papua Barat', 'Kabupaten', 'Fakfak', '98600'),
(125, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Flores Timur', '86200'),
(126, 9, 'Jawa Barat', 'Kabupaten', 'Garut', '44100'),
(127, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Gayo Lues', '24600'),
(128, 1, 'Bali', 'Kabupaten', 'Gianyar', '80500'),
(129, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo', '96100'),
(130, 7, 'Gorontalo', 'Kota', 'Gorontalo', '96100'),
(131, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo Utara', '96100'),
(132, 28, 'Sulawesi Selatan', 'Kabupaten', 'Gowa', '92100'),
(133, 11, 'Jawa Timur', 'Kabupaten', 'Gresik', '61100'),
(134, 10, 'Jawa Tengah', 'Kabupaten', 'Grobogan', '58152'),
(135, 5, 'DI Yogyakarta', 'Kabupaten', 'Gunung Kidul', '55800'),
(136, 14, 'Kalimantan Tengah', 'Kabupaten', 'Gunung Mas', '74500'),
(137, 34, 'Sumatera Utara', 'Kota', 'Gunungsitoli', '22800'),
(138, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Barat', '97700'),
(139, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Selatan', '97700'),
(140, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Tengah', '97800'),
(141, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Timur', '97800'),
(142, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Utara', '97700'),
(143, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Selatan', '71200'),
(144, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Tengah', '71300'),
(145, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Utara', '71400'),
(146, 34, 'Sumatera Utara', 'Kabupaten', 'Humbang Hasundutan', '22400'),
(147, 26, 'Riau', 'Kabupaten', 'Indragiri Hilir', '29200'),
(148, 26, 'Riau', 'Kabupaten', 'Indragiri Hulu', '29300'),
(149, 9, 'Jawa Barat', 'Kabupaten', 'Indramayu', '45200'),
(150, 24, 'Papua', 'Kabupaten', 'Intan Jaya', '98700'),
(151, 6, 'DKI Jakarta', 'Kota', 'Jakarta Barat', '11000'),
(152, 6, 'DKI Jakarta', 'Kota', 'Jakarta Pusat', '10000'),
(153, 6, 'DKI Jakarta', 'Kota', 'Jakarta Selatan', '12000'),
(154, 6, 'DKI Jakarta', 'Kota', 'Jakarta Timur', '13000'),
(155, 6, 'DKI Jakarta', 'Kota', 'Jakarta Utara', '14000'),
(156, 8, 'Jambi', 'Kota', 'Jambi', '36000'),
(157, 24, 'Papua', 'Kabupaten', 'Jayapura', '99000'),
(158, 24, 'Papua', 'Kota', 'Jayapura', '99000'),
(159, 24, 'Papua', 'Kabupaten', 'Jayawijaya', '99500'),
(160, 11, 'Jawa Timur', 'Kabupaten', 'Jember', '68100'),
(161, 1, 'Bali', 'Kabupaten', 'Jembrana', '82200'),
(162, 28, 'Sulawesi Selatan', 'Kabupaten', 'Jeneponto', '92300'),
(163, 10, 'Jawa Tengah', 'Kabupaten', 'Jepara', '59400'),
(164, 11, 'Jawa Timur', 'Kabupaten', 'Jombang', '61400'),
(165, 25, 'Papua Barat', 'Kabupaten', 'Kaimana', '98654'),
(166, 26, 'Riau', 'Kabupaten', 'Kampar', '28400'),
(167, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kapuas', '73500'),
(168, 12, 'Kalimantan Barat', 'Kabupaten', 'Kapuas Hulu', '78700'),
(169, 10, 'Jawa Tengah', 'Kabupaten', 'Karanganyar', '57700'),
(170, 1, 'Bali', 'Kabupaten', 'Karangasem', '80800'),
(171, 9, 'Jawa Barat', 'Kabupaten', 'Karawang', '41300'),
(172, 17, 'Kepulauan Riau', 'Kabupaten', 'Karimun', '29600'),
(173, 34, 'Sumatera Utara', 'Kabupaten', 'Karo', '22100'),
(174, 14, 'Kalimantan Tengah', 'Kabupaten', 'Katingan', '74400'),
(175, 4, 'Bengkulu', 'Kabupaten', 'Kaur', '38000'),
(176, 12, 'Kalimantan Barat', 'Kabupaten', 'Kayong Utara', '78800'),
(177, 10, 'Jawa Tengah', 'Kabupaten', 'Kebumen', '54300'),
(178, 11, 'Jawa Timur', 'Kabupaten', 'Kediri', '64100'),
(179, 11, 'Jawa Timur', 'Kota', 'Kediri', '64100'),
(180, 24, 'Papua', 'Kabupaten', 'Keerom', '99000'),
(181, 10, 'Jawa Tengah', 'Kabupaten', 'Kendal', '51300'),
(182, 30, 'Sulawesi Tenggara', 'Kota', 'Kendari', '93000'),
(183, 4, 'Bengkulu', 'Kabupaten', 'Kepahiang', '39172'),
(184, 17, 'Kepulauan Riau', 'Kabupaten', 'Kepulauan Anambas', '29700'),
(185, 19, 'Maluku', 'Kabupaten', 'Kepulauan Aru', '97600'),
(186, 32, 'Sumatera Barat', 'Kabupaten', 'Kepulauan Mentawai', '25391'),
(187, 26, 'Riau', 'Kabupaten', 'Kepulauan Meranti', '28700'),
(188, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Sangihe', '95800'),
(189, 6, 'DKI Jakarta', 'Kabupaten', 'Kepulauan Seribu', '14530'),
(190, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '95800'),
(191, 20, 'Maluku Utara', 'Kabupaten', 'Kepulauan Sula', '97700'),
(192, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Talaud', '95800'),
(193, 24, 'Papua', 'Kabupaten', 'Kepulauan Yapen (Yapen Waropen)', '98200'),
(194, 8, 'Jambi', 'Kabupaten', 'Kerinci', '37100'),
(195, 12, 'Kalimantan Barat', 'Kabupaten', 'Ketapang', '78800'),
(196, 10, 'Jawa Tengah', 'Kabupaten', 'Klaten', '57400'),
(197, 1, 'Bali', 'Kabupaten', 'Klungkung', '80700'),
(198, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka', '93500'),
(199, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka Utara', '93500'),
(200, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe', '93400'),
(201, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Selatan', '93000'),
(202, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Utara', '93000'),
(203, 13, 'Kalimantan Selatan', 'Kabupaten', 'Kotabaru', '72100'),
(204, 31, 'Sulawesi Utara', 'Kota', 'Kotamobagu', '95700'),
(205, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Barat', '74100'),
(206, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Timur', '74300'),
(207, 26, 'Riau', 'Kabupaten', 'Kuantan Singingi', '29500'),
(208, 12, 'Kalimantan Barat', 'Kabupaten', 'Kubu Raya', '78000'),
(209, 10, 'Jawa Tengah', 'Kabupaten', 'Kudus', '59300'),
(210, 5, 'DI Yogyakarta', 'Kabupaten', 'Kulon Progo', '55600'),
(211, 9, 'Jawa Barat', 'Kabupaten', 'Kuningan', '45500'),
(212, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Kupang', '85000'),
(213, 23, 'Nusa Tenggara Timur (NTT)', 'Kota', 'Kupang', '85000'),
(214, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Barat', '75000'),
(215, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Kartanegara', '75500'),
(216, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Timur', '75556'),
(217, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu', '21400'),
(218, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Selatan', '21400'),
(219, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Utara', '21400'),
(220, 33, 'Sumatera Selatan', 'Kabupaten', 'Lahat', '31400'),
(221, 14, 'Kalimantan Tengah', 'Kabupaten', 'Lamandau', '74100'),
(222, 11, 'Jawa Timur', 'Kabupaten', 'Lamongan', '62200'),
(223, 18, 'Lampung', 'Kabupaten', 'Lampung Barat', '35000'),
(224, 18, 'Lampung', 'Kabupaten', 'Lampung Selatan', '35000'),
(225, 18, 'Lampung', 'Kabupaten', 'Lampung Tengah', '34100'),
(226, 18, 'Lampung', 'Kabupaten', 'Lampung Timur', '34100'),
(227, 18, 'Lampung', 'Kabupaten', 'Lampung Utara', '34500'),
(228, 12, 'Kalimantan Barat', 'Kabupaten', 'Landak', '79357'),
(229, 34, 'Sumatera Utara', 'Kabupaten', 'Langkat', '20800'),
(230, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Langsa', '24400'),
(231, 24, 'Papua', 'Kabupaten', 'Lanny Jaya', '99500'),
(232, 3, 'Banten', 'Kabupaten', 'Lebak', '42300'),
(233, 4, 'Bengkulu', 'Kabupaten', 'Lebong', '39200'),
(234, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Lembata', '86600'),
(235, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Lhokseumawe', '24300'),
(236, 32, 'Sumatera Barat', 'Kabupaten', 'Lima Puluh Koto/Kota', '26200'),
(237, 17, 'Kepulauan Riau', 'Kabupaten', 'Lingga', '29800'),
(238, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Barat', '83363'),
(239, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Tengah', '83500'),
(240, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Timur', '83600'),
(241, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Utara', '83300'),
(242, 33, 'Sumatera Selatan', 'Kota', 'Lubuk Linggau', '31600'),
(243, 11, 'Jawa Timur', 'Kabupaten', 'Lumajang', '67300'),
(244, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu', '91900'),
(245, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Timur', '91900'),
(246, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Utara', '91900'),
(247, 11, 'Jawa Timur', 'Kabupaten', 'Madiun', '63100'),
(248, 11, 'Jawa Timur', 'Kota', 'Madiun', '63100'),
(249, 10, 'Jawa Tengah', 'Kabupaten', 'Magelang', '56100'),
(250, 10, 'Jawa Tengah', 'Kota', 'Magelang', '56100'),
(251, 11, 'Jawa Timur', 'Kabupaten', 'Magetan', '63300'),
(252, 9, 'Jawa Barat', 'Kabupaten', 'Majalengka', '45400'),
(253, 27, 'Sulawesi Barat', 'Kabupaten', 'Majene', '91400'),
(254, 28, 'Sulawesi Selatan', 'Kota', 'Makassar', '90000'),
(255, 11, 'Jawa Timur', 'Kabupaten', 'Malang', '65100'),
(256, 11, 'Jawa Timur', 'Kota', 'Malang', '65100'),
(257, 16, 'Kalimantan Utara', 'Kabupaten', 'Malinau', '77154'),
(258, 19, 'Maluku', 'Kabupaten', 'Maluku Barat Daya', '97000'),
(259, 19, 'Maluku', 'Kabupaten', 'Maluku Tengah', '97500'),
(260, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara', '97600'),
(261, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara Barat', '97600'),
(262, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamasa', '91363'),
(263, 24, 'Papua', 'Kabupaten', 'Mamberamo Raya', '99500'),
(264, 24, 'Papua', 'Kabupaten', 'Mamberamo Tengah', '99500'),
(265, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju', '91500'),
(266, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju Utara', '91500'),
(267, 31, 'Sulawesi Utara', 'Kota', 'Manado', '95000'),
(268, 34, 'Sumatera Utara', 'Kabupaten', 'Mandailing Natal', '22919'),
(269, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai', '86500'),
(270, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Barat', '86753'),
(271, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Timur', '86500'),
(272, 25, 'Papua Barat', 'Kabupaten', 'Manokwari', '98300'),
(273, 25, 'Papua Barat', 'Kabupaten', 'Manokwari Selatan', '98300'),
(274, 24, 'Papua', 'Kabupaten', 'Mappi', '99000'),
(275, 28, 'Sulawesi Selatan', 'Kabupaten', 'Maros', '90500'),
(276, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Mataram', '83000'),
(277, 25, 'Papua Barat', 'Kabupaten', 'Maybrat', '99000'),
(278, 34, 'Sumatera Utara', 'Kota', 'Medan', '20000'),
(279, 12, 'Kalimantan Barat', 'Kabupaten', 'Melawi', '78672'),
(280, 8, 'Jambi', 'Kabupaten', 'Merangin', '37300'),
(281, 24, 'Papua', 'Kabupaten', 'Merauke', '99600'),
(282, 18, 'Lampung', 'Kabupaten', 'Mesuji', '34500'),
(283, 18, 'Lampung', 'Kota', 'Metro', '34100'),
(284, 24, 'Papua', 'Kabupaten', 'Mimika', '99900'),
(285, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa', '95600'),
(286, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Selatan', '95000'),
(287, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Tenggara', '95000'),
(288, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Utara', '95000'),
(289, 11, 'Jawa Timur', 'Kabupaten', 'Mojokerto', '61300'),
(290, 11, 'Jawa Timur', 'Kota', 'Mojokerto', '61300'),
(291, 29, 'Sulawesi Tengah', 'Kabupaten', 'Morowali', '94000'),
(292, 33, 'Sumatera Selatan', 'Kabupaten', 'Muara Enim', '31300'),
(293, 8, 'Jambi', 'Kabupaten', 'Muaro Jambi', '36365'),
(294, 4, 'Bengkulu', 'Kabupaten', 'Muko Muko', '38365'),
(295, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Muna', '93600'),
(296, 14, 'Kalimantan Tengah', 'Kabupaten', 'Murung Raya', '73900'),
(297, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Banyuasin', '30700'),
(298, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Rawas', '31600'),
(299, 24, 'Papua', 'Kabupaten', 'Nabire', '98800'),
(300, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Nagan Raya', '23600'),
(301, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Nagekeo', '86400'),
(302, 17, 'Kepulauan Riau', 'Kabupaten', 'Natuna', '29700'),
(303, 24, 'Papua', 'Kabupaten', 'Nduga', '99500'),
(304, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ngada', '86400'),
(305, 11, 'Jawa Timur', 'Kabupaten', 'Nganjuk', '64400'),
(306, 11, 'Jawa Timur', 'Kabupaten', 'Ngawi', '63200'),
(307, 34, 'Sumatera Utara', 'Kabupaten', 'Nias', '22800'),
(308, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Barat', '22800'),
(309, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Selatan', '22800'),
(310, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Utara', '22800'),
(311, 16, 'Kalimantan Utara', 'Kabupaten', 'Nunukan', '77182'),
(312, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Ilir', '30600'),
(313, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ilir', '30600'),
(314, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu', '32100'),
(315, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Selatan', '32100'),
(316, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Timur', '32100'),
(317, 11, 'Jawa Timur', 'Kabupaten', 'Pacitan', '63500'),
(318, 32, 'Sumatera Barat', 'Kota', 'Padang', '25000'),
(319, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas', '22700'),
(320, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas Utara', '22700'),
(321, 32, 'Sumatera Barat', 'Kota', 'Padang Panjang', '27100'),
(322, 32, 'Sumatera Barat', 'Kabupaten', 'Padang Pariaman', '25500'),
(323, 34, 'Sumatera Utara', 'Kota', 'Padang Sidempuan', '22700'),
(324, 33, 'Sumatera Selatan', 'Kota', 'Pagar Alam', '31500'),
(325, 34, 'Sumatera Utara', 'Kabupaten', 'Pakpak Bharat', '22200'),
(326, 14, 'Kalimantan Tengah', 'Kota', 'Palangka Raya', '73000'),
(327, 33, 'Sumatera Selatan', 'Kota', 'Palembang', '30000'),
(328, 28, 'Sulawesi Selatan', 'Kota', 'Palopo', '91900'),
(329, 29, 'Sulawesi Tengah', 'Kota', 'Palu', '94000'),
(330, 11, 'Jawa Timur', 'Kabupaten', 'Pamekasan', '69300'),
(331, 3, 'Banten', 'Kabupaten', 'Pandeglang', '42200'),
(332, 9, 'Jawa Barat', 'Kabupaten', 'Pangandaran', '46396'),
(333, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pangkajene Kepulauan', '90600'),
(334, 2, 'Bangka Belitung', 'Kota', 'Pangkal Pinang', '33100'),
(335, 24, 'Papua', 'Kabupaten', 'Paniai', '98700'),
(336, 28, 'Sulawesi Selatan', 'Kota', 'Parepare', '91100'),
(337, 32, 'Sumatera Barat', 'Kota', 'Pariaman', '25500'),
(338, 29, 'Sulawesi Tengah', 'Kabupaten', 'Parigi Moutong', '94371'),
(339, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman', '26300'),
(340, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman Barat', '26300'),
(341, 15, 'Kalimantan Timur', 'Kabupaten', 'Paser', '76200'),
(342, 11, 'Jawa Timur', 'Kabupaten', 'Pasuruan', '67100'),
(343, 11, 'Jawa Timur', 'Kota', 'Pasuruan', '67100'),
(344, 10, 'Jawa Tengah', 'Kabupaten', 'Pati', '59100'),
(345, 32, 'Sumatera Barat', 'Kota', 'Payakumbuh', '26200'),
(346, 25, 'Papua Barat', 'Kabupaten', 'Pegunungan Arfak', '98300'),
(347, 24, 'Papua', 'Kabupaten', 'Pegunungan Bintang', '99500'),
(348, 10, 'Jawa Tengah', 'Kabupaten', 'Pekalongan', '51100'),
(349, 10, 'Jawa Tengah', 'Kota', 'Pekalongan', '51100'),
(350, 26, 'Riau', 'Kota', 'Pekanbaru', '28000'),
(351, 26, 'Riau', 'Kabupaten', 'Pelalawan', '28300'),
(352, 10, 'Jawa Tengah', 'Kabupaten', 'Pemalang', '52300'),
(353, 34, 'Sumatera Utara', 'Kota', 'Pematang Siantar', '21100'),
(354, 15, 'Kalimantan Timur', 'Kabupaten', 'Penajam Paser Utara', '76141'),
(355, 18, 'Lampung', 'Kabupaten', 'Pesawaran', '35000'),
(356, 18, 'Lampung', 'Kabupaten', 'Pesisir Barat', '34574'),
(357, 32, 'Sumatera Barat', 'Kabupaten', 'Pesisir Selatan', '25600'),
(358, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie', '24100'),
(359, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie Jaya', '24100'),
(360, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pinrang', '91200'),
(361, 7, 'Gorontalo', 'Kabupaten', 'Pohuwato', '96200'),
(362, 27, 'Sulawesi Barat', 'Kabupaten', 'Polewali Mandar', '91300'),
(363, 11, 'Jawa Timur', 'Kabupaten', 'Ponorogo', '63400'),
(364, 12, 'Kalimantan Barat', 'Kabupaten', 'Pontianak', '78000'),
(365, 12, 'Kalimantan Barat', 'Kota', 'Pontianak', '78000'),
(366, 29, 'Sulawesi Tengah', 'Kabupaten', 'Poso', '94600'),
(367, 33, 'Sumatera Selatan', 'Kota', 'Prabumulih', '31100'),
(368, 18, 'Lampung', 'Kabupaten', 'Pringsewu', '35373'),
(369, 11, 'Jawa Timur', 'Kabupaten', 'Probolinggo', '67200'),
(370, 11, 'Jawa Timur', 'Kota', 'Probolinggo', '67200'),
(371, 14, 'Kalimantan Tengah', 'Kabupaten', 'Pulang Pisau', '73561'),
(372, 20, 'Maluku Utara', 'Kabupaten', 'Pulau Morotai', '97771'),
(373, 24, 'Papua', 'Kabupaten', 'Puncak', '98900'),
(374, 24, 'Papua', 'Kabupaten', 'Puncak Jaya', '98900'),
(375, 10, 'Jawa Tengah', 'Kabupaten', 'Purbalingga', '53300'),
(376, 9, 'Jawa Barat', 'Kabupaten', 'Purwakarta', '41100'),
(377, 10, 'Jawa Tengah', 'Kabupaten', 'Purworejo', '54100'),
(378, 25, 'Papua Barat', 'Kabupaten', 'Raja Ampat', '98400'),
(379, 4, 'Bengkulu', 'Kabupaten', 'Rejang Lebong', '39100'),
(380, 10, 'Jawa Tengah', 'Kabupaten', 'Rembang', '59200'),
(381, 26, 'Riau', 'Kabupaten', 'Rokan Hilir', '28991'),
(382, 26, 'Riau', 'Kabupaten', 'Rokan Hulu', '28455'),
(383, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Rote Ndao', '85974'),
(384, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Sabang', '23500'),
(385, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sabu Raijua', '85391'),
(386, 10, 'Jawa Tengah', 'Kota', 'Salatiga', '50700'),
(387, 15, 'Kalimantan Timur', 'Kota', 'Samarinda', '75000'),
(388, 12, 'Kalimantan Barat', 'Kabupaten', 'Sambas', '79400'),
(389, 34, 'Sumatera Utara', 'Kabupaten', 'Samosir', '22300'),
(390, 11, 'Jawa Timur', 'Kabupaten', 'Sampang', '69200'),
(391, 12, 'Kalimantan Barat', 'Kabupaten', 'Sanggau', '78500'),
(392, 24, 'Papua', 'Kabupaten', 'Sarmi', '99373'),
(393, 8, 'Jambi', 'Kabupaten', 'Sarolangun', '37300'),
(394, 32, 'Sumatera Barat', 'Kota', 'Sawah Lunto', '27400'),
(395, 12, 'Kalimantan Barat', 'Kabupaten', 'Sekadau', '78582'),
(396, 28, 'Sulawesi Selatan', 'Kabupaten', 'Selayar (Kepulauan Selayar)', '92800'),
(397, 4, 'Bengkulu', 'Kabupaten', 'Seluma', '38000'),
(398, 10, 'Jawa Tengah', 'Kabupaten', 'Semarang', '50000'),
(399, 10, 'Jawa Tengah', 'Kota', 'Semarang', '50000'),
(400, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Barat', '97500'),
(401, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Timur', '97500'),
(402, 3, 'Banten', 'Kabupaten', 'Serang', '42100'),
(403, 3, 'Banten', 'Kota', 'Serang', '42100'),
(404, 34, 'Sumatera Utara', 'Kabupaten', 'Serdang Bedagai', '20000'),
(405, 14, 'Kalimantan Tengah', 'Kabupaten', 'Seruyan', '74200'),
(406, 26, 'Riau', 'Kabupaten', 'Siak', '28686'),
(407, 34, 'Sumatera Utara', 'Kota', 'Sibolga', '22500'),
(408, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sidenreng Rappang/Rapang', '91600'),
(409, 11, 'Jawa Timur', 'Kabupaten', 'Sidoarjo', '61200'),
(410, 29, 'Sulawesi Tengah', 'Kabupaten', 'Sigi', '94000'),
(411, 32, 'Sumatera Barat', 'Kabupaten', 'Sijunjung (Sawah Lunto Sijunjung)', '27500'),
(412, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sikka', '86100'),
(413, 34, 'Sumatera Utara', 'Kabupaten', 'Simalungun', '21100'),
(414, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Simeulue', '23000'),
(415, 12, 'Kalimantan Barat', 'Kota', 'Singkawang', '79100'),
(416, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sinjai', '92600'),
(417, 12, 'Kalimantan Barat', 'Kabupaten', 'Sintang', '78600'),
(418, 11, 'Jawa Timur', 'Kabupaten', 'Situbondo', '68300'),
(419, 5, 'DI Yogyakarta', 'Kabupaten', 'Sleman', '55500'),
(420, 32, 'Sumatera Barat', 'Kabupaten', 'Solok', '27300'),
(421, 32, 'Sumatera Barat', 'Kota', 'Solok', '27300'),
(422, 32, 'Sumatera Barat', 'Kabupaten', 'Solok Selatan', '27300'),
(423, 28, 'Sulawesi Selatan', 'Kabupaten', 'Soppeng', '90800'),
(424, 25, 'Papua Barat', 'Kabupaten', 'Sorong', '98400'),
(425, 25, 'Papua Barat', 'Kota', 'Sorong', '98400'),
(426, 25, 'Papua Barat', 'Kabupaten', 'Sorong Selatan', '98400'),
(427, 10, 'Jawa Tengah', 'Kabupaten', 'Sragen', '57200'),
(428, 9, 'Jawa Barat', 'Kabupaten', 'Subang', '41200'),
(429, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Subulussalam', '23782'),
(430, 9, 'Jawa Barat', 'Kabupaten', 'Sukabumi', '43100'),
(431, 9, 'Jawa Barat', 'Kota', 'Sukabumi', '43100'),
(432, 14, 'Kalimantan Tengah', 'Kabupaten', 'Sukamara', '74172'),
(433, 10, 'Jawa Tengah', 'Kabupaten', 'Sukoharjo', '57500'),
(434, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat', '87200'),
(435, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat Daya', '87200'),
(436, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Tengah', '87200'),
(437, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Timur', '87100'),
(438, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa', '84300'),
(439, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa Barat', '84300'),
(440, 9, 'Jawa Barat', 'Kabupaten', 'Sumedang', '45300'),
(441, 11, 'Jawa Timur', 'Kabupaten', 'Sumenep', '69400'),
(442, 8, 'Jambi', 'Kota', 'Sungaipenuh', '37100'),
(443, 24, 'Papua', 'Kabupaten', 'Supiori', '98100'),
(444, 11, 'Jawa Timur', 'Kota', 'Surabaya', '60000'),
(445, 10, 'Jawa Tengah', 'Kota', 'Surakarta (Solo)', '57100'),
(446, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tabalong', '71500'),
(447, 1, 'Bali', 'Kabupaten', 'Tabanan', '82100'),
(448, 28, 'Sulawesi Selatan', 'Kabupaten', 'Takalar', '92200'),
(449, 25, 'Papua Barat', 'Kabupaten', 'Tambrauw', '98400'),
(450, 16, 'Kalimantan Utara', 'Kabupaten', 'Tana Tidung', '77152'),
(451, 28, 'Sulawesi Selatan', 'Kabupaten', 'Tana Toraja', '91800'),
(452, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Bumbu', '70000'),
(453, 32, 'Sumatera Barat', 'Kabupaten', 'Tanah Datar', '27200'),
(454, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Laut', '70800'),
(455, 3, 'Banten', 'Kabupaten', 'Tangerang', '15000'),
(456, 3, 'Banten', 'Kota', 'Tangerang', '15000'),
(457, 3, 'Banten', 'Kota', 'Tangerang Selatan', '15000'),
(458, 18, 'Lampung', 'Kabupaten', 'Tanggamus', '35000'),
(459, 34, 'Sumatera Utara', 'Kota', 'Tanjung Balai', '21300'),
(460, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Barat', '36500'),
(461, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Timur', '36500'),
(462, 17, 'Kepulauan Riau', 'Kota', 'Tanjung Pinang', '29100'),
(463, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Selatan', '22700'),
(464, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Tengah', '22500'),
(465, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Utara', '22400'),
(466, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tapin', '71100'),
(467, 16, 'Kalimantan Utara', 'Kota', 'Tarakan', '77100'),
(468, 9, 'Jawa Barat', 'Kabupaten', 'Tasikmalaya', '46100'),
(469, 9, 'Jawa Barat', 'Kota', 'Tasikmalaya', '46100'),
(470, 34, 'Sumatera Utara', 'Kota', 'Tebing Tinggi', '20600'),
(471, 8, 'Jambi', 'Kabupaten', 'Tebo', '37200'),
(472, 10, 'Jawa Tengah', 'Kabupaten', 'Tegal', '52100'),
(473, 10, 'Jawa Tengah', 'Kota', 'Tegal', '52100'),
(474, 25, 'Papua Barat', 'Kabupaten', 'Teluk Bintuni', '98300'),
(475, 25, 'Papua Barat', 'Kabupaten', 'Teluk Wondama', '98300'),
(476, 10, 'Jawa Tengah', 'Kabupaten', 'Temanggung', '56200'),
(477, 20, 'Maluku Utara', 'Kota', 'Ternate', '97700'),
(478, 20, 'Maluku Utara', 'Kota', 'Tidore Kepulauan', '97800'),
(479, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Selatan', '85500'),
(480, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Utara', '85600'),
(481, 34, 'Sumatera Utara', 'Kabupaten', 'Toba Samosir', '22300'),
(482, 29, 'Sulawesi Tengah', 'Kabupaten', 'Tojo Una-Una', '94600'),
(483, 29, 'Sulawesi Tengah', 'Kabupaten', 'Toli-Toli', '94500'),
(484, 24, 'Papua', 'Kabupaten', 'Tolikara', '99562'),
(485, 31, 'Sulawesi Utara', 'Kota', 'Tomohon', '95362'),
(486, 28, 'Sulawesi Selatan', 'Kabupaten', 'Toraja Utara', '91890'),
(487, 11, 'Jawa Timur', 'Kabupaten', 'Trenggalek', '66300'),
(488, 19, 'Maluku', 'Kota', 'Tual', '97600'),
(489, 11, 'Jawa Timur', 'Kabupaten', 'Tuban', '62300'),
(490, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang', '34500'),
(491, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang Barat', '34500'),
(492, 11, 'Jawa Timur', 'Kabupaten', 'Tulungagung', '66200'),
(493, 28, 'Sulawesi Selatan', 'Kabupaten', 'Wajo', '90900'),
(494, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Wakatobi', '93700'),
(495, 24, 'Papua', 'Kabupaten', 'Waropen', '98200'),
(496, 18, 'Lampung', 'Kabupaten', 'Way Kanan', '35000'),
(497, 10, 'Jawa Tengah', 'Kabupaten', 'Wonogiri', '57600'),
(498, 10, 'Jawa Tengah', 'Kabupaten', 'Wonosobo', '56300'),
(499, 24, 'Papua', 'Kabupaten', 'Yahukimo', '99500'),
(500, 24, 'Papua', 'Kabupaten', 'Yalimo', '99500'),
(501, 5, 'DI Yogyakarta', 'Kota', 'Yogyakarta', '55000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cs_customer`
--

CREATE TABLE `cs_customer` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `group_member_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `date_join` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cs_customer_address`
--

CREATE TABLE `cs_customer_address` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fix_menu_akademik`
--

CREATE TABLE `fix_menu_akademik` (
  `id` int(5) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `code` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fix_menu_akademik`
--

INSERT INTO `fix_menu_akademik` (`id`, `nama`, `code`) VALUES
(1, 'Profil', 'Profile'),
(2, 'Kurikulum', 'Curriculum'),
(3, 'Jadwal Kuliah', 'Course Schedule'),
(4, 'Biaya Studi', 'Tuition'),
(5, 'Penerimaan Mahasiswa Baru', 'Admission'),
(6, 'Staf Akademik', 'Academic Staff');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gal_gallery`
--

CREATE TABLE `gal_gallery` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `orientation` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `product_id` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gal_gallery`
--

INSERT INTO `gal_gallery` (`id`, `topik_id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `city`, `harga`, `orientation`, `color`, `image2`, `product_id`) VALUES
(6, 0, '46a1a-HOSE 1JK-NAVY-1 (1268x730).jpg', 1, '2017-02-22 22:33:00', '2018-12-07 15:37:25', 'deoryzpandu@gmail.com', 'info@markdesign.net', '', '', 0, 0, '', '', '4'),
(9, 0, 'c1446-getsn_gall.jpg', 1, '2018-09-22 08:37:22', '2018-11-21 17:16:29', 'info@markdesign.net', 'info@markdesign.net', '', '', 0, 0, '', '', '5'),
(10, 0, '728fb-getsn_gall.jpg', 1, '2018-11-21 17:16:49', '2018-11-21 17:16:59', 'info@markdesign.net', 'info@markdesign.net', '', '', 0, 0, '', '', '3'),
(11, 0, 'b3d2b-HOSE 1JK-NAVY-1 (1268x730).jpg', 1, '2018-12-07 15:32:19', '2018-12-07 15:34:45', 'info@markdesign.net', 'info@markdesign.net', '', '', 0, 0, '', '', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gal_gallery_description`
--

CREATE TABLE `gal_gallery_description` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `sub_title_2` text NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gal_gallery_description`
--

INSERT INTO `gal_gallery_description` (`id`, `gallery_id`, `language_id`, `title`, `sub_title`, `sub_title_2`, `content`) VALUES
(8, 1, 2, 'Connecting Souls', 'PRE WEDDING OF JAMES & HANNAH', '', '<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat  eu magna id laoreet. Donec accumsan mauris congue consectetur congue.  Morbi rutrum ipsum nec ligula convallis viverra. Fusce vehicula  efficitur nisl in aliquam. Nullam non dictum ligula. Nunc in orci  viverra, consequat sapien ac, auctor erat. Sed rutrum tincidunt dictum.  Maecenas pharetra lobortis volutpat. Cras euismod ultricies nisl vitae  bibendum. Vestibulum eget lorem a sem aliquet mattis id sodales purus.  Praesent finibus aliquam laoreet. Vivamus vel tortor nec justo mattis  venenatis. Fusce varius tellus sit amet purus varius tempus.\r\n</p>\r\n<p>\r\n	    Donec enim lectus, condimentum a fermentum  eget, volutpat sit amet nisl. Nunc sit amet enim sagittis, congue nunc  id, euismod nulla. Nullam porttitor mi tortor, vitae vulputate leo  egestas vel. Pellentesque convallis vestibulum nisl pretium hendrerit.  Donec egestas, mauris ut molestie posuere, mauris mauris porta libero,  tristique imperdiet turpis nisl sed arcu. Quisque at augue non felis  facilisis semper ac a orci. Cras porta nulla consectetur arcu finibus  blandit. Mauris sodales, risus sit amet dictum cursus, orci lorem  egestas dui, maximus viverra tortor odio imperdiet quam. Donec placerat,  mi eu vestibulum luctus, augue metus consequat enim, varius accumsan  quam erat eleifend ante. Fusce porta ipsum vitae nibh interdum, vel  elementum odio aliquet. Ut dui tortor, convallis eget finibus vitae,  malesuada sed justo. Mauris tempor in nibh quis sodales.\r\n</p>'),
(9, 2, 2, 'Connecting Souls', 'PRE WEDDING OF JAMES & HANNAH', '', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam quaerat deserunt quod dignissimos consectetur id atque maxime at natus, ipsum. Eaque adipisci sit blanditiis error. Perspiciatis debitis ducimus doloribus odit animi doloremque dolore, laboriosam commodi voluptates nobis similique optio sunt.\r\n</p>\r\n<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic suscipit aperiam repellendus minima enim ipsa iure minus ab velit! At nam, ducimus blanditiis earum quis ad neque, voluptates aspernatur veritatis.\r\n</p>'),
(60, 3, 2, 'Soon', '', 'WE ARE STILL COOKING', '<p>\r\n	              We still cooking for finding the best taste &amp; ingriedients, get ready for Realfit new variant soon.\r\n</p>'),
(62, 4, 2, 'BARISTA WORSKHOP', 'SYDNEY, NSW', '', '<p>\r\n	               We still cooking for finding the best taste &amp; ingriedients, get ready for Realfit new variant soon.\r\n</p>'),
(57, 5, 2, 'CLASSIC', 'Drink With Purpose', 'Bird\'s Nest Daily Drink', '<p>\r\n	                            Bird\'s Nest Daily drink with Classic variant. Low calories because sweetened with natural stevia leaves\r\n</p>'),
(83, 10, 2, 'DDN21 Collection - The Urban Type 3', '', '', ''),
(84, 11, 2, 'HOSE', '', '', ''),
(74, 8, 2, 'New Product With Discount', 'Anda juga dapat menggunakan form online berikut untuk menyampaikan pesan anda. Staf layanan pelanggan Precise shoes akan segera merespon anda kembali.', '15 Juni - 9 July 2017', '<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>'),
(73, 7, 2, 'Murah Hemat Tetep Gaya', 'Anda juga dapat menggunakan form online berikut untuk menyampaikan pesan anda. Staf layanan pelanggan Precise shoes akan segera merespon anda kembali.', '15 Juni - 9 July 2017', '<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>'),
(81, 9, 2, 'DDN21 Collection - The Urban Type 2', '', '', ''),
(85, 6, 2, 'DDN21 Collection - The Urban Type ', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gal_gallery_image`
--

CREATE TABLE `gal_gallery_image` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gal_gallery_image`
--

INSERT INTO `gal_gallery_image` (`id`, `gallery_id`, `image`) VALUES
(24, 1, '5a715-Bombay pre wedding shoot.jpg'),
(22, 1, '5a715-37b9e4e8-f39f-4e8d-b53a-0b43c2d632c7.jpg'),
(23, 1, '5a715-6815400-wedding-wallpaper.jpg'),
(25, 2, 'e4a80-Bombay pre wedding shoot.jpg'),
(26, 2, 'e4a80-PuChai-Prewedding-retouches-4.jpg'),
(27, 2, 'e4a80-PuChai-Prewedding-retouches-10.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `language`
--

INSERT INTO `language` (`id`, `name`, `code`, `sort`, `status`) VALUES
(2, 'English', 'en', 1, '1'),
(3, 'Indonesia', 'id', 2, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_product`
--

CREATE TABLE `list_product` (
  `a` int(3) DEFAULT NULL,
  `b` int(2) DEFAULT NULL,
  `c` varchar(54) DEFAULT NULL,
  `d` varchar(17) DEFAULT NULL,
  `e` varchar(20) DEFAULT NULL,
  `f` varchar(11) DEFAULT NULL,
  `g` varchar(42) DEFAULT NULL,
  `h` varchar(73) DEFAULT NULL,
  `i` varchar(12) DEFAULT NULL,
  `j` int(6) DEFAULT NULL,
  `k` varchar(245) DEFAULT NULL,
  `l` varchar(18) DEFAULT NULL,
  `m` int(4) DEFAULT NULL,
  `o` int(7) DEFAULT NULL,
  `p` varchar(40) DEFAULT NULL,
  `q` varchar(67) DEFAULT NULL,
  `r` int(2) DEFAULT NULL,
  `s` varchar(37) DEFAULT NULL,
  `t` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id`, `username`, `activity`, `time`) VALUES
(1, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-10-06 16:20:08'),
(2, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-10-07 03:32:54'),
(3, 'info@markdesign.net', 'Blog Controller Create 1', '2019-10-07 06:53:28'),
(4, 'info@markdesign.net', 'BlogController Update 1', '2019-10-07 06:54:11'),
(5, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-10-07 08:42:52'),
(6, 'info@markdesign.net', 'SetController Create 1', '2019-10-07 08:45:19'),
(7, 'info@markdesign.net', 'SetController Create 2', '2019-10-07 08:46:47'),
(8, 'info@markdesign.net', 'SetController Create 3', '2019-10-07 08:47:28'),
(9, 'info@markdesign.net', 'TestimonialController Create 1', '2019-10-07 08:50:07'),
(10, 'info@markdesign.net', 'TestimonialController Create 2', '2019-10-07 08:50:32'),
(11, 'info@markdesign.net', 'TestimonialController Create 3', '2019-10-07 08:50:56'),
(12, 'info@markdesign.net', 'TestimonialController Create 4', '2019-10-07 08:51:15'),
(13, 'info@markdesign.net', 'SetController Create 4', '2019-10-07 09:01:51'),
(14, 'info@markdesign.net', 'MasterKategoristudiController Create 1', '2019-10-07 09:54:42'),
(15, 'info@markdesign.net', 'MasterKategoristudiController Create 2', '2019-10-07 09:55:11'),
(16, 'info@markdesign.net', 'MasterJenjangstudiController Create 1', '2019-10-07 09:55:58'),
(17, 'info@markdesign.net', 'MasterJenjangstudiController Create 2', '2019-10-07 09:56:06'),
(18, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-10-08 04:47:29'),
(19, 'info@markdesign.net', 'Blog Controller Create 2', '2019-10-08 05:02:00'),
(20, 'info@markdesign.net', 'BlogController Update 2', '2019-10-08 05:02:32'),
(21, 'info@markdesign.net', 'BlogController Update 2', '2019-10-08 05:03:16'),
(22, 'info@markdesign.net', 'BlogController Update 2', '2019-10-08 05:04:30'),
(23, 'info@markdesign.net', 'BlogController Update 2', '2019-10-08 05:05:55'),
(24, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-10-08 06:17:40'),
(25, 'info@markdesign.net', 'BlogController Update 2', '2019-10-08 06:25:56'),
(26, 'info@markdesign.net', 'BlogController Update 2', '2019-10-08 06:26:05'),
(27, 'info@markdesign.net', 'SetController Update 1', '2019-10-08 07:26:03'),
(28, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-10-08 09:39:13'),
(29, 'info@markdesign.net', 'Setting Update', '2019-10-08 09:41:50'),
(30, 'info@markdesign.net', 'Setting Update', '2019-10-08 09:42:28'),
(31, 'info@markdesign.net', 'Setting Update', '2019-10-08 09:43:11'),
(32, 'info@markdesign.net', 'Setting Update', '2019-10-08 09:43:39'),
(33, 'info@markdesign.net', 'Setting Update', '2019-10-08 09:45:03'),
(34, 'info@markdesign.net', 'Setting Update', '2019-10-08 09:45:35'),
(35, 'info@markdesign.net', 'Setting Update', '2019-10-08 09:45:41'),
(36, 'info@markdesign.net', 'Setting Update', '2019-10-08 09:45:55'),
(37, 'info@markdesign.net', 'Setting Update', '2019-10-08 09:46:09'),
(38, 'info@markdesign.net', 'ExtensioncourseController Create 1', '2019-10-08 09:46:34'),
(39, 'info@markdesign.net', 'Setting Update', '2019-10-08 09:47:12'),
(40, 'info@markdesign.net', 'ExtensioncourseController Create 2', '2019-10-08 09:56:58'),
(41, 'info@markdesign.net', 'MasterKategoristudiController Update 1', '2019-10-08 09:57:29'),
(42, 'info@markdesign.net', 'KegiatanUnivController Create 1', '2019-10-08 10:18:02'),
(43, 'info@markdesign.net', 'KegiatanUnivController Create 2', '2019-10-08 10:18:31'),
(44, 'info@markdesign.net', 'KegiatanUnivController Create 3', '2019-10-08 10:18:45'),
(45, 'info@markdesign.net', 'KegiatanUnivController Create 4', '2019-10-08 10:18:57'),
(46, 'info@markdesign.net', 'ExtensioncourseController Update 1', '2019-10-08 10:19:37'),
(47, 'info@markdesign.net', 'ExtensioncourseController Update 2', '2019-10-08 10:19:49'),
(48, 'info@markdesign.net', 'KegiatanUnivController Update 1', '2019-10-08 10:20:09'),
(49, 'info@markdesign.net', 'KegiatanUnivController Update 1', '2019-10-08 10:20:23'),
(50, 'info@markdesign.net', 'KegiatanUnivController Update 3', '2019-10-08 10:20:55'),
(51, 'info@markdesign.net', 'KegiatanUnivController Update 4', '2019-10-08 10:21:08'),
(52, 'info@markdesign.net', 'KegiatanUnivController Update 2', '2019-10-08 10:21:20'),
(53, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-10-08 10:45:01'),
(54, 'info@markdesign.net', 'KegiatanUnivController Update 1', '2019-10-08 10:45:14'),
(55, 'info@markdesign.net', 'KegiatanUnivController Update 2', '2019-10-08 10:45:19'),
(56, 'info@markdesign.net', 'KegiatanUnivController Update 3', '2019-10-08 10:45:23'),
(57, 'info@markdesign.net', 'KegiatanUnivController Update 4', '2019-10-08 10:45:27'),
(58, 'info@markdesign.net', 'KegiatanUnivController Update 1', '2019-10-08 10:45:40'),
(59, 'info@markdesign.net', 'KegiatanUnivController Update 1', '2019-10-08 10:45:43'),
(60, 'info@markdesign.net', 'KegiatanUnivController Update 2', '2019-10-08 10:45:47'),
(61, 'info@markdesign.net', 'KegiatanUnivController Update 3', '2019-10-08 10:45:52'),
(62, 'info@markdesign.net', 'KegiatanUnivController Update 4', '2019-10-08 10:45:55'),
(63, 'info@markdesign.net', 'ExtensioncourseController Update 1', '2019-10-08 10:46:18'),
(64, 'info@markdesign.net', 'Setting Update', '2019-10-08 10:46:22'),
(65, 'info@markdesign.net', 'SetController Update 4', '2019-10-09 06:12:59'),
(66, 'info@markdesign.net', 'SetController Update 3', '2019-10-09 06:13:06'),
(67, 'info@markdesign.net', 'SetController Update 2', '2019-10-09 06:13:11'),
(68, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-10-09 07:43:54'),
(69, 'info@markdesign.net', 'Setting Update', '2019-10-09 08:07:44'),
(70, 'info@markdesign.net', 'Setting Update', '2019-10-09 08:10:21'),
(71, 'info@markdesign.net', 'Setting Update', '2019-10-09 08:20:49'),
(72, 'info@markdesign.net', 'Setting Update', '2019-10-09 08:29:50'),
(73, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-10-09 09:28:02'),
(74, 'info@markdesign.net', 'ProgramSarjanaController Create 1', '2019-10-09 09:29:12'),
(75, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-10-09 09:39:34'),
(76, 'info@markdesign.net', 'ProgramSarjanaController Create 2', '2019-10-09 09:42:44'),
(77, 'info@markdesign.net', 'ProgramSarjanaController Create 3', '2019-10-09 09:43:33'),
(78, 'info@markdesign.net', 'ProgramSarjanaController Update 3', '2019-10-09 09:49:43'),
(79, 'info@markdesign.net', 'ProgramSarjanaController Update 1', '2019-10-09 09:49:52'),
(80, 'info@markdesign.net', 'ProgramSarjanaController Update 2', '2019-10-09 09:49:58'),
(81, 'info@markdesign.net', 'ProgramSarjanaController Update 2', '2019-10-09 09:55:26'),
(82, 'info@markdesign.net', 'ProgramSarjanaController Update 3', '2019-10-09 09:55:58'),
(83, 'info@markdesign.net', 'ProgramSarjanaController Update 1', '2019-10-09 09:56:07'),
(84, 'info@markdesign.net', 'ProgramSarjanaController Update 3', '2019-10-09 09:57:00'),
(85, 'info@markdesign.net', 'ProgramSarjanaController Create 4', '2019-10-09 09:57:08'),
(86, 'info@markdesign.net', 'MasterKategoristudiController Create 3', '2019-10-09 10:08:57'),
(87, 'info@markdesign.net', 'MasterKategoristudiController Create 4', '2019-10-09 10:09:02'),
(88, 'info@markdesign.net', 'MasterJenjangstudiController Create 3', '2019-10-09 10:09:08'),
(89, 'info@markdesign.net', 'MasterJenjangstudiController Create 4', '2019-10-09 10:09:11'),
(90, 'info@markdesign.net', 'ProgramSarjanaController Update 1', '2019-10-09 10:09:30'),
(91, 'info@markdesign.net', 'ProgramSarjanaController Update 4', '2019-10-09 10:09:41'),
(92, 'info@markdesign.net', 'ProgramSarjanaController Update 2', '2019-10-09 10:09:58'),
(93, 'info@markdesign.net', 'ProgramSarjanaController Update 3', '2019-10-09 10:10:06'),
(94, 'info@markdesign.net', 'ExtensioncourseController Update 1', '2019-10-09 10:11:56'),
(95, 'info@markdesign.net', 'ExtensioncourseController Update 2', '2019-10-09 10:12:09'),
(96, 'info@markdesign.net', 'ExtensioncourseController Update 1', '2019-10-09 10:14:17'),
(97, 'info@markdesign.net', 'ExtensioncourseController Update 1', '2019-10-09 10:14:39'),
(98, 'info@markdesign.net', 'ExtensioncourseController Update 2', '2019-10-09 10:14:45'),
(99, 'info@markdesign.net', 'ExtensioncourseController Update 1', '2019-10-09 10:15:11'),
(100, 'info@markdesign.net', 'ExtensioncourseController Update 2', '2019-10-09 10:15:22'),
(101, 'info@markdesign.net', 'ExtensioncourseController Update 1', '2019-10-09 10:18:21'),
(102, 'info@markdesign.net', 'ExtensioncourseController Update 2', '2019-10-09 10:18:33'),
(103, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-10-09 10:22:47'),
(104, 'info@markdesign.net', 'ExtensioncourseController Update 1', '2019-10-09 10:23:58'),
(105, 'info@markdesign.net', 'ExtensioncourseController Update 1', '2019-10-09 10:24:16'),
(106, 'info@markdesign.net', 'Setting Update', '2019-10-09 10:30:08'),
(107, 'info@markdesign.net', 'Setting Update', '2019-10-09 10:31:07'),
(108, 'info@markdesign.net', 'BlogController Update 2', '2019-10-09 10:43:23'),
(109, 'info@markdesign.net', 'BlogController Update 1', '2019-10-09 10:43:48'),
(110, 'info@markdesign.net', 'BlogController Update 1', '2019-10-09 10:46:44'),
(111, 'info@markdesign.net', 'BlogController Update 2', '2019-10-09 10:47:16'),
(112, 'info@markdesign.net', 'Blog Controller Create 3', '2019-10-09 10:51:34'),
(113, 'info@markdesign.net', 'BlogController Update 3', '2019-10-09 10:51:48'),
(114, 'info@markdesign.net', 'BlogController Update 3', '2019-10-09 10:51:55'),
(115, 'info@markdesign.net', 'Setting Update', '2019-10-09 11:01:13'),
(116, 'info@markdesign.net', 'Setting Update', '2019-10-09 11:01:28'),
(117, 'info@markdesign.net', 'Setting Update', '2019-10-09 11:03:39'),
(118, 'info@markdesign.net', 'BlogController Update 3', '2019-10-09 11:16:54'),
(119, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(120, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(121, 'info@markdesign.net', 'SlideController Update 1', '0000-00-00 00:00:00'),
(122, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(123, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(124, 'info@markdesign.net', 'SlideController Update 1', '0000-00-00 00:00:00'),
(125, 'info@markdesign.net', 'SlideController Update 1', '0000-00-00 00:00:00'),
(126, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(127, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(128, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(129, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(130, 'info@markdesign.net', 'TestimonialController Update 1', '0000-00-00 00:00:00'),
(131, 'info@markdesign.net', 'TestimonialController Update 1', '0000-00-00 00:00:00'),
(132, 'info@markdesign.net', 'TestimonialController Update 1', '0000-00-00 00:00:00'),
(133, 'info@markdesign.net', 'TestimonialController Update 1', '0000-00-00 00:00:00'),
(134, 'info@markdesign.net', 'TestimonialController Update 1', '0000-00-00 00:00:00'),
(135, 'info@markdesign.net', 'SetController Update 1', '0000-00-00 00:00:00'),
(136, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(137, 'info@markdesign.net', 'BlogController Update 2', '0000-00-00 00:00:00'),
(138, 'info@markdesign.net', 'BlogController Update 2', '0000-00-00 00:00:00'),
(139, 'info@markdesign.net', 'BlogController Update 1', '0000-00-00 00:00:00'),
(140, 'info@markdesign.net', 'BlogController Update 1', '0000-00-00 00:00:00'),
(141, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(142, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(143, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(144, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(145, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(146, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(147, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(148, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(149, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(150, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(151, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(152, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(153, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(154, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(155, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(156, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(157, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(158, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(159, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(160, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(161, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(162, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(163, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(164, 'info@markdesign.net', 'BlogController Update 1', '0000-00-00 00:00:00'),
(165, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(166, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(167, 'info@markdesign.net', 'BlogController Update 2', '0000-00-00 00:00:00'),
(168, 'info@markdesign.net', 'BlogController Update 2', '0000-00-00 00:00:00'),
(169, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(170, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(171, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(172, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(173, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(174, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(175, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(176, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(177, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(178, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(179, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(180, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(181, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(182, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(183, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(184, 'info@markdesign.net', 'ExtensioncourseController Update 1', '0000-00-00 00:00:00'),
(185, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(186, 'info@markdesign.net', 'ExtensioncourseController Update 1', '0000-00-00 00:00:00'),
(187, 'info@markdesign.net', 'KegiatanUnivController Update 1', '0000-00-00 00:00:00'),
(188, 'info@markdesign.net', 'TestimonialController Update 1', '0000-00-00 00:00:00'),
(189, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(190, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(191, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(192, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(193, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(194, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(195, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(196, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(197, 'info@markdesign.net', 'SetController Update 1', '0000-00-00 00:00:00'),
(198, 'info@markdesign.net', 'SetController Update 1', '0000-00-00 00:00:00'),
(199, 'info@markdesign.net', 'SetController Update 1', '0000-00-00 00:00:00'),
(200, 'info@markdesign.net', 'SetController Update 2', '0000-00-00 00:00:00'),
(201, 'info@markdesign.net', 'KegiatanUnivController Update 4', '0000-00-00 00:00:00'),
(202, 'info@markdesign.net', 'SetController Update 2', '0000-00-00 00:00:00'),
(203, 'info@markdesign.net', 'TestimonialController Update 2', '0000-00-00 00:00:00'),
(204, 'info@markdesign.net', 'TestimonialController Update 2', '0000-00-00 00:00:00'),
(205, 'info@markdesign.net', 'BlogController Update 1', '0000-00-00 00:00:00'),
(206, 'info@markdesign.net', 'SetController Update 1', '0000-00-00 00:00:00'),
(207, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(208, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(209, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(210, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(211, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(212, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(213, 'info@markdesign.net', 'TestimonialController Update 1', '0000-00-00 00:00:00'),
(214, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(215, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(216, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(217, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(218, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(219, 'info@markdesign.net', 'BlogController Update 1', '0000-00-00 00:00:00'),
(220, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(221, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(222, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(223, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(224, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(225, 'info@markdesign.net', 'SetController Update 1', '0000-00-00 00:00:00'),
(226, 'info@markdesign.net', 'SetController Update 1', '0000-00-00 00:00:00'),
(227, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(228, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(229, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(230, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(231, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(232, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(233, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(234, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(235, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(236, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(237, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(238, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(239, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(240, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(241, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(242, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(243, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(244, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(245, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(246, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(247, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(248, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(249, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(250, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(251, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(252, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(253, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(254, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(255, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(256, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(257, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(258, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(259, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(260, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(261, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(262, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(263, 'info@markdesign.net', 'KegiatanUnivController Update 1', '0000-00-00 00:00:00'),
(264, 'info@markdesign.net', 'KegiatanUnivController Update 2', '0000-00-00 00:00:00'),
(265, 'info@markdesign.net', 'KegiatanUnivController Update 2', '0000-00-00 00:00:00'),
(266, 'info@markdesign.net', 'KegiatanUnivController Update 3', '0000-00-00 00:00:00'),
(267, 'info@markdesign.net', 'KegiatanUnivController Update 4', '0000-00-00 00:00:00'),
(268, 'info@markdesign.net', 'SetController Update 1', '0000-00-00 00:00:00'),
(269, 'info@markdesign.net', 'SetController Update 2', '0000-00-00 00:00:00'),
(270, 'info@markdesign.net', 'SetController Update 1', '0000-00-00 00:00:00'),
(271, 'info@markdesign.net', 'SetController Update 2', '0000-00-00 00:00:00'),
(272, 'info@markdesign.net', 'ProgramSarjanaController Update 3', '0000-00-00 00:00:00'),
(273, 'info@markdesign.net', 'MasterJenjangstudiController Create 5', '0000-00-00 00:00:00'),
(274, 'info@markdesign.net', 'ProgramSarjanaController Update 2', '0000-00-00 00:00:00'),
(275, 'info@markdesign.net', 'ProgramSarjanaController Update 2', '0000-00-00 00:00:00'),
(276, 'info@markdesign.net', 'ProgramSarjanaController Update 4', '0000-00-00 00:00:00'),
(277, 'info@markdesign.net', 'ProgramSarjanaController Update 2', '0000-00-00 00:00:00'),
(278, 'info@markdesign.net', 'ProgramSarjanaController Update 1', '0000-00-00 00:00:00'),
(279, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(280, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(281, 'info@markdesign.net', 'Blog Controller Create 4', '0000-00-00 00:00:00'),
(282, 'info@markdesign.net', 'BlogController Update 4', '0000-00-00 00:00:00'),
(283, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(284, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(285, 'info@markdesign.net', 'LeSarjanaController Update 1', '0000-00-00 00:00:00'),
(286, 'info@markdesign.net', 'LeSarjanaController Update 1', '0000-00-00 00:00:00'),
(287, 'info@markdesign.net', 'LeSarjanaController Update 1', '0000-00-00 00:00:00'),
(288, 'info@markdesign.net', 'LeSarjanaController Update 1', '0000-00-00 00:00:00'),
(289, 'info@markdesign.net', 'LeSarjanaController Update 1', '0000-00-00 00:00:00'),
(290, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(291, 'info@markdesign.net', 'BlogController Update 4', '0000-00-00 00:00:00'),
(292, 'info@markdesign.net', 'BlogController Update 4', '0000-00-00 00:00:00'),
(293, 'info@markdesign.net', 'BlogController Update 4', '0000-00-00 00:00:00'),
(294, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(295, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(296, 'info@markdesign.net', 'BlogController Update 4', '0000-00-00 00:00:00'),
(297, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(298, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(299, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(300, 'info@markdesign.net', 'LeSarjanaController Update 7', '0000-00-00 00:00:00'),
(301, 'info@markdesign.net', 'LeSarjanaController Update 7', '0000-00-00 00:00:00'),
(302, 'info@markdesign.net', 'LeSarjanaController Update 7', '0000-00-00 00:00:00'),
(303, 'info@markdesign.net', 'LeSarjanaController Update 13', '0000-00-00 00:00:00'),
(304, 'info@markdesign.net', 'LeSarjanaController Update 7', '0000-00-00 00:00:00'),
(305, 'info@markdesign.net', 'LeSarjanaController Update 13', '0000-00-00 00:00:00'),
(306, 'info@markdesign.net', 'LeSarjanaController Update 8', '0000-00-00 00:00:00'),
(307, 'info@markdesign.net', 'LeSarjanaController Update 8', '0000-00-00 00:00:00'),
(308, 'info@markdesign.net', 'LeSarjanaController Update 11', '0000-00-00 00:00:00'),
(309, 'info@markdesign.net', 'LeSarjanaController Update 11', '0000-00-00 00:00:00'),
(310, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(311, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(312, 'info@markdesign.net', 'LeSarjanaController Update 10', '0000-00-00 00:00:00'),
(313, 'info@markdesign.net', 'LeSarjanaController Update 10', '0000-00-00 00:00:00'),
(314, 'info@markdesign.net', 'LeSarjanaController Update 16', '0000-00-00 00:00:00'),
(315, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(316, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(317, 'info@markdesign.net', 'LeSarjanaController Update 8', '0000-00-00 00:00:00'),
(318, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(319, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(320, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(321, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(322, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(323, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(324, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(325, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(326, 'info@markdesign.net', 'LeSarjanaController Update 11', '0000-00-00 00:00:00'),
(327, 'info@markdesign.net', 'LeSarjanaController Update 11', '0000-00-00 00:00:00'),
(328, 'info@markdesign.net', 'LeSarjanaController Update 11', '0000-00-00 00:00:00'),
(329, 'info@markdesign.net', 'LeSarjanaController Update 11', '0000-00-00 00:00:00'),
(330, 'info@markdesign.net', 'LeSarjanaController Update 11', '0000-00-00 00:00:00'),
(331, 'info@markdesign.net', 'LeSarjanaController Update 11', '0000-00-00 00:00:00'),
(332, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(333, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(334, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(335, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(336, 'info@markdesign.net', 'LeSarjanaController Update 2', '0000-00-00 00:00:00'),
(337, 'info@markdesign.net', 'LeSarjanaController Update 2', '0000-00-00 00:00:00'),
(338, 'info@markdesign.net', 'LeSarjanaController Update 2', '0000-00-00 00:00:00'),
(339, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(340, 'info@markdesign.net', 'TestimonialController Update 2', '0000-00-00 00:00:00'),
(341, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(342, 'info@markdesign.net', 'ExtensioncourseController Update 1', '0000-00-00 00:00:00'),
(343, 'info@markdesign.net', 'ExtensioncourseController Update 2', '0000-00-00 00:00:00'),
(344, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(345, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(346, 'info@markdesign.net', 'SetController Update 1', '0000-00-00 00:00:00'),
(347, 'info@markdesign.net', 'SetController Update 1', '0000-00-00 00:00:00'),
(348, 'info@markdesign.net', 'SetController Update 2', '0000-00-00 00:00:00'),
(349, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(350, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(351, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(352, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(353, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(354, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(355, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(356, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(357, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(358, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(359, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(360, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(361, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(362, 'info@markdesign.net', 'KegiatanUnivController Create 5', '0000-00-00 00:00:00'),
(363, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(364, 'info@markdesign.net', 'LeSarjanaController Update 17', '0000-00-00 00:00:00'),
(365, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(366, 'info@markdesign.net', 'LeSarjanaController Update 8', '0000-00-00 00:00:00'),
(367, 'info@markdesign.net', 'LeSarjanaController Update 17', '0000-00-00 00:00:00'),
(368, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(369, 'info@markdesign.net', 'LeSarjanaController Update 17', '0000-00-00 00:00:00'),
(370, 'info@markdesign.net', 'LeSarjanaController Update 8', '0000-00-00 00:00:00'),
(371, 'info@markdesign.net', 'LeSarjanaController Update 11', '0000-00-00 00:00:00'),
(372, 'info@markdesign.net', 'LeSarjanaController Update 11', '0000-00-00 00:00:00'),
(373, 'info@markdesign.net', 'LeSarjanaController Update 17', '0000-00-00 00:00:00'),
(374, 'info@markdesign.net', 'LeSarjanaController Update 17', '0000-00-00 00:00:00'),
(375, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(376, 'info@markdesign.net', 'LeSarjanaController Update 17', '0000-00-00 00:00:00'),
(377, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(378, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(379, 'info@markdesign.net', 'LeSarjanaController Update 17', '0000-00-00 00:00:00'),
(380, 'info@markdesign.net', 'LeSarjanaController Update 17', '0000-00-00 00:00:00'),
(381, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(382, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(383, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(384, 'info@markdesign.net', 'LeSarjanaController Update 14', '0000-00-00 00:00:00'),
(385, 'info@markdesign.net', 'SetController Update 1', '0000-00-00 00:00:00'),
(386, 'info@markdesign.net', 'SetController Update 2', '0000-00-00 00:00:00'),
(387, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(388, 'info@markdesign.net', 'LeSarjanaController Update 5', '0000-00-00 00:00:00'),
(389, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(390, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(391, 'info@markdesign.net', 'BlogController Update 2', '0000-00-00 00:00:00'),
(392, 'info@markdesign.net', 'BlogController Update 4', '0000-00-00 00:00:00'),
(393, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(394, 'info@markdesign.net', 'BlogController Update 1', '0000-00-00 00:00:00'),
(395, 'info@markdesign.net', 'BlogController Update 1', '0000-00-00 00:00:00'),
(396, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(397, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(398, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(399, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(400, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(401, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(402, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(403, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(404, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(405, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(406, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(407, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(408, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(409, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(410, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(411, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(412, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(413, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(414, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(415, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(416, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(417, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(418, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(419, 'info@markdesign.net', 'Blog Controller Create 5', '0000-00-00 00:00:00'),
(420, 'info@markdesign.net', 'BlogController Update 5', '0000-00-00 00:00:00'),
(421, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(422, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(423, 'info@markdesign.net', 'BlogController Update 4', '0000-00-00 00:00:00'),
(424, 'info@markdesign.net', 'BlogController Update 4', '0000-00-00 00:00:00'),
(425, 'info@markdesign.net', 'BlogController Update 5', '0000-00-00 00:00:00'),
(426, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(427, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(428, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(429, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(430, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(431, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(432, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(433, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(434, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(435, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(436, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(437, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(438, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(439, 'info@markdesign.net', 'BlogController Update 5', '0000-00-00 00:00:00'),
(440, 'info@markdesign.net', 'BlogController Update 5', '0000-00-00 00:00:00'),
(441, 'info@markdesign.net', 'BlogController Update 5', '0000-00-00 00:00:00'),
(442, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(443, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(444, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(445, 'info@markdesign.net', 'BlogController Update 5', '0000-00-00 00:00:00'),
(446, 'info@markdesign.net', 'BlogController Update 5', '0000-00-00 00:00:00'),
(447, 'info@markdesign.net', 'BlogController Update 5', '0000-00-00 00:00:00'),
(448, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(449, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(450, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(451, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(452, 'info@markdesign.net', 'BlogController Update 3', '0000-00-00 00:00:00'),
(453, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(454, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(455, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(456, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(457, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(458, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(459, 'info@markdesign.net', 'Blog Controller Create 6', '0000-00-00 00:00:00'),
(460, 'info@markdesign.net', 'BlogController Update 6', '0000-00-00 00:00:00'),
(461, 'info@markdesign.net', 'BlogController Update 1', '0000-00-00 00:00:00'),
(462, 'info@markdesign.net', 'BlogController Update 1', '0000-00-00 00:00:00'),
(463, 'info@markdesign.net', 'BlogController Update 2', '0000-00-00 00:00:00'),
(464, 'info@markdesign.net', 'BlogController Update 2', '0000-00-00 00:00:00'),
(465, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(466, 'info@markdesign.net', 'BlogController Update 4', '0000-00-00 00:00:00'),
(467, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(468, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(469, 'info@markdesign.net', 'ExtensioncourseController Update 2', '0000-00-00 00:00:00'),
(470, 'info@markdesign.net', 'ExtensioncourseController Update 2', '0000-00-00 00:00:00'),
(471, 'info@markdesign.net', 'ExtensioncourseController Update 2', '0000-00-00 00:00:00'),
(472, 'info@markdesign.net', 'ExtensioncourseController Update 2', '0000-00-00 00:00:00'),
(473, 'info@markdesign.net', 'KegiatanUnivController Create 6', '0000-00-00 00:00:00'),
(474, 'info@markdesign.net', 'KegiatanUnivController Create 7', '0000-00-00 00:00:00'),
(475, 'info@markdesign.net', 'KegiatanUnivController Create 8', '0000-00-00 00:00:00'),
(476, 'info@markdesign.net', 'KegiatanUnivController Update 8', '0000-00-00 00:00:00'),
(477, 'info@markdesign.net', 'KegiatanUnivController Update 8', '0000-00-00 00:00:00'),
(478, 'info@markdesign.net', 'KegiatanUnivController Update 8', '0000-00-00 00:00:00'),
(479, 'info@markdesign.net', 'KegiatanUnivController Update 8', '0000-00-00 00:00:00'),
(480, 'info@markdesign.net', 'KegiatanUnivController Update 8', '0000-00-00 00:00:00'),
(481, 'info@markdesign.net', 'KegiatanUnivController Update 8', '0000-00-00 00:00:00'),
(482, 'info@markdesign.net', 'KegiatanUnivController Update 8', '0000-00-00 00:00:00'),
(483, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '0000-00-00 00:00:00'),
(484, 'deoryzpandu@gmail.com', 'KegiatanUnivController Update 8', '0000-00-00 00:00:00'),
(485, 'deoryzpandu@gmail.com', 'KegiatanUnivController Update 8', '0000-00-00 00:00:00'),
(486, 'deoryzpandu@gmail.com', 'KegiatanUnivController Update 8', '0000-00-00 00:00:00'),
(487, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '0000-00-00 00:00:00'),
(488, 'deoryzpandu@gmail.com', 'KegiatanUnivController Update 7', '0000-00-00 00:00:00'),
(489, 'deoryzpandu@gmail.com', 'KegiatanUnivController Update 6', '0000-00-00 00:00:00'),
(490, 'deoryzpandu@gmail.com', 'KegiatanUnivController Update 8', '0000-00-00 00:00:00'),
(491, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(492, 'info@markdesign.net', 'KegiatanUnivController Update 8', '0000-00-00 00:00:00'),
(493, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(494, 'info@markdesign.net', 'ExtensioncourseController Update 2', '0000-00-00 00:00:00'),
(495, 'info@markdesign.net', 'ExtensioncourseController Update 1', '0000-00-00 00:00:00'),
(496, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(497, 'info@markdesign.net', 'ExtensioncourseController Update 2', '0000-00-00 00:00:00'),
(498, 'info@markdesign.net', 'ExtensioncourseController Update 1', '0000-00-00 00:00:00'),
(499, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(500, 'info@markdesign.net', 'ExtensioncourseController Update 1', '0000-00-00 00:00:00'),
(501, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(502, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(503, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(504, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(505, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(506, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(507, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(508, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(509, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(510, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(511, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(512, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(513, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(514, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(515, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(516, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '0000-00-00 00:00:00'),
(517, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(518, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(519, 'info@markdesign.net', 'KegiatanUnivController Create 9', '0000-00-00 00:00:00'),
(520, 'info@markdesign.net', 'KegiatanUnivController Update 9', '0000-00-00 00:00:00'),
(521, 'info@markdesign.net', 'KegiatanUnivController Create 10', '0000-00-00 00:00:00'),
(522, 'info@markdesign.net', 'KegiatanUnivController Update 10', '0000-00-00 00:00:00'),
(523, 'info@markdesign.net', 'KegiatanUnivController Create 11', '0000-00-00 00:00:00'),
(524, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(525, 'info@markdesign.net', 'KegiatanUnivController Create 12', '0000-00-00 00:00:00'),
(526, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(527, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(528, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(529, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(530, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(531, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(532, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(533, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(534, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(535, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(536, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(537, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(538, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(539, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(540, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(541, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(542, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(543, 'info@markdesign.net', 'Setting Update', '0000-00-00 00:00:00'),
(544, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(545, 'info@markdesign.net', 'Blog Controller Create 7', '0000-00-00 00:00:00'),
(546, 'info@markdesign.net', 'BlogController Update 7', '0000-00-00 00:00:00'),
(547, 'info@markdesign.net', 'BlogController Update 7', '0000-00-00 00:00:00'),
(548, 'info@markdesign.net', 'BlogController Update 7', '0000-00-00 00:00:00'),
(549, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(550, 'info@markdesign.net', 'BlogController Update 7', '0000-00-00 00:00:00'),
(551, 'info@markdesign.net', 'BlogController Update 7', '0000-00-00 00:00:00'),
(552, 'info@markdesign.net', 'BlogController Update 7', '0000-00-00 00:00:00'),
(553, 'info@markdesign.net', 'Login: info@markdesign.net', '0000-00-00 00:00:00'),
(554, 'info@markdesign.net', 'SlideController Update 1', '0000-00-00 00:00:00'),
(555, 'info@markdesign.net', 'Login: info@markdesign.net', '2020-01-08 09:24:03'),
(556, 'info@markdesign.net', 'Login: info@markdesign.net', '2020-01-10 03:05:14'),
(557, 'info@markdesign.net', 'Setting Update', '2020-01-10 03:07:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `me_member`
--

CREATE TABLE `me_member` (
  `id` int(11) NOT NULL,
  `acc_number` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order`
--

CREATE TABLE `or_order` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_prefix` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `payment_first_name` varchar(128) NOT NULL,
  `payment_last_name` varchar(128) NOT NULL,
  `payment_company` varchar(128) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(128) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `shipping_first_name` varchar(128) NOT NULL,
  `shipping_last_name` varchar(128) NOT NULL,
  `shipping_company` varchar(128) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(128) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_area` int(11) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `tax` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(100) NOT NULL,
  `currency_value` decimal(15,4) NOT NULL,
  `ip` varchar(128) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_modif` datetime NOT NULL,
  `delivery_from` varchar(100) NOT NULL,
  `delivery_to` varchar(100) NOT NULL,
  `delivery_package` varchar(100) NOT NULL,
  `delivery_price` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `delivery_weight` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `tracking_id` varchar(200) NOT NULL,
  `is_read` int(11) NOT NULL,
  `grand_total` decimal(13,2) NOT NULL,
  `promo_name` varchar(100) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `promo_kode` varchar(50) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `discount` decimal(13,2) NOT NULL,
  `discount_total` decimal(13,2) NOT NULL,
  `insertId` varchar(225) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order_history`
--

CREATE TABLE `or_order_history` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(4) NOT NULL,
  `comment` text NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order_product`
--

CREATE TABLE `or_order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `name` varchar(256) NOT NULL,
  `kode` varchar(256) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `attributes_id` int(11) NOT NULL,
  `attributes_name` varchar(256) NOT NULL,
  `attributes_price` decimal(15,4) NOT NULL,
  `berat` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order_status`
--

CREATE TABLE `or_order_status` (
  `order_status_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `or_order_status`
--

INSERT INTO `or_order_status` (`order_status_id`, `name`) VALUES
(2, 'Processing'),
(3, 'Shipped'),
(7, 'Canceled'),
(5, 'Complete'),
(8, 'Denied'),
(9, 'Canceled Reversal'),
(10, 'Failed'),
(11, 'Refunded'),
(12, 'Reversed'),
(13, 'Chargeback'),
(1, 'Pending'),
(16, 'Voided'),
(15, 'Processed'),
(14, 'Expired'),
(17, 'Paid');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pdf`
--

CREATE TABLE `pdf` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `size` decimal(10,3) NOT NULL,
  `sort` int(11) NOT NULL,
  `date_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pdf`
--

INSERT INTO `pdf` (`id`, `category_id`, `nama`, `image`, `file`, `size`, `sort`, `date_input`) VALUES
(5, 0, 'Coba PDF', 'ef25b-per.jpg', 'Doc1 - Copy2.pdf', '78306.000', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_bank`
--

CREATE TABLE `pg_bank` (
  `id` int(25) NOT NULL,
  `id_bank` int(25) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `rekening` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_bank`
--

INSERT INTO `pg_bank` (`id`, `id_bank`, `nama`, `rekening`) VALUES
(3, 2, 'PT. Jackson Shoes Indonesia', 123456789);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_blog`
--

CREATE TABLE `pg_blog` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(225) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` int(25) NOT NULL,
  `video_url_1` varchar(225) DEFAULT NULL,
  `video_url_2` varchar(225) DEFAULT NULL,
  `video_url_3` varchar(225) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_blog`
--

INSERT INTO `pg_blog` (`id`, `topik_id`, `image`, `link`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `video_url_1`, `video_url_2`, `video_url_3`) VALUES
(1, 4, '26494-Peserta mengajukan pertanyaan.JPG', NULL, 1, '2019-10-07 13:47:27', '2019-11-08 12:14:48', 'info@markdesign.net', 'info@markdesign.net', 0, '', '', ''),
(2, 4, 'cec4e-Foto Bersama.jpg', NULL, 1, '2019-10-08 11:56:39', '2019-11-08 12:18:10', 'info@markdesign.net', 'info@markdesign.net', 0, '', '', ''),
(3, 4, 'faaf9-DSC08925.JPG', NULL, 1, '2019-10-09 17:47:59', '2019-11-07 16:10:57', 'info@markdesign.net', 'info@markdesign.net', 0, 'https://www.youtube.com/watch?v=mVmDiTiaAEY', '', ''),
(4, 4, 'b1724-Sevimapay.jpg', NULL, 1, '2019-10-22 18:07:34', '2019-11-15 12:25:36', 'info@markdesign.net', 'info@markdesign.net', 0, '', '', ''),
(6, 3, '1c609-Homecoming 2.jpg', NULL, 1, '2019-09-04 12:02:30', '2019-11-08 12:10:59', 'info@markdesign.net', 'info@markdesign.net', 0, '', '', ''),
(5, 4, '6d954-Lustrum1.jpeg', NULL, 1, '2019-11-06 08:36:45', '2019-11-06 21:20:54', 'info@markdesign.net', 'info@markdesign.net', 0, '', '', ''),
(7, 4, '04891-IMG-20191212-WA0006.jpg', NULL, 1, '2019-12-28 17:03:07', '2019-12-29 17:11:22', 'info@markdesign.net', 'info@markdesign.net', 0, '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_blog_description`
--

CREATE TABLE `pg_blog_description` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `quote` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_blog_description`
--

INSERT INTO `pg_blog_description` (`id`, `blog_id`, `language_id`, `title`, `content`, `quote`) VALUES
(149, 2, 3, 'Sosialisasi dan Pelatihan Sistem Informasi Akademik', '<h4>Data lengkap dan akurat membantu memperlancar proses pembelajaran.</h4><p>Tanggal 2 hingga 5 September 2019 STF Driyarkara bekerja sama dengan PT Sentra Vidya Utama (Sevima) mengadakan sosialisasi dan pelatihan sistem informasi akademik untuk para administrator dan dosen. Pengunaan aplikasi Siakad Cloud (atau ‘SIADRI’ -- Sistem Informasi Akademik Driyarkara) yang dikembangkan oleh PT Sevima ini diharapkan dapat membantu para mahasiswa dalam merencanakan dan mengatur kegiatan akademik mereka dan juga membantu para dosen dalam merencanakan dan mengimplementasikan rencana pembelajaran melalui kuliah-kuliah yang diberikan.\r\n</p><p><img src=\"/images/static/81/Tim PT Sevima.jpg\">\r\n</p><p><img src=\"/images/static/02/Suasana Pelatihan 2.jpg\">\r\n</p><p><img src=\"/images/static/12/Suasana Pelatihan 1.jpg\">\r\n</p><p><br>\r\n</p>', 'Data lengkap dan akurat membantu memperlancar proses pembelajaran.'),
(148, 2, 2, 'Academic Information System Training and Socialization', '<h4>Data lengkap dan akurat membantu memperlancar proses pembelajaran.</h4><p>Tanggal 2 hingga 5 September 2019 STF Driyarkara bekerja sama dengan PT Sentra Vidya Utama (Sevima) mengadakan sosialisasi dan pelatihan sistem informasi akademik untuk para administrator dan dosen. Pengunaan aplikasi Siakad Cloud (atau ‘SIADRI’ -- Sistem Informasi Akademik Driyarkara) yang dikembangkan oleh PT Sevima ini diharapkan dapat membantu para mahasiswa dalam merencanakan dan mengatur kegiatan akademik mereka dan juga membantu para dosen dalam merencanakan dan mengimplementasikan rencana pembelajaran melalui kuliah-kuliah yang diberikan.\r\n</p><p><img src=\"/images/static/81/Tim PT Sevima.jpg\">\r\n</p><p><img src=\"/images/static/02/Suasana Pelatihan 2.jpg\">\r\n</p><p><img src=\"/images/static/12/Suasana Pelatihan 1.jpg\">\r\n</p><p><br>\r\n</p>', 'Complete and accurate data help the learning process.'),
(144, 1, 2, 'European Parliament Visit', '<h4>Belajar mengenai hubungan antaragama di Indonesia.</h4><p>Dua belas anggota Parlemen Eropa berkunjung ke STF Driyarkara pada tanggal 12 Agustus 2019 untuk berbincang-bincang dengan Romo Franz Magnis-Suseno dan mendapatkan masukan mengenai hubungan antaragama di Indonesia. Rombongan diantar oleh staf Kementerian Agama yang diketuai oleh Bapak Paulus Tasik Galle.\r\n</p><p><img src=\"/images/static/27/Foto-Bersama.jpg\">\r\n</p><p><img src=\"/images/static/35/Suasana-Diskusi.jpg\">\r\n</p><p><img src=\"/images/static/46/Romo-Magnis-memberikan-penjelasan.jpg\">\r\n</p>', 'Learning about Interreligious Dialogue in Indonesia.'),
(145, 1, 3, 'Kunjungan Parlemen Eropa', '<h4>Belajar mengenai hubungan antaragama di Indonesia.</h4><p>Dua belas anggota Parlemen Eropa berkunjung ke STF Driyarkara pada tanggal 12 Agustus 2019 untuk berbincang-bincang dengan Romo Franz Magnis-Suseno dan mendapatkan masukan mengenai hubungan antaragama di Indonesia. Rombongan diantar oleh staf Kementerian Agama yang diketuai oleh Bapak Paulus Tasik Galle.\r\n</p><p><img src=\"/images/static/27/Foto-Bersama.jpg\">\r\n</p><p><img src=\"/images/static/35/Suasana-Diskusi.jpg\">\r\n</p><p><img src=\"/images/static/46/Romo-Magnis-memberikan-penjelasan.jpg\">\r\n</p>', 'Belajar mengenai hubungan antaragama di Indonesia.'),
(137, 3, 3, 'Pengambilan Sampah Elektronik dari Kampus STF', '<p>Pada tanggal 9 September 2019 staf dan petugas dari PT Teknotama Lingkungan Internusa (TLI) melakukan pengambilan sampah elektronik (<i>ewaste</i>) dari kampus STF Driyarkara sekaligus menyerahkan dropbox untuk pengumpulan barang-barang elektronik bekas. Kerjasama STF Driyarkara dengan PT TLI ini merupakan upaya untuk mencegah terjadinya pencemaran lingkungan akibat sampah elektronik sekaligus untuk membangun kampus yang lebih ramah lingkungan.\r\n</p><p><strong></strong>\r\n</p><p class=\"embed-container\">\r\n	<iframe src=\"https://www.youtube.com/embed/1u3FAUpVHx0\" allowfullscreen=\"\" frameborder=\"0\">\r\n	</iframe>\r\n</p>', 'Membangun kampus yang lebih ramah lingkungan.'),
(136, 3, 2, 'Electronic Waste Collection from STF Campus', '<p>On September 9, 2019 staff and officers from PT Teknotama Lingkungan Internusa (TLI) collected electronic waste (ewaste) from the Driyarkara STF campus while handing over a dropbox to collect used electronic goods. The collaboration between STF Driyarkara and PT TLI is an effort to prevent environmental pollution from electronic waste as well as to build a more environmentally friendly campus.\r\n</p><p><img src=\"/images/static/06/pictur-2.jpg\" \"=\"\">\r\n</p><p class=\"embed-container\">\r\n	<iframe src=\"https://www.youtube.com/embed/1u3FAUpVHx0\" allowfullscreen=\"\" frameborder=\"0\">\r\n	</iframe>\r\n</p>', 'Building a campus that is more environmentally friendly. '),
(151, 4, 3, 'Cara Pembayaran SEVIMAPay Melalui BNI, Tokopedia dan Indomaret', '<p>Mulai semester genap tahun akademik 2019/20 pembayaran uang kuliah di STF Driyarkara akan dilakukan lewat pelayanan Sevimapay. Channel pembayaran yang tersedia saat ini adalah lewat BNI, Tokopedia dan Indomaret. Untuk menggunakan fasilitas ini, masuklah ke akun SIADRI (Sistem Informasi Akademik Driyarkara) Anda, klik \'Riwayat Keuangan,\' dan pastikan sudah ada tagihan untuk Anda. Centang tagihan yang hendak Anda bayar, lalu klik tombol \'Generate\' di pojok kanan atas. Pilihlah channel pembayaran Anda, kemudian klik \'Generate VA\' (<em>Virtual Account</em>). Apabila langkah ini berhasil, nomor VA Anda otomatis akan muncul pada di bawah menu \'Virtual Account\' pada \'Riwayat Keuangan.\' Gunakanlah VA ini untuk pembayaran pada channel yang sudah Anda pilih tadi. Untuk memahami cara pembayaran lewat masing-masing channel, silakan melihat video terkait di bawah ini.</p><p><iframe src=\"//www.youtube.com/embed/k9MVE4mjF2o\" allowfullscreen=\"\" width=\"500\" height=\"281\" frameborder=\"0\"></iframe><br></p><p><iframe src=\"//www.youtube.com/embed/OASpYBSv_lg\" allowfullscreen=\"\" width=\"500\" height=\"281\" frameborder=\"0\"></iframe><br></p><p><iframe src=\"//www.youtube.com/embed/yCoid2OafdU\" allowfullscreen=\"\" width=\"500\" height=\"281\" frameborder=\"0\"></iframe><br></p>', 'Cara mudah untuk membayar uang kuliah Anda.'),
(130, 5, 2, 'NATIONAL SEMINAR ON THE 50TH ANNIVERSARY OF DRIYARKARA SCHOOL OF PHILOSOPHY', '<p>Pada hari Sabtu, 2 November 2019, STF Driyarkara menyelenggarakan Seminar Nasional bertema “Filsafat dan Keindonesiaan” di ruang Auditorium STFD. Seminar ini adalah puncak dari rangkaian perayaan 50 tahun hari jadi STF Driyarkara dan dihadiri oleh sekitar 250 peserta. Ada tiga pembicara dalam seminar ini: (1) Prof. Mukhtasar Syamsuddin (dosen Fakultas Filsafat UGM) yang menjelaskan peran filsafat secara historis dalam membangun bangsa Indonesia, (2) Prof. Melani Budianta (dosen Fakultas Ilmu Budaya UI) yang berbagi pengalaman membangun keindonesiaan dalam jaringan pembangunan kebudayaan desa, dan (3) Dr. Agustinus Setyo Wibowo (dosen STF Driyarkara) yang mencoba menarik benang merah letak kekhasan filsafat di Indonesia. Moderator seminar adalah Lilian Budianto, M.A. (dosen STF Driyarkara). </p>    <p>Di awal seminar, Prof. Dr. Franz Magnis-Suseno memberikan <i>keynote speech</i>. Menurut Romo Magnis, “STF Driyarkara menawarkan pemikiran terbuka, kritis, bertanggungjawab terhadap keyakinan-keyakinan dasar tentang manusia, Tuhan, tanggungjawab dan keadilan...Dengan tawaran itu STF Driyarkara justru memungkinkan untuk dengan keyakinan terbuka membawa intelektualitas yang mendukung keyakinan-keyakinan dasar yang di Indonesia dirumuskan dengan amat bagus dalam Pancasila.” </p><p><img src=\"/images/static/82/Image 2019-11-03 at 18.09.21 (7).jpeg\"></p><p><img src=\"/images/static/78/Image 2019-11-04 at 22.09.38.jpeg\"></p><p><img src=\"/images/static/18/Image 2019-11-04 at 22.09.38 (1).jpeg\"></p><p><img src=\"/images/static/46/Image 2019-11-03 at 18.09.21.jpeg\"></p><p><img src=\"/images/static/97/Image 2019-11-03 at 18.09.21 (3).jpeg\"></p><p><img src=\"/images/static/14/Image 2019-11-03 at 18.09.21 (2).jpeg\"></p>', 'Doing philosophy to help build Indonesia'),
(131, 5, 3, 'SEMINAR NASIONAL DALAM RANGKA ULANG TAHUN KE-50 STF DRIYARKARA', '<p>Pada hari Sabtu, 2 November 2019, STF Driyarkara menyelenggarakan \r\nSeminar Nasional bertema “Filsafat dan Keindonesiaan” di ruang \r\nAuditorium STFD. Seminar ini adalah puncak dari rangkaian perayaan 50 \r\ntahun hari jadi STF Driyarkara dan dihadiri oleh sekitar 250 peserta. \r\nAda tiga pembicara dalam seminar ini: (1) Prof. Mukhtasar Syamsuddin \r\n(dosen Fakultas Filsafat UGM) yang menjelaskan peran filsafat secara \r\nhistoris dalam membangun bangsa Indonesia, (2) Prof. Melani Budianta \r\n(dosen Fakultas Ilmu Budaya UI) yang berbagi pengalaman membangun \r\nkeindonesiaan dalam jaringan pembangunan kebudayaan desa, dan (3) Dr. \r\nAgustinus Setyo Wibowo (dosen STF Driyarkara) yang mencoba menarik \r\nbenang merah letak kekhasan filsafat di Indonesia. Moderator seminar \r\nadalah Lilian Budianto, M.A. (dosen STF Driyarkara). </p>    <p>Di awal seminar, Prof. Dr. Franz Magnis-Suseno memberikan <i>keynote speech</i>.\r\n Menurut Romo Magnis, “STF Driyarkara menawarkan pemikiran terbuka, \r\nkritis, bertanggungjawab terhadap keyakinan-keyakinan dasar tentang \r\nmanusia, Tuhan, tanggungjawab dan keadilan...Dengan tawaran itu STF \r\nDriyarkara justru memungkinkan untuk dengan keyakinan terbuka membawa \r\nintelektualitas yang mendukung keyakinan-keyakinan dasar yang di \r\nIndonesia dirumuskan dengan amat bagus dalam Pancasila.” </p><p><img src=\"/images/static/65/Image 2019-11-03 at 18.09.21 (7).jpeg\"></p><p><img src=\"/images/static/89/Image 2019-11-04 at 22.09.38.jpeg\"></p><p><img src=\"/images/static/17/Image 2019-11-04 at 22.09.38 (1).jpeg\"></p><p><img src=\"/images/static/32/Image 2019-11-03 at 18.09.21.jpeg\"></p><p><img src=\"/images/static/56/Image 2019-11-03 at 18.09.21 (3).jpeg\"></p><p><img src=\"/images/static/75/Image 2019-11-03 at 18.09.21 (2).jpeg\"></p>', 'Berfilsafat untuk membantu pembentukan keindonesiaan'),
(150, 4, 2, 'SEVIMAPay Tuition Payment Through BNI, Tokopedia dan Indomaret', '<p>Starting the second semester of the 2019-20 academic year, tuition payment at Driyarkara School of Philosophy will be made through the service of Sevimapay. Payment channels available at this time include BNI, Tokopedia and Indomaret. To use this method of payment, please login into your SIADRI (Sistem Informasi Akademik Driyarkara) account, click \'Riwayat Keuangan\' (<em>Financial History</em>), and make sure you already have unpaid invoices (Tagihan Belum Lunas). If you do, please mark the invoice(s) you would like to pay, and click \'Generate\' button at the top right corner. Choose your payment channel and click \'Generate VA\' (Virtual Account). The VA will automatically appear under the \'Virtual Account\' Menu. Use this specific VA for payment through the channel you have chosen. To understand how to make payment through each channel, please watch the related videos below. </p><p><iframe src=\"//www.youtube.com/embed/k9MVE4mjF2o\" allowfullscreen=\"\" width=\"500\" height=\"281\" frameborder=\"0\"></iframe><br></p><p><iframe src=\"//www.youtube.com/embed/OASpYBSv_lg\" allowfullscreen=\"\" width=\"500\" height=\"281\" frameborder=\"0\"></iframe><span class=\"redactor-invisible-space\"><br></span></p><p><span class=\"redactor-invisible-space\"><iframe src=\"//www.youtube.com/embed/yCoid2OafdU\" allowfullscreen=\"\" width=\"500\" height=\"281\" frameborder=\"0\"></iframe><br></span></p>', 'An easy way to pay your tuition.'),
(141, 6, 3, 'Homecoming STF 2019', '<p>Filsafat adalah\r\nrasa sebal sekaligus rindu. Sebal sebagai buah dari kegagalan memahami paragraf\r\nteks filsafat yang begitu abstrak—Romo Sindhunata SJ, alumnus 1970, bahkan\r\npernah melempar buku filsafat yang sedang dibacanya, karena sebal, begitu kesaksiannya\r\ndalam Homecoming Alumni STF Driyarkara yang terselenggara pada pekan terakhir\r\nAgustus 2019. Rindu adalah buah dari kebahagiaan saat memahami betapa kedalaman\r\ndan kejernihan pemikiran filosofis dapat menenangkan batin—terkadang juga\r\nmelalui debat sengit antar mahasiswa pun dengan para guru dalam ruang akademis\r\nyang guyub. Begitulah, ingatan akan pengalaman belajar filsafat membayangi\r\nkehangatan dalam perjumpaan pertama para alumni lintas angkatan, mahasiswa dan\r\ntentunya para dosen dan staf STF Driyarkara. Perjumpaan itu jugalah yang\r\nmeneguhkan para civitas akademika Driyakara akan keyakinan bahwa kecintaan\r\nterhadap filsafat mesti tetap menyala, menjadi oase bagi kehidupan bersama di\r\nIndonesia. Sebab, semangat mencari kebenaran mustahil punah!<br></p><p><img src=\"/images/static/10/Homecoming 1.JPG\"></p><p><img src=\"/images/static/35/Homecoming 3.jpg\"></p><p><img src=\"/images/static/45/Homecoming 4.jpg\"></p><p><img src=\"/images/static/54/Homecoming 5.jpg\"></p><p><img src=\"/images/static/65/Homecoming 6.jpg\"></p><p><img src=\"/images/static/83/Homecoming 7.jpg\"></p><p><br></p>\r\n<p><br></p>', 'Kembali ke Akar Rasionalitas.'),
(140, 6, 2, 'Driyarkara Homecoming 2019', '<p>Filsafat adalah\r\nrasa sebal sekaligus rindu. Sebal sebagai buah dari kegagalan memahami paragraf\r\nteks filsafat yang begitu abstrak—Romo Sindhunata SJ, alumnus 1970, bahkan\r\npernah melempar buku filsafat yang sedang dibacanya, karena sebal, begitu kesaksiannya\r\ndalam Homecoming Alumni STF Driyarkara yang terselenggara pada pekan terakhir\r\nAgustus 2019. Rindu adalah buah dari kebahagiaan saat memahami betapa kedalaman\r\ndan kejernihan pemikiran filosofis dapat menenangkan batin—terkadang juga\r\nmelalui debat sengit antar mahasiswa pun dengan para guru dalam ruang akademis\r\nyang guyub. Begitulah, ingatan akan pengalaman belajar filsafat membayangi\r\nkehangatan dalam perjumpaan pertama para alumni lintas angkatan, mahasiswa dan\r\ntentunya para dosen dan staf STF Driyarkara. Perjumpaan itu jugalah yang\r\nmeneguhkan para civitas akademika Driyakara akan keyakinan bahwa kecintaan\r\nterhadap filsafat mesti tetap menyala, menjadi oase bagi kehidupan bersama di\r\nIndonesia. Sebab, semangat mencari kebenaran mustahil punah!<br></p><p><img src=\"/images/static/18/Homecoming 1.JPG\"></p><p><img src=\"/images/static/33/Homecoming 3.jpg\"></p><p><img src=\"/images/static/27/Homecoming 2.jpg\"></p><p><img src=\"/images/static/44/Homecoming 4.jpg\"></p><p><img src=\"/images/static/52/Homecoming 5.jpg\"></p><p><img src=\"/images/static/62/Homecoming 6.jpg\"></p><p><img src=\"/images/static/73/Homecoming 7.jpg\"></p>', 'Returning to the Roots of Rationality.'),
(165, 7, 3, 'Penandatanganan kontrak kerjasama CSR', '<p>Pada tanggal 12 Desember 2019 dilakukan penandatanganan perjanjian kerjasama bantuan dan instalasi jaringan internet oleh PT Mastersystem Infotama yang diwakili oleh Bapak Eddy Anthony sebagai Presiden Direktur dengan Sekolah Tinggi Filsafat Driyarkara yang diwakili oleh Thomas Hidya Tjaya, Ph.D. sebagai ketua. Kerjasama ini merupakan bentuk program tanggung jawab sosial perusahaan atau <i>Corporate Social Responsibility </i>(CSR) PT Mastersystem Infotama untuk membantu STF Driyarkara sebagai Perguruan Tinggi dalam menjalankan kegiatan akademik.</p><p><img src=\"/images/static/03/Signing_Edited.jpg\"></p><p><img src=\"/images/static/14/IMG-20191212-WA0017.jpg\"></p>', 'Membantu kelancaran proses pembelajaran'),
(164, 7, 2, 'Contract Signing', '<p>Pada tanggal 12 Desember 2019 dilakukan penandatanganan perjanjian kerjasama bantuan dan instalasi jaringan internet oleh PT Mastersystem Infotama yang diwakili oleh Bapak Eddy Anthony sebagai Presiden Direktur dengan Sekolah Tinggi Filsafat Driyarkara yang diwakili oleh Thomas Hidya Tjaya, Ph.D. sebagai ketua. Kerjasama ini merupakan bentuk program tanggung jawab sosial perusahaan atau <i>Corporate Social Responsibility </i>(CSR) PT Mastersystem Infotama untuk membantu STF Driyarkara sebagai Perguruan Tinggi dalam menjalankan kegiatan akademik.</p><p><img src=\"/images/static/22/Signing_Edited.jpg\"></p><p><img src=\"/images/static/40/IMG-20191212-WA0017.jpg\"></p>', 'Making smoother a learning process');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_infokampus`
--

CREATE TABLE `pg_infokampus` (
  `id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `testimonial` longtext NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_infokampus`
--

INSERT INTO `pg_infokampus` (`id`, `name`, `email`, `testimonial`, `image`, `status`, `date`) VALUES
(1, 'lorem ipsum', '', '', NULL, 1, '2019-10-07 15:45:19'),
(2, 'lorem ipsum', '', '', NULL, 1, '2019-10-07 15:46:47'),
(3, 'lorem ipsum', '', '', NULL, 1, '2019-10-07 15:47:28'),
(4, 'lorem ipsum', '', '', NULL, 1, '2019-10-07 16:01:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_infokampus_description`
--

CREATE TABLE `pg_infokampus_description` (
  `id` int(11) NOT NULL,
  `parents_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `content` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_infokampus_description`
--

INSERT INTO `pg_infokampus_description` (`id`, `parents_id`, `language_id`, `title`, `content`) VALUES
(42, 1, 3, ' PENDAFTARAN PROGRAM PASCASARJANA TAHUN AKADEMIK 2020/21', 'Silakan lihat Menu \'Akademik\' lalu \'Program Pascasarjana\''),
(43, 2, 2, 'ADMISSION TO UNDERGRADUATE PROGRAMS FOR 2020/21 ACADEMIC YEAR', 'See \'Academics\' then \'Undergraduate Programs\''),
(7, 3, 2, ' PENDAFTARAN PROGRAM DOKTOR', 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bib'),
(6, 4, 2, ' PENDAFTARAN PROGRAM DOKTOR', 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bib'),
(44, 2, 3, ' PENDAFTARAN PROGRAM SARJANA FILSAFAT DAN FILSAFAT KEILAHIAN TAHUN AKADEMIK 2020/21', 'Silakan lihat Menu \'Akademik\' lalu \'Program Sarjana\''),
(41, 1, 2, 'ADMISSION TO GRADUATE PROGRAMS FOR 2020/21 ACADEMIC YEAR', 'See \'Academics\' then \'Graduate Programs\'');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_list_bank`
--

CREATE TABLE `pg_list_bank` (
  `id` int(50) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `label` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_list_bank`
--

INSERT INTO `pg_list_bank` (`id`, `nama`, `label`) VALUES
(1, 'bank_mega', 'Bank Mega'),
(2, 'bca', 'BCA'),
(3, 'bca_syariah', 'BCA Syariah'),
(4, 'bii', 'BII'),
(5, 'bni', 'BNI'),
(6, 'bni_syariah', 'BNI Syariah'),
(7, 'bri', 'BRI'),
(8, 'bri_syariah', 'BRI Syariah'),
(9, 'cimb_niaga', 'CIMB Niaga'),
(10, 'cimb_niaga_syariah', 'CIMB Niaga Syariah'),
(11, 'citibank', 'Citibank'),
(12, 'danamon', 'Danamon'),
(13, 'hsbc', 'HSBC'),
(14, 'mandiri', 'Mandiri'),
(15, 'mandiri_syariah', 'Mandiri Syariah'),
(16, 'money_gram', 'Money Gram'),
(17, 'muamalat', 'Muamalat'),
(18, 'paypal', 'Paypal'),
(19, 'permata', 'Permata'),
(20, 'visa', 'Visa'),
(21, 'western_union', 'Western Union');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_pages`
--

CREATE TABLE `pg_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1',
  `group` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_pages`
--

INSERT INTO `pg_pages` (`id`, `name`, `type`, `group`) VALUES
(1, 'testimonial', 0, 'testimonial'),
(2, 'articles', 0, 'blog'),
(3, 'about', 0, 'static'),
(4, 'contact', 0, 'static'),
(5, 'faq', 0, 'faq'),
(6, 'how_to_shop', 0, 'static'),
(7, 'payment_confirmation', 0, 'static'),
(8, 'bank', 0, 'bank');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_pages_description`
--

CREATE TABLE `pg_pages_description` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `content` longtext NOT NULL,
  `meta_title` varchar(225) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_pages_description`
--

INSERT INTO `pg_pages_description` (`id`, `page_id`, `language_id`, `page_name`, `content`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(11, 4, 1, 'Kontak Kami', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Contact\r\n</p>\r\n<p>\r\n	  CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Kontak Kami', 'edit di admin panel -> Pages -> Contact', 'edit di admin panel -> Pages -> Contact'),
(12, 4, 2, 'Contact', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Contact\r\n</p>\r\n<p>\r\n	  CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Contact', 'edit di admin panel -> Pages -> Contact', 'edit di admin panel -> Pages -> Contact'),
(13, 6, 1, 'How To Shop', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; How To Shop\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'How To Shop', 'Edit di admin panel -> Pages -> How To Shop', 'Edit di admin panel -> Pages -> How To Shop'),
(14, 6, 2, 'How To Shop', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; How To Shop\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'How To Shop', 'Edit di admin panel -> Pages -> How To Shop', 'Edit di admin panel -> Pages -> How To Shop'),
(15, 7, 1, 'Konfirmasi Pembayaran', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Payment Confirmation\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Konfirmasi Pembayaran', 'Edit di admin panel -> Pages -> Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation'),
(16, 7, 2, 'Payment Confirmation', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Payment Confirmation\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation'),
(17, 3, 2, 'About', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; About\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa lain di website anda di admin panel -&gt; General Setting -&gt; Language(Bahasa)\r\n</p>', 'About', 'edit di admin panel -> Pages -> About', 'edit di admin panel -> Pages -> About');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_testimonial`
--

CREATE TABLE `pg_testimonial` (
  `id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `testimonial` longtext NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_testimonial`
--

INSERT INTO `pg_testimonial` (`id`, `name`, `email`, `testimonial`, `image`, `status`, `date`) VALUES
(1, 'Rita ', 'DIREKTUR PT. AGENGRANDHU JOLOTUNDO', '', '4c55d-homsec21.jpg', 0, '2019-10-07 15:50:07'),
(2, 'Rita Mar', 'POLITIK', '', '4b74b-homsec21.jpg', 0, '2019-10-07 15:50:32'),
(3, 'Andreana Sutarja', 'DIREKTUR PT. MAKMUR SENTOSA', '', 'e6269-homsec21.jpg', 1, '2019-10-07 15:50:56'),
(4, 'Rita Marsusiana', 'POLITIKUS', '', '388ca-homsec21.jpg', 1, '2019-10-07 15:51:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_testimonial_description`
--

CREATE TABLE `pg_testimonial_description` (
  `id` int(11) NOT NULL,
  `testimonial_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_testimonial_description`
--

INSERT INTO `pg_testimonial_description` (`id`, `testimonial_id`, `language_id`, `content`) VALUES
(22, 1, 3, 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bib'),
(24, 2, 3, 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bib'),
(3, 3, 2, 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bib'),
(4, 4, 2, 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bib'),
(21, 1, 2, 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bib'),
(23, 2, 2, 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bib');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_type_letak`
--

CREATE TABLE `pg_type_letak` (
  `id` int(11) NOT NULL,
  `letak` varchar(225) NOT NULL,
  `page_id` int(11) NOT NULL,
  `tampil` int(11) NOT NULL,
  `sort` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_type_letak`
--

INSERT INTO `pg_type_letak` (`id`, `letak`, `page_id`, `tampil`, `sort`) VALUES
(177, 'header', 2, 1, 1),
(178, 'header', 6, 1, 2),
(179, 'header', 4, 1, 3),
(180, 'header', 1, 0, 4),
(181, 'header', 3, 0, 5),
(182, 'header', 5, 0, 6),
(183, 'header', 7, 0, 7),
(184, 'header', 8, 0, 8),
(185, 'footer', 3, 1, 1),
(186, 'footer', 6, 1, 2),
(187, 'footer', 4, 1, 3),
(188, 'footer', 1, 0, 4),
(189, 'footer', 2, 0, 5),
(190, 'footer', 5, 0, 6),
(191, 'footer', 7, 0, 7),
(192, 'footer', 8, 0, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_brand`
--

CREATE TABLE `prd_brand` (
  `id` int(11) NOT NULL,
  `kode` varchar(225) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_brand`
--

INSERT INTO `prd_brand` (`id`, `kode`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`) VALUES
(2, 'B1', '4fa4c-elephant.png', 1, '0000-00-00 00:00:00', '2019-07-31 09:51:27', 'deoryzpandu@gmail.com', 'info@markdesign.net'),
(3, 'B2', 'e61ee-GRC.png', 1, '2019-07-31 09:51:54', '2019-07-31 09:51:54', 'info@markdesign.net', 'info@markdesign.net'),
(4, 'B3', 'e1f0f-halmary.png', 1, '2019-07-31 09:52:19', '2019-07-31 09:52:19', 'info@markdesign.net', 'info@markdesign.net'),
(5, 'B4', '59729-meridian.png', 1, '2019-07-31 09:52:50', '2019-07-31 09:52:50', 'info@markdesign.net', 'info@markdesign.net'),
(6, 'B5', '141e8-nirogranite.png', 1, '2019-07-31 09:53:16', '2019-07-31 09:53:16', 'info@markdesign.net', 'info@markdesign.net'),
(7, 'B6', 'd09a0-onduline.png', 1, '2019-07-31 09:54:23', '2019-07-31 09:54:23', 'info@markdesign.net', 'info@markdesign.net'),
(8, 'B7', 'aaf97-orin.png', 1, '2019-07-31 09:54:46', '2019-07-31 09:54:46', 'info@markdesign.net', 'info@markdesign.net'),
(9, 'B8', 'b31f9-solahart.png', 1, '2019-07-31 09:55:20', '2019-07-31 09:55:20', 'info@markdesign.net', 'info@markdesign.net'),
(10, 'B9', 'a8351-toto.png', 1, '2019-07-31 09:55:54', '2019-07-31 09:55:54', 'info@markdesign.net', 'info@markdesign.net'),
(11, 'B10', 'd6440-wina.png', 1, '2019-07-31 09:56:01', '2019-07-31 09:56:01', 'info@markdesign.net', 'info@markdesign.net'),
(12, 'B11', '6eaca-orin.png', 1, '2019-07-31 09:56:13', '2019-07-31 09:56:13', 'info@markdesign.net', 'info@markdesign.net'),
(13, 'B12', 'faedc-solahart.png', 1, '2019-07-31 09:56:25', '2019-07-31 09:56:25', 'info@markdesign.net', 'info@markdesign.net');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_brand_description`
--

CREATE TABLE `prd_brand_description` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_brand_description`
--

INSERT INTO `prd_brand_description` (`id`, `brand_id`, `language_id`, `title`, `content`) VALUES
(1, 1, 2, 'SINGLE ORIGIN', ''),
(4, 2, 2, 'ELEPHANT', ''),
(5, 3, 2, 'GRC', ''),
(6, 4, 2, 'HALMARY', ''),
(7, 5, 2, 'MERIDIAN', ''),
(8, 6, 2, 'NITROGRANITE', ''),
(9, 7, 2, 'ONDULINE', ''),
(10, 8, 2, 'ORIN', ''),
(11, 9, 2, 'SOLAHART', ''),
(12, 10, 2, 'TOTO', ''),
(13, 11, 2, 'WINA', ''),
(14, 12, 2, 'ORIN', ''),
(15, 13, 2, 'SOLAHART', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_category`
--

CREATE TABLE `prd_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_category`
--

INSERT INTO `prd_category` (`id`, `parent_id`, `sort`, `image`, `image2`, `image3`, `type`, `data`) VALUES
(1, 0, 1, '', '', '', 'category', ''),
(2, 0, 2, '', '', '', 'category', ''),
(3, 2, 1, '', '', '', 'category', ''),
(4, 2, 2, '', '', '', 'category', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_category_description`
--

CREATE TABLE `prd_category_description` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_category_description`
--

INSERT INTO `prd_category_description` (`id`, `category_id`, `language_id`, `name`, `desc`, `data`) VALUES
(13, 1, 2, 'Sarjana', '', ''),
(15, 2, 2, 'Pasca Sarjana', '', ''),
(18, 3, 3, 'Program Studi Magister Filsafat (S2)', '', ''),
(17, 3, 2, 'Program Studi Magister Filsafat (S2)', '', ''),
(7, 4, 2, 'Program Studi Doktor Filsafat (S3)', '', ''),
(8, 4, 3, 'Program Studi Doktor Filsafat (S3)', '', ''),
(14, 1, 3, 'Sarjana', '', ''),
(16, 2, 3, 'Pasca Sarjana', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_category_product`
--

CREATE TABLE `prd_category_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_excel`
--

CREATE TABLE `prd_excel` (
  `id` bigint(20) NOT NULL,
  `nama_produk` varchar(225) DEFAULT NULL,
  `kategori` varchar(225) DEFAULT NULL,
  `file_gambar` varchar(225) DEFAULT NULL,
  `harga` varchar(225) NOT NULL,
  `label_warna` varchar(225) NOT NULL,
  `label_kemasan` varchar(225) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `status` int(2) NOT NULL,
  `onsale` int(2) NOT NULL,
  `trending` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_excel`
--

INSERT INTO `prd_excel` (`id`, `nama_produk`, `kategori`, `file_gambar`, `harga`, `label_warna`, `label_kemasan`, `deskripsi`, `status`, `onsale`, `trending`) VALUES
(1, 'New Tempesta-F Trigger Spray Set 27513001', 'sanitary', '27513001.jpg', '696850', 'krom', '1 set lengkap', 'shower tangan dengan kontrol pemicu (27 512 001) wall shower holder (28 605) Selang shower Silverflex Longlife 1250 mm (26 335) GROHE StarLight krom selesai Sistem anti-limescale Speed ??Clean WaterGuide Bagian Dalam untuk masa pakai lebih lama Twistfree mencegah selang terlilit.', 1, 1, 1),
(2, 'Essentials Toilet Paper Holder w/cover 40367001', 'sanitary', '40367001_1_1.jpg', '1270500', 'krom', '1 set lengkap', 'Desain kamar mandi yang bagus memperhatikan detail. Tempat kertas toilet GROHE Essentials (dengan penutup) adalah solusi berdesain elegan yang sempurna untuk setiap kamar mandi modern. Dengan sentuhan akhir GROHE StarLight chrome yang awet dan tahan lama, aksesori kamar mandi yang bermanfaat ini akan terlihat rapi untuk tahun-tahun mendatang.', 1, 1, 1),
(3, 'Silverflex shower hose, 1500 mm 28364000', 'sanitary', '28364000_1_1.jpg', '645700', 'krom', '1 set lengkap', 'Berkat ukuran standarnya yaitu 1500 mm, selang shower dari seri Silverflex ini sangat ideal untuk menghubungkannya dengan shower tangan Anda di bathtub atau shower. Selang chrome GROHE StarLight sangat cocok dengan krom bersinar dari keran mandi atau shower Anda.', 1, 1, 1),
(4, 'Angle valve 1/2\"x3/8\" (10pcs) 2201700M', 'sanitary', '2201700M.jpg', '1739650', 'krom', '1 set lengkap', 'katup yang sangat berkualitas dengan lapisan krom premium dari GROHE', 1, 1, 1),
(5, 'NTempesta 100 III handshower 28261002', 'sanitary', '28261002.jpg', '484550', 'krom', '1 set lengkap', 'New Tempesta 100 Shower tangan 3 semprotan GROHE Rain O2, Hujan, Pijat GROHE Dream Spray pola semprotan sempurna GROHE Dream Spray pola semprotan sempurna GROHE StarLight krom selesai Sistem anti-limescale Speed Clean Inner Water Guide untuk umur lebih panjang.', 1, 1, 1),
(6, 'NTempCosmopolitan 100 III handshower 27572002', 'sanitary', '27572002.jpg', '549450', 'krom', '1 set lengkap', 'New Tempesta Cosmopolitan 100 Shower tangan 3 semprotan GROHE Rain O2, Hujan, Pijat GROHE Cool Touch GROHE Dream Spray pola semprotan sempurna GROHE StarLight krom selesai Sistem anti-limescale Speed ??Clean Inner WaterGuide untuk umur lebih panjang Sistem Pemasangan Universal.', 1, 1, 1),
(7, 'P-Trap 1 1/4 28961000', 'sanitary', '61EisLoFngL._SL1500_.jpg', '757350', 'krom', '1 set lengkap', 'untuk sambungan dinding cekungan, GROHE StarLight, lapisan chrome ', 1, 1, 1),
(8, 'Universal wall tap basin 20203000', 'sanitary', '20203000_1_1.jpg', '2471150', 'krom', '1 set lengkap', 'Tap toilet universal yang praktis ini dirancang untuk pemasangan di dinding dan merupakan tambahan penting untuk mencuci tangan Anda di toilet. Ceratnya 185 mm dan cocok untuk wastafel yang lebih kecil. Krom GROHE StarLight yang mengkilap membuat keran ini memiliki penampilan yang mencolok, meskipun ukurannya.', 1, 1, 1),
(9, 'GROHclean 48166000', 'sanitary', '71dBxbu6qyL._SL1500_.jpg', '434500', 'krom', '1 set lengkap', 'Groh Clean adalah cairan pembersih khusus dari GROHE dan direkomendasikan sebagai cairan pembersih produk-produk GROHE. Groh Clean dapat membantu menjaga produk GROHE anda agar selalu mengkilap seperti baru serta mencegah jamur dan kerak (terlihat seperti karat).', 1, 1, 1),
(10, 'Euphoria 260 shower system THM bath 26114001', 'sanitary', '26114001.jpg', '9423150', 'krom', '1 set lengkap', 'Sistem Euphoria 260 Sistem shower dengan termostat mandi untuk pemasangan di dinding Yang terdiri dari:lengan pancuran proyeksi horisontal swivable 450 mm mandi termostatik terbuka dengan fungsi Aquadimmer memungkinkan perubahan antara: kepala pancuran Euphoria 260 (26 455) 3 pola semprot: Hujan, SmartRain, Jet dengan ball joint sudut rotasi ? 15 ? inlet mandi pengalir terpisah untuk pancuran tangan.', 1, 1, 1),
(11, 'NTempCosmop.200 shw syst.OHM bath CN 26305001', 'sanitary', '26305000_1_1.jpg', '9458350', 'krom', '1 set lengkap', 'untuk memaksimalkan gaya dan kinerja ketika Anda memasang pancuran di atas bak mandi Anda, pilih sistem pancuran GROHE New Tempesta Cosmopolitan 200 dengan mixer tuas mandi tunggal - sistem pancuran mandi terbaik. Sistem shower mencakup shower kepala 200mm, shower tangan 100mm, dan selang Relaxaflex 1750mm.', 1, 1, 1),
(12, 'EUPH SmartCtrl 310 shower system THM 26507000', 'sanitary', '26507000.jpg', '12607100', 'krom', '1 set lengkap', 'Sistem Euphoria Smart Control 310 Duo dengan termostat untuk pemasangan di dinding Yang terdiri dari: lengan shower horisontal 450 mm braket atas dapat disesuaikan untuk adaptasi minimal terhadap lubang pengeboran yang ada termostat SmartControl terbuka memungkinkan perubahan antara: kepala pancuran Rainshower 310 SmartActive, plat semprot krom GROHE Pure Rain dan semprotan Jet Tengah', 1, 1, 1),
(13, 'EUPH SmartCtrl 310 shower system THM 26508000', 'sanitary', '26508000.jpg', '13643850', 'krom', '1 set lengkap', 'Sistem Euphoria SmartControl 310 Cube Duo dengan termostat untuk pemasangan di dinding Yang terdiri dari: lengan shower horisontal 450 mm braket atas dapat disesuaikan untuk adaptasi minimal terhadap lubang pengeboran yang ada termostat SmartControl terbuka memungkinkan perubahan antara: kepala pancuran Rainshower 310 SmartActive Cube, plat semprot krom GROHE PureRain dan semprotan Jet Tengah shower tangan. ', 1, 1, 1),
(14, 'Ntempesta 200 shower system OHM CN 26244001', 'sanitary', '26244001_1_1.jpg', '6672150', 'krom', '1 set lengkap', 'terdiri dari: horisontal swivable 450 mm shower arm terkena single-lever shower mixer dengan pengalir memungkinkan perubahan antara: head shower Tempesta Cosmopolitan 200 (27 541) pola semprot: Hujan dengan sudut rotasi sambungan bola ? 15 ? shower tangan Tempesta 100 II 9,5 l / min (27 597) pola semprot: Hujan, Jet setinggi dapat disesuaikan dengan elemen geser Selang shower Rotaflex 1.750 mm 1/2 \"x 1/2\" (28 410) GROHE SilkPerangkat keramik 46 mm GROHE DreamSpray pola semprot sempurna GROHE StarLight chrome finish Sistem anti-kapur SpeedClean Inner WaterGuide untuk masa pakai yang lebih lama Twistfree untuk mencegah selang terpuntir yang cocok untuk pemanas instan dari 18 kW / jam laju aliran minimum 7 l / mnt. min. tekanan yang disarankan 1,0 bar', 1, 1, 1),
(15, 'Euphoria 260 shower system THM  27296002', 'sanitary', '27296000.jpg', '9599700', 'krom', '1 set lengkap', 'Euphoria System 160 Sistem shower dengan termostat untuk pemasangan di dinding yang terdiri dari: horisontal swivable 450mm shower armexposed thermostat dengan fungsi Aquadimmer memungkinkan perubahan antara: shower head Euphoria Cosmopolitan 160 (28 232 000) pola semprot: Rainwith sudut rotasi sendi bola ? 15 ? shower tangan Tinggi Euphoria 110 Mono (27.265.000) disesuaikan dengan elemen geser (12.140.000) Selang shower Silverflex 1750 mm (28 388) laju aliran minimum 7 l / mnt', 1, 1, 1),
(16, 'NTempCosmop 100 IV shw rail set 600 dish 9,5 27577002', 'sanitary', '27577002.jpg', '1922800', 'krom', '1 set lengkap', 'Terdiri dari: Hand shower (27 575 000) bar shower 24 \"(27 521) RelexaFlex 69\" selang shower plastik (28 154) GROHE DreamSpray pola semprotan sempurna GROHE StarLight chrome finish SpeedClean? sistem anti-lime GROHE Easy Reach tray (27 596) 2,5 gpm (9,5 l / mnt) pembatas aliran Inner WaterGuide untuk masa pakai yang lebih lama Min. tekanan yang disarankan: 15 psi 4 \"shower tangan muka 4 Semprotan - GROHE Rain O? / Rain / Massage / Jet Bar diameter 7/8\".', 1, 1, 1),
(17, 'NTempesta 100 IV shw rail set 600 + dish 28593002', 'sanitary', '28593002_1_1.jpg', '1712150', 'krom', '1 set lengkap', 'terdiri dari: shower tangan (28 578) shower rail, 600 mm (27 523) Selang relexaflex 1750 mm 1/2 \"x 1/2\" (28 154) GROHE EasyReach tray (27 596) GROHE DreamSpray pola semprotan sempurna GROHE StarLight chrome selesaikan sistem anti-kapur SpeedClean Inner WaterGuide untuk masa pakai yang lebih lama Cincin silikon Anti Guncangan mencegah kerusakan akibat jatuhan pancuran yang cocok untuk min pemanas sesaat. tekanan yang disarankan 1,0 bar', 1, 1, 1),
(18, 'NTempesta 100 III handshower set 27849001', 'sanitary', '27849001_1_1.jpg', '925650', 'krom', '1 set lengkap', 'terdiri dari: hand shower (28 261) wall shower holder (28 605) tidak dapat disetel Relexaflex hose 1750 mm 1/2 \"x 1/2\" (28 154) GROHE DreamSpray pola semprotan sempurna GROHE StarLight chrome finish SpeedClean sistem anti-kapur Bagian dalam WaterGuide untuk masa pakai yang lebih lama Cincin silikon ShockProof mencegah kerusakan akibat jatuhan pancuran yang cocok untuk min pemanas sesaat. tekanan yang disarankan 1,0 bar', 1, 1, 1),
(19, 'Bauloop OHM bath exp 23603000', 'sanitary', '23603000.jpg', '2441700', 'krom', '1 set lengkap', 'dinding terpasang tuas logam GROHE Umur panjang 35 mm kartrid keramik GROHE StarLight chrome finish pengalih otomatis: bath / shower mousseur S-unions logam dinding escutcheon', 1, 1, 1),
(20, 'BauCurve OHM shower exp 23631000', 'sanitary', '23631000.jpg', '1886850', 'krom', '1 set lengkap', 'Pendakian gunung tuas logam Cartridge keramik GROHE Longlife 35 mm GROHE StarLight krom selesai outlet bawah pancuran 1/2 \"S-serikat pekerja dinding logam.', 1, 1, 1),
(21, 'NTempCosmop 100 III handshw set 9,5 27588002', 'sanitary', '27588002_1_1.jpg', '757350', 'krom', '1 set lengkap', 'New Tempesta Cosmopolitan 100Wall holder set 3 semprotan Terdiri dari: hand shower (27 574) wall shower holder tidak dapat disesuaikan (27 594) Selang relexaflex 1500 mm 1/2 \"x 1/2\" (28 151) GROHE EcoJoy 9.5 l / mnt aliran limiterGROHE StarLight chrome finishGROHE DreamSpray pola semprot sempurna SpeedClean sistem anti-limescale Panduan Air Dalam untuk daya tahan lebih lama.', 1, 1, 1),
(22, 'NTempCosmop 100 IV shw rail set 600 27787002', 'sanitary', '27787002_1_1.jpg', '1358500', 'krom', '1 set lengkap', 'handshower (27 573) shower rail, 600 mm (27 521) Selang relexaflex 1750 mm 1/2 \"x 1/2\" (28 154) GROHE DreamSpray pola semprotan sempurna GROHE StarLight chromefinish SpeedClean sistem anti-limescale Inner WaterGuide untuk masa pakai yang lebih lama min. direkomendasikan tekanan 1 bar.', 1, 1, 1),
(23, 'Ntempesta 100 IV shower rail set 600mm 27795001', 'sanitary', '27795001.jpg', '1666500', 'krom', '1 set lengkap', 'handshower (28 578) shower rail, 600 mm (27 523) Relexaflex hose 1750 mm 1/2 \"x 1/2\" (28 154) GROHE DreamSpray pola semprotan sempurna GROHE StarLight chrome finish SpeedClean sistem anti-limescale Inner WaterGuide lebih lama Cincin silikon ShockProof mencegah kerusakan yang disebabkan oleh pancuran yang jatuh. direkomendasikan tekanan 1 bar', 1, 1, 1),
(24, 'BauFlow OHM basin 32810000', 'sanitary', '32810000_1_1.jpg', '1488600', 'krom', '1 set lengkap', 'Dengan garis kontemporer dan mengalir, mixer baskom tuas tunggal GROHE BauFlow memberikan penampilan dan kinerja yang diminta oleh kamar mandi modern. Pengoperasian dilakukan melalui pegangan tuas logam padat, dan cerat ketinggian standar, miring untuk kenyamanan pengguna, adalah pendamping sempurna untuk semua wastafel biasa.', 1, 1, 1),
(25, 'BauLoop OHM basin 32814000', 'sanitary', '32814000_1_1.jpg', '1216600', 'krom', '1 set lengkap', 'instalasi lubang tunggal tuas logam GROHE Longlife 28 mm keramik cartridge GROHE StarLight chrome finish mousseur limbah pop-up set 1 \"koneksi yang fleksibel selang sistem instalasi yang cepat', 1, 1, 1),
(26, 'BauFlow pillar tap sink 31220000', 'sanitary', '31220000_1_1.jpg', '2227500', 'krom', '1 set lengkap', 'Instalasi lubang tunggal logam tuas kepala keramik memutar tubular moncong mousseur GROHE StarLight chrome finish fiksasi mur', 1, 1, 1),
(27, 'BauLoop pillar tap sink 31222000', 'sanitary', '31222000.jpg', '2212650', 'krom', '1 set lengkap', 'Instalasi lubang tunggal logam tuas kepala keramik memutar tubular moncong mousseur GROHE StarLight chrome finish fiksasi mur', 1, 1, 1),
(28, 'BauEdge OHM bath exp 23605000', 'sanitary', '23605000.jpg', '2441700', 'krom', '1 set lengkap', 'dipasang di dinding tuas logam Cartridge keramik GROHE Longlife 35 mm GROHE StarLight krom selesai pengalih otomatis: bak mandi / pancuran mousseurS-serikat pekerja dinding logam', 1, 1, 1),
(29, 'BauCurve OHM bath exp 23599000', 'sanitary', '23599000.jpg', '2325600', 'krom', '1 set lengkap', 'wall mounted metal lever GROHE Umur panjang 35 mm cartridge keramik GROHE StarLight chrome finish diverter otomatis: bath / shower mousseurS - unions metal wall escutcheon', 1, 1, 1),
(30, 'BauEdge OHM basin 32819000', 'sanitary', '32819000_1_1.jpg', '1564200', 'krom', '1 set lengkap', 'Mixer baskom tuas tunggal GROHE BauEdge adalah upgrade yang ideal untuk baskom kamar mandi Anda. Dari kinerja yang halus hingga siluetnya yang seimbang, keran baskom ini akan memberikan kesan kosmopolitan pada ruang Anda.', 1, 1, 1),
(31, 'BauEdge pillar tap sink 31223000', 'sanitary', '31223000_1_1.jpg', '2221650', 'krom', '1 set lengkap', 'Instalasi lubang tunggal logam tuas kepala keramik 1/2 \", 90 ? putar moncong tubular mousseur GROHE StarLight', 1, 1, 1),
(32, 'BauCurve OHM basin 32805000', 'sanitary', '32805000_1_1.jpg', '1488600', 'krom', '1 set lengkap', 'Mixer tunggal-tuas GROHE BauCurve baskom sangat ideal untuk membuat dampak di kamar mandi kontemporer Anda. Pengoperasian dilakukan melalui busur dinamis dari pegangan tuas logam padat, dan cerat ketinggian standar, miring untuk kenyamanan pengguna, adalah pendamping sempurna untuk semua bak cuci biasa.', 1, 1, 1),
(33, 'BauCurve pillar tap sink 31221000', 'sanitary', '31221000_1_1.jpg', '2236500', 'krom', '1 set lengkap', 'Sink tekan 1/2 \"(Cold Tap) lubang tunggal instalasi logam tuas kepala keramik putar tubular moncong mousseur chrome finish fiksasi nat', 1, 1, 1),
(34, 'Eurosmart 2015 OHM basin S-Size 33265002', 'sanitary', '33265002.jpg', '2450250', 'krom', '1 set lengkap', 'Berkat kartrid GROHE Silk Move yang terintegrasi, tuas keran kamar mandi ini menawarkan operasi sentuhan ringan. Busur yang naik secara elegan sangat selaras dengan dimensi keran - bahkan pada model ketinggian biasa - dan menyisakan banyak ruang di bawah untuk mencuci tangan. Sistem GROHE EcoJoy mengurangi penggunaan air Anda hingga 50%, membantu melestarikan sumber daya alam yang berharga dan menghemat uang Anda.', 1, 1, 1),
(35, 'Eurosmart 2015 OHM shower exp 33555002', 'sanitary', '23325000_1_1.jpg', '2851200', 'krom', '1 set lengkap', 'Keran Eurosmart ini memiliki tuas tunggal logam padat yang terasa kokoh dan intuitif di tangan Anda. Kartrid GROHE SilkMove memungkinkan Anda memvariasikan suhu dan aliran air dengan mudah dan presisi. Untuk ketenangan pikiran, pembatas suhu bawaan dan katup tidak-kembali akan membantu mengubah pancuran Anda menjadi selingan yang menenangkan.', 1, 1, 1),
(36, 'Eurosmart Cosmopolitan OHM basin M 23325000', 'sanitary', '23325000_1_1.jpg', '3226850', 'krom', '1 set lengkap', 'Mencari keran kamar mandi bergaya yang benar-benar ergonomis dan nyaman digunakan? Kemudian periksa mixer tuas tunggal GROHE Eurosmart Cosmopolitan dengan limbah sembulan yang akan memenuhi semua kebutuhan Anda dalam hal desain, fungsi, dan kinerja sehari-hari.', 1, 1, 1),
(37, 'Eurosmart Cosmopolitan OHM shower exp 32837000', 'sanitary', '32837000_1_1.jpg', '3453450', 'krom', '1 set lengkap', 'Desain modern keren memenuhi teknologi inovatif! Dengan bodi silinder yang halus, mixer shower tuas tunggal GROHE Eurosmart Cosmopolitan terlihat sempurna di setiap kamar mandi modern. Dibangun dengan indah dengan teknologi GROHE dan teknik Jerman, sangat menyenangkan untuk dioperasikan. Kontrol volume dan suhu air tepat dan mudah berkat kartrid keramik GROHE SilkMove sementara lapisan krom GROHE StarLight yang mengkilap dan mudah dibersihkan tahan gores dan menjaga kilaunya selama bertahun-tahun.', 1, 1, 1),
(38, 'Eurostyle 2015 OHM basin 23564003', 'sanitary', '23564003_1_1.jpg', '3490850', 'krom', '1 set lengkap', 'Tap tuas tunggal GROHE Eurostyle modern yang elegan mudah dan naluri untuk digunakan, ideal untuk kamar mandi keluarga dan wastafel standar, ditambah lagi ia memiliki teknologi hemat air built-in untuk membantu menghemat sumber daya berharga planet ini juga. Saluran air bagian dalam yang terpisah berarti air Anda bebas timah dan nikel, dan keran GROHE menjamin daya tahan maksimum dan kinerja luar biasa, semuanya didukung oleh keunggulan teknik Jerman.', 1, 1, 1),
(39, 'Eurosmart 2015 OHM basin 33300002', 'sanitary', '33300002.jpg', '3512300', 'krom', '1 set lengkap', 'Keran mandi ini memiliki pembatas suhu bawaan untuk memberikan keamanan dari panas dan pengalir otomatis untuk mengarahkan aliran dari bak mandi ke pancuran dan kembali. Kartrid GROHE SilkMove memungkinkan Anda memvariasikan suhu dan aliran air dengan mudah dan presisi, sehingga Anda dapat menikmati pancuran yang sangat menenangkan.', 1, 1, 1),
(40, 'Eurostyle 2015 OHM shower exp 33590003', 'sanitary', '33590003.jpg', '4574350', 'krom', '1 set lengkap', 'Gaya dan fungsionalitas kamar mandi modern Anda akan ditingkatkan dengan mixer GROHE Eurosmart yang elegan di dinding untuk shower - dan semuanya tanpa mengurangi anggaran Anda. Ini dioperasikan oleh tuas logam, yang menyenangkan untuk digunakan, sementara kartrid keramik GROHE SilkMove yang tahan lama menghasilkan volume dan kontrol suhu yang halus dan tepat untuk masa pakai keran.', 1, 1, 1),
(41, 'Eurosmart counter top basin 60 39198000', 'sanitary', '39198000_1_1.jpg', '2693350', 'krom', '1 set lengkap', 'Solusi baskom kamar mandi pintar! Cekungan meja GROHE Eurosmart adalah perpaduan antara desain modern yang indah dan teknologi canggih. Didesain untuk duduk di meja rias kamar mandi atau meja Anda, baskom tangan penuh gaya dengan lubang keran tunggal dan limpahan ini merupakan tambahan canggih untuk setiap kamar mandi modern. Terbuat dari china vitreous putih, ia memiliki lapisan anti-stick ProGuard yang inovatif untuk memudahkan pembersihan. Ini juga memiliki lapisan HyperClean antibakteri yang dirancang untuk sanitaryware yang menjamin permukaan keramik bebas kuman. Berukuran 600mm x 483mm X 168mm, sangat cocok untuk kamar mandi keluarga yang sibuk.', 1, 1, 1),
(42, 'Eurosmart washbasin under-counter 60 39125001', 'sanitary', '39125001_1_1.jpg', '2153800', 'krom', '1 set lengkap', 'Sempurna untuk menciptakan tampilan modern yang chic dan ramping di kamar mandi Anda, cekungan undermount GROHE Eurosmart ini pas di bawah meja kamar mandi atau unit meja rias untuk hasil yang bersih dan canggih. Terbuat dari china putih, memiliki garis-garis yang bersih dan sudut-sudut bulat untuk nuansa lembut dan mewah. Baskom ini memiliki luapan tetapi tidak ada lubang keran dan dilengkapi dengan lapisan anti-stick ProGuard yang inovatif untuk memudahkan pembersihan. Ini juga memiliki lapisan HyperClean antibakteri, yang dirancang khusus untuk sanitaryware dan menjamin permukaan keramik bebas kuman. Tambahkan baskom, yang berukuran 600mm x 420mm x 220mm, ke produk lain dalam koleksi keramik GROHE Eurosmart yang indah untuk menciptakan desain kamar mandi yang terkoordinasi dan benar-benar harmonis', 1, 1, 1),
(43, 'Eurosmart Vessel basin 60 39124001', 'sanitary', '39124001_1_1.jpg', '2288000', 'krom', '1 set lengkap', 'Jika Anda ingin memberi ruang kamar mandi Anda nuansa sejuk dan kontemporer, maka tak perlu mencari lebih jauh daripada baskom meja GROHE Eurosmart. Ini memiliki garis-garis yang bersih dengan sudut-sudut halus yang memberikan tampilan organik tetapi modern. Dirancang untuk dipasang di atas meja, ia memiliki kelebihan tetapi tidak ada lubang keran sehingga memasangkannya dengan counter atau keran atau mixer yang terpasang di dinding. Mengukur sedalam 600mm x 422mm x 130mm, baskom cina putih vitreous ini memiliki lapisan anti-stick ProGuard yang inovatif untuk pembersihan ekstra mudah.', 1, 1, 1),
(44, 'Eurocosmo Counter top basin 60 39291000', 'sanitary', '39291000.jpg', '3013450', 'krom', '1 set lengkap', 'Elegant dengan smooth body shape, wastafel GROHE Eurocosmo terlihat menarik dengan berbagai desain kamar mandi. Dengan mangkuk yang extra lebar, wastafel ini didesain untuk duduk cantik di atas meja dengan anggun. Dibuat dengan keramik yang dipanggang dengan suhu rendah membuat finishing wastafelnya sangat mudah dibersihkan. Mix and match wastafel ini dengan produk Grohe lainnya untuk menciptakan desain kamar mandi yang teratur dan harmonis.', 1, 1, 1),
(45, 'Eurocube Counter top basin 60 39234000', 'sanitary', '39234000_1_1.jpg', '3168000', 'krom', '1 set lengkap', 'Untuk menambahkan keunggulan kontemporer instan ke kamar mandi Anda, sulit untuk mengalahkan baskom meja GROHE Eurocube. Sempurna di kedua meja atau unit rias, ia memiliki garis-garis yang bersih dan bentuk kubik yang melengkapi ruang kamar mandi modern. Terbuat dari tanah liat api halus, ia memiliki lapisan anti-stick ProGuard yang inovatif untuk memudahkan pembersihan. Lapisan HyperClean antibakteri dirancang untuk saniter dan menjamin permukaan keramik bebas kuman. Ini mengukur 600mm x 480mm x 150mm, memiliki overflow dan lubang tap tunggal pra-dibor.', 1, 1, 1),
(46, 'Eurocosmo Vessel basin 60 39122001', 'sanitary', '39122001.jpg', '2809950', 'krom', '1 set lengkap', 'Eurocosmo Vessel basin 60 tanpa overflow 600 x 395 mm tinggi 147 mm tanah liat api halus alpine putih Hyper Clean Proguard.', 1, 1, 1),
(47, 'Sensia Arena shower toilet floor-stand 39355SH0', 'sanitary', '39355SH0_1_1.jpg', '53779000', 'krom', '1 set lengkap', 'GROHE Hygiene Clean: dengan pelapis antibakteri HyperClean (SIAA sesuai standar Jepang) dan lapisan anti lengket AquaCeramic GROHE flush power: rimless siphon jet WC dengan GROHE Triple Vortex flushing technology GROHE Skin Clean 2 lengan semprotan khusus yang dapat disesuaikan (1 untuk area anal, 1 untuk semprotan wanita) cara air terpisah untuk semprotan semprotan berosilasi wanita (gerak maju dan mundur semprot otomatis)', 1, 1, 1),
(48, 'Eurosmart WC w.cistern one piece CN 39119001', 'sanitary', '39119001_1_1.jpg', '10805850', 'krom', '1 set lengkap', 'Dengan kurva halus dan desain yang mengalir, toilet berlantai satu Eurosmart sangat cocok untuk siapa saja yang menyukai tampilan elegan dan modern. Ini juga menambah kesan ruang pada setiap kamar mandi kontemporer, tetapi juga ideal di ruang ganti! Teknologi anti-tetes ProGuard berarti toilet tetap bebas dari kotoran dan limescale sementara permukaan HyperClean mencegah 99,9% dari semua pertumbuhan bakteri.', 1, 1, 1),
(49, 'Eurosmart WC w.cistern one piece CN 39316000', 'sanitary', '39118000_1_1.jpg', '10805850', 'krom', '1 set lengkap', 'Dengan kurva halus dan desain yang mengalir, toilet berlantai satu Eurosmart sangat cocok untuk siapa saja yang menyukai tampilan elegan dan modern. Ini juga menambah kesan ruang pada setiap kamar mandi kontemporer, tetapi juga ideal di ruang ganti! Teknologi anti-tetes ProGuard berarti toilet tetap bebas dari kotoran dan limescale sementara permukaan HyperClean mencegah 99,9% dari semua pertumbuhan bakteri.', 1, 1, 1),
(50, 'Eurosmart 2015 OHM bath exp 33300002', 'sanitary', '33300002_1_1.jpg', '2235100', 'krom', '1 set lengkap', 'Eurosmart Single-lever bath mixer 1/2 \"dinding-mount tuas logam GROHE Silk bergerak 35 mm cartridge keramik dengan pembatas suhu bak mandi / shower mousseur katup non-balik terintegrasi di outlet shower 1/2 \"S-unions escutcheons logam dinding terlindung dari arus balik', 1, 1, 1),
(51, 'Eurosmart 2015 OHM bath exp 33555002', 'sanitary', '33555002_1_1', '1814400', 'krom', '1 set lengkap', 'Keran Eurosmart ini memiliki tuas tunggal logam padat yang terasa kokoh dan intuitif di tangan Anda. Kartrid GROHE SilkMove memungkinkan Anda memvariasikan suhu dan aliran air dengan mudah dan presisi. Untuk ketenangan pikiran, pembatas suhu bawaan dan katup tidak-kembali akan membantu mengubah pancuran Anda menjadi selingan yang menenangkan.', 1, 1, 1),
(52, 'Granit Tile 60X60 Travertino Cr?me Niro Granite GTV02', 'Granite Tile', 'travertino gtv02.jpg', '195000', 'Cr?me', '1 dus 1.08 m2 isi 3 keping granit tile', 'Amazing natural stone Cr?me pattern which complements your trendy interior design styles. With its mild swirls and matt surface', 1, 1, 1),
(53, 'Granit Tile 60X60 Travertino Noche Niro Granite GTV03', 'Granite Tile', 'travertino gtv03.jpg', '195000', 'Noche', '1 dus 1.08 m2 isi 3 keping granit tile', 'Amazing natural stone Noche pattern which complements your trendy interior design styles. With its mild swirls and matt surface', 1, 1, 1),
(54, 'Granit Tile 60X120 Travertino Ivory Niro Granite GTV01', 'Granite Tile', 'travertino gtv01.jpg', '258000', 'Ivory', '1 dus 1.44 m2 isi 2 keping granit tile', 'Amazing natural stone Ivory pattern which complements your trendy interior design styles. With its mild swirls and matt surface', 1, 1, 1),
(55, 'Granit Tile 60X120 Travertino Cr?me Niro Granite GTV02', 'Granite Tile', 'travertino gtv02.jpg', '258000', 'Cr?me', '1 dus 1.44 m2 isi 2 keping granit tile', 'Amazing natural stone Cr?me pattern which complements your trendy interior design styles. With its mild swirls and matt surface', 1, 1, 1),
(56, 'Granit Tile 60X120 Travertino Noche Niro Granite GTV03', 'Granite Tile', 'travertino gtv03.jpg', '258000', 'Noche', '1 dus 1.44 m2 isi 2 keping granit tile', 'Amazing natural stone Noche pattern which complements your trendy interior design styles. With its mild swirls and matt surface', 1, 1, 1),
(57, 'Granit Tile 60X60 Terrazzo Alba Niro Granite GTZ01', 'Granite Tile', 'terrazzo-gtz01.jpg', '195000', 'Terrazzo Alba', '1 dus 1.08 m2 isi 3 keping granit tile', 'The favoured Terrazzo Alba is coming with new structured surface, captures the essence of versatility, long-lasting application and the timeless beauty of Terrazzo tiles', 1, 1, 1),
(58, 'Granit Tile 60X60 Terrazzo Brunneis Niro Granite GTZ02', 'Granite Tile', 'terrazzo-gtz02.jpg', '195000', 'Terrazzo Brunneis', '1 dus 1.08 m2 isi 3 keping granit tile', 'The favoured Terrazzo Brunneis is coming with new structured surface, captures the essence of versatility, long-lasting application and the timeless beauty of Terrazzo tiles', 1, 1, 1),
(59, 'Granit Tile 60X60 Terrazzo Griseo Niro Granite GTZ03S', 'Granite Tile', 'terrazzo-gtz03.jpg', '195000', 'Terrazzo Griseo', '1 dus 1.08 m2 isi 3 keping granit tile', 'The favoured Terrazzo Griseo is coming with new structured surface, captures the essence of versatility, long-lasting application and the timeless beauty of Terrazzo tiles', 1, 1, 1),
(60, 'Granit Tile 60X60 Pebbles Frosty White Niro Granite GPL01', 'Granite Tile', 'pebbles gpl01.jpg', '167500', 'Frosty White', '1 dus 1.08 m2 isi 3 keping granit tile', 'Pebble Frosty White, giving extra bold and modish ambiance to your home and commercial space. Pebble collections successfully create impression of splendour design', 1, 1, 1),
(61, 'Granit Tile 60X60 Pebbles Lite Buff Niro Granite GPL02', 'Granite Tile', 'pebbles gpl02.jpg', '167500', 'Lite Buff', '1 dus 1.08 m2 isi 3 keping granit tile', 'Pebble Lite Buff, giving extra bold and modish ambiance to your home and commercial space. Pebble collections successfully create impression of splendour design', 1, 1, 1),
(62, 'Granit Tile 60X60 Pebbles Charcoal Grey Niro Granite GPL03', 'Granite Tile', 'pebbles gpl03.jpg', '167500', 'Charcoal Grey', '1 dus 1.08 m2 isi 3 keping granit tile', 'Pebble Charcoal Grey, giving extra bold and modish ambiance to your home and commercial space. Pebble collections successfully create impression of splendour design', 1, 1, 1),
(63, 'Granit Tile 60X60  Pebbles Frosty White Niro Granite GPL01', 'Granite Tile', 'pebbles gpl01.jpg', '167500', 'Frosty White', '1 dus 1.08 m2 isi 3 keping granit tile', 'Pebble Collection has art deco pieces Frosty White with modern pattern', 1, 1, 1),
(64, 'Granit Tile 60X60 Pebbles Lite Buff Niro Granite GPL02', 'Granite Tile', 'pebbles gpl02.jpg', '167500', 'Lite Buff', '1 dus 1.08 m2 isi 3 keping granit tile', 'Pebble Collection has art deco pieces Lite Buff with modern pattern', 1, 1, 1),
(65, 'Granit Tile 60X60 Pebbles Charcoal Grey Niro Granite GPL03', 'Granite Tile', 'pebbles gpl03.jpg', '167500', 'Charcoal Grey', '1 dus 1.08 m2 isi 3 keping granit tile', 'Pebble Collection has art deco pieces Charcoal Grey with modern pattern', 1, 1, 1),
(66, 'Granit Tile 60X60 Lux 3.0 Serpentine Niro Granite GLX81', 'Granite Tile', 'GLX81 Serpentine_20190815143912-1.jpg', '150000', 'Serpentine', '1 dus 1.08 m2 isi 3 keping granit tile', 'Serpentine was inspired by a delightful look of natural marble. Its veins and colour, combine harmoniously in creating a luxury ambience', 1, 1, 1),
(67, 'Granit Tile 60X60 Lux 3.0 Nuvola Niro Granite GLX82', 'Granite Tile', 'GLX82 Nuvola_20190815143851-1.jpg', '150000', 'Nuvola', '1 dus 1.08 m2 isi 3 keping granit tile', 'Nuvola means cloud in italian resemblances the softness of beautiful dawn sky. Coming with a slightly touch of delicate swirls', 1, 1, 1),
(68, 'Granit Tile 60X60 Lux 3.0 Carnelia Niro Granite GLX83', 'Granite Tile', 'GLX83 Carnelia_20190815143821-1', '150000', 'Carnelia', '1 dus 1.08 m2 isi 3 keping granit tile', 'The exquisite allure of Carnelia is a perfect reflection of luxury statement by its veins and swirls', 1, 1, 1),
(69, 'Granit Tile 60X60 Lux 3.0 Bosco Niro Granite GLX85', 'Granite Tile', 'GLX85 bosco_20190815143723-1', '150000', 'Bosco', '1 dus 1.08 m2 isi 3 keping granit tile', 'the intense charm of Bosco is a perfect addition of natural wood look to your space', 1, 1, 1),
(70, 'Granit Tile 60X60 Lux 3.0 Bilia Niro Granite GLX86', 'Granite Tile', 'GLX86 bilia_20190815143701-1', '150000', 'Bilia', '1 dus 1.08 m2 isi 3 keping granit tile', 'With its fascinating veins of grey curving through the pristine white look, Bilia is a remarkable piece of art. Coming in daring stylish look and the strong swirls', 1, 1, 1),
(71, 'Granit Tile 60X60 Lux 3.0 Esatto Niro Granite GLX87', 'Granite Tile', 'GLX87 Essatto_20190815143636-1', '150000', 'Esatto', '1 dus 1.08 m2 isi 3 keping granit tile', 'Coming with soft swirl sin terracotta color, Esatto inspired by the beauty of the desert. The perfect combination the pattern and glazed polished finishing', 1, 1, 1),
(72, 'Granit Tile 80x80 Lux 3.0 Serpentine Niro Granite GLX81', 'Granite Tile', 'GLX81 Serpentine_20190815143912-1.jpg', '195000', 'Serpentine', '1 dus 1.92 m2 isi 3 keping granit tile', 'Serpentine was inspired by a delightful look of natural marble. Its veins and colour, combine harmoniously in creating a luxury ambience', 1, 1, 1),
(73, 'Granit Tile 80x80 Lux 3.0 Nuvola Niro Granite GLX82', 'Granite Tile', 'GLX82 Nuvola_20190815143851-1.jpg', '195000', 'Nuvola', '1 dus 1.92 m2 isi 3 keping granit tile', 'Nuvola means cloud in italian resemblances the softness of beautiful dawn sky. Coming with a slightly touch of delicate swirls', 1, 1, 1),
(74, 'Granit Tile 80x80 Lux 3.0 Carnelia Niro Granite GLX83', 'Granite Tile', 'GLX83 Carnelia_20190815143821-1.jpg', '195000', 'Carnelia', '1 dus 1.92 m2 isi 3 keping granit tile', 'The exquisite allure of Carnelia is a perfect reflection of luxury statement by its veins and swirls', 1, 1, 1),
(75, 'Granit Tile 80x80 Lux 3.0 Bosco Niro Granite GLX85', 'Granite Tile', 'GLX85 bosco_20190815143723-1.jpg', '195000', 'Bosco', '1 dus 1.92 m2 isi 3 keping granit tile', 'The intense charm of Bosco is a perfect addition of natural wood look to your space', 1, 1, 1),
(76, 'Granit Tile 80x80 Lux 3.0 Bilia Niro Granite GLX86', 'Granite Tile', 'GLX86 bilia_20190815143701-1.jpg', '195000', 'Bilia', '1 dus 1.92 m2 isi 3 keping granit tile', 'With its fascinating veins of grey curving through the pristine white look, Bilia is a remarkable piece of art. Coming in daring stylish look and the strong swirls', 1, 1, 1),
(77, 'Granit Tile 80x80 Lux 3.0 Esatto Niro Granite GLX87', 'Granite Tile', 'GLX87 Essatto_20190815143636-1.jpg', '195000', 'Esatto', '1 dus 1.92 m2 isi 3 keping granit tile', 'Coming with soft swirl sin terracotta color, Esatto inspired by the beauty of the desert. The perfect combination the pattern and glazed polished finishing', 1, 1, 1),
(78, 'Granit Tile 60X60 Lux 3.0 Nuovo Niro Granite GLX71', 'Granite Tile', 'GLX71 Nuovo_20190815143935-1.jpg', '150000', 'Nuovo', '1 dus 1.08 m2 isi 3 keping granit tile', 'Nuovo will interpret the look perfectly. Its soft grey vein, make your room looks spacious and lux', 1, 1, 1),
(79, 'Granit Tile 60X60 Lux 3.0 Biondo Niro Granite GLX73', 'Granite Tile', 'GLX73 Biondo_20190815144009-1.jpg', '150000', 'Biondo', '1 dus 1.08 m2 isi 3 keping granit tile', 'The look of natural stone Brown with its enchanting swirls will always be a favourite', 1, 1, 1),
(80, 'Granit Tile 60X60 Lux 3.0 Onyx Niro Granite GLX75', 'Granite Tile', 'glx75 onyx.jpg', '162000', 'Onyx', '1 dus 1.08 m2 isi 3 keping granit tile', 'Onyx comes with deep solid black colour for those who eyeing a masculine and contemporary style', 1, 1, 1),
(81, 'Granit Tile 80X80 Lux 3.0 Nuovo Niro Granite GLX71', 'Granite Tile', 'GLX71 Nuovo_20190815143935-1.jpg', '195000', 'Nuovo', '1 dus 1.92 m2 isi 3 keping granit tile', 'Nuovo will interpret the look perfectly. Its soft grey vein, make your room looks spacious and lux', 1, 1, 1),
(82, 'Granit Tile 80X80 Lux 3.0 Biondo Niro Granite GLX73', 'Granite Tile', 'GLX73 Biondo_20190815144009-1.jpg', '195000', 'Biondo', '1 dus 1.92 m2 isi 3 keping granit tile', 'The look of natural stone Brown with its enchanting swirls will always be a favourite', 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_gallery_highlight`
--

CREATE TABLE `prd_gallery_highlight` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_gallery_highlight`
--

INSERT INTO `prd_gallery_highlight` (`id`, `product_id`, `gallery_id`) VALUES
(12, 14, 9),
(13, 15, 6),
(14, 13, 6),
(17, 12, 9),
(18, 11, 6),
(19, 10, 9),
(20, 9, 9),
(21, 8, 6),
(23, 7, 9),
(27, 4, 6),
(28, 3, 6),
(29, 2, 9),
(30, 1, 6),
(34, 5, 6),
(37, 6, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product`
--

CREATE TABLE `prd_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image2` varchar(225) DEFAULT NULL,
  `kode` varchar(50) NOT NULL,
  `harga` decimal(11,2) NOT NULL,
  `harga_coret` decimal(11,2) NOT NULL,
  `harga_retail` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `terbaru` int(11) NOT NULL,
  `terlaris` int(11) NOT NULL,
  `out_stock` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `data` text NOT NULL,
  `tag` text NOT NULL,
  `filter` text NOT NULL,
  `onsale` int(11) NOT NULL,
  `rekomendasi` int(11) NOT NULL,
  `turun_harga` int(11) NOT NULL,
  `urutan` int(100) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_attributes`
--

CREATE TABLE `prd_product_attributes` (
  `id` int(11) NOT NULL,
  `id_str` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `attribute` varchar(200) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `color` varchar(225) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_color`
--

CREATE TABLE `prd_product_color` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_color` varchar(200) NOT NULL,
  `label` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_description`
--

CREATE TABLE `prd_product_description` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_key` text NOT NULL,
  `note` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_image`
--

CREATE TABLE `prd_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `min_pembelian` int(11) NOT NULL,
  `type_potongan` int(11) NOT NULL,
  `potongan` int(11) NOT NULL,
  `aktif_dari` date NOT NULL,
  `aktif_sampai` date NOT NULL,
  `aktif` int(11) NOT NULL,
  `reusable` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `promo`
--

INSERT INTO `promo` (`id`, `nama`, `kode`, `min_pembelian`, `type_potongan`, `potongan`, `aktif_dari`, `aktif_sampai`, `aktif`, `reusable`) VALUES
(14, 'test voucher', 'code-123456789', 500000, 0, 50000, '2018-09-17', '2018-09-30', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo_list`
--

CREATE TABLE `promo_list` (
  `id` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `terpakai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `promo_list`
--

INSERT INTO `promo_list` (`id`, `promo_id`, `kode`, `terpakai`) VALUES
(1, 14, 'CODE-12345678993181C6790', 0),
(2, 14, 'CODE-123456789DDA806F7E2', 0),
(3, 14, 'CODE-123456789AE7B4B79BB', 0),
(4, 14, 'CODE-1234567897CE32D7CD7', 0),
(5, 14, 'CODE-123456789BEE1BCCFE8', 0),
(6, 14, 'CODE-1234567894601670650', 0),
(7, 14, 'CODE-123456789E2BAEA3685', 0),
(8, 14, 'CODE-12345678955B7D4037D', 0),
(9, 14, 'CODE-123456789AA3463C2A4', 0),
(10, 14, 'CODE-1234567898F3BAEA264', 0),
(11, 14, 'CODE-12345678914A13A85A4', 0),
(12, 14, 'CODE-1234567898113831FD1', 0),
(13, 14, 'CODE-123456789D836419029', 0),
(14, 14, 'CODE-123456789CFACF6AD68', 0),
(15, 14, 'CODE-123456789FCB58719A6', 0),
(16, 14, 'CODE-12345678961073AEF80', 0),
(17, 14, 'CODE-12345678994417CEF27', 0),
(18, 14, 'CODE-123456789B27D827C3B', 0),
(19, 14, 'CODE-12345678912CD5A1AC6', 0),
(20, 14, 'CODE-1234567894A1C32719B', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `label` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `hide` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `dual_language` enum('n','y') NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `name`, `label`, `value`, `type`, `hide`, `group`, `dual_language`, `sort`) VALUES
(1, 'default_meta_title', 'Title', 'de8ff9400cill-abouts.jpg', 'text', 0, 'default_meta', 'y', 1),
(2, 'default_meta_keywords', 'Keywords', '', 'textarea', 0, 'default_meta', 'y', 2),
(3, 'default_meta_description', 'Description', '', 'textarea', 0, 'default_meta', 'y', 3),
(4, 'google_tools_webmaster', 'Google Webmaster Code', '', 'textarea', 0, 'google_tools', 'n', 4),
(5, 'google_tools_analytic', 'Google Analytic Code', '', 'textarea', 0, 'google_tools', 'n', 5),
(6, 'purechat_status', 'Show Hide Widget', '', 'select', 0, 'purechat', 'n', 1),
(7, 'purechat_code', 'PureChat Code', '', 'textarea', 0, 'purechat', 'n', 1),
(8, 'invoice_start_number', 'Invoice Start Number', '1000', 'text', 0, 'invoice', 'n', 0),
(9, 'invoice_increment', 'Invoice Increment', '5', 'text', 0, 'invoice', 'n', 0),
(10, 'invoice_auto_cancel_after', 'Invoice Auto Cancel After', '72', 'text', 0, 'invoice', 'n', 0),
(11, 'lang_deff', 'Language Default', 'en', 'text', 0, 'data', 'n', 0),
(12, 'email', 'Email Form', 'info@driyarkara.ac.id', 'text', 0, 'data', 'n', 1),
(13, 'tax', 'Tax', '11', 'text', 0, 'data', 'n', 1),
(14, 'link_eks_perpustakaan', 'Link Eksternal Perpustakaan', 'http://perpustakaan.driyarkara.ac.id', 'text', 0, 'data', 'n', 0),
(15, 'link_eks_jurnaldis', 'Link Eksternal Jurnaldis', 'http://journal.driyarkara.ac.id', 'text', 0, 'data', 'n', 0),
(16, 'link_eks_publikasi', 'Link Eksternal Publikasi', 'http://publication.driyarkara.ac.id', 'text', 0, 'data', 'n', 0),
(17, 'link_eks_repositori', 'Link Eksternal Repositori', 'http://repositori.driyarkara.ac.id', 'text', 0, 'data', 'n', 0),
(18, 'link_eks_siadri', 'Link Eksternal Siadri', 'http://driyarkara.siakadcloud.com/', 'text', 0, 'data', 'n', 0),
(19, 'kalendar_hero_image', 'Image', '443db5aca0ill-abouts.jpg', 'image', 0, 'data', 'n', 0),
(20, 'kalendar_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(21, 'kalendar_title_code', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(22, 'kalendar_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(23, 'merk2_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(24, 'merk3_picture', 'Picture', '', 'image', 0, 'data', 'n', 0),
(25, 'merk3_sub_title', 'Content', '', 'text', 0, 'data', 'y', 0),
(26, 'merk3_sub_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(27, 'visi_hero_image', 'Image', 'a7c11776e8ill-abouts.jpg', 'image', 0, 'data', 'n', 0),
(28, 'visi_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(29, 'visi_title_code', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(30, 'visi_content', 'Visi Content', '', 'text', 0, 'data', 'y', 0),
(31, 'misi_content', 'Misi Content', '', 'text', 0, 'data', 'y', 0),
(32, 'sejarah_hero_image', 'Image', 'ca71602f26ill-abouts.jpg', 'image', 0, 'data', 'n', 0),
(33, 'sejarah_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(34, 'sejarah_title_code', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(35, 'sejarah_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(36, 'about_banner_middle', 'Image Banner', '', 'image', 0, 'data', 'n', 0),
(37, 'about_biografi_pict', 'Image Biografi', '', 'image', 0, 'data', 'n', 0),
(38, 'about_biografi_titles', 'Title Biografi', '', 'text', 0, 'data', 'y', 0),
(39, 'about_biografi_content', 'Content Biografi', '', 'text', 0, 'data', 'y', 0),
(40, 'sejarah_banner_middle', 'Image Banner', '6864d49b02tentangkami1.jpg', 'image', 0, 'data', 'n', 0),
(41, 'sejarah_biografi_pict', 'Image Biografi', 'd7252a4001tentangkami2.jpg', 'image', 0, 'data', 'n', 0),
(42, 'sejarah_biografi_titles', 'Title Biografi', '', 'text', 0, 'data', 'y', 0),
(43, 'sejarah_biografi_content', 'Content Biografi', '', 'text', 0, 'data', 'y', 0),
(44, 'administrasi_hero_image', 'Image', '', 'image', 0, 'data', 'n', 0),
(45, 'administrasi_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(46, 'administrasi_title_code', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(47, 'administrasi_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(48, 'fakta_hero_image', 'Image', '', 'image', 0, 'data', 'n', 0),
(49, 'fakta_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(50, 'fakta_title_code', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(51, 'fakta_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(52, 'contact_hero_image', 'Image', '', 'image', 0, 'data', 'n', 0),
(53, 'contact_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(54, 'contact_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(55, 'contact_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(56, 'contact_feature_image', 'Picture', '', 'image', 0, 'data', 'n', 0),
(57, 'contact_content2', 'Content', '', 'text', 0, 'data', 'y', 0),
(58, 'contact1_links_map', 'Googles Map', '', 'text', 0, 'data', 'n', 0),
(59, 'contact_phone', 'Phone', '+62 21 424-7129', 'text', 0, 'data', 'n', 0),
(60, 'contact_wa', 'Whatsapp', '+62 8111687838', 'text', 0, 'data', 'n', 0),
(61, 'url_facebook', 'URL Facebook', '', 'text', 0, 'data', 'n', 0),
(62, 'url_instagram', 'URL Instagram', '', 'text', 0, 'data', 'n', 0),
(63, 'contact_adress', 'Address Contact', 'Cempaka Putih Indah 100A\r\nJembatan Serong, Rawasari - Jakarta 10520, Indonesia', 'text', 0, 'data', 'n', 0),
(64, 'url_youtube', 'URL Youtube', '', 'text', 0, 'data', 'n', 0),
(65, 'sarjana_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(66, 'pascasarjana_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(67, 'url_linkedin', 'URL LinkedIn', '', 'text', 0, 'data', 'n', 0),
(72, 'eks_perpustakaan_content', 'Perpustakaan Content', '', 'text', 0, 'data', 'y', 0),
(73, 'eks_jurnaldis_content', 'Jurnal Content', '', 'text', 0, 'data', 'y', 0),
(74, 'eks_publikasi_content', 'Publikasi Content', '', 'text', 0, 'data', 'y', 0),
(75, 'eks_repositori_content', 'Repositori Content', '', 'text', 0, 'data', 'y', 0),
(76, 'email_extenion_teologi', 'Form Email Teologi', 'EC.STFD@gmail.com', 'text', 0, 'data', 'n', 0),
(77, 'file_upload_pdf', 'File PDF', '79e1bbaa9csample.pdf', 'image', 0, 'data', 'n', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_description`
--

CREATE TABLE `setting_description` (
  `id` int(11) NOT NULL,
  `setting_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_description`
--

INSERT INTO `setting_description` (`id`, `setting_id`, `language_id`, `value`) VALUES
(1, 33, 2, 'Tentang Kami ssss'),
(2, 34, 2, 'SEJARAH ssss'),
(3, 35, 2, '<h4>AWAL MULA DIDIRIKANNYA SEKOLAH TINGGI FILSAFAT DRIYARKARA</h4>Pada tanggal 2 Februari 1969 (tepat 2 tahun setelah Driyarkara meninggal), di sebuah ruang tamu di Susteran Theresia Jalan H Agus Salim, Jakarta, jejak perintisan Sekolah Tinggi Filsafat bernama Driyarkara dimulai. Proses pembidanan sebuah sekolah filsafat dilakukan bersama oleh rekan-rekan almarhum, yaitu Prof. Dr. Fuad Hassan, Prof. Dr. Slamet Iman Santosa yang mendambakan didirikannya sebuah institut filsafat di Indonesia yang terbuka untuk umum, berdiri sendiri, dan merupakan pusat yang mampu menarik dosen untuk lebih memantapkan usaha pengembangan filsafat di Jakarta. Inilah Dies Natalis pertama Sekolah Tinggi Filsafat Driyarkara di tahun 1969. Dipu­tuskan untuk menamakan lembaga baru ini “Sekolah Tinggi Filsafat \r\nDriyarkara” untuk meng­ungkapkan keterlibatannya pada cita-cita almarhum\r\n Prof. Driyarkara. '),
(4, 42, 2, 'Prof. Dr. N. Driyarkara, SJ'),
(5, 43, 2, 'Prof. Dr. Nicolaus Driyarkara SJ (born in Kedunggubah, Kaligesing, Purworejo, June 13, 1913 - died in Girisonta, Ungaran, Central Java, February 11, 1967 at the age of 53 years. Driyarkara\'s main teaching is \"humans are friends to others\". Humans are colleagues or friends for others in this world of sociality (homo homini socius) The homo homini socius mind is placed to criticize, correct, and improve the sociality of thugs; sociality that mutually, preys, and hates each other in homo homini lupus (fellow is a wolf to humans). Until 1951 Driyarkara\'s name was unknown, he spent most of his time studying intensively, the diary he wrote from January 1, 1941 until the early 1950s was never separated from the actual, pressing problems faced by humans, especially the people of Indonesia.\r\n\r\nThe early public works of his writings were not directly philosophical. His initial work was in the form of light notes in Javanese published by Praba magazine, a Javanese language weekly published in Yogyakarta. Followed later by Warung Podjok with the pseudonym Pak Nala. The publication of the Basis magazine in 1951 opened the opportunity for Driyarkara to introduce his ideas to the public. First with the name Labor, then with the full name Driyarkara. The way it is presented is conversation style, step by step, it takes the reader to philosophical reflection.'),
(6, 28, 2, 'Tentang Kami'),
(7, 29, 2, 'VISI & MISI'),
(8, 30, 2, '<p>Academic community, enlightenment, sharpener of conscience, driving action</p>'),
(9, 31, 2, '<ol><li>Develop Philosophy</li><li>Organizing excellent academic education in the field of philosophy in dialogue with other related sciences.</li><li>Being a center for developing thought that can be accounted for, oriented to universal human values, the ideals of the Indonesian people and open dialogue of faith and belief.</li><li>Immerse yourself in the intellectual, cultural and spiritual life of the nation.</li></ol>'),
(10, 45, 2, 'Tentang Kami'),
(11, 46, 2, 'ADMINISTRASI'),
(12, 47, 2, '<h3>YAYASAN STF DRIYARKARA</h3><table>\r\n<tbody>\r\n<tr>\r\n	<td class=\"caption\">Pembina\r\n	</td>\r\n	<td>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">Bapak Ignatius Kardinal Suharyo\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Sekretaris merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">P. Sunu Hardiyanta, S.J.</td>\r\n</tr>\r\n<tr>\r\n	<td>Bendahara merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">P. Mikael Peruhe, OFM\r\n	</td>\r\n</tr>\r\n</tbody>\r\n</table><table>\r\n<tbody>\r\n<tr>\r\n	<td class=\"caption\">Pengurus\r\n	</td>\r\n	<td>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">Andang L. Binawan, S.J.\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Sekretaris merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">Stefanus Suprobo, OFM\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Bendahara merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">Adrianus Steve Winarno<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Anggota\r\n	</td>\r\n	<td class=\"caption\">F. Saveria Sika Seda, Ph.D\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Anggota\r\n	</td>\r\n	<td class=\"caption\">St. Sularto</td>\r\n</tr>\r\n<tr>\r\n	<td><br>	</td>\r\n	<td class=\"caption\"><br>	</td>\r\n</tr>\r\n<tr>\r\n	<td><br></td>\r\n	<td class=\"caption\"><br></td>\r\n</tr>\r\n</tbody>\r\n</table><table>\r\n<tbody>\r\n<tr>\r\n	<td class=\"caption\">Pengawas\r\n	</td>\r\n	<td>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">S. Roy Djakarya</td>\r\n</tr>\r\n<tr>\r\n	<td>Anggota\r\n	</td>\r\n	<td class=\"caption\">A. Bimo Prakoso<br></td>\r\n</tr>\r\n<tr>\r\n	<td><br>	</td>\r\n	<td class=\"caption\"><br></td>\r\n</tr>\r\n</tbody>\r\n</table><h3>PIMPINAN STF DRIYARKARA</h3><table class=\"table2\">\r\n<tbody>\r\n<tr>\r\n	<td>Ketua\r\n	</td>\r\n	<td class=\"caption\">Thomas Hidya Tjaya, Ph.D.<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Wakil Ketua I\r\n	</td>\r\n	<td class=\"caption\">Dr. Vitus Rubianto S.\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Wakil Ketua II\r\n	</td>\r\n	<td class=\"caption\">A. Nugroho Widiyono, M.Hum\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Wakil Ketua III\r\n	</td>\r\n	<td class=\"caption\">Dr. Josef Ferry Susanto<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Sekretaris Senat\r\n	</td>\r\n	<td class=\"caption\">Dr. Vitus Rubianto S.\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Direktur Program Pasca Sarjana\r\n	</td>\r\n	<td class=\"caption\">Dr. Karlina Supelli</td>\r\n</tr>\r\n<tr>\r\n	<td>Sekretaris Program Pasca Sarjana\r\n	</td>\r\n	<td class=\"caption\">Dr. Andreas Atawolo<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua Program Doktor Ilmu Filsafat\r\n	</td>\r\n	<td class=\"caption\">Dr. Karlina Supelli<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua Program Magister Ilmu Filsafat\r\n	</td>\r\n	<td class=\"caption\">Dr. B. Herry-Priyono\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua Program Studi Ilmu Filsafat\r\n	</td>\r\n	<td class=\"caption\">Dr. Antonius Widyarsono<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Sekretaris Program Studi Ilmu Filsafat\r\n	</td>\r\n	<td class=\"caption\">Dr. Heribertus Dwi Kristanto<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua Program Studi Ilmu Teologi\r\n	</td>\r\n	<td class=\"caption\">Prof. Dr. A. Eddy Kristiyanto<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Sekretaris Program Studi Ilmu Teologi\r\n	</td>\r\n	<td class=\"caption\">Dr. Frans Sule<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Kepala Lembaga Penelitian dan Pengabdian Kepada Masyarakat</td>\r\n	<td class=\"caption\">Dr. Heribertus Dwi Kristanto<br></td>\r\n</tr>\r\n</tbody>\r\n</table><table>\r\n<tbody>\r\n<tr>\r\n	<td class=\"caption\"><br></td>\r\n	<td><br></td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua Penjaminan Mutu\r\n	</td>\r\n	<td class=\"caption\">Dr. Peter K. Aman<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua Panitia Penilai Angka Kredit\r\n	</td>\r\n	<td class=\"caption\">Prof. Dr. A. Eddy Kristiyanto\r\n	</td>\r\n</tr>\r\n</tbody>\r\n</table><h3>STRUKTUR ORGANISASI</h3><p>Struktur organisasi per September 2019 STF Driyarkara\r\n</p><p><img src=\"/images/static/87/susunan.jpg\">\r\n</p>'),
(13, 49, 2, 'Tentang Kami'),
(14, 50, 2, 'FAKTA & ANGKA'),
(15, 51, 2, '<h4>FAKTA STF DRIYARKARA</h4>\r\n<p>Duis sed tortor magna. Curabitur eget sem vel mi porta consectetur ac eu velit. Aliquam est lectus, rutrum ut porta eget, fringilla a orci. Vestibulum vitae massa sit amet ipsum commodo mollis. Aenean euismod dui a fringilla efficitur. Pellentesque turpis mi, finibus at ipsum at, volutpat cursus ipsum. Maecenas quis lacus sapien.\r\n</p>\r\n<p>Donec vulputate sapien accumsan, ultrices justo et, convallis felis. Duis luctus consectetur scelerisque. Phasellus malesuada purus eu augue sollicitudin faucibus. Sed in mattis nisl, quis vestibulum mauris. In leo tortor, viverra vitae fringilla ac, facilisis nec metus. Donec ut porta diam. Morbi sed neque non augue tempus ultricies eget at urna.\r\n</p>\r\n<p>Sed tempor dolor id ex vestibulum laoreet. Nulla vitae leo auctor, efficitur orci at, venenatis sem. Suspendisse ut accumsan nunc. Fusce iaculis nisi a lectus luctus, nec dignissim nisi lacinia. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent aliquet bibendum tempor. Cras in metus et ipsum posuere eleifend. Suspendisse vulputate consequat felis non rutrum. Praesent tempor vel est a tempus. Suspendisse at facilisis orci. Quisque a mattis diam. Proin vitae magna ultrices, lacinia est sit amet, accumsan mi.\r\n</p>'),
(16, 20, 2, 'Akademik'),
(17, 21, 2, 'KALENDAR AKADEMIK'),
(18, 22, 2, ''),
(19, 55, 2, 'You can contact us anytime with our online form. We will get back to you as soon as possible.'),
(20, 65, 2, '<h5>Persyaratan Masuk</h5><ul>\r\n                        <li>Lulus tes masuk dengan materi ujian: KECERDASAN BERPIKIR; BAHASA INGGRIS; BAHASA INDONESIA; ILMU \r\n                            PENGETAHUAN SOSIAL; WAWANCARA</li>\r\n                        <li>Memenuhi persyaratan administrasi yang ditentukan oleh Sekretariat Sekolah Tinggi Filsafat Driyarkara </li>\r\n                    </ul><h5>Persyaratan Daftar</h5><ul>\r\n                        <li>Mengisi formulir pendaftaran (Rp. 500.000,-)</li>\r\n                        <li>Fotocopy ijasah terakhir yang dilegalisasi</li>\r\n                        <li>Pasfoto hitam-putih 4x6 dan 2x3 (masing-masing 3 lbr)</li>\r\n                        <li>Fotocopy KTP dan atau Surat Tanda Lapor Diri</li>\r\n                        <li>Kartu Keluarga (KK)</li>\r\n                    </ul><h5>Informasi Lebih Lanjut</h5><p>Telp. +62 21 424-7129</p><p>Email. info@driyarkara.ac.id</p>'),
(21, 65, 3, '<h5>Persyaratan Masuk</h5><ul>\r\n                        <li>Lulus tes masuk dengan materi ujian: KECERDASAN BERPIKIR; BAHASA INGGRIS; BAHASA INDONESIA; ILMU \r\n                            PENGETAHUAN SOSIAL; WAWANCARA</li>\r\n                        <li>Memenuhi persyaratan administrasi yang ditentukan oleh Sekretariat Sekolah Tinggi Filsafat Driyarkara</li>\r\n                    </ul><h5>Persyaratan Daftar</h5><ul>\r\n                        <li>Mengisi formulir pendaftaran (Rp. 500.000,-)</li>\r\n                        <li>Fotocopy ijasah terakhir yang dilegalisasi</li>\r\n                        <li>Pasfoto hitam-putih 4x6 dan 2x3 (masing-masing 3 lbr)</li>\r\n                        <li>Fotocopy KTP dan atau Surat Tanda Lapor Diri</li>\r\n                        <li>Kartu Keluarga (KK)</li>\r\n                    </ul><h5>Informasi Lebih Lanjut</h5><p>Telp. +62 21 424-7129</p><p>Email. info@driyarkara.ac.id</p>'),
(22, 66, 2, '<h5>Persyaratan Masuk</h5><ul>\r\n                        <li>Lulus tes masuk dengan materi ujian: KECERDASAN BERPIKIR; BAHASA INGGRIS; BAHASA INDONESIA; ILMU \r\n                            PENGETAHUAN SOSIAL; WAWANCARA</li>\r\n                        <li>Memenuhi persyaratan administrasi yang ditentukan oleh Sekretariat Sekolah Tinggi Filsafat Driyarkara </li>\r\n                    </ul><h5>Persyaratan Daftar</h5><ul>\r\n                        <li>Mengisi formulir pendaftaran (Rp. 500.000,-)</li>\r\n                        <li>Fotocopy ijasah terakhir yang dilegalisasi</li>\r\n                        <li>Pasfoto hitam-putih 4x6 dan 2x3 (masing-masing 3 lbr)</li>\r\n                        <li>Fotocopy KTP dan atau Surat Tanda Lapor Diri</li>\r\n                        <li>Kartu Keluarga (KK)</li>\r\n                    </ul><h5>Informasi Lebih Lanjut</h5><p>Telp : +62 21 424-7129</p><p>Email : info@driyarkara.ac.id</p>'),
(23, 66, 3, '<h5>Persyaratan Masuk</h5><ul>\r\n                        <li>Lulus tes masuk dengan materi ujian: KECERDASAN BERPIKIR; BAHASA INGGRIS; BAHASA INDONESIA; ILMU \r\n                            PENGETAHUAN SOSIAL; WAWANCARA</li>\r\n                        <li>Memenuhi persyaratan administrasi yang ditentukan oleh Sekretariat Sekolah Tinggi Filsafat Driyarkara</li>\r\n                    </ul><h5>Persyaratan Daftar</h5><ul>\r\n                        <li>Mengisi formulir pendaftaran (Rp. 500.000,-)</li>\r\n                        <li>Fotocopy ijasah terakhir yang dilegalisasi</li>\r\n                        <li>Pasfoto hitam-putih 4x6 dan 2x3 (masing-masing 3 lbr)</li>\r\n                        <li>Fotocopy KTP dan atau Surat Tanda Lapor Diri</li>\r\n                        <li>Kartu Keluarga (KK)</li>\r\n                    </ul><h5>Informasi Lebih Lanjut</h5><p>Telp. +62 21 424-7129</p><p>Email. info@driyarkara.ac.id</p>'),
(24, 55, 3, 'Silakan menghubungi kami dengan formulir online. Kami akan menghubungi Anda sesegera mungkin.'),
(25, 33, 3, 'Tentang Kami ssssi'),
(26, 34, 3, 'SEJARAH ssssi'),
(27, 35, 3, '<h4>AWAL MULA DIDIRIKANNYA SEKOLAH TINGGI FILSAFAT DRIYARKARA</h4>Pada tanggal 2 Februari 1969 (tepat 2 tahun setelah Driyarkara meninggal), di sebuah ruang tamu di Susteran Theresia Jalan H Agus Salim, Jakarta, jejak perintisan Sekolah Tinggi Filsafat bernama Driyarkara dimulai. Proses pembidanan sebuah sekolah filsafat dilakukan bersama oleh rekan-rekan almarhum, yaitu Prof. Dr. Fuad Hassan, Prof. Dr. Slamet Iman Santosa yang mendambakan didirikannya sebuah institut filsafat di Indonesia yang terbuka untuk umum, berdiri sendiri, dan merupakan pusat yang mampu menarik dosen untuk lebih memantapkan usaha pengembangan filsafat di Jakarta. Inilah Dies Natalis pertama Sekolah Tinggi Filsafat Driyarkara di tahun 1969. Dipu­tuskan untuk menamakan lembaga baru ini “Sekolah Tinggi Filsafat \r\nDriyarkara” untuk meng­ungkapkan keterlibatannya pada cita-cita almarhum\r\n Prof. Driyarkara. '),
(28, 42, 3, 'Prof. Dr. N. Driyarkara, SJ.'),
(29, 43, 3, 'Prof. Dr. Nicolaus Driyarkara SJ (lahir di Kedunggubah, Kaligesing, Purworejo, 13 Juni 1913 – meninggal di Girisonta, Ungaran, Jawa Tengah, 11 Februari 1967 pada umur 53 tahun. Ajaran pokok Driyarkara yaitu \"manusia adalah kawan bagi sesama\". Manusia adalah rekan atau teman bagi sesamanya di dunia sosialitas ini (homo homini socius). Pikiran homo homini socius ini ditaruh untuk mengkritik, mengoreksi, dan memperbaiki sosialitas preman; sosialitas yang saling mengerkah, memangsa, dan saling membenci dalam homo homini lupus (sesama adalah serigala bagi manusia). Sampai tahun 1951 nama Driyarkara tidak dikenal. Hampir seluruh waktunya dia gunakan untuk studi secara intensif. Catatan harian yang ditulisnya sejak 1 Januari 1941 sampai awal tahun 1950 tidak pernah lepas dari persoalan aktual-mendesak yang dihadapi manusia, khususnya rakyat Indonesia.\r\n\r\nKarya publik awal tulisannya tidak langsung filosofis. Karya awalnya berupa catatan ringan dalam bahasa Jawa yang dimuat majalah Praba, sebuah mingguan berbahasa Jawa yang terbit di Yogyakarta. Disusul kemudian dengan Warung Podjok dengan nama samaran Pak Nala. Terbitnya majalah Basis tahun 1951 membuka peluang Driyarkara memperkenalkan ide-idenya ke masyarakat. Mulanya dengan nama Puruhita, kemudian dengan nama lengkap Driyarkara. Cara penyajiannya bergaya percakapan, setapak demi setapak membawa pembaca ke permenungan filosofis.'),
(30, 30, 3, '<p>Komunitas akademik, pencerah budi, pengasah nurani, penggerak aksi<br></p>'),
(31, 31, 3, '<ol><li>Mengembangkan ilmu filsafat</li><li>Menyelenggarakan pendidikan akademik yang unggul di bidang filsafat dalam dialog dengan ilmu-ilmu lain yang terkait.</li><li>Menjadi pusat pengembangan pemikiran yang dapat dipertanggungjawabkan, berorientasi pada nilai kemanusiaan universal,cita-cita bangsa Indonesia serta dialog iman dan keyakinan yang terbuka.</li><li>Melibatkan diri dalam kehidupan intelektual, kultural dan spiritual bangsa.</li></ol>'),
(32, 47, 3, '<h3>YAYASAN STF DRIYARKARA</h3><table>\r\n<tbody>\r\n<tr>\r\n	<td class=\"caption\">Pembina\r\n	</td>\r\n	<td>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">Bapak Ignatius Kardinal Suharyo\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Sekretaris merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">P. Sunu Hardiyanta, S.J.</td>\r\n</tr>\r\n<tr>\r\n	<td>Bendahara merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">P. Mikael Peruhe, OFM\r\n	</td>\r\n</tr>\r\n</tbody>\r\n</table><table>\r\n<tbody>\r\n<tr>\r\n	<td class=\"caption\">Pengurus\r\n	</td>\r\n	<td>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">Andang L. Binawan, S.J.\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Sekretaris merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">Stefanus Suprobo, OFM\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Bendahara merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">Adrianus Steve Winarno</td>\r\n</tr>\r\n<tr>\r\n	<td>Anggota\r\n	</td>\r\n	<td class=\"caption\">F. Saveria Sika Seda, Ph.D\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Anggota\r\n	</td>\r\n	<td class=\"caption\">St. Sularto<br></td>\r\n</tr>\r\n<tr>\r\n	<td><br></td>\r\n	<td class=\"caption\"><br></td>\r\n</tr>\r\n<tr>\r\n	<td><br></td>\r\n	<td class=\"caption\"><br></td>\r\n</tr>\r\n</tbody>\r\n</table><table>\r\n<tbody>\r\n<tr>\r\n	<td class=\"caption\">Pengawas\r\n	</td>\r\n	<td>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua merangkap Anggota\r\n	</td>\r\n	<td class=\"caption\">S. Roy Djakarya</td>\r\n</tr>\r\n<tr>\r\n	<td>Anggota\r\n	</td>\r\n	<td class=\"caption\">A. Bimo Prakoso<br></td>\r\n</tr>\r\n<tr>\r\n	<td><br></td>\r\n	<td class=\"caption\"><br></td>\r\n</tr>\r\n</tbody>\r\n</table><h3>PIMPINAN STF DRIYARKARA</h3><table class=\"table2\">\r\n<tbody>\r\n<tr>\r\n	<td>Ketua\r\n	</td>\r\n	<td class=\"caption\">Thomas Hidya Tjaya, Ph.D.<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Wakil Ketua I\r\n	</td>\r\n	<td class=\"caption\">Dr. Vitus Rubianto S.\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Wakil Ketua II\r\n	</td>\r\n	<td class=\"caption\">A. Nugroho Widiyono, M.Hum\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Wakil Ketua III\r\n	</td>\r\n	<td class=\"caption\">Dr. Josef Ferry Susanto<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Sekretaris Senat\r\n	</td>\r\n	<td class=\"caption\">Dr. Vitus Rubianto S.\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Direktur Program Pasca Sarjana\r\n	</td>\r\n	<td class=\"caption\">Dr. Karlina Supelli</td>\r\n</tr>\r\n<tr>\r\n	<td>Sekretaris Program Pasca Sarjana\r\n	</td>\r\n	<td class=\"caption\">Dr. Andreas Atawolo<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua Program Doktor Ilmu Filsafat\r\n	</td>\r\n	<td class=\"caption\">Dr. Karlina Supelli</td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua Program Magister Ilmu Filsafat\r\n	</td>\r\n	<td class=\"caption\">Dr. B. Herry-Priyono\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua Program Studi Ilmu Filsafat\r\n	</td>\r\n	<td class=\"caption\">Dr. Antonius Widyarsono<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Sekretaris Program Studi Ilmu Filsafat\r\n	</td>\r\n	<td class=\"caption\">Dr. Heribertus Dwi Kristanto<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua Program Studi Ilmu Teologi\r\n	</td>\r\n	<td class=\"caption\">Prof. Dr. A. Eddy Kristiyanto<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Sekretaris Program Studi Ilmu Teologi\r\n	</td>\r\n	<td class=\"caption\">Dr. Frans Sule<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Kepala Lembaga Penelitian dan Pengabdian Kepada Masyarakat</td>\r\n	<td class=\"caption\">Dr. Heribertus Dwi Kristanto<br></td>\r\n</tr>\r\n</tbody>\r\n</table><table>\r\n<tbody>\r\n<tr>\r\n	<td class=\"caption\"><br></td>\r\n	<td>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua Penjaminan Mutu\r\n	</td>\r\n	<td class=\"caption\">Dr. Peter K. Aman<br></td>\r\n</tr>\r\n<tr>\r\n	<td>Ketua Panitia Penilai Angka Kredit\r\n	</td>\r\n	<td class=\"caption\">Prof. Dr. A. Eddy Kristiyanto\r\n	</td>\r\n</tr>\r\n</tbody>\r\n</table><h3>STRUKTUR ORGANISASI</h3><p>Struktur organisasi per September 2019 STF Driyarkara\r\n</p><p><img src=\"/images/static/87/susunan.jpg\">\r\n</p>'),
(33, 51, 3, '<h4>FAKTA STF DRIYARKARA</h4>\r\n<p>Duis sed tortor magna. Curabitur eget sem vel mi porta consectetur ac eu velit. Aliquam est lectus, rutrum ut porta eget, fringilla a orci. Vestibulum vitae massa sit amet ipsum commodo mollis. Aenean euismod dui a fringilla efficitur. Pellentesque turpis mi, finibus at ipsum at, volutpat cursus ipsum. Maecenas quis lacus sapien.\r\n</p>\r\n<p>Donec vulputate sapien accumsan, ultrices justo et, convallis felis. Duis luctus consectetur scelerisque. Phasellus malesuada purus eu augue sollicitudin faucibus. Sed in mattis nisl, quis vestibulum mauris. In leo tortor, viverra vitae fringilla ac, facilisis nec metus. Donec ut porta diam. Morbi sed neque non augue tempus ultricies eget at urna.\r\n</p>\r\n<p>Sed tempor dolor id ex vestibulum laoreet. Nulla vitae leo auctor, efficitur orci at, venenatis sem. Suspendisse ut accumsan nunc. Fusce iaculis nisi a lectus luctus, nec dignissim nisi lacinia. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent aliquet bibendum tempor. Cras in metus et ipsum posuere eleifend. Suspendisse vulputate consequat felis non rutrum. Praesent tempor vel est a tempus. Suspendisse at facilisis orci. Quisque a mattis diam. Proin vitae magna ultrices, lacinia est sit amet, accumsan mi.\r\n</p>'),
(34, 22, 3, '<p><del></del>\r\n</p>'),
(35, 72, 2, '<p>Perpustakaan STF Driyarkara memiliki buku-buku dalam bidang filsafat, teologi dan ilmu-ilmu kemanusiaan. Jumlah total buku yang ada di perpustakaan STF hingga tanggal 30 Juni 2019 adalah sebanyak 56.912 buku (51.092 <i>judul </i>buku). Apabila prosiding (119), skripsi (1.439), tesis (128) dan disertasi (39) turut dihitung, jumlah keseluruhan menjadi 58.637 item. <span class=\"redactor-invisible-space\">Selain itu, telah diinput 91.669 artikel berbagai jurnal ilmiah dan \r\n\r\n23.610 esai\r\ndari 1.428 judul buku (298 judul essai Indonesia dan 1130 judul esai Inggris).<br></span></p><p><span class=\"redactor-invisible-space\"></span></p>'),
(36, 72, 3, '<p>Perpustakaan STF Driyarkara memiliki buku-buku dalam bidang filsafat, \r\nteologi dan ilmu-ilmu kemanusiaan. Jumlah total buku yang ada di \r\nperpustakaan STF hingga tanggal 30 Juni 2019 adalah sebanyak 56.912 buku\r\n (51.092 <i>judul </i>buku). Apabila prosiding \r\n(119), skripsi (1.439), tesis (128) dan disertasi (39) turut dihitung, \r\njumlah keseluruhan menjadi 58.637 item. <span class=\"redactor-invisible-space\">Selain itu, telah diinput 91.669 artikel berbagai jurnal ilmiah dan \r\n\r\n23.610 esai\r\ndari 1.428 judul buku (298 judul essai Indonesia dan 1130 judul esai Inggris).</span></p>'),
(37, 73, 2, '<p>DISKURSUS adalah jurnal ilmiah filsafat dan teologi, serta ilmu \r\npengetahuan yang berhubungan dengan kedua ilmu tersebut. DISKURSUS \r\nbertujuan untuk memberikan dan menyampaikan sumbangan pemikiran \r\nfilosofis dan teologis yang otentik, analitis dan kritis kepada kalangan\r\n akademisi serta pembelajar yang berminat pada ilmu filsafat dan ilmu \r\nteologi.</p><p>DISKURSUS diterbitkan oleh Sekolah Tinggi Filsafat Driyarkara, \r\nJakarta, yang terdaftar sebagai terbitan berkala ilmiah dengan nomor \r\np-ISSN 1412-3878 dan e-ISSN 2580-1686. DISKURSUS terbit dua kali setahun\r\n (April dan Oktober) dan hanya menerbitkan artikel yang berupa hasil \r\nrefleksi, penelitian atau kajian analitis-kritis dalam bidang filsafat \r\ndan teologi, serta ilmu-ilmu terkait, antara lain bahasa, sosiologi, \r\nseni dan budaya, antropologi, yang ditulis dalam bahasa Indonesia atau \r\nbahasa Inggris dan belum pernah diterbitkan di media lain.</p>'),
(38, 73, 3, '<p>DISKURSUS adalah jurnal ilmiah filsafat dan teologi, serta ilmu \r\npengetahuan yang berhubungan dengan kedua ilmu tersebut. DISKURSUS \r\nbertujuan untuk memberikan dan menyampaikan sumbangan pemikiran \r\nfilosofis dan teologis yang otentik, analitis dan kritis kepada kalangan\r\n akademisi serta pembelajar yang berminat pada ilmu filsafat dan ilmu \r\nteologi.</p><p>DISKURSUS diterbitkan oleh Sekolah Tinggi Filsafat Driyarkara, \r\nJakarta, yang terdaftar sebagai terbitan berkala ilmiah dengan nomor \r\np-ISSN 1412-3878 dan e-ISSN 2580-1686. DISKURSUS terbit dua kali setahun\r\n (April dan Oktober) dan hanya menerbitkan artikel yang berupa hasil \r\nrefleksi, penelitian atau kajian analitis-kritis dalam bidang filsafat \r\ndan teologi, serta ilmu-ilmu terkait, antara lain bahasa, sosiologi, \r\nseni dan budaya, antropologi, yang ditulis dalam bahasa Indonesia atau \r\nbahasa Inggris dan belum pernah diterbitkan di media lain.</p>'),
(39, 74, 2, ''),
(40, 74, 3, ''),
(41, 75, 2, ''),
(42, 75, 3, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shp_shipping_price`
--

CREATE TABLE `shp_shipping_price` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shp_shipping_price`
--

INSERT INTO `shp_shipping_price` (`id`, `type`, `weight`, `price`) VALUES
(1, 1, 1, '20.0000'),
(2, 1, 2, '20.0000'),
(3, 1, 0, '20.0000'),
(4, 1, 3, '20.0000'),
(5, 1, 4, '20.0000'),
(6, 1, 5, '20.0000'),
(7, 1, 6, '20.0000'),
(8, 1, 7, '20.0000'),
(9, 1, 8, '20.0000'),
(10, 1, 9, '20.0000'),
(11, 1, 10, '20.0000'),
(12, 1, 11, '20.0000'),
(13, 1, 12, '20.0000'),
(14, 1, 13, '20.0000'),
(15, 1, 14, '20.0000'),
(16, 1, 15, '20.0000'),
(17, 1, 16, '20.0000'),
(18, 1, 17, '20.0000'),
(19, 1, 18, '20.0000'),
(20, 1, 19, '20.0000'),
(21, 1, 20, '40.0000'),
(22, 1, 21, '40.0000'),
(23, 1, 22, '40.0000'),
(24, 1, 23, '40.0000'),
(25, 1, 24, '40.0000'),
(26, 1, 25, '40.0000'),
(27, 1, 26, '40.0000'),
(28, 1, 27, '40.0000'),
(29, 1, 28, '40.0000'),
(30, 1, 29, '40.0000'),
(31, 1, 30, '40.0000'),
(32, 1, 31, '40.0000'),
(33, 1, 32, '40.0000'),
(34, 1, 33, '40.0000'),
(35, 1, 34, '40.0000'),
(36, 1, 35, '40.0000'),
(37, 1, 36, '40.0000'),
(38, 1, 37, '40.0000'),
(39, 1, 38, '40.0000'),
(40, 1, 39, '40.0000'),
(41, 1, 40, '60.0000'),
(42, 1, 41, '60.0000'),
(43, 1, 42, '60.0000'),
(44, 1, 43, '60.0000'),
(45, 1, 44, '60.0000'),
(46, 1, 45, '60.0000'),
(47, 1, 46, '60.0000'),
(48, 1, 47, '60.0000'),
(49, 1, 48, '60.0000'),
(50, 1, 49, '60.0000'),
(51, 1, 50, '60.0000'),
(52, 1, 51, '60.0000'),
(53, 1, 52, '60.0000'),
(54, 1, 53, '60.0000'),
(55, 1, 54, '60.0000'),
(56, 1, 55, '60.0000'),
(57, 1, 56, '60.0000'),
(58, 1, 57, '60.0000'),
(59, 1, 58, '60.0000'),
(60, 1, 59, '60.0000'),
(61, 1, 60, '80.0000'),
(62, 1, 61, '80.0000'),
(63, 1, 62, '80.0000'),
(64, 1, 63, '80.0000'),
(65, 1, 64, '80.0000'),
(66, 1, 65, '80.0000'),
(67, 1, 66, '80.0000'),
(68, 1, 67, '80.0000'),
(69, 1, 68, '80.0000'),
(70, 1, 69, '80.0000'),
(71, 1, 70, '80.0000'),
(72, 1, 71, '80.0000'),
(73, 1, 72, '80.0000'),
(74, 1, 73, '80.0000'),
(75, 1, 74, '80.0000'),
(76, 1, 75, '80.0000'),
(77, 1, 76, '80.0000'),
(78, 1, 77, '80.0000'),
(79, 1, 78, '80.0000'),
(80, 1, 79, '80.0000'),
(81, 1, 80, '100.0000'),
(82, 1, 81, '100.0000'),
(83, 1, 82, '100.0000'),
(84, 1, 83, '100.0000'),
(85, 1, 84, '100.0000'),
(86, 1, 85, '100.0000'),
(87, 1, 86, '100.0000'),
(88, 1, 87, '100.0000'),
(89, 1, 88, '100.0000'),
(90, 1, 89, '100.0000'),
(91, 1, 90, '100.0000'),
(92, 1, 91, '100.0000'),
(93, 1, 92, '100.0000'),
(94, 1, 93, '100.0000'),
(95, 1, 94, '100.0000'),
(96, 1, 95, '100.0000'),
(97, 1, 96, '100.0000'),
(98, 1, 97, '100.0000'),
(99, 1, 98, '100.0000'),
(100, 1, 99, '100.0000'),
(101, 2, 0, '12.0000'),
(102, 2, 1, '12.0000'),
(103, 2, 2, '12.0000'),
(104, 2, 3, '12.0000'),
(105, 2, 4, '12.0000'),
(106, 2, 5, '12.0000'),
(107, 2, 6, '12.0000'),
(108, 2, 7, '12.0000'),
(109, 2, 8, '12.0000'),
(110, 2, 9, '12.0000'),
(111, 2, 10, '12.0000'),
(112, 2, 11, '12.0000'),
(113, 2, 12, '12.0000'),
(114, 2, 13, '12.0000'),
(115, 2, 14, '12.0000'),
(116, 2, 15, '12.0000'),
(117, 2, 16, '12.0000'),
(118, 2, 17, '12.0000'),
(119, 2, 18, '12.0000'),
(120, 2, 19, '12.0000'),
(121, 2, 20, '24.0000'),
(122, 2, 21, '24.0000'),
(123, 2, 22, '24.0000'),
(124, 2, 23, '24.0000'),
(125, 2, 24, '24.0000'),
(126, 2, 25, '24.0000'),
(127, 2, 26, '24.0000'),
(128, 2, 27, '24.0000'),
(129, 2, 28, '24.0000'),
(130, 2, 29, '24.0000'),
(131, 2, 30, '24.0000'),
(132, 2, 31, '24.0000'),
(133, 2, 32, '24.0000'),
(134, 2, 33, '24.0000'),
(135, 2, 34, '24.0000'),
(136, 2, 35, '24.0000'),
(137, 2, 36, '24.0000'),
(138, 2, 37, '24.0000'),
(139, 2, 38, '24.0000'),
(140, 2, 39, '24.0000'),
(141, 2, 40, '48.0000'),
(142, 2, 41, '48.0000'),
(143, 2, 42, '48.0000'),
(144, 2, 43, '48.0000'),
(145, 2, 44, '48.0000'),
(146, 2, 45, '48.0000'),
(147, 2, 46, '48.0000'),
(148, 2, 47, '48.0000'),
(149, 2, 48, '48.0000'),
(150, 2, 49, '48.0000'),
(151, 2, 50, '48.0000'),
(152, 2, 51, '48.0000'),
(153, 2, 52, '48.0000'),
(154, 2, 53, '48.0000'),
(155, 2, 54, '48.0000'),
(156, 2, 55, '48.0000'),
(157, 2, 56, '48.0000'),
(158, 2, 57, '48.0000'),
(159, 2, 58, '48.0000'),
(160, 2, 59, '48.0000'),
(161, 2, 60, '60.0000'),
(162, 2, 61, '60.0000'),
(163, 2, 62, '60.0000'),
(164, 2, 63, '60.0000'),
(165, 2, 64, '60.0000'),
(166, 2, 65, '60.0000'),
(167, 2, 66, '60.0000'),
(168, 2, 67, '60.0000'),
(169, 2, 68, '60.0000'),
(170, 2, 69, '60.0000'),
(171, 2, 70, '60.0000'),
(172, 2, 71, '60.0000'),
(173, 2, 72, '60.0000'),
(174, 2, 73, '60.0000'),
(175, 2, 74, '60.0000'),
(176, 2, 75, '60.0000'),
(177, 2, 76, '60.0000'),
(178, 2, 77, '60.0000'),
(179, 2, 78, '60.0000'),
(180, 2, 79, '60.0000'),
(181, 2, 80, '72.0000'),
(182, 2, 81, '72.0000'),
(183, 2, 82, '72.0000'),
(184, 2, 83, '72.0000'),
(185, 2, 84, '72.0000'),
(186, 2, 85, '72.0000'),
(187, 2, 86, '72.0000'),
(188, 2, 87, '72.0000'),
(189, 2, 88, '72.0000'),
(190, 2, 89, '72.0000'),
(191, 2, 90, '72.0000'),
(192, 2, 91, '72.0000'),
(193, 2, 92, '72.0000'),
(194, 2, 93, '72.0000'),
(195, 2, 94, '72.0000'),
(196, 2, 95, '72.0000'),
(197, 2, 96, '72.0000'),
(198, 2, 97, '72.0000'),
(199, 2, 98, '72.0000'),
(200, 2, 99, '72.0000'),
(201, 3, 0, '25.0000'),
(202, 3, 1, '25.0000'),
(203, 3, 2, '25.0000'),
(204, 3, 3, '25.0000'),
(205, 3, 4, '25.0000'),
(206, 3, 5, '25.0000'),
(207, 3, 6, '25.0000'),
(208, 3, 7, '25.0000'),
(209, 3, 8, '25.0000'),
(210, 3, 9, '25.0000'),
(211, 3, 10, '25.0000'),
(212, 3, 11, '25.0000'),
(213, 3, 12, '25.0000'),
(214, 3, 13, '25.0000'),
(215, 3, 14, '25.0000'),
(216, 3, 15, '25.0000'),
(217, 3, 16, '25.0000'),
(218, 3, 17, '25.0000'),
(219, 3, 18, '25.0000'),
(220, 3, 19, '25.0000'),
(221, 3, 20, '50.0000'),
(222, 3, 21, '50.0000'),
(223, 3, 22, '50.0000'),
(224, 3, 23, '50.0000'),
(225, 3, 24, '50.0000'),
(226, 3, 25, '50.0000'),
(227, 3, 26, '50.0000'),
(228, 3, 27, '50.0000'),
(229, 3, 28, '50.0000'),
(230, 3, 29, '50.0000'),
(231, 3, 30, '50.0000'),
(232, 3, 31, '50.0000'),
(233, 3, 32, '50.0000'),
(234, 3, 33, '50.0000'),
(235, 3, 34, '50.0000'),
(236, 3, 35, '50.0000'),
(237, 3, 36, '50.0000'),
(238, 3, 37, '50.0000'),
(239, 3, 38, '50.0000'),
(240, 3, 39, '50.0000'),
(241, 3, 40, '75.0000'),
(242, 3, 41, '75.0000'),
(243, 3, 42, '75.0000'),
(244, 3, 43, '75.0000'),
(245, 3, 44, '75.0000'),
(246, 3, 45, '75.0000'),
(247, 3, 46, '75.0000'),
(248, 3, 47, '75.0000'),
(249, 3, 48, '75.0000'),
(250, 3, 49, '75.0000'),
(251, 3, 50, '75.0000'),
(252, 3, 51, '75.0000'),
(253, 3, 52, '75.0000'),
(254, 3, 53, '75.0000'),
(255, 3, 54, '75.0000'),
(256, 3, 55, '75.0000'),
(257, 3, 56, '75.0000'),
(258, 3, 57, '75.0000'),
(259, 3, 58, '75.0000'),
(260, 3, 59, '75.0000'),
(261, 3, 60, '100.0000'),
(262, 3, 61, '100.0000'),
(263, 3, 62, '100.0000'),
(264, 3, 63, '100.0000'),
(265, 3, 64, '100.0000'),
(266, 3, 65, '100.0000'),
(267, 3, 66, '100.0000'),
(268, 3, 67, '100.0000'),
(269, 3, 68, '100.0000'),
(270, 3, 69, '100.0000'),
(271, 3, 70, '100.0000'),
(272, 3, 71, '100.0000'),
(273, 3, 72, '100.0000'),
(274, 3, 73, '100.0000'),
(275, 3, 74, '100.0000'),
(276, 3, 75, '100.0000'),
(277, 3, 76, '100.0000'),
(278, 3, 77, '100.0000'),
(279, 3, 78, '100.0000'),
(280, 3, 79, '100.0000'),
(281, 3, 80, '125.0000'),
(282, 3, 81, '125.0000'),
(283, 3, 82, '125.0000'),
(284, 3, 83, '125.0000'),
(285, 3, 84, '125.0000'),
(286, 3, 85, '125.0000'),
(287, 3, 86, '125.0000'),
(288, 3, 87, '125.0000'),
(289, 3, 88, '125.0000'),
(290, 3, 89, '125.0000'),
(291, 3, 90, '125.0000'),
(292, 3, 91, '125.0000'),
(293, 3, 92, '125.0000'),
(294, 3, 93, '125.0000'),
(295, 3, 94, '125.0000'),
(296, 3, 95, '125.0000'),
(297, 3, 96, '125.0000'),
(298, 3, 97, '125.0000'),
(299, 3, 98, '125.0000'),
(300, 3, 99, '125.0000'),
(301, 4, 1, '29.0000'),
(302, 4, 2, '29.0000'),
(303, 4, 0, '29.0000'),
(304, 4, 3, '29.0000'),
(305, 4, 4, '29.0000'),
(306, 4, 5, '29.0000'),
(307, 4, 6, '29.0000'),
(308, 4, 7, '29.0000'),
(309, 4, 8, '29.0000'),
(310, 4, 9, '29.0000'),
(311, 4, 10, '29.0000'),
(312, 4, 11, '29.0000'),
(313, 4, 12, '29.0000'),
(314, 4, 13, '29.0000'),
(315, 4, 14, '29.0000'),
(316, 4, 15, '29.0000'),
(317, 4, 16, '29.0000'),
(318, 4, 17, '29.0000'),
(319, 4, 18, '29.0000'),
(320, 4, 19, '29.0000'),
(321, 4, 20, '58.0000'),
(322, 4, 21, '58.0000'),
(323, 4, 22, '58.0000'),
(324, 4, 23, '58.0000'),
(325, 4, 24, '58.0000'),
(326, 4, 25, '58.0000'),
(327, 4, 26, '58.0000'),
(328, 4, 27, '58.0000'),
(329, 4, 28, '58.0000'),
(330, 4, 29, '58.0000'),
(331, 4, 30, '58.0000'),
(332, 4, 31, '58.0000'),
(333, 4, 32, '58.0000'),
(334, 4, 33, '58.0000'),
(335, 4, 34, '58.0000'),
(336, 4, 35, '58.0000'),
(337, 4, 36, '58.0000'),
(338, 4, 37, '58.0000'),
(339, 4, 38, '58.0000'),
(340, 4, 39, '58.0000'),
(341, 4, 40, '87.0000'),
(342, 4, 41, '87.0000'),
(343, 4, 42, '87.0000'),
(344, 4, 43, '87.0000'),
(345, 4, 44, '87.0000'),
(346, 4, 45, '87.0000'),
(347, 4, 46, '87.0000'),
(348, 4, 47, '87.0000'),
(349, 4, 48, '87.0000'),
(350, 4, 49, '87.0000'),
(351, 4, 50, '87.0000'),
(352, 4, 51, '87.0000'),
(353, 4, 52, '87.0000'),
(354, 4, 53, '87.0000'),
(355, 4, 54, '87.0000'),
(356, 4, 55, '87.0000'),
(357, 4, 56, '87.0000'),
(358, 4, 57, '87.0000'),
(359, 4, 58, '87.0000'),
(360, 4, 59, '87.0000'),
(361, 4, 60, '116.0000'),
(362, 4, 61, '116.0000'),
(363, 4, 62, '116.0000'),
(364, 4, 63, '116.0000'),
(365, 4, 64, '116.0000'),
(366, 4, 65, '116.0000'),
(367, 4, 66, '116.0000'),
(368, 4, 67, '116.0000'),
(369, 4, 68, '116.0000'),
(370, 4, 69, '116.0000'),
(371, 4, 70, '116.0000'),
(372, 4, 71, '116.0000'),
(373, 4, 72, '116.0000'),
(374, 4, 73, '116.0000'),
(375, 4, 74, '116.0000'),
(376, 4, 75, '116.0000'),
(377, 4, 76, '116.0000'),
(378, 4, 77, '116.0000'),
(379, 4, 78, '116.0000'),
(380, 4, 79, '116.0000'),
(381, 4, 80, '145.0000'),
(382, 4, 81, '145.0000'),
(383, 4, 82, '145.0000'),
(384, 4, 83, '145.0000'),
(385, 4, 84, '145.0000'),
(386, 4, 85, '145.0000'),
(387, 4, 86, '145.0000'),
(388, 4, 87, '145.0000'),
(389, 4, 88, '145.0000'),
(390, 4, 89, '145.0000'),
(391, 4, 90, '145.0000'),
(392, 4, 91, '145.0000'),
(393, 4, 92, '145.0000'),
(394, 4, 93, '145.0000'),
(395, 4, 94, '145.0000'),
(396, 4, 95, '145.0000'),
(397, 4, 96, '145.0000'),
(398, 4, 97, '145.0000'),
(399, 4, 98, '145.0000'),
(400, 4, 99, '145.0000'),
(401, 5, 0, '21.0000'),
(402, 5, 1, '21.0000'),
(403, 5, 2, '21.0000'),
(404, 5, 3, '21.0000'),
(405, 5, 4, '21.0000'),
(406, 5, 5, '21.0000'),
(407, 5, 6, '21.0000'),
(408, 5, 7, '21.0000'),
(409, 5, 8, '21.0000'),
(410, 5, 9, '21.0000'),
(411, 5, 10, '21.0000'),
(412, 5, 11, '21.0000'),
(413, 5, 12, '21.0000'),
(414, 5, 13, '21.0000'),
(415, 5, 14, '21.0000'),
(416, 5, 15, '21.0000'),
(417, 5, 16, '21.0000'),
(418, 5, 17, '21.0000'),
(419, 5, 18, '21.0000'),
(420, 5, 19, '21.0000'),
(421, 5, 20, '42.0000'),
(422, 5, 21, '42.0000'),
(423, 5, 22, '42.0000'),
(424, 5, 23, '42.0000'),
(425, 5, 24, '42.0000'),
(426, 5, 25, '42.0000'),
(427, 5, 26, '42.0000'),
(428, 5, 27, '42.0000'),
(429, 5, 28, '42.0000'),
(430, 5, 29, '42.0000'),
(431, 5, 30, '42.0000'),
(432, 5, 31, '42.0000'),
(433, 5, 32, '42.0000'),
(434, 5, 33, '42.0000'),
(435, 5, 34, '42.0000'),
(436, 5, 35, '42.0000'),
(437, 5, 36, '42.0000'),
(438, 5, 37, '42.0000'),
(439, 5, 38, '42.0000'),
(440, 5, 39, '42.0000'),
(441, 5, 40, '75.0000'),
(442, 5, 41, '75.0000'),
(443, 5, 42, '75.0000'),
(444, 5, 43, '75.0000'),
(445, 5, 44, '75.0000'),
(446, 5, 45, '75.0000'),
(447, 5, 46, '75.0000'),
(448, 5, 47, '75.0000'),
(449, 5, 48, '75.0000'),
(450, 5, 49, '75.0000'),
(451, 5, 50, '75.0000'),
(452, 5, 51, '75.0000'),
(453, 5, 52, '75.0000'),
(454, 5, 53, '75.0000'),
(455, 5, 54, '75.0000'),
(456, 5, 55, '75.0000'),
(457, 5, 56, '75.0000'),
(458, 5, 57, '75.0000'),
(459, 5, 58, '75.0000'),
(460, 5, 59, '75.0000'),
(461, 5, 60, '96.0000'),
(462, 5, 61, '96.0000'),
(463, 5, 62, '96.0000'),
(464, 5, 63, '96.0000'),
(465, 5, 64, '96.0000'),
(466, 5, 65, '96.0000'),
(467, 5, 66, '96.0000'),
(468, 5, 67, '96.0000'),
(469, 5, 68, '96.0000'),
(470, 5, 69, '96.0000'),
(471, 5, 70, '96.0000'),
(472, 5, 71, '96.0000'),
(473, 5, 72, '96.0000'),
(474, 5, 73, '96.0000'),
(475, 5, 74, '96.0000'),
(476, 5, 75, '96.0000'),
(477, 5, 76, '96.0000'),
(478, 5, 77, '96.0000'),
(479, 5, 78, '96.0000'),
(480, 5, 79, '96.0000'),
(481, 5, 80, '117.0000'),
(482, 5, 81, '117.0000'),
(483, 5, 82, '117.0000'),
(484, 5, 83, '117.0000'),
(485, 5, 84, '117.0000'),
(486, 5, 85, '117.0000'),
(487, 5, 86, '117.0000'),
(488, 5, 87, '117.0000'),
(489, 5, 88, '117.0000'),
(490, 5, 89, '117.0000'),
(491, 5, 90, '117.0000'),
(492, 5, 91, '117.0000'),
(493, 5, 92, '117.0000'),
(494, 5, 93, '117.0000'),
(495, 5, 94, '117.0000'),
(496, 5, 95, '117.0000'),
(497, 5, 96, '117.0000'),
(498, 5, 97, '117.0000'),
(499, 5, 98, '117.0000'),
(500, 5, 99, '117.0000'),
(501, 6, 0, '34.0000'),
(502, 6, 1, '34.0000'),
(503, 6, 2, '34.0000'),
(504, 6, 3, '34.0000'),
(505, 6, 4, '34.0000'),
(506, 6, 5, '34.0000'),
(507, 6, 6, '34.0000'),
(508, 6, 7, '34.0000'),
(509, 6, 8, '34.0000'),
(510, 6, 9, '34.0000'),
(511, 6, 10, '34.0000'),
(512, 6, 11, '34.0000'),
(513, 6, 12, '34.0000'),
(514, 6, 13, '34.0000'),
(515, 6, 14, '34.0000'),
(516, 6, 15, '34.0000'),
(517, 6, 16, '34.0000'),
(518, 6, 17, '34.0000'),
(519, 6, 18, '34.0000'),
(520, 6, 19, '34.0000'),
(521, 6, 20, '68.0000'),
(522, 6, 21, '68.0000'),
(523, 6, 22, '68.0000'),
(524, 6, 23, '68.0000'),
(525, 6, 24, '68.0000'),
(526, 6, 25, '68.0000'),
(527, 6, 26, '68.0000'),
(528, 6, 27, '68.0000'),
(529, 6, 28, '68.0000'),
(530, 6, 29, '68.0000'),
(531, 6, 30, '68.0000'),
(532, 6, 31, '68.0000'),
(533, 6, 32, '68.0000'),
(534, 6, 33, '68.0000'),
(535, 6, 34, '68.0000'),
(536, 6, 35, '68.0000'),
(537, 6, 36, '68.0000'),
(538, 6, 37, '68.0000'),
(539, 6, 38, '68.0000'),
(540, 6, 39, '68.0000'),
(541, 6, 40, '102.0000'),
(542, 6, 41, '102.0000'),
(543, 6, 42, '102.0000'),
(544, 6, 43, '102.0000'),
(545, 6, 44, '102.0000'),
(546, 6, 45, '102.0000'),
(547, 6, 46, '102.0000'),
(548, 6, 47, '102.0000'),
(549, 6, 48, '102.0000'),
(550, 6, 49, '102.0000'),
(551, 6, 50, '102.0000'),
(552, 6, 51, '102.0000'),
(553, 6, 52, '102.0000'),
(554, 6, 53, '102.0000'),
(555, 6, 54, '102.0000'),
(556, 6, 55, '102.0000'),
(557, 6, 56, '102.0000'),
(558, 6, 57, '102.0000'),
(559, 6, 58, '102.0000'),
(560, 6, 59, '102.0000'),
(561, 6, 60, '136.0000'),
(562, 6, 61, '136.0000'),
(563, 6, 62, '136.0000'),
(564, 6, 63, '136.0000'),
(565, 6, 64, '136.0000'),
(566, 6, 65, '136.0000'),
(567, 6, 66, '136.0000'),
(568, 6, 67, '136.0000'),
(569, 6, 68, '136.0000'),
(570, 6, 69, '136.0000'),
(571, 6, 70, '136.0000'),
(572, 6, 71, '136.0000'),
(573, 6, 72, '136.0000'),
(574, 6, 73, '136.0000'),
(575, 6, 74, '136.0000'),
(576, 6, 75, '136.0000'),
(577, 6, 76, '136.0000'),
(578, 6, 77, '136.0000'),
(579, 6, 78, '136.0000'),
(580, 6, 79, '136.0000'),
(581, 6, 80, '170.0000'),
(582, 6, 81, '170.0000'),
(583, 6, 82, '170.0000'),
(584, 6, 83, '170.0000'),
(585, 6, 84, '170.0000'),
(586, 6, 85, '170.0000'),
(587, 6, 86, '170.0000'),
(588, 6, 87, '170.0000'),
(589, 6, 88, '170.0000'),
(590, 6, 89, '170.0000'),
(591, 6, 90, '170.0000'),
(592, 6, 91, '170.0000'),
(593, 6, 92, '170.0000'),
(594, 6, 93, '170.0000'),
(595, 6, 94, '170.0000'),
(596, 6, 95, '170.0000'),
(597, 6, 96, '170.0000'),
(598, 6, 97, '170.0000'),
(599, 6, 98, '170.0000'),
(600, 6, 99, '170.0000'),
(601, 7, 1, '0.0000'),
(602, 7, 2, '0.0000'),
(603, 7, 0, '0.0000'),
(604, 7, 3, '0.0000'),
(605, 7, 4, '0.0000'),
(606, 7, 5, '0.0000'),
(607, 7, 6, '0.0000'),
(608, 7, 7, '0.0000'),
(609, 7, 8, '0.0000'),
(610, 7, 9, '0.0000'),
(611, 7, 10, '0.0000'),
(612, 7, 11, '0.0000'),
(613, 7, 12, '0.0000'),
(614, 7, 13, '0.0000'),
(615, 7, 14, '0.0000'),
(616, 7, 15, '0.0000'),
(617, 7, 16, '0.0000'),
(618, 7, 17, '0.0000'),
(619, 7, 18, '0.0000'),
(620, 7, 19, '0.0000'),
(621, 7, 20, '0.0000'),
(622, 7, 21, '0.0000'),
(623, 7, 22, '0.0000'),
(624, 7, 23, '0.0000'),
(625, 7, 24, '0.0000'),
(626, 7, 25, '0.0000'),
(627, 7, 26, '0.0000'),
(628, 7, 27, '0.0000'),
(629, 7, 28, '0.0000'),
(630, 7, 29, '0.0000'),
(631, 7, 30, '0.0000'),
(632, 7, 31, '0.0000'),
(633, 7, 32, '0.0000'),
(634, 7, 33, '0.0000'),
(635, 7, 34, '0.0000'),
(636, 7, 35, '0.0000'),
(637, 7, 36, '0.0000'),
(638, 7, 37, '0.0000'),
(639, 7, 38, '0.0000'),
(640, 7, 39, '0.0000'),
(641, 7, 40, '0.0000'),
(642, 7, 41, '0.0000'),
(643, 7, 42, '0.0000'),
(644, 7, 43, '0.0000'),
(645, 7, 44, '0.0000'),
(646, 7, 45, '0.0000'),
(647, 7, 46, '0.0000'),
(648, 7, 47, '0.0000'),
(649, 7, 48, '0.0000'),
(650, 7, 49, '0.0000'),
(651, 7, 50, '0.0000'),
(652, 7, 51, '0.0000'),
(653, 7, 52, '0.0000'),
(654, 7, 53, '0.0000'),
(655, 7, 54, '0.0000'),
(656, 7, 55, '0.0000'),
(657, 7, 56, '0.0000'),
(658, 7, 57, '0.0000'),
(659, 7, 58, '0.0000'),
(660, 7, 59, '0.0000'),
(661, 7, 60, '0.0000'),
(662, 7, 61, '0.0000'),
(663, 7, 62, '0.0000'),
(664, 7, 63, '0.0000'),
(665, 7, 64, '0.0000'),
(666, 7, 65, '0.0000'),
(667, 7, 66, '0.0000'),
(668, 7, 67, '0.0000'),
(669, 7, 68, '0.0000'),
(670, 7, 69, '0.0000'),
(671, 7, 70, '0.0000'),
(672, 7, 71, '0.0000'),
(673, 7, 72, '0.0000'),
(674, 7, 73, '0.0000'),
(675, 7, 74, '0.0000'),
(676, 7, 75, '0.0000'),
(677, 7, 76, '0.0000'),
(678, 7, 77, '0.0000'),
(679, 7, 78, '0.0000'),
(680, 7, 79, '0.0000'),
(681, 7, 80, '0.0000'),
(682, 7, 81, '0.0000'),
(683, 7, 82, '0.0000'),
(684, 7, 83, '0.0000'),
(685, 7, 84, '0.0000'),
(686, 7, 85, '0.0000'),
(687, 7, 86, '0.0000'),
(688, 7, 87, '0.0000'),
(689, 7, 88, '0.0000'),
(690, 7, 89, '0.0000'),
(691, 7, 90, '0.0000'),
(692, 7, 91, '0.0000'),
(693, 7, 92, '0.0000'),
(694, 7, 93, '0.0000'),
(695, 7, 94, '0.0000'),
(696, 7, 95, '0.0000'),
(697, 7, 96, '0.0000'),
(698, 7, 97, '0.0000'),
(699, 7, 98, '0.0000'),
(700, 7, 99, '0.0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sl_slide`
--

CREATE TABLE `sl_slide` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image2` varchar(225) DEFAULT NULL,
  `url` varchar(225) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sl_slide`
--

INSERT INTO `sl_slide` (`id`, `topik_id`, `image`, `image2`, `url`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `sort`) VALUES
(1, 0, 'ff70e-slides-1.jpg', 'c2b90-nfcs-mob.jpg', NULL, 1, '0000-00-00 00:00:00', '2020-01-06 16:03:12', 'info@markdesign.net', 'info@markdesign.net', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sl_slide_description`
--

CREATE TABLE `sl_slide_description` (
  `id` int(11) NOT NULL,
  `slide_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `periode` varchar(100) NOT NULL,
  `url_teks` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sl_slide_description`
--

INSERT INTO `sl_slide_description` (`id`, `slide_id`, `language_id`, `title`, `subtitle`, `content`, `periode`, `url_teks`, `url`) VALUES
(9, 1, 3, 'slide 1', '', '', '', '', ''),
(8, 1, 2, 'slide 1', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_extensioncourse`
--

CREATE TABLE `tb_extensioncourse` (
  `id` bigint(15) NOT NULL,
  `title_id` varchar(225) NOT NULL,
  `title_en` varchar(225) DEFAULT NULL,
  `content_id` text,
  `content_en` text,
  `register_link` varchar(225) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `sorts` int(5) DEFAULT NULL,
  `active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_extensioncourse`
--

INSERT INTO `tb_extensioncourse` (`id`, `title_id`, `title_en`, `content_id`, `content_en`, `register_link`, `image`, `sorts`, `active`) VALUES
(1, 'EXTENSION COURSE FILSAFAT', 'EXTENSION COURSE IN PHILOSOPHY', 'SEMESTER GENAP TAHUN AKADEMIK 2019/20 DENGAN TEMA: \"FILSAFAT KETUHANAN -- MENALAR TUHAN\"\r\n\r\n“Tuhan memberikan teka-teki kepada orang bijak, sedangkan kepada orang bodoh ajaran singkat dan dangkal,” demikian kata pujangga Yunani kuno, Sophokles (496?-406 s.M). Namun sungguhkah Tuhan membeda-bedakan kemampuan intelektual manusia untuk menyatakan diri dan kehendakNya? Lalu ada dua “jenis” Tuhan: “Tuhan orang pintar” dan “Tuhan orang Bodoh”? Atau kebalikannya benar: Kita manusialah yang terlalu malas dan takut memakai kekuatan akal budi kita untuk menalar Tuhan dan kehendakNya? Apakah iman bertentangan dengan tuntutan rasio? Atau malahan sesuai dengannya? Kursus filsafat kali ini mau memperlihatkan bahwa orang bisa percaya kepada Tuhan, sekaligus menjadi pribadi intelektual!\r\n\r\nWaktu	: Setiap Senin, pk.18:00-20:00 wib	\r\nKordinator    : Dr. Simon P. Lili Tjahjadi\r\n', 'SEMESTER GENAP TAHUN AKADEMIK 2019/20 DENGAN TEMA: \"FILSAFAT KETUHANAN -- MENALAR TUHAN\"\r\n\r\n“Tuhan memberikan teka-teki kepada orang bijak, sedangkan kepada orang bodoh ajaran singkat dan dangkal,” demikian kata pujangga Yunani kuno, Sophokles (496?-406 s.M). Namun sungguhkah Tuhan membeda-bedakan kemampuan intelektual manusia untuk menyatakan diri dan kehendakNya? Lalu ada dua “jenis” Tuhan: “Tuhan orang pintar” dan “Tuhan orang Bodoh”? Atau kebalikannya benar: Kita manusialah yang terlalu malas dan takut memakai kekuatan akal budi kita untuk menalar Tuhan dan kehendakNya? Apakah iman bertentangan dengan tuntutan rasio? Atau malahan sesuai dengannya? Kursus filsafat kali ini mau memperlihatkan bahwa orang bisa percaya kepada Tuhan, sekaligus menjadi pribadi intelektual!\r\n\r\nWaktu	: Setiap Senin, pk.18:00-20:00 wib	\r\nKordinator    : Dr. Simon P. Lili Tjahjadi', 'https://www.driyarkara.ac.id/id/home/akademikprogramextension', '8b31b-EC FILSAFAT GENAP 2019.pdf', NULL, 1),
(2, 'EXTENSION COURSE TEOLOGI', 'EXTENSION COURSE IN THEOLOGY', 'SEMESTER GENAP TAHUN AKADEMIK 2019/20 DENGAN TEMA: \"PNEUMATOLOGI:\r\nKETIKA ROH TUHAN MEMBARUI DUNIA…\"\r\n\r\nBerbicara tentang Roh Kudus bukanlah sesuatu yang mudah karena hal itu sepenuhnya misteri bagi manusia yang bangga menjadi mahluk rasional. Namun, sejak akhir tahun 60-an kita dibanjiri dengan buku dan tulisan tentang Roh Kudus. Dimensi pneumatologis mendapatkan prioritas utama dalam refleksi teologis karena mengaitkan kristologi dan eklesialogi, menghubungkan iman yang diwartakan dengan iman yang dihayati. Itu sebabnya pneumatologi bukanlah merupakan “apendiks” saja dalam diskusi tentang Tuhan, melainkan justru menjadi wacananya yang paling dinamis, yang membuat teologi itu makin membumi dan menemukan praksisnya dalam kehidupan kristiani yang nyata.\r\n\r\nWaktu: setiap Kamis, pukul 18.00-20.00 WIB.\r\nKoordinator: Vitus Rubianto Solichin.', 'SEMESTER GENAP TAHUN AKADEMIK 2019/20 DENGAN TEMA: \"PNEUMATOLOGI:\r\nKETIKA ROH TUHAN MEMBARUI DUNIA…\"\r\n\r\nBerbicara tentang Roh Kudus bukanlah sesuatu yang mudah karena hal itu sepenuhnya misteri bagi manusia yang bangga menjadi mahluk rasional. Namun, sejak akhir tahun 60-an kita dibanjiri dengan buku dan tulisan tentang Roh Kudus. Dimensi pneumatologis mendapatkan prioritas utama dalam refleksi teologis karena mengaitkan kristologi dan eklesialogi, menghubungkan iman yang diwartakan dengan iman yang dihayati. Itu sebabnya pneumatologi bukanlah merupakan “apendiks” saja dalam diskusi tentang Tuhan, melainkan justru menjadi wacananya yang paling dinamis, yang membuat teologi itu makin membumi dan menemukan praksisnya dalam kehidupan kristiani yang nyata.\r\n\r\nWaktu: setiap Kamis, pukul 18.00-20.00 WIB.\r\nKoordinator: Vitus Rubianto Solichin.', 'https://www.driyarkara.ac.id/id/home/akademikprogramextension', 'ee8a6-EC GENAP 2019teologi.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_group`
--

CREATE TABLE `tb_group` (
  `id` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `aktif` int(11) NOT NULL,
  `akses` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_group`
--

INSERT INTO `tb_group` (`id`, `group`, `aktif`, `akses`) VALUES
(8, 'Administrator', 1, 0x613a33373a7b693a303b733a31363a2261646d696e2e757365722e696e646578223b693a313b733a31373a2261646d696e2e757365722e637265617465223b693a323b733a31373a2261646d696e2e757365722e757064617465223b693a333b733a31373a2261646d696e2e757365722e64656c657465223b693a343b733a31373a2261646d696e2e736c6964652e696e646578223b693a353b733a31383a2261646d696e2e736c6964652e637265617465223b693a363b733a31383a2261646d696e2e736c6964652e757064617465223b693a373b733a31383a2261646d696e2e736c6964652e64656c657465223b693a383b733a31363a2261646d696e2e62616e6b2e696e646578223b693a393b733a31373a2261646d696e2e62616e6b2e637265617465223b693a31303b733a31373a2261646d696e2e62616e6b2e757064617465223b693a31313b733a31373a2261646d696e2e62616e6b2e64656c657465223b693a31323b733a31393a2261646d696e2e73657474696e672e696e646578223b693a31333b733a31383a2261646d696e2e6d656d6265722e696e646578223b693a31343b733a31393a2261646d696e2e6d656d6265722e637265617465223b693a31353b733a31393a2261646d696e2e6d656d6265722e757064617465223b693a31363b733a31393a2261646d696e2e6d656d6265722e64656c657465223b693a31373b733a31373a2261646d696e2e6f726465722e696e646578223b693a31383b733a31383a2261646d696e2e6f726465722e637265617465223b693a31393b733a31383a2261646d696e2e6f726465722e757064617465223b693a32303b733a31383a2261646d696e2e6f726465722e64656c657465223b693a32313b733a31373a2261646d696e2e6f726465722e7072696e74223b693a32323b733a32313a2261646d696e2e73657474696e672e636f6e74616374223b693a32333b733a31393a2261646d696e2e73657474696e672e61626f7574223b693a32343b733a32303a2261646d696e2e63617465676f72792e696e646578223b693a32353b733a32313a2261646d696e2e63617465676f72792e637265617465223b693a32363b733a32313a2261646d696e2e63617465676f72792e757064617465223b693a32373b733a32313a2261646d696e2e63617465676f72792e64656c657465223b693a32383b733a31393a2261646d696e2e73657474696e672e686f77746f223b693a32393b733a31393a2261646d696e2e70726f647563742e696e646578223b693a33303b733a32303a2261646d696e2e70726f647563742e637265617465223b693a33313b733a32303a2261646d696e2e70726f647563742e757064617465223b693a33323b733a32303a2261646d696e2e70726f647563742e64656c657465223b693a33333b733a32303a2261646d696e2e64656c69766572792e696e646578223b693a33343b733a32313a2261646d696e2e64656c69766572792e637265617465223b693a33353b733a32313a2261646d696e2e64656c69766572792e757064617465223b693a33363b733a32313a2261646d696e2e64656c69766572792e64656c657465223b7d);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kegiatan_univ`
--

CREATE TABLE `tb_kegiatan_univ` (
  `id` bigint(20) NOT NULL,
  `title_en` varchar(225) NOT NULL,
  `title_id` varchar(225) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` varchar(225) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_event` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kegiatan_univ`
--

INSERT INTO `tb_kegiatan_univ` (`id`, `title_en`, `title_id`, `time_start`, `time_end`, `date_input`, `date_event`) VALUES
(10, 'Christmas Holiday', 'Libur Natal', '08:00:00', '48', '2019-12-23 19:44:36', '2019-12-25'),
(11, 'Semester Re-registration', 'Daftar Ulang', '08:00:00', '7', '2019-12-23 19:47:17', '2020-01-06'),
(12, 'Class Registration', 'Penyelesaian Kartu Rencana Studi (KRS)', '08:00:00', '3', '2019-12-28 16:15:43', '2020-01-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_master_jenjangstudi`
--

CREATE TABLE `tb_master_jenjangstudi` (
  `id` int(5) NOT NULL,
  `nama` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_master_jenjangstudi`
--

INSERT INTO `tb_master_jenjangstudi` (`id`, `nama`) VALUES
(3, 'S1'),
(4, 'S2'),
(5, 'S3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_master_kategoristudi`
--

CREATE TABLE `tb_master_kategoristudi` (
  `id` int(5) NOT NULL,
  `nama` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_master_kategoristudi`
--

INSERT INTO `tb_master_kategoristudi` (`id`, `nama`) VALUES
(3, 'Teologi'),
(4, 'Filsafat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menu_akses`
--

CREATE TABLE `tb_menu_akses` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `action` blob NOT NULL,
  `sub_action` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_menu_akses`
--

INSERT INTO `tb_menu_akses` (`id`, `type`, `name`, `controller`, `action`, `sub_action`) VALUES
(22, 'admin', 'User', 'user', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(21, 'admin', 'Slide', 'slide', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(40, 'admin', 'Bank', 'bank', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(18, 'admin', 'Setting', 'setting', 0x613a313a7b733a353a22696e646578223b733a31373a22456469742053657474696e6720556d756d223b7d, 0x613a303a7b7d),
(39, 'admin', 'Member', 'member', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(38, 'admin', 'Order', 'order', 0x613a353a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b733a353a227072696e74223b733a353a225072696e74223b7d, 0x613a303a7b7d),
(32, 'admin', 'Contact Us', 'setting', 0x613a313a7b733a373a22636f6e74616374223b733a32323a2245646974205061676520487562756e6769204b616d69223b7d, 0x613a303a7b7d),
(13, 'admin', 'About Us', 'setting', 0x613a313a7b733a353a2261626f7574223b733a31303a22456469742041626f7574223b7d, 0x613a303a7b7d),
(37, 'admin', 'Category', 'category', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(36, 'admin', 'How To Order', 'setting', 0x613a313a7b733a353a22686f77746f223b733a31323a22486f7720546f204f72646572223b7d, 0x613a303a7b7d),
(30, 'admin', 'Products', 'product', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(41, 'admin', 'Delivery Price', 'delivery', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_page_sarjana`
--

CREATE TABLE `tb_page_sarjana` (
  `id` bigint(20) NOT NULL,
  `type_kategori` int(15) NOT NULL,
  `category_id` int(15) DEFAULT NULL,
  `title` varchar(225) DEFAULT NULL,
  `subtitle` text,
  `content` text,
  `title_en` varchar(225) DEFAULT NULL,
  `subtitle_en` text,
  `content_en` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_page_sarjana`
--

INSERT INTO `tb_page_sarjana` (`id`, `type_kategori`, `category_id`, `title`, `subtitle`, `content`, `title_en`, `subtitle_en`, `content_en`) VALUES
(1, 1, 1, 'Profil Sarjana', NULL, '<p><strong></strong><strong>PROGRAM STUDI FILSAFAT</strong><strong></strong>\r\n</p><p><strong>VISI: </strong>Komunitas akademik berkepribadian kritis, berintegritas, bertanggungjawab sosial.\r\n</p><p><strong>MISI:</strong><strong><br></strong>\r\n</p><ol>\r\n	<li><strong> </strong>Menyelenggarakan pendidikan akademis yang unggul secara nasional dan internasional dalam bidang ilmu filsafat dalam dialog dengan ilmu-ilmu lain;</li>\r\n	<li>Melakukan penelitian dan pengembangan ilmu filsafat;</li>\r\n	<li>Mendidik calon pemimpin masyarakat yang berkepribadian utuh;</li>\r\n	<li>Melibatkan diri dalam perjuangan memajukan demokrasi, penegakan HAM, keutuhan ekologis, dan dialog kritis dengan berbagai agama/keyakinan yang ada di Indonesia. </li>\r\n</ol><p><strong>TUJUAN</strong>: Menyelenggarakan Program Studi S1 yang unggul dalam bidang filsafat dan dapat membantu mahasiswanya peka serta terlibat dalam pencarian jawaban atas masalah-masalah aktual masyarakat.\r\n</p><p><strong>PROGRAM STUDI FILSAFAT KEILAHIAN</strong>\r\n</p><p><strong>VISI:</strong> Komunitas akademik, pencerah budi, pengasah nurani, dan penggerak aksi berdasarkan iman Kristiani\r\n</p><p><strong>MISI</strong>:\r\n</p><ol>\r\n	<li>Mengembangkan ilmu teologi yang terlibat;</li>\r\n	<li>Menyelenggarakan pendidikan akademik yang unggul di bidang teologi dalam dialog dengan ilmu-ilmu lain yang terkait;</li>\r\n	<li>Menjadi pusat pengembangan pemikiran teologis Kristiani, dalam dialog dengan nilai kemanusiaan universal, cita-cita bangsa Indonesia, dan keyakinan-keyakinan lain;</li>\r\n	<li>Melibatkan diri dalam kehidupan intelektual, kultural, sosial, dan spiritual Gereja serta bangsa.</li>\r\n</ol><p><strong>TUJUAN:</strong> Membangun komunitas akademik yang mampu mencerahkan budi, mengasah nurani, dan menggerakkan aksi berdasarkan iman Kristiani, demi terwujudnya masyarakat dan Gereja yang peduli pada tata dunia yang lebih benar dan adil serta lingkungan hidup yang utuh dan lestari.<br>\r\n</p><p><br>\r\n</p><p><br>\r\n</p>', 'Undergraduate Profile', NULL, '<p><strong>PROGRAM STUDI FILSAFAT</strong><strong></strong></p><p><strong>VISI: </strong>Komunitas akademik berkepribadian kritis, berintegritas, bertanggungjawab sosial.</p><p><strong>MISI:</strong><strong><br></strong></p><ol><li><strong> </strong>Menyelenggarakan\r\n pendidikan akademis yang unggul secara nasional dan internasional dalam\r\n bidang ilmu filsafat dalam dialog dengan ilmu-ilmu lain;</li><li>Melakukan penelitian dan pengembangan ilmu filsafat;</li><li>Mendidik calon pemimpin masyarakat yang berkepribadian utuh;</li><li>Melibatkan\r\n diri dalam perjuangan memajukan demokrasi, penegakan HAM, keutuhan \r\nekologis, dan dialog kritis dengan berbagai agama/keyakinan yang ada di \r\nIndonesia. </li></ol><p>TUJUAN: Menyelenggarakan Program Studi S1 yang \r\nunggul dalam bidang filsafat dan dapat membantu mahasiswanya peka serta \r\nterlibat dalam pencarian jawaban atas masalah-masalah aktual masyarakat.</p><p><strong>PROGRAM STUDI FILSAFAT KEILAHIAN</strong></p><p><strong>VISI:</strong> Komunitas akademik, pencerah budi, pengasah nurani, dan penggerak aksi berdasarkan iman Kristiani</p><p><strong>MISI</strong>: </p><ol><li>Mengembangkan ilmu teologi yang terlibat;</li><li>Menyelenggarakan pendidikan akademik yang unggul di bidang teologi dalam dialog dengan ilmu-ilmu lain yang terkait;</li><li>Menjadi\r\n pusat pengembangan pemikiran teologis Kristiani, dalam dialog dengan \r\nnilai kemanusiaan universal, cita-cita bangsa Indonesia, dan \r\nkeyakinan-keyakinan lain;</li><li>Melibatkan diri dalam kehidupan intelektual, kultural, sosial, dan spiritual Gereja serta bangsa.</li></ol><strong></strong><p>TUJUAN: Membangun komunitas akademik yang mampu mencerahkan budi, mengasah nurani, dan menggerakkan aksi berdasarkan iman Kristiani, demi terwujudnya masyarakat dan Gereja yang peduli pada tata dunia yang lebih benar dan adil serta lingkungan hidup yang utuh dan lestari.</p>'),
(2, 2, 1, 'SYARAT KELULUSAN DAN KURIKULUM', NULL, '<p><strong>SYARAT KELULUSAN</strong><br></p><ol><li>Untuk menyelesaikan Program Sarjana pada masing-masing program studi yang tersedia, mahasiswa harus menyelesaikan sekurang-kurangnya 144 SKS dan sebanyak-banyaknya 160 SKS (tanpa nilai E). Ketentuan lain adalah sebagai berikut:<ol><li>Mencapai IPK\r\nserendah-rendahnya 2,00;</li><li>Telah lulus\r\nUjian Skripsi, dengan sekurang-kurangnya nilai C;</li><li>Telah lulus dalam ujian komprehensif dengan\r\nsekurang-kurangnya nilai rata-rata  C.</li></ol></li><li>Program studi tersebut harus diselesaikan dalam jangka waktu tidak melebihi 14 semester (tidak termasuk cuti akademik). Jangka waktu dapat diperpanjang, jika ada bukti nyata dan tertulis (dari pembimbing skripsi), bahwa mahasiswa sedang mengerjakan penyelesaian skripsi yang akan selesai maksimal dalam 1 (satu) tahun (termasuk Ujian Komprehensif). Apabila gagal memenuhi ketentuan ini, mahasiswa dinyatakan keluar <i>(Drop Out)</i>. </li></ol>', 'Degree Fulfilment and Curriculum', NULL, '<p><strong>SYARAT KELULUSAN</strong><br></p><ol><li>Untuk\r\n menyelesaikan Program Sarjana pada masing-masing program studi yang \r\ntersedia, mahasiswa harus menyelesaikan sekurang-kurangnya 144 SKS dan \r\nsebanyak-banyaknya 160 SKS (tanpa nilai E). Ketentuan lain adalah sebagai \r\nberikut:<ol><li>Mencapai IPK\r\nserendah-rendahnya 2,00;</li><li>Telah lulus\r\nUjian Skripsi, dengan sekurang-kurangnya nilai C;</li><li>Telah lulus dalam ujian komprehensif dengan\r\nsekurang-kurangnya nilai rata-rata  C.</li></ol></li><li>Program studi \r\ntersebut harus diselesaikan dalam jangka waktu tidak melebihi 14 \r\nsemester (tidak termasuk cuti akademik). Jangka waktu dapat \r\ndiperpanjang, jika ada bukti nyata dan tertulis (dari pembimbing \r\nskripsi), bahwa mahasiswa sedang mengerjakan penyelesaian skripsi yang \r\nakan selesai maksimal dalam 1 (satu) tahun (termasuk Ujian \r\nKomprehensif). Apabila gagal memenuhi ketentuan ini, mahasiswa dinyatakan keluar <i>(Drop Out)</i>. </li></ol>'),
(3, 3, 1, 'Jadwal Kuliah Sarjana', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>', 'Jadwal Kuliah Sarjana', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>'),
(4, 4, 1, 'Biaya Studi Sarjana', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>', 'Biaya Studi Sarjana', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>'),
(5, 5, 1, 'PENERIMAAN MAHASISWA BARU PROGRAM SARJANA', NULL, '<p><strong>PENDAFTARAN DAN UJIAN MASUK UNTUK PROGRAM SARJANA TAHUN AKADEMIK 2020/21</strong></p><p><strong>Pendaftaran mahasiswa baru</strong>: akan dibuka secara online pada hari Senin, tanggal 6 April 2020.</p><p><strong>Ujian Masuk</strong>: diadakan pada hari Senin, tanggal 15 Juni 2020 pukul 08:00 di kampus STF Driyarkara.<br></p>', 'ADMISSION FOR NEW UNDERGRADUATE STUDENTS', NULL, '<p><strong>PENDAFTARAN DAN UJIAN MASUK UNTUK PROGRAM SARJANA TAHUN AKADEMIK 2020/21</strong></p><p><strong>Pendaftaran mahasiswa baru</strong>: akan dibuka secara online pada hari Senin, tanggal 6 April 2020.</p><strong>Ujian Masuk</strong>: diadakan pada hari Senin, tanggal 15 Juni 2020 pukul 08:00 di kampus STF Driyarkara.'),
(6, 6, 1, 'Staf Akademik Sarjana', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>', 'Staf Akademik Sarjana', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>'),
(7, 1, 3, 'Profil ', NULL, '<p><strong>PROGRAM STUDI MAGISTER FILSAFAT (S2)</strong><strong></strong></p><p><strong>VISI: </strong>Komunitas akademik berkeahlian ilmu filsafat,\r\nberintegritas, bertanggung jawab sosial. </p><p><strong>MISI:</strong><strong><br></strong>\r\n</p><ol><li><strong> </strong>Menyelenggarakan proses belajar-mengajar yang meningkat­kan kemampuan untuk\r\nmenggali dan mendayagunakan sumber-sumber pengetahuan pokok ilmu filsafat Barat\r\ndan Timur.</li><li>Mengkaji pemikiran filsafat guna menunjukkan keku­rangan dan kelebihannya,\r\nserta menjalin dialog dengan ilmu-ilmu.</li><li>Mempertajam kemampuan untuk melihat dan mempertim­bangkan dimensi etis\r\ndalam berbagai pemikiran filsafat dan problematika masyarakat.</li><li>Meningkatkan kemampuan intelektual untuk terlibat me­nanggapi persoalan\r\npokok yang dihadapi oleh masyarakat Indonesia.</li></ol><p><strong>TUJUAN</strong>: Membangun Program Studi Magister Ilmu Filsafat yang berkualitas dan da­pat me­me­nuhi kebutuhan masyarakat Indonesia akan pengajar ilmu fil­safat pada Perguruan Tinggi serta tenaga ahli yang dapat memberi ma­suk­an di­men­si filo-sofis dalam ber­bagai profesi. </p>', 'Profile', NULL, '<p><strong>MASTER\'S PROGRAM IN PHILOSOPHY<br></strong><strong></strong></p><p><strong>VISI: </strong>Komunitas akademik berkeahlian ilmu filsafat,\r\nberintegritas, bertanggung jawab sosial. </p><p><strong>MISI:</strong><strong><br></strong>\r\n</p><ol><li><strong> </strong>Menyelenggarakan proses belajar-mengajar yang meningkat­kan kemampuan untuk\r\nmenggali dan mendayagunakan sumber-sumber pengetahuan pokok ilmu filsafat Barat\r\ndan Timur.</li><li>Mengkaji pemikiran filsafat guna menunjukkan keku­rangan dan kelebihannya,\r\nserta menjalin dialog dengan ilmu-ilmu.</li><li>Mempertajam kemampuan untuk melihat dan mempertim­bangkan dimensi etis\r\ndalam berbagai pemikiran filsafat dan problematika masyarakat.</li><li>Meningkatkan kemampuan intelektual untuk terlibat me­nanggapi persoalan\r\npokok yang dihadapi oleh masyarakat Indonesia.</li></ol><p><strong>TUJUAN</strong>: \r\nMembangun Program Studi Magister Ilmu Filsafat yang berkualitas dan \r\nda­pat me­me­nuhi kebutuhan masyarakat Indonesia akan pengajar ilmu \r\nfil­safat pada Perguruan Tinggi serta tenaga ahli yang dapat memberi \r\nma­suk­an di­men­si filo-sofis dalam ber­bagai profesi. <br></p>'),
(8, 2, 3, 'Syarat Kelulusan dan Kurikulum', NULL, '<p><strong>SYARAT KELULUSAN </strong><br></p><p>Untuk menyelesaikan <strong>Program Studi Magister</strong> Filsafat, mahasiswa harus menye­le­saikan <strong>4</strong><strong>5</strong><strong> sks</strong> yang terdiri dari <strong>3</strong><strong>7</strong><strong> sks</strong> yang diperoleh melalui <strong>mata kuliah</strong>, <strong>5</strong><strong> sks</strong> yang diperoleh dengan me­nulis <strong>Tesis</strong> dan <strong>3 sks</strong> yang diperoleh dengan lulus dalam <strong>Ujian Komprehensif</strong>.</p><p>Program Studi Magister Ilmu Filsafat harus diselesaikan dalam jangka waktu <strong>tidak me­lebihi </strong><strong>8</strong><strong> se­mester</strong>, dengan tidak menghitung waktu cuti akademik.</p><p><strong>KURIKULUM PROGRAM MATRIKULASI UNTUK CALON MAHASISWA LULUSAN S1 NON-FILSAFAT</strong></p>  <table>  <tbody><tr>   <td>   <p><strong>No</strong></p>   </td>   <td>   <p><strong>Kode   MK</strong></p>   </td>   <td>   <p><strong>Nama   Mata Kuliah</strong></p>   </td>   <td>   <p><strong>SKS</strong></p>   </td>  </tr>  <tr>   <td>   <p>1</p>   </td>   <td>   <p>016</p>   </td>   <td>   <p>Pengantar Studi Filsafat</p>   </td>   <td>   <p>1</p>   </td>  </tr>  <tr>   <td>   <p>2</p>   </td>   <td>   <p>017</p>   </td>   <td>   <p>Logika</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>3</p>   </td>   <td>   <p>019</p>   </td>   <td>   <p>Filsafat Manusia</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>4</p>   </td>   <td>   <p>020</p>   </td>   <td>   <p>Etika</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>5</p>   </td>   <td>   <p>021</p>   </td>   <td>   <p>Metafisika</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>6</p>   </td>   <td>   <p>022</p>   </td>   <td>   <p>Filsafat Imu Pengetahuan</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>7</p>   </td>   <td>   <p>023</p>   </td>   <td>   <p>Filsafat Ekonomi, Sosial, Politik</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>8</p>   </td>   <td>   <p>024</p>   </td>   <td>   <p>Filsafat Ketuhanan</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>9</p>   </td>   <td>   <p>025</p>   </td>   <td>   <p>Sejarah Filsafat Yunani/Abad Pertengahan</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>10</p>   </td>   <td>   <p>026</p>   </td>   <td>   <p>Sejarah Filsafat Barat/Modern I</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>11</p>   </td>   <td>   <p>027</p>   </td>   <td>   <p>Sejarah Filsafat Barat/Modern II</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>12</p>   </td>   <td>   <p>028</p>   </td>   <td>   <p>Sejarah Filsafat Timur </p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>13</p>   </td>   <td>   <p>029</p>   </td>   <td>   <p>Sejarah Filsafat Kontemporer</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>14</p>   </td>   <td>   <p>030</p>   </td>   <td>   <p>Menulis</p>   </td>   <td>   <p>1</p>   </td>  </tr> </tbody></table>  <p><strong> </strong></p><p><strong>KURIKULUM PROGRAM MAGISTER</strong><br></p><table>  <tbody><tr>   <td>   <p><strong>KODE MK</strong></p>   </td>   <td>   <p><strong>NAMA MATAKULIAH</strong></p>   </td>   <td>   <p><strong>SKS</strong></p>   </td>   <td>   <p><strong>TM</strong></p>   </td>  </tr>  <tr>   <td colspan=\"4\">   <p><strong>MATA</strong><strong> </strong><strong>KULIAH INTI   (WAJIB)</strong></p>   </td>  </tr>  <tr>   <td>   <p>801</p>   </td>   <td>   <p>Antropologi   Filosofis</p>   </td>   <td>   <p>3</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>802</p>   </td>   <td>   <p>Epistemologi/Filsafat   Ilmu Pengetahuan</p>   </td>   <td>   <p>3</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>803</p>   </td>   <td>   <p>Filsafat   Praktis </p>   </td>   <td>   <p>3</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>804</p>   </td>   <td>   <p>Filsafat   Agama</p>   </td>   <td>   <p>3</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>805</p>   </td>   <td>   <p>Filsafat   Asia Selatan dan Timur</p>   </td>   <td>   <p>3</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>806</p>   </td>   <td>   <p>Pemikiran   Islam Kontemporer</p>   </td>   <td>   <p>3</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>807</p>   </td>   <td>   <p>Filsafat   Abad 20/21</p>   </td>   <td>   <p>3</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>808</p>   </td>   <td>   <p>Seminar   Tesis</p>   </td>   <td>   <p>1</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td colspan=\"4\">   <p><strong>MATA</strong><strong> </strong><strong>KULIAH </strong><strong>PILIHAN</strong></p>   </td>  </tr>  <tr>   <td>   <p>424</p>   </td>   <td>   <p>Fenomenologi Agama: Tuhan, Tubuh, Alteritas</p>   </td>   <td>   <p>3</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>635</p>   </td>   <td>   <p>Menafsir Teks</p>   </td>   <td>   <p>3</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>632</p>   </td>   <td>   <p>Filsafat Kebudayaan</p>   </td>   <td>   <p>3</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>634</p>   </td>   <td>   <p>Lensa Indonesia: Perihal Silang Budaya</p>   </td>   <td>   <p>3</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>727</p>   </td>   <td>   <p>Gaya Filsafat Nietzsche dan Genealogi Moral</p>   </td>   <td>   <p>3</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>      <br></td>   <td>   <p>Mata Kuliah Wajib</p>   </td>   <td>   <p>22</p>   </td>   <td>      <br></td>  </tr>  <tr>   <td>      <br></td>   <td>   <p>Mata Kuliah Pilihan</p>   </td>   <td>   <p>15</p>   </td>   <td>      <br></td>  </tr>  <tr>   <td>      <br></td>   <td>   <p>Ujian Tesis</p>   </td>   <td>   <p>5</p>   </td>   <td>      <br></td>  </tr>  <tr>   <td>      <br></td>   <td>   <p>Ujian Komprehensif</p>   </td>   <td>   <p>3</p>   </td>   <td>      <br></td>  </tr>  <tr>   <td>      <br></td>   <td>   <p>Jumlah</p>   </td>   <td>   <p>45</p>   </td>   <td>      <br></td>  </tr> </tbody></table>', 'Degree Fulfilment and Curriculum', NULL, '<table>  <tbody><tr>   <td><p><strong>SYARAT KELULUSAN </strong><br></p><p>Untuk menyelesaikan <strong>Program Studi Magister</strong> Filsafat, mahasiswa harus menye­le­saikan <strong>4</strong><strong>5</strong><strong> sks</strong> yang terdiri dari <strong>3</strong><strong>7</strong><strong> sks</strong> yang diperoleh melalui <strong>mata kuliah</strong>, <strong>5</strong><strong> sks</strong> yang diperoleh dengan me­nulis <strong>Tesis</strong> dan <strong>3 sks</strong> yang diperoleh dengan lulus dalam <strong>Ujian Komprehensif</strong>.</p><p>Program Studi Magister Ilmu Filsafat harus diselesaikan dalam jangka waktu <strong>tidak me­lebihi </strong><strong>8</strong><strong> se­mester</strong>, dengan tidak menghitung waktu cuti akademik.</p><p><strong>KURIKULUM PROGRAM MATRIKULASI UNTUK CALON MAHASISWA LULUSAN S1 NON-FILSAFAT</strong></p><strong></strong><table>\r\n <tbody><tr>\r\n  <td>\r\n  <p><strong>No</strong></p>\r\n  </td>\r\n  <td>\r\n  <p><strong>Kode\r\n  MK</strong></p>\r\n  </td>\r\n  <td>\r\n  <p><strong>Nama\r\n  Mata Kuliah</strong></p>\r\n  </td>\r\n  <td>\r\n  <p><strong>SKS</strong></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>1</p>\r\n  </td>\r\n  <td>\r\n  <p>016</p>\r\n  </td>\r\n  <td>\r\n  <p>Pengantar Studi Filsafat</p>\r\n  </td>\r\n  <td>\r\n  <p>1</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n  <td>\r\n  <p>017</p>\r\n  </td>\r\n  <td>\r\n  <p>Logika</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>019</p>\r\n  </td>\r\n  <td>\r\n  <p>Filsafat Manusia</p>\r\n  </td>\r\n  <td>\r\n  <p>4</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>4</p>\r\n  </td>\r\n  <td>\r\n  <p>020</p>\r\n  </td>\r\n  <td>\r\n  <p>Etika</p>\r\n  </td>\r\n  <td>\r\n  <p>4</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>5</p>\r\n  </td>\r\n  <td>\r\n  <p>021</p>\r\n  </td>\r\n  <td>\r\n  <p>Metafisika</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>6</p>\r\n  </td>\r\n  <td>\r\n  <p>022</p>\r\n  </td>\r\n  <td>\r\n  <p>Filsafat Imu Pengetahuan</p>\r\n  </td>\r\n  <td>\r\n  <p>4</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>7</p>\r\n  </td>\r\n  <td>\r\n  <p>023</p>\r\n  </td>\r\n  <td>\r\n  <p>Filsafat Ekonomi, Sosial, Politik</p>\r\n  </td>\r\n  <td>\r\n  <p>4</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>8</p>\r\n  </td>\r\n  <td>\r\n  <p>024</p>\r\n  </td>\r\n  <td>\r\n  <p>Filsafat Ketuhanan</p>\r\n  </td>\r\n  <td>\r\n  <p>4</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>9</p>\r\n  </td>\r\n  <td>\r\n  <p>025</p>\r\n  </td>\r\n  <td>\r\n  <p>Sejarah Filsafat Yunani/Abad Pertengahan</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>10</p>\r\n  </td>\r\n  <td>\r\n  <p>026</p>\r\n  </td>\r\n  <td>\r\n  <p>Sejarah Filsafat Barat/Modern I</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>11</p>\r\n  </td>\r\n  <td>\r\n  <p>027</p>\r\n  </td>\r\n  <td>\r\n  <p>Sejarah Filsafat Barat/Modern II</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>12</p>\r\n  </td>\r\n  <td>\r\n  <p>028</p>\r\n  </td>\r\n  <td>\r\n  <p>Sejarah Filsafat Timur </p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>13</p>\r\n  </td>\r\n  <td>\r\n  <p>029</p>\r\n  </td>\r\n  <td>\r\n  <p>Sejarah Filsafat Kontemporer</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>14</p>\r\n  </td>\r\n  <td>\r\n  <p>030</p>\r\n  </td>\r\n  <td>\r\n  <p>Menulis</p>\r\n  </td>\r\n  <td>\r\n  <p>1</p>\r\n  </td>\r\n </tr>\r\n</tbody></table>\r\n\r\n<p><strong> </strong></p><strong>KURIKULUM PROGRAM MAGISTER<br><br>\r\n\r\n</strong><table>\r\n <tbody><tr>\r\n  <td>\r\n  <p><strong>KODE MK</strong></p>\r\n  </td>\r\n  <td>\r\n  <p><strong>NAMA MATAKULIAH</strong></p>\r\n  </td>\r\n  <td>\r\n  <p><strong>SKS</strong></p>\r\n  </td>\r\n  <td>\r\n  <p><strong>TM</strong></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p><strong>MATA</strong><strong> </strong><strong>KULIAH INTI\r\n  (WAJIB)</strong></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>801</p>\r\n  </td>\r\n  <td>\r\n  <p>Antropologi\r\n  Filosofis</p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>802</p>\r\n  </td>\r\n  <td>\r\n  <p>Epistemologi/Filsafat\r\n  Ilmu Pengetahuan</p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>803</p>\r\n  </td>\r\n  <td>\r\n  <p>Filsafat\r\n  Praktis </p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>804</p>\r\n  </td>\r\n  <td>\r\n  <p>Filsafat\r\n  Agama</p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>805</p>\r\n  </td>\r\n  <td>\r\n  <p>Filsafat\r\n  Asia Selatan dan Timur</p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>806</p>\r\n  </td>\r\n  <td>\r\n  <p>Pemikiran\r\n  Islam Kontemporer</p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>807</p>\r\n  </td>\r\n  <td>\r\n  <p>Filsafat\r\n  Abad 20/21</p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>808</p>\r\n  </td>\r\n  <td>\r\n  <p>Seminar\r\n  Tesis</p>\r\n  </td>\r\n  <td>\r\n  <p>1</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p><strong>MATA</strong><strong> </strong><strong>KULIAH </strong><strong>PILIHAN</strong></p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>424</p>\r\n  </td>\r\n  <td>\r\n  <p>Fenomenologi Agama: Tuhan, Tubuh, Alteritas</p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>635</p>\r\n  </td>\r\n  <td>\r\n  <p>Menafsir Teks</p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>632</p>\r\n  </td>\r\n  <td>\r\n  <p>Filsafat Kebudayaan</p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>634</p>\r\n  </td>\r\n  <td>\r\n  <p>Lensa Indonesia: Perihal Silang Budaya</p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <p>727</p>\r\n  </td>\r\n  <td>\r\n  <p>Gaya Filsafat Nietzsche dan Genealogi Moral</p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  <p>2</p>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  \r\n  <br></td>\r\n  <td>\r\n  <p>Mata Kuliah Wajib</p>\r\n  </td>\r\n  <td>\r\n  <p>22</p>\r\n  </td>\r\n  <td>\r\n  \r\n  <br></td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  \r\n  <br></td>\r\n  <td>\r\n  <p>Mata Kuliah Pilihan</p>\r\n  </td>\r\n  <td>\r\n  <p>15</p>\r\n  </td>\r\n  <td>\r\n  \r\n  <br></td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  \r\n  <br></td>\r\n  <td>\r\n  <p>Ujian Tesis</p>\r\n  </td>\r\n  <td>\r\n  <p>5</p>\r\n  </td>\r\n  <td>\r\n  \r\n  <br></td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  \r\n  <br></td>\r\n  <td>\r\n  <p>Ujian Komprehensif</p>\r\n  </td>\r\n  <td>\r\n  <p>3</p>\r\n  </td>\r\n  <td>\r\n  \r\n  <br></td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  \r\n  <br></td>\r\n  <td>\r\n  <p>Jumlah</p>\r\n  </td>\r\n  <td>\r\n  <p>45</p>\r\n  </td>\r\n  <td>\r\n  \r\n  <br></td>\r\n </tr>\r\n</tbody></table></td><td><br></td><td><br></td><td><br></td></tr><tr><td colspan=\"4\"><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td colspan=\"4\"><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr></tbody></table>'),
(9, 3, 3, 'S2 Jadwal Kuliah', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>', 'S2 Jadwal Kuliah', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>'),
(10, 4, 3, 'Biaya Studi Program Magister', NULL, '<table>  <tbody><tr>   <td>   <p><strong>Jenis   Biaya</strong></p>   </td>   <td>   <p><strong>Besar   Biaya (Rp.)</strong></p>   </td>  </tr>  <tr>   <td>   <p>Formulir   Pendaftaran dan Tes Masuk</p>   </td>   <td>   <p>850.000</p>   </td>  </tr>  <tr>   <td>   <p>Daftar   Ulang per semester</p>   </td>   <td>   <p>500.000</p>   </td>  </tr>  <tr>   <td>   <p>Denda   Keterlambatan Daftar Ulang per semester</p>   </td>   <td>   <p>500.000</p>   </td>  </tr>  <tr>   <td>   <p>Dana   Pengembangan Pendidikan</p>   </td>   <td>   <p>9.000.000</p>   </td>  </tr>  <tr>   <td>   <p>Kuliah Semester   I s.d IV, @</p>   </td>   <td>   <p>7.500.000</p>   </td>  </tr>  <tr>   <td>   <p>Kuliah Semester   V</p>   </td>   <td>   <p>2.500.000</p>   </td>  </tr>  <tr>   <td>   <p>Kuliah   sesudah semester V, setiap semester berikutnya bertambah @</p>      </td>   <td>   <p>500.000</p>   </td>  </tr>  <tr>   <td>   <p>Bimbingan   Tesis</p>   </td>   <td>   <p>850.000</p>   </td>  </tr>  <tr>   <td>   <p>Cuti</p>   </td>   <td>   <p>750.000</p>   </td>  </tr>  <tr>   <td>   <p>Aktivasi   sesudah Cuti</p>   </td>   <td>   <p>200.000</p>   </td>  </tr>  <tr>   <td>   <p>Ujian   Tesis</p>   </td>   <td>   <p>850.000</p>   </td>  </tr>  <tr>   <td>   <p>Ujian   Komprehensif</p>   </td>   <td>   <p>800.000</p>   </td>  </tr>  <tr>   <td>   <p>Ijazah dan   Transkrip Akademik</p>   </td>   <td>   <p>800.000</p>   </td>  </tr> </tbody></table>', 'Tuition Fees', NULL, '<table>  <tbody><tr>   <td>   <p><strong>Jenis   Biaya</strong></p>   </td>   <td>   <p><strong>Besar   Biaya (Rp.)</strong></p>   </td>  </tr>  <tr>   <td>   <p>Formulir   Pendaftaran dan Tes Masuk</p>   </td>   <td>   <p>850.000</p>   </td>  </tr>  <tr>   <td>   <p>Daftar   Ulang per semester</p>   </td>   <td>   <p>500.000</p>   </td>  </tr>  <tr>   <td>   <p>Denda   Keterlambatan Daftar Ulang per semester</p>   </td>   <td>   <p>500.000</p>   </td>  </tr>  <tr>   <td>   <p>Dana   Pengembangan Pendidikan</p>   </td>   <td>   <p>9.000.000</p>   </td>  </tr>  <tr>   <td>   <p>Kuliah Semester   I s.d IV, @</p>   </td>   <td>   <p>7.500.000</p>   </td>  </tr>  <tr>   <td>   <p>Kuliah Semester   V</p>   </td>   <td>   <p>2.500.000</p>   </td>  </tr>  <tr>   <td>   <p>Kuliah   sesudah semester V, setiap   semester berikutnya bertambah @</p></td>   <td>   <p>500.000</p>   </td>  </tr>  <tr>   <td>   <p>Bimbingan   Tesis</p>   </td>   <td>   <p>850.000</p>   </td>  </tr>  <tr>   <td>   <p>Cuti</p>   </td>   <td>   <p>750.000</p>   </td>  </tr>  <tr>   <td>   <p>Aktivasi   sesudah Cuti</p>   </td>   <td>   <p>200.000</p>   </td>  </tr>  <tr>   <td>   <p>Ujian   Tesis</p>   </td>   <td>   <p>850.000</p>   </td>  </tr>  <tr>   <td>   <p>Ujian   Komprehensif</p>   </td>   <td>   <p>800.000</p>   </td>  </tr>  <tr>   <td>   <p>Ijazah dan   Transkrip Akademik</p>   </td>   <td>   <p>800.000</p>   </td>  </tr> </tbody></table>'),
(11, 5, 3, 'Penerimaan Mahasiswa Baru Program Magister', NULL, '<p><strong>Waktu Pendaftaran untuk Tahun Akademik 2020-2021<br></strong></p><p><strong></strong><strong>Gelombang I</strong>: dibuka bulan Maret 2020, dengan tes masuk bulan April 2020 (tanggal akan ditentukan kemudian).<strong><br></strong></p><p><strong>Gelombang II</strong>: dibuka bulan April 2020, dengan tes masuk bulan Mei 2020 (tanggal akan ditentukan kemudian).<br><strong></strong></p><p><strong>Dua Jalur Pendaftaran:</strong></p><p><strong><i> <em>1. </em>Jalur Langsung:</i></strong><strong><i> </i></strong>Calon mahasiswa berijazah sarjana S1 dalam bidang studi ilmu filsafat dan memenuhi semua per­sya­ratan dapat langsung masuk ke Program Studi Magister Ilmu Filsafat.  </p><p><strong><i>    2. Jalur Matrikulasi:</i></strong><strong><i> </i></strong>Calon mahasiswa berijazah sarjana S1 dalam bidang <em>bukan filsafat,</em> harus lulus dari Pro­gram Ma­­trikulasi terlebih dahulu, baru dapat masuk ke Program Studi Magister Ilmu Filsafat.  </p>  <p><a name=\"_Toc65678406\"> </a></p>    <p><a name=\"_Toc65678407\"></a><strong></strong></p><p><strong><i>Syarat calon mahasiswa Program Matrikulasi</i></strong><strong></strong></p>  <ul><li>Menyerahkan:<ul><li>1 lembar fotokopi ijazah Sarjana (S1) dan atau ijazah S2 yang telah terakreditasi oleh BAN-PT dan telah ditandasahkan;</li></ul><ul><li>1 lembar fotokopi SK Penyetaraan dari Kemen-ristekdikti RI untuk ijazah dari luar negeri;</li></ul><ul><li>1 lembar fotokopi Transkrip Nilai Akademik S1 dan atau S2 dengan Indeks Prestasi Kumulatif (IPK) S1 minimal 2,75 dan S2 minimal 3,00;</li></ul><ul><li>4 pasfoto ukuran 3x4;</li></ul><ul><li>1 lembar fotokopi KTP terbaru;</li></ul><ul><li>1 lembar fotokopi bukti bayar tes masuk;</li></ul><ul><li>Formulir pendaftaran yang telah diisi lengkap.</li></ul></li><li>Lulus tes Bahasa Inggris dan Kecerdasan Berpikir.</li><li>Melakukan \r\nDaftar Ulang bagi yang lulus tes masuk, serta melunasi biaya perkuliahan\r\n paling lambat dua minggu setelah dinyatakan diterima.</li></ul><p><strong><i>Syarat calon mahasiswa Program Magister</i></strong><strong></strong></p>  <ul><li>Menyerahkan:<ul><li>1 lembar fotokopi ijazah Sarjana (S1) yang telah ter-akreditasi oleh BAN-PT dan telah ditandasahkan.</li></ul><ul><li>1 lembar fotokopi SK Penyetaraan dari Kemenristekdikti RI untuk ijazah dari luar negeri;</li></ul><ul><li>1 lembar fotokopi Transkrip Nilai Akademik S1 dengan Indeks Prestasi Kumulatif (IPK) S1 minimal 2,75;</li></ul><ul><li>4 pasfoto ukuran 3x4;</li></ul><ul><li>1 lembar fotokopi KTP terbaru;</li></ul><ul><li>1 lembar fotokopi bukti bayar tes masuk;</li></ul><ul><li>Formulir pendaftaran yang telah diisi lengkap;</li></ul><ul><li>Surat Ijin Belajar dari Kemenristekdikti RI bagi mahasiswa berkewarganegaraan asing.</li></ul></li><li>Lulus tes Bahasa Inggris.</li><li>Lulus Program Matrikulasi dengan IPK minimal 2,75 (bagi yang harus mengikuti Program Matrikulasi).</li><li>Melakukan daftar ulang bagi yang lulus tes masuk, serta melunasi Biaya SPP dan Biaya Kuliah Semester Pertama paling lambat dua minggu setelah dinyatakan diterima.</li></ul>', 'Admission for New Master\'s Students', NULL, '<p><strong>Waktu Pendaftaran untuk Tahun Akademik 2020-2021<br></strong></p><p><strong></strong><strong>Gelombang I</strong>: dibuka bulan Maret 2020, dengan tes masuk bulan April 2020 (tanggal akan ditentukan kemudian).<strong><br></strong></p><p><strong>Gelombang II</strong>: dibuka bulan April 2020, dengan tes masuk bulan Mei 2020 (tanggal akan ditentukan kemudian).<br><strong></strong></p><p><strong>Dua Jalur Pendaftaran:</strong></p><p><strong><i> <em>1. </em>Jalur Langsung:</i></strong><strong><i> </i></strong>Calon mahasiswa berijazah sarjana S1 dalam bidang studi ilmu filsafat dan memenuhi semua per­sya­ratan dapat langsung masuk ke Program Studi Magister Ilmu Filsafat.  </p><p><strong><i>    2. Jalur Matrikulasi:</i></strong><strong><i> </i></strong>Calon mahasiswa berijazah sarjana S1 dalam bidang <em>bukan filsafat,</em> harus lulus dari Pro­gram Ma­­trikulasi terlebih dahulu, baru dapat masuk ke Program Studi Magister Ilmu Filsafat.  </p>  <p><a name=\"_Toc65678406\"> </a></p>    <p><a name=\"_Toc65678407\"></a><strong></strong></p><p><strong><i>Syarat calon mahasiswa Program Matrikulasi</i></strong><strong></strong></p>  <ul><li>Menyerahkan:<ul><li>1 lembar fotokopi ijazah Sarjana (S1) dan atau ijazah S2 yang telah terakreditasi oleh BAN-PT dan telah ditandasahkan;</li></ul><ul><li>1 lembar fotokopi SK Penyetaraan dari Kemen-ristekdikti RI untuk ijazah dari luar negeri;</li></ul><ul><li>1\r\n lembar fotokopi Transkrip Nilai Akademik S1 dan atau S2 dengan Indeks \r\nPrestasi Kumulatif (IPK) S1 minimal 2,75 dan S2 minimal 3,00;</li></ul><ul><li>4 pasfoto ukuran 3x4;</li></ul><ul><li>1 lembar fotokopi KTP terbaru;</li></ul><ul><li>1 lembar fotokopi bukti bayar tes masuk;</li></ul><ul><li>Formulir pendaftaran yang telah diisi lengkap.</li></ul></li><li>Lulus tes Bahasa Inggris dan Kecerdasan Berpikir.</li><li>Melakukan \r\nDaftar Ulang bagi yang lulus tes masuk, serta melunasi biaya perkuliahan\r\n paling lambat dua minggu setelah dinyatakan diterima.</li></ul><p><strong><i>Syarat calon mahasiswa Program Magister</i></strong><strong></strong></p>  <ul><li>Menyerahkan:<ul><li>1 lembar fotokopi ijazah Sarjana (S1) yang telah ter-akreditasi oleh BAN-PT dan telah ditandasahkan.</li></ul><ul><li>1 lembar fotokopi SK Penyetaraan dari Kemenristekdikti RI untuk ijazah dari luar negeri;</li></ul><ul><li>1 lembar fotokopi Transkrip Nilai Akademik S1 dengan Indeks Prestasi Kumulatif (IPK) S1 minimal 2,75;</li></ul><ul><li>4 pasfoto ukuran 3x4;</li></ul><ul><li>1 lembar fotokopi KTP terbaru;</li></ul><ul><li>1 lembar fotokopi bukti bayar tes masuk;</li></ul><ul><li>Formulir pendaftaran yang telah diisi lengkap;</li></ul><ul><li>Surat Ijin Belajar dari Kemenristekdikti RI bagi mahasiswa berkewarganegaraan asing.</li></ul></li><li>Lulus tes Bahasa Inggris.</li><li>Lulus Program Matrikulasi dengan IPK minimal 2,75 (bagi yang harus mengikuti Program Matrikulasi).</li><li>Melakukan daftar ulang bagi yang lulus tes masuk, serta melunasi Biaya SPP dan Biaya Kuliah Semester Pertama paling lambat dua minggu setelah dinyatakan diterima.</li></ul>'),
(12, 6, 3, 'S2 Staf Akademik', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>', 'S2 Staf Akademik', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>'),
(13, 1, 4, 'Profil', NULL, '<p><strong>PROGRAM STUDI DOKTOR FILSAFAT (S3)</strong><strong></strong></p><p><strong>VISI:</strong> Komunitas akademik penyumbang pengetahuan baru dalam ilmu filsafat, berintegritas, bertanggung jawab sosial.<strong></strong> <br></p><p><strong>MISI:</strong><strong><br></strong>\r\n</p><ol><li><strong> </strong>Mengembangkan pendidikan\r\ndan penelitian mandiri yang mampu memberikan sumbangan baru di bidang ilmu\r\nfilsafat serta melakukan dialog antara ilmu filsafat dan ilmu-ilmu lainnya.</li><li>Mewujudkan komunitas\r\nahli ilmu filsafat yang bersinergi memajukan ilmu filsafat pada tingkat akademik\r\nsetaraf dengan standar internasionaL.</li><li>Mendalami\r\npersoalan-persoalan etis yang dihadapi oleh masyarakat dan menanggapinya secara\r\nintelektual.</li><li>Menghasilkan ahli ilmu\r\nfilsafat yang sanggup menanggapi persoalan manusia dan masyarakat modern dengan\r\nsegala kompleksitasnya.</li></ol><p><strong>TUJUAN</strong>: Membangun suatu Program Studi Doktoral berstandar inter-nasional yang mampu memberikan sumbangan baru di bidang ilmu filsafat, melakukan dialog antara ilmu filsafat dan ilmu lainnya, serta secara filosofis menanggapi persoalan manusia dalam masyarakat modern dengan segala kompleksitasnya.<strong></strong></p>', 'Profile', NULL, '<p><strong>PROGRAM STUDI DOKTOR FILSAFAT (S3)</strong><strong></strong></p><p><strong>VISI:</strong> Komunitas akademik penyumbang pengetahuan baru dalam ilmu filsafat, berintegritas, bertanggung jawab sosial.<strong></strong> <br></p><p><strong>MISI:</strong><strong><br></strong>\r\n</p><ol><li><strong> </strong>Mengembangkan pendidikan\r\ndan penelitian mandiri yang mampu memberikan sumbangan baru di bidang ilmu\r\nfilsafat serta melakukan dialog antara ilmu filsafat dan ilmu-ilmu lainnya.</li><li>Mewujudkan komunitas\r\nahli ilmu filsafat yang bersinergi memajukan ilmu filsafat pada tingkat akademik\r\nsetaraf dengan standar internasionaL.</li><li>Mendalami\r\npersoalan-persoalan etis yang dihadapi oleh masyarakat dan menanggapinya secara\r\nintelektual.</li><li>Menghasilkan ahli ilmu\r\nfilsafat yang sanggup menanggapi persoalan manusia dan masyarakat modern dengan\r\nsegala kompleksitasnya.</li></ol><strong>TUJUAN</strong>: <p>Membangun suatu Program Studi Doktoral berstandar inter-nasional yang mampu memberikan sumbangan baru di bidang ilmu filsafat, melakukan dialog antara ilmu filsafat dan ilmu lainnya, serta secara filosofis menanggapi persoalan manusia dalam masyarakat modern dengan segala kompleksitasnya.</p>');
INSERT INTO `tb_page_sarjana` (`id`, `type_kategori`, `category_id`, `title`, `subtitle`, `content`, `title_en`, `subtitle_en`, `content_en`) VALUES
(14, 2, 4, 'SYARAT KELULUSAN DAN KURIKULUM', NULL, '<p><strong>SYARAT KELULUSAN</strong><br></p><ul><li>Jumlah beban <strong>Program Doktor</strong> Ilmu Filsafat adalah <strong>43 – 55 sks</strong> yang terdiri atas per­ku­liahan khusus un­tuk Program Doktor 15–27 sks dan di­lak­sa­nakan de­ngan seminar. Se­dang­kan be­ban <strong>di­sertasi</strong> adalah <strong>28</strong> (dua puluh de­lap­an) sks.</li></ul><ul><li>Masa studi Program Doktor adalah <strong>10 se­mes­ter</strong> atau 5 tahun. Perpan­jangan mas­a stu­­­­di hanya dapat dilakukan satu kali, untuk jangka waktu dua se­­mester, dengan sya­­rat pe­serta telah menyelesaikan disertasi pa­ling ti­dak se­paruh dari ke­se­luruhan diser­tasi.</li></ul><p><strong>PERSYARATAN SKS MENURUT KATEGORI CALON MAHASISWA<br></strong></p><table>  <tbody><tr>   <td>   <p><strong>No.</strong></p>   </td>   <td>   <p><strong>Kategori Calon Mahasiswa         </strong></p>   </td>   <td>   <p><strong>Jumlah SKS yang harus diambil</strong></p>   </td>  </tr>  <tr>   <td>   <p>1</p>   </td>   <td>         <p>S-1 Non   Filsafat</p>   <p>S-2 Non   Filsafat</p>   </td>   <td>   <ul><li>36 SKS di Program Matrikulasi selama 2 semester dengan IPK min   3,00 </li><li>Min 12 SKS MK Penunjang dari Program Magister</li><li>12 SKS Seminar Doktoral, 3 SKS Metodologi Penelitian Filsafat   & Penulisan Disertasi, dan 28 SKS Disertasi</li></ul>            </td>  </tr>  <tr>   <td>   <p>2</p>   </td>   <td>      <p>S-1 Filsafat</p>   <p>S-2 Non   Filsafat</p>   </td>   <td>            <ul><li>Min 12 SKS MK Penunjang dari Program Magister</li><li>12 SKS Seminar Doktoral, 3 SKS Metodologi Penelitian Filsafat   & Penulisan Disertasi, dan 28 SKS Disertasi</li></ul></td>  </tr>  <tr>   <td>   <p>3</p>   </td>   <td>         <p>S-1 Non   Filsafat</p>   <p>S-2 Filsafat</p>   </td>   <td>            <ul><li>MK Penunjang dari Program Magister diambil sesuai dengan kebutuhan  \r\n tema disertasi dan jumlah MK ditetapkan menurut petunjuk calon promotor</li><li>Min 12 SKS Seminar Doktoral dan 3 SKS Metodologi Penelitian Filsafat   & Penulisan Disertasi, dan 28 SKS Disertasi</li></ul></td>  </tr>  <tr>   <td>   <p>4</p>   </td>   <td>         <p>S-1   Filsafat</p>   <p>S-2   Filsafat</p>   </td>   <td>            <ul><li>MK Penunjang dari Program Magister diambil sesuai dengan kebutuhan  \r\n tema disertasi dan jumlah MK ditetapkan menurut petunjuk calon promotor</li><li>Wajib\r\n mengambil 12 SKS Seminar Doktoral dan 3 SKS Metodologi   Penelitian \r\nFilsafat & Penulisan Disertasi, dan 28 SKS Disertasi</li></ul></td>  </tr> </tbody></table><strong><i></i><em><i></i></em><p>SYARAT CALON MAHASISWA PROGRAM MATRIKULASI</p></strong><ul><li>Menyerahkan:<ul><li>1 lembar fotokopi ijazah Sarjana (S1) dan atau ijazah S2 yang telah terakreditasi oleh BAN-PT dan telah ditandasahkan;</li></ul><ul><li>1 lembar fotokopi SK Penyetaraan dari Kemen-ristekdikti RI untuk ijazah dari luar negeri;</li></ul><ul><li>1\r\n lembar fotokopi Transkrip Nilai Akademik S1 dan atau S2 dengan Indeks \r\nPrestasi Kumulatif (IPK) S1 minimal 2,75 dan S2 minimal 3,00;</li></ul><ul><li>4 pasfoto ukuran 3x4;</li></ul><ul><li>1 lembar fotokopi KTP terbaru;</li></ul><ul><li>1 lembar fotokopi bukti bayar tes masuk;</li></ul><ul><li>Formulir pendaftaran yang telah diisi lengkap.</li></ul></li><li>Lulus tes Bahasa Inggris dan Kecerdasan Berpikir.</li><li>Melakukan \r\nDaftar Ulang bagi yang lulus tes masuk, serta melunasi biaya perkuliahan\r\n paling lambat dua minggu setelah dinyatakan diterima.</li></ul><p><strong>Tabel Mata Kuliah Program Matrikulasi:</strong></p>  <table>  <tbody><tr>   <td>   <p><strong>No</strong></p>   </td>   <td>   <p><strong>Kode MK</strong></p>   </td>   <td>   <p><strong>Nama Mata Kuliah</strong></p>   </td>   <td>   <p><strong>SKS</strong></p>   </td>  </tr>  <tr>   <td>   <p>1</p>   </td>   <td>   <p>016</p>   </td>   <td>   <p>Pengantar Studi Filsafat</p>   </td>   <td>   <p>1</p>   </td>  </tr>  <tr>   <td>   <p>2</p>   </td>   <td>   <p>017</p>   </td>   <td>   <p>Logika</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>3</p>   </td>   <td>   <p>019</p>   </td>   <td>   <p>Filsafat Manusia</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>4</p>   </td>   <td>   <p>020</p>   </td>   <td>   <p>Etika</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>5</p>   </td>   <td>   <p>021</p>   </td>   <td>   <p>Metafisika</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>6</p>   </td>   <td>   <p>022</p>   </td>   <td>   <p>Filsafat Imu Pengetahuan</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>7</p>   </td>   <td>   <p>023</p>   </td>   <td>   <p>Filsafat Ekonomi, Sosial, Politik</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>8</p>   </td>   <td>   <p>024</p>   </td>   <td>   <p>Filsafat Ketuhanan</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>9</p>   </td>   <td>   <p>025</p>   </td>   <td>   <p>Sejarah Filsafat Yunani/Abad Pertengahan</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>10</p>   </td>   <td>   <p>026</p>   </td>   <td>   <p>Sejarah Filsafat Barat/Modern I</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>11</p>   </td>   <td>   <p>027</p>   </td>   <td>   <p>Sejarah Filsafat Barat/Modern II</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>12</p>   </td>   <td>   <p>028</p>   </td>   <td>   <p>Sejarah Filsafat Timur </p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>13</p>   </td>   <td>   <p>029</p>   </td>   <td>   <p>Sejarah Filsafat Kontemporer</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>14</p>   </td>   <td>   <p>030</p>   </td>   <td>   <p>Menulis</p>   </td>   <td>   <p>1</p>   </td>  </tr> </tbody></table><p><strong>Tabel Mata Kuliah Program Doktor</strong></p>  <table>  <tbody><tr>   <td>   <p><strong>No</strong></p>   </td>   <td>   <p><strong>Kode MK  </strong></p>   </td>   <td>   <p><strong>Mata Kuliah</strong></p>   </td>   <td>   <p><strong>SKS</strong></p>   </td>  </tr>  <tr>   <td>   <p>1</p>   </td>   <td>   <p>101</p>   </td>   <td>   <p>Metodelogi Penelitian & Penulisan Disertasi</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>2</p>   </td>   <td>   <p>102</p>   </td>   <td>   <p>Epistemologi dan Filsafat Ilmu</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>3</p>   </td>   <td>   <p>103</p>   </td>   <td>   <p>Teori-teori Kebudayaan & Ilmu-Ilmu Sosial</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>4</p>   </td>   <td>   <p>104</p>   </td>   <td>   <p>Etika Spesialistik</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>5</p>   </td>   <td>   <p>105</p>   </td>   <td>   <p>Filsafat Kontemporer</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>      <br></td>   <td>      <br></td>   <td>   <p>Disertasi</p>   </td>   <td>   <p>28</p>   </td>  </tr> </tbody></table><p><strong>Tabel Mata Kuliah Penunjang dari Program Magister</strong></p>  <table>  <tbody><tr>   <td>   <p><strong>No</strong></p>   </td>   <td>   <p><strong>Kode MK    </strong></p>   </td>   <td>   <p><strong>Mata Kuliah</strong></p>   </td>   <td>   <p><strong>SKS</strong></p>   </td>  </tr>  <tr>   <td>   <p>1</p>   </td>   <td>   <p>801</p>   </td>   <td>   <p>Antropologi Filosofis</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>2</p>   </td>   <td>   <p>802</p>   </td>   <td>   <p>Epistemologi/Filsafat Ilmu Pengetahuan</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>3</p>   </td>   <td>   <p>803</p>   </td>   <td>   <p>Filsafat Praktis</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>4</p>   </td>   <td>   <p>804</p>   </td>   <td>   <p>Filsafat Agama</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>5</p>   </td>   <td>   <p>805</p>   </td>   <td>   <p>Filsafat Asia Selatan dan Timur</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>6</p>   </td>   <td>   <p>806</p>   </td>   <td>   <p>Pemikiran Islam Kontemporer</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>7</p>   </td>   <td>   <p>807</p>   </td>   <td>   <p>Filsafat Abad 20/21</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>8</p>   </td>   <td>   <p>808</p>   </td>   <td>   <p>Seminar Tesis</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>9</p>   </td>   <td>   <p>424</p>   </td>   <td>   <p>Fenomeologi Agama: Tuhan, Tubuh dan Alteritas</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>10</p>   </td>   <td>   <p>632</p>   </td>   <td>   <p>Filsafat Kebudayaan</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>11</p>   </td>   <td>   <p>634</p>   </td>   <td>   <p>Lensa Indonesia: Perihal Silang Budaya</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>12</p>   </td>   <td>   <p>635</p>   </td>   <td>   <p>Menafsir Teks</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>13</p>   </td>   <td>   <p>727</p>   </td>   <td>   <p>Gaya Filsafat Nietzche dan Genealogi Moral</p>   </td>   <td>   <p>3</p>   </td>  </tr> </tbody></table><p><br><strong></strong></p><table><tbody><tr><td colspan=\"2\">\r\n\r\n<table>\r\n <tbody><tr>\r\n  <td>\r\n\r\n<table>\r\n <tbody><tr>\r\n  <td><br></td>\r\n  <td><br></td>\r\n  <td><br></td>\r\n </tr>\r\n <tr>\r\n  <td><br></td>\r\n  <td><br></td>\r\n  <td><br></td>\r\n </tr>\r\n <tr>\r\n  <td><br></td>\r\n  <td><br></td>\r\n  <td><br></td>\r\n </tr>\r\n <tr>\r\n  <td><br></td>\r\n  <td><br></td>\r\n  <td><br></td>\r\n </tr>\r\n <tr>\r\n  <td><br></td>\r\n  <td><br></td>\r\n  <td><br></td>\r\n </tr>\r\n</tbody></table></td>\r\n  <td><br></td>\r\n  <td><br></td>\r\n </tr>\r\n <tr>\r\n  <td><br></td>\r\n  <td><br></td>\r\n  <td><br></td>\r\n </tr>\r\n <tr>\r\n  <td><br></td>\r\n  <td><br></td>\r\n  <td><br></td>\r\n </tr>\r\n <tr>\r\n  <td><br></td>\r\n  <td><br></td>\r\n  <td><br></td>\r\n </tr>\r\n <tr>\r\n  <td><br></td>\r\n  <td><br></td>\r\n  <td><br></td>\r\n </tr>\r\n</tbody></table></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td rowspan=\"2\"><br></td><td rowspan=\"4\"><br></td></tr><tr><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td rowspan=\"2\"><br></td></tr><tr><td><br></td><td><br></td><td><br></td></tr><tr><td colspan=\"3\"><br></td><td><br></td><td><br></td></tr><tr><td colspan=\"3\"><br></td><td><br></td><td><br></td>  </tr> </tbody></table>', 'DEGREE FULFILMENT AND CURRICULUM', NULL, '<p><strong>DEGREE FULFILMENT</strong><br></p><ul><li>Jumlah beban <strong>Program Doktor</strong> Ilmu Filsafat adalah <strong>43 – 55 sks</strong> yang terdiri atas per­ku­liahan khusus un­tuk Program Doktor 15–27 sks dan di­lak­sa­nakan de­ngan seminar. Se­dang­kan be­ban <strong>di­sertasi</strong> adalah <strong>28</strong> (dua puluh de­lap­an) sks.</li></ul><ul><li>Masa studi Program Doktor adalah <strong>10 se­mes­ter</strong>\r\n atau 5 tahun. Perpan­jangan mas­a stu­­­­di hanya dapat dilakukan satu \r\nkali, untuk jangka waktu dua se­­mester, dengan sya­­rat pe­serta telah \r\nmenyelesaikan disertasi pa­ling ti­dak se­paruh dari ke­se­luruhan \r\ndiser­tasi.</li></ul><p><strong>PERSYARATAN SKS MENURUT KATEGORI CALON MAHASISWA</strong><br></p><table>  <tbody><tr>   <td>   <p><strong>No.</strong></p>   </td>   <td>   <p><strong>Kategori Calon Mahasiswa  </strong></p>   </td>   <td>   <p><strong>Jumlah SKS yang harus diambil</strong></p>   </td>  </tr>  <tr>   <td>   <p>1</p>   </td>   <td>         <p>S-1 Non   Filsafat</p>   <p>S-2 Non   Filsafat</p>   </td>   <td>   <ul><li>36 SKS di Program Matrikulasi selama 2 semester dengan IPK min   3,00 </li><li>Min 12 SKS MK Penunjang dari Program Magister</li><li>12 SKS Seminar Doktoral, 3 SKS Metodologi Penelitian Filsafat   & Penulisan Disertasi, dan 28 SKS Disertasi</li></ul>            </td>  </tr>  <tr>   <td>   <p>2</p>   </td>   <td>      <p>S-1 Filsafat</p>   <p>S-2 Non   Filsafat</p>   </td>   <td>            <ul><li>Min 12 SKS MK Penunjang dari Program Magister</li><li>12 SKS Seminar Doktoral, 3 SKS Metodologi Penelitian Filsafat   & Penulisan Disertasi, dan 28 SKS Disertasi</li></ul></td>  </tr>  <tr>   <td>   <p>3</p>   </td>   <td>         <p>S-1 Non   Filsafat</p>   <p>S-2 Filsafat</p>   </td>   <td>            <ul><li>MK Penunjang dari Program Magister diambil sesuai dengan kebutuhan  \r\n tema disertasi dan jumlah MK ditetapkan menurut petunjuk calon promotor</li><li>Min 12 SKS Seminar Doktoral dan 3 SKS Metodologi Penelitian Filsafat   & Penulisan Disertasi, dan 28 SKS Disertasi</li></ul></td>  </tr>  <tr>   <td>   <p>4</p>   </td>   <td>         <p>S-1   Filsafat</p>   <p>S-2   Filsafat</p>   </td>   <td>            <ul><li>MK Penunjang dari Program Magister diambil sesuai dengan kebutuhan  \r\n tema disertasi dan jumlah MK ditetapkan menurut petunjuk calon promotor</li><li>Wajib\r\n mengambil 12 SKS Seminar Doktoral dan 3 SKS Metodologi   Penelitian \r\nFilsafat & Penulisan Disertasi, dan 28 SKS Disertasi</li></ul></td>  </tr> </tbody></table><strong><i><strong></strong></i></strong><p><strong>REQUIREMENTS FOR NEW MATRICULATION STUDENTS</strong></p><ul><li>Menyerahkan:<ul><li>1 lembar fotokopi ijazah Sarjana (S1) dan atau ijazah S2 yang telah terakreditasi oleh BAN-PT dan telah ditandasahkan;</li></ul><ul><li>1 lembar fotokopi SK Penyetaraan dari Kemen-ristekdikti RI untuk ijazah dari luar negeri;</li></ul><ul><li>1\r\n lembar fotokopi Transkrip Nilai Akademik S1 dan atau S2 dengan Indeks \r\nPrestasi Kumulatif (IPK) S1 minimal 2,75 dan S2 minimal 3,00;</li></ul><ul><li>4 pasfoto ukuran 3x4;</li></ul><ul><li>1 lembar fotokopi KTP terbaru;</li></ul><ul><li>1 lembar fotokopi bukti bayar tes masuk;</li></ul><ul><li>Formulir pendaftaran yang telah diisi lengkap.</li></ul></li><li>Lulus tes Bahasa Inggris dan Kecerdasan Berpikir.</li><li>Melakukan \r\nDaftar Ulang bagi yang lulus tes masuk, serta melunasi biaya perkuliahan\r\n paling lambat dua minggu setelah dinyatakan diterima.</li></ul><p><strong>CURRICULUM<br></strong></p><p><strong></strong></p><p><strong>Tabel Mata Kuliah Program Matrikulasi:</strong></p>  <table>  <tbody><tr>   <td>   <p><strong>No</strong></p>   </td>   <td>   <p><strong>Kode MK</strong></p>   </td>   <td>   <p><strong>Nama Mata Kuliah</strong></p>   </td>   <td>   <p><strong>SKS</strong></p>   </td>  </tr>  <tr>   <td>   <p>1</p>   </td>   <td>   <p>016</p>   </td>   <td>   <p>Pengantar Studi Filsafat</p>   </td>   <td>   <p>1</p>   </td>  </tr>  <tr>   <td>   <p>2</p>   </td>   <td>   <p>017</p>   </td>   <td>   <p>Logika</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>3</p>   </td>   <td>   <p>019</p>   </td>   <td>   <p>Filsafat Manusia</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>4</p>   </td>   <td>   <p>020</p>   </td>   <td>   <p>Etika</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>5</p>   </td>   <td>   <p>021</p>   </td>   <td>   <p>Metafisika</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>6</p>   </td>   <td>   <p>022</p>   </td>   <td>   <p>Filsafat Imu Pengetahuan</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>7</p>   </td>   <td>   <p>023</p>   </td>   <td>   <p>Filsafat Ekonomi, Sosial, Politik</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>8</p>   </td>   <td>   <p>024</p>   </td>   <td>   <p>Filsafat Ketuhanan</p>   </td>   <td>   <p>4</p>   </td>  </tr>  <tr>   <td>   <p>9</p>   </td>   <td>   <p>025</p>   </td>   <td>   <p>Sejarah Filsafat Yunani/Abad Pertengahan</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>10</p>   </td>   <td>   <p>026</p>   </td>   <td>   <p>Sejarah Filsafat Barat/Modern I</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>11</p>   </td>   <td>   <p>027</p>   </td>   <td>   <p>Sejarah Filsafat Barat/Modern II</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>12</p>   </td>   <td>   <p>028</p>   </td>   <td>   <p>Sejarah Filsafat Timur </p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>13</p>   </td>   <td>   <p>029</p>   </td>   <td>   <p>Sejarah Filsafat Kontemporer</p>   </td>   <td>   <p>2</p>   </td>  </tr>  <tr>   <td>   <p>14</p>   </td>   <td>   <p>030</p>   </td>   <td>   <p>Menulis</p>   </td>   <td>   <p>1</p>   </td>  </tr> </tbody></table><p><strong>Tabel Mata Kuliah Program Doktor</strong></p>  <table>  <tbody><tr>   <td>   <p><strong>No</strong></p>   </td>   <td>   <p><strong>Kode MK</strong></p>   </td>   <td>   <p><strong>Mata Kuliah</strong></p>   </td>   <td>   <p><strong>SKS</strong></p>   </td>  </tr>  <tr>   <td>   <p>1</p>   </td>   <td>   <p>101</p>   </td>   <td>   <p>Metodelogi Penelitian & Penulisan Disertasi</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>2</p>   </td>   <td>   <p>102</p>   </td>   <td>   <p>Epistemologi dan Filsafat Ilmu</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>3</p>   </td>   <td>   <p>103</p>   </td>   <td>   <p>Teori-teori Kebudayaan & Ilmu-Ilmu Sosial</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>4</p>   </td>   <td>   <p>104</p>   </td>   <td>   <p>Etika Spesialistik</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>   <p>5</p>   </td>   <td>   <p>105</p>   </td>   <td>   <p>Filsafat Kontemporer</p>   </td>   <td>   <p>3</p>   </td>  </tr>  <tr>   <td>      <br></td>   <td>      <br></td>   <td>   <p>Disertasi</p>   </td>   <td>   <p>28</p>   </td>  </tr> </tbody></table><table><tbody><tr><td colspan=\"2\"><p><strong>Tabel\r\nMata Kuliah Penunjang dari Program Magister</strong></p><table><tbody><tr><td><p><strong>No</strong></p></td><td><p><strong>Kode MK    </strong></p></td><td><p><strong>Mata Kuliah</strong></p></td><td><p><strong>SKS</strong></p></td></tr><tr><td><p>1</p></td><td><p>801</p></td><td><p>Antropologi Filosofis</p></td><td><p>3</p></td></tr><tr><td><p>2</p></td><td><p>802</p></td><td><p>Epistemologi/Filsafat Ilmu Pengetahuan</p></td><td><p>3</p></td></tr><tr><td><p>3</p></td><td><p>803</p></td><td><p>Filsafat Praktis</p></td><td><p>3</p></td></tr><tr><td><p>4</p></td><td><p>804</p></td><td><p>Filsafat Agama</p></td><td><p>3</p></td></tr><tr><td><p>5</p></td><td><p>805</p></td><td><p>Filsafat Asia Selatan dan Timur</p></td><td><p>3</p></td></tr><tr><td><p>6</p></td><td><p>806</p></td><td><p>Pemikiran Islam Kontemporer</p></td><td><p>3</p></td></tr><tr><td><p>7</p></td><td><p>807</p></td><td><p>Filsafat Abad 20/21</p></td><td><p>3</p></td></tr><tr><td><p>8</p></td><td><p>808</p></td><td><p>Seminar Tesis</p></td><td><p>3</p></td></tr><tr><td><p>9</p></td><td><p>424</p></td><td><p>Fenomeologi Agama: Tuhan, Tubuh dan Alteritas</p></td><td><p>3</p></td></tr><tr><td><p>10</p></td><td><p>632</p></td><td><p>Filsafat Kebudayaan</p></td><td><p>3</p></td></tr><tr><td><p>11</p></td><td><p>634</p></td><td><p>Lensa Indonesia: Perihal Silang Budaya</p></td><td><p>3</p></td></tr><tr><td><p>12</p></td><td><p>635</p></td><td><p>Menafsir Teks</p></td><td><p>3</p></td></tr><tr><td><p>13</p></td><td><p>727</p></td><td><p>Gaya Filsafat Nietzche dan Genealogi Moral</p></td><td><p>3</p></td></tr></tbody></table></td><td colspan=\"2\"><br></td><td colspan=\"2\"><br></td><td colspan=\"2\"><br></td></tr><tr><td><br></td><td colspan=\"2\"><br></td><td colspan=\"2\" rowspan=\"2\"><br></td><td colspan=\"2\" rowspan=\"4\"><br></td><td><br></td></tr><tr><td><br></td><td colspan=\"2\"><br></td><td><br></td></tr><tr><td><br></td><td colspan=\"2\"><br></td><td colspan=\"2\" rowspan=\"2\"><br></td><td><br></td></tr><tr><td><br></td><td colspan=\"2\"><br></td><td><br></td></tr><tr><td colspan=\"4\"><br></td><td colspan=\"2\"><br></td><td colspan=\"2\"><br></td>  </tr> </tbody></table>'),
(15, 3, 4, 'S3 Jadwal Kuliah', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>', 'S3 Jadwal Kuliah', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>'),
(16, 4, 4, 'Biaya Studi Program Doktor', NULL, '<table>  <tbody><tr>   <td>   <p><strong>No</strong></p>   </td>   <td>   <p><strong>Jenis Biaya</strong></p>   </td>   <td>   <p><strong>Jumlah </strong></p>   </td>  </tr>  <tr>   <td>   <p>1</p>   </td>   <td>   <p>Pendaftaran dan Tes Masuk</p>   </td>   <td>   <p>Rp.2.700.000</p>   </td>  </tr>  <tr>   <td>   <p>2</p>   </td>   <td>   <p>Tes Masuk dari Program Matrikulasi STF Driyarkara</p>   </td>   <td>   <p>Rp.700.000</p>   </td>  </tr>  <tr>   <td>   <p>3</p>   </td>   <td>   <p>Daftar Ulang per Semester</p>   </td>   <td>   <p>Rp.600.000</p>   </td>  </tr>  <tr>   <td>   <p>4</p>   </td>   <td>   <p>Denda Keterlambatan Daftar Ulang per Semester</p>   </td>   <td>   <p>Rp.600.000</p>   </td>  </tr>  <tr>   <td>   <p>5</p>   </td>   <td>   <p>Biaya Cuti per Semester</p>   </td>   <td>   <p>Rp.1.000.000</p>   </td>  </tr>  <tr>   <td>   <p>6</p>   </td>   <td>   <p>Aktivasi Cuti Kuliah 1 Semester</p>   </td>   <td>   <p>Rp.200.000</p>   </td>  </tr>  <tr>   <td>   <p>7</p>   </td>   <td>   <p>Dana Pengembangan Pendidikan</p>   </td>   <td>   <p>Rp.10.000.000</p>   </td>  </tr>  <tr>   <td>   <p>8</p>   </td>   <td>   <p>Biaya Kuliah (Semester I sd VI) per Semester</p>   </td>   <td>   <p>Rp.8.500.000</p>   </td>  </tr>  <tr>   <td>   <p>9</p>   </td>   <td>   <p>Biaya KuliahSemester VII</p>   </td>   <td>   <p>Rp.3.500.000</p>   </td>  </tr>  <tr>   <td>   <p>10</p>   </td>   <td>   <p>Biaya Kuliah sesudah Semester VII dst setiap   semester bertambah @</p>   </td>   <td>   <p>Rp.1.000.000</p>   </td>  </tr>  <tr>   <td>   <p>11</p>   </td>   <td>   <p>Bimbingan Disertasi per Semester   (mulai dihitung sejak Ujian Proposal/Kualifikasi selesai)</p>   </td>   <td>   <p>Rp.1.500.000</p>   </td>  </tr>  <tr>   <td>   <p>12</p>   </td>   <td>   <p>Ujian Proposal/Kualifikasi</p>   </td>   <td>   <p>Rp.2.000.000</p>   </td>  </tr>  <tr>   <td>   <p>13</p>   </td>   <td>   <p>Ujian Penelitian</p>   </td>   <td>   <p>Rp.5.000.000</p>   </td>  </tr>  <tr>   <td>   <p>14</p>   </td>   <td>   <p>Ujian Pra-Promosi</p>   </td>   <td>   <p>Rp.5.000.000</p>   </td>  </tr>  <tr>   <td>   <p>15</p>   </td>   <td>   <p>Ujian Promosi (Biaya Upacara Promosi ditanggung   mahasiswa ybs)</p>   </td>   <td>   <p>Rp.8.000.000</p>   </td>  </tr>  <tr>   <td>   <p>16</p>   </td>   <td>   <p>Biaya Ijazah & Transkrip Nilai</p>   </td>   <td>   <p>Rp.800.000</p>   </td>  </tr> </tbody></table>', 'Tuition Fees', NULL, '<table>  <tbody><tr>   <td>   <p><strong>No</strong></p>   </td>   <td>   <p><strong>Jenis Biaya</strong></p>   </td>   <td>   <p><strong>Jumlah </strong></p>   </td>  </tr>  <tr>   <td>   <p>1</p>   </td>   <td>   <p>Pendaftaran dan Tes Masuk</p>   </td>   <td>   <p>Rp.2.700.000</p>   </td>  </tr>  <tr>   <td>   <p>2</p>   </td>   <td>   <p>Tes Masuk dari Program Matrikulasi STF Driyarkara</p>   </td>   <td>   <p>Rp.700.000</p>   </td>  </tr>  <tr>   <td>   <p>3</p>   </td>   <td>   <p>Daftar Ulang per Semester</p>   </td>   <td>   <p>Rp.600.000</p>   </td>  </tr>  <tr>   <td>   <p>4</p>   </td>   <td>   <p>Denda Keterlambatan Daftar Ulang per Semester</p>   </td>   <td>   <p>Rp.600.000</p>   </td>  </tr>  <tr>   <td>   <p>5</p>   </td>   <td>   <p>Biaya Cuti per Semester</p>   </td>   <td>   <p>Rp.1.000.000</p>   </td>  </tr>  <tr>   <td>   <p>6</p>   </td>   <td>   <p>Aktivasi Cuti Kuliah 1 Semester</p>   </td>   <td>   <p>Rp.200.000</p>   </td>  </tr>  <tr>   <td>   <p>7</p>   </td>   <td>   <p>Dana Pengembangan Pendidikan</p>   </td>   <td>   <p>Rp.10.000.000</p>   </td>  </tr>  <tr>   <td>   <p>8</p>   </td>   <td>   <p>Biaya Kuliah (Semester I sd VI) per Semester</p>   </td>   <td>   <p>Rp.8.500.000</p>   </td>  </tr>  <tr>   <td>   <p>9</p>   </td>   <td>   <p>Biaya KuliahSemester VII</p>   </td>   <td>   <p>Rp.3.500.000</p>   </td>  </tr>  <tr>   <td>   <p>10</p>   </td>   <td>   <p>Biaya Kuliah sesudah Semester VII dst setiap   semester bertambah @</p>   </td>   <td>   <p>Rp.1.000.000</p>   </td>  </tr>  <tr>   <td>   <p>11</p>   </td>   <td>   <p>Bimbingan Disertasi per Semester   (mulai dihitung sejak Ujian Proposal/Kualifikasi selesai)</p>   </td>   <td>   <p>Rp.1.500.000</p>   </td>  </tr>  <tr>   <td>   <p>12</p>   </td>   <td>   <p>Ujian Proposal/Kualifikasi</p>   </td>   <td>   <p>Rp.2.000.000</p>   </td>  </tr>  <tr>   <td>   <p>13</p>   </td>   <td>   <p>Ujian Penelitian</p>   </td>   <td>   <p>Rp.5.000.000</p>   </td>  </tr>  <tr>   <td>   <p>14</p>   </td>   <td>   <p>Ujian Pra-Promosi</p>   </td>   <td>   <p>Rp.5.000.000</p>   </td>  </tr>  <tr>   <td>   <p>15</p>   </td>   <td>   <p>Ujian Promosi (Biaya Upacara Promosi ditanggung   mahasiswa ybs)</p>   </td>   <td>   <p>Rp.8.000.000</p>   </td>  </tr>  <tr>   <td>   <p>16</p>   </td>   <td>   <p>Biaya Ijazah & Transkrip Nilai</p>   </td>   <td>   <p>Rp.800.000</p>   </td>  </tr> </tbody></table>'),
(17, 5, 4, 'S3 Penerimaan Mahasiswa Baru Program Doktor', NULL, '<p><strong></strong>\r\n</p>\r\n<p><strong>Waktu Pendaftaran untuk Tahun Akademik 2020-2021</strong>\r\n</p>\r\n<p><strong>Gelombang I</strong>: dibuka bulan Maret 2020, dengan tes masuk bulan April 2020 (tanggal akan ditentukan kemudian).\r\n</p>\r\n<p><strong>Gelombang II</strong>: dibuka bulan April 2020, dengan tes masuk bulan Mei 2020 (tanggal akan ditentukan kemudian).\r\n</p>\r\n<p><strong>EMPAT JALUR PENDAFTARAN MENURUT KATEGORI CALON MAHASISWA DAN JUMLAH SKS YANG HARUS DIAMBIL</strong>\r\n</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n	<td>\r\n		<p><strong>No.</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p><strong>Kategori Calon Mahasiswa         </strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p><strong>Jumlah SKS yang harus diambil</strong>\r\n		</p>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p>1\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>S-1 Non   Filsafat\r\n		</p>\r\n		<p>S-2 Non   Filsafat\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<ul>\r\n			<li>36 SKS di Program Matrikulasi selama 2 semester dengan IPK min   3,00 </li>\r\n			<li>Min 12 SKS MK Penunjang dari Program Magister</li>\r\n			<li>12 SKS Seminar Doktoral, 3 SKS Metodologi Penelitian Filsafat   & Penulisan Disertasi, dan 28 SKS Disertasi</li>\r\n		</ul>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p>2\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>S-1 Filsafat\r\n		</p>\r\n		<p>S-2 Non   Filsafat\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<ul>\r\n			<li>Min 12 SKS MK Penunjang dari Program Magister</li>\r\n			<li>12 SKS Seminar Doktoral, 3 SKS Metodologi Penelitian Filsafat   & Penulisan Disertasi, dan 28 SKS Disertasi</li>\r\n		</ul>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p>3\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>S-1 Non   Filsafat\r\n		</p>\r\n		<p>S-2 Filsafat\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<ul>\r\n			<li>MK Penunjang dari Program Magister diambil sesuai dengan kebutuhan  \r\n tema disertasi dan jumlah MK ditetapkan menurut petunjuk calon promotor\r\n			</li>\r\n			<li>Min 12 SKS Seminar Doktoral dan 3 SKS Metodologi Penelitian Filsafat   & Penulisan Disertasi, dan 28 SKS Disertasi</li>\r\n		</ul>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p>4\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>S-1   Filsafat\r\n		</p>\r\n		<p>S-2   Filsafat\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<ul>\r\n			<li>MK Penunjang dari Program Magister diambil sesuai dengan kebutuhan  \r\n tema disertasi dan jumlah MK ditetapkan menurut petunjuk calon promotor\r\n			</li>\r\n			<li>Wajib\r\n mengambil 12 SKS Seminar Doktoral dan 3 SKS Metodologi   Penelitian \r\nFilsafat & Penulisan Disertasi, dan 28 SKS Disertasi\r\n			</li>\r\n		</ul>\r\n	</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><i>SYARAT CALON MAHASISWA PROGRAM MATRIKULASI</i></strong><strong></strong>\r\n</p>\r\n<ul>\r\n	<li>Menyerahkan:\r\n	<ul>\r\n		<li>1 lembar fotokopi ijazah Sarjana (S1) dan atau ijazah S2 yang telah terakreditasi oleh BAN-PT dan telah ditandasahkan;</li>\r\n	</ul>\r\n	<ul>\r\n		<li>1 lembar fotokopi SK Penyetaraan dari Kemen-ristekdikti RI untuk ijazah dari luar negeri;</li>\r\n	</ul>\r\n	<ul>\r\n		<li>1\r\n lembar fotokopi Transkrip Nilai Akademik S1 dan atau S2 dengan Indeks \r\nPrestasi Kumulatif (IPK) S1 minimal 2,75 dan S2 minimal 3,00;\r\n		</li>\r\n	</ul>\r\n	<ul>\r\n		<li>4 pasfoto ukuran 3x4;</li>\r\n	</ul>\r\n	<ul>\r\n		<li>1 lembar fotokopi KTP terbaru;</li>\r\n	</ul>\r\n	<ul>\r\n		<li>1 lembar fotokopi bukti bayar tes masuk;</li>\r\n	</ul>\r\n	<ul>\r\n		<li>Formulir pendaftaran yang telah diisi lengkap.</li>\r\n	</ul></li>\r\n	<li>Lulus tes Bahasa Inggris dan Kecerdasan Berpikir.</li>\r\n	<li>Melakukan \r\nDaftar Ulang bagi yang lulus tes masuk, serta melunasi biaya perkuliahan\r\n paling lambat dua minggu setelah dinyatakan diterima.\r\n	</li>\r\n</ul>\r\n<p><strong><i>SYARAT CALON MAHASISWA PROGRAM DOKTOR</i></strong><strong></strong>\r\n</p>\r\n<ol>\r\n	<li>Calon yang dapat mendaftarkan Tes Masuk Program Doktor adalah lulus­an S2 dari bidang ilmu apa pun yang diakui, dan dibawah naungan Ke­menristekdikti RI, dengan IPK Kelulusan S2 minimal 3,00.</li>\r\n	<li>Calon yang berasal dari bidang studi non-filsafat (S1 dan S2 non-filsafat) wajib mengikuti Program Matrikulasi terlebih dahulu. IPK kelulusan Pro­gram Matrikulasi minimal 3,00 untuk dapat meneruskan ke Program Dok­tor.</li>\r\n	<li>Persyaratan administratif yang harus dipenuhi oleh calon peserta Tes ma­suk Program Doktor, menyerahkan:\r\n	<ul>\r\n		<li>1 lembar fotokopi ijazah S1 dan S2 masing-masing dengan tandasah ser­ta di­lam­piri Transkrip Nilai yang bertandasah. Ija­zah dari Luar Negeri harus dilampiri Surat Kete­rang­an Penyetaraan dari Kemenristekdikti RI.</li>\r\n	</ul>\r\n	<ul>\r\n		<li>4 lembar pasfoto ukuran 3 x 4.</li>\r\n	</ul>\r\n	<ul>\r\n		<li>1 lembar fotokopi bukti pembayaran tes masuk (via bank transfer).</li>\r\n	</ul>\r\n	<ul>\r\n		<li>1 lembar fotokopi Sertifikat TOEFL de­­­ngan score minimal 550 atau IELTS score minimal 6.</li>\r\n		<li>Rencana Penelitian (Pra-Proposal) disertasi yang telah disetujui oleh salah satu guru besar yang terdiri atas <u>+</u> 3 halaman yang berisi:\r\n		<ul>\r\n			<li>judul/topik/tema rencana pene­litian yang dibahas;</li>\r\n			<li>latar belakang permasalahan yang di­ba­has;</li>\r\n			<li>rumusan permasalahan/fokus/tesis;</li>\r\n			<li>sistematika disertasi;</li>\r\n			<li>kepustakaan pokok.</li>\r\n		</ul></li>\r\n		<li>Surat Rekomendasi da­­ri 2 (dua) akademisi yang me­nge­tahui ke­mampuan akademis calon peserta selama studi Pro­gram S2.</li>\r\n		<li>Contoh tulisan/penelitian mandiri karyanya.</li>\r\n		<li>Formulir pendaftaran yang telah diisi lengkap.</li>\r\n	</ul></li>\r\n	<li>Surat Ijin Belajar dari Kemenristekdikti RI bagi mahasiswa berkewarganegaraan asing.</li>\r\n	<li>Pelaksanaan seleksi calon peserta Program Doktor dilakukan oleh \r\nsuatu Pa­nitia Seleksi yang diangkat oleh Direktur Program \r\nPas­ca­sarjana dengan suatu Surat Keputusan.\r\n	</li>\r\n	<li>Dasar pertimbangan \r\npenerimaan meliputi: pe­­­nilaian prestasi studi yang te­lah di­tempuh \r\nsebelumnya, penge­tahuan dasar filsafat yang mencukupi, ha­sil ujian \r\nkom­prehensif da­lam ilmu filsafat; hasil wawancara pra­pro­po­sal \r\ndi­ser­tasi, adanya calon Promotor yang menyanggupi untuk mem­bim­bing \r\ndan in­te­gri­tas moral dan akademik calon peserta.\r\n	</li>\r\n	<li>Lulus Tes Masuk Program Doktor yang berupa Ujian Komprehensif Filsafat dan Bahasa Inggris.</li>\r\n	<li>Lulus Program Matrikulasi dengan IPK minimal 3,00 (bagi yang harus mengikuti Program Matrikulasi).</li>\r\n	<li>Melakukan\r\n Daftar Ulang bagi yang lulus tes masuk, serta melunasi Biaya SPP dan \r\nBiaya Kuliah Semester Pertama paling lambat dua minggu setelah \r\ndinyatakan diterima.\r\n	<ol>\r\n		<li>Seluruh persyaratan di atas harus dipenuhi dalam waktu dua minggu sesudah calon ma­­ha­siswa mendapat pemberitahuan “diterima” oleh pihak STF Driyarkara. Kega­galan dalam me­me­nuhi salah satu persyaratan tersebut dapat berakibat pembatalan pene­rimaan.</li>\r\n		<li>Bila seorang (calon) mahasiswa membuat pernyataan yang tidak benar atau me­nyem­­­bu­nyi­kan suatu fakta pada waktu pendaftaran, maka penerimaannya dapat di­batalkan. Bila ke­pal­su­an ini diketahui setelah ma­hasiswa mengikuti kegiatan aka­demik, Pim­pin­an Pro­gram Ma­gister berhak mengeluarkan peserta dari pendidikan dan yang ber­sangkutan tidak da­pat min­ta ganti rugi dan tidak dapat mendaftar kem­bali. </li>\r\n		<li>Pada setiap permulaan semester, paling lambat pada hari perkuliahan pertama, ma­ha­sis­wa wa­jib mendaftarkan diri ulang dengan membayar Daftar Ulang dan Biaya Kuliah.</li>\r\n	</ol></li>\r\n</ol>\r\n<p><strong></strong>\r\n</p>', 'Admissions for New Doctoral Students', NULL, '<p><strong></strong>\r\n</p>\r\n<p><strong>Waktu Pendaftaran untuk Tahun Akademik 2020-2021</strong>\r\n</p>\r\n<p><strong>Gelombang I</strong>: dibuka bulan Maret 2020, dengan tes masuk bulan April 2020 (tanggal akan ditentukan kemudian).\r\n</p>\r\n<p><strong>Gelombang II</strong>: dibuka bulan April 2020, dengan tes masuk bulan Mei 2020 (tanggal akan ditentukan kemudian).\r\n</p>\r\n<p><strong>EMPAT JALUR PENDAFTARAN MENURUT KATEGORI CALON MAHASISWA DAN JUMLAH SKS YANG HARUS DIAMBIL</strong>\r\n</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n	<td>\r\n		<p><strong>No.</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p><strong>Kategori Calon Mahasiswa         </strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p><strong>Jumlah SKS yang harus diambil</strong>\r\n		</p>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p>1\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>S-1 Non   Filsafat\r\n		</p>\r\n		<p>S-2 Non   Filsafat\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<ul>\r\n			<li>36 SKS di Program Matrikulasi selama 2 semester dengan IPK min   3,00 </li>\r\n			<li>Min 12 SKS MK Penunjang dari Program Magister</li>\r\n			<li>12 SKS Seminar Doktoral, 3 SKS Metodologi Penelitian Filsafat   & Penulisan Disertasi, dan 28 SKS Disertasi</li>\r\n		</ul>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p>2\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>S-1 Filsafat\r\n		</p>\r\n		<p>S-2 Non   Filsafat\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<ul>\r\n			<li>Min 12 SKS MK Penunjang dari Program Magister</li>\r\n			<li>12 SKS Seminar Doktoral, 3 SKS Metodologi Penelitian Filsafat   & Penulisan Disertasi, dan 28 SKS Disertasi</li>\r\n		</ul>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p>3\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>S-1 Non   Filsafat\r\n		</p>\r\n		<p>S-2 Filsafat\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<ul>\r\n			<li>MK Penunjang dari Program Magister diambil sesuai dengan kebutuhan  \r\n tema disertasi dan jumlah MK ditetapkan menurut petunjuk calon promotor\r\n			</li>\r\n			<li>Min 12 SKS Seminar Doktoral dan 3 SKS Metodologi Penelitian Filsafat   & Penulisan Disertasi, dan 28 SKS Disertasi</li>\r\n		</ul>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p>4\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>S-1   Filsafat\r\n		</p>\r\n		<p>S-2   Filsafat\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<ul>\r\n			<li>MK Penunjang dari Program Magister diambil sesuai dengan kebutuhan  \r\n tema disertasi dan jumlah MK ditetapkan menurut petunjuk calon promotor\r\n			</li>\r\n			<li>Wajib\r\n mengambil 12 SKS Seminar Doktoral dan 3 SKS Metodologi   Penelitian \r\nFilsafat & Penulisan Disertasi, dan 28 SKS Disertasi\r\n			</li>\r\n		</ul>\r\n	</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong><i>REQUIREMENTS FOR NEW MATRICULATION STUDENTS</i></strong><strong></strong>\r\n</p>\r\n<ul>\r\n	<li>Menyerahkan:\r\n	<ul>\r\n		<li>1 lembar fotokopi ijazah Sarjana (S1) dan atau ijazah S2 yang telah terakreditasi oleh BAN-PT dan telah ditandasahkan;</li>\r\n	</ul>\r\n	<ul>\r\n		<li>1 lembar fotokopi SK Penyetaraan dari Kemen-ristekdikti RI untuk ijazah dari luar negeri;</li>\r\n	</ul>\r\n	<ul>\r\n		<li>1\r\n lembar fotokopi Transkrip Nilai Akademik S1 dan atau S2 dengan Indeks \r\nPrestasi Kumulatif (IPK) S1 minimal 2,75 dan S2 minimal 3,00;\r\n		</li>\r\n	</ul>\r\n	<ul>\r\n		<li>4 pasfoto ukuran 3x4;</li>\r\n	</ul>\r\n	<ul>\r\n		<li>1 lembar fotokopi KTP terbaru;</li>\r\n	</ul>\r\n	<ul>\r\n		<li>1 lembar fotokopi bukti bayar tes masuk;</li>\r\n	</ul>\r\n	<ul>\r\n		<li>Formulir pendaftaran yang telah diisi lengkap.</li>\r\n	</ul></li>\r\n	<li>Lulus tes Bahasa Inggris dan Kecerdasan Berpikir.</li>\r\n	<li>Melakukan \r\nDaftar Ulang bagi yang lulus tes masuk, serta melunasi biaya perkuliahan\r\n paling lambat dua minggu setelah dinyatakan diterima.\r\n	</li>\r\n</ul>\r\n<p><strong><i>REQUIREMENTS FOR NEW DOCTORAL STUDENTS</i></strong><strong></strong>\r\n</p>\r\n<ol>\r\n	<li>Calon\r\n yang dapat mendaftarkan Tes Masuk Program Doktor adalah lulus­an S2 \r\ndari bidang ilmu apa pun yang diakui, dan dibawah naungan \r\nKe­menristekdikti RI, dengan IPK Kelulusan S2 minimal 3,00.\r\n	</li>\r\n	<li>Calon\r\n yang berasal dari bidang studi non-filsafat (S1 dan S2 non-filsafat) \r\nwajib mengikuti Program Matrikulasi terlebih dahulu. IPK kelulusan \r\nPro­gram Matrikulasi minimal 3,00 untuk dapat meneruskan ke Program \r\nDok­tor.\r\n	</li>\r\n	<li>Persyaratan administratif yang harus dipenuhi oleh calon peserta Tes ma­suk Program Doktor, menyerahkan:\r\n	<ul>\r\n		<li>1\r\n lembar fotokopi ijazah S1 dan S2 masing-masing dengan tandasah ser­ta \r\ndi­lam­piri Transkrip Nilai yang bertandasah. Ija­zah dari Luar Negeri \r\nharus dilampiri Surat Kete­rang­an Penyetaraan dari Kemenristekdikti RI.\r\n		</li>\r\n	</ul>\r\n	<ul>\r\n		<li>4 lembar pasfoto ukuran 3 x 4.</li>\r\n	</ul>\r\n	<ul>\r\n		<li>1 lembar fotokopi bukti pembayaran tes masuk (via bank transfer).</li>\r\n	</ul>\r\n	<ul>\r\n		<li>1 lembar fotokopi Sertifikat TOEFL de­­­ngan score minimal 550 atau IELTS score minimal 6.</li>\r\n		<li>Rencana Penelitian (Pra-Proposal) disertasi yang telah disetujui oleh salah satu guru besar yang terdiri atas <u>+</u> 3 halaman yang berisi:\r\n		<ul>\r\n			<li>judul/topik/tema rencana pene­litian yang dibahas;</li>\r\n			<li>latar belakang permasalahan yang di­ba­has;</li>\r\n			<li>rumusan permasalahan/fokus/tesis;</li>\r\n			<li>sistematika disertasi;</li>\r\n			<li>kepustakaan pokok.</li>\r\n		</ul></li>\r\n		<li>Surat Rekomendasi da­­ri 2 (dua) akademisi yang me­nge­tahui ke­mampuan akademis calon peserta selama studi Pro­gram S2.</li>\r\n		<li>Contoh tulisan/penelitian mandiri karyanya.</li>\r\n		<li>Formulir pendaftaran yang telah diisi lengkap.</li>\r\n	</ul></li>\r\n	<li>Surat Ijin Belajar dari Kemenristekdikti RI bagi mahasiswa berkewarganegaraan asing.</li>\r\n	<li>Pelaksanaan seleksi calon peserta Program Doktor dilakukan oleh \r\nsuatu Pa­nitia Seleksi yang diangkat oleh Direktur Program \r\nPas­ca­sarjana dengan suatu Surat Keputusan.\r\n	</li>\r\n	<li>Dasar pertimbangan \r\npenerimaan meliputi: pe­­­nilaian prestasi studi yang te­lah di­tempuh \r\nsebelumnya, penge­tahuan dasar filsafat yang mencukupi, ha­sil ujian \r\nkom­prehensif da­lam ilmu filsafat; hasil wawancara pra­pro­po­sal \r\ndi­ser­tasi, adanya calon Promotor yang menyanggupi untuk mem­bim­bing \r\ndan in­te­gri­tas moral dan akademik calon peserta.\r\n	</li>\r\n	<li>Lulus Tes Masuk Program Doktor yang berupa Ujian Komprehensif Filsafat dan Bahasa Inggris.</li>\r\n	<li>Lulus Program Matrikulasi dengan IPK minimal 3,00 (bagi yang harus mengikuti Program Matrikulasi).</li>\r\n	<li>Melakukan\r\n Daftar Ulang bagi yang lulus tes masuk, serta melunasi Biaya SPP dan \r\nBiaya Kuliah Semester Pertama paling lambat dua minggu setelah \r\ndinyatakan diterima.\r\n	<ol>\r\n		<li>Seluruh persyaratan di atas harus dipenuhi \r\ndalam waktu dua minggu sesudah calon ma­­ha­siswa mendapat pemberitahuan\r\n “diterima” oleh pihak STF Driyarkara. Kega­galan dalam me­me­nuhi salah\r\n satu persyaratan tersebut dapat berakibat pembatalan pene­rimaan.\r\n		</li>\r\n		<li>Bila\r\n seorang (calon) mahasiswa membuat pernyataan yang tidak benar atau \r\nme­nyem­­­bu­nyi­kan suatu fakta pada waktu pendaftaran, maka \r\npenerimaannya dapat di­batalkan. Bila ke­pal­su­an ini diketahui setelah\r\n ma­hasiswa mengikuti kegiatan aka­demik, Pim­pin­an Pro­gram Ma­gister \r\nberhak mengeluarkan peserta dari pendidikan dan yang ber­sangkutan tidak\r\n da­pat min­ta ganti rugi dan tidak dapat mendaftar kem­bali. \r\n		</li>\r\n		<li>Pada\r\n setiap permulaan semester, paling lambat pada hari perkuliahan pertama,\r\n ma­ha­sis­wa wa­jib mendaftarkan diri ulang dengan membayar Daftar \r\nUlang dan Biaya Kuliah.\r\n		</li>\r\n	</ol></li>\r\n</ol>\r\n<p><strong></strong>\r\n</p>'),
(18, 6, 4, 'S3 Staf Akademik', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>', 'S3 Staf Akademik', NULL, '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_program_sarjana`
--

CREATE TABLE `tb_program_sarjana` (
  `id` bigint(20) NOT NULL,
  `jenjang_id` int(3) DEFAULT NULL,
  `studi_id` int(3) DEFAULT NULL,
  `title_id` varchar(225) NOT NULL,
  `title_en` varchar(225) NOT NULL,
  `subtitle_id` text,
  `subtitle_en` text,
  `content_id` text NOT NULL,
  `content_en` text NOT NULL,
  `type` varchar(225) DEFAULT NULL,
  `sorts` int(10) NOT NULL,
  `link` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_program_sarjana`
--

INSERT INTO `tb_program_sarjana` (`id`, `jenjang_id`, `studi_id`, `title_id`, `title_en`, `subtitle_id`, `subtitle_en`, `content_id`, `content_en`, `type`, `sorts`, `link`) VALUES
(1, 3, 3, 'S1 Filsafat Keilahian', 'Undergraduate Program in Philosophy of Divinity', 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero. Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.', 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero. Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.', '<h5>Ikhtisar</h5><p>Research lies at the heart of the graduate experience at Boston College. Graduate students work directly with faculty in their labs while continuing their education. Current areas of faculty scholarship and expertise include Cell and Developmental Biology, Microbiology and Infectious Disease, and Computational Biology and Bioinformatics. Within these areas of study the department offers a program of study leading to a Ph.D. For more information about faculty research visit the Research page. The Biology department also offers state-of-the-art research laboratories and core-research support facilities, including confocal microscopy, flow cytometry, and FACS facilities.\r\n</p><p>A Master\'s degree is only offered through a 5-year BS/MS program for current undergraduate students.\r\n</p><h5>Hasil Belajar</h5><ul>\r\n	<li>Conduct original, publishable research in a field of Biology.</li>\r\n	<li>Formulate a novel research question and design the experiments required to make advances in the field.</li>\r\n	<li>Demonstrate a broad knowledge of theory and research in several areas of Biology and an in-depth knowledge of a specific area of expertise.</li>\r\n	<li>Display an understanding of the ethical guidelines for biological research and be able to follow such guidelines.</li>\r\n	<li>Communicate the findings of their research both orally and in writing to professional and lay audiences.</li>\r\n</ul><h5>Dosen / Pengajar Fakultas</h5><p>Jeannie Simms, Director, Master of Fine Arts Program<br>Lisa Bynoe, Associate Dean of Graduate Programs\r\n</p>', '<p>Ikhtisar</p><p>Research lies at the heart of the graduate experience at Boston College. Graduate students work directly with faculty in their labs while continuing their education. Current areas of faculty scholarship and expertise include Cell and Developmental Biology, Microbiology and Infectious Disease, and Computational Biology and Bioinformatics. Within these areas of study the department offers a program of study leading to a Ph.D. For more information about faculty research visit the Research page. The Biology department also offers state-of-the-art research laboratories and core-research support facilities, including confocal microscopy, flow cytometry, and FACS facilities.</p><p>A Master\'s degree is only offered through a 5-year BS/MS program for current undergraduate students.</p><p>Hasil Belajar</p><p>Conduct original, publishable research in a field of Biology.</p><p>Formulate a novel research question and design the experiments required to make advances in the field.</p><p>Demonstrate a broad knowledge of theory and research in several areas of Biology and an in-depth knowledge of a specific area of expertise.</p><p>Display an understanding of the ethical guidelines for biological research and be able to follow such guidelines.</p><p>Communicate the findings of their research both orally and in writing to professional and lay audiences.</p><p>Dosen / Pengajar Fakultas</p><p>Jeannie Simms, Director, Master of Fine Arts Program</p><p>Lisa Bynoe, Associate Dean of Graduate Programs</p>', 'sarjana', 1, NULL),
(2, 5, 4, 'Program Studi Doktor Filsafat (S3)', 'Doctoral Program in Philosophy', 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero. Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.', 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero. Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.', '<h5>Ikhtisar</h5><p>Research lies at the heart of the graduate experience at Boston College. Graduate students work directly with faculty in their labs while continuing their education. Current areas of faculty scholarship and expertise include Cell and Developmental Biology, Microbiology and Infectious Disease, and Computational Biology and Bioinformatics. Within these areas of study the department offers a program of study leading to a Ph.D. For more information about faculty research visit the Research page. The Biology department also offers state-of-the-art research laboratories and core-research support facilities, including confocal microscopy, flow cytometry, and FACS facilities.</p><p>A Master\'s degree is only offered through a 5-year BS/MS program for current undergraduate students.</p><h5>Hasil Belajar</h5><ul><li>Conduct original, publishable research in a field of Biology.</li><li>Formulate a novel research question and design the experiments required to make advances in the field.</li><li>Demonstrate a broad knowledge of theory and research in several areas of Biology and an in-depth knowledge of a specific area of expertise.</li><li>Display an understanding of the ethical guidelines for biological research and be able to follow such guidelines.</li><li>Communicate the findings of their research both orally and in writing to professional and lay audiences.</li></ul><h5>Dosen / Pengajar Fakultas</h5><p>Jeannie Simms, Director, Master of Fine Arts Program<br>Lisa Bynoe, Associate Dean of Graduate Programs</p>', '<p>Ikhtisar</p><p>Research lies at the heart of the graduate experience at Boston College. Graduate students work directly with faculty in their labs while continuing their education. Current areas of faculty scholarship and expertise include Cell and Developmental Biology, Microbiology and Infectious Disease, and Computational Biology and Bioinformatics. Within these areas of study the department offers a program of study leading to a Ph.D. For more information about faculty research visit the Research page. The Biology department also offers state-of-the-art research laboratories and core-research support facilities, including confocal microscopy, flow cytometry, and FACS facilities.</p><p>A Master\'s degree is only offered through a 5-year BS/MS program for current undergraduate students.</p><p>Hasil Belajar</p><p>Conduct original, publishable research in a field of Biology.</p><p>Formulate a novel research question and design the experiments required to make advances in the field.</p><p>Demonstrate a broad knowledge of theory and research in several areas of Biology and an in-depth knowledge of a specific area of expertise.</p><p>Display an understanding of the ethical guidelines for biological research and be able to follow such guidelines.</p><p>Communicate the findings of their research both orally and in writing to professional and lay audiences.</p><p>Dosen / Pengajar Fakultas</p><p>Jeannie Simms, Director, Master of Fine Arts Program</p><p>Lisa Bynoe, Associate Dean of Graduate Programs</p>', 'pasca_sarjana', 1, NULL),
(3, 4, 4, 'Program Studi Magister Filsafat (S2)', 'Masters\' Degree in Philosophy', 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero. Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.', 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero. Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.', '<h5>Ikhtisar</h5><p>Research lies at the heart of the graduate experience at Boston College. Graduate students work directly with faculty in their labs while continuing their education. Current areas of faculty scholarship and expertise include Cell and Developmental Biology, Microbiology and Infectious Disease, and Computational Biology and Bioinformatics. Within these areas of study the department offers a program of study leading to a Ph.D. For more information about faculty research visit the Research page. The Biology department also offers state-of-the-art research laboratories and core-research support facilities, including confocal microscopy, flow cytometry, and FACS facilities.</p><p>A Master\'s degree is only offered through a 5-year BS/MS program for current undergraduate students.</p><h5>Hasil Belajar</h5><ul><li>Conduct original, publishable research in a field of Biology.</li><li>Formulate a novel research question and design the experiments required to make advances in the field.</li><li>Demonstrate a broad knowledge of theory and research in several areas of Biology and an in-depth knowledge of a specific area of expertise.</li><li>Display an understanding of the ethical guidelines for biological research and be able to follow such guidelines.</li><li>Communicate the findings of their research both orally and in writing to professional and lay audiences.</li></ul><h5>Dosen / Pengajar Fakultas</h5><p>Jeannie Simms, Director, Master of Fine Arts Program<br>Lisa Bynoe, Associate Dean of Graduate Programs</p>', '<h5>Ikhtisar</h5><p>Research lies at the heart of the graduate experience at Boston College. Graduate students work directly with faculty in their labs while continuing their education. Current areas of faculty scholarship and expertise include Cell and Developmental Biology, Microbiology and Infectious Disease, and Computational Biology and Bioinformatics. Within these areas of study the department offers a program of study leading to a Ph.D. For more information about faculty research visit the Research page. The Biology department also offers state-of-the-art research laboratories and core-research support facilities, including confocal microscopy, flow cytometry, and FACS facilities.</p><p>A Master\'s degree is only offered through a 5-year BS/MS program for current undergraduate students.</p><h5>Hasil Belajar</h5><ul><li>Conduct original, publishable research in a field of Biology.</li><li>Formulate a novel research question and design the experiments required to make advances in the field.</li><li>Demonstrate a broad knowledge of theory and research in several areas of Biology and an in-depth knowledge of a specific area of expertise.</li><li>Display an understanding of the ethical guidelines for biological research and be able to follow such guidelines.</li><li>Communicate the findings of their research both orally and in writing to professional and lay audiences.</li></ul><h5>Dosen / Pengajar Fakultas</h5><p>Jeannie Simms, Director, Master of Fine Arts Program<br>Lisa Bynoe, Associate Dean of Graduate Programs</p>', 'pasca_sarjana', 5, NULL),
(4, 3, 4, 'S1 Filsafat', 'Undergraduate Program in Philosophy', 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero. Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.', 'Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero. Curabitur tempor lectus quam, id consectetur urna commodo vitae. Praesent ornare metus neque, id bibendum nulla tempus a. In eu placerat libero.', '<h5>Ikhtisar</h5><p>Research lies at the heart of the graduate experience at Boston College. Graduate students work directly with faculty in their labs while continuing their education. Current areas of faculty scholarship and expertise include Cell and Developmental Biology, Microbiology and Infectious Disease, and Computational Biology and Bioinformatics. Within these areas of study the department offers a program of study leading to a Ph.D. For more information about faculty research visit the Research page. The Biology department also offers state-of-the-art research laboratories and core-research support facilities, including confocal microscopy, flow cytometry, and FACS facilities.</p><p>A Master\'s degree is only offered through a 5-year BS/MS program for current undergraduate students.</p><h5>Hasil Belajar</h5><ul><li>Conduct original, publishable research in a field of Biology.</li><li>Formulate a novel research question and design the experiments required to make advances in the field.</li><li>Demonstrate a broad knowledge of theory and research in several areas of Biology and an in-depth knowledge of a specific area of expertise.</li><li>Display an understanding of the ethical guidelines for biological research and be able to follow such guidelines.</li><li>Communicate the findings of their research both orally and in writing to professional and lay audiences.</li></ul><h5>Dosen / Pengajar Fakultas</h5><p>Jeannie Simms, Director, Master of Fine Arts Program<br>Lisa Bynoe, Associate Dean of Graduate Programs</p>', '<h5>Ikhtisar</h5><p>Research lies at the heart of the graduate experience at Boston College. Graduate students work directly with faculty in their labs while continuing their education. Current areas of faculty scholarship and expertise include Cell and Developmental Biology, Microbiology and Infectious Disease, and Computational Biology and Bioinformatics. Within these areas of study the department offers a program of study leading to a Ph.D. For more information about faculty research visit the Research page. The Biology department also offers state-of-the-art research laboratories and core-research support facilities, including confocal microscopy, flow cytometry, and FACS facilities.</p><p>A Master\'s degree is only offered through a 5-year BS/MS program for current undergraduate students.</p><h5>Hasil Belajar</h5><ul><li>Conduct original, publishable research in a field of Biology.</li><li>Formulate a novel research question and design the experiments required to make advances in the field.</li><li>Demonstrate a broad knowledge of theory and research in several areas of Biology and an in-depth knowledge of a specific area of expertise.</li><li>Display an understanding of the ethical guidelines for biological research and be able to follow such guidelines.</li><li>Communicate the findings of their research both orally and in writing to professional and lay audiences.</li></ul><h5>Dosen / Pengajar Fakultas</h5><p>Jeannie Simms, Director, Master of Fine Arts Program<br>Lisa Bynoe, Associate Dean of Graduate Programs</p>', 'sarjana', 5, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `user_input` varchar(200) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `initial` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `email`, `nama`, `pass`, `type`, `group_id`, `login_terakhir`, `aktivasi`, `aktif`, `user_input`, `tanggal_input`, `initial`, `image`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory Pandu', '564fda17f517ae04a86734c2b2341327ed4fd565', 'root', 0, '2015-12-30 08:16:30', 0, 1, '', '2014-02-10 03:17:36', 'deory', ''),
(30, 'info@markdesign.net', 'info markdesign', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'root', 8, '2015-12-30 08:17:01', 0, 1, '', '0000-00-00 00:00:00', 'Admin', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `to_toko`
--

CREATE TABLE `to_toko` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `nama_toko` varchar(200) NOT NULL,
  `lokasi` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `to_toko`
--

INSERT INTO `to_toko` (`id`, `email`, `first_name`, `last_name`, `pass`, `login_terakhir`, `aktivasi`, `aktif`, `image`, `hp`, `address`, `city`, `province`, `postcode`, `nama_toko`, `lokasi`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory', 'Pandu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2014-11-07 15:32:14', 0, 1, 'a448d-calourette-woodland-creature-jewelry-1.jpg', 'HP', 'Address', 'City', 'Province', 'PostCode', 'JewelryShop', 'surabaya'),
(4, 'ibnu@markdesign.net', 'Ibnu', 'Fajar', '564fda17f517ae04a86734c2b2341327ed4fd565', '2014-11-07 15:32:25', 0, 1, '3e491-calourette-woodland-creature-jewelry-1.jpg', 'HP', 'Address', 'City', 'Province', 'PostCode', 'Toko Handoko', 'surabaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `to_toko_product`
--

CREATE TABLE `to_toko_product` (
  `id` int(11) NOT NULL,
  `toko_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `to_toko_product`
--

INSERT INTO `to_toko_product` (`id`, `toko_id`, `product_id`) VALUES
(8, 1, 960),
(7, 1, 105),
(6, 1, 719),
(5, 1, 264),
(9, 1, 223),
(10, 1, 930),
(11, 1, 475),
(12, 1, 732),
(13, 4, 264),
(14, 4, 560),
(15, 4, 960),
(16, 4, 505),
(17, 4, 719),
(18, 4, 678),
(19, 4, 475),
(20, 4, 277);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trips`
--

CREATE TABLE `trips` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `awal` int(11) NOT NULL,
  `akhir` int(11) NOT NULL,
  `trip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trips`
--

INSERT INTO `trips` (`id`, `year`, `month`, `awal`, `akhir`, `trip`) VALUES
(1, 2016, 1, 1, 3, 'Surabaya'),
(4, 2016, 2, 8, 10, 'Singapore'),
(3, 2016, 2, 7, 10, 'Malaysia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tt_text`
--

CREATE TABLE `tt_text` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tt_text`
--

INSERT INTO `tt_text` (`id`, `category`, `message`) VALUES
(1, 'admin', 'Produk'),
(2, 'admin', 'Pages'),
(3, 'admin', 'Orders'),
(4, 'admin', 'Customers'),
(5, 'admin', 'Promotions'),
(6, 'admin', 'Reports'),
(7, 'admin', 'General Setting'),
(8, 'admin', 'Data Edited'),
(9, 'admin', 'New Orders'),
(10, 'admin', 'New Customers'),
(11, 'admin', 'Payment Confirmation'),
(12, 'admin', 'Edit Profile'),
(13, 'admin', 'Change Password'),
(14, 'admin', 'Sign Out'),
(15, 'admin', 'Gallery'),
(16, 'admin', 'Slide Home'),
(17, 'admin', 'Toko'),
(18, 'admin', 'Slides'),
(19, 'admin', 'Product'),
(20, 'admin', 'Products'),
(21, 'admin', 'About Us'),
(22, 'admin', 'Contact Us'),
(23, 'admin', 'Trip'),
(24, 'admin', 'Trips'),
(25, 'admin', 'Slide'),
(26, 'admin', 'Healty'),
(27, 'admin', 'ge-ma'),
(28, 'admin', 'Blog/Artikel'),
(29, 'admin', 'Career'),
(30, 'admin', 'Home'),
(31, 'admin', 'Factory'),
(32, 'admin', 'News & Article'),
(33, 'admin', 'Lokasi Penjualan'),
(34, 'admin', 'Jadi Agen'),
(35, 'admin', 'Cara Membeli'),
(36, 'admin', 'PDF'),
(37, 'admin', 'Cara Belanja'),
(38, 'admin', 'Info Pengiriman'),
(39, 'admin', 'FAQ'),
(40, 'admin', 'Syarat & Ketentuan'),
(41, 'admin', 'How To Order'),
(42, 'admin', 'Event'),
(43, 'admin', 'Wholeseler'),
(44, 'admin', 'Wholesale'),
(45, 'admin', 'Lokasi Toko'),
(46, 'admin', 'Home Page'),
(47, 'admin', 'About'),
(48, 'admin', 'Tips/Artikel'),
(49, 'admin', 'Slides/Promo'),
(50, 'admin', 'Promotion'),
(51, 'admin', 'Customer'),
(52, 'admin', 'Promotion/Slide'),
(53, 'admin', 'Homepage'),
(54, 'admin', 'Voucher'),
(55, 'admin', 'Faq Content'),
(56, 'admin', 'Shop Dealer'),
(57, 'admin', 'Voucher Discount'),
(58, 'admin', 'Gallery Spotlight'),
(59, 'admin', 'Home Spotlight'),
(60, 'admin', 'Store Locator'),
(61, 'admin', 'Merchant Partner'),
(62, 'admin', 'Seen On'),
(63, 'admin', 'Static Page'),
(64, 'admin', 'Blog'),
(65, 'admin', 'Testimoni'),
(66, 'admin', 'Info Kampus'),
(67, 'admin', 'Kegiatan Univ'),
(68, 'admin', 'Data Sarjana'),
(69, 'admin', 'Komunitas'),
(70, 'admin', 'Penelitian'),
(71, 'admin', 'Kalendar Akademik'),
(72, 'admin', 'Extension Course'),
(73, 'admin', 'Tentang Kami'),
(74, 'front', 'Sejarah'),
(75, 'front', 'Visi & Misi'),
(76, 'front', 'Administrasi'),
(77, 'front', 'Fakta & Angka'),
(78, 'front', 'FAKTA'),
(79, 'front', 'Beranda'),
(80, 'front', 'Akademik'),
(81, 'front', 'HUBUNGI KAMI'),
(82, 'front', 'PENERIMAAN'),
(83, 'front', 'Dari Filsafat Muncul Kejernihan'),
(84, 'front', 'Pilih Kategori Studi'),
(85, 'front', 'Pilih Jenjang Studi'),
(86, 'front', 'daftarkan diri anda'),
(87, 'front', 'klik di sini'),
(88, 'front', 'untuk masuk ke Sistem Informasi Akademik'),
(89, 'front', 'program sarjana'),
(90, 'front', 'program pasca sarjana'),
(91, 'front', 'Baca Lebih Lanjut'),
(92, 'front', 'Mendaftar'),
(93, 'front', 'Pendaftaraan'),
(94, 'front', 'Lihat Pdf'),
(95, 'front', 'Perpustakaan'),
(96, 'front', 'jurnal diskursus'),
(97, 'front', 'publikasi'),
(98, 'front', 'repositori'),
(99, 'front', 'jurnal-diskursus'),
(100, 'front', 'mahasiswa'),
(101, 'front', 'alumni'),
(102, 'front', 'berita'),
(103, 'front', ''),
(104, 'front', 'kampus'),
(105, 'front', '.html');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_blog`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_blog` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` int(25)
,`id2` int(11)
,`blog_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`content` text
,`quote` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_category`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_category` (
`id` int(11)
,`parent_id` int(11)
,`sort` int(11)
,`image` varchar(200)
,`type` varchar(100)
,`data` text
,`id2` int(11)
,`category_id` int(11)
,`language_id` int(11)
,`name` varchar(100)
,`data2` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_gallery`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_gallery` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`image2` varchar(200)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` varchar(200)
,`city` varchar(100)
,`harga` int(11)
,`color` varchar(100)
,`orientation` int(11)
,`id2` int(11)
,`gallery_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`sub_title` text
,`sub_title_2` text
,`content` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_slide`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_slide` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` varchar(200)
,`id2` int(11)
,`slide_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`content` text
,`url` varchar(200)
,`sort` int(11)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_blog`
--
DROP TABLE IF EXISTS `view_blog`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_blog`  AS  select `pg_blog`.`id` AS `id`,`pg_blog`.`topik_id` AS `topik_id`,`pg_blog`.`image` AS `image`,`pg_blog`.`active` AS `active`,`pg_blog`.`date_input` AS `date_input`,`pg_blog`.`date_update` AS `date_update`,`pg_blog`.`insert_by` AS `insert_by`,`pg_blog`.`last_update_by` AS `last_update_by`,`pg_blog`.`writer` AS `writer`,`pg_blog_description`.`id` AS `id2`,`pg_blog_description`.`blog_id` AS `blog_id`,`pg_blog_description`.`language_id` AS `language_id`,`pg_blog_description`.`title` AS `title`,`pg_blog_description`.`content` AS `content`,`pg_blog_description`.`quote` AS `quote` from (`pg_blog` join `pg_blog_description` on((`pg_blog`.`id` = `pg_blog_description`.`blog_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_category`
--
DROP TABLE IF EXISTS `view_category`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_category`  AS  select `prd_category`.`id` AS `id`,`prd_category`.`parent_id` AS `parent_id`,`prd_category`.`sort` AS `sort`,`prd_category`.`image` AS `image`,`prd_category`.`type` AS `type`,`prd_category`.`data` AS `data`,`prd_category_description`.`id` AS `id2`,`prd_category_description`.`category_id` AS `category_id`,`prd_category_description`.`language_id` AS `language_id`,`prd_category_description`.`name` AS `name`,`prd_category_description`.`data` AS `data2` from (`prd_category` join `prd_category_description` on((`prd_category`.`id` = `prd_category_description`.`category_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_gallery`
--
DROP TABLE IF EXISTS `view_gallery`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_gallery`  AS  select `gal_gallery`.`id` AS `id`,`gal_gallery`.`topik_id` AS `topik_id`,`gal_gallery`.`image` AS `image`,`gal_gallery`.`image2` AS `image2`,`gal_gallery`.`active` AS `active`,`gal_gallery`.`date_input` AS `date_input`,`gal_gallery`.`date_update` AS `date_update`,`gal_gallery`.`insert_by` AS `insert_by`,`gal_gallery`.`last_update_by` AS `last_update_by`,`gal_gallery`.`writer` AS `writer`,`gal_gallery`.`city` AS `city`,`gal_gallery`.`harga` AS `harga`,`gal_gallery`.`color` AS `color`,`gal_gallery`.`orientation` AS `orientation`,`gal_gallery_description`.`id` AS `id2`,`gal_gallery_description`.`gallery_id` AS `gallery_id`,`gal_gallery_description`.`language_id` AS `language_id`,`gal_gallery_description`.`title` AS `title`,`gal_gallery_description`.`sub_title` AS `sub_title`,`gal_gallery_description`.`sub_title_2` AS `sub_title_2`,`gal_gallery_description`.`content` AS `content` from (`gal_gallery` join `gal_gallery_description` on((`gal_gallery`.`id` = `gal_gallery_description`.`gallery_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_slide`
--
DROP TABLE IF EXISTS `view_slide`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_slide`  AS  select `sl_slide`.`id` AS `id`,`sl_slide`.`topik_id` AS `topik_id`,`sl_slide`.`image` AS `image`,`sl_slide`.`active` AS `active`,`sl_slide`.`date_input` AS `date_input`,`sl_slide`.`date_update` AS `date_update`,`sl_slide`.`insert_by` AS `insert_by`,`sl_slide`.`last_update_by` AS `last_update_by`,`sl_slide`.`writer` AS `writer`,`sl_slide_description`.`id` AS `id2`,`sl_slide_description`.`slide_id` AS `slide_id`,`sl_slide_description`.`language_id` AS `language_id`,`sl_slide_description`.`title` AS `title`,`sl_slide_description`.`content` AS `content`,`sl_slide_description`.`url` AS `url`,`sl_slide`.`sort` AS `sort` from (`sl_slide` join `sl_slide_description` on((`sl_slide_description`.`slide_id` = `sl_slide`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cs_customer`
--
ALTER TABLE `cs_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `cs_customer_address`
--
ALTER TABLE `cs_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `fix_menu_akademik`
--
ALTER TABLE `fix_menu_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gal_gallery`
--
ALTER TABLE `gal_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gal_gallery_description`
--
ALTER TABLE `gal_gallery_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `gal_gallery_image`
--
ALTER TABLE `gal_gallery_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`gallery_id`);

--
-- Indeks untuk tabel `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `me_member`
--
ALTER TABLE `me_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `or_order`
--
ALTER TABLE `or_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `or_order_history`
--
ALTER TABLE `or_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `or_order_product`
--
ALTER TABLE `or_order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `or_order_status`
--
ALTER TABLE `or_order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indeks untuk tabel `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_bank`
--
ALTER TABLE `pg_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_blog`
--
ALTER TABLE `pg_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_blog_description`
--
ALTER TABLE `pg_blog_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `pg_infokampus`
--
ALTER TABLE `pg_infokampus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_infokampus_description`
--
ALTER TABLE `pg_infokampus_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_list_bank`
--
ALTER TABLE `pg_list_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_pages`
--
ALTER TABLE `pg_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_pages_description`
--
ALTER TABLE `pg_pages_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_testimonial`
--
ALTER TABLE `pg_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_testimonial_description`
--
ALTER TABLE `pg_testimonial_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_type_letak`
--
ALTER TABLE `pg_type_letak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_brand`
--
ALTER TABLE `prd_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_brand_description`
--
ALTER TABLE `prd_brand_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `prd_category`
--
ALTER TABLE `prd_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `type` (`type`);

--
-- Indeks untuk tabel `prd_category_description`
--
ALTER TABLE `prd_category_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`,`language_id`);

--
-- Indeks untuk tabel `prd_category_product`
--
ALTER TABLE `prd_category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_excel`
--
ALTER TABLE `prd_excel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_gallery_highlight`
--
ALTER TABLE `prd_gallery_highlight`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_product`
--
ALTER TABLE `prd_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `prd_product_attributes`
--
ALTER TABLE `prd_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `prd_product_color`
--
ALTER TABLE `prd_product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `prd_product_description`
--
ALTER TABLE `prd_product_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`language_id`);

--
-- Indeks untuk tabel `prd_product_image`
--
ALTER TABLE `prd_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `promo_list`
--
ALTER TABLE `promo_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_id` (`promo_id`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting_description`
--
ALTER TABLE `setting_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shp_shipping_price`
--
ALTER TABLE `shp_shipping_price`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sl_slide`
--
ALTER TABLE `sl_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sl_slide_description`
--
ALTER TABLE `sl_slide_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `tb_extensioncourse`
--
ALTER TABLE `tb_extensioncourse`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_group`
--
ALTER TABLE `tb_group`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kegiatan_univ`
--
ALTER TABLE `tb_kegiatan_univ`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_master_jenjangstudi`
--
ALTER TABLE `tb_master_jenjangstudi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_master_kategoristudi`
--
ALTER TABLE `tb_master_kategoristudi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_menu_akses`
--
ALTER TABLE `tb_menu_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_page_sarjana`
--
ALTER TABLE `tb_page_sarjana`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_program_sarjana`
--
ALTER TABLE `tb_program_sarjana`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `to_toko`
--
ALTER TABLE `to_toko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `to_toko_product`
--
ALTER TABLE `to_toko_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toko_id` (`toko_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tt_text`
--
ALTER TABLE `tt_text`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `address`
--
ALTER TABLE `address`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `cs_customer`
--
ALTER TABLE `cs_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cs_customer_address`
--
ALTER TABLE `cs_customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fix_menu_akademik`
--
ALTER TABLE `fix_menu_akademik`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `gal_gallery`
--
ALTER TABLE `gal_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `gal_gallery_description`
--
ALTER TABLE `gal_gallery_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `gal_gallery_image`
--
ALTER TABLE `gal_gallery_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=558;

--
-- AUTO_INCREMENT untuk tabel `me_member`
--
ALTER TABLE `me_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order`
--
ALTER TABLE `or_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order_history`
--
ALTER TABLE `or_order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order_product`
--
ALTER TABLE `or_order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order_status`
--
ALTER TABLE `or_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pg_bank`
--
ALTER TABLE `pg_bank`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pg_blog`
--
ALTER TABLE `pg_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pg_blog_description`
--
ALTER TABLE `pg_blog_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT untuk tabel `pg_infokampus`
--
ALTER TABLE `pg_infokampus`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pg_infokampus_description`
--
ALTER TABLE `pg_infokampus_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `pg_list_bank`
--
ALTER TABLE `pg_list_bank`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pg_pages`
--
ALTER TABLE `pg_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pg_pages_description`
--
ALTER TABLE `pg_pages_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pg_testimonial`
--
ALTER TABLE `pg_testimonial`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pg_testimonial_description`
--
ALTER TABLE `pg_testimonial_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `pg_type_letak`
--
ALTER TABLE `pg_type_letak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT untuk tabel `prd_brand`
--
ALTER TABLE `prd_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `prd_brand_description`
--
ALTER TABLE `prd_brand_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `prd_category`
--
ALTER TABLE `prd_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `prd_category_description`
--
ALTER TABLE `prd_category_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `prd_category_product`
--
ALTER TABLE `prd_category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_excel`
--
ALTER TABLE `prd_excel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `prd_gallery_highlight`
--
ALTER TABLE `prd_gallery_highlight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `prd_product`
--
ALTER TABLE `prd_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_attributes`
--
ALTER TABLE `prd_product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_color`
--
ALTER TABLE `prd_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_description`
--
ALTER TABLE `prd_product_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_image`
--
ALTER TABLE `prd_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `promo_list`
--
ALTER TABLE `promo_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `setting_description`
--
ALTER TABLE `setting_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `shp_shipping_price`
--
ALTER TABLE `shp_shipping_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT untuk tabel `sl_slide`
--
ALTER TABLE `sl_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sl_slide_description`
--
ALTER TABLE `sl_slide_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_extensioncourse`
--
ALTER TABLE `tb_extensioncourse`
  MODIFY `id` bigint(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_group`
--
ALTER TABLE `tb_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_kegiatan_univ`
--
ALTER TABLE `tb_kegiatan_univ`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_master_jenjangstudi`
--
ALTER TABLE `tb_master_jenjangstudi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_master_kategoristudi`
--
ALTER TABLE `tb_master_kategoristudi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_menu_akses`
--
ALTER TABLE `tb_menu_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `tb_page_sarjana`
--
ALTER TABLE `tb_page_sarjana`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_program_sarjana`
--
ALTER TABLE `tb_program_sarjana`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `to_toko`
--
ALTER TABLE `to_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `to_toko_product`
--
ALTER TABLE `to_toko_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tt_text`
--
ALTER TABLE `tt_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
