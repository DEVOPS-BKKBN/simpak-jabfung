-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Apr 07, 2022 at 12:35 AM
-- Server version: 5.5.57-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bantuan`
--

CREATE TABLE `bantuan` (
  `Hid` int(11) NOT NULL,
  `Judul` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Deskripsi` text COLLATE utf8_unicode_ci,
  `CreationDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bantuan`
--

INSERT INTO `bantuan` (`Hid`, `Judul`, `Deskripsi`, `CreationDate`, `CreatedBy`, `UpdatedDate`, `UpdatedBy`) VALUES
(1, 'METODE PENILAIAN PENYULUHAN DAN NON PENYULUHAN', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2020/04/13/a0039237-57ac-4aea-88c9-1299f3e7e1c9_169.jpeg?w=700&q=80\" alt=\"Ojek online kembali tengah menarik penumpang di kawasan Jakarta Selatan, Senin (13/4/2020). Kementerian Perhubungan mengizinkan ojek online (ojol) untuk kembali mengangkut penumpang wilayah yang menerapkan PSBB.\" title=\"Ojol Boleh Tarik Penumpang Lagi\" class=\"\">  <span>Foto: Grandyos Zafna</span>\r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n\r\n  \r\n  <p><strong>Jakarta</strong> - </p><p>Virus Corona (COVID-19) telah memberikan\r\n dampak buruk ke berbagai sektor usaha, tak terkecuali pada sektor \r\ntransportasi. Banyak pengemudi angkutan umum yang mengalami penurunan \r\npendapatan seperti tukang bajaj, sopir becak, sopir bus, sopir angkot, \r\nhingga driver ojek online (ojol).<br><br>Namun, Pengamat Transportasi \r\nUnivesitas Katolik Soegijapranata (Unika), Djoko Setijowarno menilai \r\nperhatian pemerintah cukup berlebihan kepada driver ojol. Seharusnya, \r\npemerintah bisa adil kepada seluruh profesi pengemudi angkutan umum.<br><br></p><p id=\"vibeInjectorDiv\"><p id=\"_forkInArticleAdContainer\" xss=removed><ins><p id=\"beacon_2158222fa5\" xss=removed><img src=\"https://wtf2.forkcdn.com/www/delivery/lg.php?bannerid=0&campaignid=0&zoneid=4560&loc=https://finance.detik.com/berita-ekonomi-bisnis/d-4978726/banjir-bantuan-ke-abang-ojol-bikin-iri?tag_from=wp_cb_mostPopular_list&_ga=2.1325556.49950026.1586937680-1436476098.1555549582&referer=https://www.detik.com/&cb=2158222fa5\" alt=\"\" xss=removed width=\"0\" height=\"0\"></p></ins></p></p><p>\"Perhatian\r\n pemerintah cukup berlebihan terhadap pengemudi ojek daring. Walaupun \r\ndalam UU No. 22 Tahun 2009 tentang Lalu Lintas dan Angkutan Jalan, ojek \r\nbukan termasuk angkutan umum,\" kata Djoko dalam keterangan tertulis yang\r\n diterima <strong>detikcom</strong>, Rabu (15/4/2020).</p><br><p>Seperti \r\ndiketahui, pemerintah lewat Badan Usaha Milik Negara (BUMN) baru saja \r\nmengeluarkan kebijakan bahwa ojol satu-satunya transportasi yang \r\nmendapatkan promo cashback sebesar 50% untuk pembelian BBM non-subsidi \r\ndi SPBU Pertamina dengan menggunakan aplikasi MyPertamina.</p><br><p>\"Jika \r\npemerintah dan BUMN mau adil, tidak hanya pengemudi ojek daring yang \r\nmendapatkan cash back untuk pembelian BBM atau bentuk bantuan lainnya, \r\nakan tetapi diberikan pula bantuan pada seluruh pengemudi transportasi \r\numum yang lainnya,\" harapnya.</p><br><p>Padahal di balik operasional ojol \r\nada sebuah perusahaan aplikasi yang sudah menyandang status sebagai \r\nperusahaan startup unicorn dengan value triliunan rupiah. Sehingga, \r\nDjoko mempertanyakan mengapa pemerintah masih harus memberikan sesuatu \r\nyang istimewa kepadanya.</p><br><p>Meski pendapatan berkurang, Djoko \r\nbilang, driver ojol masih punya peluang mendapat penghasilan dari \r\nmengantar barang. Ditambah Kementerian Pertanian yang telah menggandeng \r\naplikator untuk driver ojol mengantar pembelian sembako. Lain halnya \r\ndengan angkutan umum lain, sebut saja sopir bajaj.</p><br><p>\"Angkutan roda\r\n tiga seperti bajaj sebagai salah satu moda angkutan umum beroperasi di \r\nJakarta sudah tidak diperhatikan keberadaannya. Sudah wilayah operasinya\r\n dibatasi, tambah semakin terpuruk di saat ojek daring muncul dengan \r\nwilayah operasi tanpa batas. Angkutan bajaj dibiarkan beroperasi tapa \r\nperlindungan, meski sebagai angkutan umum yang legal,\" urainya.</p><br><p>Djoko berharap, pemerintah bisa lebih adil memberi bantuan untuk seluruh angkutan umum.</p><br><p>\"Negara ini sedang dirundung duka janganlah lagi ditambah masalah akibat ketidakadilan itu,\" ucapnya.</p>', '2020-04-16 06:02:59', 'admin', NULL, NULL),
(2, 'TIDAK BEKERJA KARENA SAKIT ATAU KELUARGA SAKIT', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2018/11/06/862f4735-2c42-42a5-88cf-62678af3188f_169.jpeg?w=700&q=80\" alt=\"Pengangguran\" title=\"Pengangguran\" class=\"\">  <span>Foto: Fuad Hasim</span>\r\n \r\n\r\n\r\n\r\n<ins data-labelname=\"inbetweenimages\" data-revive-zoneid=\"1630\" data-revive-id=\"0cceecb9cae9f51a31123c541910d59b\" data-revive-seq=\"4\" id=\"revive-0-4\" data-revive-loaded=\"1\" xss=removed><p id=\"beacon_0f9258df47\" xss=removed><img src=\"https://newrevive.detik.com/delivery/lg.php?bannerid=6707&campaignid=1323&zoneid=1630&loc=https://finance.detik.com/berita-ekonomi-bisnis/d-4978634/pemerintah-bisa-lakukan-ini-demi-cegah-ledakan-pengangguran&referer=https://finance.detik.com/&cb=0f9258df47\" alt=\"\" xss=removed width=\"0\" height=\"0\"></p></ins>\r\n\r\n\r\n\r\n    \r\n\r\n    \r\n\r\n        \r\n        <p><strong>Jakarta</strong> - </p><p>Indonesia dikhawatirkan akan menemui gelombang Pemutusan Hubungan Kerja (PHK) bila tak sigap menyelesaikan pandemi <a href=\"https://www.detik.com/tag/virus-corona\">virus Corona</a>\r\n (COVID-19). Menurut Center of Reform on Economic (CORE) Indonesia, \r\npeningkatan jumlah pengangguran terbuka akan terjadi pada triwulan \r\nII-2020 mendatang. Untuk skenario terburuk, jumlahnya bisa mencapai 9,35\r\n juta pengangguran.<br><br>Lalu, sudah tepat kah kebijakan yang dilakukan pemerintah selama ini untuk mencegah gelombang PHK itu terjadi?<br></p><p id=\"vibeInjectorDiv\"><p id=\"_forkInArticleAdContainer\" xss=removed><ins><p id=\"beacon_14c995bfd8\" xss=removed><img src=\"https://wtf2.forkcdn.com/www/delivery/lg.php?bannerid=0&campaignid=0&zoneid=4560&loc=https://finance.detik.com/berita-ekonomi-bisnis/d-4978634/pemerintah-bisa-lakukan-ini-demi-cegah-ledakan-pengangguran&referer=https://finance.detik.com/&cb=14c995bfd8\" alt=\"\" xss=removed width=\"0\" height=\"0\"></p></ins></p></p><br><p>Ekonom\r\n CORE Indonesia Muhammad Ishak Razak menyampaikan apresiasinya atas \r\nsegala kebijakan yang telah diupayakan pemerintah. Akan tetapi, \r\npemerintah diimbau untuk dapat memperbesar intervensi stimulus \r\nekonominya demi menekan dampak COVID-19 tersebut.</p><br><p>\"CORE Indonesia\r\n mengapresiasi Pemerintah Indonesia yang telah mengambil langkah-langkah\r\n untuk menghambat penyebaran pandemi dan juga mengambil \r\nkebijakan-kebijakan untuk membantu ekonomi masyarakat yang terdampak, \r\nmemberikan insentif dunia usaha, serta meningkatkan stimulus terhadap \r\nekonomi makro. Di saat konsumsi swasta, investasi, dan ekspor anjlok, \r\nbelanja pemerintah saat ini menjadi faktor utama yang dapat mendorong \r\npergerakan ekonomi riil. Namun, semakin besar intervensi pemerintah, \r\nmaka tekanan ekonomi akibat pandemi COVID-19 dapat diminimalkan,\" kata \r\nRazak dalam rilis resminya yang diterima detikcom, Rabu (15/4/2020).</p><table class=\"linksisip\"><tbody><tr><td><p class=\"lihatjg\"><strong>Baca juga: </strong><a data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\" href=\"https://finance.detik.com/read/2020/04/15/005532/4977347/4/pengangguran-dan-kemiskinan-ri-bakal-melonjak-lagi-lagi-gegara-corona\">Pengangguran dan Kemiskinan RI Bakal Melonjak, Lagi-lagi Gegara Corona</a></p></td></tr></tbody></table><p>Kebijakan-kebijakan\r\n yang telah dikeluarkan pemerintah terkait pandemi ini dinilai perlu \r\nuntuk dioptimalkan agar kemudian dampaknya tepat sasaran. Salah satu \r\ncara mengoptimalkan stimulus-stimulus yang ada ialah dengan cara \r\nmempercepat distribusi bantuan sosial dan secara simultan melengkapi \r\ndata penerima dengan memadukan data pemerintah dan data masyarakat.</p><p>Idealnya intervensi pemerintah setidaknya harus tepat sasaran, tepat waktu, tepat jumlah, dan tepat bentuknya.</p>\r\n\r\n<p class=\"parallax_detail parallaxB\" xss=removed>\r\n<p class=\"parallax_abs\" xss=removed>\r\n<p class=\"parallax_fix\" xss=removed>\r\n<p class=\"parallax_ads\" xss=removed>\r\n\r\n<p id=\"div-gpt-ad-1572509250005-0\">\r\n  \r\n</p>\r\n</p>\r\n</p>\r\n</p>\r\n</p><p>Artinya, intervensi tersebut membutuhkan data yang akurat. \r\nNamun dalam kondisi saat ini, pemerintah tidak dapat menunda terlalu \r\nlama distribusi bantuan sosial dengan alasan data yang kurang lengkap.<br><br>\"Proses\r\n peningkatan kualitas data dapat berjalan seiring dengan pelaksanaan \r\ndistribusi bantuan. Kemelut ekonomi saat ini juga menjadi peluang \r\npemerintah untuk memperbaiki data penduduk berdasarkan status ekonomi \r\ndan pekerjaan mereka secara lebih lengkap sehingga program-program \r\nsosial pemerintah dapat lebih tepat sasaran,\" sambungnya.<br><br>Selain \r\nitu, penting juga untuk mengintegrasikan data pengangguran dan penerima \r\nbantuan sosial yang selama ini dimiliki dari berbagai lembaga pemerintah\r\n dan non-pemerintah.</p><p>Mulai dari Kementerian Sosial, BPJS \r\nKesehatan, BPJS Ketenagakerjaan, Dinas Ketenagakerjaan dan Transmigrasi,\r\n lembaga administrasi pemerintah hingga tingkat desa/kelurahan, hingga \r\nlembaga masyarakat khususnya RT dan RW termasuk asosiasi-asosiasi tenaga\r\n kerja.<br><br>\"Pemerintah, misalnya, dapat memanfaatkan data Kartu \r\nIndonesia Sehat (KIS) yang dimiliki BPJS Kesehatan sebanyak 96,8 juta \r\npenerima yang sebagian datanya telah memiliki nama dan alamat. Meskipun \r\ndemikian, pemerintah harus membuka peluang upgrading data berdasarkan \r\ninformasi dari lembaga pemerintah dan masyarakat di tingkat bawah,\" \r\nimbuhnya.</p><table class=\"linksisip\"><tbody><tr><td><p class=\"lihatjg\"><strong>Baca juga: </strong><a data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\" href=\"https://tv.detik.com/readvideo/2020/04/14/151132/200414048/160106442/badai-corona-hantam-ri-sri-mulyani-prediksi-skenario-terburuk-\">Badai Corona Hantam RI, Sri Mulyani Prediksi Skenario Terburuk</a></p></td></tr></tbody></table><p>Selanjutnya,\r\n menyesuaikan skema bantuan Kartu Pra-Kerja dengan memprioritaskan \r\npengangguran yang tidak mampu, khususnya yang terkena dampak COVID-19, \r\ndengan tujuan untuk memenuhi kebutuhan dasar mereka. Paket pelatihan \r\nsenilai satu juta rupiah yang mengalir kepada penyelenggara pelatihan \r\nyang satu paket dengan insentif pelatihan dan biaya survei masing-masing\r\n Rp 600 ribu dan Rp 150 ribu, perlu ditinjau ulang pada masa pandemi \r\nini.<br><br>Alasannya, peningkatan jumlah pengangguran saat ini terjadi \r\nakibat turunnya permintaan tenaga kerja karena perlambatan ekonomi \r\n(demand shock), dan bukan akibat persoalan kualitas supply tenaga kerja \r\nsehingga membutuhkan peningkatan skill.<br><br>\"Program Kartu Pra-Kerja \r\njuga dapat menjadi basis untuk membenahi data pengangguran sehingga \r\ndapat dijadikan sebagai basis data pengangguran yang real time, yang \r\ndapat menjadi basis kebijakan-kebijakan di bidang ketenagakerjaan, \r\nseperti memberikan sejenis unemployment benefit baik berbentuk bantuan \r\nuntuk mendapatkan pekerjaan. Apalagi sasaran Kartu Pra-Kerja sebanyak \r\n5,6 juta orang, setara dengan 80% angka pengangguran yang mencapai 7 \r\njuta orang,\" tambahnya.<br><br>Kemudian, mendorong kepada dunia usaha \r\nmelalui pemberian insentif agar mereka mengoptimalkan \r\nalternatif-alternatif untuk mempertahankan tenaga kerja mereka \r\ndibandingkan dengan PHK. Beberapa alternatif tersebut di antaranya \r\npengurangan jam kerja dan hari kerja, pengurangan shift dan lembur, \r\nhingga pemotongan gaji, dan penundaan pembayaran tunjangan dan insentif.</p><p>Kepada\r\n dunia usaha yang bersedia melakukan hal tersebut, pemerintah perlu \r\nmemberikan insentif yang lebih besar,seperti penurunan tarif listrik \r\nuntuk bisnis dan industri, penurunan tarif gas industri, pemberian \r\ndiskon tarif pajak, dan penundaan pembayaran cicilan pajak.<br><br>\"Dalam\r\n menerapkan solusi ini, pemerintah harus melibatkan pihak pengusaha dan \r\nserikat buruh sehingga solusi yang diambil dapat diterima kedua belah \r\npihak,\" tuturnya.<br><br>Terakhir, mengoptimalkan bantuan sosial yang \r\nberdampak lebih besar terhadap ekonomi masyarakat. Selain memberikan \r\nbantuan dalam bentuk barang (in-kind)yang terkena Pembatasan Sosial \r\nBerskala Besar (PSBB), idealnya bantuan-bantuan sosial yang diberikan \r\npemerintah di luar PSBB adalah dalam bentuk uang yang penyalurannya \r\nlebih efisien dibandingkan dengan in-kind.<br><br>Alasannya, bantuan \r\ndalam bentuk uang dapat disalurkan melalui lembaga keuangan bank dan \r\nnon-bank, atau lembaga-lembaga yang dapat memfasilitasi transaksi \r\nkeuangan seperti PT Pos dan sebagainya.<br><br>\"Di samping itu, \r\ndibandingkan barang, transfer dalam bentuk uang tersebut memberikan \r\npilihan yang lebih besar kepada penerima sesuai dengan kebutuhan mereka,\r\n dan memberikan dampak multiplier yang lebih besar dalam menggerakkan \r\nekonomi masyarakat,\" tutupnya.</p>', '2020-04-16 06:05:42', 'admin', NULL, NULL),
(3, 'TIDAK BISA LOGIN DI EVISUM', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2018/03/14/79ebee51-9a4b-4e81-b301-d5d47a26c53f_169.jpeg?w=700&q=80\" alt=\"Illustrasi Rupiah Terhimpit Dollar\" title=\"Illustrasi Rupiah Terhimpit Dollar\" class=\"\">  <span>Foto: Rachman Haryanto</span>\r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n    \r\n\r\n  \r\n  <p><strong>Jakarta</strong> - </p><p>Bank Indonesia (BI) mencatat utang luar \r\nnegeri (ULN) Indonesia Februari 2020 sebesar US$ 407,5 miliar atau \r\nsekitar Rp 6.316 triliun (kurs Rp 15.500).<br><br>ULN ini terdiri dari \r\nsektor publik (pemerintah dan bank sentral) sebesar US$ 203,3 miliar Rp \r\n3.151 triliun dan ULN swasta termasuk BUMN US$ 204,2 miliar Rp 3.165 \r\ntriliun. <br><br></p><p id=\"vibeInjectorDiv\"><p id=\"_forkInArticleAdContainer\" xss=removed><ins><p id=\"beacon_a45ee967c4\" xss=removed><img src=\"https://wtf2.forkcdn.com/www/delivery/lg.php?bannerid=0&campaignid=0&zoneid=4560&loc=https://finance.detik.com/berita-ekonomi-bisnis/d-4977639/bertambah-5-utang-luar-negeri-ri-tembus-rp-6300-t&referer=https://finance.detik.com/berita-ekonomi-bisnis/d-4978664/daftar-kartu-pra-kerja-30-menit-utang-luar-negeri-tembus-rp-6300-t&cb=a45ee967c4\" alt=\"\" xss=removed width=\"0\" height=\"0\"></p></ins></p></p><p>\"ULN\r\n Indonesia tumbuh 5,4% melambat dibandingkan pertumbuhan bulan \r\nsebelumnya 7,6%. Perkembangan tersebut terutama didorong oleh \r\nperlambatan ULN publik,\" tulis keterangan resmi BI, Rabu (15/4/2020).</p><br><p>Secara\r\n rinci ULN pemerintah di luar bank sentral tercatat US$ 200,6 miliar \r\natau tumbuh 5,1% lebih rendah dari pertumbuhan bulan lalu 9,5%. \r\nPenurunan ULN pemerintah dipengaruhi sentimen global sebagai dampak \r\npandemi COVID-19 yang meluas sehingga mendorong arus modal keluar dari \r\npasar surat berharga negara (SBN) domestik. </p><br><p>ULN Pemerintah \r\ntersebut dikelola secara hati-hati dan kredibel guna mendukung belanja \r\nPemerintah pada sektor prioritas dalam upaya mendorong pertumbuhan \r\nekonomi dan peningkatan kesejahteraan masyarakat. </p><br><p>Sektor \r\nprioritas tersebut meliputi sektor jasa kesehatan dan kegiatan sosial \r\n(23,4', '2020-04-16 06:11:11', 'admin', NULL, NULL),
(4, 'METODE PENILAIAN PENYULUHAN DAN NON PENYULUHAN ', '<p>Sesuai dalam Panduan E-Visum dan Peraturan Kepala BKKBN Nomor 22 Tahun \r\n2017 tentang Pembayaran Tunjangan Kinerja Penyuluh KB/Petugas Lapangan \r\nKB. Indikator yang menjadi dasar dalam perhitungan kinerja Penyuluh \r\nKB/Petugas Lapangan KB adalah Penyuluhan dan Non Penyuluhan. Penyuluhan \r\nmemiliki bobot Penilaian 40', '2020-05-02 16:13:25', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `hid` int(11) NOT NULL,
  `pemohon_hid` int(11) DEFAULT NULL,
  `dupak_hid` int(11) DEFAULT NULL,
  `dokumen_hid` int(11) DEFAULT NULL,
  `dokumen_name` varchar(145) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `status_approval` int(11) DEFAULT NULL,
  `notes_approval` varchar(145) DEFAULT NULL,
  `jenis` varchar(45) DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  `updatedby` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`hid`, `pemohon_hid`, `dupak_hid`, `dokumen_hid`, `dokumen_name`, `file_name`, `status_approval`, `notes_approval`, `jenis`, `creationdate`, `createdby`, `updateddate`, `updatedby`) VALUES
(2, 1, 1, 1, '', '198705052009011001_Screenshot2022-02-18124816.jpg', NULL, NULL, 'administrasi', '2022-04-06 12:17:36', '198705052009011001', '2022-04-07 03:15:13', '198705052009011001'),
(3, 1, 2, 2, '', '198705052009011001_yW90zLm0CvJPtx4Ae2XJRxAi43j4fr.jpg', NULL, NULL, 'pak', '2022-04-07 03:17:55', '198705052009011001', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dupak`
--

CREATE TABLE `dupak` (
  `hid` int(11) NOT NULL,
  `pemohon_id` int(11) DEFAULT NULL,
  `kegiatan_id` int(11) DEFAULT NULL,
  `ak_lama` double DEFAULT NULL,
  `ak_baru` double DEFAULT NULL,
  `total_ak` double DEFAULT NULL,
  `dokumen` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isnilai` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sumber` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `createdby` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  `updatedby` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `penilaiandate` datetime DEFAULT NULL,
  `penilaianby` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dupak`
--

INSERT INTO `dupak` (`hid`, `pemohon_id`, `kegiatan_id`, `ak_lama`, `ak_baru`, `total_ak`, `dokumen`, `isnilai`, `status`, `sumber`, `keterangan`, `creationdate`, `createdby`, `updateddate`, `updatedby`, `penilaiandate`, `penilaianby`) VALUES
(1, 1, 1, 0, 0, 0, NULL, NULL, 0, NULL, NULL, '2022-04-07 04:20:01', '198705052009011001', '2022-04-07 04:27:16', '198705052009011001', NULL, NULL),
(2, 1, 2, 3.12, 4.56, 7.68, NULL, NULL, 0, NULL, NULL, '2022-04-07 04:20:01', '198705052009011001', '2022-04-07 04:27:16', '198705052009011001', NULL, NULL),
(3, 1, 3, 0, 0, 0, NULL, NULL, 0, NULL, NULL, '2022-04-07 04:20:01', '198705052009011001', '2022-04-07 04:27:16', '198705052009011001', NULL, NULL),
(4, 1, 4, 0, 0, 0, NULL, NULL, 0, NULL, NULL, '2022-04-07 04:20:01', '198705052009011001', '2022-04-07 04:27:16', '198705052009011001', NULL, NULL),
(5, 1, 5, 0, 0, 0, NULL, NULL, 0, NULL, NULL, '2022-04-07 04:20:01', '198705052009011001', '2022-04-07 04:27:16', '198705052009011001', NULL, NULL),
(6, 1, 6, 1.234, 2.34, 3.574, NULL, NULL, 0, NULL, NULL, '2022-04-07 04:20:01', '198705052009011001', '2022-04-07 04:27:16', '198705052009011001', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `hid` int(11) NOT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `tgl2` date DEFAULT NULL,
  `unsur` varchar(245) DEFAULT NULL,
  `lama` double DEFAULT NULL,
  `baru` double DEFAULT NULL,
  `ttl` double DEFAULT NULL,
  `kdjab` varchar(45) DEFAULT NULL,
  `kat` varchar(45) DEFAULT NULL,
  `unsur_lines` varchar(45) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `hid` int(11) NOT NULL,
  `kode_jab` varchar(45) DEFAULT NULL,
  `jabatan` varchar(245) DEFAULT NULL,
  `jenis_jab` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`hid`, `kode_jab`, `jabatan`, `jenis_jab`) VALUES
(1, 'FT', 'Analis Kebijakan Ahli Muda', 'FT'),
(2, 'JFT01001', 'Analis Kepegawaian Ahli Utama', 'FT'),
(3, 'JFT01002', 'Analis Kepegawaian Ahli Madya', 'FT'),
(4, 'JFT01003', 'Analis Kepegawaian Ahli Muda', 'FT'),
(5, 'JFT01004', 'Analis Kepegawaian Ahli Pertama', 'FT'),
(6, 'JFT01005', 'Analis Kepegawaian Penyelia', 'FT'),
(7, 'JFT01006', 'Analis Kepegawaian Mahir', 'FT'),
(8, 'JFT01007', 'Analis Kepegawaian Terampil ', 'FT'),
(9, 'JFT02001', 'Arsiparis Ahli Utama', 'FT'),
(10, 'JFT02002', 'Arsiparis Ahli Madya', 'FT'),
(11, 'JFT02003', 'Arsiparis Ahli Muda', 'FT'),
(12, 'JFT02004', 'Arsiparis Ahli Pertama', 'FT'),
(13, 'JFT02005', 'Arsiparis Penyelia', 'FT'),
(14, 'JFT02006', 'Arsiparis Mahir', 'FT'),
(15, 'JFT02007', 'Arsiparis Terampil', 'FT'),
(16, 'JFT03001', 'Auditor Ahli Utama', 'FT'),
(17, 'JFT03002', 'Auditor Ahli Madya', 'FT'),
(18, 'JFT03003', 'Auditor Ahli Muda', 'FT'),
(19, 'JFT03004', 'Auditor Ahli Pertama', 'FT'),
(20, 'JFT03005', 'Auditor Penyelia', 'FT'),
(21, 'JFT03006', 'Auditor Mahir', 'FT'),
(22, 'JFT03007', 'Auditor Terampil', 'FT'),
(23, 'JFT04001', 'Peneliti Ahli Utama', 'FT'),
(24, 'JFT04002', 'Peneliti Ahli Madya', 'FT'),
(25, 'JFT04003', 'Peneliti Ahli Muda', 'FT'),
(26, 'JFT04004', 'Peneliti Ahli Pertama', 'FT'),
(27, 'JFT04005', 'Pranata Humas Penyelia', 'FT'),
(28, 'JFT04006', 'Pranata Humas Mahir', 'FT'),
(29, 'JFT04007', 'Pranata Humas Terampil', 'FT'),
(30, 'JFT04008', 'Pranata Humas Pelaksana Pemula', 'FT'),
(31, 'JFT05001', 'Pranata Komputer Ahli Utama', 'FT'),
(32, 'JFT05002', 'Pranata Komputer Ahli Madya', 'FT'),
(33, 'JFT05003', 'Pranata Komputer Ahli Muda', 'FT'),
(34, 'JFT05004', 'Pranata Komputer Ahli Pertama', 'FT'),
(35, 'JFT05005', 'Pranata Komputer Penyelia', 'FT'),
(36, 'JFT05006', 'Pranata Komputer Mahir', 'FT'),
(37, 'JFT05007', 'Pranata Komputer Terampil', 'FT'),
(38, 'JFT05008', 'Pranata Komputer Pelaksana Pemula', 'FT'),
(39, 'JFT06001', 'Pustakawan Ahli Utama', 'FT'),
(40, 'JFT06002', 'Pustakawan Ahli Madya', 'FT'),
(41, 'JFT06003', 'Pustakawan Ahli Muda', 'FT'),
(42, 'JFT06004', 'Pustakawan Ahli Pertama', 'FT'),
(43, 'JFT06005', 'Pustakawan Penyelia', 'FT'),
(44, 'JFT06006', 'Pustakawan Mahir', 'FT'),
(45, 'JFT06007', 'Pustakawan Terampil', 'FT'),
(46, 'JFT07001', 'Statistisi Ahli Utama', 'FT'),
(47, 'JFT07002', 'Statistisi Ahli Madya', 'FT'),
(48, 'JFT07003', 'Statistisi Ahli Muda', 'FT'),
(49, 'JFT07004', 'Statistisi Ahli Pertama', 'FT'),
(50, 'JFT07005', 'Statistisi Penyelia', 'FT'),
(51, 'JFT07006', 'Statistisi Mahir', 'FT'),
(52, 'JFT07007', 'Statistisi Terampil', 'FT'),
(53, 'JFT08001', 'Widyaiswara Ahli Utama', 'FT'),
(54, 'JFT08002', 'Widyaiswara Ahli Madya', 'FT'),
(55, 'JFT08003', 'Widyaiswara Ahli Muda', 'FT'),
(56, 'JFT08004', 'Widyaiswara Ahli Pertama', 'FT'),
(57, 'JFT08008', 'Ajun Widyaiswara', 'FT'),
(58, 'JFT10001', 'Pranata Humas Ahli Utama', 'FT'),
(59, 'JFT10002', 'Pranata Humas Ahli Madya', 'FT'),
(60, 'JFT10003', 'Pranata Humas Ahli Muda', 'FT'),
(61, 'JFT10004', 'Pranata Humas Ahli Pertama', 'FT'),
(62, 'JFT11001', 'Analis Kebijakan Ahli Pertama ', 'FT'),
(63, 'JFT11002', 'Analis Kebijakan Ahli Muda', 'FT'),
(64, 'JFT11003', 'Analis Kebijakan Ahli Madya', 'FT'),
(65, 'JFT11004', 'Analis Kebijakan Ahli Utama', 'FT'),
(66, 'JFT12001', 'Analis Pengelolaan Keuangan APBN Ahli Pertama', 'FT'),
(67, 'JFT12002', 'Analis Pengelolaan Keuangan APBN Ahli Muda', 'FT'),
(68, 'JFT12003', 'Analis Pengelolaan Keuangan APBN Ahli Madya', 'FT'),
(69, 'JFT12004', 'Analis Pengelolaan Keuangan APBN Ahli Utama', 'FT'),
(70, 'JFT13001', 'Analis Anggaran Ahli Pertama', 'FT'),
(71, 'JFT13002', 'Analis Anggaran Ahli Muda ', 'FT'),
(72, 'JFT13003', 'Analis Anggaran Ahli Madya ', 'FT'),
(73, 'JFT13004', 'Analis Anggaran Ahli Utama', 'FT'),
(74, 'JFT14001', 'Penata Ruang Ahli Pertama', 'FT'),
(75, 'JFT14002', 'Penata Ruang Ahli Muda', 'FT'),
(76, 'JFT14003', 'Penata Ruang Ahli Madya', 'FT'),
(77, 'JFT15001', 'Pengelola Pengadaan Barang/Jasa Ahli Pertama', 'FT'),
(78, 'JFT15002', 'Pengelola Pengadaan Barang/Jasa Ahli Muda', 'FT'),
(79, 'JFT15003', 'Pengelola Pengadaan Barang/Jasa Ahli Madya', 'FT'),
(80, 'JFT16001', 'Pengembang Teknologi Pembelajaran Ahli Pertama', 'FT'),
(81, 'JFT16002', 'Pengembang Teknologi Pembelajaran Ahli Muda', 'FT'),
(82, 'JFT16003', 'Pengembang Teknologi Pembelajaran Ahli Madya', 'FT'),
(83, 'JFT16004', 'Pengembang Teknologi Pembelajaran Ahli Utama', 'FT'),
(84, 'JFT17001', 'Perancang Peraturan Perundang-Undangan Ahli Pertama', 'FT'),
(85, 'JFT17002', 'Perancang Peraturan Perundang-Undangan Ahli Muda', 'FT'),
(86, 'JFT17003', 'Perancang Peraturan Perundang-Undangan Ahli Madya', 'FT'),
(87, 'JFT17004', 'Perancang Peraturan Perundang-Undangan Ahli Utama', 'FT'),
(88, 'JFT18001', 'Perencana Ahli Pertama', 'FT'),
(89, 'JFT18002', 'Perencana Ahli Muda', 'FT'),
(90, 'JFT18003', 'Perencana Ahli Madya', 'FT'),
(91, 'JFT18004', 'Perencana Ahli Utama', 'FT'),
(92, 'JFT19007', 'Analis Hukum Ahli Pertama', 'FT'),
(93, 'JFT19008', 'Analis Hukum Ahli Muda', 'FT'),
(94, 'JFT19009', 'Analis Hukum Ahli Madya', 'FT'),
(95, 'JFT19010', 'Analis Pengelolaan Keuangan APBN Ahli Pertama', 'FT'),
(96, 'JFT19011', 'Analis Pengelolaan Keuangan APBN Ahli Muda', 'FT'),
(97, 'JFT19012', 'Analis Pengelolaan Keuangan APBN Ahli Madya', 'FT'),
(98, 'JFT19013', 'Penata Kependudukan dan Keluarga Berencana Ahli Pertama', 'FT'),
(99, 'JFT19014', 'Penata Kependudukan dan Keluarga Berencana Ahli Muda', 'FT'),
(100, 'JFT19015', 'Penata Kependudukan dan Keluarga Berencana Ahli Madya', 'FT'),
(101, 'JFT19016', ' Asesor SDM Aparatur Ahli Pertama', 'FT'),
(102, 'JFT19017', ' Asesor SDM Aparatur Ahli Muda', 'FT'),
(103, 'JFT19018', ' Asesor SDM Aparatur Ahli Madya', 'FT'),
(104, 'JFT19019', 'Calon Asesor SDM Aparatur Ahli', 'FT'),
(105, 'JFT19020', 'Calon Auditor Kepegawaian Ahli', 'FT'),
(106, 'JFT19022', 'Calon Pranata Komputer Ahli', 'FT'),
(107, 'JFT19023', 'Calon Pranata Komputer Terampil', 'FT'),
(108, 'JFT19026', 'Calon Auditor Terampil', 'FT'),
(109, 'JFU09293', 'Auditor Kepegawaian Ahli Pertama', 'FT'),
(110, 'JFU09294', 'Auditor Kepegawaian Ahli Muda', 'FT'),
(111, 'JFU09295', 'Auditor Kepegawaian Ahli Madya', 'FT'),
(112, 'FU', 'Analis Mutasi Pejabat Negara', 'FU'),
(113, 'FU09260', 'Penyusun Bahan Pengembangan Permodalan dan Kemitraan Usaha Ekonomi Keluarga', 'FU'),
(114, 'FUBU0002', 'Analis Pemeliharaan Sarana dan Prasarana', 'FU'),
(115, 'FUBU001', 'Penyusun Bahan Sarana dan Prasarana', 'FU'),
(116, 'JFP00001', 'Analis Parameter Kependudukan', 'FU'),
(117, 'JFP00002', 'Pengadministrasi Bahan Kerjasama Pendidikan Kependudukan', 'FU'),
(118, 'JFP00004', 'Penyusun Bahan Sarana Program Keluarga Berencana', 'FU'),
(119, 'JFP00005', 'Pengadministrasi Alat dan Obat Kontrasepsi', 'FU'),
(120, 'JFU01001', 'Analis Administrasi Jabatan Fungsional', 'FU'),
(121, 'JFU01002', 'Analis Administrasi Pengawasan', 'FU'),
(122, 'JFU01003', 'Analis Administrasi Umum', 'FU'),
(123, 'JFU01004', 'Analis Advokasi', 'FU'),
(124, 'JFU01005', 'Analis Advokasi dan Komunikasi, Informasi dan Edukasi', 'FU'),
(125, 'JFU01006', 'Analis Advokasi, Penggerakan dan Informasi', 'FU'),
(126, 'JFU01007', 'Analis Akuntansi', 'FU'),
(127, 'JFU01008', 'Analis Alat Kontrasepsi', 'FU'),
(128, 'JFU01009', 'Analis Anggaran', 'FU'),
(129, 'JFU01010', 'Analis Arsip dan Dokumentasi', 'FU'),
(130, 'JFU01011', 'Analis Bahan Pelatihan dan Pengembangan', 'FU'),
(131, 'JFU01012', 'Analis Bahan Pelayanan', 'FU'),
(132, 'JFU01013', 'Analis Berita dan Pendapat Umum', 'FU'),
(133, 'JFU01014', 'Analis Bina Keluarga Balita, Anak dan Ketahanan Keluarga Lanjut Usia', 'FU'),
(134, 'JFU01015', 'Analis Bina Keluarga Berencana Klinik Pemerintah', 'FU'),
(135, 'JFU01016', 'Analis Bina Keluarga Berencana Klinik Swasta', 'FU'),
(136, 'JFU01017', 'Analis Bina Keluarga Berencana Rumah Sakit Pemerintah', 'FU'),
(137, 'JFU01018', 'Analis Bina Keluarga Berencana Rumah Sakit Swasta', 'FU'),
(138, 'JFU01019', 'Analis Bina Kesertaan Keluarga Berencana Jalur  dan Sasaran Khusus', 'FU'),
(139, 'JFU01020', 'Analis Bina Kesertaan Keluarga Berencana Jalur Pemerintah dan Swasta', 'FU'),
(140, 'JFU01021', 'Analis Bina Kesertaan Keluarga Berencana Jalur Wilayah dan Sasaran Khusus', 'FU'),
(141, 'JFU01022', 'Analis Bina Ketahanan Balita, Keluarga dan Lansia', 'FU'),
(142, 'JFU01023', 'Analis Bina Ketahanan Keluarga', 'FU'),
(143, 'JFU01024', 'Analis Bina Ketahanan Remaja', 'FU'),
(144, 'JFU01025', 'Analis Daftar Gaji', 'FU'),
(145, 'JFU01026', 'Analis Dampak Ekonomi', 'FU'),
(146, 'JFU01027', 'Analis Dampak Kependudukan', 'FU'),
(147, 'JFU01028', 'Analis Dampak Politik, Pertahanan dan Keamanan', 'FU'),
(148, 'JFU01029', 'Analis Dampak Sosial', 'FU'),
(149, 'JFU01030', 'Analis Data dan Dokumentasi Pegawai', 'FU'),
(150, 'JFU01031', 'Analis Data dan Informasi', 'FU'),
(151, 'JFU01032', 'Analis Data Fasilitasi Pemaduan Kebijakan Kependudukan', 'FU'),
(152, 'JFU01033', 'Analis Data Keluarga', 'FU'),
(153, 'JFU01034', 'Analis Data Kependudukan dan Keluarga Berencana', 'FU'),
(154, 'JFU01035', 'Analis Data Perencanaan', 'FU'),
(155, 'JFU01036', 'Analis Data Profil dan Proyeksi Penduduk', 'FU'),
(156, 'JFU01037', 'Analis Data Program', 'FU'),
(157, 'JFU01038', 'Analis Daya Dukung Lingkungan', 'FU'),
(158, 'JFU01039', 'Analis Daya Tampung Lingkungan', 'FU'),
(159, 'JFU01040', 'Analis Disiplin Pegawai', 'FU'),
(160, 'JFU01041', 'Analis Dokumentasi dan Perpustakaan', 'FU'),
(161, 'JFU01042', 'Analis Dokumentasi Peraturan Perundang-Undangan', 'FU'),
(162, 'JFU01043', 'Analis Ekonomi', 'FU'),
(163, 'JFU01044', 'Analis Evaluasi dan Pelaporan Fasilitasi Pemaduan Kebijakan Kependudukan', 'FU'),
(164, 'JFU01045', 'Analis Evaluasi Barang Milik Negara', 'FU'),
(165, 'JFU01046', 'Analis Evaluasi dan Pelaporan', 'FU'),
(166, 'JFU01047', 'Analis Evaluasi dan Pelaporan Advokasi, Komunikasi, Informasi dan Edukasi', 'FU'),
(167, 'JFU01048', 'Analis Evaluasi dan Pelaporan Analisis Pemaduan Kebijakan Pengendalian Penduduk', 'FU'),
(168, 'JFU01049', 'Analis Evaluasi dan Pelaporan Bina Keluarga Balita dan Anak', 'FU'),
(169, 'JFU01050', 'Analis Evaluasi dan Pelaporan Bina Ketahanan Keluarga Lansia dan Rentan', 'FU'),
(170, 'JFU01051', 'Analis Evaluasi dan Pelaporan Bina Ketahanan Remaja', 'FU'),
(171, 'JFU01052', 'Analis Evaluasi dan Pelaporan Pendidikan dan Pelatihan', 'FU'),
(172, 'JFU01053', 'Analis Evaluasi Data Profil dan Proyeksi Penduduk', 'FU'),
(173, 'JFU01054', 'Analis Evaluasi Kinerja', 'FU'),
(174, 'JFU01055', 'Analis Evaluasi Progam Kelompok Usaha Ekonomi Keluarga', 'FU'),
(175, 'JFU01056', 'Analis Evaluasi Sarana Program', 'FU'),
(176, 'JFU01057', 'Analis Evaluasi Sasaran Parameter Pengendalian Penduduk', 'FU'),
(177, 'JFU01058', 'Analis Evaluasi Sistem Pencatatan dan Pelaporan', 'FU'),
(178, 'JFU01059', 'Analis Hubungan Antar Lembaga', 'FU'),
(179, 'JFU01060', 'Analis Hubungan Antar Lembaga dan Bina Lini Lapangan', 'FU'),
(180, 'JFU01061', 'Analis Hubungan Dengan Lembaga Pemerintah Provinsi', 'FU'),
(181, 'JFU01062', 'Analis Hubungan Dengan Lembaga Pemerintah Pusat', 'FU'),
(182, 'JFU01063', 'Analis Hubungan Kelembagaan', 'FU'),
(183, 'JFU01064', 'Analis Hubungan Masyarakat', 'FU'),
(184, 'JFU01065', 'Analis Hubungan Media Massa', 'FU'),
(185, 'JFU01066', 'Analis Hukum', 'FU'),
(186, 'JFU01067', 'Analis Informasi dan Peningkatan Teknologi Kelompok Usaha Ekonomi Keluarga', 'FU'),
(187, 'JFU01068', 'Analis Institusi dan Peran Serta', 'FU'),
(188, 'JFU01069', 'Analis Institusi Masyarakat Pedesaan', 'FU'),
(189, 'JFU01070', 'Analis Jabatan', 'FU'),
(190, 'JFU01071', 'Analis Jaminan Pelayanan Keluarga Berencana', 'FU'),
(191, 'JFU01072', 'Analis Jaminan Pelayanan Keluarga Berencana Swasta', 'FU'),
(192, 'JFU01073', 'Analis Kebutuhan', 'FU'),
(193, 'JFU01074', 'Analis Kebutuhan Alat Kontrasepsi', 'FU'),
(194, 'JFU01075', 'Analis Kelangsungan Hidup Bayi dan Anak', 'FU'),
(195, 'JFU01076', 'Analis Kelangsungan Hidup Ibu', 'FU'),
(196, 'JFU01077', 'Analis Keluarga Berencana', 'FU'),
(197, 'JFU01078', 'Analis Keluarga Berencana dan Keluarga Sejahtera', 'FU'),
(198, 'JFU01079', 'Analis Kependudukan dan Keluarga Berencana', 'FU'),
(199, 'JFU01081', 'Analis Kerjasama dan Pengembangan', 'FU'),
(200, 'JFU01082', 'Analis Kerjasama Luar Negeri', 'FU'),
(201, 'JFU01083', 'Analis Kerjasama Pendidikan dan Pelatihan', 'FU'),
(202, 'JFU01084', 'Analis Kerjasama Pendidikan Kependudukan', 'FU'),
(203, 'JFU01085', 'Analis Kesehatan Reproduksi Keluarga Sejahtera', 'FU'),
(204, 'JFU01086', 'Analis Kesejahteraan Keluarga', 'FU'),
(205, 'JFU01087', 'Analis Kesejahteraan Pegawai', 'FU'),
(206, 'JFU01088', 'Analis Ketahanan Keluarga', 'FU'),
(207, 'JFU01089', 'Analis Keuangan dan Barang Milik Negara', 'FU'),
(208, 'JFU01090', 'Analis Keuangan dan Pengelolaan Barang Milik Negara', 'FU'),
(209, 'JFU01091', 'Analis Keuangan dan Perbekalan', 'FU'),
(210, 'JFU01092', 'Analis Kompetensi Pegawai', 'FU'),
(211, 'JFU01093', 'Analis Laporan Hasil Pemeriksaan', 'FU'),
(212, 'JFU01094', 'Analis Manajemen Kinerja', 'FU'),
(213, 'JFU01095', 'Analis Manajemen Perkantoran', 'FU'),
(214, 'JFU01096', 'Analis Media Massa', 'FU'),
(215, 'JFU01097', 'Analis Mekanisme Operasional Lini Lapangan', 'FU'),
(216, 'JFU01098', 'Analis Monitoring Bina Keluarga Balita dan Anak', 'FU'),
(217, 'JFU01099', 'Analis Monitoring Bina Keluarga Lansia dan Rentan', 'FU'),
(218, 'JFU01100', 'Analis Monitoring Bina Ketahanan Remaja', 'FU'),
(219, 'JFU01101', 'Analis Monitoring dan Evaluasi Institusi Masyarakat Pedesaan', 'FU'),
(220, 'JFU01102', 'Analis Monitoring dan Evaluasi Jalur Pendidikan Formal', 'FU'),
(221, 'JFU01103', 'Analis Monitoring dan Evaluasi Jalur Pendidikan Non Formal dan Informal', 'FU'),
(222, 'JFU01104', 'Analis Monitoring dan Evaluasi Mekanisme Operasional Lini Lapangan', 'FU'),
(223, 'JFU01105', 'Analis Monitoring dan Evaluasi Pelayanan Keluarga Berencana Pemerintah', 'FU'),
(224, 'JFU01106', 'Analis Monitoring dan Evaluasi Pelayanan Keluarga Berencana Swasta', 'FU'),
(225, 'JFU01107', 'Analis Monitoring dan Evaluasi Sistem Pencatatan dan Pelaporan', 'FU'),
(226, 'JFU01108', 'Analis Monitoring dan Evaluasi Tenaga Lini Lapangan', 'FU'),
(227, 'JFU01109', 'Analis Mutasi Jabatan Pegawai', 'FU'),
(228, 'JFU01110', 'Analis Organisasi', 'FU'),
(229, 'JFU01111', 'Analis Pangkat dan Gaji Pegawai', 'FU'),
(230, 'JFU01112', 'Analis Pelaksanaan Anggaran Keluarga Berencana dan Keluarga Sejahtera', 'FU'),
(231, 'JFU01113', 'Analis Pelaksanaan Anggaran Pengendalian Penduduk', 'FU'),
(232, 'JFU01114', 'Analis Pelaksanaan Anggaran Penunjang', 'FU'),
(233, 'JFU01115', 'Analis Pelaporan dan Statistik', 'FU'),
(234, 'JFU01116', 'Analis Pelatihan dan Pengembangan', 'FU'),
(235, 'JFU01117', 'Analis Pelembagaan Bina Ketahanan Remaja Jalur Masyarakat', 'FU'),
(236, 'JFU01118', 'Analis Pelembagaan Bina Ketahanan Remaja Jalur Pendidikan', 'FU'),
(237, 'JFU01119', 'Analis Pemanfaatan Hasil Penelitian', 'FU'),
(238, 'JFU01120', 'Analis Pemanfaatan Parameter Pengendalian Penduduk', 'FU'),
(239, 'JFU01121', 'Analis Pemanfaatan Profil dan Proyeksi Pengendalian Pendidikan', 'FU'),
(240, 'JFU01122', 'Analis Pemasaran', 'FU'),
(241, 'JFU01123', 'Analis Pembakuan dan Sarana Kerja', 'FU'),
(242, 'JFU01124', 'Analis Pemberdayaan Ekonomi Keluarga', 'FU'),
(243, 'JFU01125', 'Analis Pemberdayaan Ekonomi Keluarga', 'FU'),
(244, 'JFU01126', 'Analis Pemeliharaan Infrastruktur Teknologi Informasi', 'FU'),
(245, 'JFU01127', 'Analis Penanggulangan Infertilitas', 'FU'),
(246, 'JFU01128', 'Analis Penatausahaan Barang Milik Negara', 'FU'),
(247, 'JFU01129', 'Analis Penatausahaan Pengelolaan Sarana Prgram', 'FU'),
(248, 'JFU01130', 'Analis Pencegahan HIV dan AIDS', 'FU'),
(249, 'JFU01131', 'Analis Pencegahan Kanker Alat Reproduksi', 'FU'),
(250, 'JFU01132', 'Analis Pencegahan Penyakit Menular Seksual', 'FU'),
(251, 'JFU01133', 'Analis Pencitraan', 'FU'),
(252, 'JFU01134', 'Analis Pendidikan dan Pelatihan', 'FU'),
(253, 'JFU01135', 'Analis Pendidikan dan Pelatihan Luar Negeri', 'FU'),
(254, 'JFU01136', 'Analis Penelitian dan Pengembangan', 'FU'),
(255, 'JFU01137', 'Analis Penetapan Parameter Kependudukan', 'FU'),
(256, 'JFU01138', 'Analis Penetapan Sasaran Parameter Pengendalian Penduduk', 'FU'),
(257, 'JFU01139', 'Analis Pengadaan Barang', 'FU'),
(258, 'JFU01140', 'Analis Pengangkatan dan Pemberhentian Pegawai', 'FU'),
(259, 'JFU01141', 'Analis Pengelolaan Bank Data', 'FU'),
(260, 'JFU01142', 'Analis Pengelolaan Situs Media Konferensi', 'FU'),
(261, 'JFU01143', 'Analis Pengembangan Admintrasi dan Keuangan Kelompok Usaha Ekonomi Keluarga', 'FU'),
(262, 'JFU01144', 'Analis Pengembangan Akseptor', 'FU'),
(263, 'JFU01145', 'Analis Pengembangan Hubungan Dengan Lembaga Non Pemerintah', 'FU'),
(264, 'JFU01146', 'Analis Pengembangan Hubungan Dengan Lembaga Pemerintah Kabupaten/Kota', 'FU'),
(265, 'JFU01147', 'Analis Pengembangan Indikator Kinerja', 'FU'),
(266, 'JFU01148', 'Analis Pengembangan Infrastruktur TI', 'FU'),
(267, 'JFU01149', 'Analis Pengembangan Institusi Masyarakat Pedesaan', 'FU'),
(268, 'JFU01150', 'Analis Pengembangan Karir Pegawai', 'FU'),
(269, 'JFU01151', 'Analis Pengembangan Kelompok Bina Keluarga Balita dan Anak', 'FU'),
(270, 'JFU01152', 'Analis Pengembangan Kelompok Bina Keluarga Lansia dan Rentan', 'FU'),
(271, 'JFU01153', 'Analis Pengembangan Kemitraan Bina Keluarga Balita dan Anak', 'FU'),
(272, 'JFU01154', 'Analis Pengembangan Kemitran Bina Keluarga Lansia dan Rentan', 'FU'),
(273, 'JFU01155', 'Analis Pengembangan Materi Jalur Pendidikan Formal', 'FU'),
(274, 'JFU01156', 'Analis Pengembangan Materi Jalur Pendidikan Non Formal dan Informal', 'FU'),
(275, 'JFU01157', 'Analis Pengembangan Mekanisme Operasional Lini Lapangan', 'FU'),
(276, 'JFU01158', 'Analis Pengembangan Permodalan dan Kemitraan Kelompok Usaha Ekonomi Keluarga', 'FU'),
(277, 'JFU01159', 'Analis Pengembangan Program Bina Keluarga Anak', 'FU'),
(278, 'JFU01160', 'Analis Pengembangan Program Bina Keluarga Balita', 'FU'),
(279, 'JFU01161', 'Analis Pengembangan Program Bina Ketahanan Keluarga Lansia', 'FU'),
(280, 'JFU01162', 'Analis Pengembangan Program Bina Ketahanan Keluarga Lansia dan Rentan', 'FU'),
(281, 'JFU01163', 'Analis Pengembangan Program Bina Ketahanan Keluarga Rentan', 'FU'),
(282, 'JFU01164', 'Analis Pengembangan Program Bina Ketahanan Remaja Jalur Masyarakat', 'FU'),
(283, 'JFU01165', 'Analis Pengembangan Program Bina Ketahanan Remaja Jalur Pendidikan', 'FU'),
(284, 'JFU01166', 'Analis Pengembangan Sistem Aplikasi', 'FU'),
(285, 'JFU01167', 'Analis Pengembangan Sistem Jalur Pendidikan Formal', 'FU'),
(286, 'JFU01168', 'Analis Pengembangan Sistem Jalur Pendidikan Non Formal dan Informal', 'FU'),
(287, 'JFU01169', 'Analis Pengembangan Tenaga Lini Lapangan', 'FU'),
(288, 'JFU01170', 'Analis Pengendalian Penduduk', 'FU'),
(289, 'JFU01171', 'Analis Penggerakan Advokasi dan Komunikasi, Informasi dan Edukasi', 'FU'),
(290, 'JFU01172', 'Analis Pengolahan Data', 'FU'),
(291, 'JFU01173', 'Analis Penguatan Hubungan Dengan Lembaga Non Pmrintah', 'FU'),
(292, 'JFU01174', 'Analis Penguatan Hubungan Dengan Lembaga Pemerintah Kabupaten/Kota', 'FU'),
(293, 'JFU01175', 'Analis Pengumpulan dan Pengolahan Data Analis Pemaduan Kebijakan Pengendalian Penduduk', 'FU'),
(294, 'JFU01176', 'Analis Pengumpulan Data', 'FU'),
(295, 'JFU01177', 'Analis Penilaian Kinerja Pegawai', 'FU'),
(296, 'JFU01178', 'Analis Peningkatan Akses Keluarga Berencana Pria', 'FU'),
(297, 'JFU01179', 'Analis Peningkatan Akses Pelayanan Keluarga Berencana Wilayah Miskin Perkotaan', 'FU'),
(298, 'JFU01180', 'Analis Peningkatan Akses Pelayanan Keluarga Berencana Wilayah Tertinggal, Terpencil dan Perbatasan', 'FU'),
(299, 'JFU01181', 'Analis Peningkatan Kualitas Pelayanan Keluarga Berencana Tertinggal, Terpencil dan Perbatasan', 'FU'),
(300, 'JFU01182', 'Analis Peningkatan Kualitas Pelayanan Keluarga Berencana Wilayah Miskin Perkotaan', 'FU'),
(301, 'JFU01183', 'Analis Peningkatan Partisipasi Keluarga Berencana Pria', 'FU'),
(302, 'JFU01184', 'Analis Penyediaan Sarana Keluarga Berencana', 'FU'),
(303, 'JFU01185', 'Analis Penyediaan Sarana Keluarga Berencana Swasta', 'FU'),
(304, 'JFU01186', 'Analis Penyelenggaraan dan Evaluasi', 'FU'),
(305, 'JFU01187', 'Analis Penyelenggaraan Pendidikan dan Pelatihan', 'FU'),
(306, 'JFU01188', 'Analis Penyiapan Fasilitasi Pemaduan Kebijakan Pengendalian Penduduk', 'FU'),
(307, 'JFU01190', 'Analis Penyusunan Parameter Kependudukan', 'FU'),
(308, 'JFU01191', 'Analis Penyusunan Program', 'FU'),
(309, 'JFU01192', 'Analis Penyusunan Program Kelompok Usaha Ekonomi Keluarga', 'FU'),
(310, 'JFU01193', 'Analis Peraturan Perundang-Undangan', 'FU'),
(311, 'JFU01194', 'Analis Perbendaharaan', 'FU'),
(312, 'JFU01195', 'Analis Perencanaan', 'FU'),
(313, 'JFU01196', 'Analis Perencanaan Advokasi dan Komunikasi, Informasi dan Edukasi', 'FU'),
(314, 'JFU01197', 'Analis Perencanaan Anggaran Keluarga Keluarga Berencana dan Keluarga Sejahtera', 'FU'),
(315, 'JFU01198', 'Analis Perencanaan Anggaran Pengendalian Penduduk', 'FU'),
(316, 'JFU01199', 'Analis Perencanaan Anggaran Penunjang', 'FU'),
(317, 'JFU01200', 'Analis Perencanaan dan Pemasaran', 'FU'),
(318, 'JFU01201', 'Analis Perencanaan dan Pengadaan Pegawai', 'FU'),
(319, 'JFU01202', 'Analis Perencanaan Kebutuhan Barang Milik Negara', 'FU'),
(320, 'JFU01203', 'Analis Perencanaan Kebutuhan Sarana Program', 'FU'),
(321, 'JFU01204', 'Analis Perencanaan Kerjasama Luar Negeri', 'FU'),
(322, 'JFU01205', 'Analis Perencanaan Kinerja', 'FU'),
(323, 'JFU01206', 'Analis Perencanaan Program dan Anggaran', 'FU'),
(324, 'JFU01207', 'Analis Perencanaan Program Pengendalian Penduduk, Keluarga Berencana dan Keluarga Sejahtera', 'FU'),
(325, 'JFU01208', 'Analis Perencanaan Program Penunjang', 'FU'),
(326, 'JFU01209', 'Analis Pertahanan dan Keamanan', 'FU'),
(327, 'JFU01210', 'Analis Perumusan Pola Sistem Pencatatan dan Pelaporan', 'FU'),
(328, 'JFU01211', 'Analis Politik', 'FU'),
(329, 'JFU01212', 'Analis Program dan Kerjasama', 'FU'),
(330, 'JFU01213', 'Analis Program Kependudukan dan Keluarga Berencana', 'FU'),
(331, 'JFU01214', 'Analis Program Pendidikan dan Pelatihan', 'FU'),
(332, 'JFU01215', 'Analis Promosi', 'FU'),
(333, 'JFU01216', 'Analis Protokol', 'FU'),
(334, 'JFU01217', 'Analis Publikasi', 'FU'),
(335, 'JFU01218', 'Analis Rumah Tangga', 'FU'),
(336, 'JFU01219', 'Analis Sarana Produksi Media Komunikasi', 'FU'),
(337, 'JFU01220', 'Analis Sarana Program Keluarga Berencana', 'FU'),
(338, 'JFU01221', 'Analis Sosial', 'FU'),
(339, 'JFU01222', 'Analis Spesifikasi Barang', 'FU'),
(340, 'JFU01223', 'Analis Standarisasi Pelayanan Keluarga Berencana Pemerintah', 'FU'),
(341, 'JFU01224', 'Analis Standarisasi Pelayanan Keluarga Berencana Swasta', 'FU'),
(342, 'JFU01225', 'Analis Tata Laksana', 'FU'),
(343, 'JFU01226', 'Analis Tata Operasional', 'FU'),
(344, 'JFU01227', 'Analis Tata Usaha', 'FU'),
(345, 'JFU01228', 'Analis Tata Usaha Pimpinan', 'FU'),
(346, 'JFU01229', 'Analis Tenaga Lini Lapangan', 'FU'),
(347, 'JFU01230', 'Analis Umum', 'FU'),
(348, 'JFU01231', 'Analis Umum dan Humas', 'FU'),
(349, 'JFU01232', 'Analis Verifikasi', 'FU'),
(350, 'JFU01233', 'Analis Program/Perencanaan', 'FU'),
(351, 'JFU01234', 'Analis Analisis dan Evaluasi Pengendalian Penduduk', 'FU'),
(352, 'JFU01235', 'Analis Dokumen Perencanaan Advokasi dan KIE', 'FU'),
(353, 'JFU01236', 'Analis Bahan Bina Kesertaan KB Jalur Wilayah dan Sasaran Khusus', 'FU'),
(354, 'JFU01237', 'Analis Pemeliharaan Peralatan', 'FU'),
(355, 'JFU02001', 'Bendahara', 'FU'),
(356, 'JFU02002', 'Pembantu Bendahara', 'FU'),
(357, 'JFU03001', 'Calon Analis Kepegawaian Ahli', 'FU'),
(358, 'JFU03002', 'Calon Analis Kepegawaian Terampil', 'FU'),
(359, 'JFU03003', 'Calon Arsiparis Ahli', 'FU'),
(360, 'JFU03004', 'Calon Peneliti Ahli', 'FU'),
(361, 'JFU03005', 'Calon Pranata Humas Ahli', 'FU'),
(362, 'JFU03007', 'Calon Auditor Ahli', 'FU'),
(363, 'JFU03009', 'Calon Arsiparis Terampil', 'FU'),
(364, 'JFU03010', 'Calon Peneliti Ahli', 'FU'),
(365, 'JFU03011', 'Calon Pranata Humas Ahli', 'FU'),
(366, 'JFU03012', 'Calon Pustakawan Ahli', 'FU'),
(367, 'JFU03013', 'Calon Pustakawan Terampil', 'FU'),
(368, 'JFU03014', 'Calon Statistisi Ahli', 'FU'),
(369, 'JFU03015', 'Calon Widyaiswara Ahli', 'FU'),
(370, 'JFU04001', 'Pemelihara', 'FU'),
(371, 'JFU04002', 'Pemelihara Administrasi Gudang dan Alat Kontrasepsi', 'FU'),
(372, 'JFU04003', 'Pemelihara Arsip Barang Milik Negara', 'FU'),
(373, 'JFU04004', 'Pemelihara Bahan Keuangan', 'FU'),
(374, 'JFU04005', 'Pemelihara Bangunan', 'FU'),
(375, 'JFU04006', 'Pemelihara Barang Inventaris Kantor', 'FU'),
(376, 'JFU04007', 'Pemelihara Barang Milik Negara', 'FU'),
(377, 'JFU04008', 'Pemelihara Barang Operasional Diklat', 'FU'),
(378, 'JFU04009', 'Pemelihara Dokumen dan Administrasi Kerjasama Pendidikan dan Kependudukan', 'FU'),
(379, 'JFU04010', 'Pemelihara Dokumen dan Administrasi Keuangan', 'FU'),
(380, 'JFU04011', 'Pemelihara Dokumen dan Administrasi Penetapan Parameter Kependudukan', 'FU'),
(381, 'JFU04012', 'Pemelihara Dokumen dan Administrasi Tata Operasional Pelatihan Pengembangangan', 'FU'),
(382, 'JFU04013', 'Pemelihara Dokumen dan Administrasi Umum dan Humas', 'FU'),
(383, 'JFU04014', 'Pemelihara Dokumen Peralatan Advokasi', 'FU'),
(384, 'JFU04015', 'Pemelihara Dokumen, Peralatan dan Aplikasi Kediklatan', 'FU'),
(385, 'JFU04016', 'Pemelihara Instalasi Air', 'FU'),
(386, 'JFU04017', 'Pemelihara Instalasi Listrik', 'FU'),
(387, 'JFU04018', 'Pemelihara Kendaraan Dinas', 'FU'),
(388, 'JFU04019', 'Pemelihara Mobil Unit Penerangan', 'FU'),
(389, 'JFU04020', 'Pemelihara Peralatan Kantor', 'FU'),
(390, 'JFU04021', 'Pemelihara Peralatan Teknologi Informasi', 'FU'),
(391, 'JFU04022', 'Pemelihara Perlengkapan Kendaraan Bermotor', 'FU'),
(392, 'JFU04023', 'Pemelihara Persuratan', 'FU'),
(393, 'JFU04024', 'Pemelihara Program Komputer', 'FU'),
(394, 'JFU04025', 'Pemelihara Situs BKKBN', 'FU'),
(395, 'JFU04026', 'Pemelihara Sound System', 'FU'),
(396, 'JFU04027', 'Pemelihara Umum', 'FU'),
(397, 'JFU04028', 'Pemelihara Umum dan Humas', 'FU'),
(398, 'JFU04029', 'Pemelihara Data Evaluasi dan Pelaporan', 'FU'),
(399, 'JFU04030', 'Pemelihara Data Monitoring dan Evaluasi', 'FU'),
(400, 'JFU04031', 'Pemelihara Data Monitoring dan Evaluasi PKB/PLKB', 'FU'),
(401, 'JFU04032', 'Pemelihara Data Pengembangan Permodalan dan Kemitraan', 'FU'),
(402, 'JFU04033', 'Pemelihara Data Profil dan Proyeksi Pengendalian Penduduk', 'FU'),
(403, 'JFU04034', 'Pemelihara Data Program Bina Ketahanan Keluarga Lansia dan Rentan', 'FU'),
(404, 'JFU04035', 'Pemelihara Dokumen Administrasi Pengawasan', 'FU'),
(405, 'JFU04036', 'Pemelihara Dokumen Analisis Politik', 'FU'),
(406, 'JFU04037', 'Pemelihara Dokumen Bina KB Klinik', 'FU'),
(407, 'JFU04038', 'Pemelihara Dokumen Hasil Penelitian', 'FU'),
(408, 'JFU04039', 'Pemelihara Dokumen Hubungan Antar Lembaga', 'FU'),
(409, 'JFU04040', 'Pemelihara Dokumen Hukum dan Perundang-Undangan', 'FU'),
(410, 'JFU04041', 'Pemelihara Dokumen Jalur Pendidikan Non Formal dan Informal', 'FU'),
(411, 'JFU04042', 'Pemelihara Dokumen Kesehatan Reproduksi', 'FU'),
(412, 'JFU04043', 'Pemelihara Dokumen Monitoring dan Evaluasi', 'FU'),
(413, 'JFU04044', 'Pemelihara Dokumen Organisasi', 'FU'),
(414, 'JFU04045', 'Pemelihara Dokumen Pelaksanaan Anggaran', 'FU'),
(415, 'JFU04046', 'Pemelihara Dokumen Pemaduan Kebijakan Pengendalian Penduduk', 'FU'),
(416, 'JFU04047', 'Pemelihara Dokumen Pendidikan dan Pelatihan', 'FU'),
(417, 'JFU04048', 'Pemelihara Dokumen Pengembangan Materi', 'FU'),
(418, 'JFU04049', 'Pemelihara Dokumen Penyelenggaraan dan Evaluasi', 'FU'),
(419, 'JFU04050', 'Pemelihara Dokumen Penyelenggaraan Pendidikan dan Pelatihan', 'FU'),
(420, 'JFU04051', 'Pemelihara Dokumen Perencanaan Kinerja', 'FU'),
(421, 'JFU04052', 'Pemelihara Dokumen Perpustakaan', 'FU'),
(422, 'JFU04053', 'Pemelihara Dokumen Program Pendidikan dan Pelatihan', 'FU'),
(423, 'JFU04054', 'Pemelihara Dokumen Promosi', 'FU'),
(424, 'JFU04055', 'Pemelihara Dokumen Protokol', 'FU'),
(425, 'JFU04056', 'Pemelihara Dokumen Tata Laksana', 'FU'),
(426, 'JFU04057', 'Pemelihara Dokumen Tata Usaha', 'FU'),
(427, 'JFU04058', 'Pemelihara Dokumen Verifikasi ', 'FU'),
(428, 'JFU04059', 'Pemelihara Sarana dan Prasarana', 'FU'),
(429, 'JFU04060', 'Pemelihara Sarana Pelayanan KB', 'FU'),
(430, 'JFU04061', 'Pemelihara Bahan Penguatan Hubungan dengan Lembaga Non Pemerintah', 'FU'),
(431, 'JFU05001', 'Pengadministrasi', 'FU'),
(432, 'JFU05002', 'Pengadministrasi Bahan Advokasi dan Komunikasi, Informasi dan Edukasi', 'FU'),
(433, 'JFU05003', 'Pengadministrasi Analis Dampak Kependudukan', 'FU'),
(434, 'JFU05004', 'Pengadministrasi Bahan Bina Keluarga Balita, Anak dan Lanjut Usia', 'FU'),
(435, 'JFU05005', 'Pengadministrasi Bahan Keluarga Berencana Jalur Swasta', 'FU'),
(436, 'JFU05006', 'Pengadministrasi Bahan Kesehatan Reproduksi', 'FU'),
(437, 'JFU05007', 'Pengadministrasi Bahan Materi Jalur Pendidikan Formal, Nonformal dan Informal', 'FU'),
(438, 'JFU05008', 'Pengadministrasi Bahan Penetapan Parameter Kependudukan', 'FU'),
(439, 'JFU05009', 'Pengadministrasi Bina Keluarga Berencana Klinik Swasta', 'FU'),
(440, 'JFU05010', 'Pengadministrasi Bina Kesertaan Keluarga Berencana Jalur Pemerintah', 'FU'),
(441, 'JFU05011', 'Pengadministrasi Bina Kesertaan Keluarga Berencana Jalur Wilayah dan Sasaran Khusus', 'FU'),
(442, 'JFU05012', 'Pengadministrasi Bina Ketahanan Remaja', 'FU'),
(443, 'JFU05013', 'Pengadministrasi Data dan Informasi', 'FU'),
(444, 'JFU05014', 'Pengadministrasi Evaluasi dan Pelaporan', 'FU'),
(445, 'JFU05015', 'Pengadministrasi Gudang', 'FU'),
(446, 'JFU05016', 'Pengadministrasi Hubungan Antar Lembaga dan Bina Lini Lapangan', 'FU'),
(447, 'JFU05017', 'Pengadministrasi Keuangan dan Barang Milik Negara', 'FU'),
(448, 'JFU05018', 'Pengadministrasi Pemberdayaan Ekonomi Keluarga', 'FU'),
(449, 'JFU05019', 'Pengadministrasi Pengawasan', 'FU'),
(450, 'JFU05020', 'Pengadministrasi Penyelenggaraan dan Evaluasi', 'FU'),
(451, 'JFU05021', 'Pengadministrasi Perjalanan Dinas', 'FU'),
(452, 'JFU05022', 'Pengadministrasi Program dan Kerjasama', 'FU'),
(453, 'JFU05023', 'Pengadministrasi Tata Operasional', 'FU'),
(454, 'JFU05024', 'Pengadministrasi Umum', 'FU'),
(455, 'JFU05025', 'Pengadministrasi Umum dan Humas', 'FU'),
(456, 'JFU05026', 'Pengadministrasi Bina Keluarga Berencana Rumah Sakit Pemerintah', 'FU'),
(457, 'JFU05027', 'Pengadministrasi Bahan Program Bina Ketahanan Keluarga Lansia dan Rentan', 'FU'),
(458, 'JFU05028', 'Pengadministrasi Bahan Rumah Tangga', 'FU'),
(459, 'JFU05029', 'Pengadministrasi Data Pengembangan Administrasi dan Keuangan Kelompok Usaha Ekonomi Keluarga', 'FU'),
(460, 'JFU05030', 'Pengadministrasi Dokumen BKB dan Anak', 'FU'),
(461, 'JFU05031', 'Pengadministrasi Dokumen Rumah Tangga', 'FU'),
(462, 'JFU05032', 'Pengadministrasi Bahan Penyelenggaraan dan Evaluasi', 'FU'),
(463, 'JFU06001', 'Pengelola Barang Inventaris', 'FU'),
(464, 'JFU07001', 'Pengemudi', 'FU'),
(465, 'JFU08001', 'Pengevaluasi Bahan Analis Dampak Kependudukan', 'FU'),
(466, 'JFU08002', 'Pengevaluasi Bina Ketahanan Remaja', 'FU'),
(467, 'JFU08003', 'Pengevaluasi Kegiatan Pendidikan dan Pelatihan', 'FU'),
(468, 'JFU08004', 'Pengevaluasi Mekanisme Operasional Lini Lapangan', 'FU'),
(469, 'JFU08005', 'Pengevaluasi Pengendalian Penduduk', 'FU'),
(470, 'JFU08006', 'Pengevaluasi Penyelenggaraan', 'FU'),
(471, 'JFU08007', 'Pengevaluasi Tenaga Lini Lapangan', 'FU'),
(472, 'JFU08008', 'Pengevaluasi Pemeliharaan Bangunan', 'FU'),
(473, 'JFU08009', 'Pengevaluasi Persuratan', 'FU'),
(474, 'JFU09001', 'Penyusun Anggaran', 'FU'),
(475, 'JFU09002', 'Penyusun Bahan', 'FU'),
(476, 'JFU09003', 'Penyusun Bahan Administrasi Pengawasan', 'FU'),
(477, 'JFU09004', 'Penyusun Bahan Administrasi Umum', 'FU'),
(478, 'JFU09005', 'Penyusun Bahan Admnstrasi Jabatan Fungsional', 'FU'),
(479, 'JFU09006', 'Penyusun Bahan Advokasi', 'FU'),
(480, 'JFU09007', 'Penyusun Bahan Advokasi Bahan Komunikasi Informasi Edukasi', 'FU'),
(481, 'JFU09008', 'Penyusun Bahan Advokasi dan Komunikasi Informasi Edukasi', 'FU'),
(482, 'JFU09009', 'Penyusun Bahan Akuntansi', 'FU'),
(483, 'JFU09010', 'Penyusun Bahan Analisis Dampak Kependudukan', 'FU'),
(484, 'JFU09011', 'Penyusun Bahan Arsip dan Dokumentasi', 'FU'),
(485, 'JFU09012', 'Penyusun Bahan Berita dan Pendapat Umum', 'FU'),
(486, 'JFU09013', 'Penyusun Bahan Bina Keluarga Balita, Anak dan Ketahanan Lanjut Usia', 'FU'),
(487, 'JFU09014', 'Penyusun Bahan Bina Keluarga Balita, Anak dan Ketahanan Lansia', 'FU'),
(488, 'JFU09015', 'Penyusun Bahan Bina Keluarga Berencana Klinik Pemerintah', 'FU'),
(489, 'JFU09016', 'Penyusun Bahan Bina Keluarga Berencana Klinik Swasta', 'FU'),
(490, 'JFU09017', 'Penyusun Bahan Bina Keluarga Berencana Rumah Sakit Pemerintah', 'FU'),
(491, 'JFU09018', 'Penyusun Bahan Bina Keluarga Berencana Rumah Sakit Swasta', 'FU'),
(492, 'JFU09019', 'Penyusun Bahan Bina Keluarga Sejahterartaan Keluarga Berencana Jalur Pemerintah dan Swasta', 'FU'),
(493, 'JFU09020', 'Penyusun Bahan Bina Keluarga Sejahterartaan Keluarga Berencana Jalur Wilayah dan Sasaran Khusus', 'FU'),
(494, 'JFU09021', 'Penyusun Bahan Bina Kesehatan Keluarga Berencana Jalur Pemerintah dan Swasta', 'FU'),
(495, 'JFU09022', 'Penyusun Bahan Bina Ketahanan Keluarga', 'FU'),
(496, 'JFU09023', 'Penyusun Bahan Bina Ketahanan Remaja', 'FU'),
(497, 'JFU09024', 'Penyusun Bahan Bina Keluarga Balita, Anak dan Ketahanan Keluarga Lansia', 'FU'),
(498, 'JFU09025', 'Penyusun Bahan Dampak Kependudukan', 'FU'),
(499, 'JFU09026', 'Penyusun Bahan Dampak Politik', 'FU'),
(500, 'JFU09027', 'Penyusun Bahan dan Pemantauan Evaluasi Diklat', 'FU'),
(501, 'JFU09028', 'Penyusun Bahan Data dan Dokumentasi Pegawai', 'FU'),
(502, 'JFU09029', 'Penyusun Bahan Data dan Informasi', 'FU'),
(503, 'JFU09030', 'Penyusun Bahan Data Perencanaan', 'FU'),
(504, 'JFU09031', 'Penyusun Bahan Data Profil dan Proyeksi Keluarga Sejahtera Penduduk', 'FU'),
(505, 'JFU09032', 'Penyusun Bahan Daya Dukung Lingkungan', 'FU'),
(506, 'JFU09033', 'Penyusun Bahan Daya Tampung Lingkungan', 'FU'),
(507, 'JFU09034', 'Penyusun Bahan Disiplin Pegawai', 'FU'),
(508, 'JFU09035', 'Penyusun Bahan Dokumentasi  dan  Perpustakaan', 'FU'),
(509, 'JFU09036', 'Penyusun Bahan Dokumentasi Peraturan Perundang-Undangan', 'FU'),
(510, 'JFU09037', 'Penyusun Bahan Ekonomi', 'FU'),
(511, 'JFU09038', 'Penyusun Bahan Evaluasi', 'FU'),
(512, 'JFU09039', 'Penyusun Bahan Evaluasi Barang Milik Negara', 'FU'),
(513, 'JFU09040', 'Penyusun Bahan Evaluasi dan Laporan', 'FU'),
(514, 'JFU09041', 'Penyusun Bahan Evaluasi dan Pelaporan', 'FU'),
(515, 'JFU09042', 'Penyusun Bahan Evaluasi dan Pelaporan Advokasi dan Komunikasi, Informasi, Edukasi', 'FU'),
(516, 'JFU09043', 'Penyusun Bahan Evaluasi dan Pelaporan Analisis Pemaduan Kebijakan Pendidikan Kependudukan', 'FU'),
(517, 'JFU09044', 'Penyusun Bahan Evaluasi dan Pelaporan Bina Keluarga Balita dan Anak', 'FU'),
(518, 'JFU09045', 'Penyusun Bahan Evaluasi dan Pelaporan Bina Ketahanan Keluarga Lansia dan Rentan', 'FU'),
(519, 'JFU09046', 'Penyusun Bahan Evaluasi dan Pelaporan Bina Ketahanan Remaja', 'FU'),
(520, 'JFU09047', 'Penyusun Bahan Evaluasi dan Pelaporan Fasilitasi Pemaduan Kebijakan Pendidikan Kependudukan', 'FU'),
(521, 'JFU09048', 'Penyusun Bahan Evaluasi dan Pelaporan, Pendidikan dan Pelatihan', 'FU'),
(522, 'JFU09049', 'Penyusun Bahan Evaluasi Data Profil dan Proyeksi Pendidikan Kependudukan', 'FU'),
(523, 'JFU09050', 'Penyusun Bahan Evaluasi Data Program', 'FU'),
(524, 'JFU09051', 'Penyusun Bahan Evaluasi Kesetaraan Jender', 'FU'),
(525, 'JFU09052', 'Penyusun Bahan Evaluasi Kinerja', 'FU'),
(526, 'JFU09053', 'Penyusun Bahan Evaluasi Lingkungan Kerja', 'FU'),
(527, 'JFU09054', 'Penyusun Bahan Evaluasi Program Kelompok Usaha Ekonomi Keluarga', 'FU'),
(528, 'JFU09055', 'Penyusun Bahan Evaluasi Program Keluarga Usaha Ekonomi Keluarga', 'FU'),
(529, 'JFU09056', 'Penyusun Bahan Evaluasi Sarana Program', 'FU'),
(530, 'JFU09057', 'Penyusun Bahan Evaluasi Sasaran Parameter Pengendalian Penduduk', 'FU'),
(531, 'JFU09058', 'Penyusun Bahan Hubungan Antar Lembaga dan Bina Lini Lapangan', 'FU'),
(532, 'JFU09059', 'Penyusun Bahan Hubungan Degan Lmbaga Pmrintah Provinsi', 'FU'),
(533, 'JFU09060', 'Penyusun Bahan Hubungan Dengan Lembaga Pemerintah Pusat', 'FU'),
(534, 'JFU09061', 'Penyusun Bahan Hubungan Media Massa', 'FU'),
(535, 'JFU09062', 'Penyusun Bahan Hukum', 'FU'),
(536, 'JFU09063', 'Penyusun Bahan Informasi dan Peningkatan Teknologi Kelompok Usaha Ekonomi Keluarga', 'FU'),
(537, 'JFU09064', 'Penyusun Bahan Informasi dan Penerangan', 'FU'),
(538, 'JFU09065', 'Penyusun Bahan Jaminan Pelayanan Keluarga Berencana', 'FU'),
(539, 'JFU09066', 'Penyusun Bahan Jaminan Pelayanannan Keluarga Berencana Swasta', 'FU'),
(540, 'JFU09067', 'Penyusun Bahan Kebijakan', 'FU'),
(541, 'JFU09068', 'Penyusun Bahan Kebijakan Keluarga Berencana/Keluarga Sejahtera', 'FU'),
(542, 'JFU09069', 'Penyusun Bahan Kebijakan Kesehatan Ibu dan Anak', 'FU'),
(543, 'JFU09070', 'Penyusun Bahan Kebijakan Partisipasi Program Remaja', 'FU'),
(544, 'JFU09071', 'Penyusun Bahan Kebijakan Peraturan', 'FU'),
(545, 'JFU09072', 'Penyusun Bahan Kebijakan Program', 'FU'),
(546, 'JFU09073', 'Penyusun Bahan Kebijakan Programram Keluarga Berencana Pria', 'FU'),
(547, 'JFU09074', 'Penyusun Bahan Kelangsungan Hidup Bayi dan Anak', 'FU'),
(548, 'JFU09075', 'Penyusun Bahan Kelangsungan Hidup Ibu', 'FU'),
(549, 'JFU09076', 'Penyusun Bahan Keluarga Berencana dan Keluarga Sejahtera', 'FU'),
(550, 'JFU09077', 'Penyusun Bahan Kepegawaian dan Hukum', 'FU'),
(551, 'JFU09078', 'Penyusun Bahan Kerjasama Luar Negeri', 'FU'),
(552, 'JFU09079', 'Penyusun Bahan Kerjasama Pendidikan dan Pelatihan', 'FU'),
(553, 'JFU09080', 'Penyusun Bahan Kerjasama Pendidikan Kependudukan', 'FU'),
(554, 'JFU09081', 'Penyusun Bahan Kerjasama Penelitian dan Pengembangan', 'FU'),
(555, 'JFU09082', 'Penyusun Bahan Kerjasama Pendidikan Kependudukan', 'FU'),
(556, 'JFU09083', 'Penyusun Bahan Kesehatan Reproduksi Keluarga Sejahtera', 'FU'),
(557, 'JFU09084', 'Penyusun Bahan Kesejahteraan Pegawai', 'FU'),
(558, 'JFU09085', 'Penyusun Bahan Keuangan dan BMN', 'FU'),
(559, 'JFU09086', 'Penyusun Bahan Keuangan dan Pengelolaan BMN', 'FU'),
(560, 'JFU09087', 'Penyusun Bahan Kompetensi Pegawai', 'FU'),
(561, 'JFU09088', 'Penyusun Bahan Komunikasi Informasi Edukasi', 'FU'),
(562, 'JFU09089', 'Penyusun Bahan Konseling', 'FU'),
(563, 'JFU09090', 'Penyusun Bahan Kurikulum', 'FU'),
(564, 'JFU09091', 'Penyusun Bahan Metode Pelatihan', 'FU'),
(565, 'JFU09092', 'Penyusun Bahan Monitoring Bina Keluarga Balita dan Anak', 'FU'),
(566, 'JFU09093', 'Penyusun Bahan Monitoring Bina Keluarga Lansia  dan Rentan', 'FU'),
(567, 'JFU09094', 'Penyusun Bahan Monitoring Bina Ketahanan Remaja', 'FU'),
(568, 'JFU09095', 'Penyusun Bahan Monitoring dan Evaluasi Institusi Masyarakat Pedesaan', 'FU'),
(569, 'JFU09096', 'Penyusun Bahan Monitoring dan Evaluasi Jalur Pendidikan Nonformal dan Informal', 'FU'),
(570, 'JFU09097', 'Penyusun Bahan Monitoring dan Evaluasi Jalur Pendidikan Formal', 'FU'),
(571, 'JFU09098', 'Penyusun Bahan Monitoring dan Evaluasi Mekanisme Operasional Lini Lapangan', 'FU'),
(572, 'JFU09099', 'Penyusun Bahan Monitoring dan Evaluasi Pelayanan Keluarga Berencana Pemerintah', 'FU'),
(573, 'JFU09100', 'Penyusun Bahan Monitoring dan Evaluasi Pelayanan Keluarga Berencana Swasta', 'FU'),
(574, 'JFU09101', 'Penyusun Bahan Monitoring dan Evaluasi Sistem Pencatatan dan Pelaporan', 'FU'),
(575, 'JFU09102', 'Penyusun Bahan Monitoring dan Evaluasi Tenaga Lini Lapangan', 'FU'),
(576, 'JFU09103', 'Penyusun Bahan Mutasi Jabatan Pegawai', 'FU'),
(577, 'JFU09104', 'Penyusun Bahan Organisasi', 'FU'),
(578, 'JFU09105', 'Penyusun Bahan Pangkat dan Gaji Pegawai', 'FU'),
(579, 'JFU09106', 'Penyusun Bahan Parameter Pengendalian Penduduk', 'FU'),
(580, 'JFU09107', 'Penyusun Bahan Pegembangan Program Bina Ketahanan Keluarga Lanjut Usia', 'FU'),
(581, 'JFU09108', 'Penyusun Bahan Pegembangan Sistem Jalur Pendidikan Formal', 'FU'),
(582, 'JFU09109', 'Penyusun Bahan Pegembangan Sistm Jalur Pendidikan Nonformal dan Informal', 'FU'),
(583, 'JFU09110', 'Penyusun Bahan Pegmbangan Pemodalan dan Kemitraan Kelompok Usaha Keluarga', 'FU'),
(584, 'JFU09111', 'Penyusun Bahan Pelaksana Anggaran Kebutuhan', 'FU'),
(585, 'JFU09112', 'Penyusun Bahan Pelaksana Anggaran Penunjang', 'FU'),
(586, 'JFU09113', 'Penyusun Bahan Pelaksanaan Anggaran Keluarga Berencana dan Keluarga Sejahtera', 'FU'),
(587, 'JFU09114', 'Penyusun Bahan Pelaksanaan Anggaran Pengendalian Penduduk', 'FU'),
(588, 'JFU09115', 'Penyusun Bahan Pelaporan dan Statistik', 'FU'),
(589, 'JFU09116', 'Penyusun Bahan Pelatihan dan Pengembangan', 'FU'),
(590, 'JFU09117', 'Penyusun Bahan Pelatihan Internasional', 'FU'),
(591, 'JFU09118', 'Penyusun Bahan Pelembagaan Bina Ketahanan Remaja Jalur Masyarakat', 'FU'),
(592, 'JFU09119', 'Penyusun Bahan Pelembagaan Bina Ketahanan Remaja Jalur Pendidikan', 'FU'),
(593, 'JFU09120', 'Penyusun Bahan Pemanfaatan Hasil Penelitian', 'FU'),
(594, 'JFU09121', 'Penyusun Bahan Pemanfaatan Parameter Pengendalian Penduduk', 'FU'),
(595, 'JFU09122', 'Penyusun Bahan Pemanfaatan Profil dan Proyeksi Pengembangan Penduduk', 'FU'),
(596, 'JFU09123', 'Penyusun Bahan Pembakuan', 'FU'),
(597, 'JFU09124', 'Penyusun Bahan Pemberdayaan Ekonomi Keluarga', 'FU'),
(598, 'JFU09125', 'Penyusun Bahan Pembinaan Keluarga', 'FU'),
(599, 'JFU09126', 'Penyusun Bahan Pembinaan Pegawai', 'FU'),
(600, 'JFU09127', 'Penyusun Bahan Pemeliharaan Infrastruktur TI', 'FU'),
(601, 'JFU09128', 'Penyusun Bahan Penanggulangan Infertilitas', 'FU'),
(602, 'JFU09129', 'Penyusun Bahan Penata Usahaan BMN', 'FU'),
(603, 'JFU09130', 'Penyusun Bahan Penatausahaan Pengelolaan Sarana Program', 'FU'),
(604, 'JFU09131', 'Penyusun Bahan Pencegahan HIV/AIDS', 'FU'),
(605, 'JFU09132', 'Penyusun Bahan Pencegahan Kanker Alat Reproduksi', 'FU'),
(606, 'JFU09133', 'Penyusun Bahan Pencegahan Penyakit Menular Seks', 'FU'),
(607, 'JFU09134', 'Penyusun Bahan Pencitraan', 'FU'),
(608, 'JFU09135', 'Penyusun Bahan Pendidikan dan Pelatihan Luar Negeri', 'FU'),
(609, 'JFU09136', 'Penyusun Bahan Penetapan Parameter Kependuduk', 'FU'),
(610, 'JFU09137', 'Penyusun Bahan Penetapan Parameter Pengendalian Penduduk', 'FU'),
(611, 'JFU09138', 'Penyusun Bahan Penetapan Sasaran Parameter Pengendalian Kependudukan', 'FU'),
(612, 'JFU09139', 'Penyusun Bahan Pengangkatan dan Pemberhentian Pegawai', 'FU'),
(613, 'JFU09140', 'Penyusun Bahan Pengelolaan Bank Data', 'FU'),
(614, 'JFU09141', 'Penyusun Bahan Pengembangan Admntrasi dan Keuangan Kelompok Usaha Ekonomi Keluarga', 'FU'),
(615, 'JFU09142', 'Penyusun Bahan Pengembangan Hubungan Degan Lembaga Pemeritah Kabupaten / Kota', 'FU'),
(616, 'JFU09143', 'Penyusun Bahan Pengembangan Hubungan Dengan Lembaga Non Pemerintah', 'FU'),
(617, 'JFU09144', 'Penyusun Bahan Pengembangan Indikator Kinerja', 'FU'),
(618, 'JFU09145', 'Penyusun Bahan Pengembangan Infrasruktur TI', 'FU'),
(619, 'JFU09146', 'Penyusun Bahan Pengembangan Institusi Masyarakat Pedesaan', 'FU'),
(620, 'JFU09147', 'Penyusun Bahan Pengembangan Karir Pegawai', 'FU'),
(621, 'JFU09148', 'Penyusun Bahan Pengembangan Kelompok Bina Keluarga Balita dan Anak', 'FU'),
(622, 'JFU09149', 'Penyusun Bahan Pengembangan Keluarga Bina Ketahanan Keluarga Lansia dan Rentan', 'FU'),
(623, 'JFU09150', 'Penyusun Bahan Pengembangan Kemitraan Bina Ketahanan Keluarga Lansia  dan Rentan', 'FU'),
(624, 'JFU09151', 'Penyusun Bahan Pengembangan Materi Jalur Pendidikan Formal', 'FU'),
(625, 'JFU09152', 'Penyusun Bahan Pengembangan Materi Jalur Pendidikan Nonformal dan Informal', 'FU'),
(626, 'JFU09153', 'Penyusun Bahan Pengembangan Mekanisme Operasional Lini Lapangan', 'FU'),
(627, 'JFU09154', 'Penyusun Bahan Pengembangan Pemasaran Kelompok Usha Ekonomi Kelurga', 'FU'),
(628, 'JFU09155', 'Penyusun Bahan Pengembangan Progam Bina Ketahanan Remaja Jalur Pendidikan', 'FU'),
(629, 'JFU09156', 'Penyusun Bahan Pengembangan Program Bina Keluarga Anak', 'FU'),
(630, 'JFU09157', 'Penyusun Bahan Pengembangan Program Bina Keluarga Balita', 'FU'),
(631, 'JFU09158', 'Penyusun Bahan Pengembangan Program Bina Keluarga Berencana', 'FU'),
(632, 'JFU09159', 'Penyusun Bahan Pengembangan Program Bina Ketahanan Keluarga Rentan', 'FU'),
(633, 'JFU09160', 'Penyusun Bahan Pengembangan Program Bina Ketahanan Remaja Jalur Masyarakat', 'FU'),
(634, 'JFU09161', 'Penyusun Bahan Pengembangan Sistem Aplikasi', 'FU'),
(635, 'JFU09162', 'Penyusun Bahan Pengembangan Situs BKKBN dan Media Konferensi', 'FU'),
(636, 'JFU09163', 'Penyusun Bahan Pengembangan Tenaga Lini Lapangan', 'FU'),
(637, 'JFU09164', 'Penyusun Bahan Pengendalian Penduduk', 'FU'),
(638, 'JFU09165', 'Penyusun Bahan Penggerakan Advokasi dan Komunikasi Informasi Edukasi', 'FU'),
(639, 'JFU09166', 'Penyusun Bahan Pengolahan Data', 'FU'),
(640, 'JFU09167', 'Penyusun Bahan Pengolahan Informasi dan Dokumentasi', 'FU'),
(641, 'JFU09168', 'Penyusun Bahan Penguatan Hubungan Dengan Lembaga Non Pemeritah', 'FU'),
(642, 'JFU09169', 'Penyusun Bahan Penguatan Hubungan Dengan Lembaga Pemerintah Kabupaten / Kota', 'FU'),
(643, 'JFU09170', 'Penyusun Bahan Pengumpul dan Pegolahan Data Analis Pemanduan Kebijakan Penduduk', 'FU'),
(644, 'JFU09171', 'Penyusun Bahan Pengumpulan Data', 'FU'),
(645, 'JFU09172', 'Penyusun Bahan Peningkatan Akses Pelayanan Keluarga Berencana Wilayah Tertinggal Terpencil dan Perbatasan', 'FU'),
(646, 'JFU09173', 'Penyusun Bahan Penigkatan Akses Pelayanan Keluarga Berencana Wilayah Miskin Perbatasan', 'FU'),
(647, 'JFU09174', 'Penyusun Bahan Penigkatan Kualtas Pelayanan Keluarga Berencana Tertinggal Terpencil dan Perbatasan', 'FU'),
(648, 'JFU09175', 'Penyusun Bahan Penilaian Kinerja Pegawai', 'FU'),
(649, 'JFU09176', 'Penyusun Bahan Peningkatan Akses Keluarga Berencana Pria', 'FU'),
(650, 'JFU09177', 'Penyusun Bahan Peningkatan Kualitas Pelayanan Keluarga Berencana Wilayah Miskin Perbatasan', 'FU'),
(651, 'JFU09178', 'Penyusun Bahan Peningkatan Kualitas Pelayanan Keluarga Berencana Wilayah Miskin Perkotaan', 'FU'),
(652, 'JFU09179', 'Penyusun Bahan Peningkatan Partisipasi Keluarga Berencana Pria', 'FU'),
(653, 'JFU09180', 'Penyusun Bahan Penyediaan Sarana Keluarga Berencana', 'FU'),
(654, 'JFU09181', 'Penyusun Bahan Penyediaan Sarana Keluarga Berencana Swasta', 'FU'),
(655, 'JFU09182', 'Penyusun Bahan Penyelenggaraan dan Evaluasi', 'FU'),
(656, 'JFU09183', 'Penyusun Bahan Penyelenggaraan Pendidikan dan Pelatihan', 'FU'),
(657, 'JFU09184', 'Penyusun Bahan Penyiapan Fasilitasi Pemaduan Kebijakan Penduduk', 'FU'),
(658, 'JFU09185', 'Penyusun Bahan Penyiapan Program Kelompok Usaha Ekonomi Kelurga', 'FU'),
(659, 'JFU09186', 'Penyusun Bahan Penyusunan Program ', 'FU'),
(660, 'JFU09187', 'Penyusun Bahan Perangkat Tata Laksana', 'FU'),
(661, 'JFU09188', 'Penyusun Bahan Perbendaharaan', 'FU'),
(662, 'JFU09189', 'Penyusun Bahan Perecanaan Anggaran Keluarga Berencana dan Keluarga Sejahtera', 'FU'),
(663, 'JFU09190', 'Penyusun Bahan Perecanaan Anggaran Pengendalian Penduduk', 'FU'),
(664, 'JFU09191', 'Penyusun Bahan Perecanaan Program Pengendalian Penduduk, Keluarga Berencana dan Keluarga Sejahtera', 'FU'),
(665, 'JFU09192', 'Penyusun Bahan Perencanaan', 'FU'),
(666, 'JFU09193', 'Penyusun Bahan Perencanaan Advokasi dan Komunikasi Informasi Edukasi', 'FU'),
(667, 'JFU09194', 'Penyusun Bahan Perencanaan Anggaran Penunjang', 'FU'),
(668, 'JFU09195', 'Penyusun Bahan Perencanaan dan Pemasaran', 'FU'),
(669, 'JFU09196', 'Penyusun Bahan Perencanaan dan Pengadaan Pegawai', 'FU'),
(670, 'JFU09197', 'Penyusun Bahan Perencanaan Kebutuhan BMN', 'FU'),
(671, 'JFU09198', 'Penyusun Bahan Perencanaan Kebutuhan Sarana Program', 'FU'),
(672, 'JFU09199', 'Penyusun Bahan Perencanaan Kerjasama Luar Negeri', 'FU'),
(673, 'JFU09200', 'Penyusun Bahan Perencanaan Kinerja', 'FU'),
(674, 'JFU09201', 'Penyusun Bahan Perencanaan Program Penunjang', 'FU'),
(675, 'JFU09202', 'Penyusun Bahan Pertahanan dan Keamanan', 'FU'),
(676, 'JFU09203', 'Penyusun Bahan Perumusan Pola Sistem Pencatatan dan Pelaporan', 'FU'),
(677, 'JFU09204', 'Penyusun Bahan Perundang-Undangan', 'FU'),
(678, 'JFU09205', 'Penyusun Bahan Politik', 'FU'),
(679, 'JFU09206', 'Penyusun Bahan Program dan Kerjasama', 'FU'),
(680, 'JFU09207', 'Penyusun Bahan Program dan Pelatihan', 'FU'),
(681, 'JFU09208', 'Penyusun Bahan Program Pendidikan dan Pelatihan', 'FU'),
(682, 'JFU09209', 'Penyusun Bahan Promosi', 'FU'),
(683, 'JFU09210', 'Penyusun Bahan Protokol', 'FU'),
(684, 'JFU09211', 'Penyusun Bahan Publikasi', 'FU'),
(685, 'JFU09212', 'Penyusun Bahan Rencana Ketrampilan Pegawai', 'FU'),
(686, 'JFU09213', 'Penyusun Bahan Rencana Pengembangan Pegawai', 'FU'),
(687, 'JFU09214', 'Penyusun Bahan Rencana Program', 'FU'),
(688, 'JFU09215', 'Penyusun Bahan Rencana Tenaga Pelatihan', 'FU'),
(689, 'JFU09216', 'Penyusun Bahan Sarana Produksi Media Komunikasi', 'FU'),
(690, 'JFU09217', 'Penyusun Bahan Sosial', 'FU'),
(691, 'JFU09218', 'Penyusun Bahan Standarisasi Kerja', 'FU'),
(692, 'JFU09219', 'Penyusun Bahan Standarisasi Pelayanan Keluarga Berencana Pemerintah', 'FU'),
(693, 'JFU09220', 'Penyusun Bahan Standarisasi Pelayanan Keluarga Berencana Swasta', 'FU'),
(694, 'JFU09221', 'Penyusun Bahan Tata Laksana', 'FU'),
(695, 'JFU09222', 'Penyusun Bahan Tata Operasional', 'FU'),
(696, 'JFU09223', 'Penyusun Bahan Tata Usaha', 'FU'),
(697, 'JFU09224', 'Penyusun Bahan Tata Usaha Pimpinan', 'FU'),
(698, 'JFU09225', 'Penyusun Bahan Tenaga Lini Lapangan', 'FU'),
(699, 'JFU09226', 'Penyusun Bahan Ujian Dinas', 'FU'),
(700, 'JFU09227', 'Penyusun Bahan Umum', 'FU'),
(701, 'JFU09228', 'Penyusun Bahan Umum dan Humas', 'FU'),
(702, 'JFU09229', 'Penyusun Bahan Verifikasi', 'FU'),
(703, 'JFU09230', 'Penyusun Bina Ketahanan Remaja', 'FU'),
(704, 'JFU09231', 'Penyusun Data Advokasi Hak-Hak Reproduksi', 'FU'),
(705, 'JFU09232', 'Penyusun Data Evaluasi Program', 'FU'),
(706, 'JFU09233', 'Penyusun Data Hasil Penelitian Keluarga Berencana / Kesehatan Reproduksi', 'FU'),
(707, 'JFU09234', 'Penyusun Data Hasil Penelitian Keluarga Sejahtera / Pemberdayaan Keluarga', 'FU'),
(708, 'JFU09235', 'Penyusun Data Kebutuhan Barang', 'FU'),
(709, 'JFU09236', 'Penyusun Data Kelahiran', 'FU'),
(710, 'JFU09237', 'Penyusun Data Kesehatan Sexual', 'FU'),
(711, 'JFU09238', 'Penyusun Data Keuangan', 'FU'),
(712, 'JFU09239', 'Penyusun Data Pegawai', 'FU'),
(713, 'JFU09240', 'Penyusun Data Pelayanan dan Konseling', 'FU'),
(714, 'JFU09241', 'Penyusun Data Pelayanan Medis', 'FU'),
(715, 'JFU09242', 'Penyusun Data Pengembangan Institusi KB', 'FU'),
(716, 'JFU09243', 'Penyusun Data Peningkatan Kualitas Lingkungan', 'FU'),
(717, 'JFU09244', 'Penyusun Data Peningkatan Kualitas Usaha', 'FU'),
(718, 'JFU09245', 'Penyusun Data Program', 'FU'),
(719, 'JFU09246', 'Penyusun Data Program Kesetaraan Jender', 'FU'),
(720, 'JFU09247', 'Penyusun Data Tenaga Program', 'FU'),
(721, 'JFU09248', 'Penyusun Fasilitas Pelayanan', 'FU'),
(722, 'JFU09249', 'Penyusun Kebijakan Kesehatan Reproduksi', 'FU'),
(723, 'JFU09250', 'Penyusun Laporan dan Evaluasi', 'FU'),
(724, 'JFU09251', 'Penyusun Laporan Kerjasama Luar Negeri', 'FU'),
(725, 'JFU09252', 'Penyusun Laporan Pengembangan Program', 'FU'),
(726, 'JFU09253', 'Penyusun Laporan Program', 'FU'),
(727, 'JFU09254', 'Penyusun Masalah Kesehatan Reproduksi', 'FU'),
(728, 'JFU09255', 'Penyusun Pengembangan Karier Pegawai', 'FU'),
(729, 'JFU09256', 'Penyusun Peraturan Kepegawaian dan Dokumentasi', 'FU'),
(730, 'JFU09257', 'Penyusun Pola dan Evaluasi Program', 'FU'),
(731, 'JFU09258', 'Penyusun Program', 'FU');
INSERT INTO `jabatan` (`hid`, `kode_jab`, `jabatan`, `jenis_jab`) VALUES
(732, 'JFU09259', 'Penyusun Rencana Tenaga Pelatihan', 'FU'),
(733, 'JFU09260', 'Penyusun Sarana Media Teknologi Pembelajaran', 'FU'),
(734, 'JFU09261', 'Penghubung Antar Lembaga', 'FU'),
(735, 'JFU09262', 'Analis Kepegawaian dan Hukum', 'FU'),
(736, 'JFU09263', 'Pengatur', 'FU'),
(737, 'JFU09264', 'Pengevaluasi Keuangan dan BMN', 'FU'),
(738, 'JFU09265', 'Bendahara Pengeluaran', 'FU'),
(739, 'JFU09266', 'Bendahara Pengeluaran Pembantu', 'FU'),
(740, 'JFU09267', 'Pengadministrasi Bahan Keuangan', 'FU'),
(741, 'JFU09268', 'Penyusun Bahan Perencanaan Program dan Anggaran', 'FU'),
(742, 'JFU09269', 'Penyusun Bahan Parameter Kependudukan', 'FU'),
(743, 'JFU09270', 'Penyusun Bahan Bina Kesertaan Keluarga Berencana Jalur Pemerintah dan Swasta', 'FU'),
(744, 'JFU09271', 'Penyusun Bahan Bina Kesertaan Keluarga Berencana Jalur Wilayah dan Sasaran Khusus', 'FU'),
(745, 'JFU09272', 'Penyusun Bahan Kesehatan Reproduksi', 'FU'),
(746, 'JFU09273', 'Pemelihara Barang Umum dan Humas', 'FU'),
(747, 'JFU09274', 'Pemelihara Arsip Kepegawaian', 'FU'),
(748, 'JFU09275', 'Analis Perencana Anggaran dan Barang Milik Negara', 'FU'),
(749, 'JFU09276', 'Analis Kesehatan Reproduksi', 'FU'),
(750, 'JFU09277', 'Penyusun Bahan SAI, Keuangan dan RAKL', 'FU'),
(751, 'JFU09278', 'Penyusun Data Pelayanan dan Konseling Bina Kesertaan KB Jalur Wilayah Khusus', 'FU'),
(752, 'JFU09280', 'Pengadministrasi Bahan Umum, Humas dan Persuratan', 'FU'),
(753, 'JFU09281', 'Pemelihara Bahan Kesehatan Reproduksi', 'FU'),
(754, 'JFU09282', 'Pemelihara Bahan Bina Keluarga Balita, Anak dan Ketahanan Lansia', 'FU'),
(755, 'JFU09283', 'Pengadministrasi Bahan Kepegawaian dan Hukum', 'FU'),
(756, 'JFU09284', 'Verifikator Keuangan', 'FU'),
(757, 'JFU09285', 'Pemelihara Arsip Perencanaan', 'FU'),
(758, 'JFU09286', 'Pemelihara Arsip', 'FU'),
(759, 'JFU09287', 'Pemelihara Mobil Unit Pelayanan', 'FU'),
(760, 'JFU09288', 'Pengadministrasi Bahan Pengembangan Materi Jalur Pendidikan Non Formal dan Informal', 'FU'),
(761, 'JFU09289', 'Pengadministrasi Bahan', 'FU'),
(762, 'JFU09290', 'Pemelihara Bahan', 'FU'),
(763, 'JFU09291', 'Penginventarisasi', 'FU'),
(764, 'JFU09292', 'Pengevaluasi', 'FU'),
(765, 'JFU09296', 'Pengevaluasi Bina Kesertaan KB Jalur Wilayah dan Sasaran Khusus', 'FU'),
(766, 'JFU09297', 'Pengevaluasi Bina Keluarga Balita, Anak dan Ketahanan Keluarga Lansia', 'FU'),
(767, 'JFU09298', 'Pengevaluasi Hubungan Antar Lembaga dan Bina Lini Lapangan', 'FU'),
(768, 'JFU09299', 'Analis', 'FU'),
(769, 'JFU09300', 'Penyusun Bahan Rumah Tangga', 'FU'),
(770, 'JFU09301', 'Pemelihara Bina Ketahan Remaja', 'FU'),
(771, 'JFU09302', 'Pengadministrasi Bahan Peningkatan Kualitas Pelayanan KB Wilayah galcitas', 'FU'),
(772, 'JFU09303', 'Penyusun Bahan Keluarga Berencana Klinik Swasta', 'FU'),
(773, 'JFU09304', 'Analis Administrasi Tata Usaha Pengawasan', 'FU'),
(774, 'JFU09305', 'Analis Persuratan', 'FU'),
(775, 'JFU09306', 'Penyusun Bahan Pemeliharaan Kendaraan', 'FU'),
(776, 'JFU09307', 'Pemelihara Bahan Promosi', 'FU'),
(777, 'JFU09308', 'Analis Monitoring dan Evaluasi Sistem Pencatatan dan Pelaporan', 'FU'),
(778, 'JFU09309', 'Pemelihara Bahan Pengangkatan dan Pemberhentian Pegawai', 'FU'),
(779, 'JFU09310', 'Penyusun Bahan Pemeliharaan Gedung', 'FU'),
(780, 'JFU09311', 'Penyusun Bahan Peningkatan Akses Pelayanan Keluarga Berencana Wilayah Miskin Perkotaan', 'FU'),
(781, 'JFU09312', 'Penyusun Bahan Kesehatan Reproduksi', 'FU'),
(782, 'JFU09313', 'Penyusun Bahan Pemeliharaan Peralatan', 'FU'),
(783, 'JFU09314', 'Penyusun Bahan Persuratan', 'FU'),
(784, 'JFU09315', 'Pemelihara Bahan Pengembangan Hubungan Dengan Lembaga Non Pemerintah', 'FU'),
(785, 'JFU09316', 'Penyusun Bahan Data Kependudukan dan Keluarga Berencana', 'FU'),
(786, 'JFU09317', 'Pemberhentian Sementara sebagai PNS', 'FU'),
(787, 'JFU09318', 'Penyusun Bahan Pengelolaan Situs dan Media Konferensi', 'FU'),
(788, 'JFU09319', 'Pengevaluasi Pemberdayaan Ekonomi Keluarga', 'FU'),
(789, 'JFU09320', 'Pengadministrasi Penguatan Hubungan Dengan Lembaga Non Pemerintah', 'FU'),
(790, 'JFU09321', 'Pengadministrasi Bahan Evaluasi Sarana Program', 'FU'),
(791, 'JFU09322', 'Pengadministrasi Bahan Evaluasi BMN', 'FU'),
(792, 'JFU09323', 'Analis Tata Usaha Pendidikan dan Pelatihan', 'FU'),
(793, 'JFU09324', 'Pengadministrasi Pengumpulan Data', 'FU'),
(794, 'JFU10001', 'Petugas Lapangan Keluarga Berencana', 'FU'),
(795, 'JFU10002', 'PPLKB', 'FU'),
(796, 'JFU11001', 'Pustakawan', 'FU'),
(797, 'JFU12001', 'Satpam', 'FU'),
(798, 'JFU13001', 'Sekretaris Pimpinan', 'FU'),
(799, 'JFU13002', 'Sekretaris Pimpinan', 'FU'),
(800, 'JFU14001', 'Statistisi', 'FU'),
(801, 'JFU15001', 'Widyaiswara', 'FU'),
(802, 'JFU16001', 'Pesuruh', 'FU'),
(803, 'JFU17001', 'Pengolah Data Keluarga Sejahtera', 'FU'),
(804, 'JFU40001', 'Pengelola Barang Persediaan', 'FU'),
(805, 'JFU50001', 'Pengadministrasi Barang Milik Negara', 'FU'),
(806, 'JFU60001', 'Penyusun Bahan Barang Milik Negara', 'FU'),
(807, 'JFU60002', 'Penyusun Bahan Dampak Daya Dukung Lingkungan', 'FU'),
(808, 'JFU60003', 'Penyusun Bahan Dampak Ekonomi', 'FU'),
(809, 'JFU60004', 'Penyusun Bahan Pengumpulan dan Pengolahan Data', 'FU'),
(810, 'JFU60005', 'Penyusun Bahan Pengembangan Kemitraan Bina Keluarga Balita dan Anak', 'FU'),
(811, 'JFU60006', 'Penyusun Bahan Pengembangan Sistem Jalur Pendidikan Formal', 'FU'),
(812, 'JFU60007', 'Penyusun Bahan Analisa dan Evaluasi Pengendalian Penduduk', 'FU'),
(813, 'JFU70001', 'Analis Penelitian dan Pengembangan Kependudukan', 'FU'),
(814, 'JFU70002', 'Analis Program Penelitian dan Pengembangan Kependudukan', 'FU'),
(815, 'JFU70003', 'Analis SDM Aparatur', 'FU'),
(816, 'JFU70004', 'Analis Perencanaan, Evaluasi dan Pelaporan', 'FU'),
(817, 'JFU70005', 'Analis Perencanaan Anggaran', 'FU'),
(818, 'JFU70006', 'Analis Organisasi dan Tata Laksana', 'FU'),
(819, 'JFU70007', 'Penyusun Kurikulum, Modul dan Bahan Ajar', 'FU'),
(820, 'JFU70008', 'Pengelola Teknologi Informasi', 'FU'),
(821, 'JFU70009', 'Analis Bidang Pengawasan', 'FU'),
(822, 'JFU70010', 'Analis Kesehatan', 'FU'),
(823, 'JFU70011', 'Analis Statistik', 'FU'),
(824, 'JFU70012', 'Pengelola Barang Milik Negara', 'FU'),
(825, 'JFU70013', 'Analis Keuangan', 'FU'),
(826, 'JFU70014', 'Analis Kerjasama', 'FU'),
(827, 'JFU70015', 'Analis Kinerja', 'FU'),
(828, 'JFU70016', 'Penyusun Analisis Dampak Kependudukan', 'FU'),
(829, 'JFU70017', 'Analis Kesehatan Ibu dan Anak', 'FU'),
(830, 'JFU70018', 'Penyusun Kerjasama Pendidikan Kependudukan', 'FU'),
(831, 'JFU70019', 'Analis Pelaporan Pendidikan dan Pelatihan', 'FU'),
(832, 'JFU70020', 'Analis Pengelolaan BMN', 'FU'),
(833, 'JFU70021', 'Pemelihara Pengembangan Materi Jalur Pendidikan Non Formal dan Informal', 'FU'),
(834, 'JFU70022', 'Pemelihara Pengembangan Sistem Jalur Pendidikan Non Formal dan Informal', 'FU'),
(835, 'JFU70023', 'Pengadministrasi Monitoring dan Jalur Pendidikan Non Formal dan Informal', 'FU'),
(836, 'JFU70024', 'Penyusun Bahan Pengembangan Program Bina Ketahanan Remaja Jalur Pendidikan', 'FU'),
(837, 'JFU80001', 'Bendahara Barang', 'FU'),
(838, 'JFU99997', 'PNS Tugas Belajar', 'FU'),
(839, 'JFU99998', 'Perbantukan', 'FU'),
(840, 'JFU99999', 'Fungsional Umum', 'FU'),
(841, 'JFUDUK07', 'Analis Monitoring dan Evaluasi Jalur Pendidikan Non Formal dan Informal', 'FU');

-- --------------------------------------------------------

--
-- Table structure for table `jenjang`
--

CREATE TABLE `jenjang` (
  `hid` int(11) NOT NULL,
  `jenjang` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jenjang`
--

INSERT INTO `jenjang` (`hid`, `jenjang`) VALUES
(3, 'Ahli Madya'),
(2, 'Ahli Muda'),
(1, 'Ahli Pertama'),
(4, 'Ahli Utama'),
(6, 'Mahir'),
(5, 'Penyelia'),
(7, 'Terampil');

-- --------------------------------------------------------

--
-- Table structure for table `kamus_dupak`
--

CREATE TABLE `kamus_dupak` (
  `hid` int(11) NOT NULL,
  `kegiatan_hid` int(11) DEFAULT NULL,
  `output` varchar(145) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kamus_kegiatan`
--

CREATE TABLE `kamus_kegiatan` (
  `hid` int(11) NOT NULL,
  `unsur_kegiatan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kategori` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jenjang_jabatan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uraian_kegiatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detil` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jumlah_ak` double DEFAULT NULL,
  `jumlah_ak_akhir` double DEFAULT NULL,
  `kelompok_id` int(11) DEFAULT NULL,
  `langkah` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nomor` int(11) DEFAULT NULL,
  `output` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kamus_kegiatan`
--

INSERT INTO `kamus_kegiatan` (`hid`, `unsur_kegiatan`, `kategori`, `jenjang_jabatan`, `uraian_kegiatan`, `jenis`, `detil`, `jumlah_ak`, `jumlah_ak_akhir`, `kelompok_id`, `langkah`, `nomor`, `output`) VALUES
(1, NULL, 'Utama', NULL, 'Pendidikan sekolah & memperoleh ijazah/gelar', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, NULL, 'Utama', NULL, 'Pendidikan dan Pelatihan dan mendapat Surat Tanda Tamat Pendidikan dan Pelatihan (STTPP)', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(3, NULL, 'Utama', NULL, 'Pendidikan dan Pelatihan Prajabatan', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(4, NULL, 'Utama', NULL, 'Manajemen PNS', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(5, NULL, 'Utama', NULL, 'Pengembangan Sistem Manajemen PNS', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(6, NULL, 'Penunjang', NULL, 'Kegiatan Penunjang', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(7, NULL, 'Utama', NULL, 'Pendidikan dan Pelatihan Prajabatan', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(8, NULL, 'Utama', NULL, 'Manajemen PNS', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(9, NULL, 'Utama', NULL, 'Pengembangan Sistem Manajemen PNS', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(10, NULL, 'Penunjang', NULL, 'Kegiatan Penunjang', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kelompok`
--

CREATE TABLE `kelompok` (
  `hid` int(11) NOT NULL,
  `kelompok` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok`
--

INSERT INTO `kelompok` (`hid`, `kelompok`) VALUES
(1, 'Kelompok Analis'),
(2, 'Kelompok Prakom Mahir');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_lines`
--

CREATE TABLE `kelompok_lines` (
  `hid` int(11) NOT NULL,
  `kelompok_id` int(11) NOT NULL,
  `jabatan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok_lines`
--

INSERT INTO `kelompok_lines` (`hid`, `kelompok_id`, `jabatan_id`) VALUES
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 2, 7),
(10, 2, 14),
(11, 2, 21),
(12, 2, 28),
(13, 2, 36),
(14, 2, 44),
(15, 2, 51),
(16, 1, 34);

-- --------------------------------------------------------

--
-- Table structure for table `mdok`
--

CREATE TABLE `mdok` (
  `hid` int(11) NOT NULL,
  `dokumen` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdok`
--

INSERT INTO `mdok` (`hid`, `dokumen`) VALUES
(1, 'SPMK'),
(2, 'NOTA USULAN ESELON II');

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(11) NOT NULL,
  `mailfrom` varchar(250) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `statusinbox` int(11) DEFAULT NULL,
  `message` text,
  `sendto` varchar(250) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemohon`
--

CREATE TABLE `pemohon` (
  `hid` int(11) NOT NULL,
  `periode_hid` int(11) DEFAULT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `namalengkap` varchar(145) DEFAULT NULL,
  `karpeg` varchar(45) DEFAULT NULL,
  `pangkatgol` varchar(45) DEFAULT NULL,
  `tmtgol` date DEFAULT NULL,
  `tempatlahir` varchar(45) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `jeniskelamin` varchar(15) DEFAULT NULL,
  `pendidikan` varchar(45) DEFAULT NULL,
  `jabatan` varchar(145) DEFAULT NULL,
  `tmtjab` date DEFAULT NULL,
  `unitkerja` varchar(145) DEFAULT NULL,
  `kabkota` varchar(145) DEFAULT NULL,
  `kdjab` varchar(15) DEFAULT NULL,
  `foto` varchar(145) DEFAULT NULL,
  `spengantar_kab` varchar(445) DEFAULT NULL,
  `spengantar_prov` varchar(445) DEFAULT NULL,
  `skjabakhir` varchar(445) DEFAULT NULL,
  `skgolakhir` varchar(445) DEFAULT NULL,
  `pakakhir` varchar(445) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `notes` varchar(145) DEFAULT NULL,
  `penilai_id` int(11) DEFAULT NULL,
  `nippengusul` varchar(45) DEFAULT NULL,
  `namapengusul` varchar(145) DEFAULT NULL,
  `tempatpengusul` varchar(145) DEFAULT NULL,
  `jabatanpengusul` varchar(145) DEFAULT NULL,
  `tglpengusul` date DEFAULT NULL,
  `no_pak` varchar(45) DEFAULT NULL,
  `hasil` varchar(445) DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  `updatedby` varchar(45) DEFAULT NULL,
  `penilaiandate` datetime DEFAULT NULL,
  `tgl_bap` date DEFAULT NULL,
  `no_bap` varchar(45) DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemohon`
--

INSERT INTO `pemohon` (`hid`, `periode_hid`, `nip`, `namalengkap`, `karpeg`, `pangkatgol`, `tmtgol`, `tempatlahir`, `tgllahir`, `jeniskelamin`, `pendidikan`, `jabatan`, `tmtjab`, `unitkerja`, `kabkota`, `kdjab`, `foto`, `spengantar_kab`, `spengantar_prov`, `skjabakhir`, `skgolakhir`, `pakakhir`, `status`, `notes`, `penilai_id`, `nippengusul`, `namapengusul`, `tempatpengusul`, `jabatanpengusul`, `tglpengusul`, `no_pak`, `hasil`, `creationdate`, `createdby`, `updateddate`, `updatedby`, `penilaiandate`, `tgl_bap`, `no_bap`, `tgl_surat`) VALUES
(1, 2, '198705052009011001', 'ANGGAR LINGGA RHOMADONA, S.Kom', 'P177902', 'Penata Muda Tk. I (III/b)', '2020-10-01', 'SUBANG', '1987-05-05', 'Laki-Laki', 'S1', 'Pranata Komputer Ahli Pertama', '2019-10-01', 'Biro Kepegawaian', 'TORAJA UTARA', 'JFT05004', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-05 10:38:11', '198705052009011001', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penilai`
--

CREATE TABLE `penilai` (
  `hid` int(11) NOT NULL,
  `jenjang` varchar(45) DEFAULT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `namalengkap` varchar(145) DEFAULT NULL,
  `jabatan` varchar(145) DEFAULT NULL,
  `golonganpangkat` varchar(45) DEFAULT NULL,
  `unitkerja` varchar(145) DEFAULT NULL,
  `foto` varchar(145) DEFAULT NULL,
  `sebagai` varchar(45) DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilai`
--

INSERT INTO `penilai` (`hid`, `jenjang`, `nip`, `namalengkap`, `jabatan`, `golonganpangkat`, `unitkerja`, `foto`, `sebagai`, `creationdate`, `createdby`) VALUES
(1, 'Ahli Madya', '196411071991031004', 'Drs TAVIP AGUS RAYANTO, M.Si.', 'Sekretaris Utama', 'Pembina Utama (IV/e)', 'X', '19641107199103100410082020112324.jpeg', 'Ketua', '2021-08-21 21:34:25', 'admin'),
(2, 'Ahli Madya', '198603072009121008', 'WAHYU HERYANSYAH, S.IP, M.Si', 'Analis Kepegawaian Ahli Muda', 'Penata Tk. I (III/d)', 'Biro Kepegawaian', '198603072009121008.jpg', 'Anggota', '2021-08-21 21:21:07', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

CREATE TABLE `periode` (
  `hid` int(11) NOT NULL,
  `namaperiode` varchar(45) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `notes` varchar(145) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `nomor_awal` int(11) DEFAULT NULL,
  `format_nomor` varchar(45) DEFAULT NULL,
  `kota_pak` varchar(45) DEFAULT NULL,
  `pejabat_pak` varchar(45) DEFAULT NULL,
  `nippejabat_pak` varchar(45) DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `updateddate` date DEFAULT NULL,
  `updatedby` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`hid`, `namaperiode`, `startdate`, `enddate`, `notes`, `status`, `nomor_awal`, `format_nomor`, `kota_pak`, `pejabat_pak`, `nippejabat_pak`, `creationdate`, `createdby`, `updateddate`, `updatedby`) VALUES
(1, 'Periode PAK JUL-DES 2021', '2021-07-01', '2021-12-01', 'keterangan', 0, 1, '{nomor}/II/PAK-JD/G3/2021', 'Jakarta', 'Drs TAVIP AGUS RAYANTO, M.Si.', '196411071991031004', NULL, NULL, NULL, NULL),
(2, 'Periode PAK Jan-Jun 2021', '2021-01-01', '2021-06-01', '', 1, 1, '{nomor}/PAK-JD/G2/2021', 'Jakarta', 'VIKTOR HASIHOLAN SIBURIAN, S.E., M.Si.', '196803301993031001', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EmployeeId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DisplayName` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Jabatan` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KdJab` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PangkatGol` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IdClass` int(11) DEFAULT NULL,
  `JobClass` double DEFAULT NULL,
  `IdBiro` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiroName` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KdProv` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KdKab` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KdKec` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KdKel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PushToken` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TimeZone` int(11) DEFAULT NULL,
  `RolesId` int(11) DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeviceId` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoHP` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Foto` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TempatLahir` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TglLahir` date DEFAULT NULL,
  `JenisKelamin` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PendidikanAkhir` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `JurusanAkhir` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamaSekolah` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TmtGol` date DEFAULT NULL,
  `TmtJab` date DEFAULT NULL,
  `Karpeg` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NIPAtasan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NIPLamaAtasan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamaAtasan` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `JabatanAtasan` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PangkatGolAtasan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `EmployeeId`, `Password`, `DisplayName`, `Jabatan`, `KdJab`, `PangkatGol`, `IdClass`, `JobClass`, `IdBiro`, `BiroName`, `KdProv`, `KdKab`, `KdKec`, `KdKel`, `PushToken`, `TimeZone`, `RolesId`, `CreationDate`, `CreatedBy`, `UpdatedDate`, `UpdatedBy`, `DeviceId`, `NoHP`, `Email`, `Foto`, `TempatLahir`, `TglLahir`, `JenisKelamin`, `PendidikanAkhir`, `JurusanAkhir`, `NamaSekolah`, `TmtGol`, `TmtJab`, `Karpeg`, `NIPAtasan`, `NIPLamaAtasan`, `NamaAtasan`, `JabatanAtasan`, `PangkatGolAtasan`) VALUES
(3, 'admin', NULL, '5b55f03446dcb74e2ad39dd74c22172f', 'Super Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'profil_admin.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'admin.sekretariat2', NULL, 'd41d8cd98f00b204e9800998ecf8427e', 'Admin Sekretariat 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2021-08-20 23:09:10', 'admin', '2021-08-20 23:13:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'admin.sekretariat1', NULL, '25d55ad283aa400af464c76d713c07ad', 'Admin Sekretariat 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-04-02 10:56:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '198705052009011001', '198705052009011001', '0a5025d66258040d2e0000f5b4da65cc', 'ANGGAR LINGGA RHOMADONA, S.Kom', 'Pranata Komputer Ahli Pertama', 'JFT05004', 'Penata Muda Tk. I (III/b)', 8, 3319000, '0102000000', 'Biro Kepegawaian', 'SULAWESI SELATAN', 'TORAJA UTARA', 'DENDE&#039; PIONGAN NAPO', 'PARANDANGAN', NULL, NULL, NULL, '2022-04-02 15:08:50', '198705052009011001', '2022-04-07 02:39:29', NULL, NULL, '08121899430511', 'anggarlingga87ubah@gmail.com', '198705052009011001.JPG', 'SUBANG', '1987-05-05', 'Laki-Laki', 'S1', NULL, NULL, '2020-10-01', '2019-10-01', 'P177902', '198603072009121008', '198603072009121008', 'WAHYU HERYANSYAH, S.IP, M.Si', 'Analis Kepegawaian Ahli Muda', 'Penata Tk. I (III/d)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bantuan`
--
ALTER TABLE `bantuan`
  ADD PRIMARY KEY (`Hid`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `dupak_hid` (`dupak_hid`),
  ADD KEY `dokumen_hid` (`dokumen_hid`),
  ADD KEY `pemohon_hid` (`pemohon_hid`);

--
-- Indexes for table `dupak`
--
ALTER TABLE `dupak`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `pemohon_id` (`pemohon_id`),
  ADD KEY `kegiatan_id` (`kegiatan_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `nip` (`nip`),
  ADD KEY `tgl` (`tgl`),
  ADD KEY `tgl2` (`tgl2`),
  ADD KEY `unsur` (`unsur`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`hid`),
  ADD UNIQUE KEY `kode_jab` (`kode_jab`);

--
-- Indexes for table `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`hid`),
  ADD UNIQUE KEY `jenjang` (`jenjang`);

--
-- Indexes for table `kamus_dupak`
--
ALTER TABLE `kamus_dupak`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `kamus_kegiatan`
--
ALTER TABLE `kamus_kegiatan`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `kelompok_lines`
--
ALTER TABLE `kelompok_lines`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `kelompokid` (`kelompok_id`),
  ADD KEY `jabatanid` (`jabatan_id`);

--
-- Indexes for table `mdok`
--
ALTER TABLE `mdok`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendto` (`sendto`);

--
-- Indexes for table `pemohon`
--
ALTER TABLE `pemohon`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `periode_hid` (`periode_hid`),
  ADD KEY `nip` (`nip`),
  ADD KEY `penilai_id` (`penilai_id`);

--
-- Indexes for table `penilai`
--
ALTER TABLE `penilai`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username_2` (`Username`),
  ADD KEY `Username` (`Username`),
  ADD KEY `EmployeeId` (`EmployeeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bantuan`
--
ALTER TABLE `bantuan`
  MODIFY `Hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dupak`
--
ALTER TABLE `dupak`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=842;

--
-- AUTO_INCREMENT for table `jenjang`
--
ALTER TABLE `jenjang`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kamus_dupak`
--
ALTER TABLE `kamus_dupak`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kamus_kegiatan`
--
ALTER TABLE `kamus_kegiatan`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kelompok`
--
ALTER TABLE `kelompok`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelompok_lines`
--
ALTER TABLE `kelompok_lines`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mdok`
--
ALTER TABLE `mdok`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemohon`
--
ALTER TABLE `pemohon`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penilai`
--
ALTER TABLE `penilai`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `periode`
--
ALTER TABLE `periode`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
