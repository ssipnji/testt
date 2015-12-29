-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2015 at 05:57 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sipanji`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_appendix`
--

CREATE TABLE IF NOT EXISTS `master_appendix` (
  `appendix_id` char(3) COLLATE latin1_general_ci NOT NULL,
  `name` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `remarks` varchar(300) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`appendix_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `master_appendix`
--

INSERT INTO `master_appendix` (`appendix_id`, `name`, `remarks`) VALUES
('AP1', 'I', 'tidak boleh diperdagangkan'),
('AP3', 'III', 'bebas untuk diperdagangkan'),
('AP2', 'II', 'boleh diperdagangkan tetapi jumlahnya dibatasi dengan kuota');

-- --------------------------------------------------------

--
-- Table structure for table `master_biota`
--

CREATE TABLE IF NOT EXISTS `master_biota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` char(5) COLLATE latin1_general_ci NOT NULL,
  `id_sub_category` int(11) NOT NULL,
  `appendiks_id` char(3) COLLATE latin1_general_ci NOT NULL,
  `latin_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `local_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `english_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `character` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `image` varchar(400) COLLATE latin1_general_ci NOT NULL,
  `created_by` char(5) COLLATE latin1_general_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `updated_by` char(5) COLLATE latin1_general_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `latin_name` (`latin_name`,`local_name`,`english_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=72 ;

--
-- Dumping data for table `master_biota`
--

INSERT INTO `master_biota` (`id`, `category_id`, `id_sub_category`, `appendiks_id`, `latin_name`, `local_name`, `english_name`, `character`, `image`, `created_by`, `date_created`, `updated_by`, `date_updated`) VALUES
(1, 'K0003', 6, 'AP2', 'Acropora sp.', 'Acropora sp.', 'Acropora sp.', 'Bentuk hidup bercabang. Melekat pada dasar perairan.  Membentuk koloni. Koralit terdiri dari axial k', '1-acroporasp.jpg', 'US001', '2013-12-22 14:34:39', 'ADMIN', '2014-06-05 03:27:38'),
(2, 'K0003', 6, 'AP2', 'Acropora formosa', 'Acropora formosa', 'Acropora formosa', 'Karakter : Bentuk hidup dengan percabangan seperti pohon dari  ramping sampai gemuk. Ada axial koral', '2-25.jpg', 'US001', '2013-12-22 14:37:48', '', '0000-00-00 00:00:00'),
(3, 'K0003', 6, 'AP2', 'Acropora humilis', 'Acropora humilis', 'Acropora humilis', 'Karakter : Karang jenis ini hidup berkoloni. Percabangannya tebal dan berbentuk seperti jari. Axial ', '3-26.jpg', 'US001', '2013-12-22 14:39:48', '', '0000-00-00 00:00:00'),
(4, 'K0003', 6, 'AP2', 'Alveopora spongiosa', 'Alveopora spongiosa', 'Alveopora spongiosa', 'Karakter : Karang jenis ini hidup berkoloni dengan bentuk submasif atau ada juga yang merayap. Ukura', '4-27.jpg', 'US001', '2013-12-22 14:41:04', '', '0000-00-00 00:00:00'),
(5, 'K0003', 6, 'AP2', 'Blastomussa merleti', 'blasto', 'pineapple coral ', 'Karakter : \r\n Blastomussa merleti biasa disebut pineapple coral dan dikenal juga dengan sebutan blas', '5-28.jpg', 'US001', '2013-12-22 14:44:37', '', '0000-00-00 00:00:00'),
(6, 'K0003', 6, 'AP2', 'Blastomussa wellsi ', 'Blastomussa wellsi ', 'Swollen brain coral', 'Karakter : Karang ini hidup berkoloni dengan bentuk koralit plocoid. Ukuran koralit lebih besar dari', '6-29.jpg', 'US001', '2013-12-22 14:46:21', '', '0000-00-00 00:00:00'),
(7, 'K0003', 6, 'AP2', 'Catalaphyllia jardinei ', 'Catalaphyllia jardinei ', 'Elegance coral', 'Karakter :\r\nCatalaphyllia jardinei merupakan salah satu jenis karang yang paling indah. Karang jenis', '7-30.jpg', 'US001', '2013-12-22 14:48:24', '', '0000-00-00 00:00:00'),
(8, 'K0003', 6, 'AP2', 'Caulastrea echinulata', 'Caulastrea echinulata', 'Caulastrea echinulata', 'Karakter :\r\nCaulastrea echinulata biasa hidup berkoloni dengan bentuk koralit paceloid. Septa menonj', '8-31.jpg', 'US001', '2013-12-22 14:50:29', '', '0000-00-00 00:00:00'),
(9, 'K0003', 6, 'AP2', 'Caulastrea tumida', 'Caulastrea tumida', 'Caulastrea tumida', 'Karakter :\r\nKarang jenis ini hidup berkoloni dengan bentuk koralit paceloid . Koloni Caulastrea tumi', '9-32.jpg', 'US001', '2013-12-22 14:55:04', '', '0000-00-00 00:00:00'),
(10, 'K0003', 6, 'AP2', 'Cynarina lacrymalis', 'Cynarina lacrymalis', 'Cynarina lacrymalis', 'Karakter :\r\nKarang jenis ini hidup sendiri (soliter) dan melekat pada dasar perairan, namun sebenarn', '10-33.jpg', 'US001', '2013-12-22 15:06:11', '', '0000-00-00 00:00:00'),
(11, 'K0003', 6, 'AP2', 'Diploastrea heliopora', 'Diploastrea heliopora', 'Diploastrea heliopora', 'Karakter :\r\nKarang ini hidup dalam koloni masive dan dapat mencapai ukuran beberapa meter. Koralitny', '11-34.jpg', 'US001', '2013-12-22 15:07:05', '', '0000-00-00 00:00:00'),
(12, 'K0003', 6, 'AP2', 'Euphyllia glabrescene', 'Euphyllia glabrescene', 'Euphyllia glabrescene', 'Karakter :\r\nEuphyllia jenis ini hidup berkoloni dengan bentuk  koralit fabelloid atau meandroid-pace', '12-35.jpg', 'US001', '2013-12-22 15:07:52', '', '0000-00-00 00:00:00'),
(13, 'K0003', 6, 'AP2', 'Fungia paumotensis', 'Fungia paumotensis', 'Fungia paumotensis', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan soliter (freeliving). Satu polip merupakan satu koral. Hidu', '13-36.jpg', 'US001', '2013-12-22 15:08:50', '', '0000-00-00 00:00:00'),
(14, 'K0003', 6, 'AP2', 'Fungia fungites', 'Fungia fungites', 'Fungia fungites', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan soliter (freeliving). Satu polip merupakan satu koral. Hidu', '14-37.jpg', 'US001', '2013-12-22 15:09:44', '', '0000-00-00 00:00:00'),
(15, 'K0003', 6, 'AP2', 'Fungia moluccensis', 'Fungia moluccensis', 'Fungia moluccensis', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan soliter (freeliving). Satu polip merupakan satu koral. Hidu', '15-38.jpg', 'US001', '2013-12-22 15:10:38', '', '0000-00-00 00:00:00'),
(16, 'K0003', 6, 'AP2', 'Galaxea astreata', 'Galaxea astreata', 'Galaxea astreata', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan masif atau columnar atau mengerak (encrusting). Hidup melek', '16-39.jpg', 'US001', '2013-12-22 15:11:33', '', '0000-00-00 00:00:00'),
(17, 'K0003', 6, 'AP2', 'Galaxea fascicularis', 'Galaxea fascicularis', 'Galaxea fascicularis', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan columnar atau masif. Hidup melekat di dasar perairan. Koral', '17-40.jpg', 'US001', '2013-12-22 15:12:21', '', '0000-00-00 00:00:00'),
(18, 'K0003', 6, 'AP2', 'Goniopora lobata', 'Goniopora lobata', 'Goniopora lobata', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan bercabang atau submasssive. Hidup melekat didasar perairan.', '18-41.jpg', 'US001', '2013-12-22 15:13:42', '', '0000-00-00 00:00:00'),
(19, 'K0003', 6, 'AP2', 'Goniopora minor', 'Goniopora minor', 'Goniopora minor', 'Ciri-ciri khusus :\r\nBentuk pertumbuhan mengerak (encrusting), kadang-kadang berbentuk lembaran. Hidu', '19-42.jpg', 'US001', '2013-12-22 15:18:39', '', '0000-00-00 00:00:00'),
(20, 'K0003', 6, 'AP2', 'Goniopora stokesi', 'Goniopora stokesi', 'Goniopora stokesi', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan membulat dan masif. Hidup melekat di dasar perairan atau ju', '20-43.jpg', 'US001', '2013-12-22 15:19:29', '', '0000-00-00 00:00:00'),
(21, 'K0003', 6, 'AP2', 'Heliofungia actiniformis', 'Heliofungia actiniformis', 'Heliofungia actiniformis', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan hidup bebas (freeliving). Hidup tidak menempel di dasar per', '21-44.jpg', 'US001', '2013-12-22 15:20:13', '', '0000-00-00 00:00:00'),
(22, 'K0003', 6, 'AP2', 'Heliopora coerulea', 'Heliopora coerulea', 'Heliopora coerulea', 'Ciri-ciri khusus :\r\n\r\nTidak termasuk karang scleractinian. Bentuk koloni bercabang kadang sub massiv', '22-45.jpg', 'US001', '2013-12-22 15:21:04', '', '0000-00-00 00:00:00'),
(23, 'K0003', 6, 'AP2', 'Hydnopora exesa', 'Hydnopora exesa', 'Hydnopora exesa', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan submasif, mengerak (encrusting), atau sub-arborescent. Seba', '23-46.jpg', 'US001', '2013-12-22 15:21:46', '', '0000-00-00 00:00:00'),
(24, 'K0003', 6, 'AP2', 'Hydnopora microconos', 'Hydnopora microconos', 'Hydnopora microconos', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan masif besar dan bulat. Hidup menempel didasar perairan. Kor', '24-47.jpg', 'US001', '2013-12-22 15:22:28', '', '0000-00-00 00:00:00'),
(25, 'K0003', 6, 'AP1', 'Hydnopora rigida', 'Hydnopora rigida', 'Hydnopora rigida', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan bercabang tidak teratur dengan dasar yang tidak mengerak (e', '25-48.jpg', 'US001', '2013-12-22 15:23:14', '', '0000-00-00 00:00:00'),
(26, 'K0003', 6, 'AP2', 'Lobophyllia corymbosa', 'Lobophyllia corymbosa', 'Lobophyllia corymbosa', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan masif dan membentuk kubah. Hidup menempel di dasar perairan', '26-49.jpg', 'US001', '2013-12-22 15:23:55', '', '0000-00-00 00:00:00'),
(27, 'K0003', 6, 'AP2', 'Lobophyllia hemprichii', 'Lobophyllia hemprichii', 'Lobophyllia hemprichii', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan masif dan membentuk kubah. Hidup menempel di dasar perairan', '27-50.jpg', 'US001', '2013-12-22 15:24:33', '', '0000-00-00 00:00:00'),
(28, 'K0003', 6, 'AP2', 'Montipora verrucosa', 'Montipora verrucosa', 'Montipora verrucosa', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan koloni mengerak (encrusting), submasif, atau lembaran. Hidu', '28-51.jpg', 'US001', '2013-12-22 15:25:14', '', '0000-00-00 00:00:00'),
(29, 'K0003', 6, 'AP2', 'Montipora foliosa', 'Montipora foliosa', 'Montipora foliosa', 'Ciri-ciri khusus :\r\nBentuk pertumbuhan koloni seperti lembaran, daun, atau  membentuk struktur daun ', '29-52.jpg', 'US001', '2013-12-22 15:25:53', '', '0000-00-00 00:00:00'),
(30, 'K0003', 6, 'AP2', 'Merullina ampliata', 'Merullina ampliata', 'Merullina ampliata', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan koloni lembaran (laminar) atau bercabang (subarborescent) a', '30-53.jpg', 'US001', '2013-12-22 15:30:20', '', '0000-00-00 00:00:00'),
(31, 'K0003', 6, 'AP2', 'Millepora sp', 'Millepora sp', 'Millepora sp', 'Ciri-ciri khusus :\r\n\r\nBentuk koloni biasanya bercabang dan pipih. Jenis Karang ini memiliki sel peny', '31-54.jpg', 'US001', '2013-12-22 15:31:23', '', '0000-00-00 00:00:00'),
(32, 'K0003', 6, 'AP2', 'Nemenzophyllia turbida', 'Nemenzophyllia turbida', 'Nemenzophyllia turbida', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan koloni hidup bebas (free living). Biasanya bagian koloni ya', '32-55.jpg', 'US001', '2013-12-22 15:32:13', '', '0000-00-00 00:00:00'),
(33, 'K0003', 6, 'AP2', 'Plerogyra sinuosa', 'Plerogyra sinuosa', 'Plerogyra sinuosa', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan koloni masif atau sub-masif. Kadang-kadang bagian koloni ya', '33-56.jpg', 'US001', '2013-12-22 15:32:48', '', '0000-00-00 00:00:00'),
(34, 'K0003', 6, 'AP2', 'Pocillopora damicornis', 'Pocillopora damicornis', 'Pocillopora damicornis', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan koloni bercabang dengan ukuran cabang kecil.  Banyak terdap', '34-57.jpg', 'US001', '2013-12-22 15:33:22', '', '0000-00-00 00:00:00'),
(35, 'K0003', 6, 'AP2', 'Pavona cactus', 'Pavona cactus', 'Pavona cactus', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan koloni berupa lembaran yang tipis. Hidup melekat pada dasar', '35-58.jpg', 'US001', '2013-12-22 15:33:56', '', '0000-00-00 00:00:00'),
(36, 'K0003', 6, 'AP2', 'Pectinia lactuca', 'Pectinia lactuca', 'Pectinia lactuca', 'Ciri-ciri khusus :\r\nBentuk pertumbuhan koloni berupa lembaran. Hidup menempel di dasar perairan. Ter', '36-59.jpg', 'US001', '2013-12-22 15:34:33', '', '0000-00-00 00:00:00'),
(37, 'K0003', 6, 'AP2', 'Physogyra lichtensteini', 'Physogyra lichtensteini', 'Physogyra lichtensteini', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan koloni umumnya masiv. Hidup menempel di dasar perairan. Kor', '37-60.jpg', 'US001', '2013-12-22 15:35:07', '', '0000-00-00 00:00:00'),
(38, 'K0003', 6, 'AP2', 'Pocillopora verrucosa', 'Pocillopora verrucosa', 'Pocillopora verrucosa', 'Ciri-ciri khusus :\r\n\r\nbentuk pertumbuhan koloni bercabang atau submasif. Bentuk cabang relatif lebih', '38-61.jpg', 'US001', '2013-12-22 15:35:52', '', '0000-00-00 00:00:00'),
(39, 'K0003', 6, 'AP2', 'Polyphyllia talpina', 'Polyphyllia talpina', 'Polyphyllia talpina', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan hidup bebas (freeliving). Kadang koloni bekembang membentuk', '39-62.jpg', 'US001', '2013-12-22 15:36:27', '', '0000-00-00 00:00:00'),
(40, 'K0003', 6, 'AP2', 'Porites cylindrica', 'Porites cylindrica', 'Porites cylindrica', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan koloni bercabang yang tidak teratur, kadang mengerak (encru', '40-63.jpg', 'US001', '2013-12-22 15:37:03', '', '0000-00-00 00:00:00'),
(41, 'K0003', 6, 'AP2', 'Trachypillia geoffroyi', 'Trachypillia geoffroyi', 'Trachypillia geoffroyi', 'Ciri-ciri khusus :\r\nBentuk pertumbuhan koloni relatif kecil dan hidup bebas. Bentuk koloni yang khas', '41-64.jpg', 'US001', '2013-12-22 15:41:22', '', '0000-00-00 00:00:00'),
(42, 'K0003', 6, 'AP2', 'Tubipora musica', 'Polip cengkeh', 'Tubipora musica', 'Ciri-ciri khusus :\r\nTidak termasuk karang scleractinian. Bentuk koloni seperti tumpukan rumpun bambu', '42-65.jpg', 'US001', '2013-12-22 15:42:18', '', '0000-00-00 00:00:00'),
(43, 'K0003', 6, 'AP2', 'Tubastrea', 'Polip matahari', 'Tubastrea', 'Ciri-ciri khusus :\r\n\r\nMerupakan karang ahermatipik. Bentuk koloni dendroid. Koralit berupa tabung pe', '43-66.jpg', 'US001', '2013-12-22 15:43:15', '', '0000-00-00 00:00:00'),
(44, 'K0003', 6, 'AP2', 'Stylophora pistillata', 'Stylophora pistillata', 'Stylophora pistillata', 'Ciri-ciri khusus :\r\nBentuk pertumbuhan koloni bercabang atau sub massive. Percabangan pendek, dengan', '44-68.jpg', 'US001', '2013-12-22 15:43:58', '', '0000-00-00 00:00:00'),
(45, 'K0003', 6, 'AP2', 'Seriatopora hystrix', 'Sarang burung', 'Seriatopora hystrix', 'Ciri-ciri khusus :\r\nBentuk pertumbuhan koloni bercabang dengan percabangan menyatu saat bertemu. Cab', '45-69.jpg', 'US001', '2013-12-22 15:44:45', '', '0000-00-00 00:00:00'),
(46, 'K0003', 6, 'AP2', 'Dendrophyllia fistula ', 'Dendrophyllia fistula ', 'Large polyp sun coral', 'Karakter :\r\nKarang jenis ini memiliki warna cerah dan bervariasi. Dendrophyllia fistula memiliki kem', '46-70.jpg', 'US001', '2013-12-22 15:45:35', '', '0000-00-00 00:00:00'),
(47, 'K0003', 6, 'AP2', 'Disticophora sp.', 'Disticophora sp.', 'Disticophora sp.', 'Karakter :\r\nKarang jenis ini hidup berkoloni dan merupakan karang hias yang bercabang pada satu bida', '47-71.jpg', 'US001', '2013-12-22 15:48:47', '', '0000-00-00 00:00:00'),
(48, 'K0003', 6, 'AP2', 'Euphyllia cristata', 'Euphyllia cristata', 'Euphyllia cristata', 'Karakter :\r\nKarang jenis ini hidup berkoloni dengan bentuk koralit paceloid yang ukurannya relatif k', '48-72.jpg', 'US001', '2013-12-22 15:49:34', '', '0000-00-00 00:00:00'),
(49, 'K0003', 6, 'AP2', 'Symphillia agaricia', 'Symphillia agaricia', 'Symphillia agaricia', 'Ciri-ciri khusus :\r\nBentuk pertumbuhan koloni hemispherical mendatar. Lembah yang berkelok-kelok  at', '49-73.jpg', 'US001', '2013-12-22 15:50:31', '', '0000-00-00 00:00:00'),
(50, 'K0003', 6, 'AP2', 'Turbinaria peltata', 'Turbinaria peltata', 'Turbinaria peltata', 'Ciri-ciri khusus :\r\nBentuk pertumbuhan koloni seperti gada, lembaran atau daun yang bertingkat. Hidu', '50-74.jpg', 'US001', '2013-12-22 15:51:19', '', '0000-00-00 00:00:00'),
(51, 'K0003', 6, 'AP2', 'Turbinaria mesenterina', 'Turbinaria mesenterina', 'Turbinaria mesenterina', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan koloni seperti daun melebar atau berlekuk-lekuk keatas. Kol', '51-75.jpg', 'US001', '2013-12-22 15:51:58', '', '0000-00-00 00:00:00'),
(52, 'K0003', 6, 'AP2', 'Welsophyllia radiata', 'Welsophyllia radiata', 'Welsophyllia radiata', 'Ciri-ciri khusus :\r\nKoloni soliter membentuk kubah. Dinding koralit saling menyatu membentuk pematan', '52-76.png', 'US001', '2013-12-22 15:53:48', '', '0000-00-00 00:00:00'),
(53, 'K0003', 6, 'AP2', 'Porites nigrescens', 'Porites nigrescens', 'Porites nigrescens', 'Ciri-ciri khusus :\r\nBentuk pertumbuhan koloni bercabang kadang-kadang dengan dasar menempel atau mer', '53-77.jpg', 'US001', '2013-12-22 15:54:48', '', '0000-00-00 00:00:00'),
(54, 'K0003', 6, 'AP2', 'Scolymia vitiensis_coba ubah', 'Scolymia vitiensis', 'Scolymia vitiensis', 'Ciri-ciri khusus :\r\n\r\nBentuk pertumbuhan hidup bebas. Umumnya terdapat satu mulut namun ada juga yan', '54-78.png', 'US001', '2013-12-22 15:56:25', 'US001', '2014-01-04 16:14:48'),
(55, 'K0002', 6, 'AP2', 'Sphyrna zygaena', 'Hiu Martil', 'Sphyrna zygaena', '-', 'sphyrna zygaena.jpg', 'admin', '2014-09-17 06:07:38', 'admin', '2014-09-17 06:07:38'),
(56, 'K0002', 5, 'AP2', 'Sphyrna lewini', 'Hiu Martil', 'Sphyrna lewini', 'merupakan hiu pelagis pesisir juga semi oseanik yang seringkali dijumpai di paparan benua.', 'Sphyrna_lewini_Gervais.jpg', 'admin', '2014-09-17 06:13:20', 'STMKS', '2015-10-04 22:14:23'),
(57, 'K0002', 5, 'AP2', 'Sphyrna mokarran', 'Hiu Martil', 'Sphyrna mokarran', '--', 'great_hammerhead3_sphyrna_mokarran_jeremy_stafford_deitsche.jpg', 'admin', '2014-09-17 06:16:37', 'ADMIN', '2015-07-28 02:49:12'),
(58, 'K0002', 5, 'AP2', 'Carcharhinus longimanus', 'Hiu', 'Carcharhinus longimanus', '--', 'oceanic_whitetip.jpg', 'admin', '2014-09-17 06:20:43', 'ADMIN', '2015-07-28 02:51:15'),
(59, 'K0002', 5, 'AP2', 'Manta birostris', 'Pari Manta', 'Manta birostris', '--', 'normal_ian-symbol-manta-birostris.png', 'admin', '2014-09-17 06:28:14', 'ADMIN', '2015-07-28 03:07:58'),
(60, 'K0002', 5, 'AP2', 'Manta alfredi', 'Pari Manta', 'Manta alfredi', '--', 'Manta_alfredi_Kane2_annotated_650.jpg', 'admin', '2014-09-17 06:29:25', 'ADMIN', '2015-07-28 03:09:47'),
(61, 'K0003', 6, 'AP2', 'Herpolitha limax', 'Karang lidah', 'Houttoyn', 'massif ', '', 'ADMIN', '2014-12-22 10:26:32', 'ADMIN', '2014-12-22 10:26:32'),
(63, 'K0002', 5, 'AP2', 'Sphyrna zygaena', 'Hiu martil', 'Smooth Hammerhead Shark', 'https://en.wikipedia.org/wiki/Smooth_hammerhead', 'Sphyrna_zygaena[1].png', 'ADMIN', '2015-06-26 10:18:54', 'ADMIN', '2015-06-26 10:18:54'),
(70, 'K0003', 10, 'AP2', 'Isis sp', 'bambu laut', 'sea bamboo', 'Bambu laut (Isis Hippuris) yang termasuk dalam suku Gorgonacea yang merupakan kelompok dari karang', '39_RedMangrove.jpg', 'ADMIN', '2015-10-05 05:10:28', 'ADMIN', '2015-10-05 05:10:28'),
(71, 'K0003', 10, 'AP2', 'lunak sekali', 'empuk', 'soft', 'sangat empuk, kenyal dan manis ', '', 'ADMIN', '2015-10-05 05:13:28', 'ADMIN', '2015-10-05 05:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `master_category_biota`
--

CREATE TABLE IF NOT EXISTS `master_category_biota` (
  `id` char(5) COLLATE latin1_general_ci NOT NULL,
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `master_category_biota`
--

INSERT INTO `master_category_biota` (`id`, `name`) VALUES
('K0001', 'Mamalia'),
('K0002', 'Ikan'),
('K0003', 'Karang'),
('K0004', 'Reptil');

-- --------------------------------------------------------

--
-- Table structure for table `master_category_biota_sub`
--

CREATE TABLE IF NOT EXISTS `master_category_biota_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `name` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `master_category_biota_sub`
--

INSERT INTO `master_category_biota_sub` (`id`, `id_kategori`, `name`) VALUES
(5, 'K0002', 'Hiu dan Pari'),
(6, 'K0003', 'Karang keras'),
(8, 'K0001', 'Paus dan Lumba-lumba'),
(9, 'K0002', 'Ikan tulang sejati'),
(10, 'K0003', 'Karang Lunak'),
(11, 'K0002', 'Ikan lainnya'),
(12, 'K0004', 'Penyu dan kura-kura'),
(13, 'K0004', 'Buaya');

-- --------------------------------------------------------

--
-- Table structure for table `master_certificate`
--

CREATE TABLE IF NOT EXISTS `master_certificate` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `created_by` char(5) COLLATE latin1_general_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `updated_by` char(5) COLLATE latin1_general_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `master_certificate`
--

INSERT INTO `master_certificate` (`id`, `name`, `created_by`, `date_created`, `updated_by`, `date_updated`) VALUES
(2, 're-export', 'US001', '2013-12-01 16:07:10', '', '0000-00-00 00:00:00'),
(1, 'export', 'US001', '2013-12-01 16:06:52', '', '0000-00-00 00:00:00'),
(3, 'import', 'US001', '2013-12-01 16:07:10', '', '0000-00-00 00:00:00'),
(4, 'other', 'US001', '2013-12-01 16:07:10', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `master_company`
--

CREATE TABLE IF NOT EXISTS `master_company` (
  `id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `contact` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `contact_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `npwp` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `number_letter` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `sign_exportir` int(11) NOT NULL DEFAULT '0' COMMENT '0 pengedar 1 eksportir',
  `created_by` char(5) COLLATE latin1_general_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `updated_by` char(5) COLLATE latin1_general_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `id_upt` int(11) DEFAULT NULL,
  `tgl_berlaku` date DEFAULT NULL,
  `tgl_akhir_berlaku` date DEFAULT NULL,
  `email` varchar(64) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address` (`address`),
  KEY `contact` (`contact`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=134 ;

--
-- Dumping data for table `master_company`
--

INSERT INTO `master_company` (`id`, `name`, `address`, `contact`, `contact_name`, `npwp`, `number_letter`, `sign_exportir`, `created_by`, `date_created`, `updated_by`, `date_updated`, `id_upt`, `tgl_berlaku`, `tgl_akhir_berlaku`, `email`) VALUES
(0001, 'ANEKA TIRTA SURYA, CV', 'Jl Bendi Utama No 6-8, Tanah Kusir Kebayoran Lama Utara, Jkt 12240', '7238616', 'Pak Susanto Herlambang', '1234567890', '1234567890', 0, 'US001', '2013-12-22 15:59:54', '', '0000-00-00 00:00:00', 6, NULL, '2014-11-05', NULL),
(0002, 'AQUA MARINDO, CV', 'Jl Lenteng Agung Raya No. 9 Jakarta Selatan', '5483259', 'Pak Wiranto Gunawan', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:01:43', '', '0000-00-00 00:00:00', 6, NULL, NULL, NULL),
(0003, 'ARISTOCRATAMA BINAUSAHA, PT', 'Jl Maruya Utara Raya No 53,  Jakarta Barat', '5857182', 'Danny Budiman', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:02:27', '', '0000-00-00 00:00:00', 6, NULL, NULL, NULL),
(0004, 'ASIA PASIFIC AQUATICS, PT', 'Jl Raya Utan Kayu Jati No 7, Pegadungan - Jakarta Barat', '6193185', 'Teddy Gunardi Teguh', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:03:06', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0005, 'BANYU BIRU, CV', 'Jl Bungur I No. 2, Kebayoran Lama Jakarta 12240', '7253417', 'Pak Handoko', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:03:42', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0006, 'BEKAEL ESKA GEMILANG, PT', 'JL H. Domang No 6, kebon Jeruk Jakarta Barat', '5495029', 'Pak Benny K. Lesmana', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:04:16', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0007, 'CAHAYA BARU, CV', 'Jl Cenek No 15, Kodam Bintaro Jakarta 12320', '7341835', 'Pak Johan Tjiptadi', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:05:08', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0008, 'DHARMA INTI PERMAI, PT', 'Jl Lodan Raya No 131 H, Ancol Jakarta Utara 14430', '6901896', 'Pak Dharma Sadeli', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:06:02', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0009, 'DINAR, CV â€“ JAKARTA', 'JL Raya Dadap No 30A, Kosambi Tangerang', '5558476', 'Pak Dody Timur Wahjuadi', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:07:16', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0010, 'DINAR, CV - BALI', 'Jl Br. Kesambi Kerobokan, Kuta Denpasar, Bali', '0361420738', 'Pak Eddy Wahyuono', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:08:06', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0011, 'GLORIA INTERNATIONAL, CV', 'Jl P. Jayakarta 119 No. 9-10 Jakarta Pusat', '6395865', 'Mario Hadrianus Tjipto', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:08:46', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0012, 'GOLDEN MARINDO PERSADA, PT', 'Jl Selembaran Raya 21, Teluk Naga Tangerang 15214', '55901336', 'Pak Wesen D. Wirawan', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:09:18', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0013, 'INTI SAMUDERA LESTARI, PT', 'Jl Petojo Utara 7 No. 22 Jakarta 10130', '6332867', 'Pak Johannes', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:09:52', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0014, 'KHARISMA SURYA LESTARI, PT', 'Jl Cempaka Putih Tengah 26A/3  Jakarta Pusat', '4258305', 'Ir. Yuni Yarman', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:10:33', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0015, 'NINI SRI REJEKI, PT', 'Jl merdeka 1 X/1 Denpasar, Bali', '0361242966', 'Niniek Hannopo', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:11:11', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0016, 'PACIFIC ANEKAMINA, PT', 'Jl Warung Gantung No 9, Blok C  Rawalele, Jakarta 11840', '5414286', 'Pak tony Wonorahardjo', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:11:41', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0017, 'PUSAT KUD MINA JAWA TIMUR', 'Jl Jend A. yani 256, Surabaya', '0318290127', 'Pak Rismet Rheinaldy', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:12:13', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0018, 'SANGPUTRA WIMASJAYA, PT', 'Jl. Raya Tanjung Pasir, Kebun Teki Tangerang ', '559326189', 'Pak Samin Iwan', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:12:47', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0019, 'SARANA TEKNIK, CV', 'Jl Sumtera 33-35, Denpasar-Bali', '0361223334', 'Pak Tony', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:13:26', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0020, 'SEGATAMA, PT ', 'Jl Engganao No 15 Blok B-8, Tanjung Priok, jakarta 10310', '4301913', 'Pak danny Soehendra', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:14:00', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0021, 'TRISENTOSA INTRABUANA NIAGA, PT', 'Jl Bendi Utama No. 20,  Kebayoran Lama-Jakarta Selatan', '72895538', 'Frans Ludony', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:14:37', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0022, 'VIVARIA MARINE, CV', 'Komplek Gudang Bandara Mas A10/11, Jl Marsekal Surya Dharma, Tangerang', '5671453', 'Lie Thay Hian', '1234567890', '1234567890', 0, 'US001', '2013-12-22 16:15:15', '', '0000-00-00 00:00:00', 5, NULL, NULL, NULL),
(0023, 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 1, 'us004', '2014-06-03 09:12:50', 'us004', '2014-06-03 09:12:50', 5, NULL, NULL, NULL),
(0024, 'PT. AAAA eksportir', 'fggfhj', 'fghj', 'fghj', 'fghj', 'ghjkl', 1, 'admin', '2014-06-08 06:09:17', 'admin', '2014-06-08 06:09:17', 5, NULL, NULL, NULL),
(0025, 'PT. BBBB eksportir', 'sdtghdfyj', 'dgfhj', 'gdhjghj', 'fghj', 'fghj', 1, 'admin', '2014-06-08 06:09:56', 'admin', '2014-06-08 06:09:56', 5, NULL, NULL, NULL),
(0026, 'PT. CCCC eksportir', 'fgjkfghk', 'dghkj', 'fghk', 'fghk', 'fghk', 1, 'admin', '2014-06-08 06:30:17', 'admin', '2014-06-08 06:30:17', 5, NULL, NULL, NULL),
(0030, 'PT PADANG JAYA', 'PADANG', '321908', 'UDIN', '82130382190', '', 0, 'STPDG', '2015-08-03 03:31:49', 'KSPDG', '2015-08-03 03:34:41', 6, NULL, NULL, 'udin@padangjaya.com'),
(0031, 'PT ZANCLUS ', 'CITAYAM', '324890', 'IDRIS', '389210189032', '', 0, 'SALPG', '2015-08-03 04:13:19', 'STSER', '2015-10-05 00:38:44', 5, NULL, NULL, 'idris@zanclus.com'),
(0081, 'Charly Wijaya Tuna PT', 'Pelabuhan Perikanan Samudera Nizam Zachman TPT 24 Muara Baru Penjaringan Jakarta Utara', '081281036608', 'Mufid Sufangat', '324444', '', 0, 'SAJKT', '2015-10-19 21:57:19', 'SAJKT', '2015-10-19 21:57:19', 5, NULL, NULL, 'dafikjunior@gmail.com'),
(0033, 'PT KOMODO CIPTA KREATIF', 'JL. AGUNG RAYA', '08561057104', 'Safran Yusri', '98756213', '', 0, 'ADMIN', '2015-08-05 02:04:29', 'ADMIN', '2015-08-05 02:04:29', 0, NULL, NULL, 'safran.yusri@gmail.com'),
(0035, 'KUCING', 'WWWW', '980809696', 'JFIU', '2344666', '', 0, 'SABJM', '2015-08-05 03:01:12', 'SABJM', '2015-08-05 03:01:12', 3, NULL, NULL, 'JFIU@YAHOOOO.COM'),
(0090, 'CV. MAJU BERSAMA', 'Jl. Uray Bawadi No.15 Pontianak', '0561885617', 'Burhan Hub', '171.0.435.701.000', '', 0, 'STPON', '2015-10-20 08:16:29', 'STPON', '2015-10-20 08:16:29', 3, NULL, NULL, 'maju_bersama@gmail.com'),
(0095, 'PT. Pinang Jaya', 'Jl. Ganet Blok D No. 11, Kota Tanjungpinang', '0771 342893', 'Wijaya', '098593082303', '', 0, 'SATJP', '2015-10-20 08:23:15', 'SATJP', '2015-10-20 08:23:15', 6, NULL, NULL, 'wijaya@yahoo.com'),
(0056, 'PT SEDERHANA SIMPANG JAYA DUA BERSAUDARA', 'KOTA PADANG', '9868765', 'YUNIZAR AMRIL', '34267598908', '', 0, 'STPDG', '2015-10-19 21:44:41', 'STPDG', '2015-10-19 22:03:09', 6, NULL, NULL, 'yunizar.amril@sederhanadkk.com'),
(0040, 'PT.ACB', 'MERAUKE', '72705089', 'JUNAEDY', '4567890', '', 0, 'KASOR', '2015-08-05 07:56:35', 'KASOR', '2015-08-05 07:56:35', 8, NULL, NULL, 'ahmad@junaedy.com'),
(0085, 'UD. PESUT', 'Jalan. Prof. M Yamin, Pontianak', '085655312000', 'Edy', '0041234567', '', 0, 'STPON', '2015-10-20 08:11:44', 'STPON', '2015-10-20 08:11:44', 3, NULL, NULL, 'edysusanto@gmail.com'),
(0089, 'UD. AKU HEBAT', 'Jalan J. Leimena No 25 Kelurahan Tihu, Kec. Teluk Ambon, Kota Ambon, Provinsi Maluku', '0911-987657', 'Santika Premiere', '9876.9876.9876.987', '', 0, 'KSSOR', '2015-10-20 08:14:53', 'KSSOR', '2015-10-20 08:14:53', 8, NULL, NULL, 'santika@gmail.com'),
(0043, 'PT. Karang Lestari', 'Citayam', '021120021', 'Lestari', '20090920923', '', 0, 'STSER', '2015-09-08 21:29:50', 'STSER', '2015-09-08 21:29:50', 5, NULL, NULL, 'karang@lestari.co.id'),
(0044, 'PT TERANGI', 'JL. ASYIBANIAH', '08561057104', 'SAFRAN YUSRI', '21456678543', '', 0, 'STSER', '2015-09-08 21:50:26', 'STSER', '2015-09-08 21:50:26', 5, NULL, NULL, 'safran.yusri@terangi.or.id'),
(0045, 'PT ANHAR MANDIRI', 'GLODOK PLAZA', '040495885', 'MUSLIM', '0459506850', '', 0, 'KASER', '2015-09-10 18:37:10', 'KASER', '2015-09-10 18:37:10', 5, NULL, NULL, 'aDDD@DKI.COM'),
(0046, 'PT SIRIP HIU ANHAR', 'STASIUN KOTA', '0303930', 'ANHAR SIRIP', '08776543', '', 0, 'KASER', '2015-09-10 18:42:05', 'KASER', '2015-09-10 18:42:05', 5, NULL, NULL, 'SEJEJE@DKDKDK.COM'),
(0047, 'Debio bio', 'cikupamas', '093837839', 'endin', '038859995', '', 0, 'KASER', '2015-09-10 21:38:35', 'KASER', '2015-09-10 21:38:35', 5, NULL, NULL, 'ding@tobat.com'),
(0048, 'TES DEBIO', '123 JAKARTA', '123456', 'IP MAN', '123456789', '', 0, 'SALPG', '2015-09-10 21:39:02', 'SALPG', '2015-09-10 21:39:02', 5, NULL, NULL, 'IPMAN@GMAIL.COM'),
(0049, 'CV RIBUT ANGIN', 'Karet, Labuan', '081311111111', 'Mas Ribut', '1234567890', '', 0, 'STSER', '2015-09-10 22:11:41', 'STSER', '2015-09-10 22:11:41', 5, NULL, NULL, 'masribut@gogo.com'),
(0057, 'PT. BAWANG GORENG (ST)', 'JL. BASUKI RAHMAT NO 13 PALU SULAWESI TENGAH', '0452-555555', 'ROHTADI', '1226673445008', '', 0, 'STPLU', '2015-10-19 21:44:48', 'KAMKS', '2015-10-20 09:51:09', 4, NULL, NULL, 'gorengbawang@gmail.com'),
(0052, 'Cv. Dana Sejahtera', 'aldfkj', '29098980089', 'Udin', '219308', '', 0, 'STMKS', '2015-10-04 22:56:23', 'STMKS', '2015-10-04 22:56:23', 4, NULL, NULL, 'udin@danasejahtera.com'),
(0092, 'UD ARMAN ', 'JL PAHLAWAN NUNBAUN SABU KUPANG NTT', '085237776060', 'LA ARMAN DJAFAR', '12345678910', '', 0, 'SAKUP', '2015-10-20 08:18:33', 'SAKUP', '2015-10-20 08:18:33', 7, NULL, NULL, 'ud_arman@gmail.com'),
(0054, 'PT. ALFATIH', 'jalan pundak lengan', '0821137649324', 'fatih', '83218679513409', '', 0, 'STMKS', '2015-10-05 21:40:36', 'STMKS', '2015-10-05 21:40:36', 4, NULL, NULL, 'fatih@gmail.com'),
(0055, 'PT. MEDRIAL', 'jalan tangan jari', '017223694', 'Medrial', '8475.8453', '', 0, 'STMKS', '2015-10-05 22:33:44', 'STMKS', '2015-10-05 22:33:44', 4, NULL, NULL, 'medrial@gmail.com'),
(0059, 'UD. Menara Mas', 'Jl. Sukamara, Landasan Ulin, Banjarbaru', '082125787890', 'WIDI', '123465859690', '', 0, 'SABJM', '2015-10-19 21:44:53', 'SABJM', '2015-10-19 21:44:53', 3, NULL, NULL, 'widi21@yahoo.co.id'),
(0060, 'UD. Hasyim', 'jl. kompleks lido km. 2 sorong barat, kota sorong', '085255605615', 'La Hasyim', '311013', '', 0, 'STSOR', '2015-10-19 21:44:59', 'STSOR', '2015-10-19 21:44:59', 8, NULL, NULL, 'la_hasyim@gmail.com'),
(0091, 'PT Hiu Indonesia Semarang', 'Semarang', '081326449052', 'Bagus Aris Wibowo, S. Pi, M. Si', '9', '', 0, 'SASMG', '2015-10-20 08:18:04', 'SASMG', '2015-10-20 08:18:04', 5, NULL, NULL, 'bagusariswibowo@yahoo.co.id'),
(0062, 'UD. Rizqa', 'jalan. Tabrani Ahmad No. 67\nPontianak', '085245440234', 'Stefanus', '123456789', '', 0, 'STPON', '2015-10-19 21:45:06', 'STPON', '2015-10-19 22:02:57', 3, NULL, NULL, 'atek.hiu@gmail.com'),
(0063, 'UD. LESTARI AQUATIKA (KDR)', 'JL. DESA TONDONGGEU, KEC. ABELI KOTA KENDARI NO. 1', '081935266691', 'WAJIA', '1234567890', '', 0, 'STKDI', '2015-10-19 21:45:09', 'KAMKS', '2015-10-20 09:53:06', 4, NULL, NULL, 'udlestari.aquatika@gmail.com'),
(0064, 'PT. PINANG LESTARI', 'Jl. Ir. sutami No 9, Tanjungpinang', '08199456899', 'Andi', '087681715', '', 0, 'SATJP', '2015-10-19 21:45:18', 'SAPKU', '2015-10-19 21:57:12', 6, NULL, NULL, ''),
(0113, 'ASAL AJA', 'MATARAM', '0899920000', 'LISA', '200 123457884', '', 0, 'SAMTR', '2015-10-20 22:38:02', 'SAMTR', '2015-10-20 22:38:02', 7, NULL, NULL, 'asaal@yahoo.com'),
(0114, 'PT. AQUA HOME INTERNATIONAL', 'Jl. Taman Jimbaran Gang Serongga, Jimbaran, Badung – BALI', '08', 'ALFREDO LEONARD', '12345', '', 0, 'STDPS', '2015-10-20 22:56:14', 'STDPS', '2015-10-20 22:56:14', 7, NULL, NULL, '123@gmail.com'),
(0066, 'PT. ANUGERAH BAHARI JAYA (MDO)', 'Kelurahan Pateten dua, Aertembaga Kota Bitung, Prop. Sulawesi Utara', '085255482770', 'MEITTY SULAMANDA', '1234567787890', '', 0, 'STSUT', '2015-10-19 21:45:29', 'STSUT', '2015-10-20 09:48:15', 4, NULL, NULL, 'meittty.sulamanda@gmail.com'),
(0067, 'UD. DULLAH', 'JL. TANJUNG KELOR NO.26 RT. 009, MANGGAR BARU BALIKPAPAN TIMUR, BALIKPAPAN KALIMANTAN TIMUR 76116', '08134705422', 'DULLAH', '16.081.137.8-721.000', '', 0, 'SABPN', '2015-10-19 21:46:05', 'SABPN', '2015-10-19 21:46:05', 3, NULL, NULL, ''),
(0094, 'PT. SULTRA LESTARI (KDR)', 'JL. POROS PPS NO.212 KOTA KENDARI', '082122161209', 'MAS WIRO SABLENG', '12345678910', '', 0, 'STKDI', '2015-10-20 08:22:30', 'KAMKS', '2015-10-20 09:53:52', 4, NULL, NULL, 'SULTRA.212@GMAIL.COM'),
(0069, 'PT Hiu Merdeka', 'Jalan Arjuna 5, Nomor 2, RT 2, RW 9, Mapagan, Desa Lerep, Kecamatan Ungaran Barat, Kabupaten Semarang', '081326449052', 'Bagus Aris Wibowo, S. Pi, M. Si', '9', '', 0, 'SASMG', '2015-10-19 21:46:54', 'SASMG', '2015-10-19 22:03:23', 5, NULL, NULL, 'bagusariswibowo@yahoo.co.id'),
(0093, 'PT. YASIR MANADO (MDO)', 'JL. Kajenjeng 2 no. 7 Manado', '085255482770', 'Yusuf Mansur', '123456789', '', 0, 'STSUT', '2015-10-20 08:19:53', 'STSUT', '2015-10-20 09:46:36', 4, NULL, NULL, 'yusuf.mansur@gmail.com'),
(0071, 'PT. ERAMINA SARANA MANDIRI', 'Komplek Ruku Lodan No F 2-7 Ancol Jakarta Utara', '08500792036', 'Abdul Ghafur', '12344555', '', 0, 'SAJKT', '2015-10-19 21:48:17', 'SAJKT', '2015-10-19 21:51:23', 5, NULL, NULL, 'gopur@indonesiaseafood.net'),
(0072, 'PT. PRATMI IQBAL', 'Jl. mt haryono no. 5, Pekanbaru', '087692838475', 'Pratmi', '0904735904759', '', 0, 'SAPKU', '2015-10-19 21:48:31', 'SAPKU', '2015-10-19 21:48:31', 6, NULL, NULL, ''),
(0073, 'DEBIO, PT', 'Komplek Pergudangan Cikupa Mas No. 2C, Cikupa, Kabupaten Tangerang.', '08176014869', 'Endin Shaptudin', '1234567890', '', 0, 'STSER', '2015-10-19 21:49:04', 'STSER', '2015-10-19 21:49:04', 5, NULL, NULL, 'ndiens@bumina.com'),
(0074, 'LAMPUNG JAYA, PT', 'JL. TELUK LAMPUNG NO. 26\r\nKELURAHAN PIDADA, PANJANG\r\nKOTA BANDAR LAMPUNG', '0811112345', 'ADE KURNIAWAN', '65673218', '', 0, 'SALPG', '2015-10-19 21:49:17', 'SALPG', '2015-10-19 21:49:17', 5, NULL, NULL, 'ade.k@gmail.com'),
(0075, 'CV.KARYA MURNI (MKS)', 'JL. Poros Galesong Utara No. 4 Kabupaten Takalar', '081242892178', 'FAJRI', '123456789010', '', 0, 'STMKS', '2015-10-19 21:49:26', 'KAMKS', '2015-10-20 09:55:34', 4, NULL, NULL, 'fajri.utara@gmail.com'),
(0115, 'PT Asia pacific', 'jalan rindu sekali surabaya', '085736417223', 'nyong', '6789053', '', 0, 'SASUB', '2015-10-20 23:16:01', 'SASUB', '2015-10-20 23:16:01', 7, NULL, NULL, 'asiapacific@gmail.com'),
(0077, 'UD. SYAHRUDDIN', 'JL.  21 JANUARI NO. 42 RT. 47, BARU TENGAH BALIKPAPAN BARAT, BALIKPAPAN KALIMANTAN TIMUR.', '085346263587', 'H. SYAHRUDDIN', '73.516.330.5-721.000', '', 0, 'SABPN', '2015-10-19 21:51:11', 'SABPN', '2015-10-20 08:28:07', 3, NULL, NULL, ''),
(0078, 'UD. ISMAIL', 'JL. WOLTER MONGINSIDI NO. 11 RT.30, BARU ULU BALIKPAPAN BARAT, BALIKPAPAN KALIMANTAN TIMUR.', '082153413619', 'H. ISMAIL', '73.526.689.2-721.000', '', 0, 'SABPN', '2015-10-19 21:52:59', 'SABPN', '2015-10-19 21:52:59', 3, NULL, NULL, ''),
(0079, 'UD. DARWIS', 'JL.BATU BUTUK NO.859 RT.031, KEL. MARGO MULYO, KECAMATAN BALIKPAPAN BARAT.', '081253433511', 'M. DARWIS.R', '000000000000', '', 0, 'SABPN', '2015-10-19 21:54:22', 'SABPN', '2015-10-19 21:54:22', 3, NULL, NULL, ''),
(0080, 'UD. WAHAB', 'JL. PERSATUAN KELURAHAN MANGGAR BARU KEC. BALIKPAPAN TIMUR, KOTA BALIKPAPAN', '081330450634', 'ABD. WAHAB', '735.094.641-721.000', '', 0, 'SABPN', '2015-10-19 21:55:33', 'SABPN', '2015-10-19 21:55:33', 3, NULL, NULL, ''),
(0096, 'CV Rams Trans', 'Kantor: Jl. Kuala Kapuas I/7, GKB RT.009 RW.011, Suci, Manyar, Gresik\r\n\r\nGudang: Jl. Ikan Buntek No.17, Surabaya', '62 31-3555792 ', 'Triyanto', '03.306.243.1-612.000', '', 0, 'SASUB', '2015-10-20 08:23:41', 'SASUB', '2015-10-20 08:23:41', 7, NULL, NULL, 'triyanto@gmail.com'),
(0086, 'UD. KIMA', 'Jalan Husien Hamzah, Pontianak', '08573478999', 'Dwi', '987654321', '', 0, 'STPON', '2015-10-20 08:13:43', 'STPON', '2015-10-20 08:13:43', 3, NULL, NULL, 'dwilistya@gmail.com'),
(0087, 'UD. Ternate', 'jl. anggrek merah no 101 A kota ternate', '085781927274', 'dorce gamalama', '7654321', '', 0, 'SAMRK', '2015-10-20 08:14:15', 'SAMRK', '2015-10-20 08:14:15', 8, NULL, NULL, 'dorce_gamalame@yahoo.com'),
(0088, 'PT. CARUT MARUT MERDEKA (PLW)', 'JL. KALEDO INDAH NO 2 SULTENG', '7676486', 'AMBO TUO', '87877878778787', '', 0, 'STPLU', '2015-10-20 08:14:26', 'STPLU', '2015-10-20 23:43:46', 4, NULL, NULL, 'ambotu@gmail.com'),
(0097, 'UD. TRIJAYA ', 'Jl. Sukamara, Landasan Ulin, Banjarbaru, KALSEL', '08125258787', 'WIDI', '98374859', '', 0, 'SABJM', '2015-10-20 08:25:40', 'SABJM', '2015-10-20 08:25:40', 3, NULL, NULL, 'widi@yahoo.com'),
(0098, 'CV.DHEYAN NEHRA (MKS 1)', 'JL. MUTIARA JAYA NO. 15 MAKASSAR', '085255644555', 'LEWINI', '12345678910', '', 0, 'STMKS', '2015-10-20 08:25:46', 'STMKS', '2015-10-20 23:56:57', 4, NULL, NULL, 'lewini.82@gmail.com'),
(0099, 'CV. DHEYAN NEHRA (MKS 2)', 'JL. MUTIARA JAYA NO. 20 KOTA MAKASSAR', '085255644555', 'LEWINI', '1234567890', '', 0, 'STMKS', '2015-10-20 08:27:58', 'STMKS', '2015-10-20 23:57:34', 4, NULL, NULL, 'lewinijaya@gmail.com'),
(0100, 'Tridaya Eramina Bahari PT', 'Jl. Muara Baru Ujung Blok K No. 3 Jakarta Utara', '081322579615', 'Nanang Tusiawan', '45332566', '', 0, 'SAJKT', '2015-10-20 08:27:58', 'SAJKT', '2015-10-20 08:27:58', 5, NULL, NULL, 'nanangtusiawan@yahoo.com'),
(0101, 'CV. CAHAYA BARU', 'JL. MERTASARI NO 57, SIDAKARYA, DENPASAR - BALI', '08174763105', 'H. ABDULLAH GISMAR', '01.362.226.1-903.001', '', 0, 'STDPS', '2015-10-20 08:29:08', 'STDPS', '2015-10-20 08:29:08', 7, NULL, NULL, 'cahayabarubali@gmail.com'),
(0102, 'UD. Gaya Baru', 'Jl. Panai Hambawang, Kab. Hulu Sungai Tengah, KALSEL', '09393939', 'H. ISAK', '494949494', '', 0, 'SABJM', '2015-10-20 08:29:12', '', '2015-10-20 09:06:34', 3, NULL, NULL, 'dididt@yahoo.com'),
(0103, 'CV. Lombok Raya', 'Cakranegara, ', '0370-657281', 'anggea', '154 01010 257 33 000', '', 0, 'SAMTR', '2015-10-20 08:33:08', 'SAMTR', '2015-10-20 09:02:38', 7, NULL, NULL, 'lombokraya@gmail.com'),
(0104, 'CV. Pesisir Maju (SBT)', 'Jl. Ir. Juanda No. 45 Mamuju-Sulbar', '082121868678', 'Ismail', '12345678910', '', 0, 'STMKS', '2015-10-20 08:44:31', 'STMKS', '2015-10-20 22:01:56', 4, NULL, NULL, 'mail@yahoo.co.id'),
(0105, 'PT KEPRI JAYA (TNJ)', 'Jl. Basuki Rachmat No.5, Kota Tanjungpinang', '0771 345756', 'Awi', '09876673849404', '', 0, 'SATJP', '2015-10-20 09:05:40', 'SATJP', '2015-10-20 09:05:40', 6, NULL, NULL, ''),
(0106, 'PT Seven seas', 'Jln rungkut Industri surabaya', '0315151', 'ipuk', '12345678', '', 0, 'STDPS', '2015-10-20 09:10:48', 'STDPS', '2015-10-20 09:10:48', 7, NULL, NULL, 'sevensean@gmail.com'),
(0107, 'PT MAKMUR SANTOSA', 'RUNGKUT MENANGGAL 10, SURABAYA', '081321453453', 'NYENG', '122363446377876', '', 0, 'SASUB', '2015-10-20 09:10:48', 'SASUB', '2015-10-20 09:10:48', 7, NULL, NULL, 'bpspldenpasarwilkerjatim@gmail.com'),
(0108, 'UD. Bunarto', 'jl. Banjarmasin', '08128282828', 'bunarto', '4545454', '', 0, '', '2015-10-20 09:12:52', '', '2015-10-20 09:12:52', 3, NULL, NULL, 'djdjdj@yahoo.com'),
(0109, 'PT. ASHO JAYA, PLW', 'JJGKGDLGKGJGJ', '4636366', 'LABACO', '45346436346346', '', 0, 'STPLU', '2015-10-20 09:14:52', 'STPLU', '2015-10-20 09:14:52', 4, NULL, NULL, 'KGJGKJSG2@GMAIL.COM'),
(0110, 'PT KAREPE DEWE', 'JL SEDATI 10, SIDOARJO', '085649427070', 'NYUNG', '123473658765', '', 0, 'SASUB', '2015-10-20 09:30:05', 'SASUB', '2015-10-20 09:30:05', 7, NULL, NULL, 'bpspldenpasarwilkerjatim@gamil.com'),
(0111, 'PT. PESISIR (mks)', 'JL. MAKMUR SITAKKA NO. 12 MAKASSAR', '085234254567', 'NISA', '234567899000', '', 0, 'STMKS', '2015-10-20 09:39:20', 'STMKS', '2015-10-20 09:39:20', 4, NULL, NULL, 'nisa@yahoo.com'),
(0112, 'Indo Pacific CV', 'Pelabuhan Perikanan Samudera Nizam Jl. Tuna Raya No 3 Muara Baru Jakarta Utara', '081511229988', 'Maman Suherman', '8677777', '', 0, 'SAJKT', '2015-10-20 20:38:54', 'SAJKT', '2015-10-20 20:38:54', 5, NULL, NULL, 'inpacfish.herman@gmail.com'),
(0116, 'UD SARMAN', 'JL PARADISO KUPANG NTT', '081239432516', 'HASIM BUKORI', '00.123.45678910', '', 0, 'SAKUP', '2015-10-20 23:20:28', 'SAKUP', '2015-10-20 23:20:28', 7, NULL, NULL, 'ud_sarman@gmail.com'),
(0117, 'PT. NURMILA NASUTION', 'TANJUNG PRIUK JAKARTA UTARA', '08139876544', 'NURMILA ANWAR NASUTION', '377888888', '', 0, 'SAJKT', '2015-10-21 00:06:52', 'SAJKT', '2015-10-21 00:06:52', 5, NULL, NULL, 'mila@gmail.com'),
(0118, 'Santika', 'Surabaya', '12345', 'sartono', '23498908', '', 0, 'STDPS', '2015-10-21 00:13:24', 'STDPS', '2015-10-21 00:13:24', 7, NULL, NULL, 'sartono@santika.com'),
(0119, 'LA DAKU BEU', 'JL LAPANGAN TEMBAK NO 2 KUPANG', '0811234567', 'LA DAKU BEU', '00012345678910', '', 0, 'SAKUP', '2015-10-21 02:07:28', 'SAKUP', '2015-10-21 02:07:28', 7, NULL, NULL, 'la_dakubeu@gmail.com'),
(0120, 'CV Terong Penyet', 'Jalan Antah Berantah, Surabaya', '081221800812', 'Mrs. Winterbourne', '00213457681', '', 0, 'SASUB', '2015-10-21 02:11:40', 'SASUB', '2015-10-21 02:11:40', 7, NULL, NULL, 'winter.spring@gmail.com'),
(0121, 'PT. SUMBER AMPENAN', 'JALAN GUSTI NGURAH ANOM, NO. 12 MATARAM', '0370-257333', 'ASIONG', '123 098 26 000 124', '', 0, 'SAMTR', '2015-10-21 02:13:13', 'SAMTR', '2015-10-21 02:16:26', 7, NULL, NULL, 'asiongckr@gmail.com'),
(0122, 'PT AMSIONG', 'El Tari Kupang', '08181818181', 'amsiong', '56478901', '', 0, 'SAKUP', '2015-10-21 02:36:38', 'SAKUP', '2015-10-21 02:36:38', 7, NULL, NULL, 'am.siong@gmail.com'),
(0123, 'CV. AMBONESSE', 'JL. SESETAN NO 15 DENPASAR', '085243442052', 'THENNY', '12344321221123', '', 0, 'STDPS', '2015-10-21 02:49:29', 'STDPS', '2015-10-21 02:49:29', 7, NULL, NULL, 'theinpetta@gmail.com'),
(0124, 'PT NUSA CENDANA', 'JL EL TARI KUPANG', '0811123456', 'AMSIONG', '12145678910', '', 0, 'SAKUP', '2015-10-21 03:03:20', 'SAKUP', '2015-10-21 03:03:20', 7, NULL, NULL, 'amsiong@yahoo.com'),
(0125, 'PT. Samudera Makmur', 'Jl. Teluk Lampung No. 45 Panjang', '0827745610', 'Ririn Nurbaeti', '1234879909', '', 0, 'SALPG', '2015-11-03 21:40:20', 'SALPG', '2015-11-03 21:40:20', 5, NULL, NULL, 'ririn@gmail.com'),
(0129, 'PT Komodo Cipta Kreatif', 'kelurahan pasir kuda', '99999999', 'mae', '123456', '', 0, 'STPDG', '2015-12-07 09:08:06', 'STPDG', '2015-12-07 09:08:06', 6, NULL, NULL, 'maeji18@mae.com'),
(0130, 'PT ABC', 'Jalan Raden Saleh', '08123456677', 'Ahmad', '12345678', '', 1, 'KSPDG', '2015-12-21 21:26:44', 'KSPDG', '2015-12-21 21:26:44', 6, NULL, NULL, 'ahmad@ahmad.com'),
(0131, 'PT PPK', 'jakarta pusat', '871097963', 'ppkt', '1940187', '', 1, 'STPDG', '2015-12-21 21:44:31', 'STPDG', '2015-12-21 21:44:31', 6, NULL, NULL, 'ppk@yahoo.com'),
(0133, 'wse', 'rrrt', '234', 'aaa', '2345', '', 1, 'STPDG', '2015-12-23 02:01:29', 'STPDG', '2015-12-23 02:01:29', 6, NULL, NULL, 'qwe@qwe.m');

-- --------------------------------------------------------

--
-- Table structure for table `master_company_dokumen_dn`
--

CREATE TABLE IF NOT EXISTS `master_company_dokumen_dn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dokumen` varchar(50) DEFAULT NULL,
  `kelompok` int(11) DEFAULT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `master_company_dokumen_dn`
--

INSERT INTO `master_company_dokumen_dn` (`id`, `nama_dokumen`, `kelompok`, `used`) VALUES
(1, 'Tanda Bukti Diri Perseorangan atau Korporasi', 1, 1),
(2, 'Proposal', 1, 1),
(3, 'SIUP', 1, 1),
(4, 'SITU/Domisili', 1, 1),
(5, 'NPWP', 1, 1),
(6, 'TDP', 1, 1),
(7, 'Nama Jenis Ikan (Lokal dan Latin)', 1, 1),
(8, 'D', 1, 0),
(9, 'B', 1, 0),
(10, 'C', 1, 0),
(11, 'SURAT TUGAS PEMERIKSAAN', 2, 1),
(12, 'BERITA ACARA PEMERIKSAAN (BAP) FISIK', 3, 1),
(13, 'SURAT IZIN PENGEDAR DALAM NEGERI', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_company_dokumen_ln`
--

CREATE TABLE IF NOT EXISTS `master_company_dokumen_ln` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dokumen` varchar(50) DEFAULT NULL,
  `kelompok` int(11) DEFAULT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `master_company_dokumen_ln`
--

INSERT INTO `master_company_dokumen_ln` (`id`, `nama_dokumen`, `kelompok`, `used`) VALUES
(1, 'Tanda Bukti Diri Perseorangan atau Korporasi', 1, 1),
(2, 'Proposal', 1, 1),
(3, 'SIUP', 1, 1),
(4, 'SITU/Domisili', 1, 1),
(5, 'NPWP', 1, 1),
(6, 'TDP', 1, 1),
(7, 'Nama Jenis Ikan (Lokal dan Latin)', 1, 1),
(8, 'D', 1, 0),
(9, 'B', 1, 0),
(10, 'C', 1, 0),
(11, 'SURAT TUGAS PEMERIKSAAN', 2, 1),
(12, 'BERITA ACARA PEMERIKSAAN (BAP)', 3, 1),
(13, 'SURAT IZIN PENGEDAR LUAR NEGERI', 4, 1),
(14, 'Rekomendasi Kepala Balai/Loka', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_company_status`
--

CREATE TABLE IF NOT EXISTS `master_company_status` (
  `id` int(11) NOT NULL,
  `statusnya` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_company_status`
--

INSERT INTO `master_company_status` (`id`, `statusnya`) VALUES
(0, 'PENGEDAR'),
(1, 'EKSPORTIR');

-- --------------------------------------------------------

--
-- Table structure for table `master_country`
--

CREATE TABLE IF NOT EXISTS `master_country` (
  `kode_iso2` varchar(2) NOT NULL,
  `kode_iso3` varchar(3) DEFAULT NULL,
  `kode_telp` varchar(10) DEFAULT NULL,
  `nama_negara` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_iso2`),
  UNIQUE KEY `iso2` (`kode_iso2`),
  UNIQUE KEY `nama_negara` (`nama_negara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_country`
--

INSERT INTO `master_country` (`kode_iso2`, `kode_iso3`, `kode_telp`, `nama_negara`) VALUES
('AF', 'AFG', '93', 'Afghanistan'),
('AL', 'ALB', '355', 'Albania'),
('DZ', 'DZA', '213', 'Algeria'),
('AS', 'ASM', '1684', 'American Samoa'),
('AD', 'AND', '376', 'Andorra'),
('AO', 'AGO', '244', 'Angola'),
('AI', 'AIA', '1264', 'Anguilla'),
('AQ', 'ATA', '672', 'Antarctica'),
('AG', 'ATG', '1268', 'Antigua and Barbuda'),
('AR', 'ARG', '54', 'Argentina'),
('AM', 'ARM', '374', 'Armenia'),
('AW', 'ABW', '297', 'Aruba'),
('AU', 'AUS', '61', 'Australia'),
('AT', 'AUT', '43', 'Austria'),
('AZ', 'AZE', '994', 'Azerbaijan'),
('BS', 'BHS', '1242', 'Bahamas'),
('BH', 'BHR', '973', 'Bahrain'),
('BD', 'BGD', '880', 'Bangladesh'),
('BB', 'BRB', '1246', 'Barbados'),
('BY', 'BLR', '375', 'Belarus'),
('BE', 'BEL', '32', 'Belgium'),
('BZ', 'BLZ', '501', 'Belize'),
('BJ', 'BEN', '229', 'Benin'),
('BM', 'BMU', '1441', 'Bermuda'),
('BT', 'BTN', '975', 'Bhutan'),
('BO', 'BOL', '591', 'Bolivia'),
('BA', 'BIH', '387', 'Bosnia and Herzegovina'),
('BW', 'BWA', '267', 'Botswana'),
('BR', 'BRA', '55', 'Brazil'),
('IO', 'IOT', '0', 'British Indian Ocean Territory'),
('VG', 'VGB', '1284', 'British Virgin Islands'),
('BN', 'BRN', '673', 'Brunei'),
('BG', 'BGR', '359', 'Bulgaria'),
('BF', 'BFA', '226', 'Burkina Faso'),
('MM', 'MMR', '95', 'Burma (Myanmar)'),
('BI', 'BDI', '257', 'Burundi'),
('KH', 'KHM', '855', 'Cambodia'),
('CM', 'CMR', '237', 'Cameroon'),
('CA', 'CAN', '1', 'Canada'),
('CV', 'CPV', '238', 'Cape Verde'),
('KY', 'CYM', '1345', 'Cayman Islands'),
('CF', 'CAF', '236', 'Central African Republic'),
('TD', 'TCD', '235', 'Chad'),
('CL', 'CHL', '56', 'Chile'),
('CN', 'CHN', '86', 'China'),
('CX', 'CXR', '61', 'Christmas Island'),
('CC', 'CCK', '61', 'Cocos (Keeling) Islands'),
('CO', 'COL', '57', 'Colombia'),
('KM', 'COM', '269', 'Comoros'),
('CK', 'COK', '682', 'Cook Islands'),
('CR', 'CRC', '506', 'Costa Rica'),
('HR', 'HRV', '385', 'Croatia'),
('CU', 'CUB', '53', 'Cuba'),
('CY', 'CYP', '357', 'Cyprus'),
('CZ', 'CZE', '420', 'Czech Republic'),
('CD', 'COD', '243', 'Democratic Republic of the Congo'),
('DK', 'DNK', '45', 'Denmark'),
('DJ', 'DJI', '253', 'Djibouti'),
('DM', 'DMA', '1767', 'Dominica'),
('DO', 'DOM', '1809', 'Dominican Republic'),
('EC', 'ECU', '593', 'Ecuador'),
('EG', 'EGY', '20', 'Egypt'),
('SV', 'SLV', '503', 'El Salvador'),
('GQ', 'GNQ', '240', 'Equatorial Guinea'),
('ER', 'ERI', '291', 'Eritrea'),
('EE', 'EST', '372', 'Estonia'),
('ET', 'ETH', '251', 'Ethiopia'),
('FK', 'FLK', '500', 'Falkland Islands'),
('FO', 'FRO', '298', 'Faroe Islands'),
('FJ', 'FJI', '679', 'Fiji'),
('FI', 'FIN', '358', 'Finland'),
('FR', 'FRA', '33', 'France'),
('PF', 'PYF', '689', 'French Polynesia'),
('GA', 'GAB', '241', 'Gabon'),
('GM', 'GMB', '220', 'Gambia'),
('04', '', '970', 'Gaza Strip'),
('GE', 'GEO', '995', 'Georgia'),
('DE', 'DEU', '49', 'Germany'),
('GH', 'GHA', '233', 'Ghana'),
('GI', 'GIB', '350', 'Gibraltar'),
('GR', 'GRC', '30', 'Greece'),
('GL', 'GRL', '299', 'Greenland'),
('GD', 'GRD', '1473', 'Grenada'),
('GU', 'GUM', '1671', 'Guam'),
('GT', 'GTM', '502', 'Guatemala'),
('GN', 'GIN', '224', 'Guinea'),
('GW', 'GNB', '245', 'Guinea-Bissau'),
('GY', 'GUY', '592', 'Guyana'),
('HT', 'HTI', '509', 'Haiti'),
('VA', 'VAT', '39', 'Holy See (Vatican City)'),
('HN', 'HND', '504', 'Honduras'),
('HK', 'HKG', '852', 'Hong Kong'),
('HU', 'HUN', '36', 'Hungary'),
('IS', 'IS', '354', 'Iceland'),
('IN', 'IND', '91', 'India'),
('ID', 'IDN', '62', 'Indonesia'),
('IR', 'IRN', '98', 'Iran'),
('IQ', 'IRQ', '964', 'Iraq'),
('IE', 'IRL', '353', 'Ireland'),
('IM', 'IMN', '44', 'Isle of Man'),
('IL', 'ISR', '972', 'Israel'),
('IT', 'ITA', '39', 'Italy'),
('CI', 'CIV', '225', 'Ivory Coast'),
('JM', 'JAM', '1876', 'Jamaica'),
('JP', 'JPN', '81', 'Japan'),
('JE', 'JEY', '0', 'Jersey'),
('JO', 'JOR', '962', 'Jordan'),
('KZ', 'KAZ', '7', 'Kazakhstan'),
('KE', 'KEN', '254', 'Kenya'),
('KI', 'KIR', '686', 'Kiribati'),
('03', '', '381', 'Kosovo'),
('KW', 'KWT', '965', 'Kuwait'),
('KG', 'KGZ', '996', 'Kyrgyzstan'),
('LA', 'LAO', '856', 'Laos'),
('LV', 'LVA', '371', 'Latvia'),
('LB', 'LBN', '961', 'Lebanon'),
('LS', 'LSO', '266', 'Lesotho'),
('LR', 'LBR', '231', 'Liberia'),
('LY', 'LBY', '218', 'Libya'),
('LI', 'LIE', '423', 'Liechtenstein'),
('LT', 'LTU', '370', 'Lithuania'),
('LU', 'LUX', '352', 'Luxembourg'),
('MO', 'MAC', '853', 'Macau'),
('MK', 'MKD', '389', 'Macedonia'),
('MG', 'MDG', '261', 'Madagascar'),
('MW', 'MWI', '265', 'Malawi'),
('MY', 'MYS', '60', 'Malaysia'),
('MV', 'MDV', '960', 'Maldives'),
('ML', 'MLI', '223', 'Mali'),
('MT', 'MLT', '356', 'Malta'),
('MH', 'MHL', '692', 'Marshall Islands'),
('MR', 'MRT', '222', 'Mauritania'),
('MU', 'MUS', '230', 'Mauritius'),
('YT', 'MYT', '262', 'Mayotte'),
('MX', 'MEX', '52', 'Mexico'),
('FM', 'FSM', '691', 'Micronesia'),
('MD', 'MDA', '373', 'Moldova'),
('MC', 'MCO', '377', 'Monaco'),
('MN', 'MNG', '976', 'Mongolia'),
('ME', 'MNE', '382', 'Montenegro'),
('MS', 'MSR', '1664', 'Montserrat'),
('MA', 'MAR', '212', 'Morocco'),
('MZ', 'MOZ', '258', 'Mozambique'),
('NA', 'NAM', '264', 'Namibia'),
('NR', 'NRU', '674', 'Nauru'),
('NP', 'NPL', '977', 'Nepal'),
('NL', 'NLD', '31', 'Netherlands'),
('AN', 'ANT', '599', 'Netherlands Antilles'),
('NC', 'NCL', '687', 'New Caledonia'),
('NZ', 'NZL', '64', 'New Zealand'),
('NI', 'NIC', '505', 'Nicaragua'),
('NE', 'NER', '227', 'Niger'),
('NG', 'NGA', '234', 'Nigeria'),
('NU', 'NIU', '683', 'Niue'),
('01', 'NFK', '672', 'Norfolk Island'),
('KP', 'PRK', '850', 'North Korea'),
('MP', 'MNP', '1670', 'Northern Mariana Islands'),
('NO', 'NOR', '47', 'Norway'),
('OM', 'OMN', '968', 'Oman'),
('PK', 'PAK', '92', 'Pakistan'),
('PW', 'PLW', '680', 'Palau'),
('PA', 'PAN', '507', 'Panama'),
('PG', 'PNG', '675', 'Papua New Guinea'),
('PY', 'PRY', '595', 'Paraguay'),
('PE', 'PER', '51', 'Peru'),
('PH', 'PHL', '63', 'Philippines'),
('PN', 'PCN', '870', 'Pitcairn Islands'),
('PL', 'POL', '48', 'Poland'),
('PT', 'PRT', '351', 'Portugal'),
('PR', 'PRI', '1', 'Puerto Rico'),
('QA', 'QAT', '974', 'Qatar'),
('CG', 'COG', '242', 'Republic of the Congo'),
('RO', 'ROU', '40', 'Romania'),
('RU', 'RUS', '7', 'Russia'),
('RW', 'RWA', '250', 'Rwanda'),
('BL', 'BLM', '590', 'Saint Barthelemy'),
('SH', 'SHN', '290', 'Saint Helena'),
('KN', 'KNA', '1869', 'Saint Kitts and Nevis'),
('LC', 'LCA', '1758', 'Saint Lucia'),
('MF', 'MAF', '1599', 'Saint Martin'),
('PM', 'SPM', '508', 'Saint Pierre and Miquelon'),
('VC', 'VCT', '1784', 'Saint Vincent and the Grenadines'),
('WS', 'WSM', '685', 'Samoa'),
('SM', 'SMR', '378', 'San Marino'),
('ST', 'STP', '239', 'Sao Tome and Principe'),
('SA', 'SAU', '966', 'Saudi Arabia'),
('SN', 'SEN', '221', 'Senegal'),
('RS', 'SRB', '381', 'Serbia'),
('SC', 'SYC', '248', 'Seychelles'),
('SL', 'SLE', '232', 'Sierra Leone'),
('SG', 'SGP', '65', 'Singapore'),
('SK', 'SVK', '421', 'Slovakia'),
('SI', 'SVN', '386', 'Slovenia'),
('SB', 'SLB', '677', 'Solomon Islands'),
('SO', 'SOM', '252', 'Somalia'),
('ZA', 'ZAF', '27', 'South Africa'),
('KR', 'KOR', '82', 'South Korea'),
('ES', 'ESP', '34', 'Spain'),
('LK', 'LKA', '94', 'Sri Lanka'),
('SD', 'SDN', '249', 'Sudan'),
('SR', 'SUR', '597', 'Suriname'),
('SJ', 'SJM', '0', 'Svalbard'),
('SZ', 'SWZ', '268', 'Swaziland'),
('SE', 'SWE', '46', 'Sweden'),
('CH', 'CHE', '41', 'Switzerland'),
('SY', 'SYR', '963', 'Syria'),
('TW', 'TWN', '886', 'Taiwan'),
('TJ', 'TJK', '992', 'Tajikistan'),
('TZ', 'TZA', '255', 'Tanzania'),
('TH', 'THA', '66', 'Thailand'),
('TL', 'TLS', '670', 'Timor-Leste'),
('TG', 'TGO', '228', 'Togo'),
('TK', 'TKL', '690', 'Tokelau'),
('TO', 'TON', '676', 'Tonga'),
('TT', 'TTO', '1868', 'Trinidad and Tobago'),
('TN', 'TUN', '216', 'Tunisia'),
('TR', 'TUR', '90', 'Turkey'),
('TM', 'TKM', '993', 'Turkmenistan'),
('TC', 'TCA', '1649', 'Turks and Caicos Islands'),
('TV', 'TUV', '688', 'Tuvalu'),
('UG', 'UGA', '256', 'Uganda'),
('UA', 'UKR', '380', 'Ukraine'),
('AE', 'ARE', '971', 'United Arab Emirates'),
('GB', 'GBR', '44', 'United Kingdom'),
('US', 'USA', '1', 'United States'),
('UY', 'URY', '598', 'Uruguay'),
('VI', 'VIR', '1340', 'US Virgin Islands'),
('UZ', 'UZB', '998', 'Uzbekistan'),
('VU', 'VUT', '678', 'Vanuatu'),
('VE', 'VEN', '58', 'Venezuela'),
('VN', 'VNM', '84', 'Vietnam'),
('WF', 'WLF', '681', 'Wallis and Futuna'),
('02', '', '970', 'West Bank'),
('EH', 'ESH', '0', 'Western Sahara'),
('YE', 'YEM', '967', 'Yemen'),
('ZM', 'ZMB', '260', 'Zambia'),
('ZW', 'ZWE', '263', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `master_dokumen_syarat`
--

CREATE TABLE IF NOT EXISTS `master_dokumen_syarat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dokumen` varchar(100) DEFAULT NULL,
  `gol` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `master_dokumen_syarat`
--

INSERT INTO `master_dokumen_syarat` (`id`, `nama_dokumen`, `gol`, `keterangan`) VALUES
(1, 'Surat Ijin Mengambil/ Menangkap Ikan dari Alam/Pengembangbiakan', 1, 'baru+transit'),
(2, 'Surat Permohonan Angkut', 1, 'baru+transit'),
(3, 'SAJI-DN ASAL', 1, 'baru+transit'),
(4, 'Surat Tugas', 2, 'petugas'),
(5, 'BAP', 3, 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `master_kabkota`
--

CREATE TABLE IF NOT EXISTS `master_kabkota` (
  `kode_prop` varchar(2) NOT NULL,
  `kode_kab` varchar(2) NOT NULL,
  `nama_wil` varchar(50) NOT NULL,
  UNIQUE KEY `kode_prop` (`kode_prop`,`kode_kab`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `master_kabkota`
--

INSERT INTO `master_kabkota` (`kode_prop`, `kode_kab`, `nama_wil`) VALUES
('11', '01', 'Kabupaten Aceh Selatan'),
('11', '02', 'Kabupaten Aceh Tenggara'),
('11', '03', 'Kabupaten Aceh Timur'),
('11', '04', 'Kabupaten Aceh Tengah'),
('11', '05', 'Kabupaten Aceh Barat'),
('11', '06', 'Kabupaten Aceh Besar'),
('11', '07', 'Kabupaten Pidie'),
('11', '08', 'Kabupaten Aceh Utara'),
('11', '09', 'Kabupaten Simeulue'),
('11', '10', 'Kabupaten Aceh Singkil'),
('11', '11', 'Kabupaten Bireuen'),
('11', '12', 'Kabupaten Aceh Barat Daya'),
('11', '13', 'Kabupaten Gayo Lues'),
('11', '14', 'Kabupaten Aceh Jaya'),
('11', '15', 'Kabupaten Nagan Raya'),
('11', '16', 'Kabupaten Aceh Tamiang'),
('11', '17', 'Kabupaten Bener Meriah'),
('11', '18', 'Kabupaten Pidie Jaya'),
('11', '71', 'Kota Banda Aceh'),
('11', '72', 'Kota Sabang'),
('11', '73', 'Kota Lhokseumawe'),
('11', '74', 'Kota Langsa'),
('11', '75', 'Kota Subussalam'),
('12', '01', 'Kabupaten Tapanuli Tengah'),
('12', '02', 'Kabupaten Tapanuli Utara'),
('12', '03', 'Kabupaten Tapanuli Selatan'),
('12', '04', 'Kabupaten Nias'),
('12', '05', 'Kabupaten Langkat'),
('12', '06', 'Kabupaten Karo'),
('12', '07', 'Kabupaten Deli Serdang'),
('12', '08', 'Kabupaten Simalungun'),
('12', '09', 'Kabupaten Asahan'),
('12', '10', 'Kabupaten Labuhan Batu'),
('12', '11', 'Kabupaten Dairi'),
('12', '12', 'Kabupaten Toba Samosir'),
('12', '13', 'Kabupaten Mandailing Natal'),
('12', '14', 'Kabupaten Nias Selatan'),
('12', '15', 'Kabupaten Pakpak Bharat'),
('12', '16', 'Kabupaten Hasundutan'),
('12', '17', 'Kabupaten Samosir'),
('12', '18', 'Kabupaten Serdang Bedagai'),
('12', '19', 'Kabupaten Batu Bara'),
('12', '20', 'Kabupaten Padang Lawas Utara'),
('12', '21', 'Kabupaten Padang Lawas'),
('12', '71', 'Kota Medan'),
('12', '72', 'Kota Pematang Siantar'),
('12', '73', 'Kota Sibolga'),
('12', '74', 'Kota Tanjung Balai'),
('12', '75', 'Kota Binjai'),
('12', '76', 'Kota Tebing Tinggi'),
('12', '77', 'Kota Padang Sidempuan'),
('13', '01', 'Kabupaten Pesisir Selatan'),
('13', '02', 'Kabupaten Solok'),
('13', '03', 'Kabupaten SW. Lunto/Sijunjung'),
('13', '04', 'Kabupaten Tanah Datar'),
('13', '05', 'Kabupaten Padang Pariaman'),
('13', '06', 'Kabupaten Agam'),
('13', '07', 'Kabupaten Lima Puluh Kota'),
('13', '08', 'Kabupaten Pasaman'),
('13', '09', 'Kabupaten Kepulauan Mentawai'),
('13', '10', 'Kabupaten Dharmasraya'),
('13', '11', 'Kabupaten Solok Selatan'),
('13', '12', 'Kabupaten Pasaman Barat'),
('13', '71', 'Kota Padang'),
('13', '72', 'Kota Solok'),
('13', '73', 'Kabupaten Sawah Lunto'),
('13', '74', 'Kabupaten Padang Panjang'),
('13', '75', 'Kota Bukittinggi'),
('13', '76', 'Kota Payakumbuh'),
('13', '77', 'Kota Pariaman'),
('14', '01', 'Kabupaten Kampar'),
('14', '02', 'Kabupaten Indragiri Hulu'),
('14', '03', 'Kabupaten Bengkalis'),
('14', '04', 'Kabupaten Indragiri Hilir'),
('14', '05', 'Kabupaten Pelalawan'),
('14', '06', 'Kabupaten Rokan Hulu'),
('14', '07', 'Kabupaten Rokan Hilir'),
('14', '08', 'Kabupaten Siak'),
('14', '09', 'Kabupaten Kuantansingingi'),
('14', '71', 'Kota Pekanbaru'),
('14', '72', 'Kota Dumai'),
('15', '01', 'Kabupaten Kerinci'),
('15', '02', 'Kabupaten Merangin'),
('15', '03', 'Kabupaten Sarolangun'),
('15', '04', 'Kabupaten Batang Hari'),
('15', '05', 'Kabupaten Muaro Jambi'),
('15', '06', 'Kabupaten Tanjung Jabung Barat'),
('15', '07', 'Kabupaten Tanjung Jabung Timur'),
('15', '08', 'Kabupaten  Bungo'),
('15', '09', 'Kabupaten Tebo'),
('15', '71', 'Kota Jambi'),
('16', '01', 'Kabupaten Ogan Komering Ulu'),
('16', '02', 'Kabupaten Ogan Komering Ilir'),
('16', '03', 'Kabupaten Muara Enim'),
('16', '04', 'Kabupaten Lahat'),
('16', '05', 'Kabupaten Musi Rawas'),
('16', '06', 'Kabupaten Musi Banyuasin'),
('16', '07', 'Kabupaten Banyuasin'),
('16', '08', 'Kabupaten Oku Timur'),
('16', '09', 'Kabupaten Oku Selatan'),
('16', '10', 'Kabupaten Ogan Ilir'),
('16', '11', 'Kabupaten Empatlawang'),
('16', '71', 'Kota Palembang'),
('16', '72', 'Kota Pagar Alam'),
('16', '73', 'Kota Lubuk Linggau'),
('16', '74', 'Kota Prabumulih'),
('17', '01', 'Kabupaten Begkulu Selatan'),
('17', '02', 'Kabupaten Rejang Lebong'),
('17', '03', 'Kabupaten Bengkulu Utara'),
('17', '04', 'Kabupaten Kaur'),
('17', '05', 'Kabupaten Seluma'),
('17', '06', 'Kabupaten Muko Muko'),
('17', '07', 'Kabupaten Lebong'),
('17', '08', 'Kabupaten Kepahiang'),
('17', '71', 'Kota Bengkulu'),
('18', '01', 'Kabupaten Lampung Selatan'),
('18', '02', 'Kabupaten Lampung Tengah'),
('18', '03', 'Kabupaten Lampung Utara'),
('18', '04', 'Kabupaten Lampung Barat'),
('18', '05', 'Kabupaten Tulang Bawang'),
('18', '06', 'Kabupaten Tanggamus'),
('18', '07', 'Kabupaten Lampung Timur'),
('18', '08', 'Kabupaten Way Kanan'),
('18', '09', 'Kabupaten Pesawaran'),
('18', '71', 'Kota Bandar Lampung'),
('18', '72', 'Kota Metro'),
('19', '01', 'Kabupaten Bangka'),
('19', '02', 'Kabupaten Belitung'),
('19', '03', 'Kabupaten Bangka Selatan'),
('19', '04', 'Kabupaten Bangka Tengah'),
('19', '05', 'Kabupaten Bangka Barat'),
('19', '06', 'Kabupaten Bangka Timur'),
('19', '71', 'Kota Pangkal Pinang'),
('21', '01', 'Kabupaten Bintan'),
('21', '02', 'Kabupaten Karimun'),
('21', '03', 'Kabupaten Natuna'),
('21', '04', 'Kabupaten Lingga'),
('21', '71', 'Kota Batam'),
('21', '72', 'Kota Tanjung Pinang'),
('31', '01', 'Kabupaten Adm. Kep.Seribu'),
('31', '71', 'Kota Jakarta Pusat'),
('31', '72', 'Kota Jakarta Utara'),
('31', '73', 'Kota Jakarta Barat'),
('31', '74', 'Kota Jakarta Selatan'),
('31', '75', 'Kota Jakarta Timur'),
('32', '01', 'Kabupaten Bogor'),
('32', '02', 'Kabupaten Sukabumi'),
('32', '03', 'Kabupaten Cianjur'),
('32', '04', 'Kabupaten Bandung'),
('32', '05', 'Kabupaten Garut'),
('32', '06', 'Kabupaten Tasikmalaya'),
('32', '07', 'Kabupaten Ciamis'),
('32', '08', 'Kabupaten Kuningan'),
('32', '09', 'Kabupaten Cirebon'),
('32', '10', 'Kabupaten Majalengka'),
('32', '11', 'Kabupaten Sumedang'),
('32', '12', 'Kabupaten Indramayu'),
('32', '13', 'Kabupaten Subang'),
('32', '14', 'Kabupaten Purwakarta'),
('32', '15', 'Kabupaten Karawang'),
('32', '16', 'Kabupaten Bekasi'),
('32', '17', 'Kabupaten Bandung Barat'),
('32', '71', 'Kota Bogor'),
('32', '72', 'Kota Sukabumi'),
('32', '73', 'Kota Bandung'),
('32', '74', 'Kota Cirebon'),
('32', '75', 'Kota Bekasi'),
('32', '76', 'Kota Depok'),
('32', '77', 'Kota Cimahi'),
('32', '78', 'Kota Tasikmalaya'),
('32', '79', 'Kota Banjar'),
('33', '01', 'Kabupaten Cilacap'),
('33', '02', 'Kabupaten Banyumas'),
('33', '03', 'Kabupaten Purbalingga'),
('33', '04', 'Kabupaten Banjarnegara'),
('33', '05', 'Kabupaten Kebumen'),
('33', '06', 'Kabupaten Purworejo'),
('33', '07', 'Kabupaten Wonosobo'),
('33', '08', 'Kabupaten Magelang'),
('33', '09', 'Kabupaten Boyolali'),
('33', '10', 'Kabupaten Klaten'),
('33', '11', 'Kabupaten Sukoharjo'),
('33', '12', 'Kabupaten Wonogiri'),
('33', '13', 'Kabupaten Karanganyar'),
('33', '14', 'Kabupaten Sragen'),
('33', '15', 'Kabupaten Grobogan'),
('33', '16', 'Kabupaten Blora'),
('33', '17', 'Kabupaten Rembang'),
('33', '18', 'Kabupaten Pati'),
('33', '19', 'Kabupaten Kudus'),
('33', '20', 'Kabupaten Jepara'),
('33', '21', 'Kabupaten Demak'),
('33', '22', 'Kabupaten Semarang'),
('33', '23', 'Kabupaten Temanggung'),
('33', '24', 'Kabupaten Kendal'),
('33', '25', 'Kabupaten Batang'),
('33', '26', 'Kabupaten Pekalongan'),
('33', '27', 'Kabupaten Pemalang'),
('33', '28', 'Kabupaten Tegal'),
('33', '29', 'Kabupaten Brebes'),
('33', '71', 'Kota Magelang'),
('33', '72', 'Kota Surakarta'),
('33', '73', 'Kota Salatiga'),
('33', '74', 'Kota Semarang'),
('33', '75', 'Kota Pekalongan'),
('33', '76', 'Kota Tegal'),
('34', '01', 'Kabupaten Kulon Progo'),
('34', '02', 'Kabupaten Bantul'),
('34', '03', 'Kabupaten Gunung Kidul'),
('34', '04', 'Kabupaten Sleman'),
('34', '71', 'Kota Yogyakarta'),
('35', '01', 'Kabupaten Pacitan'),
('35', '02', 'Kabupaten Ponorogo'),
('35', '03', 'Kabupaten Trenggalek'),
('35', '04', 'Kabupaten Tulungagung'),
('35', '05', 'Kabupaten Blitar'),
('35', '06', 'Kabupaten Kediri'),
('35', '07', 'Kabupaten Malang'),
('35', '08', 'Kabupaten Lumajang'),
('35', '09', 'Kabupaten Jember'),
('35', '10', 'Kabupaten Banyuwangi'),
('35', '11', 'Kabupaten Bondowoso'),
('35', '12', 'Kabupaten Situbondo'),
('35', '13', 'Kabupaten Probolinggo'),
('35', '14', 'Kabupaten Pasuruan'),
('35', '15', 'Kabupaten Sidoarjo'),
('35', '16', 'Kabupaten Mojokerto'),
('35', '17', 'Kabupaten Jombang'),
('35', '18', 'Kabupaten Nganjuk'),
('35', '19', 'Kabupaten Madiun'),
('35', '20', 'Kabupaten Magetan'),
('35', '21', 'Kabupaten Ngawi'),
('35', '22', 'Kabupaten Bojonegoro'),
('35', '23', 'Kabupaten Tuban'),
('35', '24', 'Kabupaten Lamongan'),
('35', '25', 'Kabupaten Gresik'),
('35', '26', 'Kabupaten Bangkalan'),
('35', '27', 'Kabupaten Sampang'),
('35', '28', 'Kabupaten Pamekasan'),
('35', '29', 'Kabupaten Sumenep'),
('35', '71', 'Kota Kediri'),
('35', '72', 'Kota Blitar'),
('35', '73', 'Kota Malang'),
('35', '74', 'Kota Probolinggo'),
('35', '75', 'Kota Pasuruan'),
('35', '76', 'Kota Mojokerto'),
('35', '77', 'Kota Madiun'),
('35', '78', 'Kota Surabaya'),
('35', '79', 'Kota Batu'),
('36', '01', 'Kabupaten Pendeglang'),
('36', '02', 'Kabupaten Lebak'),
('36', '03', 'Kabupaten Tangerang'),
('36', '04', 'Kabupaten Serang'),
('36', '71', 'Kota Tangerang'),
('36', '72', 'Kota Cilegon'),
('36', '73', 'Kota Serang'),
('51', '01', 'Kabupaten Jembrana'),
('51', '02', 'Kabupaten Tabanan'),
('51', '03', 'Kabupaten Badung'),
('51', '04', 'Kabupaten Gianyar'),
('51', '05', 'Kabupaten Klungkung'),
('51', '06', 'Kabupaten Bangli'),
('51', '07', 'Kabupaten Karang Asem'),
('51', '08', 'Kabupaten Buleleng'),
('51', '71', 'Kota Denpasar'),
('52', '01', 'Kabupaten Lombok Barat'),
('52', '02', 'Kabupaten Lombok Tengah'),
('52', '03', 'Kabupaten Lombok Timur'),
('52', '04', 'Kabupaten Sumbawa'),
('52', '05', 'Kabupaten Dompu'),
('52', '06', 'Kabupaten Bima'),
('52', '07', 'Kabupaten Sumbawa Barat'),
('52', '71', 'Kota Mataram'),
('52', '72', 'Kota Bima'),
('53', '01', 'Kabupaten Kupang'),
('53', '02', 'Kabupaten Timor Tengah Selatan'),
('53', '03', 'Kabupaten Timor Tengah Utara'),
('53', '04', 'Kabupaten Belu'),
('53', '05', 'Kabupaten Alor'),
('53', '06', 'Kabupaten Flores Timur'),
('53', '07', 'Kabupaten Sikka'),
('53', '08', 'Kabupaten Ende'),
('53', '09', 'Kabupaten Ngada'),
('53', '10', 'Kabupaten Manggarai'),
('53', '11', 'Kabupaten Sumba Timur'),
('53', '12', 'Kabupaten Sumba Barat'),
('53', '13', 'Kabupaten Lembata'),
('53', '14', 'Kabupaten Rotendao'),
('53', '15', 'Kabupaten Manggarai Barat'),
('53', '16', 'Kabupaten Nagekeo'),
('53', '17', 'Kabupaten Sumba Tengah'),
('53', '18', 'Kabupaten Sumba Barat Daya'),
('53', '19', 'Kabupaten Manggarai Timur'),
('53', '71', 'Kota Kupang'),
('61', '01', 'Kabupaten Sambas'),
('61', '02', 'Kabupaten Pontianak'),
('61', '03', 'Kabupaten Sanggau'),
('61', '04', 'Kabupaten Ketapang'),
('61', '05', 'Kabupaten Sintang'),
('61', '06', 'Kabupaten Kapuas Hulu'),
('61', '07', 'Kabupaten Bengkayang'),
('61', '08', 'Kabupaten Landak'),
('61', '09', 'Kabupaten Sekadau'),
('61', '10', 'Kabupaten Melawi'),
('61', '11', 'Kabupaten Kayong Utara'),
('61', '12', 'Kabupaten Kubu Raya'),
('61', '71', 'Kota Pontianak'),
('61', '72', 'Kota Singkawang'),
('62', '01', 'Kabupaten Kotawaringin Barat'),
('62', '02', 'Kabupaten Kotawaringin Timur'),
('62', '03', 'Kabupaten Kapuas'),
('62', '04', 'Kabupaten Barito Selatan'),
('62', '05', 'Kabupaten Barito Utara'),
('62', '06', 'Kabupaten Katingan'),
('62', '07', 'Kabupaten Seruayan'),
('62', '08', 'Kabupaten Sukamara'),
('62', '09', 'Kabupaten Lamandau'),
('62', '10', 'Kabupaten Gunung Mas'),
('62', '11', 'Kabupaten Pulang Pisau'),
('62', '12', 'Kabupaten Murung Raya'),
('62', '13', 'Kabupaten Barito Timur'),
('62', '71', 'Kota Palangka Raya'),
('63', '01', 'Kabupaten Tanah Laut'),
('63', '02', 'Kabupaten Kota Baru'),
('63', '03', 'Kabupaten Banjar'),
('63', '04', 'Kabupaten Barito Kuala'),
('63', '05', 'Kabupaten Tapin'),
('63', '06', 'Kabupaten Hulu Sungai Selatan'),
('63', '07', 'Kabupaten Hulu Sungai Tengah'),
('63', '08', 'Kabupaten Hulu Sungai Utara'),
('63', '09', 'Kabupaten Tabalong'),
('63', '10', 'Kabupaten Tanah Bumbu'),
('63', '11', 'Kabupaten Balangan'),
('63', '71', 'Kota Banjarmasin'),
('63', '72', 'Kota Banjar Baru'),
('64', '01', 'Kabupaten Pasir'),
('64', '02', 'Kabupaten Kutai Kertanegara'),
('64', '03', 'Kabupaten Berau'),
('64', '04', 'Kabupaten Bulungan'),
('64', '05', 'Kabupaten Nunukan'),
('64', '06', 'Kabupaten Malinau'),
('64', '07', 'Kabupaten Kutai Barat'),
('64', '08', 'Kabupaten Kutai Timur'),
('64', '09', 'Kabupaten Penajam Paser Utara'),
('64', '10', 'Kabupaten Tana Tidung'),
('64', '71', 'Kota Balikpapan'),
('64', '72', 'Kota Samarinda'),
('64', '73', 'Kota Tarakan'),
('64', '74', 'Kota Bontang'),
('71', '01', 'Kabupaten Bolaang Mengondow'),
('71', '02', 'Kabupaten Minahasa'),
('71', '03', 'Kabupaten Sangihe'),
('71', '04', 'Kabupaten Talaud'),
('71', '05', 'Kabupaten Minahasa Selatan'),
('71', '06', 'Kabupaten Minahasa Utara'),
('71', '07', 'Kabupaten Minahasa Tenggara'),
('71', '08', 'Kabupaten Bolmong Utara'),
('71', '09', 'Kabupaten Kep. Sitaro'),
('71', '71', 'Kota Manado'),
('71', '72', 'Kota Bitung'),
('71', '73', 'Kota Tomohon'),
('71', '74', 'Kota Kotamobagu'),
('72', '01', 'Kabupaten Banggai'),
('72', '02', 'Kabupaten Poso'),
('72', '03', 'Kabupaten Donggala'),
('72', '04', 'Kabupaten Toli-toli'),
('72', '05', 'Kabupaten Buol'),
('72', '06', 'Kabupaten Morowali'),
('72', '07', 'Kabupaten Banggai Kepulauan'),
('72', '08', 'Kabupaten Parigi Montong'),
('72', '09', 'Kabupaten Tojounauna'),
('72', '71', 'Kota Palu'),
('73', '01', 'Kabupaten Selayar'),
('73', '02', 'Kabupaten Bulukumba'),
('73', '03', 'Kabupaten Bantaeng'),
('73', '04', 'Kabupaten Jeneponto'),
('73', '05', 'Kabupaten Takalar'),
('73', '06', 'Kabupaten Gowa'),
('73', '07', 'Kabupaten Sinjai'),
('73', '08', 'Kabupaten Bone'),
('73', '09', 'Kabupaten Maros'),
('73', '10', 'Kabupaten Pangkajene Kep.'),
('73', '11', 'Kabupaten Barru'),
('73', '12', 'Kabupaten Soppeng'),
('73', '13', 'Kabupaten Wajo'),
('73', '14', 'Kabupaten Sidenreng Rappang'),
('73', '15', 'Kabupaten Pinrang'),
('73', '16', 'Kabupaten Enrekang'),
('73', '17', 'Kabupaten Luwu'),
('73', '18', 'Kabupaten Tana Toraja'),
('73', '19', 'Kabupaten Polewali Mamasa'),
('73', '20', 'Kabupaten Luwu Utara'),
('73', '21', 'Kabupaten Luwu Timur'),
('73', '71', 'Kota Makasar'),
('73', '72', 'Kota Pare-Pare'),
('73', '73', 'Kota Palopo'),
('74', '01', 'Kabupaten Kolaka'),
('74', '02', 'Kabupaten Konawe'),
('74', '03', 'Kabupaten Muna'),
('74', '04', 'Kabupaten Buton'),
('74', '05', 'Kabupaten Konawe Selatan'),
('74', '06', 'Kabupaten Bombana'),
('74', '07', 'Kabupaten Wakatobi'),
('74', '08', 'Kabupaten Kolaka Utara'),
('74', '09', 'Kabupaten Konawe Utara'),
('74', '10', 'Kabupaten Buton Utara'),
('74', '71', 'Kota Kendari'),
('74', '72', 'Kota Bau Bau'),
('75', '01', 'Kabupaten Gorontalo'),
('75', '02', 'Kabupaten Boalemo'),
('75', '03', 'Kabupaten Bone Bolango'),
('75', '04', 'Kabupaten Pahuwato'),
('75', '05', 'Kabupaten Gorontalo Utara'),
('75', '71', 'Kota Gorontalo'),
('76', '01', 'Kabupaten Mamuju Utara'),
('76', '02', 'Kabupaten Mamuju'),
('76', '03', 'Kabupaten Mamasa'),
('76', '04', 'Kabupaten Polewali Mandar'),
('76', '05', 'Kabupaten Majene'),
('81', '01', 'Kabupaten Maluku Tengah'),
('81', '02', 'Kabupaten Maluku Tenggara'),
('81', '03', 'Kabupaten Maluku Tenggara Bara'),
('81', '04', 'Kabupaten Buru'),
('81', '05', 'Kabupaten Seram Bagian Timur'),
('81', '06', 'Kabupaten Seram Bagian Barat'),
('81', '07', 'Kabupaten Kepulauan Aru'),
('81', '71', 'Kabupaten Ambon'),
('81', '72', 'Kota Tual'),
('82', '01', 'Kabupaten Maluku Barat'),
('82', '02', 'Kabupaten Halmahera Tengah'),
('82', '03', 'Kabupaten Halmnahera Utara'),
('82', '04', 'Kabupaten Halmahera Selatan'),
('82', '05', 'Kabupaten Kepulauan Sula'),
('82', '06', 'Kabupaten Halmahera Timur'),
('82', '71', 'Kota Ternate'),
('82', '72', 'Kora Tidore Kepulauan'),
('91', '01', 'Kabupaten Merauke'),
('91', '02', 'Kabupaten Jayawijaya'),
('91', '03', 'Kabupaten Jayapura'),
('91', '04', 'Kabupaten Nabire'),
('91', '05', 'Kabupaten Yapen Waropen'),
('91', '06', 'Kabupaten Biak Numfor'),
('91', '07', 'Kabupaten Puncak Jaya'),
('91', '08', 'Kabupaten Paniai'),
('91', '09', 'Kabupaten Mimika'),
('91', '10', 'Kabupaten Sarmi'),
('91', '11', 'Kabupaten Keerom'),
('91', '12', 'Kabupaten Pegunungan Bintang'),
('91', '13', 'Kabupaten Yahukimo'),
('91', '14', 'Kabupaten Tolikara'),
('91', '15', 'Kabupaten Waropen'),
('91', '16', 'Kabupaten Boven Digoel'),
('91', '17', 'Kabupaten Mappi'),
('91', '18', 'Kabupaten Asmat'),
('91', '19', 'Kabupaten Supiori'),
('91', '20', 'Kabupaten Mamberamo Raya'),
('91', '71', 'Kota Jayapura'),
('92', '01', 'Kabupaten Merauke'),
('92', '02', 'Kabupaten Manokwari'),
('92', '03', 'Kabupaten Fak-Fak'),
('92', '04', 'Kabupaten Sorong Selatan'),
('92', '05', 'Kabupaten Raja Ampat'),
('92', '06', 'Kabupaten Teluk Bentuni'),
('92', '07', 'Kabupaten Teluk Wondama'),
('92', '08', 'Kabupaten Kaimana'),
('92', '71', 'Kota Sorong');

-- --------------------------------------------------------

--
-- Table structure for table `master_lembaga`
--

CREATE TABLE IF NOT EXISTS `master_lembaga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lembaga` varchar(100) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nama_upt` (`nama_lembaga`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `master_lembaga`
--

INSERT INTO `master_lembaga` (`id`, `nama_lembaga`, `alamat`, `telp`, `id_level`) VALUES
(1, 'ADMIN', NULL, NULL, 1),
(2, 'KEMENTERIAN KELAUTAN DAN PERIKANAN', NULL, NULL, 2),
(3, 'BPSPL PONTIANAK', '-', '', 3),
(4, 'BPSPL MAKASSAR', '-', '', 3),
(5, 'LPSPL SERANG', '', '', 3),
(6, 'BPSPL PADANG', '-', '', 3),
(7, 'BPSPL DENPASAR', '', '', 3),
(8, 'LPSPL SORONG', '', '', 3),
(14, 'SATKER Jakarta', NULL, NULL, 4),
(17, 'SATKER Semarang', '', '', 4),
(18, 'SATKER Surabaya', '', '', 4),
(20, 'SATKER Banjarmasin', '', '', 4),
(22, 'SATKER Balikpapan', '', '', 4),
(25, 'SATKER Tanjung Pinang', '', '', 4),
(26, 'SATKER Lampung', NULL, NULL, 4),
(27, 'SATKER Ambon', '', '', 4),
(29, 'SATKER Mataram', '', '', 4),
(30, 'SATKER Kupang', '', '', 4),
(31, 'SATKER Merauke', '', '', 4),
(33, 'SATKER Pekan Baru', '', '', 4),
(36, 'SATKER Palu', '', '', 4),
(37, 'SATKER Kendari', '', '', 4),
(38, 'SATKER Sulawesi Utara', NULL, NULL, 4),
(41, 'SATKER Medan', '', '', 4),
(43, '', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `master_lembaga_level`
--

CREATE TABLE IF NOT EXISTS `master_lembaga_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `master_lembaga_level`
--

INSERT INTO `master_lembaga_level` (`id`, `nama_level`) VALUES
(1, 'ADMIN'),
(2, 'PUSAT'),
(3, 'UPT'),
(4, 'SATKER');

-- --------------------------------------------------------

--
-- Table structure for table `master_lembaga_ttd`
--

CREATE TABLE IF NOT EXISTS `master_lembaga_ttd` (
  `id_lembaga` int(11) NOT NULL,
  `nama_ttd` varchar(50) DEFAULT NULL,
  `nip_ttd` varchar(30) DEFAULT NULL,
  `gambar_ttd` varchar(200) DEFAULT NULL,
  `gambar_stempel` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_lembaga`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_lembaga_ttd`
--

INSERT INTO `master_lembaga_ttd` (`id_lembaga`, `nama_ttd`, `nip_ttd`, `gambar_ttd`, `gambar_stempel`) VALUES
(6, 'Ir. Abcdefgh Ijklmni, MS', '1234567890123', 'normal_ian-symbol-manta-birostris.png', 'Sphyrna_lewini_Gervais.jpg'),
(4, 'Daeng ikang', '12234334', 'logo.png', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `master_payment`
--

CREATE TABLE IF NOT EXISTS `master_payment` (
  `id` char(1) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_payment`
--

INSERT INTO `master_payment` (`id`, `name`) VALUES
('Y', 'Lunas'),
('N', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `master_province`
--

CREATE TABLE IF NOT EXISTS `master_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bps` int(2) NOT NULL,
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `iso` char(5) COLLATE latin1_general_ci NOT NULL,
  `id_lembaga` int(11) DEFAULT NULL COMMENT 'UPT Level 3',
  `created_by` char(5) COLLATE latin1_general_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `updated_by` char(5) COLLATE latin1_general_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bps` (`bps`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `master_province`
--

INSERT INTO `master_province` (`id`, `bps`, `name`, `iso`, `id_lembaga`, `created_by`, `date_created`, `updated_by`, `date_updated`) VALUES
(1, 11, 'Aceh', 'ID-AC', 6, 'US001', '2013-12-22 16:57:20', 'admin', '2014-09-07 00:40:06'),
(2, 51, 'Bali', 'ID-BA', 7, 'US001', '2013-12-22 16:57:56', 'admin', '2014-09-07 01:04:49'),
(3, 36, 'Banten', 'ID-BT', 5, 'US001', '2013-12-22 16:58:33', 'admin', '2014-09-07 01:04:31'),
(4, 17, 'Bengkulu', 'ID-BE', 5, 'US001', '2013-12-22 16:59:06', 'ADMIN', '2014-10-14 02:28:04'),
(5, 75, 'Gorontalo', 'ID-GO', 4, 'US001', '2013-12-22 16:59:34', 'admin', '2014-09-07 01:09:58'),
(6, 31, 'Jakarta', 'ID-JK', 5, 'US001', '2013-12-22 17:00:07', 'admin', '2014-09-07 01:01:07'),
(7, 15, 'Jambi', 'ID-JA', 6, 'US001', '2013-12-22 17:00:44', 'admin', '2014-09-07 00:55:22'),
(8, 32, 'Jawa Barat', 'ID-JB', 5, 'US001', '2013-12-22 17:01:17', 'admin', '2014-09-07 01:01:31'),
(9, 33, 'Jawa Tengah', 'ID-JT', 5, 'US001', '2013-12-22 17:01:47', 'admin', '2014-09-07 01:01:54'),
(10, 35, 'Jawa Timur', 'ID-JI', 7, 'US001', '2013-12-22 17:03:53', 'admin', '2014-09-07 01:04:12'),
(11, 61, 'Kalimantan Barat', 'ID-KB', 3, 'US001', '2013-12-22 17:04:48', 'admin', '2014-09-07 01:06:27'),
(12, 63, 'Kalimantan Selatan', 'ID-KS', 3, 'US001', '2013-12-22 17:05:15', 'admin', '2014-09-07 01:07:12'),
(13, 62, 'Kalimantan Tengah', 'ID-KT', 3, 'US001', '2013-12-22 17:05:43', 'admin', '2014-09-07 01:06:49'),
(14, 64, 'Kalimantan Timur', 'ID-KI', 3, 'US001', '2013-12-22 17:06:09', 'admin', '2014-09-07 01:07:29'),
(15, 99, 'Kalimantan Utara', 'ID-KU', 3, 'US001', '2013-12-22 17:07:15', 'admin', '2014-09-07 01:11:53'),
(16, 19, 'Kepulauan Bangka Belitung', 'ID-BB', 5, 'US001', '2013-12-22 17:07:42', 'ADMIN', '2014-10-14 02:28:27'),
(17, 21, 'Kepulauan Riau', 'ID-KR', 6, 'US001', '2013-12-22 17:08:10', 'admin', '2014-09-07 01:00:41'),
(18, 18, 'Lampung', 'ID-LA', 5, 'US001', '2013-12-22 17:08:36', 'admin', '2014-09-07 00:59:58'),
(19, 81, 'Maluku', 'ID-MA', 8, 'US001', '2013-12-22 17:09:04', 'admin', '2014-09-07 01:10:37'),
(20, 82, 'Maluku Utara', 'ID-MU', 8, 'US001', '2013-12-22 17:09:32', 'admin', '2014-09-07 01:10:59'),
(21, 52, 'Nusa Tenggara Barat', 'ID-NB', 7, 'US001', '2013-12-22 17:09:54', 'admin', '2014-09-07 01:05:50'),
(22, 53, 'Nusa Tenggara Timur', 'ID-NT', 7, 'US001', '2013-12-22 17:10:18', 'admin', '2014-09-07 01:06:05'),
(23, 94, 'Papua', 'ID-PA', 8, 'US001', '2013-12-22 17:10:49', 'admin', '2014-09-07 01:11:29'),
(24, 91, 'Papua Barat', 'ID-PB', 8, 'US001', '2013-12-22 17:11:16', 'admin', '2014-09-07 01:11:16'),
(25, 14, 'Riau', 'ID-RI', 6, 'US001', '2013-12-22 17:11:43', 'admin', '2014-09-07 00:54:56'),
(26, 76, 'Sulawesi Barat', 'ID-SR', 4, 'US001', '2013-12-22 17:12:11', 'admin', '2014-09-07 01:10:16'),
(27, 73, 'Sulawesi Selatan', 'ID-SN', 4, 'US001', '2013-12-22 17:12:40', 'admin', '2014-09-07 01:09:03'),
(28, 72, 'Sulawesi Tengah', 'ID-ST', 4, 'US001', '2013-12-22 17:13:17', 'admin', '2014-09-07 01:08:46'),
(29, 74, 'Sulawesi Tenggara', 'ID-SG', 4, 'US001', '2013-12-22 17:13:44', 'admin', '2014-09-07 01:09:43'),
(30, 71, 'Sulawesi Utara', 'ID-SA', 4, 'US001', '2013-12-22 17:14:16', 'admin', '2014-09-07 01:08:22'),
(31, 13, 'Sumatera Barat', 'ID-SB', 6, 'US001', '2013-12-22 17:14:40', 'admin', '2014-09-07 00:53:05'),
(32, 16, 'Sumatera Selatan', 'ID-SS', 6, 'US001', '2013-12-22 17:15:12', 'admin', '2014-09-07 00:56:04'),
(33, 12, 'Sumatera Utara', 'ID-SU', 6, 'US001', '2013-12-22 17:15:35', 'admin', '2014-09-07 00:52:41'),
(34, 34, 'Yogyakarta', 'ID-YO', 5, 'US001', '2013-12-22 17:16:20', 'admin', '2014-09-07 01:03:44'),
(35, 56, 'Cilodong', 'as1', 7, 'ADMIN', '2015-07-29 03:00:21', 'ADMIN', '2015-07-29 03:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `master_purpose`
--

CREATE TABLE IF NOT EXISTS `master_purpose` (
  `id` char(1) COLLATE latin1_general_ci NOT NULL,
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `created_by` char(5) COLLATE latin1_general_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `updated_by` char(5) COLLATE latin1_general_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `master_purpose`
--

INSERT INTO `master_purpose` (`id`, `name`, `created_by`, `date_created`, `updated_by`, `date_updated`) VALUES
('P', 'personal', 'US001', '2013-12-01 16:18:04', '', '0000-00-00 00:00:00'),
('H', 'hunting trophies', 'US001', '2013-12-01 16:18:04', '', '0000-00-00 00:00:00'),
('S', 'scientific purposes', 'US001', '2013-12-01 16:18:04', '', '0000-00-00 00:00:00'),
('Q', 'circuses & travelling exibitions', 'US001', '2013-12-01 16:18:04', '', '0000-00-00 00:00:00'),
('G', 'botanical garden', 'US001', '2013-12-01 16:18:04', '', '0000-00-00 00:00:00'),
('Z', 'zoos', 'US001', '2013-12-01 16:18:04', '', '0000-00-00 00:00:00'),
('T', 'commercial', 'US001', '2013-12-01 16:18:04', '', '0000-00-00 00:00:00'),
('M', 'medical', 'US001', '2013-12-01 16:18:04', '', '0000-00-00 00:00:00'),
('E', 'education', 'US001', '2013-12-01 16:18:04', '', '0000-00-00 00:00:00'),
('N', 'reintroduction or introduction into the wild', 'US001', '2013-12-01 16:18:04', '', '0000-00-00 00:00:00'),
('B', 'breeding in captivity or artifical propagation', 'US001', '2013-12-01 16:18:04', '', '0000-00-00 00:00:00'),
('L', 'law enforcement / judical / forensic', 'US001', '2013-12-01 16:18:04', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `master_satuan`
--

CREATE TABLE IF NOT EXISTS `master_satuan` (
  `id_satuan` int(11) NOT NULL AUTO_INCREMENT,
  `satuan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_satuan`,`satuan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `master_satuan`
--

INSERT INTO `master_satuan` (`id_satuan`, `satuan`) VALUES
(1, 'Ekor'),
(2, 'Kg'),
(3, 'Sirip'),
(4, 'Lembar'),
(5, 'Pcs');

-- --------------------------------------------------------

--
-- Table structure for table `master_tahap_pengedar_dn`
--

CREATE TABLE IF NOT EXISTS `master_tahap_pengedar_dn` (
  `tahap` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(200) DEFAULT NULL,
  `petugas` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tahap`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `master_tahap_pengedar_dn`
--

INSERT INTO `master_tahap_pengedar_dn` (`tahap`, `keterangan`, `petugas`) VALUES
(1, 'Tahap 1 : Silakan upload Dokumen Syarat secara lengkap dan benar', 'Perusahaan atau Satker/Staf UPT'),
(2, 'Tahap 2 : Dokumen Syarat telah diupload dan menunggu pemeriksaan Kelengkapan Dokumen', 'Satker/Staf UPT'),
(3, 'Tahap 3 : Dokumen telah diperiksa kelengkapannya dan menunggu untuk verifikasi dan penilaian kelayakan proposal.', 'Kasie UPT'),
(4, 'Tahap 4 : Dokumen telah diverifikasi dan menunggu penilaian kelayakan proposal.', 'Kasie UPT'),
(5, 'Tahap 5 : Proposal telah memenuhi syarat layak dan menunggu pembuatan Surat Tugas Pemeriksaan', 'Kasie UPT'),
(6, 'Tahap 6 : Pembuatan Surat Tugas Pemeriksaan telah selesai dan menunggu untuk ditandatangani', 'Kepala UPT'),
(7, 'Tahap 7 : Surat Tugas Pemeriksaan telah disahkan/ditandatangani dan menunggu untuk diupload', 'Kasie UPT'),
(8, 'Tahap 8 : Surat Tugas Pemeriksaan telah diupload dan menunggu untuk dicetak, pemeriksaan fisik dan upload BAP', 'Satker/Staf UPT'),
(9, 'Tahap 9 : BAP telah diupload dan menunggu untuk Verifikasi Ulang', 'Kasie UPT'),
(10, 'Tahap 10 : Verifikasi Ulang telah selesai dan menunggu Pembuatan dan Pengesahan Surat Izin Pengedar Dalam Negeri', 'Kepala UPT'),
(11, 'Tahap 11 : Surat Izin Pengedar Dalam Negeri telah ditandatangi/disahkan dan menunggu untuk diupload', 'Kasie UPT'),
(12, 'Tahap 12 : Surat Izin Pengedar Dalam Negeri telah diupload dan menunggu dicetak', 'Satker/Staf UPT'),
(13, 'SELESAI : PERMOHONAN DITOLAK', '-'),
(14, 'SELESAI : Surat Izin Pengedar Dalam Negeri telah dicetak', '-');

-- --------------------------------------------------------

--
-- Table structure for table `master_tahap_pengedar_ln`
--

CREATE TABLE IF NOT EXISTS `master_tahap_pengedar_ln` (
  `tahap` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(200) DEFAULT NULL,
  `petugas` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tahap`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `master_tahap_pengedar_ln`
--

INSERT INTO `master_tahap_pengedar_ln` (`tahap`, `keterangan`, `petugas`) VALUES
(1, 'Tahap 1 : Silakan upload Dokumen Syarat secara lengkap dan benar', 'Perusahaan atau Satker/Staf UPT'),
(2, 'Tahap 2 : Dokumen Syarat telah diupload dan menunggu pemeriksaan Kelengkapan Dokumen', 'Satker/Staf UPT'),
(3, 'Tahap 3 : Dokumen telah diperiksa kelengkapannya dan menunggu untuk verifikasi dan penilaian kelayakan proposal.', 'Kasie UPT'),
(4, 'Tahap 4 : Dokumen telah diverifikasi dan menunggu penilaian kelayakan proposal.', 'Kasie UPT'),
(5, 'Tahap 5 : Proposal telah memenuhi syarat layak dan menunggu pembuatan Surat Tugas Pemeriksaan', 'Kasie UPT'),
(6, 'Tahap 6 : Pembuatan Surat Tugas Pemeriksaan telah selesai dan menunggu untuk ditandatangani', 'Kepala UPT'),
(7, 'Tahap 7 : Surat Tugas Pemeriksaan telah disahkan/ditandatangani dan menunggu untuk diupload', 'Kasie UPT'),
(8, 'Tahap 8 : Surat Tugas Pemeriksaan telah diupload dan menunggu untuk dicetak, pemeriksaan fisik dan upload BAP', 'Satker/Staf UPT'),
(9, 'Tahap 9 : BAP telah diupload dan menunggu untuk Verifikasi Ulang', 'Kasie UPT'),
(10, 'Tahap 10 : Verifikasi Ulang telah selesai dan menunggu Pembuatan dan Pengesahan Surat Izin Pengedar Luar Negeri', 'Kepala UPT'),
(11, 'Tahap 11 : Surat Izin Pengedar Luar Negeri telah ditandatangi/disahkan dan menunggu untuk diupload', 'Kasie UPT'),
(12, 'Tahap 12 : Surat Izin Pengedar Luar Negeri telah diupload dan menunggu dicetak', 'Satker/Staf UPT'),
(13, 'SELESAI : PERMOHONAN DITOLAK', '-'),
(14, 'SELESAI : Surat Izin Pengedar Luar Negeri telah dicetak', '-');

-- --------------------------------------------------------

--
-- Table structure for table `master_tahap_saji_dn`
--

CREATE TABLE IF NOT EXISTS `master_tahap_saji_dn` (
  `tahap` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(200) DEFAULT NULL,
  `petugas` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tahap`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `master_tahap_saji_dn`
--

INSERT INTO `master_tahap_saji_dn` (`tahap`, `keterangan`, `petugas`) VALUES
(1, 'Tahap 1 : Silakan Upload Dokumen Syarat', 'Perusahaan atau Satker/Staf UPT'),
(2, 'Tahap 2 : Dokumen Syarat telah diupload dan Menunggu Verifikasi Dokumen', 'Satker/Staf UPT atau Kasie UPT'),
(3, 'Tahap 3 : Dokumen telah diverifikasi dan menunggu dibuatkan Surat Tugas Pemeriksaan', 'Kasie UPT'),
(4, 'Tahap 4 : Surat Tugas Pemeriksaan telah dibuat dan menunggu disahkan', 'Kepala UPT'),
(5, 'Tahap 5 : Surat tugas Pemeriksaan telah disahkan dan menunggu untuk diupload', 'Kasie UPT'),
(6, 'Tahap 6 : Surat Tugas Pemeriksaan telah di UPLOAD dan menunggu dicetak atau pelaksanaan pemeriksaan atau BAP untuk diupload', 'Satker/Staf UPT'),
(7, 'Tahap 7 : BAP sudah diupload dan menunggu Verifikasi Dokumen Ulang', 'Kasie UPT'),
(8, 'Tahap 8 : Dokumen telah diverifikasi ulang dan menunggu SAJI DN untuk disahkan', 'Kepala UPT'),
(9, 'Tahap 9 : SAJI DN telah disahkan dan menunggu untuk dicetak dan Validasi Print Out', 'Satker/Staf UPT atau Kasie UPT'),
(10, 'VALID : Print Out SAJI DN telah VALID (bisa digunakan) dan menunggu Pengiriman Barang', 'Satker/Staf UPT'),
(11, 'VALID : SAJI DN telah digunakan untuk pengiriman barang dan menunggu sampai tujuan', 'Satker/Staf UPT TUJUAN'),
(12, 'INVALID : Barang sudah diterima di tempat tujuan. SAJI DN telah dimatikan (INVALID)', '-');

-- --------------------------------------------------------

--
-- Table structure for table `master_tahun_batasan`
--

CREATE TABLE IF NOT EXISTS `master_tahun_batasan` (
  `tahun` int(11) NOT NULL,
  `batasan` date DEFAULT NULL,
  PRIMARY KEY (`tahun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_tahun_batasan`
--

INSERT INTO `master_tahun_batasan` (`tahun`, `batasan`) VALUES
(2025, '2026-03-31'),
(2024, '2025-03-31'),
(2023, '2024-03-31'),
(2022, '2023-03-31'),
(2021, '2022-03-31'),
(2020, '2021-03-31'),
(2019, '2020-03-31'),
(2018, '2019-03-31'),
(2017, '2018-03-31'),
(2016, '2017-03-31'),
(2015, '2016-03-31'),
(2014, '2015-03-31'),
(2013, '2014-03-31'),
(2026, '2027-03-31'),
(2027, '2028-03-31'),
(2028, '2029-03-31'),
(2029, '2030-03-31'),
(2030, '2031-03-31'),
(2031, '2032-03-31'),
(2032, '2033-03-31'),
(2033, '2034-03-31'),
(2034, '2035-03-31'),
(2035, '2036-03-31'),
(2036, '2037-03-31'),
(2037, '2038-03-31'),
(2038, '2039-03-31'),
(2039, '2040-03-31'),
(2040, '2041-03-31'),
(2041, '2042-03-31'),
(2042, '2043-03-31'),
(2043, '2044-03-31'),
(2044, '2045-03-31'),
(2045, '2046-03-31'),
(2046, '2047-03-31'),
(2047, '2048-03-31'),
(2048, '2049-03-31'),
(2049, '2050-03-31'),
(2050, '2051-03-31'),
(2051, '2052-03-31'),
(2052, '2053-03-31'),
(2053, '2054-03-31'),
(2054, '2055-03-31'),
(2055, '2056-03-31'),
(2056, '2057-03-31'),
(2057, '2058-03-31'),
(2058, '2059-03-31'),
(2059, '2060-03-31'),
(2060, '2061-03-31'),
(2061, '2062-03-31'),
(2062, '2063-03-31'),
(2063, '2064-03-31'),
(2064, '2065-03-31'),
(2065, '2066-03-31'),
(2066, '2067-03-31'),
(2067, '2068-03-31'),
(2068, '2069-03-31'),
(2069, '2070-03-31'),
(2070, '2071-03-31'),
(2071, '2072-03-31'),
(2072, '2073-03-31'),
(2073, '2074-03-31'),
(2074, '2075-03-31'),
(2075, '2076-03-31'),
(2076, '2077-03-31'),
(2077, '2078-03-31'),
(2078, '2079-03-31'),
(2079, '2080-03-31'),
(2080, '2081-03-31'),
(2081, '2082-03-31'),
(2082, '2083-03-31'),
(2083, '2084-03-31'),
(2084, '2085-03-31'),
(2085, '2086-03-31'),
(2086, '2087-03-31'),
(2087, '2088-03-31'),
(2088, '2089-03-31'),
(2089, '2090-03-31'),
(2090, '2091-03-31'),
(2091, '2092-03-31'),
(2092, '2093-03-31'),
(2093, '2094-03-31'),
(2094, '2095-03-31'),
(2095, '2096-03-31'),
(2096, '2097-03-31'),
(2097, '2098-03-31'),
(2098, '2099-03-31'),
(2099, '2100-03-31'),
(2100, '2101-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `master_timeout`
--

CREATE TABLE IF NOT EXISTS `master_timeout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeout` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `master_timeout`
--

INSERT INTO `master_timeout` (`id`, `timeout`) VALUES
(1, 1800);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
