-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.30-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table kuesioner2.config
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` longtext,
  `description` longtext,
  `icon` longtext,
  `instagram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `logo` longtext,
  `meta_deskripsi` text NOT NULL,
  `basic` int(11) DEFAULT NULL,
  `meta_keyword` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table kuesioner2.config: ~0 rows (approximately)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`, `name`, `email`, `phone`, `address`, `description`, `icon`, `instagram`, `facebook`, `logo`, `meta_deskripsi`, `basic`, `meta_keyword`) VALUES
	(1, 'Sistem Informasi Kuesioner', '', '801217596251', 'Universitas 17 Agustus 1945 Surabaya', 'Diskominfo Magang<br>', 'icon1.png', '', '', 'logo4.png', '																																																																								\r\n											\r\n											\r\n											\r\n											\r\n											\r\n											', 5, '																																																																								\r\n											\r\n											\r\n											\r\n											\r\n											\r\n											');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Dumping structure for table kuesioner2.detail_jawaban
CREATE TABLE IF NOT EXISTS `detail_jawaban` (
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_jawaban` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` char(10) NOT NULL,
  PRIMARY KEY (`id_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=8293 DEFAULT CHARSET=latin1;

-- Dumping data for table kuesioner2.detail_jawaban: ~3 rows (approximately)
/*!40000 ALTER TABLE `detail_jawaban` DISABLE KEYS */;
INSERT INTO `detail_jawaban` (`id_detail`, `id_jawaban`, `id_soal`, `jawaban`) VALUES
	(8289, 426, 34, '3'),
	(8290, 427, 34, '4'),
	(8291, 427, 35, '5'),
	(8292, 427, 36, '4');
/*!40000 ALTER TABLE `detail_jawaban` ENABLE KEYS */;

-- Dumping structure for table kuesioner2.jabatan
CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT '0',
  `deskripsi_jabatan` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table kuesioner2.jabatan: ~0 rows (approximately)
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` (`id_jabatan`, `nama`, `deskripsi_jabatan`) VALUES
	(1, 'asdasd', '<p>asdasd</p>\r\n'),
	(2, NULL, NULL);
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;

-- Dumping structure for table kuesioner2.jawaban
CREATE TABLE IF NOT EXISTS `jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_kuesioner` int(11) NOT NULL,
  `id_responden` int(11) NOT NULL,
  `hasil` double NOT NULL,
  `Efficiency` double NOT NULL,
  `Error` double NOT NULL,
  `Satisfaction` double NOT NULL,
  `Learnability` double NOT NULL,
  `Memorability` double NOT NULL,
  `HasilAPO` double NOT NULL,
  `HasilDSS` double NOT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=latin1;

-- Dumping data for table kuesioner2.jawaban: ~2 rows (approximately)
/*!40000 ALTER TABLE `jawaban` DISABLE KEYS */;
INSERT INTO `jawaban` (`id_jawaban`, `id_kuesioner`, `id_responden`, `hasil`, `Efficiency`, `Error`, `Satisfaction`, `Learnability`, `Memorability`, `HasilAPO`, `HasilDSS`) VALUES
	(426, 1, 88, 0, 0, 0, 0, 0, 0, 3, 0),
	(427, 1, 166, 0, 0, 0, 0, 0, 0, 8, 5);
/*!40000 ALTER TABLE `jawaban` ENABLE KEYS */;

-- Dumping structure for table kuesioner2.kuesioner
CREATE TABLE IF NOT EXISTS `kuesioner` (
  `id_kuesioner` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kuesioner` char(50) NOT NULL DEFAULT '0',
  `judul` varchar(255) DEFAULT '0',
  `skala` int(11) DEFAULT '0',
  `deskripsi` text NOT NULL,
  `masukkan` text NOT NULL,
  PRIMARY KEY (`id_kuesioner`),
  UNIQUE KEY `kode_kuesioner` (`kode_kuesioner`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table kuesioner2.kuesioner: ~0 rows (approximately)
/*!40000 ALTER TABLE `kuesioner` DISABLE KEYS */;
INSERT INTO `kuesioner` (`id_kuesioner`, `kode_kuesioner`, `judul`, `skala`, `deskripsi`, `masukkan`) VALUES
	(1, 'kuesioner1', 'Kuesioner Penelitian Pemanfaatan Metode Human Performance Model Untuk Prototyping Website (Studi Kasus: Website warta17agustus.com)', 5, '<p>Petunjuk Pengisian Kuesioner</p>\r\n\r\n<ol>\r\n	<li>Pendahuluan<br />\r\n	Kuesioner ini dibuat untuk mengetahui tingkat usabilitas pada website warta17agustus.com, jika terdapat kekurangan pada website tersebut maka akan dilakukan perancangan ulang.</li>\r\n	<li>Petunjuk Pengisian<br />\r\n	a. Isi identitas Bapak/Ibu/Saudara/i dibawah ini dengan benar<br />\r\n	b. Bukalah website warta17agustus.com<br />\r\n	c. Isilah kuesioner sesuai dengan kebenaran yang ada pada website tersebut<br />\r\n	d. Berilah tanda (V) pada kolom yang tersedia dan pilih sesuai hati nurani Anda<br />\r\n	e. Ada lima alternatif jawaban, yang menandakan skala 1-5 dengan rincian sebagai berikut:<br />\r\n	&nbsp; &nbsp;1 = Sangat Tidak Setuju<br />\r\n	&nbsp; &nbsp;2 = Tidak Setuju&nbsp;<br />\r\n	&nbsp; &nbsp;3 = Cukup Setuju<br />\r\n	&nbsp; &nbsp;4 = Setuju<br />\r\n	&nbsp; &nbsp;5 = Sangat Setuju</li>\r\n</ol>\r\n', 'Rekomendasi untuk website warta17agustus.com dengan mengacu pada hasil radar chart dan eight golden rules for web design\r\n1. Konsistensi\r\na. Pilihan Warna\r\nWebsite warta17agustus.com secara garis besar terdiri dari tiga paduan warna yakni, merah, putih, dan hitam. Tetapi terdapat dua warna yang dominan yaitu merah dan putih. Hal ini selaras dengan sebutan Universitas 17 Agustus 1945 Surabaya yakni Kampus Merah Putih. Kedua warna tersebut dijadikan sebagai warna dasar dari setiap layout halaman antarmuka pada website warta17agustus.com.\r\nb. Tata Letak\r\nTata letak pada antarmuka setiap halaman di website warta17agustus.com adalah sama. Contohnya, terdapat Logo warta17agustus serta menu-menu yang selalu berada di posisi yang sama. Tetapi, terdapat satu menu yang tidak mengarah ke halaman apapun jika di klik. Menu tersebut adalah menu TV Warta17. Hal ini disebabkan karena terdapat beberapa pihak yang keberatan jika terdapat menu TV Warta17.\r\nSelain tata letak logo dan menu-menu, hampir disetiap halaman website warta17agustus, terdapat tata letak konten yang sama. Namun pada halaman Home terdapat perbedaan tata letak. Pada menu Home juga terjadi pemborosan konten, contohnya pada website warta17agustus.com terdapat beberapa menu seperti Sorotan, Teknologi, Karya Ilmiah, dll. Sedangkan pada menu Home bagian bawah, juga terdapat menu serta berita atau artikel-artikel yang isinya sama. \r\nDari uraian diatas, dapat disimpulkan bahwa sebenarnya website warta17agustus.com memiliki konsistensi antarmuka yang baik dengan tema yang minimalis dan tidak menggunakan tampilan grafis yang rumit. Tetapi tetap ada beberapa kegagalan dalam penempatan tata letak pada website tersebut yang menyebabkan terjadinya pemborosan konten.\r\nc. Font (Tulisan)\r\nPemilihan Font atau jenis tulisan pada website warta17agustus.com adalah baik. Dengan ukuran dan warna tulisan yang disesuaikan dengan warna website membuatnya mudah dan jelas untuk dibaca oleh user.\r\n\r\n2. Shortcut\r\nWebsite warta17agustus.com menyediakan shortcut berupa menu-menu yang tertata rapi dan konsisten sehingga memudahkan user untuk berpindah halaman sesuai dengan label pada menu-menu tersebut secara cepat. Namun, pada setiap halaman, terdapat satu konten yakni Pariwara yang berisi gambar logo BSI Untag yang apabila di klik akan mengarah ke halaman error 404 Page Not Found. Selain itu, pada menu Home terdapat beberapa gambar yang menghubungkannya ke sebuah link atau url lain. Tetapi ada satu gambar “Jasa Pembuatan Website” yang mengarah ke halaman kosong.\r\n\r\n3. Feedback\r\nAksi yang dilakukan user pada website warta17agustus.com akan menghasilkan feedback atau umpan balik berupa perpindahan halaman. Contohnya jika user memberikan komentar pada sebuah berita atau artikel, ketika di klik “Kirim Komentar”, maka akan terjadi perpindahan halaman menjadi halaman Komentar.\r\n\r\n4. Dialog Closure\r\nMerancang dialog closure dianggap penting desain website. Begitu pula yang terjadi pada website warta17agustus.com. Contohnya jika user ingin membagikan satu artikel atau berita kedalam akun Facebooknya, maka user akan menekan tombol “Bagikan”, kemudian user akan menuliskan caption untuk kirimannya, dan terakhir adalah menekan tombol “Kirim ke Facebook”.\r\n\r\n5. Simple Error Handling\r\nApabila terjadi kesalahan dalam pemilihan menu, user dapat menanganinya dengan cara kembali ke halaman semula dengan menekan tombol pilihan menu semula.\r\n\r\n6. Reversible Action\r\nReversible action berguna untuk mengembalikan ke tindakan sebelumnya. Hal ini tentu akan memperkecil kekhawatiran user karena user akan mengetahui jika kesalahan yang dibuat bisa dibatalkan. Contohnya saat user ingin membagikan artikel atau berita ke dalam akun media social atau mencetak artikel dan berita, kemudian user tersebut mengurungkan niatnya, maka dapat diatas dengan menekan tombol “Cancel”.\r\n\r\n7. Internal Locus of Control\r\nUser dapat dengan mudah membuka halaman-halaman pada website warta17agustus.com sesuai dengan keinginannya, tanpa harus terurut.\r\n\r\n8. Reduce Short-term Memory Load\r\nPada poin ini, website warta17agustus.com memenuhi kualifikasi yakni dengan style minimalis dan mengurangi penggunaan tampilan yang rumit. di dukung pula dengan penataan menu yang tertata rapi sehingga memudahkan user mengingat letak menu-menu yang mendukung aksinya. \r\n'),
	(2, '32342', 'werwe', 123, '<p>sdsdf</p>\r\n', '<p>sdfsdf</p>\r\n');
/*!40000 ALTER TABLE `kuesioner` ENABLE KEYS */;

-- Dumping structure for table kuesioner2.rekomendasi
CREATE TABLE IF NOT EXISTS `rekomendasi` (
  `id_rekomendasi` int(11) NOT NULL AUTO_INCREMENT,
  `nilai` int(11) NOT NULL DEFAULT '0',
  `id_soal` int(11) DEFAULT '0',
  `isi_rekomendasi` text,
  PRIMARY KEY (`id_rekomendasi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table kuesioner2.rekomendasi: ~1 rows (approximately)
/*!40000 ALTER TABLE `rekomendasi` DISABLE KEYS */;
INSERT INTO `rekomendasi` (`id_rekomendasi`, `nilai`, `id_soal`, `isi_rekomendasi`) VALUES
	(1, 3, 10, '32fdfgd dfgdfg');
/*!40000 ALTER TABLE `rekomendasi` ENABLE KEYS */;

-- Dumping structure for table kuesioner2.responden
CREATE TABLE IF NOT EXISTS `responden` (
  `id_responden` int(11) NOT NULL AUTO_INCREMENT,
  `nim` char(50) DEFAULT '0',
  `nama` varchar(255) DEFAULT NULL,
  `instansi` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_responden`)
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=latin1;

-- Dumping data for table kuesioner2.responden: ~392 rows (approximately)
/*!40000 ALTER TABLE `responden` DISABLE KEYS */;
INSERT INTO `responden` (`id_responden`, `nim`, `nama`, `instansi`, `jurusan`, `id_jabatan`) VALUES
	(1, '1461404738', 'Tutus Dwiyanto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(2, '1461404659', 'Agus Tri S', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(3, '1211408389', 'Choirul Anwar', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(4, '1461404906', 'Fatkhur Rochman', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(5, '1461604897', 'Yuan Eko ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(6, '1461404784', 'Eko Setyo', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(7, '1461404747', 'Khoirul Anwar', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(8, '1511405193', 'Satrio P P', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(9, '1211508913', 'Alfiazah', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(10, '1211508580', 'Novi Dwi Retnowati', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(11, '1211508845', 'Ketut Raditya W', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(12, '1461404623', 'Bachtiar Eka S', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(13, '1461404889', 'Dwika Lovita ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(14, '1461600190', 'Diah Ayu Novitasari', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(15, '1461600256', 'Diah Dwi Ristanti', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(16, '1461600254', 'Murniawati G', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(17, '1461600217', 'Yuniar Ayu P', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(18, '1231503323', 'Lismawati', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan', NULL),
	(19, '1231503263', 'Winarsih', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan', NULL),
	(20, '1511700114', 'Yeyen Rafika', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(22, '1511700102', 'Febriana N', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(23, '1511700065', 'Envy Putri Pancarina Prismi', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(24, '1211700288', 'Dandy Satrya H', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(25, '1211700285', 'Agnes Iftitahun', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(26, '1211700294', 'Abellia Permatasari', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(27, '1211700295', 'Fahira Nadifah', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(28, '1211700308', 'M. Fikri Alfadel', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(29, '1211700293', 'Alfirra Ramadhanie', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(30, '1461404708', 'Moch. Saifuddin Zuhri', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(31, '1461404873', 'Yogie Takbir', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(32, '1461404753', 'Arsyan Donniswara', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(33, '1461404856', 'Ahmad Fajrillah Azizy', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(34, '511304918', 'Shahnaz', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(35, '1221600123', 'Dewi Anggraeni', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(36, '1461404796', 'M. Faisal F', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(37, NULL, NULL, NULL, NULL, NULL),
	(38, '1151600243', 'Lisa Purwita Sari', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', NULL),
	(39, '1151600241', 'Yunita R', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', NULL),
	(40, '1151600228', 'Ika Fitri Sriliana', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', NULL),
	(41, '1511505446', 'N.J.M Kamila', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(42, '1511505395', 'Fahira Indah O', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(43, '1511700071', 'Syafrie Ma\'arief', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(44, '1511700032', 'Nuansari Nurhandini', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(45, '1511700020', 'Diah Pitaloka', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(46, '1511700004', 'Maulina Bunga A.', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(47, '1511700017', 'Imam Faid', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(48, '1511700049', 'Ulil Amriatul', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(49, '1511700039', 'Oriza Avrelly W', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(50, '1511700081', 'Putri Aprilia C', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(51, '1511700029', 'Farihta Rafidika', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(52, '1511700036', 'Fais Imron', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(53, '1511405125', 'Rida Wahyu Utami', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(54, '1511405203', 'Rodha Uwais Almirza', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(55, '1511405134', 'Dinda Fathimah', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(56, '1511405165', 'Emilia Novita Sari', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(57, '1511405076', 'Nur Asmeila S T', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(58, '1511405184', 'Afryda', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(59, '1461404680', 'Anang Dwi Rismawan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(60, '1461404973', 'Ikko Satrio Yulian Dwi Rahadian', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', 1),
	(61, '1461404746', 'Arga Haris', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(62, '1461404914', 'Rina Munik Aprilia K', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(63, '1461404905', 'Shokibul Kahfi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(64, '1461404947', 'Ratna Aprilia Hastuti', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(65, '1461404962', 'Hidayati Renita Putri', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(66, '1461404913', 'Faiz Nahroni', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(67, '1461404917', 'Mochammad Sayid Ibnu Yahya', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(68, '1461404901', 'Citra Devi Ariyanti', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(69, '1221408834', 'Windi Leolita W', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(70, '1221408828', 'Yunifa Sri Lestari', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(71, '1221408859', 'Yunia Nisa N F', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(72, '1221408887', 'Jefry Rahmad Kriswanto', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(73, '1221408883', 'Widyani Rahayu Kinasih', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(74, '1221408817', 'Shelawati Arinda', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(75, '1221408876', 'Anna Zulfa Amaliyah', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(76, '1211508556', 'Noval Candra R', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(77, '1221408784', 'Annisa Alwy', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(78, '1461404841', 'Eko Suheriyanto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(79, '1461600056', 'Aldion Amirrul E', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(80, '1211408349', 'Wiki N W', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(81, '1211408123', 'Fucha Fitri K', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(82, '1211408122', 'Aisya R K', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(83, '1211408131', 'Nugrahayu Puspita A', 'Universitas 17 Agustus 1945 Surabaya', ' Manajemen', NULL),
	(84, '1111408528', 'Rimazaiyana Firdaus', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Negara', NULL),
	(85, '1211408493', 'Septian Artdika Prasetya', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(86, '1211408422', 'Bayu Sasmito', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(87, '1211408454', 'Zainul Arif Hidayat', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(88, '1211408412', 'Achmad Faisol', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(89, '1211408407', 'Tri Oka Desta C', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(90, '1211408487', 'Ricky Dwi F', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(91, '1211408461', 'Fany Setyawan', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(92, '1461404980', 'Mochammad Eka', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(93, '1461404895', 'Krusita Oktaviani W', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(94, '1461404916', 'Auliah Novianti', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(95, '1511405197', 'Rosita Mila Khoirun Nisa', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(96, '1461600080', 'Bagus Jati Wiguna', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(97, '1461600048', 'Kheivino Bambang S', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(98, '1511405083', 'Defta Wimanda Pribadi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(99, '1621400664', 'Laily Budiarti', 'Universitas 17 Agustus 1945 Surabaya', 'Sastra Jepang', NULL),
	(100, '1461600047', 'Ilvi Pratiana S Alnun', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(101, '1461404932', 'Albert Wattimena', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(102, '1461600025', 'Amsyar Salam', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(103, '1461600081', 'Rismandu Permana P', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(104, '1461600027', 'M. Ichwan Dwi Prasetyo', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(105, '1461404890', 'Fitri Nurhayati', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(106, '1461600041', 'Iga Ariansyah', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(107, '1461600075', 'Ivan Rozak', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(108, '1461404951', 'Andrianto Cahyono Putro', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(109, '1461404715', 'Rany Kurnia Sari', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(110, '1461404845', 'Riga Kurniawan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(111, '110', 'V F', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(112, '111', 'F B N', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(113, '1511405057', 'Wahyu Mayroro P', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(114, '1511404985', 'Gregorius Kurniawan B Y K', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(115, '1511405055', 'Anton Panji S', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(116, '1511405163', 'Rizky Amelia', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(117, '1511600040', 'Moch Ainur R', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(118, '1511500006', 'Farida Munawaroh', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(119, '1511405156', 'Reni Oktaviana C', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(120, '1461404674', 'Linda Novita Sari', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(121, '1461404654', 'Febriya Dyah Safitri ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(122, '1461404869', 'Nadia Maharani', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(123, '1221408769', 'Anggraini Azizah', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(124, '1311600198', 'Rizky Prayogi P', 'Universitas 17 Agustus 1945 Surabaya', 'Hukum', NULL),
	(125, '1311600203', 'Hanief Kurniawan', 'Universitas 17 Agustus 1945 Surabaya', 'Hukum', NULL),
	(126, '1311600170', 'Matias Hariawan W', 'Universitas 17 Agustus 1945 Surabaya', 'Hukum', NULL),
	(127, '1311600034', 'Doni Rahmat A', 'Universitas 17 Agustus 1945 Surabaya', 'Hukum', NULL),
	(128, '1431700063', 'Intan Yuli Riyanti', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Sipil', NULL),
	(129, '1461505197', 'Maharani', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(130, '1211508834', 'Agnes F.W', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(131, '1211508876', 'Vicky Divela', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(132, '1211508568', 'Diyar Vonselisi Pradina ', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(133, '1211508778', 'Bela Aulia', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(134, '1461404642', 'Aditya Putra Daniswara', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(135, '1461402597', 'Ainul Rohman ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(136, '1461404600', 'Dedi Putra', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(137, '1121600043', 'Puji Sri Lestari', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis', NULL),
	(138, '1121600018', 'Nindi Ayu T S', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis', NULL),
	(139, '1211408035', 'Nadia', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(140, '1221509221', 'Irma Arnike Saputri', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(141, '1211408491', 'Widiana Putri', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(142, '1211600308', 'Maria Margaretha', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(143, '1211600202', 'Yogi Agil Prastyo', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(144, '1511405096', 'Diana Tri Setyawati', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(145, '1511405074', 'Hosiana M P', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(146, '1511404991', 'Ika Rizky', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(147, '411306173', 'Riska Agus Tianingsih', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Industri', NULL),
	(148, '1461505304', 'Faiz Damar H', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(149, '1151501133', 'Tiara Parwita O', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', NULL),
	(150, '1431502823', 'Aliyatul Raidah', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Sipil', NULL),
	(151, '1511700040', 'Amaylia Dewi A', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(152, '1511700218', 'M. Dzulhiham An Najih', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(153, '1461600209', 'Zuchal Ari Bastian', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(154, '1461600189', 'Rasyid Dwi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(155, '1461600212', 'Bryan Wahyu P', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(156, '1461600206', 'Nizar Zulmi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(157, '1441600012', 'Fardianto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Arsitektur', NULL),
	(158, '1451700039', 'Eksa A M', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Elektro', NULL),
	(159, '1451502287', 'Wisnu Triwijaya', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Elektro', NULL),
	(160, '1221408825', 'Daniel Alex', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(161, '1611403092', 'Desi Sulistyarini', 'Universitas 17 Agustus 1945 Surabaya', 'Sastra Inggris', NULL),
	(162, '1221408697', 'Desi Wulandari', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(163, '1461404829', 'Vicky Rivaldi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(164, '1461404958', 'Axel Aziz Erino', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(165, '311301439', 'Tito Tambunan', 'Universitas 17 Agustus 1945 Surabaya', 'Hukum', NULL),
	(166, '1461404918', 'Aditya Zaadur R', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(167, '1611403108', 'Ulfa Amalia', 'Universitas 17 Agustus 1945 Surabaya', 'Sastra Inggris', NULL),
	(168, '1211408510', 'Mahriyah', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(169, '511304827', 'Andriana Anggraini W', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(170, '1461404758', 'Demianus Kambu', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(171, '1461404823', 'Dian Oktavia S T', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(172, '1461404957', 'Wahyu Bhekti Pertiwi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(173, '1461404788', 'Martafina Natalia Takdare', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(174, '1461404858', 'Arif Nasruddin', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(175, '1461404954', 'Anggi Surya P', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(176, '1221700113', 'Safira Yuli Ananta', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(177, '1221700132', 'Dharma Widhi Rahayu', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(178, '1121408108', 'Siti Fadila', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis', NULL),
	(179, '1461600136', 'Mohammad Eko H', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(180, '1461404783', 'Fahira Zahrotul Maulidyah', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(181, '1421404467', 'Agung Deni Iriyanto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Mesin', NULL),
	(182, '1461404930', 'Linda Ayu Niswatin', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(183, '1211700032', 'Dewi Chandra', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(184, '1461404678', 'Wahyu Irawan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(185, '1461404806', 'Ryan Eka Pramuditha', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(186, '1461404820', 'Bachtiar Yuliardi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(187, '1461404966', 'Miftakhul Khoir', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(188, '1461404972', 'Ahmad Ibrahim Gani', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(189, '1461404911', 'Martin Dwiky Setiawan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(190, '1461404963', 'Christian Adikusuma Tanjung', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(191, '1221408693', 'Andri Prasetya', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(192, '1421404567', 'Mochamad Yusuf', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Mesin', NULL),
	(193, '1211510002', 'Tionisyah', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(194, '1221408754', 'Aris Setiyono', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(195, '1151600169', 'Nida Naziah', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', NULL),
	(196, '1151600216', 'Novita Agustina M', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', NULL),
	(197, '1151600215', 'Jihan Kinanah', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', NULL),
	(198, '1231600004', 'Dian Rizky P', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan', NULL),
	(199, '1231600017', 'Irmanda Azalia', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan', NULL),
	(200, '1231600059', 'Zelika Dewi Sari', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan', NULL),
	(201, '1231600060', 'Varisa P F', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan', NULL),
	(202, '1211508671', 'Siti Jumrotul Fadilah', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(203, '1211508683', 'Anggraeni Fitria Febrianti', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(204, '1211508657', 'Fauziyah Fadhilah K', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(205, '1231600106', 'Dhaivi S N', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan', NULL),
	(206, '1461404743', 'Adam Teguh Saputra', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(207, '1211408297', 'Putri Bella', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(208, '1211408247', 'Nelly', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(209, '1511405139', 'Anggi Gusti Pradhana', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(210, '1121600044', 'Sofi Diah Melati', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis', NULL),
	(211, '1121600032', 'Niaza One', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis', NULL),
	(212, '1511405205', 'Bangun Raharjo', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(213, '1121600040', 'Dwi Cahya Lestari', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis', NULL),
	(214, '1121600012', 'Erikha Julia Kartikasari', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis', NULL),
	(215, '1121600036', 'Nur Aulia R', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis', NULL),
	(216, '1121600078', 'Febbi N', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis', NULL),
	(217, '1121600035', 'Veryda Ayu', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis', NULL),
	(218, '1511405179', 'Tejananto Kurniawan', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(219, '218', 'CHA', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(220, '1221408718', 'Eka Agustiningsih', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(221, '1511404978', 'R. Aziz Normansyah Wijaya', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(222, '221', 'NMSN', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(223, '1151501244', 'Theresia Ine Sintya Sidi', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', NULL),
	(224, '1151501277', 'Alfi Febriana', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', NULL),
	(225, '1151700272', 'Dhia Prabatasari Boymau', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', NULL),
	(226, '1151700200', 'Alifah Dinda Putri Septyani', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', NULL),
	(227, '1151700217', 'Yana Ekarina Tali', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', NULL),
	(228, '1511505394', 'Ana Lailatul M', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(229, '1511505442', 'Rr. Astriet Puspitasari C', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(230, '1511505375', 'Nurul Qomariah', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(231, '1511505269', 'Metha Apri Bella', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(232, '1511505423', 'Franssyah Loudriyan Andre Yulianto', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(233, '1511505457', 'Ratna Rachmadani', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(234, '1511505283', 'Yuniar Pramadhita', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(235, '1511505376', 'Dina Azzahra', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(236, '1511405051', 'Aminatus Zahroh', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(237, '1511405063', 'Lisa Purnamasari', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(238, '1211508893', 'Mita Diana Sari', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(239, '1211508900', 'Misbahul Mudiyah', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(240, '1211508854', 'Hafina', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(241, '1511405022', 'Nurul Dwi Komariyah', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(242, '1511405084', 'Putri Kumaladewi Abdullah', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(243, '1461404691', 'Albertus Ferriyan S', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(244, '1461404826', 'Henry Indra Wardhana', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(245, '1461404805', 'Rahmat Abdul Ghaffar', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(246, '1461404810', 'Verry Alan Dwi Prastyo', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(247, '1461404812', 'Muhammad Abdul Aziz', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(248, '1461404574', 'Muzayyanah', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(249, '1461404610', 'Rendy Ari Sandy', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(250, '1461404714', 'Rastha Himawan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(251, '1461404777', 'Andy Setianto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(252, '1461404771', 'Dewa Gede A M', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(253, '1461404785', 'Mufti Chabib Mubarok', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(254, '1461404789', 'Ali Aridho', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(255, '1461404792', 'Devi Anggraeni', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(256, '1461404791', 'Muhammad Argadinata F', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(257, '1461404795', 'Hugo Sanca R', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(258, '1461404861', 'B\'tary Agatha Meidy', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(259, '1461404865', 'Muvi Delvin Suraida', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(260, '1461404876', 'Ade Oktaviani', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(261, '1461404888', 'Widia Risthi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(262, '1461404764', 'Siti Magfiroh ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(263, '1461404760', 'Edo Halim Perdana', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(264, '1461404733', 'Bimo Prakoso', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(265, '1461404755', 'Yusuf Putra Anugrah', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(266, '1461404797', 'Bevi Firman Dito', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(267, '1461404842', 'Reynaldi Ariston Oki', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(268, '1461404847', 'Achmad Riza Ferdianto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(269, '1461404849', 'Duwi Hariono ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(270, '1461404852', 'Nendi Candra Putra', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(271, '1461404850', 'Raden Ilham Wahdani Saputra', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(272, '1461404862', 'Samudra Proviano', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(273, '1461404864', 'Okki Dwi Syahrizal', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(274, '1461404875', 'Muhammad Syaiful Arif', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(275, '1461404813', 'Fatrurozi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(276, '1461404825', 'Rizky Puji Trianto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(277, '1461404831', 'Rizki Fajar', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(278, '1461404833', 'Maulana Azizir', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(279, '1461404837', 'Wahyu Setiono', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(280, '1464104884', 'Muhammad Ridho', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(281, '1461404903', 'Yatim Rahman', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(282, '1461404927', 'Misbach Surury', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(283, '1461404953', 'Awang Bagus Permadi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(284, '1461404968', 'Sena Aji Putra', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(285, '1221408951', 'Titik Pujiyanti', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(286, '1431402716', 'Nur Alamsyah Firdaus', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Sipil', NULL),
	(287, '441301879', 'Muhammad Marzuki ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Arsitektur', NULL),
	(288, '1211408226', 'Yuli Dini Ayu Sintia', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(289, '1211408223', 'Rosa Claudia Rosidi', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(290, '1211408657', 'Arya Bagus Wicaksono', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(291, '421304297', 'Bangkit Suryo Prayogo', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Mesin', NULL),
	(292, '1221408665', 'Sischa Putri utami', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(293, '1511405166', 'Lia Fatma Yunita', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi', NULL),
	(294, '1461404910', 'Pratiwi Aulia', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(295, '1431402781', 'Moh. Khafids Amrullah R', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Sipil', NULL),
	(296, '1431402723', 'Abid Hamdan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Sipil', NULL),
	(297, '11656', 'Adhetia Teddy Bujana', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(298, '11727', 'Fandya Priyandra Zahran', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(299, '11650', 'Achmad Ghozy A B', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(300, '11674', 'Amelya Suci Ramadhani', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(301, '11689', 'Azalia Azhari Nova', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(302, '11661', 'Afrillia Nindy Olyviasyah', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(303, '11855', 'Yesinta', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(304, '11730', 'Fitri Astutik', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(305, '11700', 'Dondi Tri Cahyo', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(306, '11725', 'Eunke Emmanuela B', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(307, '11601', 'Rizki Mulyadi', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(308, '11531', 'Isbat', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(309, '11485', 'Dhea Nanda Safira', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(310, '11513', 'Febriani Puspitasari', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(311, '11486', 'Dheajeng Putri Ayu', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(312, '11562', 'Nabila Purwita Anggraini', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(313, '11488', 'Dilla Andisyah F', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(314, '11432', 'A Cantika P', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(315, '11449', 'Arlin Khodinaud D', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(316, '11461', 'Berania Nanda S', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(317, '11644', 'Zaisa Della', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(318, '11573', 'Nur Aida Safitri', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(319, '11474', 'Conny Larung I', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(320, '11571', 'Nindya Kirana Rahma N', 'SMA 17 Agustus 1945 Surabaya', 'IPS', NULL),
	(321, '1915', 'Demas Reinaldy', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada', NULL),
	(322, '1895', 'Alvito Dimas W', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada', NULL),
	(323, '3', 'Ahmad Ridza Abdillah', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada', NULL),
	(324, '1898', 'Anugrah Cada K', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada', NULL),
	(325, '1919', 'Vio Hadi', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada', NULL),
	(326, '6', 'Aurellia Elsha Yolandha', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada', NULL),
	(327, '7', 'Dina Kamelia', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada', NULL),
	(328, '8', 'Al Alimu Nur Rohman ', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada', NULL),
	(329, '1891', 'Ahmad Nizar', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada', NULL),
	(330, '1896', 'Asti Nabilah', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada', NULL),
	(331, '1894', 'Aliefya Shalfadillah', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada', NULL),
	(332, '01', 'Latifah', 'Universitas 17 Agustus 1945 Surabaya', 'BSI', NULL),
	(333, '02', 'Dwi', 'Universitas 17 Agustus 1945 Surabaya', 'BSI', NULL),
	(334, '03', 'Kusnan', 'Universitas 17 Agustus 1945 Surabaya', 'BSI', NULL),
	(335, '04', 'Ika Lestari', 'Universitas 17 Agustus 1945 Surabaya', 'BSI', NULL),
	(336, '05', 'Aris', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(337, '06', 'Reny', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(338, '20460170736', 'Puteri Noraisya Primandari', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(339, '20460160702', 'Dwi Harini', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(340, '20460160708', 'Elsen Ronaldo', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(341, '145529', 'Dodi Krisnawan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(342, '20450020554', 'Anton Breva Yunanda', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(343, '20410960490', 'Muhammad Sidqon', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(344, '1461404793', 'Rizkyadi Saputra', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(345, '1461505278', 'Nur Mazuwinas Riana', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(346, '1221509174', 'Maskinah Amalia', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(347, '1441700084', 'Adella Libraneta Santoso Putri', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Arsitektur', NULL),
	(348, '1441700100', 'Difa\' Azizah', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Arsitektur', NULL),
	(349, '1211408217', 'Rizky Utama Putra', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(350, '1211408081', 'Purwati', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(351, '1211408191', 'Eva Aprilya', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(352, '1211408209', 'Erwin Nur Purwadi', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(353, '1231403149', 'Ade Setya Sutanto', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan', NULL),
	(354, '1231503262', 'Bachtiar Kurniawan', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan', NULL),
	(355, '1461505287', 'Engelbertus S.L. Djaminta', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(356, '1461505298', 'Yeremia Sembiring', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(357, '1461505143', 'Fortiaman Zai', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(358, '1461404923', 'Mohammad Yazed Arrofiqi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(359, '1461600053', 'Iqbal Musyaffa Syraifuddin', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(360, '1461600065', 'Setiazi Fanani', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(361, '1461600066', 'Nurdianto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(362, '1461600126', 'Zachfiandhika Giananta M', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(363, '1461600030', 'Aditya Nanda Utama', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(364, '1461600013', 'Wahyu Dirantu', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(365, '1461600255', 'Ginda Tigora R', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(366, '1431402784', 'Hasan Alif Fathurokman', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Sipil', NULL),
	(367, '1431402780', 'Isra Uman Sena Pewa', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Sipil', NULL),
	(368, '1221408651', 'Sinta Kurnia', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(369, '1221408611', 'Dica Ayu Aprilia', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi', NULL),
	(370, '1311401502', 'Ade Rezki G', 'Universitas 17 Agustus 1945 Surabaya', 'Hukum', NULL),
	(371, '1211600180', 'Diva Tri Y R', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen', NULL),
	(372, '1461600067', 'Jeffry Suyanto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(373, '20460150689', 'Enny Indasyah', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(374, '20460110602', 'Supangat', 'Universitas 17 Agustus 1945 Surabaya', 'BSI', NULL),
	(375, '20460160700', 'Aidil Primasetya Armin', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(376, '460802920', 'Bara Alfa', 'Universitas 17 Agustus 1945 Surabaya', 'BSI', NULL),
	(377, '017', 'Gabrielle N R', 'Universitas 17 Agustus 1945 Surabaya', 'BSI', NULL),
	(378, '460802902', 'Eko Halim S', 'Universitas 17 Agustus 1945 Surabaya', 'BSI', NULL),
	(379, '019', 'Agil Rahmadi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika', NULL),
	(380, '20410150688', 'Wiwin Widiasih', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Industri', NULL),
	(381, '021', 'Eka N', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Industri', NULL),
	(382, '022', 'Ando Roland', 'Universitas 17 Agustus 1945 Surabaya', 'Fakultas Teknik', NULL),
	(383, '213160011', 'Haris Maulana F', 'Politeknik 17 Agustus 1945 Surabaya', 'Teknologi Industri Pertanian', NULL),
	(384, '213150004', 'Dwi N R', 'Politeknik 17 Agustus 1945 Surabaya', 'Teknologi Industri Pertanian', NULL),
	(385, '212170009', 'Moch. Rizki Afrizal', 'Politeknik 17 Agustus 1945 Surabaya', 'Teknik Listrik Industri', NULL),
	(386, '212170002', 'Dedi Wahyu Ashari', 'Politeknik 17 Agustus 1945 Surabaya', 'Teknik Listrik Industri', NULL),
	(387, '212170004', 'Dwi Okki A', 'Politeknik 17 Agustus 1945 Surabaya', 'Teknik Listrik Industri', NULL),
	(388, '212170008', 'Gilang Eka Vigo A A', 'Politeknik 17 Agustus 1945 Surabaya', 'Teknik Listrik Industri', NULL),
	(389, '212150012', 'Achmad Irwan', 'Politeknik 17 Agustus 1945 Surabaya', 'Teknik Listrik Industri', NULL),
	(390, '212150001', 'Muhammad Airul Ayyub', 'Politeknik 17 Agustus 1945 Surabaya', 'Teknik Listrik Industri', NULL),
	(391, '212150002', 'Fairuz Riqullah', 'Politeknik 17 Agustus 1945 Surabaya', 'Teknik Listrik Industri', NULL),
	(392, '212150010', 'Dendy Nur Muhammad', 'Politeknik 17 Agustus 1945 Surabaya', 'Teknik Listrik Industri', NULL),
	(393, '212150007', 'Rifda Qurrotu\'ainy', 'Politeknik 17 Agustus 1945 Surabaya', 'Teknik Listrik Industri', NULL);
/*!40000 ALTER TABLE `responden` ENABLE KEYS */;

-- Dumping structure for table kuesioner2.soal
CREATE TABLE IF NOT EXISTS `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_kuesioner` int(11) DEFAULT '0',
  `soal` text,
  `jenis` varchar(50) NOT NULL,
  `aspek` varchar(50) NOT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 COMMENT='''Efficiency'',''Error'',''Satisfaction'',''Learnability'',''Memorability''';

-- Dumping data for table kuesioner2.soal: ~4 rows (approximately)
/*!40000 ALTER TABLE `soal` DISABLE KEYS */;
INSERT INTO `soal` (`id_soal`, `id_kuesioner`, `soal`, `jenis`, `aspek`, `id_jabatan`) VALUES
	(34, 1, 'asdasdasd', 'APO1', 'APO', NULL),
	(35, 1, 'dss', 'DSS1', 'DSS', NULL),
	(36, 1, 'hhgh', 'APO2', 'APO', NULL),
	(37, 2, 'asd ikko', 'APO2', 'DSS', NULL),
	(38, 1, 'asdadasdasd', 'APO2', 'DSS', 1);
/*!40000 ALTER TABLE `soal` ENABLE KEYS */;

-- Dumping structure for table kuesioner2.soal_jabatan
CREATE TABLE IF NOT EXISTS `soal_jabatan` (
  `id_soal_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `id_soal` int(11) DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_soal_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table kuesioner2.soal_jabatan: ~0 rows (approximately)
/*!40000 ALTER TABLE `soal_jabatan` DISABLE KEYS */;
INSERT INTO `soal_jabatan` (`id_soal_jabatan`, `id_soal`, `id_jabatan`) VALUES
	(1, 34, 1);
/*!40000 ALTER TABLE `soal_jabatan` ENABLE KEYS */;

-- Dumping structure for table kuesioner2.struktur
CREATE TABLE IF NOT EXISTS `struktur` (
  `id_struktur` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL DEFAULT '0',
  `nama_struktur` varchar(50) DEFAULT NULL,
  `deskripsi_struktur` text,
  `id_parent` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_struktur`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table kuesioner2.struktur: ~6 rows (approximately)
/*!40000 ALTER TABLE `struktur` DISABLE KEYS */;
INSERT INTO `struktur` (`id_struktur`, `nama`, `nama_struktur`, `deskripsi_struktur`, `id_parent`, `photo`) VALUES
	(1, 'panagt', 'Direktur', '<p>asdasdasd</p>\r\n', NULL, NULL),
	(2, 'anak buah', 'Kabah', NULL, 1, NULL),
	(3, 'anak buah', 'Kabag', NULL, 1, NULL),
	(5, 'anak sayur', 'Kasubah', NULL, 2, NULL),
	(6, 'anak sayud', 'Kasubag', NULL, 3, NULL),
	(7, 'haloo 13', '1312313', '<p>kfskdjfskdfom</p>\r\n', 1, NULL),
	(8, 'asdsd', '24234qwe', '<p>asdasd</p>\r\n', 0, '1544274861Logo-GS2.jpg');
/*!40000 ALTER TABLE `struktur` ENABLE KEYS */;

-- Dumping structure for table kuesioner2.user
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nm_user` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('peserta','admin','kominfo') DEFAULT 'peserta',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table kuesioner2.user: ~3 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id_user`, `nm_user`, `email`, `password`, `role`) VALUES
	(1, 'admin', 'yuhhu', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
	(3, 'asd@gmail.com', 'asd@gmail.com', 'ceedf12f8fe3dc63d35b2567a59b93bd62ff729a', 'peserta'),
	(4, 'info', 'info@gmai.com', 'b32a5c2fac69078c6043b4dc705b964e122f19ab', 'kominfo');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
