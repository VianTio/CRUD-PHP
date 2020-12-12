-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Des 2020 pada 06.08
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jns_kelamin` enum('P','L') NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id`, `nama`, `tgl_lahir`, `jns_kelamin`, `alamat`) VALUES
('10000000000', 'Vian Azis Tio Riwanto', '2000-08-20', 'L', 'Grenden, Puger, Jember'),
('10178534202', 'Louvenia Schmeler', '2006-09-09', 'L', 'NewHampshire'),
('11460383264', 'Carson Berge III', '1990-03-01', 'L', 'Michigan'),
('11638388317', 'Nolan Jenkins II', '2015-11-15', 'L', 'Oklahoma'),
('11662083328', 'Thad Langosh', '1980-12-23', 'P', 'SouthCarolina'),
('12345978900', 'Gilbert Austin', '2000-01-30', 'L', 'USA'),
('14965679580', 'Ms. Name Johns', '2013-07-13', 'L', 'Missouri'),
('15731785488', 'Demond Williamson', '1978-05-12', 'P', 'NewMexico'),
('16776038985', 'Markus Gislason', '2012-07-02', 'L', 'NewYork'),
('18132208916', 'Verla Frami', '1990-10-17', 'L', 'Connecticut'),
('18309492580', 'Dr. Santos Hammes', '1986-05-28', 'P', 'NewYork'),
('18683616355', 'Aiden Treutel', '2013-09-02', 'P', 'NewJersey'),
('20025062803', 'Rollin Collins', '1991-06-15', 'P', 'NorthCarolina'),
('20499716820', 'Angeline Jaskolski', '2002-11-27', 'L', 'Georgia'),
('22129502412', 'Dr. Tremaine Okuneva', '1999-05-17', 'L', 'Missouri'),
('22393976519', 'Bertrand Leffler', '1978-03-02', 'P', 'Kansas'),
('24636850552', 'Lavonne Watsica', '2018-03-29', 'L', 'Vermont'),
('25097808246', 'Kristofer Hills', '1993-11-08', 'L', 'NewYork'),
('25324461404', 'Erna Dicki', '2020-05-14', 'P', 'Minnesota'),
('27276163501', 'Angelita Goodwin', '2016-09-22', 'L', 'Florida'),
('27714885808', 'Dr. Reginald Marvin', '2019-07-27', 'L', 'Louisiana'),
('27998692607', 'Lawrence Marks', '1979-12-09', 'P', 'Florida'),
('31782427635', 'Rina Alzahra', '2001-12-22', 'P', 'Jember'),
('33246500384', 'Rhea Brakus', '1973-09-07', 'L', 'Colorado'),
('33612759588', 'Mr. Emory Lueilwitz MD', '2011-08-13', 'L', 'WestVirginia'),
('34259954034', 'Beaulah Bergstrom', '1970-03-25', 'P', 'SouthDakota'),
('34764957204', 'Dr. Verlie Kohler', '1991-10-29', 'P', 'Minnesota'),
('34786789463', 'Rosendo Morissette', '1975-09-02', 'L', 'SouthDakota'),
('36093759466', 'Prof. Alfreda Conn', '2017-10-10', 'L', 'Montana'),
('36298149367', 'Bethel Olson', '1985-09-08', 'P', 'Maryland'),
('37867734287', 'Giles Hoeger', '2007-10-20', 'P', 'Indiana'),
('38159076124', 'Jasmin Koepp', '1983-10-12', 'L', 'Oklahoma'),
('39652417995', 'Hyman Botsford', '1972-06-07', 'P', 'Illinois'),
('40026921681', 'Jaeden Ratke', '2012-08-11', 'L', 'Massachusetts'),
('40354406577', 'Carleton Mraz IV', '1998-11-02', 'L', 'Oklahoma'),
('41691417195', 'Lora Stehr', '1978-09-22', 'P', 'NewHampshire'),
('42287891111', 'Ms. Lonie Walker', '1991-08-01', 'P', 'Nevada'),
('43865452795', 'Domingo Kunze', '1981-06-04', 'P', 'Idaho'),
('46258104145', 'Miss Melyna Rohan Sr.', '2002-12-21', 'P', 'Massachusetts'),
('47478285157', 'Pink Kerluke', '2009-08-02', 'L', 'Idaho'),
('48651862409', 'Zander Jacobs', '2012-12-25', 'L', 'Nevada'),
('50170870339', 'Sandrine Stamm', '1996-12-13', 'L', 'Nebraska'),
('50289015695', 'Prof. Brandt McGlynn', '1982-03-05', 'P', 'Georgia'),
('51721664834', 'Winona Koch', '1984-07-18', 'L', 'WestVirginia'),
('53952006162', 'Wilma Schoen', '1978-05-23', 'P', 'NewJersey'),
('55167819196', 'Tod Hyatt', '1987-05-28', 'P', 'District of Columbia'),
('55885225157', 'Meta Fritsch', '2008-11-05', 'P', 'WestVirginia'),
('55929050357', 'Maci Hartmann', '1989-01-10', 'L', 'Maryland'),
('56343578258', 'Bennett Hammes', '1990-02-13', 'P', 'Maine'),
('57287541907', 'Mr. Brooks Denesik PhD', '1971-10-11', 'P', 'Delaware'),
('57489423272', 'Ms. Roslyn Treutel DVM', '2000-11-07', 'L', 'NewHampshire'),
('57870434205', 'Carmine Funk', '2001-02-06', 'L', 'Indiana'),
('57900318079', 'Susan Ryan DDS', '1981-08-20', 'P', 'Alaska'),
('58038727818', 'Junius Green', '1973-06-17', 'P', 'Missouri'),
('58617589301', 'Zion Hamill', '2011-09-26', 'L', 'Connecticut'),
('58863074751', 'Mr. Dusty Pagac DDS', '2012-05-18', 'P', 'California'),
('59125677053', 'Aaliyah Corwin', '1982-03-04', 'L', 'Hawaii'),
('61685417830', 'Mackenzie Krajcik', '2013-06-10', 'L', 'Maryland'),
('62185982195', 'Dr. Rickie Batz III', '1978-04-16', 'L', 'Virginia'),
('62235985025', 'Scarlett Mertz', '2007-07-18', 'L', 'Mississippi'),
('62938444586', 'Autumn Nienow', '1991-02-23', 'P', 'District of Columbia'),
('63532733297', 'Finn Kris', '1970-09-23', 'L', 'NewHampshire'),
('63860776931', 'Zoey Ankunding', '1990-03-14', 'L', 'Hawaii'),
('64749833373', 'Gino Wehner', '1983-04-28', 'P', 'Virginia'),
('64773226552', 'Alvera Moen DVM', '2012-11-14', 'P', 'Montana'),
('65300128115', 'Kiel Romaguera', '2018-02-07', 'P', 'SouthCarolina'),
('65934706875', 'Fay Fay', '1971-02-08', 'L', 'Vermont'),
('66978405909', 'Ms. Alexandrine Oberbrunner IV', '2008-08-01', 'L', 'Hawaii'),
('67402979396', 'Verona Nolan', '2016-11-25', 'P', 'NorthDakota'),
('67852249615', 'Mylene Hyatt', '1987-05-04', 'L', 'Kansas'),
('68155808662', 'Randy Mueller', '2014-10-14', 'P', 'Connecticut'),
('68225607369', 'Ibrahim Vandervort', '2018-02-17', 'L', 'Nevada'),
('68375225430', 'Magali Kerluke DDS', '2006-05-02', 'P', 'Florida'),
('68810768397', 'Candice Frami', '1990-07-06', 'P', 'Massachusetts'),
('69443263625', 'Katrina Kub', '1978-01-21', 'L', 'Arkansas'),
('73514244318', 'Lafayette Kohler', '2006-12-09', 'L', 'Pennsylvania'),
('75969178951', 'Wendy Cummerata', '2007-08-04', 'P', 'NorthCarolina'),
('76534278931', 'Melani', '2002-02-02', 'P', 'Jember'),
('77450083922', 'Merl Boyle', '1994-02-14', 'P', 'SouthCarolina'),
('80695275072', 'Heaven Robel', '1978-03-05', 'P', 'Wyoming'),
('80915858056', 'Mr. Mark Stark II', '1981-10-23', 'L', 'Nevada'),
('82808765377', 'Mr. Fern Heidenreich Jr.', '1984-06-15', 'P', 'Idaho'),
('84731319826', 'Alexie Glover', '2004-03-25', 'P', 'Colorado'),
('86358634307', 'Rollin Bosco', '1983-10-03', 'L', 'Michigan'),
('87073831008', 'Ms. Lizzie Rodriguez DVM', '2010-04-11', 'P', 'Maryland'),
('87133008921', 'Ada Feil', '2016-02-09', 'P', 'Washington'),
('87248651566', 'Brice Boyer', '2014-09-08', 'P', 'RhodeIsland'),
('87460661665', 'Randy Grimes', '1983-11-11', 'P', 'Georgia'),
('87752000694', 'Aliya Rogahn', '2013-12-24', 'P', 'Wyoming'),
('89449874036', 'Loren Streich', '1995-02-02', 'P', 'Connecticut'),
('89953361046', 'Ellsworth Gislason', '1980-05-22', 'P', 'Washington'),
('90164023712', 'Giovanna Dibbert Sr.', '2011-03-01', 'L', 'NorthCarolina'),
('91038397783', 'Nelson Kassulke', '1999-06-10', 'P', 'Montana'),
('91514188386', 'Favian Collins', '1999-11-18', 'P', 'NorthDakota'),
('92253340356', 'Miss Tiffany Dicki', '1975-08-01', 'L', 'Tennessee'),
('92678068028', 'Prof. Jarred Schinner II', '2002-01-24', 'P', 'Washington'),
('93021860253', 'Gregory Veum', '1988-06-16', 'P', 'Mississippi'),
('93796815816', 'Anabel Runolfsdottir', '2004-08-23', 'P', 'Maryland'),
('94148102886', 'Henriette Streich', '2019-05-03', 'P', 'Virginia'),
('95545827024', 'Guy Waelchi', '2011-02-24', 'P', 'Wisconsin'),
('95787360994', 'Conrad Haag Jr.', '2009-03-31', 'L', 'Idaho'),
('96345988941', 'Minah Manda', '2000-09-09', 'P', 'Jember'),
('96627908763', 'Melody Okuneva', '2003-04-24', 'L', 'Florida'),
('97141031860', 'Ms. Vergie Runolfsdottir', '1995-07-08', 'L', 'Hawaii'),
('99855070691', 'Chesley Smith', '2018-01-04', 'P', 'Utah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
