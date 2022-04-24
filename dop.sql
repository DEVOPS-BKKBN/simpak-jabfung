-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Apr 24, 2022 at 01:47 PM
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
(1, 3, 2, 2, '', '198302092010121001_pribadi_2.pdf', NULL, NULL, 'administrasi', '2022-04-24 05:43:10', '198302092010121001', NULL, NULL),
(2, 3, 1, 1, '', '198302092010121001_pribadi_1.jpg', NULL, NULL, 'administrasi', '2022-04-24 05:43:28', '198302092010121001', NULL, NULL),
(3, 3, 1, 22, 'Link', 'https://www.w3schools.com/jquery/ajax_serialize.asp', NULL, NULL, 'pak', '2022-04-24 11:28:42', '198302092010121001', '2022-04-24 14:19:16', '1234567890'),
(4, 3, 2, 3, 'File', '198302092010121001_dokumen_3.jpg', NULL, NULL, 'pak', '2022-04-24 11:29:11', '198302092010121001', '2022-04-24 13:43:12', '198302092010121001');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_penilai`
--

CREATE TABLE `dokumen_penilai` (
  `hid` int(11) NOT NULL,
  `dokumen_id` int(11) DEFAULT NULL,
  `penilai_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `notes` varchar(145) DEFAULT NULL,
  `maxrev_date` date DEFAULT NULL,
  `revised_date` date DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumen_penilai`
--

INSERT INTO `dokumen_penilai` (`hid`, `dokumen_id`, `penilai_id`, `status`, `notes`, `maxrev_date`, `revised_date`, `creation_date`, `created_by`, `updated_by`, `updated_date`) VALUES
(1, 22, 4, 3, 'tes isian revisi', '2022-05-08', NULL, '2022-04-24 14:38:13', '1234567890', '1234567890', '2022-04-24 14:46:03'),
(2, 3, 4, 1, '', NULL, NULL, '2022-04-24 14:58:04', '1234567890', NULL, NULL),
(3, 22, 2, 1, '', NULL, NULL, '2022-04-24 15:30:43', '198603072009121008', '198603072009121008', '2022-04-24 15:35:52'),
(4, 3, 2, 1, '', NULL, NULL, '2022-04-24 15:36:25', '198603072009121008', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dupak`
--

CREATE TABLE `dupak` (
  `hid` int(11) NOT NULL,
  `pemohon_id` int(11) DEFAULT NULL,
  `kegiatan_id` int(11) DEFAULT NULL,
  `nilai_ak` double DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `total_ak` double DEFAULT NULL,
  `nilai_ak_final` double DEFAULT NULL,
  `total_ak_penilai` double DEFAULT NULL,
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

INSERT INTO `dupak` (`hid`, `pemohon_id`, `kegiatan_id`, `nilai_ak`, `jml`, `total_ak`, `nilai_ak_final`, `total_ak_penilai`, `dokumen`, `isnilai`, `status`, `sumber`, `keterangan`, `creationdate`, `createdby`, `updateddate`, `updatedby`, `penilaiandate`, `penilaianby`) VALUES
(1, 3, 26, 0.128, 3, 0.384, NULL, 0.374, NULL, NULL, 0, NULL, NULL, '2022-04-24 05:43:45', '198302092010121001', NULL, NULL, '2022-04-24 18:35:24', 'admin'),
(2, 3, 77, 12.5, 4, 50, NULL, 49.56, NULL, NULL, 0, NULL, NULL, '2022-04-24 05:43:56', '198302092010121001', NULL, NULL, '2022-04-24 18:35:05', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `dupak_penilai`
--

CREATE TABLE `dupak_penilai` (
  `hid` int(11) NOT NULL,
  `dupak_id` int(11) DEFAULT NULL,
  `penilai_id` int(11) DEFAULT NULL,
  `total_nilai` double DEFAULT NULL,
  `notes` varchar(145) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `maxrev_date` date DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dupak_penilai`
--

INSERT INTO `dupak_penilai` (`hid`, `dupak_id`, `penilai_id`, `total_nilai`, `notes`, `status`, `maxrev_date`, `creation_date`, `created_by`, `updated_by`, `updated_date`) VALUES
(1, 1, 4, 0.384, 'tes isian revisi', 3, '2022-05-08', '2022-04-24 14:43:23', '1234567890', '1234567890', '2022-04-24 14:46:03'),
(2, 2, 4, 50, '', 1, NULL, '2022-04-24 14:58:04', '1234567890', NULL, NULL),
(3, 1, 2, 0.294, '', 1, NULL, '2022-04-24 15:30:43', '198603072009121008', '198603072009121008', '2022-04-24 15:35:52'),
(4, 2, 2, 48, '', 1, NULL, '2022-04-24 15:36:25', '198603072009121008', NULL, NULL);

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
  `jenis_jab` varchar(15) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`hid`, `kode_jab`, `jabatan`, `jenis_jab`, `creation_date`, `created_by`, `updated_date`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'FT', 'Analis Kebijakan Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'JFT01001', 'Analis Kepegawaian Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'JFT01002', 'Analis Kepegawaian Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'JFT01003', 'Analis Kepegawaian Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'JFT01004', 'Analis Kepegawaian Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'JFT01005', 'Analis Kepegawaian Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'JFT01006', 'Analis Kepegawaian Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'JFT01007', 'Analis Kepegawaian Terampil ', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'JFT02001', 'Arsiparis Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'JFT02002', 'Arsiparis Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'JFT02003', 'Arsiparis Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'JFT02004', 'Arsiparis Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'JFT02005', 'Arsiparis Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'JFT02006', 'Arsiparis Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'JFT02007', 'Arsiparis Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'JFT03001', 'Auditor Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'JFT03002', 'Auditor Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'JFT03003', 'Auditor Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'JFT03004', 'Auditor Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'JFT03005', 'Auditor Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'JFT03006', 'Auditor Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'JFT03007', 'Auditor Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'JFT04001', 'Peneliti Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'JFT04002', 'Peneliti Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'JFT04003', 'Peneliti Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'JFT04004', 'Peneliti Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'JFT04005', 'Pranata Humas Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'JFT04006', 'Pranata Humas Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'JFT04007', 'Pranata Humas Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'JFT04008', 'Pranata Humas Pelaksana Pemula', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'JFT05001', 'Pranata Komputer Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'JFT05002', 'Pranata Komputer Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'JFT05003', 'Pranata Komputer Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'JFT05004', 'Pranata Komputer Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'JFT05005', 'Pranata Komputer Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'JFT05006', 'Pranata Komputer Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'JFT05007', 'Pranata Komputer Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'JFT05008', 'Pranata Komputer Pelaksana Pemula', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'JFT06001', 'Pustakawan Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'JFT06002', 'Pustakawan Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'JFT06003', 'Pustakawan Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'JFT06004', 'Pustakawan Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'JFT06005', 'Pustakawan Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'JFT06006', 'Pustakawan Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'JFT06007', 'Pustakawan Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'JFT07001', 'Statistisi Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'JFT07002', 'Statistisi Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'JFT07003', 'Statistisi Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'JFT07004', 'Statistisi Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'JFT07005', 'Statistisi Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'JFT07006', 'Statistisi Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'JFT07007', 'Statistisi Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'JFT08001', 'Widyaiswara Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'JFT08002', 'Widyaiswara Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'JFT08003', 'Widyaiswara Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'JFT08004', 'Widyaiswara Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'JFT08008', 'Ajun Widyaiswara', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'JFT10001', 'Pranata Humas Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'JFT10002', 'Pranata Humas Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'JFT10003', 'Pranata Humas Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'JFT10004', 'Pranata Humas Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'JFT11001', 'Analis Kebijakan Ahli Pertama ', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'JFT11002', 'Analis Kebijakan Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'JFT11003', 'Analis Kebijakan Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'JFT11004', 'Analis Kebijakan Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'JFT12001', 'Analis Pengelolaan Keuangan APBN Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'JFT12002', 'Analis Pengelolaan Keuangan APBN Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'JFT12003', 'Analis Pengelolaan Keuangan APBN Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'JFT12004', 'Analis Pengelolaan Keuangan APBN Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'JFT13001', 'Analis Anggaran Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'JFT13002', 'Analis Anggaran Ahli Muda ', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'JFT13003', 'Analis Anggaran Ahli Madya ', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'JFT13004', 'Analis Anggaran Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'JFT14001', 'Penata Ruang Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'JFT14002', 'Penata Ruang Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'JFT14003', 'Penata Ruang Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'JFT15001', 'Pengelola Pengadaan Barang/Jasa Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'JFT15002', 'Pengelola Pengadaan Barang/Jasa Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'JFT15003', 'Pengelola Pengadaan Barang/Jasa Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'JFT16001', 'Pengembang Teknologi Pembelajaran Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'JFT16002', 'Pengembang Teknologi Pembelajaran Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'JFT16003', 'Pengembang Teknologi Pembelajaran Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'JFT16004', 'Pengembang Teknologi Pembelajaran Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'JFT17001', 'Perancang Peraturan Perundang-Undangan Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'JFT17002', 'Perancang Peraturan Perundang-Undangan Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'JFT17003', 'Perancang Peraturan Perundang-Undangan Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'JFT17004', 'Perancang Peraturan Perundang-Undangan Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'JFT18001', 'Perencana Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'JFT18002', 'Perencana Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'JFT18003', 'Perencana Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'JFT18004', 'Perencana Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'JFT19007', 'Analis Hukum Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'JFT19008', 'Analis Hukum Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'JFT19009', 'Analis Hukum Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'JFT19010', 'Analis Pengelolaan Keuangan APBN Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'JFT19011', 'Analis Pengelolaan Keuangan APBN Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'JFT19012', 'Analis Pengelolaan Keuangan APBN Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'JFT19013', 'Penata Kependudukan dan Keluarga Berencana Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'JFT19014', 'Penata Kependudukan dan Keluarga Berencana Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'JFT19015', 'Penata Kependudukan dan Keluarga Berencana Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'JFT19016', ' Asesor SDM Aparatur Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'JFT19017', ' Asesor SDM Aparatur Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'JFT19018', ' Asesor SDM Aparatur Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'JFT19019', 'Calon Asesor SDM Aparatur Ahli', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'JFT19020', 'Calon Auditor Kepegawaian Ahli', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'JFT19022', 'Calon Pranata Komputer Ahli', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'JFT19023', 'Calon Pranata Komputer Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'JFT19026', 'Calon Auditor Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'JFU09293', 'Auditor Kepegawaian Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'JFU09294', 'Auditor Kepegawaian Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'JFU09295', 'Auditor Kepegawaian Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'FU', 'Analis Mutasi Pejabat Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'FU09260', 'Penyusun Bahan Pengembangan Permodalan dan Kemitraan Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'FUBU0002', 'Analis Pemeliharaan Sarana dan Prasarana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'FUBU001', 'Penyusun Bahan Sarana dan Prasarana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'JFP00001', 'Analis Parameter Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'JFP00002', 'Pengadministrasi Bahan Kerjasama Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'JFP00004', 'Penyusun Bahan Sarana Program Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'JFP00005', 'Pengadministrasi Alat dan Obat Kontrasepsi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'JFU01001', 'Analis Administrasi Jabatan Fungsional', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'JFU01002', 'Analis Administrasi Pengawasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'JFU01003', 'Analis Administrasi Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'JFU01004', 'Analis Advokasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'JFU01005', 'Analis Advokasi dan Komunikasi, Informasi dan Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'JFU01006', 'Analis Advokasi, Penggerakan dan Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'JFU01007', 'Analis Akuntansi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'JFU01008', 'Analis Alat Kontrasepsi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'JFU01009', 'Analis Anggaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'JFU01010', 'Analis Arsip dan Dokumentasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'JFU01011', 'Analis Bahan Pelatihan dan Pengembangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'JFU01012', 'Analis Bahan Pelayanan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'JFU01013', 'Analis Berita dan Pendapat Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'JFU01014', 'Analis Bina Keluarga Balita, Anak dan Ketahanan Keluarga Lanjut Usia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'JFU01015', 'Analis Bina Keluarga Berencana Klinik Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'JFU01016', 'Analis Bina Keluarga Berencana Klinik Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'JFU01017', 'Analis Bina Keluarga Berencana Rumah Sakit Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'JFU01018', 'Analis Bina Keluarga Berencana Rumah Sakit Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'JFU01019', 'Analis Bina Kesertaan Keluarga Berencana Jalur  dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'JFU01020', 'Analis Bina Kesertaan Keluarga Berencana Jalur Pemerintah dan Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'JFU01021', 'Analis Bina Kesertaan Keluarga Berencana Jalur Wilayah dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'JFU01022', 'Analis Bina Ketahanan Balita, Keluarga dan Lansia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'JFU01023', 'Analis Bina Ketahanan Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'JFU01024', 'Analis Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'JFU01025', 'Analis Daftar Gaji', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'JFU01026', 'Analis Dampak Ekonomi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'JFU01027', 'Analis Dampak Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'JFU01028', 'Analis Dampak Politik, Pertahanan dan Keamanan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'JFU01029', 'Analis Dampak Sosial', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'JFU01030', 'Analis Data dan Dokumentasi Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'JFU01031', 'Analis Data dan Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'JFU01032', 'Analis Data Fasilitasi Pemaduan Kebijakan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'JFU01033', 'Analis Data Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'JFU01034', 'Analis Data Kependudukan dan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'JFU01035', 'Analis Data Perencanaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'JFU01036', 'Analis Data Profil dan Proyeksi Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'JFU01037', 'Analis Data Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'JFU01038', 'Analis Daya Dukung Lingkungan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'JFU01039', 'Analis Daya Tampung Lingkungan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'JFU01040', 'Analis Disiplin Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'JFU01041', 'Analis Dokumentasi dan Perpustakaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'JFU01042', 'Analis Dokumentasi Peraturan Perundang-Undangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'JFU01043', 'Analis Ekonomi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'JFU01044', 'Analis Evaluasi dan Pelaporan Fasilitasi Pemaduan Kebijakan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'JFU01045', 'Analis Evaluasi Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'JFU01046', 'Analis Evaluasi dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'JFU01047', 'Analis Evaluasi dan Pelaporan Advokasi, Komunikasi, Informasi dan Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'JFU01048', 'Analis Evaluasi dan Pelaporan Analisis Pemaduan Kebijakan Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'JFU01049', 'Analis Evaluasi dan Pelaporan Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'JFU01050', 'Analis Evaluasi dan Pelaporan Bina Ketahanan Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'JFU01051', 'Analis Evaluasi dan Pelaporan Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'JFU01052', 'Analis Evaluasi dan Pelaporan Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'JFU01053', 'Analis Evaluasi Data Profil dan Proyeksi Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'JFU01054', 'Analis Evaluasi Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'JFU01055', 'Analis Evaluasi Progam Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'JFU01056', 'Analis Evaluasi Sarana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'JFU01057', 'Analis Evaluasi Sasaran Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'JFU01058', 'Analis Evaluasi Sistem Pencatatan dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'JFU01059', 'Analis Hubungan Antar Lembaga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'JFU01060', 'Analis Hubungan Antar Lembaga dan Bina Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'JFU01061', 'Analis Hubungan Dengan Lembaga Pemerintah Provinsi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'JFU01062', 'Analis Hubungan Dengan Lembaga Pemerintah Pusat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'JFU01063', 'Analis Hubungan Kelembagaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'JFU01064', 'Analis Hubungan Masyarakat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'JFU01065', 'Analis Hubungan Media Massa', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'JFU01066', 'Analis Hukum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'JFU01067', 'Analis Informasi dan Peningkatan Teknologi Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'JFU01068', 'Analis Institusi dan Peran Serta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'JFU01069', 'Analis Institusi Masyarakat Pedesaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'JFU01070', 'Analis Jabatan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'JFU01071', 'Analis Jaminan Pelayanan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'JFU01072', 'Analis Jaminan Pelayanan Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'JFU01073', 'Analis Kebutuhan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'JFU01074', 'Analis Kebutuhan Alat Kontrasepsi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'JFU01075', 'Analis Kelangsungan Hidup Bayi dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'JFU01076', 'Analis Kelangsungan Hidup Ibu', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'JFU01077', 'Analis Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'JFU01078', 'Analis Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'JFU01079', 'Analis Kependudukan dan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'JFU01081', 'Analis Kerjasama dan Pengembangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'JFU01082', 'Analis Kerjasama Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'JFU01083', 'Analis Kerjasama Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'JFU01084', 'Analis Kerjasama Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'JFU01085', 'Analis Kesehatan Reproduksi Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'JFU01086', 'Analis Kesejahteraan Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'JFU01087', 'Analis Kesejahteraan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'JFU01088', 'Analis Ketahanan Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'JFU01089', 'Analis Keuangan dan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'JFU01090', 'Analis Keuangan dan Pengelolaan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'JFU01091', 'Analis Keuangan dan Perbekalan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'JFU01092', 'Analis Kompetensi Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'JFU01093', 'Analis Laporan Hasil Pemeriksaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'JFU01094', 'Analis Manajemen Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'JFU01095', 'Analis Manajemen Perkantoran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'JFU01096', 'Analis Media Massa', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'JFU01097', 'Analis Mekanisme Operasional Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'JFU01098', 'Analis Monitoring Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'JFU01099', 'Analis Monitoring Bina Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'JFU01100', 'Analis Monitoring Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'JFU01101', 'Analis Monitoring dan Evaluasi Institusi Masyarakat Pedesaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'JFU01102', 'Analis Monitoring dan Evaluasi Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'JFU01103', 'Analis Monitoring dan Evaluasi Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'JFU01104', 'Analis Monitoring dan Evaluasi Mekanisme Operasional Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'JFU01105', 'Analis Monitoring dan Evaluasi Pelayanan Keluarga Berencana Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'JFU01106', 'Analis Monitoring dan Evaluasi Pelayanan Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'JFU01107', 'Analis Monitoring dan Evaluasi Sistem Pencatatan dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'JFU01108', 'Analis Monitoring dan Evaluasi Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'JFU01109', 'Analis Mutasi Jabatan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'JFU01110', 'Analis Organisasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'JFU01111', 'Analis Pangkat dan Gaji Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'JFU01112', 'Analis Pelaksanaan Anggaran Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'JFU01113', 'Analis Pelaksanaan Anggaran Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'JFU01114', 'Analis Pelaksanaan Anggaran Penunjang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'JFU01115', 'Analis Pelaporan dan Statistik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'JFU01116', 'Analis Pelatihan dan Pengembangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'JFU01117', 'Analis Pelembagaan Bina Ketahanan Remaja Jalur Masyarakat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'JFU01118', 'Analis Pelembagaan Bina Ketahanan Remaja Jalur Pendidikan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'JFU01119', 'Analis Pemanfaatan Hasil Penelitian', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'JFU01120', 'Analis Pemanfaatan Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'JFU01121', 'Analis Pemanfaatan Profil dan Proyeksi Pengendalian Pendidikan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'JFU01122', 'Analis Pemasaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'JFU01123', 'Analis Pembakuan dan Sarana Kerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'JFU01124', 'Analis Pemberdayaan Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'JFU01125', 'Analis Pemberdayaan Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'JFU01126', 'Analis Pemeliharaan Infrastruktur Teknologi Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'JFU01127', 'Analis Penanggulangan Infertilitas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'JFU01128', 'Analis Penatausahaan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'JFU01129', 'Analis Penatausahaan Pengelolaan Sarana Prgram', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'JFU01130', 'Analis Pencegahan HIV dan AIDS', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'JFU01131', 'Analis Pencegahan Kanker Alat Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'JFU01132', 'Analis Pencegahan Penyakit Menular Seksual', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'JFU01133', 'Analis Pencitraan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'JFU01134', 'Analis Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'JFU01135', 'Analis Pendidikan dan Pelatihan Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'JFU01136', 'Analis Penelitian dan Pengembangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'JFU01137', 'Analis Penetapan Parameter Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'JFU01138', 'Analis Penetapan Sasaran Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'JFU01139', 'Analis Pengadaan Barang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'JFU01140', 'Analis Pengangkatan dan Pemberhentian Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'JFU01141', 'Analis Pengelolaan Bank Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'JFU01142', 'Analis Pengelolaan Situs Media Konferensi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'JFU01143', 'Analis Pengembangan Admintrasi dan Keuangan Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'JFU01144', 'Analis Pengembangan Akseptor', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'JFU01145', 'Analis Pengembangan Hubungan Dengan Lembaga Non Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'JFU01146', 'Analis Pengembangan Hubungan Dengan Lembaga Pemerintah Kabupaten/Kota', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'JFU01147', 'Analis Pengembangan Indikator Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'JFU01148', 'Analis Pengembangan Infrastruktur TI', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'JFU01149', 'Analis Pengembangan Institusi Masyarakat Pedesaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'JFU01150', 'Analis Pengembangan Karir Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'JFU01151', 'Analis Pengembangan Kelompok Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'JFU01152', 'Analis Pengembangan Kelompok Bina Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'JFU01153', 'Analis Pengembangan Kemitraan Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'JFU01154', 'Analis Pengembangan Kemitran Bina Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'JFU01155', 'Analis Pengembangan Materi Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'JFU01156', 'Analis Pengembangan Materi Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'JFU01157', 'Analis Pengembangan Mekanisme Operasional Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'JFU01158', 'Analis Pengembangan Permodalan dan Kemitraan Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'JFU01159', 'Analis Pengembangan Program Bina Keluarga Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'JFU01160', 'Analis Pengembangan Program Bina Keluarga Balita', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'JFU01161', 'Analis Pengembangan Program Bina Ketahanan Keluarga Lansia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'JFU01162', 'Analis Pengembangan Program Bina Ketahanan Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'JFU01163', 'Analis Pengembangan Program Bina Ketahanan Keluarga Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'JFU01164', 'Analis Pengembangan Program Bina Ketahanan Remaja Jalur Masyarakat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'JFU01165', 'Analis Pengembangan Program Bina Ketahanan Remaja Jalur Pendidikan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'JFU01166', 'Analis Pengembangan Sistem Aplikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'JFU01167', 'Analis Pengembangan Sistem Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'JFU01168', 'Analis Pengembangan Sistem Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'JFU01169', 'Analis Pengembangan Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'JFU01170', 'Analis Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'JFU01171', 'Analis Penggerakan Advokasi dan Komunikasi, Informasi dan Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'JFU01172', 'Analis Pengolahan Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'JFU01173', 'Analis Penguatan Hubungan Dengan Lembaga Non Pmrintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'JFU01174', 'Analis Penguatan Hubungan Dengan Lembaga Pemerintah Kabupaten/Kota', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'JFU01175', 'Analis Pengumpulan dan Pengolahan Data Analis Pemaduan Kebijakan Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'JFU01176', 'Analis Pengumpulan Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'JFU01177', 'Analis Penilaian Kinerja Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'JFU01178', 'Analis Peningkatan Akses Keluarga Berencana Pria', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'JFU01179', 'Analis Peningkatan Akses Pelayanan Keluarga Berencana Wilayah Miskin Perkotaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'JFU01180', 'Analis Peningkatan Akses Pelayanan Keluarga Berencana Wilayah Tertinggal, Terpencil dan Perbatasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'JFU01181', 'Analis Peningkatan Kualitas Pelayanan Keluarga Berencana Tertinggal, Terpencil dan Perbatasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'JFU01182', 'Analis Peningkatan Kualitas Pelayanan Keluarga Berencana Wilayah Miskin Perkotaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'JFU01183', 'Analis Peningkatan Partisipasi Keluarga Berencana Pria', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'JFU01184', 'Analis Penyediaan Sarana Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(303, 'JFU01185', 'Analis Penyediaan Sarana Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'JFU01186', 'Analis Penyelenggaraan dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'JFU01187', 'Analis Penyelenggaraan Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'JFU01188', 'Analis Penyiapan Fasilitasi Pemaduan Kebijakan Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'JFU01190', 'Analis Penyusunan Parameter Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'JFU01191', 'Analis Penyusunan Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'JFU01192', 'Analis Penyusunan Program Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'JFU01193', 'Analis Peraturan Perundang-Undangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(311, 'JFU01194', 'Analis Perbendaharaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(312, 'JFU01195', 'Analis Perencanaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(313, 'JFU01196', 'Analis Perencanaan Advokasi dan Komunikasi, Informasi dan Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(314, 'JFU01197', 'Analis Perencanaan Anggaran Keluarga Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(315, 'JFU01198', 'Analis Perencanaan Anggaran Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(316, 'JFU01199', 'Analis Perencanaan Anggaran Penunjang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'JFU01200', 'Analis Perencanaan dan Pemasaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'JFU01201', 'Analis Perencanaan dan Pengadaan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'JFU01202', 'Analis Perencanaan Kebutuhan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'JFU01203', 'Analis Perencanaan Kebutuhan Sarana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'JFU01204', 'Analis Perencanaan Kerjasama Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'JFU01205', 'Analis Perencanaan Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'JFU01206', 'Analis Perencanaan Program dan Anggaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'JFU01207', 'Analis Perencanaan Program Pengendalian Penduduk, Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'JFU01208', 'Analis Perencanaan Program Penunjang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'JFU01209', 'Analis Pertahanan dan Keamanan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(327, 'JFU01210', 'Analis Perumusan Pola Sistem Pencatatan dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'JFU01211', 'Analis Politik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(329, 'JFU01212', 'Analis Program dan Kerjasama', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'JFU01213', 'Analis Program Kependudukan dan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'JFU01214', 'Analis Program Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'JFU01215', 'Analis Promosi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'JFU01216', 'Analis Protokol', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'JFU01217', 'Analis Publikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'JFU01218', 'Analis Rumah Tangga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'JFU01219', 'Analis Sarana Produksi Media Komunikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'JFU01220', 'Analis Sarana Program Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'JFU01221', 'Analis Sosial', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'JFU01222', 'Analis Spesifikasi Barang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(340, 'JFU01223', 'Analis Standarisasi Pelayanan Keluarga Berencana Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(341, 'JFU01224', 'Analis Standarisasi Pelayanan Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(342, 'JFU01225', 'Analis Tata Laksana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'JFU01226', 'Analis Tata Operasional', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(344, 'JFU01227', 'Analis Tata Usaha', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'JFU01228', 'Analis Tata Usaha Pimpinan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(346, 'JFU01229', 'Analis Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(347, 'JFU01230', 'Analis Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(348, 'JFU01231', 'Analis Umum dan Humas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(349, 'JFU01232', 'Analis Verifikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(350, 'JFU01233', 'Analis Program/Perencanaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(351, 'JFU01234', 'Analis Analisis dan Evaluasi Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(352, 'JFU01235', 'Analis Dokumen Perencanaan Advokasi dan KIE', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(353, 'JFU01236', 'Analis Bahan Bina Kesertaan KB Jalur Wilayah dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(354, 'JFU01237', 'Analis Pemeliharaan Peralatan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(355, 'JFU02001', 'Bendahara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'JFU02002', 'Pembantu Bendahara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(357, 'JFU03001', 'Calon Analis Kepegawaian Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(358, 'JFU03002', 'Calon Analis Kepegawaian Terampil', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(359, 'JFU03003', 'Calon Arsiparis Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(360, 'JFU03004', 'Calon Peneliti Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(361, 'JFU03005', 'Calon Pranata Humas Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(362, 'JFU03007', 'Calon Auditor Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(363, 'JFU03009', 'Calon Arsiparis Terampil', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(364, 'JFU03010', 'Calon Peneliti Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(365, 'JFU03011', 'Calon Pranata Humas Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(366, 'JFU03012', 'Calon Pustakawan Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(367, 'JFU03013', 'Calon Pustakawan Terampil', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'JFU03014', 'Calon Statistisi Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(369, 'JFU03015', 'Calon Widyaiswara Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'JFU04001', 'Pemelihara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(371, 'JFU04002', 'Pemelihara Administrasi Gudang dan Alat Kontrasepsi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(372, 'JFU04003', 'Pemelihara Arsip Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(373, 'JFU04004', 'Pemelihara Bahan Keuangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(374, 'JFU04005', 'Pemelihara Bangunan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(375, 'JFU04006', 'Pemelihara Barang Inventaris Kantor', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(376, 'JFU04007', 'Pemelihara Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(377, 'JFU04008', 'Pemelihara Barang Operasional Diklat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(378, 'JFU04009', 'Pemelihara Dokumen dan Administrasi Kerjasama Pendidikan dan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(379, 'JFU04010', 'Pemelihara Dokumen dan Administrasi Keuangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(380, 'JFU04011', 'Pemelihara Dokumen dan Administrasi Penetapan Parameter Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(381, 'JFU04012', 'Pemelihara Dokumen dan Administrasi Tata Operasional Pelatihan Pengembangangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(382, 'JFU04013', 'Pemelihara Dokumen dan Administrasi Umum dan Humas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(383, 'JFU04014', 'Pemelihara Dokumen Peralatan Advokasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'JFU04015', 'Pemelihara Dokumen, Peralatan dan Aplikasi Kediklatan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'JFU04016', 'Pemelihara Instalasi Air', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'JFU04017', 'Pemelihara Instalasi Listrik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'JFU04018', 'Pemelihara Kendaraan Dinas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'JFU04019', 'Pemelihara Mobil Unit Penerangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'JFU04020', 'Pemelihara Peralatan Kantor', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'JFU04021', 'Pemelihara Peralatan Teknologi Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'JFU04022', 'Pemelihara Perlengkapan Kendaraan Bermotor', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'JFU04023', 'Pemelihara Persuratan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'JFU04024', 'Pemelihara Program Komputer', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'JFU04025', 'Pemelihara Situs BKKBN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'JFU04026', 'Pemelihara Sound System', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'JFU04027', 'Pemelihara Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'JFU04028', 'Pemelihara Umum dan Humas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'JFU04029', 'Pemelihara Data Evaluasi dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(399, 'JFU04030', 'Pemelihara Data Monitoring dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'JFU04031', 'Pemelihara Data Monitoring dan Evaluasi PKB/PLKB', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'JFU04032', 'Pemelihara Data Pengembangan Permodalan dan Kemitraan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(402, 'JFU04033', 'Pemelihara Data Profil dan Proyeksi Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'JFU04034', 'Pemelihara Data Program Bina Ketahanan Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'JFU04035', 'Pemelihara Dokumen Administrasi Pengawasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'JFU04036', 'Pemelihara Dokumen Analisis Politik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'JFU04037', 'Pemelihara Dokumen Bina KB Klinik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'JFU04038', 'Pemelihara Dokumen Hasil Penelitian', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(408, 'JFU04039', 'Pemelihara Dokumen Hubungan Antar Lembaga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(409, 'JFU04040', 'Pemelihara Dokumen Hukum dan Perundang-Undangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(410, 'JFU04041', 'Pemelihara Dokumen Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(411, 'JFU04042', 'Pemelihara Dokumen Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'JFU04043', 'Pemelihara Dokumen Monitoring dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(413, 'JFU04044', 'Pemelihara Dokumen Organisasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(414, 'JFU04045', 'Pemelihara Dokumen Pelaksanaan Anggaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'JFU04046', 'Pemelihara Dokumen Pemaduan Kebijakan Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(416, 'JFU04047', 'Pemelihara Dokumen Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(417, 'JFU04048', 'Pemelihara Dokumen Pengembangan Materi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'JFU04049', 'Pemelihara Dokumen Penyelenggaraan dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'JFU04050', 'Pemelihara Dokumen Penyelenggaraan Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'JFU04051', 'Pemelihara Dokumen Perencanaan Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'JFU04052', 'Pemelihara Dokumen Perpustakaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'JFU04053', 'Pemelihara Dokumen Program Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(423, 'JFU04054', 'Pemelihara Dokumen Promosi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'JFU04055', 'Pemelihara Dokumen Protokol', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'JFU04056', 'Pemelihara Dokumen Tata Laksana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'JFU04057', 'Pemelihara Dokumen Tata Usaha', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'JFU04058', 'Pemelihara Dokumen Verifikasi ', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'JFU04059', 'Pemelihara Sarana dan Prasarana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'JFU04060', 'Pemelihara Sarana Pelayanan KB', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'JFU04061', 'Pemelihara Bahan Penguatan Hubungan dengan Lembaga Non Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'JFU05001', 'Pengadministrasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'JFU05002', 'Pengadministrasi Bahan Advokasi dan Komunikasi, Informasi dan Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'JFU05003', 'Pengadministrasi Analis Dampak Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'JFU05004', 'Pengadministrasi Bahan Bina Keluarga Balita, Anak dan Lanjut Usia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'JFU05005', 'Pengadministrasi Bahan Keluarga Berencana Jalur Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'JFU05006', 'Pengadministrasi Bahan Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'JFU05007', 'Pengadministrasi Bahan Materi Jalur Pendidikan Formal, Nonformal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(438, 'JFU05008', 'Pengadministrasi Bahan Penetapan Parameter Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'JFU05009', 'Pengadministrasi Bina Keluarga Berencana Klinik Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'JFU05010', 'Pengadministrasi Bina Kesertaan Keluarga Berencana Jalur Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'JFU05011', 'Pengadministrasi Bina Kesertaan Keluarga Berencana Jalur Wilayah dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'JFU05012', 'Pengadministrasi Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'JFU05013', 'Pengadministrasi Data dan Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'JFU05014', 'Pengadministrasi Evaluasi dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'JFU05015', 'Pengadministrasi Gudang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'JFU05016', 'Pengadministrasi Hubungan Antar Lembaga dan Bina Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(447, 'JFU05017', 'Pengadministrasi Keuangan dan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'JFU05018', 'Pengadministrasi Pemberdayaan Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'JFU05019', 'Pengadministrasi Pengawasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(450, 'JFU05020', 'Pengadministrasi Penyelenggaraan dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(451, 'JFU05021', 'Pengadministrasi Perjalanan Dinas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(452, 'JFU05022', 'Pengadministrasi Program dan Kerjasama', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(453, 'JFU05023', 'Pengadministrasi Tata Operasional', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(454, 'JFU05024', 'Pengadministrasi Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(455, 'JFU05025', 'Pengadministrasi Umum dan Humas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(456, 'JFU05026', 'Pengadministrasi Bina Keluarga Berencana Rumah Sakit Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'JFU05027', 'Pengadministrasi Bahan Program Bina Ketahanan Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(458, 'JFU05028', 'Pengadministrasi Bahan Rumah Tangga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'JFU05029', 'Pengadministrasi Data Pengembangan Administrasi dan Keuangan Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'JFU05030', 'Pengadministrasi Dokumen BKB dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'JFU05031', 'Pengadministrasi Dokumen Rumah Tangga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'JFU05032', 'Pengadministrasi Bahan Penyelenggaraan dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'JFU06001', 'Pengelola Barang Inventaris', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'JFU07001', 'Pengemudi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(465, 'JFU08001', 'Pengevaluasi Bahan Analis Dampak Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(466, 'JFU08002', 'Pengevaluasi Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(467, 'JFU08003', 'Pengevaluasi Kegiatan Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(468, 'JFU08004', 'Pengevaluasi Mekanisme Operasional Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(469, 'JFU08005', 'Pengevaluasi Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(470, 'JFU08006', 'Pengevaluasi Penyelenggaraan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(471, 'JFU08007', 'Pengevaluasi Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(472, 'JFU08008', 'Pengevaluasi Pemeliharaan Bangunan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(473, 'JFU08009', 'Pengevaluasi Persuratan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(474, 'JFU09001', 'Penyusun Anggaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(475, 'JFU09002', 'Penyusun Bahan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(476, 'JFU09003', 'Penyusun Bahan Administrasi Pengawasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(477, 'JFU09004', 'Penyusun Bahan Administrasi Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(478, 'JFU09005', 'Penyusun Bahan Admnstrasi Jabatan Fungsional', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(479, 'JFU09006', 'Penyusun Bahan Advokasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(480, 'JFU09007', 'Penyusun Bahan Advokasi Bahan Komunikasi Informasi Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(481, 'JFU09008', 'Penyusun Bahan Advokasi dan Komunikasi Informasi Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(482, 'JFU09009', 'Penyusun Bahan Akuntansi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(483, 'JFU09010', 'Penyusun Bahan Analisis Dampak Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(484, 'JFU09011', 'Penyusun Bahan Arsip dan Dokumentasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(485, 'JFU09012', 'Penyusun Bahan Berita dan Pendapat Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(486, 'JFU09013', 'Penyusun Bahan Bina Keluarga Balita, Anak dan Ketahanan Lanjut Usia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(487, 'JFU09014', 'Penyusun Bahan Bina Keluarga Balita, Anak dan Ketahanan Lansia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(488, 'JFU09015', 'Penyusun Bahan Bina Keluarga Berencana Klinik Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(489, 'JFU09016', 'Penyusun Bahan Bina Keluarga Berencana Klinik Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(490, 'JFU09017', 'Penyusun Bahan Bina Keluarga Berencana Rumah Sakit Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(491, 'JFU09018', 'Penyusun Bahan Bina Keluarga Berencana Rumah Sakit Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(492, 'JFU09019', 'Penyusun Bahan Bina Keluarga Sejahterartaan Keluarga Berencana Jalur Pemerintah dan Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(493, 'JFU09020', 'Penyusun Bahan Bina Keluarga Sejahterartaan Keluarga Berencana Jalur Wilayah dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jabatan` (`hid`, `kode_jab`, `jabatan`, `jenis_jab`, `creation_date`, `created_by`, `updated_date`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(494, 'JFU09021', 'Penyusun Bahan Bina Kesehatan Keluarga Berencana Jalur Pemerintah dan Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(495, 'JFU09022', 'Penyusun Bahan Bina Ketahanan Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(496, 'JFU09023', 'Penyusun Bahan Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(497, 'JFU09024', 'Penyusun Bahan Bina Keluarga Balita, Anak dan Ketahanan Keluarga Lansia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(498, 'JFU09025', 'Penyusun Bahan Dampak Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(499, 'JFU09026', 'Penyusun Bahan Dampak Politik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(500, 'JFU09027', 'Penyusun Bahan dan Pemantauan Evaluasi Diklat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(501, 'JFU09028', 'Penyusun Bahan Data dan Dokumentasi Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(502, 'JFU09029', 'Penyusun Bahan Data dan Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(503, 'JFU09030', 'Penyusun Bahan Data Perencanaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(504, 'JFU09031', 'Penyusun Bahan Data Profil dan Proyeksi Keluarga Sejahtera Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(505, 'JFU09032', 'Penyusun Bahan Daya Dukung Lingkungan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(506, 'JFU09033', 'Penyusun Bahan Daya Tampung Lingkungan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(507, 'JFU09034', 'Penyusun Bahan Disiplin Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(508, 'JFU09035', 'Penyusun Bahan Dokumentasi  dan  Perpustakaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(509, 'JFU09036', 'Penyusun Bahan Dokumentasi Peraturan Perundang-Undangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(510, 'JFU09037', 'Penyusun Bahan Ekonomi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(511, 'JFU09038', 'Penyusun Bahan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(512, 'JFU09039', 'Penyusun Bahan Evaluasi Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(513, 'JFU09040', 'Penyusun Bahan Evaluasi dan Laporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(514, 'JFU09041', 'Penyusun Bahan Evaluasi dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(515, 'JFU09042', 'Penyusun Bahan Evaluasi dan Pelaporan Advokasi dan Komunikasi, Informasi, Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(516, 'JFU09043', 'Penyusun Bahan Evaluasi dan Pelaporan Analisis Pemaduan Kebijakan Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(517, 'JFU09044', 'Penyusun Bahan Evaluasi dan Pelaporan Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(518, 'JFU09045', 'Penyusun Bahan Evaluasi dan Pelaporan Bina Ketahanan Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(519, 'JFU09046', 'Penyusun Bahan Evaluasi dan Pelaporan Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(520, 'JFU09047', 'Penyusun Bahan Evaluasi dan Pelaporan Fasilitasi Pemaduan Kebijakan Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(521, 'JFU09048', 'Penyusun Bahan Evaluasi dan Pelaporan, Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(522, 'JFU09049', 'Penyusun Bahan Evaluasi Data Profil dan Proyeksi Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(523, 'JFU09050', 'Penyusun Bahan Evaluasi Data Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(524, 'JFU09051', 'Penyusun Bahan Evaluasi Kesetaraan Jender', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(525, 'JFU09052', 'Penyusun Bahan Evaluasi Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(526, 'JFU09053', 'Penyusun Bahan Evaluasi Lingkungan Kerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(527, 'JFU09054', 'Penyusun Bahan Evaluasi Program Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(528, 'JFU09055', 'Penyusun Bahan Evaluasi Program Keluarga Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(529, 'JFU09056', 'Penyusun Bahan Evaluasi Sarana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(530, 'JFU09057', 'Penyusun Bahan Evaluasi Sasaran Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(531, 'JFU09058', 'Penyusun Bahan Hubungan Antar Lembaga dan Bina Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(532, 'JFU09059', 'Penyusun Bahan Hubungan Degan Lmbaga Pmrintah Provinsi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(533, 'JFU09060', 'Penyusun Bahan Hubungan Dengan Lembaga Pemerintah Pusat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(534, 'JFU09061', 'Penyusun Bahan Hubungan Media Massa', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(535, 'JFU09062', 'Penyusun Bahan Hukum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(536, 'JFU09063', 'Penyusun Bahan Informasi dan Peningkatan Teknologi Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(537, 'JFU09064', 'Penyusun Bahan Informasi dan Penerangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(538, 'JFU09065', 'Penyusun Bahan Jaminan Pelayanan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(539, 'JFU09066', 'Penyusun Bahan Jaminan Pelayanannan Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(540, 'JFU09067', 'Penyusun Bahan Kebijakan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(541, 'JFU09068', 'Penyusun Bahan Kebijakan Keluarga Berencana/Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(542, 'JFU09069', 'Penyusun Bahan Kebijakan Kesehatan Ibu dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(543, 'JFU09070', 'Penyusun Bahan Kebijakan Partisipasi Program Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(544, 'JFU09071', 'Penyusun Bahan Kebijakan Peraturan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(545, 'JFU09072', 'Penyusun Bahan Kebijakan Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(546, 'JFU09073', 'Penyusun Bahan Kebijakan Programram Keluarga Berencana Pria', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(547, 'JFU09074', 'Penyusun Bahan Kelangsungan Hidup Bayi dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(548, 'JFU09075', 'Penyusun Bahan Kelangsungan Hidup Ibu', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(549, 'JFU09076', 'Penyusun Bahan Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(550, 'JFU09077', 'Penyusun Bahan Kepegawaian dan Hukum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(551, 'JFU09078', 'Penyusun Bahan Kerjasama Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(552, 'JFU09079', 'Penyusun Bahan Kerjasama Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(553, 'JFU09080', 'Penyusun Bahan Kerjasama Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(554, 'JFU09081', 'Penyusun Bahan Kerjasama Penelitian dan Pengembangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(555, 'JFU09082', 'Penyusun Bahan Kerjasama Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(556, 'JFU09083', 'Penyusun Bahan Kesehatan Reproduksi Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(557, 'JFU09084', 'Penyusun Bahan Kesejahteraan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(558, 'JFU09085', 'Penyusun Bahan Keuangan dan BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(559, 'JFU09086', 'Penyusun Bahan Keuangan dan Pengelolaan BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(560, 'JFU09087', 'Penyusun Bahan Kompetensi Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(561, 'JFU09088', 'Penyusun Bahan Komunikasi Informasi Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(562, 'JFU09089', 'Penyusun Bahan Konseling', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(563, 'JFU09090', 'Penyusun Bahan Kurikulum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(564, 'JFU09091', 'Penyusun Bahan Metode Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(565, 'JFU09092', 'Penyusun Bahan Monitoring Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(566, 'JFU09093', 'Penyusun Bahan Monitoring Bina Keluarga Lansia  dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(567, 'JFU09094', 'Penyusun Bahan Monitoring Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(568, 'JFU09095', 'Penyusun Bahan Monitoring dan Evaluasi Institusi Masyarakat Pedesaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(569, 'JFU09096', 'Penyusun Bahan Monitoring dan Evaluasi Jalur Pendidikan Nonformal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(570, 'JFU09097', 'Penyusun Bahan Monitoring dan Evaluasi Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(571, 'JFU09098', 'Penyusun Bahan Monitoring dan Evaluasi Mekanisme Operasional Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(572, 'JFU09099', 'Penyusun Bahan Monitoring dan Evaluasi Pelayanan Keluarga Berencana Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(573, 'JFU09100', 'Penyusun Bahan Monitoring dan Evaluasi Pelayanan Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(574, 'JFU09101', 'Penyusun Bahan Monitoring dan Evaluasi Sistem Pencatatan dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(575, 'JFU09102', 'Penyusun Bahan Monitoring dan Evaluasi Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(576, 'JFU09103', 'Penyusun Bahan Mutasi Jabatan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(577, 'JFU09104', 'Penyusun Bahan Organisasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(578, 'JFU09105', 'Penyusun Bahan Pangkat dan Gaji Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(579, 'JFU09106', 'Penyusun Bahan Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(580, 'JFU09107', 'Penyusun Bahan Pegembangan Program Bina Ketahanan Keluarga Lanjut Usia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(581, 'JFU09108', 'Penyusun Bahan Pegembangan Sistem Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(582, 'JFU09109', 'Penyusun Bahan Pegembangan Sistm Jalur Pendidikan Nonformal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(583, 'JFU09110', 'Penyusun Bahan Pegmbangan Pemodalan dan Kemitraan Kelompok Usaha Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(584, 'JFU09111', 'Penyusun Bahan Pelaksana Anggaran Kebutuhan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(585, 'JFU09112', 'Penyusun Bahan Pelaksana Anggaran Penunjang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(586, 'JFU09113', 'Penyusun Bahan Pelaksanaan Anggaran Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(587, 'JFU09114', 'Penyusun Bahan Pelaksanaan Anggaran Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(588, 'JFU09115', 'Penyusun Bahan Pelaporan dan Statistik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(589, 'JFU09116', 'Penyusun Bahan Pelatihan dan Pengembangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(590, 'JFU09117', 'Penyusun Bahan Pelatihan Internasional', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(591, 'JFU09118', 'Penyusun Bahan Pelembagaan Bina Ketahanan Remaja Jalur Masyarakat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(592, 'JFU09119', 'Penyusun Bahan Pelembagaan Bina Ketahanan Remaja Jalur Pendidikan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(593, 'JFU09120', 'Penyusun Bahan Pemanfaatan Hasil Penelitian', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(594, 'JFU09121', 'Penyusun Bahan Pemanfaatan Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(595, 'JFU09122', 'Penyusun Bahan Pemanfaatan Profil dan Proyeksi Pengembangan Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(596, 'JFU09123', 'Penyusun Bahan Pembakuan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(597, 'JFU09124', 'Penyusun Bahan Pemberdayaan Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(598, 'JFU09125', 'Penyusun Bahan Pembinaan Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(599, 'JFU09126', 'Penyusun Bahan Pembinaan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(600, 'JFU09127', 'Penyusun Bahan Pemeliharaan Infrastruktur TI', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(601, 'JFU09128', 'Penyusun Bahan Penanggulangan Infertilitas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(602, 'JFU09129', 'Penyusun Bahan Penata Usahaan BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(603, 'JFU09130', 'Penyusun Bahan Penatausahaan Pengelolaan Sarana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(604, 'JFU09131', 'Penyusun Bahan Pencegahan HIV/AIDS', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(605, 'JFU09132', 'Penyusun Bahan Pencegahan Kanker Alat Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(606, 'JFU09133', 'Penyusun Bahan Pencegahan Penyakit Menular Seks', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(607, 'JFU09134', 'Penyusun Bahan Pencitraan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(608, 'JFU09135', 'Penyusun Bahan Pendidikan dan Pelatihan Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(609, 'JFU09136', 'Penyusun Bahan Penetapan Parameter Kependuduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(610, 'JFU09137', 'Penyusun Bahan Penetapan Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(611, 'JFU09138', 'Penyusun Bahan Penetapan Sasaran Parameter Pengendalian Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(612, 'JFU09139', 'Penyusun Bahan Pengangkatan dan Pemberhentian Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(613, 'JFU09140', 'Penyusun Bahan Pengelolaan Bank Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(614, 'JFU09141', 'Penyusun Bahan Pengembangan Admntrasi dan Keuangan Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(615, 'JFU09142', 'Penyusun Bahan Pengembangan Hubungan Degan Lembaga Pemeritah Kabupaten / Kota', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(616, 'JFU09143', 'Penyusun Bahan Pengembangan Hubungan Dengan Lembaga Non Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(617, 'JFU09144', 'Penyusun Bahan Pengembangan Indikator Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(618, 'JFU09145', 'Penyusun Bahan Pengembangan Infrasruktur TI', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(619, 'JFU09146', 'Penyusun Bahan Pengembangan Institusi Masyarakat Pedesaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(620, 'JFU09147', 'Penyusun Bahan Pengembangan Karir Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(621, 'JFU09148', 'Penyusun Bahan Pengembangan Kelompok Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(622, 'JFU09149', 'Penyusun Bahan Pengembangan Keluarga Bina Ketahanan Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(623, 'JFU09150', 'Penyusun Bahan Pengembangan Kemitraan Bina Ketahanan Keluarga Lansia  dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(624, 'JFU09151', 'Penyusun Bahan Pengembangan Materi Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(625, 'JFU09152', 'Penyusun Bahan Pengembangan Materi Jalur Pendidikan Nonformal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(626, 'JFU09153', 'Penyusun Bahan Pengembangan Mekanisme Operasional Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(627, 'JFU09154', 'Penyusun Bahan Pengembangan Pemasaran Kelompok Usha Ekonomi Kelurga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(628, 'JFU09155', 'Penyusun Bahan Pengembangan Progam Bina Ketahanan Remaja Jalur Pendidikan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(629, 'JFU09156', 'Penyusun Bahan Pengembangan Program Bina Keluarga Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(630, 'JFU09157', 'Penyusun Bahan Pengembangan Program Bina Keluarga Balita', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(631, 'JFU09158', 'Penyusun Bahan Pengembangan Program Bina Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(632, 'JFU09159', 'Penyusun Bahan Pengembangan Program Bina Ketahanan Keluarga Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(633, 'JFU09160', 'Penyusun Bahan Pengembangan Program Bina Ketahanan Remaja Jalur Masyarakat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(634, 'JFU09161', 'Penyusun Bahan Pengembangan Sistem Aplikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(635, 'JFU09162', 'Penyusun Bahan Pengembangan Situs BKKBN dan Media Konferensi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(636, 'JFU09163', 'Penyusun Bahan Pengembangan Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(637, 'JFU09164', 'Penyusun Bahan Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(638, 'JFU09165', 'Penyusun Bahan Penggerakan Advokasi dan Komunikasi Informasi Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(639, 'JFU09166', 'Penyusun Bahan Pengolahan Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(640, 'JFU09167', 'Penyusun Bahan Pengolahan Informasi dan Dokumentasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(641, 'JFU09168', 'Penyusun Bahan Penguatan Hubungan Dengan Lembaga Non Pemeritah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(642, 'JFU09169', 'Penyusun Bahan Penguatan Hubungan Dengan Lembaga Pemerintah Kabupaten / Kota', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(643, 'JFU09170', 'Penyusun Bahan Pengumpul dan Pegolahan Data Analis Pemanduan Kebijakan Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(644, 'JFU09171', 'Penyusun Bahan Pengumpulan Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(645, 'JFU09172', 'Penyusun Bahan Peningkatan Akses Pelayanan Keluarga Berencana Wilayah Tertinggal Terpencil dan Perbatasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(646, 'JFU09173', 'Penyusun Bahan Penigkatan Akses Pelayanan Keluarga Berencana Wilayah Miskin Perbatasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(647, 'JFU09174', 'Penyusun Bahan Penigkatan Kualtas Pelayanan Keluarga Berencana Tertinggal Terpencil dan Perbatasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(648, 'JFU09175', 'Penyusun Bahan Penilaian Kinerja Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(649, 'JFU09176', 'Penyusun Bahan Peningkatan Akses Keluarga Berencana Pria', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(650, 'JFU09177', 'Penyusun Bahan Peningkatan Kualitas Pelayanan Keluarga Berencana Wilayah Miskin Perbatasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(651, 'JFU09178', 'Penyusun Bahan Peningkatan Kualitas Pelayanan Keluarga Berencana Wilayah Miskin Perkotaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(652, 'JFU09179', 'Penyusun Bahan Peningkatan Partisipasi Keluarga Berencana Pria', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(653, 'JFU09180', 'Penyusun Bahan Penyediaan Sarana Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(654, 'JFU09181', 'Penyusun Bahan Penyediaan Sarana Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(655, 'JFU09182', 'Penyusun Bahan Penyelenggaraan dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(656, 'JFU09183', 'Penyusun Bahan Penyelenggaraan Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(657, 'JFU09184', 'Penyusun Bahan Penyiapan Fasilitasi Pemaduan Kebijakan Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(658, 'JFU09185', 'Penyusun Bahan Penyiapan Program Kelompok Usaha Ekonomi Kelurga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(659, 'JFU09186', 'Penyusun Bahan Penyusunan Program ', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(660, 'JFU09187', 'Penyusun Bahan Perangkat Tata Laksana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(661, 'JFU09188', 'Penyusun Bahan Perbendaharaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(662, 'JFU09189', 'Penyusun Bahan Perecanaan Anggaran Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(663, 'JFU09190', 'Penyusun Bahan Perecanaan Anggaran Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(664, 'JFU09191', 'Penyusun Bahan Perecanaan Program Pengendalian Penduduk, Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(665, 'JFU09192', 'Penyusun Bahan Perencanaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(666, 'JFU09193', 'Penyusun Bahan Perencanaan Advokasi dan Komunikasi Informasi Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(667, 'JFU09194', 'Penyusun Bahan Perencanaan Anggaran Penunjang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(668, 'JFU09195', 'Penyusun Bahan Perencanaan dan Pemasaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(669, 'JFU09196', 'Penyusun Bahan Perencanaan dan Pengadaan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(670, 'JFU09197', 'Penyusun Bahan Perencanaan Kebutuhan BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(671, 'JFU09198', 'Penyusun Bahan Perencanaan Kebutuhan Sarana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(672, 'JFU09199', 'Penyusun Bahan Perencanaan Kerjasama Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(673, 'JFU09200', 'Penyusun Bahan Perencanaan Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(674, 'JFU09201', 'Penyusun Bahan Perencanaan Program Penunjang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(675, 'JFU09202', 'Penyusun Bahan Pertahanan dan Keamanan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(676, 'JFU09203', 'Penyusun Bahan Perumusan Pola Sistem Pencatatan dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(677, 'JFU09204', 'Penyusun Bahan Perundang-Undangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(678, 'JFU09205', 'Penyusun Bahan Politik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(679, 'JFU09206', 'Penyusun Bahan Program dan Kerjasama', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(680, 'JFU09207', 'Penyusun Bahan Program dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(681, 'JFU09208', 'Penyusun Bahan Program Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(682, 'JFU09209', 'Penyusun Bahan Promosi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(683, 'JFU09210', 'Penyusun Bahan Protokol', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(684, 'JFU09211', 'Penyusun Bahan Publikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(685, 'JFU09212', 'Penyusun Bahan Rencana Ketrampilan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(686, 'JFU09213', 'Penyusun Bahan Rencana Pengembangan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(687, 'JFU09214', 'Penyusun Bahan Rencana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(688, 'JFU09215', 'Penyusun Bahan Rencana Tenaga Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(689, 'JFU09216', 'Penyusun Bahan Sarana Produksi Media Komunikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(690, 'JFU09217', 'Penyusun Bahan Sosial', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(691, 'JFU09218', 'Penyusun Bahan Standarisasi Kerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(692, 'JFU09219', 'Penyusun Bahan Standarisasi Pelayanan Keluarga Berencana Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(693, 'JFU09220', 'Penyusun Bahan Standarisasi Pelayanan Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(694, 'JFU09221', 'Penyusun Bahan Tata Laksana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(695, 'JFU09222', 'Penyusun Bahan Tata Operasional', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(696, 'JFU09223', 'Penyusun Bahan Tata Usaha', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(697, 'JFU09224', 'Penyusun Bahan Tata Usaha Pimpinan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(698, 'JFU09225', 'Penyusun Bahan Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(699, 'JFU09226', 'Penyusun Bahan Ujian Dinas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(700, 'JFU09227', 'Penyusun Bahan Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(701, 'JFU09228', 'Penyusun Bahan Umum dan Humas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(702, 'JFU09229', 'Penyusun Bahan Verifikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(703, 'JFU09230', 'Penyusun Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(704, 'JFU09231', 'Penyusun Data Advokasi Hak-Hak Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(705, 'JFU09232', 'Penyusun Data Evaluasi Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(706, 'JFU09233', 'Penyusun Data Hasil Penelitian Keluarga Berencana / Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(707, 'JFU09234', 'Penyusun Data Hasil Penelitian Keluarga Sejahtera / Pemberdayaan Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(708, 'JFU09235', 'Penyusun Data Kebutuhan Barang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(709, 'JFU09236', 'Penyusun Data Kelahiran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(710, 'JFU09237', 'Penyusun Data Kesehatan Sexual', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(711, 'JFU09238', 'Penyusun Data Keuangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(712, 'JFU09239', 'Penyusun Data Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(713, 'JFU09240', 'Penyusun Data Pelayanan dan Konseling', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(714, 'JFU09241', 'Penyusun Data Pelayanan Medis', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(715, 'JFU09242', 'Penyusun Data Pengembangan Institusi KB', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(716, 'JFU09243', 'Penyusun Data Peningkatan Kualitas Lingkungan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(717, 'JFU09244', 'Penyusun Data Peningkatan Kualitas Usaha', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(718, 'JFU09245', 'Penyusun Data Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(719, 'JFU09246', 'Penyusun Data Program Kesetaraan Jender', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(720, 'JFU09247', 'Penyusun Data Tenaga Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(721, 'JFU09248', 'Penyusun Fasilitas Pelayanan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(722, 'JFU09249', 'Penyusun Kebijakan Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(723, 'JFU09250', 'Penyusun Laporan dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(724, 'JFU09251', 'Penyusun Laporan Kerjasama Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(725, 'JFU09252', 'Penyusun Laporan Pengembangan Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(726, 'JFU09253', 'Penyusun Laporan Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(727, 'JFU09254', 'Penyusun Masalah Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(728, 'JFU09255', 'Penyusun Pengembangan Karier Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(729, 'JFU09256', 'Penyusun Peraturan Kepegawaian dan Dokumentasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(730, 'JFU09257', 'Penyusun Pola dan Evaluasi Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(731, 'JFU09258', 'Penyusun Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(732, 'JFU09259', 'Penyusun Rencana Tenaga Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(733, 'JFU09260', 'Penyusun Sarana Media Teknologi Pembelajaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(734, 'JFU09261', 'Penghubung Antar Lembaga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(735, 'JFU09262', 'Analis Kepegawaian dan Hukum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(736, 'JFU09263', 'Pengatur', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(737, 'JFU09264', 'Pengevaluasi Keuangan dan BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(738, 'JFU09265', 'Bendahara Pengeluaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(739, 'JFU09266', 'Bendahara Pengeluaran Pembantu', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(740, 'JFU09267', 'Pengadministrasi Bahan Keuangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(741, 'JFU09268', 'Penyusun Bahan Perencanaan Program dan Anggaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(742, 'JFU09269', 'Penyusun Bahan Parameter Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(743, 'JFU09270', 'Penyusun Bahan Bina Kesertaan Keluarga Berencana Jalur Pemerintah dan Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(744, 'JFU09271', 'Penyusun Bahan Bina Kesertaan Keluarga Berencana Jalur Wilayah dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(745, 'JFU09272', 'Penyusun Bahan Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(746, 'JFU09273', 'Pemelihara Barang Umum dan Humas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(747, 'JFU09274', 'Pemelihara Arsip Kepegawaian', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(748, 'JFU09275', 'Analis Perencana Anggaran dan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(749, 'JFU09276', 'Analis Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(750, 'JFU09277', 'Penyusun Bahan SAI, Keuangan dan RAKL', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(751, 'JFU09278', 'Penyusun Data Pelayanan dan Konseling Bina Kesertaan KB Jalur Wilayah Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(752, 'JFU09280', 'Pengadministrasi Bahan Umum, Humas dan Persuratan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(753, 'JFU09281', 'Pemelihara Bahan Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(754, 'JFU09282', 'Pemelihara Bahan Bina Keluarga Balita, Anak dan Ketahanan Lansia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(755, 'JFU09283', 'Pengadministrasi Bahan Kepegawaian dan Hukum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(756, 'JFU09284', 'Verifikator Keuangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(757, 'JFU09285', 'Pemelihara Arsip Perencanaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(758, 'JFU09286', 'Pemelihara Arsip', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(759, 'JFU09287', 'Pemelihara Mobil Unit Pelayanan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(760, 'JFU09288', 'Pengadministrasi Bahan Pengembangan Materi Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(761, 'JFU09289', 'Pengadministrasi Bahan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(762, 'JFU09290', 'Pemelihara Bahan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(763, 'JFU09291', 'Penginventarisasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(764, 'JFU09292', 'Pengevaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(765, 'JFU09296', 'Pengevaluasi Bina Kesertaan KB Jalur Wilayah dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(766, 'JFU09297', 'Pengevaluasi Bina Keluarga Balita, Anak dan Ketahanan Keluarga Lansia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(767, 'JFU09298', 'Pengevaluasi Hubungan Antar Lembaga dan Bina Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(768, 'JFU09299', 'Analis', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(769, 'JFU09300', 'Penyusun Bahan Rumah Tangga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(770, 'JFU09301', 'Pemelihara Bina Ketahan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(771, 'JFU09302', 'Pengadministrasi Bahan Peningkatan Kualitas Pelayanan KB Wilayah galcitas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(772, 'JFU09303', 'Penyusun Bahan Keluarga Berencana Klinik Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(773, 'JFU09304', 'Analis Administrasi Tata Usaha Pengawasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(774, 'JFU09305', 'Analis Persuratan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(775, 'JFU09306', 'Penyusun Bahan Pemeliharaan Kendaraan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(776, 'JFU09307', 'Pemelihara Bahan Promosi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(777, 'JFU09308', 'Analis Monitoring dan Evaluasi Sistem Pencatatan dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(778, 'JFU09309', 'Pemelihara Bahan Pengangkatan dan Pemberhentian Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(779, 'JFU09310', 'Penyusun Bahan Pemeliharaan Gedung', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(780, 'JFU09311', 'Penyusun Bahan Peningkatan Akses Pelayanan Keluarga Berencana Wilayah Miskin Perkotaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(781, 'JFU09312', 'Penyusun Bahan Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(782, 'JFU09313', 'Penyusun Bahan Pemeliharaan Peralatan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(783, 'JFU09314', 'Penyusun Bahan Persuratan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(784, 'JFU09315', 'Pemelihara Bahan Pengembangan Hubungan Dengan Lembaga Non Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(785, 'JFU09316', 'Penyusun Bahan Data Kependudukan dan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(786, 'JFU09317', 'Pemberhentian Sementara sebagai PNS', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(787, 'JFU09318', 'Penyusun Bahan Pengelolaan Situs dan Media Konferensi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(788, 'JFU09319', 'Pengevaluasi Pemberdayaan Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(789, 'JFU09320', 'Pengadministrasi Penguatan Hubungan Dengan Lembaga Non Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(790, 'JFU09321', 'Pengadministrasi Bahan Evaluasi Sarana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(791, 'JFU09322', 'Pengadministrasi Bahan Evaluasi BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(792, 'JFU09323', 'Analis Tata Usaha Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(793, 'JFU09324', 'Pengadministrasi Pengumpulan Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(794, 'JFU10001', 'Petugas Lapangan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(795, 'JFU10002', 'PPLKB', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(796, 'JFU11001', 'Pustakawan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(797, 'JFU12001', 'Satpam', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(798, 'JFU13001', 'Sekretaris Pimpinan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(799, 'JFU13002', 'Sekretaris Pimpinan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(800, 'JFU14001', 'Statistisi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(801, 'JFU15001', 'Widyaiswara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(802, 'JFU16001', 'Pesuruh', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(803, 'JFU17001', 'Pengolah Data Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(804, 'JFU40001', 'Pengelola Barang Persediaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(805, 'JFU50001', 'Pengadministrasi Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(806, 'JFU60001', 'Penyusun Bahan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(807, 'JFU60002', 'Penyusun Bahan Dampak Daya Dukung Lingkungan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(808, 'JFU60003', 'Penyusun Bahan Dampak Ekonomi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(809, 'JFU60004', 'Penyusun Bahan Pengumpulan dan Pengolahan Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(810, 'JFU60005', 'Penyusun Bahan Pengembangan Kemitraan Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(811, 'JFU60006', 'Penyusun Bahan Pengembangan Sistem Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(812, 'JFU60007', 'Penyusun Bahan Analisa dan Evaluasi Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(813, 'JFU70001', 'Analis Penelitian dan Pengembangan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(814, 'JFU70002', 'Analis Program Penelitian dan Pengembangan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(815, 'JFU70003', 'Analis SDM Aparatur', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(816, 'JFU70004', 'Analis Perencanaan, Evaluasi dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(817, 'JFU70005', 'Analis Perencanaan Anggaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(818, 'JFU70006', 'Analis Organisasi dan Tata Laksana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(819, 'JFU70007', 'Penyusun Kurikulum, Modul dan Bahan Ajar', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(820, 'JFU70008', 'Pengelola Teknologi Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(821, 'JFU70009', 'Analis Bidang Pengawasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(822, 'JFU70010', 'Analis Kesehatan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(823, 'JFU70011', 'Analis Statistik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(824, 'JFU70012', 'Pengelola Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(825, 'JFU70013', 'Analis Keuangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(826, 'JFU70014', 'Analis Kerjasama', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(827, 'JFU70015', 'Analis Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(828, 'JFU70016', 'Penyusun Analisis Dampak Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(829, 'JFU70017', 'Analis Kesehatan Ibu dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(830, 'JFU70018', 'Penyusun Kerjasama Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(831, 'JFU70019', 'Analis Pelaporan Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(832, 'JFU70020', 'Analis Pengelolaan BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(833, 'JFU70021', 'Pemelihara Pengembangan Materi Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(834, 'JFU70022', 'Pemelihara Pengembangan Sistem Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(835, 'JFU70023', 'Pengadministrasi Monitoring dan Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(836, 'JFU70024', 'Penyusun Bahan Pengembangan Program Bina Ketahanan Remaja Jalur Pendidikan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(837, 'JFU80001', 'Bendahara Barang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(838, 'JFU99997', 'PNS Tugas Belajar', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(839, 'JFU99998', 'Perbantukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(840, 'JFU99999', 'Fungsional Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL),
(841, 'JFUDUK07', 'Analis Monitoring dan Evaluasi Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_jabatan`
--

CREATE TABLE `jenis_jabatan` (
  `hid` int(11) NOT NULL,
  `jenis_jabatan` varchar(45) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_jabatan`
--

INSERT INTO `jenis_jabatan` (`hid`, `jenis_jabatan`, `creation_date`, `created_by`, `updated_date`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Pranata Komputer', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Pustakawan', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Auditor', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Analis Kepegawaian', NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for table `jenjang_jabatan`
--

CREATE TABLE `jenjang_jabatan` (
  `hid` int(11) NOT NULL,
  `jenisjabatan_id` int(11) DEFAULT NULL,
  `kode_jab` varchar(45) DEFAULT NULL,
  `jabatan` varchar(245) DEFAULT NULL,
  `jenis_jab` varchar(15) DEFAULT NULL,
  `kelompok_jabatan` varchar(45) DEFAULT NULL,
  `ak_kenaikan` double DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenjang_jabatan`
--

INSERT INTO `jenjang_jabatan` (`hid`, `jenisjabatan_id`, `kode_jab`, `jabatan`, `jenis_jab`, `kelompok_jabatan`, `ak_kenaikan`, `creation_date`, `created_by`, `updated_date`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, NULL, 'FT', 'Analis Kebijakan Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'JFT01001', 'Analis Kepegawaian Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, 'JFT01002', 'Analis Kepegawaian Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, 'JFT01003', 'Analis Kepegawaian Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, 'JFT01004', 'Analis Kepegawaian Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 'JFT01005', 'Analis Kepegawaian Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'JFT01006', 'Analis Kepegawaian Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 'JFT01007', 'Analis Kepegawaian Terampil ', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 'JFT02001', 'Arsiparis Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 'JFT02002', 'Arsiparis Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 'JFT02003', 'Arsiparis Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 'JFT02004', 'Arsiparis Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, 'JFT02005', 'Arsiparis Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, 'JFT02006', 'Arsiparis Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, 'JFT02007', 'Arsiparis Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, 'JFT03001', 'Auditor Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, 'JFT03002', 'Auditor Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, 'JFT03003', 'Auditor Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, 'JFT03004', 'Auditor Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 'JFT03005', 'Auditor Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, 'JFT03006', 'Auditor Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, 'JFT03007', 'Auditor Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, 'JFT04001', 'Peneliti Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, 'JFT04002', 'Peneliti Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, 'JFT04003', 'Peneliti Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, 'JFT04004', 'Peneliti Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, 'JFT04005', 'Pranata Humas Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 'JFT04006', 'Pranata Humas Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, 'JFT04007', 'Pranata Humas Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, 'JFT04008', 'Pranata Humas Pelaksana Pemula', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 1, 'JFT05001', 'Pranata Komputer Ahli Utama', 'FT', 'Ahli', 200, NULL, NULL, '2022-04-10 18:36:35', 'admin', NULL, NULL),
(32, 1, 'JFT05002', 'Pranata Komputer Ahli Madya', 'FT', 'Ahli', 150, NULL, NULL, '2022-04-10 18:36:14', 'admin', NULL, NULL),
(33, 1, 'JFT05003', 'Pranata Komputer Ahli Muda', 'FT', 'Ahli', 100, NULL, NULL, '2022-04-10 18:35:56', 'admin', NULL, NULL),
(34, 1, 'JFT05004', 'Pranata Komputer Ahli Pertama', 'FT', 'Ahli', 50, NULL, NULL, '2022-04-10 18:35:39', 'admin', NULL, NULL),
(35, 1, 'JFT05005', 'Pranata Komputer Penyelia', 'FT', 'Terampil', 100, NULL, NULL, '2022-04-10 18:36:52', 'admin', NULL, NULL),
(36, 1, 'JFT05006', 'Pranata Komputer Mahir', 'FT', 'Terampil', 50, NULL, NULL, '2022-04-10 18:34:44', 'admin', NULL, NULL),
(37, 1, 'JFT05007', 'Pranata Komputer Terampil', 'FT', 'Terampil', 20, NULL, NULL, '2022-04-10 18:35:05', 'admin', NULL, NULL),
(38, NULL, 'JFT05008', 'Pranata Komputer Pelaksana Pemula', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, 'JFT06001', 'Pustakawan Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, 'JFT06002', 'Pustakawan Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, 'JFT06003', 'Pustakawan Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, 'JFT06004', 'Pustakawan Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, 'JFT06005', 'Pustakawan Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, 'JFT06006', 'Pustakawan Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, 'JFT06007', 'Pustakawan Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, 'JFT07001', 'Statistisi Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, 'JFT07002', 'Statistisi Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, 'JFT07003', 'Statistisi Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, 'JFT07004', 'Statistisi Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, 'JFT07005', 'Statistisi Penyelia', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, 'JFT07006', 'Statistisi Mahir', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, 'JFT07007', 'Statistisi Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, 'JFT08001', 'Widyaiswara Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, 'JFT08002', 'Widyaiswara Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, 'JFT08003', 'Widyaiswara Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, 'JFT08004', 'Widyaiswara Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, 'JFT08008', 'Ajun Widyaiswara', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, 'JFT10001', 'Pranata Humas Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, 'JFT10002', 'Pranata Humas Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, 'JFT10003', 'Pranata Humas Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, 'JFT10004', 'Pranata Humas Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, 'JFT11001', 'Analis Kebijakan Ahli Pertama ', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, 'JFT11002', 'Analis Kebijakan Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, 'JFT11003', 'Analis Kebijakan Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, 'JFT11004', 'Analis Kebijakan Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, NULL, 'JFT12001', 'Analis Pengelolaan Keuangan APBN Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, 'JFT12002', 'Analis Pengelolaan Keuangan APBN Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, NULL, 'JFT12003', 'Analis Pengelolaan Keuangan APBN Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, 'JFT12004', 'Analis Pengelolaan Keuangan APBN Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, 'JFT13001', 'Analis Anggaran Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, 'JFT13002', 'Analis Anggaran Ahli Muda ', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, NULL, 'JFT13003', 'Analis Anggaran Ahli Madya ', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, 'JFT13004', 'Analis Anggaran Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, 'JFT14001', 'Penata Ruang Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, 'JFT14002', 'Penata Ruang Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, 'JFT14003', 'Penata Ruang Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, 'JFT15001', 'Pengelola Pengadaan Barang/Jasa Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, NULL, 'JFT15002', 'Pengelola Pengadaan Barang/Jasa Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, 'JFT15003', 'Pengelola Pengadaan Barang/Jasa Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, NULL, 'JFT16001', 'Pengembang Teknologi Pembelajaran Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, NULL, 'JFT16002', 'Pengembang Teknologi Pembelajaran Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, NULL, 'JFT16003', 'Pengembang Teknologi Pembelajaran Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, NULL, 'JFT16004', 'Pengembang Teknologi Pembelajaran Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, NULL, 'JFT17001', 'Perancang Peraturan Perundang-Undangan Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, NULL, 'JFT17002', 'Perancang Peraturan Perundang-Undangan Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, NULL, 'JFT17003', 'Perancang Peraturan Perundang-Undangan Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, NULL, 'JFT17004', 'Perancang Peraturan Perundang-Undangan Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, 'JFT18001', 'Perencana Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, NULL, 'JFT18002', 'Perencana Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, NULL, 'JFT18003', 'Perencana Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, NULL, 'JFT18004', 'Perencana Ahli Utama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, NULL, 'JFT19007', 'Analis Hukum Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, NULL, 'JFT19008', 'Analis Hukum Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, NULL, 'JFT19009', 'Analis Hukum Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, NULL, 'JFT19010', 'Analis Pengelolaan Keuangan APBN Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, NULL, 'JFT19011', 'Analis Pengelolaan Keuangan APBN Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, 'JFT19012', 'Analis Pengelolaan Keuangan APBN Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, NULL, 'JFT19013', 'Penata Kependudukan dan Keluarga Berencana Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, NULL, 'JFT19014', 'Penata Kependudukan dan Keluarga Berencana Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, 'JFT19015', 'Penata Kependudukan dan Keluarga Berencana Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, NULL, 'JFT19016', ' Asesor SDM Aparatur Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, NULL, 'JFT19017', ' Asesor SDM Aparatur Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, NULL, 'JFT19018', ' Asesor SDM Aparatur Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, NULL, 'JFT19019', 'Calon Asesor SDM Aparatur Ahli', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, NULL, 'JFT19020', 'Calon Auditor Kepegawaian Ahli', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, NULL, 'JFT19022', 'Calon Pranata Komputer Ahli', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, NULL, 'JFT19023', 'Calon Pranata Komputer Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, NULL, 'JFT19026', 'Calon Auditor Terampil', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, NULL, 'JFU09293', 'Auditor Kepegawaian Ahli Pertama', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, NULL, 'JFU09294', 'Auditor Kepegawaian Ahli Muda', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, NULL, 'JFU09295', 'Auditor Kepegawaian Ahli Madya', 'FT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, NULL, 'FU', 'Analis Mutasi Pejabat Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, NULL, 'FU09260', 'Penyusun Bahan Pengembangan Permodalan dan Kemitraan Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, NULL, 'FUBU0002', 'Analis Pemeliharaan Sarana dan Prasarana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, NULL, 'FUBU001', 'Penyusun Bahan Sarana dan Prasarana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, NULL, 'JFP00001', 'Analis Parameter Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, NULL, 'JFP00002', 'Pengadministrasi Bahan Kerjasama Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, NULL, 'JFP00004', 'Penyusun Bahan Sarana Program Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, NULL, 'JFP00005', 'Pengadministrasi Alat dan Obat Kontrasepsi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, NULL, 'JFU01001', 'Analis Administrasi Jabatan Fungsional', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, NULL, 'JFU01002', 'Analis Administrasi Pengawasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, NULL, 'JFU01003', 'Analis Administrasi Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, NULL, 'JFU01004', 'Analis Advokasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, NULL, 'JFU01005', 'Analis Advokasi dan Komunikasi, Informasi dan Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, NULL, 'JFU01006', 'Analis Advokasi, Penggerakan dan Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, NULL, 'JFU01007', 'Analis Akuntansi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, NULL, 'JFU01008', 'Analis Alat Kontrasepsi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, NULL, 'JFU01009', 'Analis Anggaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, NULL, 'JFU01010', 'Analis Arsip dan Dokumentasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, NULL, 'JFU01011', 'Analis Bahan Pelatihan dan Pengembangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, NULL, 'JFU01012', 'Analis Bahan Pelayanan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, NULL, 'JFU01013', 'Analis Berita dan Pendapat Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, NULL, 'JFU01014', 'Analis Bina Keluarga Balita, Anak dan Ketahanan Keluarga Lanjut Usia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, NULL, 'JFU01015', 'Analis Bina Keluarga Berencana Klinik Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, NULL, 'JFU01016', 'Analis Bina Keluarga Berencana Klinik Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, NULL, 'JFU01017', 'Analis Bina Keluarga Berencana Rumah Sakit Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, NULL, 'JFU01018', 'Analis Bina Keluarga Berencana Rumah Sakit Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, NULL, 'JFU01019', 'Analis Bina Kesertaan Keluarga Berencana Jalur  dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, NULL, 'JFU01020', 'Analis Bina Kesertaan Keluarga Berencana Jalur Pemerintah dan Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, NULL, 'JFU01021', 'Analis Bina Kesertaan Keluarga Berencana Jalur Wilayah dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, NULL, 'JFU01022', 'Analis Bina Ketahanan Balita, Keluarga dan Lansia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, NULL, 'JFU01023', 'Analis Bina Ketahanan Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, NULL, 'JFU01024', 'Analis Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, NULL, 'JFU01025', 'Analis Daftar Gaji', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, NULL, 'JFU01026', 'Analis Dampak Ekonomi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, NULL, 'JFU01027', 'Analis Dampak Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, NULL, 'JFU01028', 'Analis Dampak Politik, Pertahanan dan Keamanan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, NULL, 'JFU01029', 'Analis Dampak Sosial', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, NULL, 'JFU01030', 'Analis Data dan Dokumentasi Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, NULL, 'JFU01031', 'Analis Data dan Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, NULL, 'JFU01032', 'Analis Data Fasilitasi Pemaduan Kebijakan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, NULL, 'JFU01033', 'Analis Data Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, NULL, 'JFU01034', 'Analis Data Kependudukan dan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, NULL, 'JFU01035', 'Analis Data Perencanaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, NULL, 'JFU01036', 'Analis Data Profil dan Proyeksi Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, NULL, 'JFU01037', 'Analis Data Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, NULL, 'JFU01038', 'Analis Daya Dukung Lingkungan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, NULL, 'JFU01039', 'Analis Daya Tampung Lingkungan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, NULL, 'JFU01040', 'Analis Disiplin Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, NULL, 'JFU01041', 'Analis Dokumentasi dan Perpustakaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, NULL, 'JFU01042', 'Analis Dokumentasi Peraturan Perundang-Undangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, NULL, 'JFU01043', 'Analis Ekonomi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, NULL, 'JFU01044', 'Analis Evaluasi dan Pelaporan Fasilitasi Pemaduan Kebijakan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, NULL, 'JFU01045', 'Analis Evaluasi Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, NULL, 'JFU01046', 'Analis Evaluasi dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, NULL, 'JFU01047', 'Analis Evaluasi dan Pelaporan Advokasi, Komunikasi, Informasi dan Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, NULL, 'JFU01048', 'Analis Evaluasi dan Pelaporan Analisis Pemaduan Kebijakan Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, NULL, 'JFU01049', 'Analis Evaluasi dan Pelaporan Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, NULL, 'JFU01050', 'Analis Evaluasi dan Pelaporan Bina Ketahanan Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, NULL, 'JFU01051', 'Analis Evaluasi dan Pelaporan Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, NULL, 'JFU01052', 'Analis Evaluasi dan Pelaporan Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, NULL, 'JFU01053', 'Analis Evaluasi Data Profil dan Proyeksi Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, NULL, 'JFU01054', 'Analis Evaluasi Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, NULL, 'JFU01055', 'Analis Evaluasi Progam Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, NULL, 'JFU01056', 'Analis Evaluasi Sarana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, NULL, 'JFU01057', 'Analis Evaluasi Sasaran Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, NULL, 'JFU01058', 'Analis Evaluasi Sistem Pencatatan dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, NULL, 'JFU01059', 'Analis Hubungan Antar Lembaga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, NULL, 'JFU01060', 'Analis Hubungan Antar Lembaga dan Bina Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, NULL, 'JFU01061', 'Analis Hubungan Dengan Lembaga Pemerintah Provinsi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, NULL, 'JFU01062', 'Analis Hubungan Dengan Lembaga Pemerintah Pusat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, NULL, 'JFU01063', 'Analis Hubungan Kelembagaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, NULL, 'JFU01064', 'Analis Hubungan Masyarakat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, NULL, 'JFU01065', 'Analis Hubungan Media Massa', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, NULL, 'JFU01066', 'Analis Hukum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, NULL, 'JFU01067', 'Analis Informasi dan Peningkatan Teknologi Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, NULL, 'JFU01068', 'Analis Institusi dan Peran Serta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, NULL, 'JFU01069', 'Analis Institusi Masyarakat Pedesaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, NULL, 'JFU01070', 'Analis Jabatan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, NULL, 'JFU01071', 'Analis Jaminan Pelayanan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, NULL, 'JFU01072', 'Analis Jaminan Pelayanan Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, NULL, 'JFU01073', 'Analis Kebutuhan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, NULL, 'JFU01074', 'Analis Kebutuhan Alat Kontrasepsi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, NULL, 'JFU01075', 'Analis Kelangsungan Hidup Bayi dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, NULL, 'JFU01076', 'Analis Kelangsungan Hidup Ibu', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, NULL, 'JFU01077', 'Analis Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, NULL, 'JFU01078', 'Analis Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, NULL, 'JFU01079', 'Analis Kependudukan dan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, NULL, 'JFU01081', 'Analis Kerjasama dan Pengembangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, NULL, 'JFU01082', 'Analis Kerjasama Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, NULL, 'JFU01083', 'Analis Kerjasama Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, NULL, 'JFU01084', 'Analis Kerjasama Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, NULL, 'JFU01085', 'Analis Kesehatan Reproduksi Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, NULL, 'JFU01086', 'Analis Kesejahteraan Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, NULL, 'JFU01087', 'Analis Kesejahteraan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, NULL, 'JFU01088', 'Analis Ketahanan Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, NULL, 'JFU01089', 'Analis Keuangan dan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, NULL, 'JFU01090', 'Analis Keuangan dan Pengelolaan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, NULL, 'JFU01091', 'Analis Keuangan dan Perbekalan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, NULL, 'JFU01092', 'Analis Kompetensi Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, NULL, 'JFU01093', 'Analis Laporan Hasil Pemeriksaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, NULL, 'JFU01094', 'Analis Manajemen Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, NULL, 'JFU01095', 'Analis Manajemen Perkantoran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, NULL, 'JFU01096', 'Analis Media Massa', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, NULL, 'JFU01097', 'Analis Mekanisme Operasional Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, NULL, 'JFU01098', 'Analis Monitoring Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, NULL, 'JFU01099', 'Analis Monitoring Bina Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, NULL, 'JFU01100', 'Analis Monitoring Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, NULL, 'JFU01101', 'Analis Monitoring dan Evaluasi Institusi Masyarakat Pedesaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, NULL, 'JFU01102', 'Analis Monitoring dan Evaluasi Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, NULL, 'JFU01103', 'Analis Monitoring dan Evaluasi Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, NULL, 'JFU01104', 'Analis Monitoring dan Evaluasi Mekanisme Operasional Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, NULL, 'JFU01105', 'Analis Monitoring dan Evaluasi Pelayanan Keluarga Berencana Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, NULL, 'JFU01106', 'Analis Monitoring dan Evaluasi Pelayanan Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, NULL, 'JFU01107', 'Analis Monitoring dan Evaluasi Sistem Pencatatan dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, NULL, 'JFU01108', 'Analis Monitoring dan Evaluasi Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, NULL, 'JFU01109', 'Analis Mutasi Jabatan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, NULL, 'JFU01110', 'Analis Organisasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, NULL, 'JFU01111', 'Analis Pangkat dan Gaji Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, NULL, 'JFU01112', 'Analis Pelaksanaan Anggaran Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, NULL, 'JFU01113', 'Analis Pelaksanaan Anggaran Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, NULL, 'JFU01114', 'Analis Pelaksanaan Anggaran Penunjang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, NULL, 'JFU01115', 'Analis Pelaporan dan Statistik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, NULL, 'JFU01116', 'Analis Pelatihan dan Pengembangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, NULL, 'JFU01117', 'Analis Pelembagaan Bina Ketahanan Remaja Jalur Masyarakat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, NULL, 'JFU01118', 'Analis Pelembagaan Bina Ketahanan Remaja Jalur Pendidikan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, NULL, 'JFU01119', 'Analis Pemanfaatan Hasil Penelitian', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, NULL, 'JFU01120', 'Analis Pemanfaatan Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, NULL, 'JFU01121', 'Analis Pemanfaatan Profil dan Proyeksi Pengendalian Pendidikan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, NULL, 'JFU01122', 'Analis Pemasaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, NULL, 'JFU01123', 'Analis Pembakuan dan Sarana Kerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, NULL, 'JFU01124', 'Analis Pemberdayaan Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, NULL, 'JFU01125', 'Analis Pemberdayaan Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, NULL, 'JFU01126', 'Analis Pemeliharaan Infrastruktur Teknologi Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, NULL, 'JFU01127', 'Analis Penanggulangan Infertilitas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, NULL, 'JFU01128', 'Analis Penatausahaan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, NULL, 'JFU01129', 'Analis Penatausahaan Pengelolaan Sarana Prgram', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, NULL, 'JFU01130', 'Analis Pencegahan HIV dan AIDS', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, NULL, 'JFU01131', 'Analis Pencegahan Kanker Alat Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, NULL, 'JFU01132', 'Analis Pencegahan Penyakit Menular Seksual', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, NULL, 'JFU01133', 'Analis Pencitraan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, NULL, 'JFU01134', 'Analis Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, NULL, 'JFU01135', 'Analis Pendidikan dan Pelatihan Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, NULL, 'JFU01136', 'Analis Penelitian dan Pengembangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, NULL, 'JFU01137', 'Analis Penetapan Parameter Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, NULL, 'JFU01138', 'Analis Penetapan Sasaran Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, NULL, 'JFU01139', 'Analis Pengadaan Barang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, NULL, 'JFU01140', 'Analis Pengangkatan dan Pemberhentian Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, NULL, 'JFU01141', 'Analis Pengelolaan Bank Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, NULL, 'JFU01142', 'Analis Pengelolaan Situs Media Konferensi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, NULL, 'JFU01143', 'Analis Pengembangan Admintrasi dan Keuangan Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, NULL, 'JFU01144', 'Analis Pengembangan Akseptor', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, NULL, 'JFU01145', 'Analis Pengembangan Hubungan Dengan Lembaga Non Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, NULL, 'JFU01146', 'Analis Pengembangan Hubungan Dengan Lembaga Pemerintah Kabupaten/Kota', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, NULL, 'JFU01147', 'Analis Pengembangan Indikator Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, NULL, 'JFU01148', 'Analis Pengembangan Infrastruktur TI', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, NULL, 'JFU01149', 'Analis Pengembangan Institusi Masyarakat Pedesaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, NULL, 'JFU01150', 'Analis Pengembangan Karir Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, NULL, 'JFU01151', 'Analis Pengembangan Kelompok Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, NULL, 'JFU01152', 'Analis Pengembangan Kelompok Bina Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, NULL, 'JFU01153', 'Analis Pengembangan Kemitraan Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, NULL, 'JFU01154', 'Analis Pengembangan Kemitran Bina Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, NULL, 'JFU01155', 'Analis Pengembangan Materi Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, NULL, 'JFU01156', 'Analis Pengembangan Materi Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, NULL, 'JFU01157', 'Analis Pengembangan Mekanisme Operasional Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, NULL, 'JFU01158', 'Analis Pengembangan Permodalan dan Kemitraan Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, NULL, 'JFU01159', 'Analis Pengembangan Program Bina Keluarga Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, NULL, 'JFU01160', 'Analis Pengembangan Program Bina Keluarga Balita', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, NULL, 'JFU01161', 'Analis Pengembangan Program Bina Ketahanan Keluarga Lansia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, NULL, 'JFU01162', 'Analis Pengembangan Program Bina Ketahanan Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, NULL, 'JFU01163', 'Analis Pengembangan Program Bina Ketahanan Keluarga Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, NULL, 'JFU01164', 'Analis Pengembangan Program Bina Ketahanan Remaja Jalur Masyarakat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, NULL, 'JFU01165', 'Analis Pengembangan Program Bina Ketahanan Remaja Jalur Pendidikan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, NULL, 'JFU01166', 'Analis Pengembangan Sistem Aplikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, NULL, 'JFU01167', 'Analis Pengembangan Sistem Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, NULL, 'JFU01168', 'Analis Pengembangan Sistem Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, NULL, 'JFU01169', 'Analis Pengembangan Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, NULL, 'JFU01170', 'Analis Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, NULL, 'JFU01171', 'Analis Penggerakan Advokasi dan Komunikasi, Informasi dan Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, NULL, 'JFU01172', 'Analis Pengolahan Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, NULL, 'JFU01173', 'Analis Penguatan Hubungan Dengan Lembaga Non Pmrintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, NULL, 'JFU01174', 'Analis Penguatan Hubungan Dengan Lembaga Pemerintah Kabupaten/Kota', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, NULL, 'JFU01175', 'Analis Pengumpulan dan Pengolahan Data Analis Pemaduan Kebijakan Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, NULL, 'JFU01176', 'Analis Pengumpulan Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, NULL, 'JFU01177', 'Analis Penilaian Kinerja Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, NULL, 'JFU01178', 'Analis Peningkatan Akses Keluarga Berencana Pria', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, NULL, 'JFU01179', 'Analis Peningkatan Akses Pelayanan Keluarga Berencana Wilayah Miskin Perkotaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, NULL, 'JFU01180', 'Analis Peningkatan Akses Pelayanan Keluarga Berencana Wilayah Tertinggal, Terpencil dan Perbatasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, NULL, 'JFU01181', 'Analis Peningkatan Kualitas Pelayanan Keluarga Berencana Tertinggal, Terpencil dan Perbatasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, NULL, 'JFU01182', 'Analis Peningkatan Kualitas Pelayanan Keluarga Berencana Wilayah Miskin Perkotaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, NULL, 'JFU01183', 'Analis Peningkatan Partisipasi Keluarga Berencana Pria', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, NULL, 'JFU01184', 'Analis Penyediaan Sarana Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, NULL, 'JFU01185', 'Analis Penyediaan Sarana Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, NULL, 'JFU01186', 'Analis Penyelenggaraan dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, NULL, 'JFU01187', 'Analis Penyelenggaraan Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, NULL, 'JFU01188', 'Analis Penyiapan Fasilitasi Pemaduan Kebijakan Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, NULL, 'JFU01190', 'Analis Penyusunan Parameter Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, NULL, 'JFU01191', 'Analis Penyusunan Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, NULL, 'JFU01192', 'Analis Penyusunan Program Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, NULL, 'JFU01193', 'Analis Peraturan Perundang-Undangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, NULL, 'JFU01194', 'Analis Perbendaharaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, NULL, 'JFU01195', 'Analis Perencanaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, NULL, 'JFU01196', 'Analis Perencanaan Advokasi dan Komunikasi, Informasi dan Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, NULL, 'JFU01197', 'Analis Perencanaan Anggaran Keluarga Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, NULL, 'JFU01198', 'Analis Perencanaan Anggaran Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, NULL, 'JFU01199', 'Analis Perencanaan Anggaran Penunjang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, NULL, 'JFU01200', 'Analis Perencanaan dan Pemasaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, NULL, 'JFU01201', 'Analis Perencanaan dan Pengadaan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, NULL, 'JFU01202', 'Analis Perencanaan Kebutuhan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, NULL, 'JFU01203', 'Analis Perencanaan Kebutuhan Sarana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, NULL, 'JFU01204', 'Analis Perencanaan Kerjasama Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, NULL, 'JFU01205', 'Analis Perencanaan Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, NULL, 'JFU01206', 'Analis Perencanaan Program dan Anggaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, NULL, 'JFU01207', 'Analis Perencanaan Program Pengendalian Penduduk, Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, NULL, 'JFU01208', 'Analis Perencanaan Program Penunjang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, NULL, 'JFU01209', 'Analis Pertahanan dan Keamanan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, NULL, 'JFU01210', 'Analis Perumusan Pola Sistem Pencatatan dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, NULL, 'JFU01211', 'Analis Politik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, NULL, 'JFU01212', 'Analis Program dan Kerjasama', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, NULL, 'JFU01213', 'Analis Program Kependudukan dan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, NULL, 'JFU01214', 'Analis Program Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, NULL, 'JFU01215', 'Analis Promosi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, NULL, 'JFU01216', 'Analis Protokol', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, NULL, 'JFU01217', 'Analis Publikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, NULL, 'JFU01218', 'Analis Rumah Tangga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, NULL, 'JFU01219', 'Analis Sarana Produksi Media Komunikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, NULL, 'JFU01220', 'Analis Sarana Program Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, NULL, 'JFU01221', 'Analis Sosial', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, NULL, 'JFU01222', 'Analis Spesifikasi Barang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, NULL, 'JFU01223', 'Analis Standarisasi Pelayanan Keluarga Berencana Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, NULL, 'JFU01224', 'Analis Standarisasi Pelayanan Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, NULL, 'JFU01225', 'Analis Tata Laksana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, NULL, 'JFU01226', 'Analis Tata Operasional', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, NULL, 'JFU01227', 'Analis Tata Usaha', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, NULL, 'JFU01228', 'Analis Tata Usaha Pimpinan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, NULL, 'JFU01229', 'Analis Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, NULL, 'JFU01230', 'Analis Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, NULL, 'JFU01231', 'Analis Umum dan Humas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, NULL, 'JFU01232', 'Analis Verifikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, NULL, 'JFU01233', 'Analis Program/Perencanaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, NULL, 'JFU01234', 'Analis Analisis dan Evaluasi Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, NULL, 'JFU01235', 'Analis Dokumen Perencanaan Advokasi dan KIE', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, NULL, 'JFU01236', 'Analis Bahan Bina Kesertaan KB Jalur Wilayah dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, NULL, 'JFU01237', 'Analis Pemeliharaan Peralatan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, NULL, 'JFU02001', 'Bendahara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, NULL, 'JFU02002', 'Pembantu Bendahara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, NULL, 'JFU03001', 'Calon Analis Kepegawaian Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, NULL, 'JFU03002', 'Calon Analis Kepegawaian Terampil', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, NULL, 'JFU03003', 'Calon Arsiparis Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, NULL, 'JFU03004', 'Calon Peneliti Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, NULL, 'JFU03005', 'Calon Pranata Humas Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, NULL, 'JFU03007', 'Calon Auditor Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, NULL, 'JFU03009', 'Calon Arsiparis Terampil', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, NULL, 'JFU03010', 'Calon Peneliti Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, NULL, 'JFU03011', 'Calon Pranata Humas Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, NULL, 'JFU03012', 'Calon Pustakawan Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, NULL, 'JFU03013', 'Calon Pustakawan Terampil', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, NULL, 'JFU03014', 'Calon Statistisi Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, NULL, 'JFU03015', 'Calon Widyaiswara Ahli', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, NULL, 'JFU04001', 'Pemelihara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, NULL, 'JFU04002', 'Pemelihara Administrasi Gudang dan Alat Kontrasepsi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, NULL, 'JFU04003', 'Pemelihara Arsip Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, NULL, 'JFU04004', 'Pemelihara Bahan Keuangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, NULL, 'JFU04005', 'Pemelihara Bangunan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, NULL, 'JFU04006', 'Pemelihara Barang Inventaris Kantor', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, NULL, 'JFU04007', 'Pemelihara Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, NULL, 'JFU04008', 'Pemelihara Barang Operasional Diklat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, NULL, 'JFU04009', 'Pemelihara Dokumen dan Administrasi Kerjasama Pendidikan dan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, NULL, 'JFU04010', 'Pemelihara Dokumen dan Administrasi Keuangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, NULL, 'JFU04011', 'Pemelihara Dokumen dan Administrasi Penetapan Parameter Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, NULL, 'JFU04012', 'Pemelihara Dokumen dan Administrasi Tata Operasional Pelatihan Pengembangangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, NULL, 'JFU04013', 'Pemelihara Dokumen dan Administrasi Umum dan Humas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, NULL, 'JFU04014', 'Pemelihara Dokumen Peralatan Advokasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, NULL, 'JFU04015', 'Pemelihara Dokumen, Peralatan dan Aplikasi Kediklatan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, NULL, 'JFU04016', 'Pemelihara Instalasi Air', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, NULL, 'JFU04017', 'Pemelihara Instalasi Listrik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, NULL, 'JFU04018', 'Pemelihara Kendaraan Dinas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, NULL, 'JFU04019', 'Pemelihara Mobil Unit Penerangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, NULL, 'JFU04020', 'Pemelihara Peralatan Kantor', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, NULL, 'JFU04021', 'Pemelihara Peralatan Teknologi Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, NULL, 'JFU04022', 'Pemelihara Perlengkapan Kendaraan Bermotor', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, NULL, 'JFU04023', 'Pemelihara Persuratan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, NULL, 'JFU04024', 'Pemelihara Program Komputer', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, NULL, 'JFU04025', 'Pemelihara Situs BKKBN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, NULL, 'JFU04026', 'Pemelihara Sound System', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, NULL, 'JFU04027', 'Pemelihara Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, NULL, 'JFU04028', 'Pemelihara Umum dan Humas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, NULL, 'JFU04029', 'Pemelihara Data Evaluasi dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, NULL, 'JFU04030', 'Pemelihara Data Monitoring dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, NULL, 'JFU04031', 'Pemelihara Data Monitoring dan Evaluasi PKB/PLKB', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, NULL, 'JFU04032', 'Pemelihara Data Pengembangan Permodalan dan Kemitraan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, NULL, 'JFU04033', 'Pemelihara Data Profil dan Proyeksi Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, NULL, 'JFU04034', 'Pemelihara Data Program Bina Ketahanan Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, NULL, 'JFU04035', 'Pemelihara Dokumen Administrasi Pengawasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, NULL, 'JFU04036', 'Pemelihara Dokumen Analisis Politik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, NULL, 'JFU04037', 'Pemelihara Dokumen Bina KB Klinik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, NULL, 'JFU04038', 'Pemelihara Dokumen Hasil Penelitian', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, NULL, 'JFU04039', 'Pemelihara Dokumen Hubungan Antar Lembaga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, NULL, 'JFU04040', 'Pemelihara Dokumen Hukum dan Perundang-Undangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, NULL, 'JFU04041', 'Pemelihara Dokumen Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, NULL, 'JFU04042', 'Pemelihara Dokumen Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, NULL, 'JFU04043', 'Pemelihara Dokumen Monitoring dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, NULL, 'JFU04044', 'Pemelihara Dokumen Organisasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, NULL, 'JFU04045', 'Pemelihara Dokumen Pelaksanaan Anggaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, NULL, 'JFU04046', 'Pemelihara Dokumen Pemaduan Kebijakan Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, NULL, 'JFU04047', 'Pemelihara Dokumen Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, NULL, 'JFU04048', 'Pemelihara Dokumen Pengembangan Materi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, NULL, 'JFU04049', 'Pemelihara Dokumen Penyelenggaraan dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, NULL, 'JFU04050', 'Pemelihara Dokumen Penyelenggaraan Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, NULL, 'JFU04051', 'Pemelihara Dokumen Perencanaan Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, NULL, 'JFU04052', 'Pemelihara Dokumen Perpustakaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jenjang_jabatan` (`hid`, `jenisjabatan_id`, `kode_jab`, `jabatan`, `jenis_jab`, `kelompok_jabatan`, `ak_kenaikan`, `creation_date`, `created_by`, `updated_date`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(422, NULL, 'JFU04053', 'Pemelihara Dokumen Program Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, NULL, 'JFU04054', 'Pemelihara Dokumen Promosi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, NULL, 'JFU04055', 'Pemelihara Dokumen Protokol', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, NULL, 'JFU04056', 'Pemelihara Dokumen Tata Laksana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, NULL, 'JFU04057', 'Pemelihara Dokumen Tata Usaha', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, NULL, 'JFU04058', 'Pemelihara Dokumen Verifikasi ', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, NULL, 'JFU04059', 'Pemelihara Sarana dan Prasarana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, NULL, 'JFU04060', 'Pemelihara Sarana Pelayanan KB', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, NULL, 'JFU04061', 'Pemelihara Bahan Penguatan Hubungan dengan Lembaga Non Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, NULL, 'JFU05001', 'Pengadministrasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, NULL, 'JFU05002', 'Pengadministrasi Bahan Advokasi dan Komunikasi, Informasi dan Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, NULL, 'JFU05003', 'Pengadministrasi Analis Dampak Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, NULL, 'JFU05004', 'Pengadministrasi Bahan Bina Keluarga Balita, Anak dan Lanjut Usia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, NULL, 'JFU05005', 'Pengadministrasi Bahan Keluarga Berencana Jalur Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, NULL, 'JFU05006', 'Pengadministrasi Bahan Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, NULL, 'JFU05007', 'Pengadministrasi Bahan Materi Jalur Pendidikan Formal, Nonformal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, NULL, 'JFU05008', 'Pengadministrasi Bahan Penetapan Parameter Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, NULL, 'JFU05009', 'Pengadministrasi Bina Keluarga Berencana Klinik Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, NULL, 'JFU05010', 'Pengadministrasi Bina Kesertaan Keluarga Berencana Jalur Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, NULL, 'JFU05011', 'Pengadministrasi Bina Kesertaan Keluarga Berencana Jalur Wilayah dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, NULL, 'JFU05012', 'Pengadministrasi Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, NULL, 'JFU05013', 'Pengadministrasi Data dan Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, NULL, 'JFU05014', 'Pengadministrasi Evaluasi dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, NULL, 'JFU05015', 'Pengadministrasi Gudang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, NULL, 'JFU05016', 'Pengadministrasi Hubungan Antar Lembaga dan Bina Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, NULL, 'JFU05017', 'Pengadministrasi Keuangan dan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, NULL, 'JFU05018', 'Pengadministrasi Pemberdayaan Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, NULL, 'JFU05019', 'Pengadministrasi Pengawasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, NULL, 'JFU05020', 'Pengadministrasi Penyelenggaraan dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, NULL, 'JFU05021', 'Pengadministrasi Perjalanan Dinas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, NULL, 'JFU05022', 'Pengadministrasi Program dan Kerjasama', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, NULL, 'JFU05023', 'Pengadministrasi Tata Operasional', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, NULL, 'JFU05024', 'Pengadministrasi Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, NULL, 'JFU05025', 'Pengadministrasi Umum dan Humas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, NULL, 'JFU05026', 'Pengadministrasi Bina Keluarga Berencana Rumah Sakit Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, NULL, 'JFU05027', 'Pengadministrasi Bahan Program Bina Ketahanan Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, NULL, 'JFU05028', 'Pengadministrasi Bahan Rumah Tangga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, NULL, 'JFU05029', 'Pengadministrasi Data Pengembangan Administrasi dan Keuangan Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, NULL, 'JFU05030', 'Pengadministrasi Dokumen BKB dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, NULL, 'JFU05031', 'Pengadministrasi Dokumen Rumah Tangga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, NULL, 'JFU05032', 'Pengadministrasi Bahan Penyelenggaraan dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, NULL, 'JFU06001', 'Pengelola Barang Inventaris', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, NULL, 'JFU07001', 'Pengemudi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, NULL, 'JFU08001', 'Pengevaluasi Bahan Analis Dampak Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, NULL, 'JFU08002', 'Pengevaluasi Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, NULL, 'JFU08003', 'Pengevaluasi Kegiatan Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, NULL, 'JFU08004', 'Pengevaluasi Mekanisme Operasional Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, NULL, 'JFU08005', 'Pengevaluasi Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, NULL, 'JFU08006', 'Pengevaluasi Penyelenggaraan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, NULL, 'JFU08007', 'Pengevaluasi Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, NULL, 'JFU08008', 'Pengevaluasi Pemeliharaan Bangunan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, NULL, 'JFU08009', 'Pengevaluasi Persuratan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, NULL, 'JFU09001', 'Penyusun Anggaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, NULL, 'JFU09002', 'Penyusun Bahan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, NULL, 'JFU09003', 'Penyusun Bahan Administrasi Pengawasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, NULL, 'JFU09004', 'Penyusun Bahan Administrasi Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, NULL, 'JFU09005', 'Penyusun Bahan Admnstrasi Jabatan Fungsional', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, NULL, 'JFU09006', 'Penyusun Bahan Advokasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, NULL, 'JFU09007', 'Penyusun Bahan Advokasi Bahan Komunikasi Informasi Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, NULL, 'JFU09008', 'Penyusun Bahan Advokasi dan Komunikasi Informasi Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, NULL, 'JFU09009', 'Penyusun Bahan Akuntansi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, NULL, 'JFU09010', 'Penyusun Bahan Analisis Dampak Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, NULL, 'JFU09011', 'Penyusun Bahan Arsip dan Dokumentasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, NULL, 'JFU09012', 'Penyusun Bahan Berita dan Pendapat Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, NULL, 'JFU09013', 'Penyusun Bahan Bina Keluarga Balita, Anak dan Ketahanan Lanjut Usia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, NULL, 'JFU09014', 'Penyusun Bahan Bina Keluarga Balita, Anak dan Ketahanan Lansia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, NULL, 'JFU09015', 'Penyusun Bahan Bina Keluarga Berencana Klinik Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, NULL, 'JFU09016', 'Penyusun Bahan Bina Keluarga Berencana Klinik Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, NULL, 'JFU09017', 'Penyusun Bahan Bina Keluarga Berencana Rumah Sakit Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, NULL, 'JFU09018', 'Penyusun Bahan Bina Keluarga Berencana Rumah Sakit Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, NULL, 'JFU09019', 'Penyusun Bahan Bina Keluarga Sejahterartaan Keluarga Berencana Jalur Pemerintah dan Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, NULL, 'JFU09020', 'Penyusun Bahan Bina Keluarga Sejahterartaan Keluarga Berencana Jalur Wilayah dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, NULL, 'JFU09021', 'Penyusun Bahan Bina Kesehatan Keluarga Berencana Jalur Pemerintah dan Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, NULL, 'JFU09022', 'Penyusun Bahan Bina Ketahanan Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, NULL, 'JFU09023', 'Penyusun Bahan Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, NULL, 'JFU09024', 'Penyusun Bahan Bina Keluarga Balita, Anak dan Ketahanan Keluarga Lansia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, NULL, 'JFU09025', 'Penyusun Bahan Dampak Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, NULL, 'JFU09026', 'Penyusun Bahan Dampak Politik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, NULL, 'JFU09027', 'Penyusun Bahan dan Pemantauan Evaluasi Diklat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, NULL, 'JFU09028', 'Penyusun Bahan Data dan Dokumentasi Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, NULL, 'JFU09029', 'Penyusun Bahan Data dan Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, NULL, 'JFU09030', 'Penyusun Bahan Data Perencanaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, NULL, 'JFU09031', 'Penyusun Bahan Data Profil dan Proyeksi Keluarga Sejahtera Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, NULL, 'JFU09032', 'Penyusun Bahan Daya Dukung Lingkungan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, NULL, 'JFU09033', 'Penyusun Bahan Daya Tampung Lingkungan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, NULL, 'JFU09034', 'Penyusun Bahan Disiplin Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, NULL, 'JFU09035', 'Penyusun Bahan Dokumentasi  dan  Perpustakaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, NULL, 'JFU09036', 'Penyusun Bahan Dokumentasi Peraturan Perundang-Undangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, NULL, 'JFU09037', 'Penyusun Bahan Ekonomi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, NULL, 'JFU09038', 'Penyusun Bahan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, NULL, 'JFU09039', 'Penyusun Bahan Evaluasi Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, NULL, 'JFU09040', 'Penyusun Bahan Evaluasi dan Laporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, NULL, 'JFU09041', 'Penyusun Bahan Evaluasi dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, NULL, 'JFU09042', 'Penyusun Bahan Evaluasi dan Pelaporan Advokasi dan Komunikasi, Informasi, Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, NULL, 'JFU09043', 'Penyusun Bahan Evaluasi dan Pelaporan Analisis Pemaduan Kebijakan Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, NULL, 'JFU09044', 'Penyusun Bahan Evaluasi dan Pelaporan Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, NULL, 'JFU09045', 'Penyusun Bahan Evaluasi dan Pelaporan Bina Ketahanan Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, NULL, 'JFU09046', 'Penyusun Bahan Evaluasi dan Pelaporan Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, NULL, 'JFU09047', 'Penyusun Bahan Evaluasi dan Pelaporan Fasilitasi Pemaduan Kebijakan Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, NULL, 'JFU09048', 'Penyusun Bahan Evaluasi dan Pelaporan, Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, NULL, 'JFU09049', 'Penyusun Bahan Evaluasi Data Profil dan Proyeksi Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, NULL, 'JFU09050', 'Penyusun Bahan Evaluasi Data Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, NULL, 'JFU09051', 'Penyusun Bahan Evaluasi Kesetaraan Jender', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, NULL, 'JFU09052', 'Penyusun Bahan Evaluasi Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, NULL, 'JFU09053', 'Penyusun Bahan Evaluasi Lingkungan Kerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, NULL, 'JFU09054', 'Penyusun Bahan Evaluasi Program Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, NULL, 'JFU09055', 'Penyusun Bahan Evaluasi Program Keluarga Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, NULL, 'JFU09056', 'Penyusun Bahan Evaluasi Sarana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, NULL, 'JFU09057', 'Penyusun Bahan Evaluasi Sasaran Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, NULL, 'JFU09058', 'Penyusun Bahan Hubungan Antar Lembaga dan Bina Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, NULL, 'JFU09059', 'Penyusun Bahan Hubungan Degan Lmbaga Pmrintah Provinsi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, NULL, 'JFU09060', 'Penyusun Bahan Hubungan Dengan Lembaga Pemerintah Pusat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, NULL, 'JFU09061', 'Penyusun Bahan Hubungan Media Massa', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, NULL, 'JFU09062', 'Penyusun Bahan Hukum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, NULL, 'JFU09063', 'Penyusun Bahan Informasi dan Peningkatan Teknologi Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, NULL, 'JFU09064', 'Penyusun Bahan Informasi dan Penerangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, NULL, 'JFU09065', 'Penyusun Bahan Jaminan Pelayanan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, NULL, 'JFU09066', 'Penyusun Bahan Jaminan Pelayanannan Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, NULL, 'JFU09067', 'Penyusun Bahan Kebijakan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, NULL, 'JFU09068', 'Penyusun Bahan Kebijakan Keluarga Berencana/Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, NULL, 'JFU09069', 'Penyusun Bahan Kebijakan Kesehatan Ibu dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, NULL, 'JFU09070', 'Penyusun Bahan Kebijakan Partisipasi Program Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, NULL, 'JFU09071', 'Penyusun Bahan Kebijakan Peraturan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, NULL, 'JFU09072', 'Penyusun Bahan Kebijakan Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, NULL, 'JFU09073', 'Penyusun Bahan Kebijakan Programram Keluarga Berencana Pria', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, NULL, 'JFU09074', 'Penyusun Bahan Kelangsungan Hidup Bayi dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, NULL, 'JFU09075', 'Penyusun Bahan Kelangsungan Hidup Ibu', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, NULL, 'JFU09076', 'Penyusun Bahan Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, NULL, 'JFU09077', 'Penyusun Bahan Kepegawaian dan Hukum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, NULL, 'JFU09078', 'Penyusun Bahan Kerjasama Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, NULL, 'JFU09079', 'Penyusun Bahan Kerjasama Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, NULL, 'JFU09080', 'Penyusun Bahan Kerjasama Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, NULL, 'JFU09081', 'Penyusun Bahan Kerjasama Penelitian dan Pengembangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, NULL, 'JFU09082', 'Penyusun Bahan Kerjasama Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, NULL, 'JFU09083', 'Penyusun Bahan Kesehatan Reproduksi Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, NULL, 'JFU09084', 'Penyusun Bahan Kesejahteraan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, NULL, 'JFU09085', 'Penyusun Bahan Keuangan dan BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, NULL, 'JFU09086', 'Penyusun Bahan Keuangan dan Pengelolaan BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, NULL, 'JFU09087', 'Penyusun Bahan Kompetensi Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, NULL, 'JFU09088', 'Penyusun Bahan Komunikasi Informasi Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, NULL, 'JFU09089', 'Penyusun Bahan Konseling', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, NULL, 'JFU09090', 'Penyusun Bahan Kurikulum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, NULL, 'JFU09091', 'Penyusun Bahan Metode Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, NULL, 'JFU09092', 'Penyusun Bahan Monitoring Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, NULL, 'JFU09093', 'Penyusun Bahan Monitoring Bina Keluarga Lansia  dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, NULL, 'JFU09094', 'Penyusun Bahan Monitoring Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, NULL, 'JFU09095', 'Penyusun Bahan Monitoring dan Evaluasi Institusi Masyarakat Pedesaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, NULL, 'JFU09096', 'Penyusun Bahan Monitoring dan Evaluasi Jalur Pendidikan Nonformal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, NULL, 'JFU09097', 'Penyusun Bahan Monitoring dan Evaluasi Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, NULL, 'JFU09098', 'Penyusun Bahan Monitoring dan Evaluasi Mekanisme Operasional Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, NULL, 'JFU09099', 'Penyusun Bahan Monitoring dan Evaluasi Pelayanan Keluarga Berencana Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, NULL, 'JFU09100', 'Penyusun Bahan Monitoring dan Evaluasi Pelayanan Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, NULL, 'JFU09101', 'Penyusun Bahan Monitoring dan Evaluasi Sistem Pencatatan dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, NULL, 'JFU09102', 'Penyusun Bahan Monitoring dan Evaluasi Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, NULL, 'JFU09103', 'Penyusun Bahan Mutasi Jabatan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, NULL, 'JFU09104', 'Penyusun Bahan Organisasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, NULL, 'JFU09105', 'Penyusun Bahan Pangkat dan Gaji Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, NULL, 'JFU09106', 'Penyusun Bahan Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, NULL, 'JFU09107', 'Penyusun Bahan Pegembangan Program Bina Ketahanan Keluarga Lanjut Usia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, NULL, 'JFU09108', 'Penyusun Bahan Pegembangan Sistem Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, NULL, 'JFU09109', 'Penyusun Bahan Pegembangan Sistm Jalur Pendidikan Nonformal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, NULL, 'JFU09110', 'Penyusun Bahan Pegmbangan Pemodalan dan Kemitraan Kelompok Usaha Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, NULL, 'JFU09111', 'Penyusun Bahan Pelaksana Anggaran Kebutuhan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, NULL, 'JFU09112', 'Penyusun Bahan Pelaksana Anggaran Penunjang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, NULL, 'JFU09113', 'Penyusun Bahan Pelaksanaan Anggaran Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, NULL, 'JFU09114', 'Penyusun Bahan Pelaksanaan Anggaran Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, NULL, 'JFU09115', 'Penyusun Bahan Pelaporan dan Statistik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, NULL, 'JFU09116', 'Penyusun Bahan Pelatihan dan Pengembangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, NULL, 'JFU09117', 'Penyusun Bahan Pelatihan Internasional', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, NULL, 'JFU09118', 'Penyusun Bahan Pelembagaan Bina Ketahanan Remaja Jalur Masyarakat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, NULL, 'JFU09119', 'Penyusun Bahan Pelembagaan Bina Ketahanan Remaja Jalur Pendidikan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, NULL, 'JFU09120', 'Penyusun Bahan Pemanfaatan Hasil Penelitian', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, NULL, 'JFU09121', 'Penyusun Bahan Pemanfaatan Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, NULL, 'JFU09122', 'Penyusun Bahan Pemanfaatan Profil dan Proyeksi Pengembangan Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, NULL, 'JFU09123', 'Penyusun Bahan Pembakuan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, NULL, 'JFU09124', 'Penyusun Bahan Pemberdayaan Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, NULL, 'JFU09125', 'Penyusun Bahan Pembinaan Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, NULL, 'JFU09126', 'Penyusun Bahan Pembinaan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, NULL, 'JFU09127', 'Penyusun Bahan Pemeliharaan Infrastruktur TI', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, NULL, 'JFU09128', 'Penyusun Bahan Penanggulangan Infertilitas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, NULL, 'JFU09129', 'Penyusun Bahan Penata Usahaan BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, NULL, 'JFU09130', 'Penyusun Bahan Penatausahaan Pengelolaan Sarana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, NULL, 'JFU09131', 'Penyusun Bahan Pencegahan HIV/AIDS', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, NULL, 'JFU09132', 'Penyusun Bahan Pencegahan Kanker Alat Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, NULL, 'JFU09133', 'Penyusun Bahan Pencegahan Penyakit Menular Seks', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, NULL, 'JFU09134', 'Penyusun Bahan Pencitraan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, NULL, 'JFU09135', 'Penyusun Bahan Pendidikan dan Pelatihan Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, NULL, 'JFU09136', 'Penyusun Bahan Penetapan Parameter Kependuduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, NULL, 'JFU09137', 'Penyusun Bahan Penetapan Parameter Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, NULL, 'JFU09138', 'Penyusun Bahan Penetapan Sasaran Parameter Pengendalian Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, NULL, 'JFU09139', 'Penyusun Bahan Pengangkatan dan Pemberhentian Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, NULL, 'JFU09140', 'Penyusun Bahan Pengelolaan Bank Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, NULL, 'JFU09141', 'Penyusun Bahan Pengembangan Admntrasi dan Keuangan Kelompok Usaha Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, NULL, 'JFU09142', 'Penyusun Bahan Pengembangan Hubungan Degan Lembaga Pemeritah Kabupaten / Kota', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(616, NULL, 'JFU09143', 'Penyusun Bahan Pengembangan Hubungan Dengan Lembaga Non Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(617, NULL, 'JFU09144', 'Penyusun Bahan Pengembangan Indikator Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(618, NULL, 'JFU09145', 'Penyusun Bahan Pengembangan Infrasruktur TI', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(619, NULL, 'JFU09146', 'Penyusun Bahan Pengembangan Institusi Masyarakat Pedesaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(620, NULL, 'JFU09147', 'Penyusun Bahan Pengembangan Karir Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(621, NULL, 'JFU09148', 'Penyusun Bahan Pengembangan Kelompok Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(622, NULL, 'JFU09149', 'Penyusun Bahan Pengembangan Keluarga Bina Ketahanan Keluarga Lansia dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(623, NULL, 'JFU09150', 'Penyusun Bahan Pengembangan Kemitraan Bina Ketahanan Keluarga Lansia  dan Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(624, NULL, 'JFU09151', 'Penyusun Bahan Pengembangan Materi Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(625, NULL, 'JFU09152', 'Penyusun Bahan Pengembangan Materi Jalur Pendidikan Nonformal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(626, NULL, 'JFU09153', 'Penyusun Bahan Pengembangan Mekanisme Operasional Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(627, NULL, 'JFU09154', 'Penyusun Bahan Pengembangan Pemasaran Kelompok Usha Ekonomi Kelurga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(628, NULL, 'JFU09155', 'Penyusun Bahan Pengembangan Progam Bina Ketahanan Remaja Jalur Pendidikan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(629, NULL, 'JFU09156', 'Penyusun Bahan Pengembangan Program Bina Keluarga Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(630, NULL, 'JFU09157', 'Penyusun Bahan Pengembangan Program Bina Keluarga Balita', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(631, NULL, 'JFU09158', 'Penyusun Bahan Pengembangan Program Bina Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(632, NULL, 'JFU09159', 'Penyusun Bahan Pengembangan Program Bina Ketahanan Keluarga Rentan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(633, NULL, 'JFU09160', 'Penyusun Bahan Pengembangan Program Bina Ketahanan Remaja Jalur Masyarakat', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(634, NULL, 'JFU09161', 'Penyusun Bahan Pengembangan Sistem Aplikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(635, NULL, 'JFU09162', 'Penyusun Bahan Pengembangan Situs BKKBN dan Media Konferensi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, NULL, 'JFU09163', 'Penyusun Bahan Pengembangan Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, NULL, 'JFU09164', 'Penyusun Bahan Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, NULL, 'JFU09165', 'Penyusun Bahan Penggerakan Advokasi dan Komunikasi Informasi Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(639, NULL, 'JFU09166', 'Penyusun Bahan Pengolahan Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(640, NULL, 'JFU09167', 'Penyusun Bahan Pengolahan Informasi dan Dokumentasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(641, NULL, 'JFU09168', 'Penyusun Bahan Penguatan Hubungan Dengan Lembaga Non Pemeritah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(642, NULL, 'JFU09169', 'Penyusun Bahan Penguatan Hubungan Dengan Lembaga Pemerintah Kabupaten / Kota', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(643, NULL, 'JFU09170', 'Penyusun Bahan Pengumpul dan Pegolahan Data Analis Pemanduan Kebijakan Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(644, NULL, 'JFU09171', 'Penyusun Bahan Pengumpulan Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(645, NULL, 'JFU09172', 'Penyusun Bahan Peningkatan Akses Pelayanan Keluarga Berencana Wilayah Tertinggal Terpencil dan Perbatasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(646, NULL, 'JFU09173', 'Penyusun Bahan Penigkatan Akses Pelayanan Keluarga Berencana Wilayah Miskin Perbatasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(647, NULL, 'JFU09174', 'Penyusun Bahan Penigkatan Kualtas Pelayanan Keluarga Berencana Tertinggal Terpencil dan Perbatasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(648, NULL, 'JFU09175', 'Penyusun Bahan Penilaian Kinerja Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(649, NULL, 'JFU09176', 'Penyusun Bahan Peningkatan Akses Keluarga Berencana Pria', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650, NULL, 'JFU09177', 'Penyusun Bahan Peningkatan Kualitas Pelayanan Keluarga Berencana Wilayah Miskin Perbatasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, NULL, 'JFU09178', 'Penyusun Bahan Peningkatan Kualitas Pelayanan Keluarga Berencana Wilayah Miskin Perkotaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, NULL, 'JFU09179', 'Penyusun Bahan Peningkatan Partisipasi Keluarga Berencana Pria', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, NULL, 'JFU09180', 'Penyusun Bahan Penyediaan Sarana Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654, NULL, 'JFU09181', 'Penyusun Bahan Penyediaan Sarana Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(655, NULL, 'JFU09182', 'Penyusun Bahan Penyelenggaraan dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(656, NULL, 'JFU09183', 'Penyusun Bahan Penyelenggaraan Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, NULL, 'JFU09184', 'Penyusun Bahan Penyiapan Fasilitasi Pemaduan Kebijakan Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(658, NULL, 'JFU09185', 'Penyusun Bahan Penyiapan Program Kelompok Usaha Ekonomi Kelurga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(659, NULL, 'JFU09186', 'Penyusun Bahan Penyusunan Program ', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(660, NULL, 'JFU09187', 'Penyusun Bahan Perangkat Tata Laksana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, NULL, 'JFU09188', 'Penyusun Bahan Perbendaharaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, NULL, 'JFU09189', 'Penyusun Bahan Perecanaan Anggaran Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, NULL, 'JFU09190', 'Penyusun Bahan Perecanaan Anggaran Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, NULL, 'JFU09191', 'Penyusun Bahan Perecanaan Program Pengendalian Penduduk, Keluarga Berencana dan Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, NULL, 'JFU09192', 'Penyusun Bahan Perencanaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(666, NULL, 'JFU09193', 'Penyusun Bahan Perencanaan Advokasi dan Komunikasi Informasi Edukasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(667, NULL, 'JFU09194', 'Penyusun Bahan Perencanaan Anggaran Penunjang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, NULL, 'JFU09195', 'Penyusun Bahan Perencanaan dan Pemasaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, NULL, 'JFU09196', 'Penyusun Bahan Perencanaan dan Pengadaan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, NULL, 'JFU09197', 'Penyusun Bahan Perencanaan Kebutuhan BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(671, NULL, 'JFU09198', 'Penyusun Bahan Perencanaan Kebutuhan Sarana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, NULL, 'JFU09199', 'Penyusun Bahan Perencanaan Kerjasama Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(673, NULL, 'JFU09200', 'Penyusun Bahan Perencanaan Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(674, NULL, 'JFU09201', 'Penyusun Bahan Perencanaan Program Penunjang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(675, NULL, 'JFU09202', 'Penyusun Bahan Pertahanan dan Keamanan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(676, NULL, 'JFU09203', 'Penyusun Bahan Perumusan Pola Sistem Pencatatan dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(677, NULL, 'JFU09204', 'Penyusun Bahan Perundang-Undangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(678, NULL, 'JFU09205', 'Penyusun Bahan Politik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(679, NULL, 'JFU09206', 'Penyusun Bahan Program dan Kerjasama', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, NULL, 'JFU09207', 'Penyusun Bahan Program dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(681, NULL, 'JFU09208', 'Penyusun Bahan Program Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(682, NULL, 'JFU09209', 'Penyusun Bahan Promosi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(683, NULL, 'JFU09210', 'Penyusun Bahan Protokol', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(684, NULL, 'JFU09211', 'Penyusun Bahan Publikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(685, NULL, 'JFU09212', 'Penyusun Bahan Rencana Ketrampilan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(686, NULL, 'JFU09213', 'Penyusun Bahan Rencana Pengembangan Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(687, NULL, 'JFU09214', 'Penyusun Bahan Rencana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(688, NULL, 'JFU09215', 'Penyusun Bahan Rencana Tenaga Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(689, NULL, 'JFU09216', 'Penyusun Bahan Sarana Produksi Media Komunikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(690, NULL, 'JFU09217', 'Penyusun Bahan Sosial', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(691, NULL, 'JFU09218', 'Penyusun Bahan Standarisasi Kerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(692, NULL, 'JFU09219', 'Penyusun Bahan Standarisasi Pelayanan Keluarga Berencana Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(693, NULL, 'JFU09220', 'Penyusun Bahan Standarisasi Pelayanan Keluarga Berencana Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(694, NULL, 'JFU09221', 'Penyusun Bahan Tata Laksana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(695, NULL, 'JFU09222', 'Penyusun Bahan Tata Operasional', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(696, NULL, 'JFU09223', 'Penyusun Bahan Tata Usaha', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(697, NULL, 'JFU09224', 'Penyusun Bahan Tata Usaha Pimpinan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(698, NULL, 'JFU09225', 'Penyusun Bahan Tenaga Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(699, NULL, 'JFU09226', 'Penyusun Bahan Ujian Dinas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, NULL, 'JFU09227', 'Penyusun Bahan Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, NULL, 'JFU09228', 'Penyusun Bahan Umum dan Humas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, NULL, 'JFU09229', 'Penyusun Bahan Verifikasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, NULL, 'JFU09230', 'Penyusun Bina Ketahanan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, NULL, 'JFU09231', 'Penyusun Data Advokasi Hak-Hak Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, NULL, 'JFU09232', 'Penyusun Data Evaluasi Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(706, NULL, 'JFU09233', 'Penyusun Data Hasil Penelitian Keluarga Berencana / Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, NULL, 'JFU09234', 'Penyusun Data Hasil Penelitian Keluarga Sejahtera / Pemberdayaan Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(708, NULL, 'JFU09235', 'Penyusun Data Kebutuhan Barang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(709, NULL, 'JFU09236', 'Penyusun Data Kelahiran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, NULL, 'JFU09237', 'Penyusun Data Kesehatan Sexual', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(711, NULL, 'JFU09238', 'Penyusun Data Keuangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(712, NULL, 'JFU09239', 'Penyusun Data Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(713, NULL, 'JFU09240', 'Penyusun Data Pelayanan dan Konseling', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(714, NULL, 'JFU09241', 'Penyusun Data Pelayanan Medis', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(715, NULL, 'JFU09242', 'Penyusun Data Pengembangan Institusi KB', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(716, NULL, 'JFU09243', 'Penyusun Data Peningkatan Kualitas Lingkungan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(717, NULL, 'JFU09244', 'Penyusun Data Peningkatan Kualitas Usaha', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(718, NULL, 'JFU09245', 'Penyusun Data Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(719, NULL, 'JFU09246', 'Penyusun Data Program Kesetaraan Jender', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, NULL, 'JFU09247', 'Penyusun Data Tenaga Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(721, NULL, 'JFU09248', 'Penyusun Fasilitas Pelayanan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(722, NULL, 'JFU09249', 'Penyusun Kebijakan Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(723, NULL, 'JFU09250', 'Penyusun Laporan dan Evaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(724, NULL, 'JFU09251', 'Penyusun Laporan Kerjasama Luar Negeri', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(725, NULL, 'JFU09252', 'Penyusun Laporan Pengembangan Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(726, NULL, 'JFU09253', 'Penyusun Laporan Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(727, NULL, 'JFU09254', 'Penyusun Masalah Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(728, NULL, 'JFU09255', 'Penyusun Pengembangan Karier Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(729, NULL, 'JFU09256', 'Penyusun Peraturan Kepegawaian dan Dokumentasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(730, NULL, 'JFU09257', 'Penyusun Pola dan Evaluasi Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(731, NULL, 'JFU09258', 'Penyusun Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(732, NULL, 'JFU09259', 'Penyusun Rencana Tenaga Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(733, NULL, 'JFU09260', 'Penyusun Sarana Media Teknologi Pembelajaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(734, NULL, 'JFU09261', 'Penghubung Antar Lembaga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(735, NULL, 'JFU09262', 'Analis Kepegawaian dan Hukum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(736, NULL, 'JFU09263', 'Pengatur', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(737, NULL, 'JFU09264', 'Pengevaluasi Keuangan dan BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(738, NULL, 'JFU09265', 'Bendahara Pengeluaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(739, NULL, 'JFU09266', 'Bendahara Pengeluaran Pembantu', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(740, NULL, 'JFU09267', 'Pengadministrasi Bahan Keuangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(741, NULL, 'JFU09268', 'Penyusun Bahan Perencanaan Program dan Anggaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(742, NULL, 'JFU09269', 'Penyusun Bahan Parameter Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(743, NULL, 'JFU09270', 'Penyusun Bahan Bina Kesertaan Keluarga Berencana Jalur Pemerintah dan Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(744, NULL, 'JFU09271', 'Penyusun Bahan Bina Kesertaan Keluarga Berencana Jalur Wilayah dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(745, NULL, 'JFU09272', 'Penyusun Bahan Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(746, NULL, 'JFU09273', 'Pemelihara Barang Umum dan Humas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(747, NULL, 'JFU09274', 'Pemelihara Arsip Kepegawaian', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(748, NULL, 'JFU09275', 'Analis Perencana Anggaran dan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(749, NULL, 'JFU09276', 'Analis Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(750, NULL, 'JFU09277', 'Penyusun Bahan SAI, Keuangan dan RAKL', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(751, NULL, 'JFU09278', 'Penyusun Data Pelayanan dan Konseling Bina Kesertaan KB Jalur Wilayah Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(752, NULL, 'JFU09280', 'Pengadministrasi Bahan Umum, Humas dan Persuratan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(753, NULL, 'JFU09281', 'Pemelihara Bahan Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(754, NULL, 'JFU09282', 'Pemelihara Bahan Bina Keluarga Balita, Anak dan Ketahanan Lansia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(755, NULL, 'JFU09283', 'Pengadministrasi Bahan Kepegawaian dan Hukum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(756, NULL, 'JFU09284', 'Verifikator Keuangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(757, NULL, 'JFU09285', 'Pemelihara Arsip Perencanaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(758, NULL, 'JFU09286', 'Pemelihara Arsip', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(759, NULL, 'JFU09287', 'Pemelihara Mobil Unit Pelayanan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(760, NULL, 'JFU09288', 'Pengadministrasi Bahan Pengembangan Materi Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(761, NULL, 'JFU09289', 'Pengadministrasi Bahan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(762, NULL, 'JFU09290', 'Pemelihara Bahan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(763, NULL, 'JFU09291', 'Penginventarisasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(764, NULL, 'JFU09292', 'Pengevaluasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(765, NULL, 'JFU09296', 'Pengevaluasi Bina Kesertaan KB Jalur Wilayah dan Sasaran Khusus', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(766, NULL, 'JFU09297', 'Pengevaluasi Bina Keluarga Balita, Anak dan Ketahanan Keluarga Lansia', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(767, NULL, 'JFU09298', 'Pengevaluasi Hubungan Antar Lembaga dan Bina Lini Lapangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(768, NULL, 'JFU09299', 'Analis', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(769, NULL, 'JFU09300', 'Penyusun Bahan Rumah Tangga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(770, NULL, 'JFU09301', 'Pemelihara Bina Ketahan Remaja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(771, NULL, 'JFU09302', 'Pengadministrasi Bahan Peningkatan Kualitas Pelayanan KB Wilayah galcitas', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(772, NULL, 'JFU09303', 'Penyusun Bahan Keluarga Berencana Klinik Swasta', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(773, NULL, 'JFU09304', 'Analis Administrasi Tata Usaha Pengawasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(774, NULL, 'JFU09305', 'Analis Persuratan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(775, NULL, 'JFU09306', 'Penyusun Bahan Pemeliharaan Kendaraan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(776, NULL, 'JFU09307', 'Pemelihara Bahan Promosi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(777, NULL, 'JFU09308', 'Analis Monitoring dan Evaluasi Sistem Pencatatan dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(778, NULL, 'JFU09309', 'Pemelihara Bahan Pengangkatan dan Pemberhentian Pegawai', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(779, NULL, 'JFU09310', 'Penyusun Bahan Pemeliharaan Gedung', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(780, NULL, 'JFU09311', 'Penyusun Bahan Peningkatan Akses Pelayanan Keluarga Berencana Wilayah Miskin Perkotaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(781, NULL, 'JFU09312', 'Penyusun Bahan Kesehatan Reproduksi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(782, NULL, 'JFU09313', 'Penyusun Bahan Pemeliharaan Peralatan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(783, NULL, 'JFU09314', 'Penyusun Bahan Persuratan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(784, NULL, 'JFU09315', 'Pemelihara Bahan Pengembangan Hubungan Dengan Lembaga Non Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(785, NULL, 'JFU09316', 'Penyusun Bahan Data Kependudukan dan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(786, NULL, 'JFU09317', 'Pemberhentian Sementara sebagai PNS', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(787, NULL, 'JFU09318', 'Penyusun Bahan Pengelolaan Situs dan Media Konferensi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(788, NULL, 'JFU09319', 'Pengevaluasi Pemberdayaan Ekonomi Keluarga', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(789, NULL, 'JFU09320', 'Pengadministrasi Penguatan Hubungan Dengan Lembaga Non Pemerintah', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(790, NULL, 'JFU09321', 'Pengadministrasi Bahan Evaluasi Sarana Program', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(791, NULL, 'JFU09322', 'Pengadministrasi Bahan Evaluasi BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(792, NULL, 'JFU09323', 'Analis Tata Usaha Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(793, NULL, 'JFU09324', 'Pengadministrasi Pengumpulan Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(794, NULL, 'JFU10001', 'Petugas Lapangan Keluarga Berencana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(795, NULL, 'JFU10002', 'PPLKB', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(796, NULL, 'JFU11001', 'Pustakawan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(797, NULL, 'JFU12001', 'Satpam', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(798, NULL, 'JFU13001', 'Sekretaris Pimpinan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(799, NULL, 'JFU13002', 'Sekretaris Pimpinan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(800, NULL, 'JFU14001', 'Statistisi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(801, NULL, 'JFU15001', 'Widyaiswara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(802, NULL, 'JFU16001', 'Pesuruh', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(803, NULL, 'JFU17001', 'Pengolah Data Keluarga Sejahtera', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(804, NULL, 'JFU40001', 'Pengelola Barang Persediaan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(805, NULL, 'JFU50001', 'Pengadministrasi Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(806, NULL, 'JFU60001', 'Penyusun Bahan Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(807, NULL, 'JFU60002', 'Penyusun Bahan Dampak Daya Dukung Lingkungan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(808, NULL, 'JFU60003', 'Penyusun Bahan Dampak Ekonomi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(809, NULL, 'JFU60004', 'Penyusun Bahan Pengumpulan dan Pengolahan Data', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(810, NULL, 'JFU60005', 'Penyusun Bahan Pengembangan Kemitraan Bina Keluarga Balita dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(811, NULL, 'JFU60006', 'Penyusun Bahan Pengembangan Sistem Jalur Pendidikan Formal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(812, NULL, 'JFU60007', 'Penyusun Bahan Analisa dan Evaluasi Pengendalian Penduduk', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(813, NULL, 'JFU70001', 'Analis Penelitian dan Pengembangan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(814, NULL, 'JFU70002', 'Analis Program Penelitian dan Pengembangan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(815, NULL, 'JFU70003', 'Analis SDM Aparatur', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `jenjang_jabatan` (`hid`, `jenisjabatan_id`, `kode_jab`, `jabatan`, `jenis_jab`, `kelompok_jabatan`, `ak_kenaikan`, `creation_date`, `created_by`, `updated_date`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(816, NULL, 'JFU70004', 'Analis Perencanaan, Evaluasi dan Pelaporan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(817, NULL, 'JFU70005', 'Analis Perencanaan Anggaran', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(818, NULL, 'JFU70006', 'Analis Organisasi dan Tata Laksana', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(819, NULL, 'JFU70007', 'Penyusun Kurikulum, Modul dan Bahan Ajar', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(820, NULL, 'JFU70008', 'Pengelola Teknologi Informasi', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(821, NULL, 'JFU70009', 'Analis Bidang Pengawasan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(822, NULL, 'JFU70010', 'Analis Kesehatan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(823, NULL, 'JFU70011', 'Analis Statistik', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(824, NULL, 'JFU70012', 'Pengelola Barang Milik Negara', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(825, NULL, 'JFU70013', 'Analis Keuangan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(826, NULL, 'JFU70014', 'Analis Kerjasama', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(827, NULL, 'JFU70015', 'Analis Kinerja', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(828, NULL, 'JFU70016', 'Penyusun Analisis Dampak Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(829, NULL, 'JFU70017', 'Analis Kesehatan Ibu dan Anak', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(830, NULL, 'JFU70018', 'Penyusun Kerjasama Pendidikan Kependudukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(831, NULL, 'JFU70019', 'Analis Pelaporan Pendidikan dan Pelatihan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(832, NULL, 'JFU70020', 'Analis Pengelolaan BMN', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(833, NULL, 'JFU70021', 'Pemelihara Pengembangan Materi Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(834, NULL, 'JFU70022', 'Pemelihara Pengembangan Sistem Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(835, NULL, 'JFU70023', 'Pengadministrasi Monitoring dan Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(836, NULL, 'JFU70024', 'Penyusun Bahan Pengembangan Program Bina Ketahanan Remaja Jalur Pendidikan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(837, NULL, 'JFU80001', 'Bendahara Barang', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(838, NULL, 'JFU99997', 'PNS Tugas Belajar', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(839, NULL, 'JFU99998', 'Perbantukan', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(840, NULL, 'JFU99999', 'Fungsional Umum', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(841, NULL, 'JFUDUK07', 'Analis Monitoring dan Evaluasi Jalur Pendidikan Non Formal dan Informal', 'FU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kamus_dupak`
--

CREATE TABLE `kamus_dupak` (
  `hid` int(11) NOT NULL,
  `kegiatan_hid` int(11) DEFAULT NULL,
  `output` varchar(145) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamus_dupak`
--

INSERT INTO `kamus_dupak` (`hid`, `kegiatan_hid`, `output`, `orderby`, `created_by`, `creation_date`, `deleted_at`, `deleted_by`) VALUES
(1, 75, 'Ijazah', NULL, 'admin', '2022-04-10 20:46:21', NULL, NULL),
(2, 76, 'Jurnal/Buku/Naskah', NULL, 'admin', '2022-04-24 11:11:41', NULL, NULL),
(3, 77, 'Buku', NULL, 'admin', '2022-04-10 20:48:12', NULL, NULL),
(4, 78, 'Jurnal/Buku/Naskah', NULL, 'admin', '2022-04-10 20:48:22', NULL, NULL),
(5, 79, 'Buku', NULL, 'admin', '2022-04-10 20:48:34', NULL, NULL),
(6, 80, 'Makalah', NULL, 'admin', '2022-04-10 20:48:42', NULL, NULL),
(7, 81, 'Buku', NULL, 'admin', '2022-04-10 20:48:50', NULL, NULL),
(8, 82, 'Naskah', NULL, 'admin', '2022-04-10 20:48:58', NULL, NULL),
(9, 83, 'Buku', NULL, 'admin', '2022-04-10 20:49:15', NULL, NULL),
(10, 115, 'Sertifikat/Piagam', NULL, 'admin', '2022-04-10 20:49:27', NULL, NULL),
(11, 20, 'Laporan', NULL, 'admin', '2022-04-10 20:49:42', NULL, NULL),
(12, 39, 'Dokumen', NULL, 'admin', '2022-04-10 20:49:55', NULL, NULL),
(13, 42, 'Dokumen', NULL, 'admin', '2022-04-10 20:50:18', NULL, NULL),
(14, 44, 'Dokumen', NULL, 'admin', '2022-04-10 20:50:37', NULL, NULL),
(15, 74, 'Laporan', NULL, 'admin', '2022-04-10 20:50:54', NULL, NULL),
(16, 64, 'Laporan', NULL, 'admin', '2022-04-10 20:51:04', NULL, NULL),
(17, 122, 'Laporan', NULL, 'admin', '2022-04-10 20:51:13', NULL, NULL),
(18, 63, 'Laporan', NULL, 'admin', '2022-04-10 20:51:23', NULL, NULL),
(19, 118, 'Ijazah', NULL, 'admin', '2022-04-11 14:40:06', NULL, NULL),
(20, 61, 'Dokumentasi', NULL, 'admin', '2022-04-13 02:47:55', NULL, NULL),
(21, 61, 'FLow Map', NULL, 'admin', '2022-04-13 02:48:15', NULL, NULL),
(22, 26, 'Laporan', NULL, 'admin', '2022-04-24 05:44:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kamus_kegiatan`
--

CREATE TABLE `kamus_kegiatan` (
  `hid` int(11) NOT NULL,
  `kategori` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unsur_kegiatan` varchar(245) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subunsur_kegiatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `butir_kegiatan` varchar(455) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jumlah_ak` double DEFAULT NULL,
  `jumlah_ak_akhir` double DEFAULT NULL,
  `jenisjabatan_id` int(11) DEFAULT NULL,
  `kelompok_jabatan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jabatan_id` int(11) DEFAULT NULL,
  `langkah` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nomor` int(11) DEFAULT NULL,
  `output` varchar(245) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kamus_kegiatan`
--

INSERT INTO `kamus_kegiatan` (`hid`, `kategori`, `unsur_kegiatan`, `subunsur_kegiatan`, `butir_kegiatan`, `jenis`, `jumlah_ak`, `jumlah_ak_akhir`, `jenisjabatan_id`, `kelompok_jabatan`, `jabatan_id`, `langkah`, `nomor`, `output`, `created_by`, `creation_date`, `updated_date`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'A.Manajemen Layanan TI', 'Melakukan pemenuhan permintaan dan layanan teknologi informasi', 'Nilai', 0.15, NULL, 1, NULL, 36, NULL, NULL, 'Laporan pemenuhan permintaan layanan TI', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan pengumpulan informasi mengenai data instansi', 'Nilai', 0.55, NULL, 1, NULL, 36, NULL, NULL, 'Kebutuhan data strategis organisasi/instansi', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan pengadministrasian kegiatan tata kelola data', 'Nilai', 0.11, NULL, 1, NULL, 36, NULL, NULL, 'Agenda, catatan, jadwal, artefak dari organisasi tata kelola data', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan pencatatan permasalahan pengelolaan data', 'Nilai', 0.11, NULL, 1, NULL, 36, NULL, NULL, 'Catatan issue /permasalahan pengelolaan data', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan perawatan arsitektur teknologi data', 'Nilai', 0.055, NULL, 1, NULL, 36, NULL, NULL, 'Dokumen mekanisme pemeliharaan arsitektur data-teknologi', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan perawatan arsitektur integrasi data', 'Nilai', 0.055, NULL, 1, NULL, 36, NULL, NULL, 'Dokumen mekanisme pemeliharaan arsitektur data terintegrasi', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan perawatan data model', 'Nilai', 0.055, NULL, 1, NULL, 36, NULL, NULL, 'Dokumen mekanisme pemeliharaan data model business intelligence', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan perawatan business intelligence', 'Nilai', 0.055, NULL, 1, NULL, 36, NULL, NULL, 'Laporan perawatan implementasi', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan perawatan taksonomi data di suatu instansi', 'Nilai', 0.275, NULL, 1, NULL, 36, NULL, NULL, 'Laporan mekanisme pemeliharaan taksonomi organisasi, standar manajemen konten, XML', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan perawatan arsitektur data', 'Nilai', 0.275, NULL, 1, NULL, 36, NULL, NULL, 'Laporan mekanisme pemeliharaan arsitektur metadata', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Mengembangkan data model', 'Nilai', 0.11, NULL, 1, NULL, 36, NULL, NULL, 'Laporan dan diagram model data konseptual, logis, dan fisik', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', ' sederhanaMelakukan perancangan data model', 'Nilai', 0.11, NULL, 1, NULL, 35, NULL, NULL, 'Spesifikasi data definition language', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan uji coba rancangan layanan akses data', 'Nilai', 0.11, NULL, 1, NULL, 36, NULL, NULL, 'Laporan uji coba', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan perancangan visualisasi informasi sederhana', 'Nilai', 0.22, NULL, 1, NULL, 35, NULL, NULL, 'Dokumen proses rancangan visualisasi, tampilan aplikasi, laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan uji coba rancangan visualisasi informasi', 'Nilai', 0.11, NULL, 1, NULL, 36, NULL, NULL, 'Laporan uji coba', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan penyiapan data uji coba rancangan database', 'Nilai', 0.055, NULL, 1, NULL, 36, NULL, NULL, 'Basis data yang di uji, data yang diuji', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan uji coba rancangan layanan integrasi data', 'Nilai', 0.11, NULL, 1, NULL, 36, NULL, NULL, 'Laporan uji coba', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan uji coba prosedur validasi kebutuhan informasi', 'Nilai', 0.11, NULL, 1, NULL, 36, NULL, NULL, 'SOP pengujian, laporan hasil uji prosedur', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan instalasi/updating DBMS', 'Nilai', 0.055, NULL, 1, NULL, 36, NULL, NULL, 'Pemeliharaan lingkungan basis data produksi, perubahan terkelola ke basis data produksi, rilis, laporan instalasi', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan penggandaan data', 'Nilai', 0.001, NULL, 1, NULL, 37, NULL, NULL, 'Laporan penggandaan data dan surat tugas', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan   pemantauan   (monitoring ) kinerja database', 'Nilai', 0.01, NULL, 1, NULL, 36, NULL, NULL, 'Laporan hasil pemantauan', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan   pengarsipan,    pencarian kembali (retrieve ), atau penghapusan data (purge )', 'Nilai', 0.06, NULL, 1, NULL, 35, NULL, NULL, 'Daftar data yang diarsipkan, daftar data yang diambil, daftar data yang dihapus', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan implementasi teknologi data', 'Nilai', 0.11, NULL, 1, NULL, 36, NULL, NULL, 'Teknologi data yang diinstal, laporan instalasi', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Memberikan support pemecahan masalah teknologi data', 'Nilai', 0.028, NULL, 1, NULL, 36, NULL, NULL, 'Rekomendasi pemecahan masalah teknologi data', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan implementasi data warehouse', 'Nilai', 0.76, NULL, 1, NULL, 35, NULL, NULL, 'Laporan implementasi data warehouse', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan   pemantauan   (monitoring ) autentifikasi atau perilaku akses pengguna', 'Nilai', 0.128, NULL, 1, NULL, 36, NULL, NULL, 'Laporan hasil pemantauan', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan registrasi permasalahan kualitas data', 'Nilai', 0.225, NULL, 1, NULL, 36, NULL, NULL, 'Daftar log permasalahan kualitas data', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'B.Pengelolaan data (Data management )', 'Melakukan pemantauan (monitoring ) implementasi prosedur pengelolaan kualitas data', 'Nilai', 0.225, NULL, 1, NULL, 36, NULL, NULL, 'Laporan hasil pemantauan', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'C.Audit TI', 'Melakukan pengumpulan informasi dasar untuk kebutuhan audit TI', 'Nilai', 0.38, NULL, 1, NULL, 36, NULL, NULL, 'Dokumen informasi dasar objek audit', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Utama', 'I.Tata Kelola dan Tata Laksana Teknologi Informasi', 'C.Audit TI', 'Melakukan pengumpulan dokumen untuk kebutuhan audit TI', 'Nilai', 0.73, NULL, 1, NULL, 35, NULL, NULL, 'Hasil pengumpulan data', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'A.Sistem Jaringan Komputer', 'Melakukan analisis kebutuhan pengguna sistem jaringan komputer lokal (Local Area Network )', 'Nilai', 0.6, NULL, 1, NULL, 35, NULL, NULL, 'Dokumen hasil analisis', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'A.Sistem Jaringan Komputer', 'Melakukan analisis kondisi sistem jaringan komputer lokal (Local Area Network ) yang sedang berjalan', 'Nilai', 0.34, NULL, 1, NULL, 35, NULL, NULL, 'Dokumen hasil analisis', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'A.Sistem Jaringan Komputer', 'Menerapkan rancangan logis sistem jaringan komputer lokal (Local Area Network )', 'Nilai', 0.22, NULL, 1, NULL, 36, NULL, NULL, 'Dokumen implementasi sistem jaringan komputer lokal', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'A.Sistem Jaringan Komputer', 'Menerapkan rancangan fisik sistem jaringan komputer lokal (Local Area Network )', 'Nilai', 0.54, NULL, 1, NULL, 36, NULL, NULL, 'Dokumen implementasi sistem jaringan komputer', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'A.Sistem Jaringan Komputer', 'Menerapkan rancangan logis sistem pengamanan jaringan komputer lokal (Local Area Network )', 'Nilai', 0.165, NULL, 1, NULL, 36, NULL, NULL, 'Dokumen implementasi keamanan sistem jaringan komputer', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'A.Sistem Jaringan Komputer', 'Menyusun rancangan uji coba sistem jaringan lokal (Local Area Network )', 'Nilai', 0.11, NULL, 1, NULL, 36, NULL, NULL, 'Dokumen rancangan uji coba', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'A.Sistem Jaringan Komputer', 'Melakukan uji coba sistem jaringan komputer lokal (Local Area Network )', 'Nilai', 0.06, NULL, 1, NULL, 36, NULL, NULL, 'Laporan uji coba', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'A.Sistem Jaringan Komputer', 'Melakukan   pemantauan   (monitoring ) jaringan', 'Nilai', 0.02, NULL, 1, NULL, 36, NULL, NULL, 'Laporan hasil pemantauan', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'A.Sistem Jaringan Komputer', 'Melakukan deteksi dan atau perbaikan terhadap permasalahan yang terjadi pada sistem jaringan lokal (Local Area Network )', 'Nilai', 0.011, NULL, 1, NULL, 37, NULL, NULL, 'Dokumen hasil pendeteksian dan atau perbaikan kerusakan peralatan sistem jaringan komputer', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'A.Sistem Jaringan Komputer', 'Menyusun pedoman operasional sistem jaringan komputer dan keamanan jaringan', 'Nilai', 1.686, NULL, 1, NULL, 35, NULL, NULL, 'Buku pedoman operasional, panduan pengguna', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'B.Manajemen Infrastruktur TI', 'Melakukan pemeriksaan kesesuaian antara perangkat TI End User dengan spesifikasi teknis', 'Nilai', 0.225, NULL, 1, NULL, 36, NULL, NULL, 'Dokumen hasil pemeriksaan (User Acceptance Test dan Acceptance Test Procedure )', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'B.Manajemen Infrastruktur TI', 'Melakukan pencatatan infrastruktur TI', 'Nilai', 0.209, NULL, 1, NULL, 37, NULL, NULL, 'Dokumen inventaris', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'B.Manajemen Infrastruktur TI', 'Melakukan pengujian perangkat TI End User', 'Nilai', 0.225, NULL, 1, NULL, 36, NULL, NULL, 'Dokumen hasil pengujian (User Acceptance  Test )', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'B.Manajemen Infrastruktur TI', 'Melakukan pemasangan kabel untuk infrastruktur TI', 'Nilai', 0.059, NULL, 1, NULL, 37, NULL, NULL, 'Dokumen hasil pemasangan', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'B.Manajemen Infrastruktur TI', 'Menyusun rencana pemeliharaan perangkat TI End User', 'Nilai', 0.1, NULL, 1, NULL, 35, NULL, NULL, 'Dokumentasi rencana pemeliharaan perangkat TI End User', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'B.Manajemen Infrastruktur TI', 'Melakukan pemeliharaan perangkat TI End User', 'Nilai', 0.116, NULL, 1, NULL, 37, NULL, NULL, 'Dokumen kegiatan perawatan', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'B.Manajemen Infrastruktur TI', 'Melakukan pemasangan perangkat fisik TI', 'Nilai', 0.165, NULL, 1, NULL, 36, NULL, NULL, 'Dokumen hasil pemasangan perangkat keamanan fisik TI', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'B.Manajemen Infrastruktur TI', 'Melakukan pemantauan (monitoring ) kinerja infrastruktur TI', 'Nilai', 0.055, NULL, 1, NULL, 36, NULL, NULL, 'Laporan hasil pemantauan', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'B.Manajemen Infrastruktur TI', 'Melakukan deteksi dan atau perbaikan terhadap permasalahan perangkat TI End User', 'Nilai', 0.049, NULL, 1, NULL, 37, NULL, NULL, 'Dokumen hasil pendeteksian dan atau perbaikan kerusakan peralatan perangkat TI End User', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Utama', 'II.Infrastruktur Teknologi Informasi', 'B.Manajemen Infrastruktur TI', 'Melakukan instalasi/upgrade sistem operasi komputer/perangkat lunak pada infrastruktur TI', 'Nilai', 0.042, NULL, 1, NULL, 36, NULL, NULL, 'Laporan pelaksanaan instalasi/upgrade', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Utama', 'III.Sistem Informasi dan Multimedia', 'A.Sistem Informasi', 'Menyusun petunjuk operasional program aplikasi', 'Nilai', 0.11, NULL, 1, NULL, 36, NULL, NULL, 'Buku petunjuk pengoperasian sistem', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Utama', 'III.Sistem Informasi dan Multimedia', 'A.Sistem Informasi', 'Menyusun dokumentasi pengembangan sistem informasi', 'Nilai', 0.03, NULL, 1, NULL, 36, NULL, NULL, 'Kompilasi dokumen', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Utama', 'III.Sistem Informasi dan Multimedia', 'A.Sistem Informasi', 'Melakukan analisis kebutuhan program aplikasi', 'Nilai', 0.03, NULL, 1, NULL, 36, NULL, NULL, 'Jumlah dokumen yang dikerjakan dan keterangan kecepatan scanner', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Utama', 'III.Sistem Informasi dan Multimedia', 'A.Sistem Informasi', 'Membuat program aplikasi', 'Nilai', 0.55, NULL, 1, NULL, 36, NULL, NULL, 'Laporan perekaman data', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Utama', 'III.Sistem Informasi dan Multimedia', 'A.Sistem Informasi', 'Mengembangkan dan atau meremajakan program aplikasi', 'Nilai', 0.275, NULL, 1, NULL, 36, NULL, NULL, 'Laporan perekaman data', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Utama', 'III.Sistem Informasi dan Multimedia', 'A.Sistem Informasi', 'Melakukan uji coba program aplikasi', 'Nilai', 0.165, NULL, 1, NULL, 36, NULL, NULL, 'Laporan perekaman data', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Utama', 'III.Sistem Informasi dan Multimedia', 'B.Pengolahan Data', 'Melakukan perekaman data dengan pemindaian', 'Nilai', 0.002, NULL, 1, NULL, 37, NULL, NULL, 'Laporan manipulasi data', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Utama', 'III.Sistem Informasi dan Multimedia', 'B.Pengolahan Data', 'Melakukan perekaman data tanpa validasi', 'Nilai', 0, NULL, 1, NULL, 37, NULL, NULL, 'Laporan konversi data', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Utama', 'III.Sistem Informasi dan Multimedia', 'B.Pengolahan Data', 'Melakukan validasi hasil perekaman data', 'Nilai', 0, NULL, 1, NULL, 37, NULL, NULL, 'Laporan kompilasi', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Utama', 'III.Sistem Informasi dan Multimedia', 'B.Pengolahan Data', 'Melakukan perekaman data dengan validasi', 'Nilai', 0.001, NULL, 1, NULL, 37, NULL, NULL, 'Laporan hasil perekaman data spasial', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Utama', 'III.Sistem Informasi dan Multimedia', 'B.Pengolahan Data', 'Membuat query sederhana', 'Nilai', 0.088, NULL, 1, NULL, 37, NULL, NULL, 'Dokumentasi tahapan kegiatan, quick look , dan penjelasan penggunaan peta tematik', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Utama', 'III.Sistem Informasi dan Multimedia', 'B.Pengolahan Data', 'Melakukan konversi data', 'Nilai', 0.002, NULL, 1, NULL, 37, NULL, NULL, 'Laporan hasil pengolahan peta', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Utama', 'III.Sistem Informasi dan Multimedia', 'B.Pengolahan Data', 'Melakukan kompilasi data pengolahan', 'Nilai', 0.044, NULL, 1, NULL, 37, NULL, NULL, 'Laporan hasil editing data spasial', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Utama', 'III.Sistem Informasi dan Multimedia', 'C.Area TI spesial/ khusus', 'Melakukan perekaman data spasial', 'Nilai', 0.001, NULL, 1, NULL, 37, NULL, NULL, 'Laporan hasil pemeriksaan', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Utama', 'III.Sistem Informasi dan Multimedia', 'C.Area TI spesial/ khusus', 'Membuat peta tematik sederhana', 'Nilai', 0.02, NULL, 1, NULL, 36, NULL, NULL, 'Hasil desain grafis', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Utama', 'III.Sistem Informasi dan Multimedia', 'C.Area TI spesial/ khusus', 'Melakukan pengolahan data atribut dan spasial sederhana', 'Nilai', 0.04, NULL, 1, NULL, 36, NULL, NULL, 'Dokumentasi berupa perubahan pemrograman multimedia', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'Utama', 'III.Sistem Informasi dan Multimedia', 'C.Area TI spesial/ khusus', 'Melakukan editing data spasial', 'Nilai', 0.02, NULL, 1, NULL, 36, NULL, NULL, 'Dokumentasi objek', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Utama', 'III.Sistem Informasi dan Multimedia', 'C.Area TI spesial/ khusus', 'Melakukan verifikasi data spasial', 'Nilai', 0.113, NULL, 1, NULL, 35, NULL, NULL, 'Dokumentasi tahapan prototype', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Utama', 'III.Sistem Informasi dan Multimedia', 'C.Area TI spesial/ khusus', 'Membuat desain grafis', 'Nilai', 0.02, NULL, 1, NULL, 36, NULL, NULL, 'Dokumentasi pemrograman', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Utama', 'III.Sistem Informasi dan Multimedia', 'C.Area TI spesial/ khusus', 'Melakukan editing objek multimedia sederhana dengan piranti lunak', 'Nilai', 0.255, NULL, 1, NULL, 35, NULL, NULL, 'Laporan uji coba program', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Utama', 'III.Sistem Informasi dan Multimedia', 'C.Area TI spesial/ khusus', 'Membuat objek multimedia sederhana dengan piranti lunak', 'Nilai', 0.69, NULL, 1, NULL, 35, NULL, NULL, 'Dokumen hasil analisis', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Utama', 'III.Sistem Informasi dan Multimedia', 'C.Area TI spesial/ khusus', 'Membuat prototype sederhana pada program multimedia', 'Nilai', 0.22, NULL, 1, NULL, 35, NULL, NULL, 'Source code , spesifikasi program aplikasi, screen capture , penjelasan fungsi modul/object', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Utama', 'III.Sistem Informasi dan Multimedia', 'C.Area TI spesial/ khusus', 'Membuat program multimedia sederhana', 'Nilai', 0.44, NULL, 1, NULL, 35, NULL, NULL, 'Dokumentasi pengembangan/peremajaan program aplikasi lama dan baru', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Utama', 'III.Sistem Informasi dan Multimedia', 'C.Area TI spesial/ khusus', 'Melakukan uji coba program multimedia interaktif', 'Nilai', 0.02, NULL, 1, NULL, 37, NULL, NULL, 'Laporan uji coba program', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Penunjang', 'I.Pengembangan Profesi', 'A.Perolehan ijazah/gelar pendidikan formal sesuai dengan bidang tugas Jabatan Fungsional Pranata Komputer', 'Memperoleh ijazah sesuai dengan bidang tugas Jabatan Fungsional Pranata Komputer', 'Prosen', 25, NULL, 1, NULL, NULL, NULL, NULL, 'Ijazah/Gelar', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Penunjang', 'I.Pengembangan Profesi', 'B.Pembuatan Karya Tulis/Karya Ilmiah di bidang teknologi informasi berbasis komputer', 'Membuat karya tulis/karya ilmiah hasil penelitian/pengkajian/survei/evaluasi di bidang teknologi informasi berbasis komputer yang dipublikasikan:a.dalam bentuk buku/majalah ilmiah internasional yang diterbitkan internasional yang terindek', 'Nilai', 20, NULL, 1, NULL, NULL, NULL, NULL, 'Jurnal/Buku', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Penunjang', 'I.Pengembangan Profesi', 'B.Pembuatan Karya Tulis/Karya Ilmiah di bidang teknologi informasi berbasis komputer', 'Membuat karya tulis/karya ilmiah hasil penelitian/pengkajian/survei/evaluasi di bidang teknologi informasi berbasis komputer yang dipublikasikan:b.dalam bentuk buku/majalah ilmiah internasional yang diterbitkan nasional', 'Nilai', 12.5, NULL, 1, NULL, NULL, NULL, NULL, 'Jurnal/Buku', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Penunjang', 'I.Pengembangan Profesi', 'B.Pembuatan Karya Tulis/Karya Ilmiah di bidang teknologi informasi berbasis komputer', 'Membuat karya tulis/karya ilmiah hasil penelitian/pengkajian/survei/evaluasi di bidang teknologi informasi berbasis komputer yang dipublikasikan:c.dalam bentuk buku/majalah ilmiah internasional yang diterbitkan dan diakui oleh organisasi profesi dan Instansi Pembina', 'Nilai', 6, NULL, 1, NULL, NULL, NULL, NULL, 'Jurnal/Buku/Naskah', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Penunjang', 'I.Pengembangan Profesi', 'B.Pembuatan Karya Tulis/Karya Ilmiah di bidang teknologi informasi berbasis komputer', 'Membuat karya tulis/karya ilmiah hasil penelitian/pengkajian/survei/evaluasi di bidang teknologi informasi berbasis komputer yang tidak dipublikasikan:a.dalam bentuk buku', 'Nilai', 8, NULL, 1, NULL, NULL, NULL, NULL, 'Buku', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Penunjang', 'I.Pengembangan Profesi', 'B.Pembuatan Karya Tulis/Karya Ilmiah di bidang teknologi informasi berbasis komputer', 'Membuat karya tulis/karya ilmiah hasil penelitian/pengkajian/survei/evaluasi di bidang teknologi informasi berbasis komputer yang tidak dipublikasikan:b.dalam bentuk makalah', 'Nilai', 4, NULL, 1, NULL, NULL, NULL, NULL, 'Makalah', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Penunjang', 'I.Pengembangan Profesi', 'B.Pembuatan Karya Tulis/Karya Ilmiah di bidang teknologi informasi berbasis komputer', 'Membuat karya tulis/karya ilmiah berupa tinjauan atau ulasan ilmiah hasil gagasan sendiri di bidang teknologi informasi berbasis komputer yang dipublikasikan:a.dalam bentuk buku yang diterbitkan dan diedarkan secara nasional', 'Nilai', 8, NULL, 1, NULL, NULL, NULL, NULL, 'Buku', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Penunjang', 'I.Pengembangan Profesi', 'B.Pembuatan Karya Tulis/Karya Ilmiah di bidang teknologi informasi berbasis komputer', 'Membuat karya tulis/karya ilmiah berupa tinjauan atau ulasan ilmiah hasil gagasan sendiri di bidang teknologi informasi berbasis komputer yang dipublikasikan:b.dalam majalah ilmiah yang diakui oleh organisasi profesi dan Instansi Pembina', 'Nilai', 4, NULL, 1, NULL, NULL, NULL, NULL, 'Naskah', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Penunjang', 'I.Pengembangan Profesi', 'B.Pembuatan Karya Tulis/Karya Ilmiah di bidang teknologi informasi berbasis komputer', 'Membuat karya tulis/karya ilmiah berupa tinjauan atau ulasan ilmiah hasil gagasan sendiri di bidang teknologi informasi berbasis komputer yang tidak dipublikasikan:a.dalam bentuk buku', 'Nilai', 7, NULL, 1, NULL, NULL, NULL, NULL, 'Buku', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Penunjang', 'I.Pengembangan Profesi', 'B.Pembuatan Karya Tulis/Karya Ilmiah di bidang teknologi informasi berbasis komputer', 'Membuat karya tulis/karya ilmiah berupa tinjauan atau ulasan ilmiah hasil gagasan sendiri di bidang teknologi informasi berbasis komputer yang tidak dipublikasikan:b.dalam bentuk makalah', 'Nilai', 3.5, NULL, 1, NULL, NULL, NULL, NULL, 'Makalah', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Penunjang', 'I.Pengembangan Profesi', 'B.Pembuatan Karya Tulis/Karya Ilmiah di bidang teknologi informasi berbasis komputer', 'Menyampaikan prasaran berupa tinjauan, gagasan dan atau ulasan ilmiah dalam pertemuan ilmiah', 'Nilai', 2.5, NULL, 1, NULL, NULL, NULL, NULL, 'Naskah', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Penunjang', 'I.Pengembangan Profesi', 'B.Pembuatan Karya Tulis/Karya Ilmiah di bidang teknologi informasi berbasis komputer', 'Membuat artikel di bidang teknologi informasi berbasis komputer yang dipublikasikan', 'Nilai', 2, NULL, 1, NULL, NULL, NULL, NULL, 'Artikel', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Penunjang', 'I.Pengembangan Profesi', 'C.Penerjemahan/Penyaduran Buku dan Bahan-Bahan Lain di bidang teknologi informasi berbasis komputer', ' bidang teknologi informasi berbasis komputer yang dipublikasikan:Menerjemahkan/menyadur buku atau karya ilmiah dia.dalam bentuk buku yang diterbitkan dan diedarkan secara nasional', 'Nilai', 7, NULL, 1, NULL, NULL, NULL, NULL, 'Buku', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Penunjang', 'I.Pengembangan Profesi', 'C.Penerjemahan/Penyaduran Buku dan Bahan-Bahan Lain di bidang teknologi informasi berbasis komputer', ' bidang teknologi informasi berbasis komputer yang dipublikasikan:Menerjemahkan/menyadur buku atau karya ilmiah dib.dalam majalah ilmiah yang diakui oleh organisasi profesi dan Instansi Pembina', 'Nilai', 3.5, NULL, 1, NULL, NULL, NULL, NULL, 'Naskah', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Penunjang', 'I.Pengembangan Profesi', 'C.Penerjemahan/Penyaduran Buku dan Bahan-Bahan Lain di bidang teknologi informasi berbasis komputer', 'Menerjemahkan/menyadur buku atau karya ilmiah di bidang teknologi informasi berbasis komputer yang tidak dipublikasikan:a.dalam bentuk buku', 'Nilai', 3, NULL, 1, NULL, NULL, NULL, NULL, 'Buku', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Penunjang', 'I.Pengembangan Profesi', 'C.Penerjemahan/Penyaduran Buku dan Bahan-Bahan Lain di bidang teknologi informasi berbasis komputer', 'Menerjemahkan/menyadur buku atau karya ilmiah di bidang teknologi informasi berbasis komputer yang tidak dipublikasikan:b.dalam bentuk makalah', 'Nilai', 1.5, NULL, 1, NULL, NULL, NULL, NULL, 'Makalah', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Penunjang', 'I.Pengembangan Profesi', 'D.Penyusunan Standar/Pedoman/Petunjuk Pelaksanaan/Petunjuk Teknis di bidang teknologi informasi', 'Membuat buku standar/pedoman/ petunjuk pelaksanaan/ petunjuk teknis di bidang teknologi informasi berbasis komputer', 'Nilai', 3, NULL, 1, NULL, NULL, NULL, NULL, 'Buku', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'Pelatihan fungsional', 'Nilai', 0.5, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'seminar/lokakarya/konferensi/simposium/studi banding-lapangan', 'Nilai', 3, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan teknis/magang di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikata.Lamanya lebih dari 960 jam', 'Nilai', 15, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan teknis/magang di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikatb.Lamanya antara 641 - 960 jam', 'Nilai', 9, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan teknis/magang di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikatc.Lamanya antara 481 - 640 jam', 'Nilai', 6, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan teknis/magang di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikatd.Lamanya antara 161 - 480 jam', 'Nilai', 3, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan teknis/magang di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikate.Lamanya antara 81 - 160 jam', 'Nilai', 2, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan teknis/magang di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikatf.Lamanya antara 30 - 80 jam', 'Nilai', 1, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan teknis/magang di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikatg.Lamanya kurang dari 30 jam', 'Nilai', 0.5, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan manajerial/sosial kultural di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikata.Lamanya lebih dari 960 jam', 'Nilai', 7.5, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan manajerial/sosial kultural di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikatb.Lamanya antara 641 - 960 jam', 'Nilai', 4.5, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan manajerial/sosial kultural di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikatc.Lamanya antara 481 - 640 jam', 'Nilai', 3, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan manajerial/sosial kultural di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikatd.Lamanya antara 161 - 480 jam', 'Nilai', 1.5, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan manajerial/sosial kultural di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikate.Lamanya antara 81 - 160 jam', 'Nilai', 1, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan manajerial/sosial kultural di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikatf.Lamanya antara 30 - 80 jam', 'Nilai', 0.5, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'pelatihan manajerial/sosial kultural di bidang tugas Jabatan Fungsional Pranata Komputer dan memperoleh Sertifikatg.Lamanya kurang dari 30 jam', 'Nilai', 0.25, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Penunjang', 'I.Pengembangan Profesi', 'E.Pengembangan Kompetensi di bidang teknologi informasi berbasis komputer', 'maintain performance (pemeliharaan kinerja dan target kinerja)', 'Nilai', 0.5, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'Penunjang', 'I.Pengembangan Profesi', 'F.Kegiatan lain yang mendukung pengembangan profesi yang ditetapkan oleh Instansi Pembina', 'Melaksanakan kegiatan lain yang mendukung pengembangan profesi yang ditetapkan oleh Instansi Pembina di bidang teknologi informasi berbasis komputer', 'Nilai', 0.5, NULL, 1, NULL, NULL, NULL, NULL, 'Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'A.Pengajar/Pelatih di bidang teknologi informasi berbasis komputer', 'Mengajar/melatih/membimbing yang berkaitan dengan bidang teknologi informasi berbasis komputer', 'Nilai', 0.4, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'B.Keanggotaan dalam Tim Penilai/ Tim Uji Kompetensi', 'Menjadi anggota Tim Penilai/Tim Uji Kompetensi', 'Nilai', 0.04, NULL, 1, NULL, NULL, NULL, NULL, 'Laporan', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'C.Perolehan Penghargaan/tanda jasa', 'Memperoleh penghargaan/tanda jasa Satya Lancana Karya Satya :a.30 (tiga puluh) tahun', 'Nilai', 3, NULL, 1, NULL, NULL, NULL, NULL, 'Piagam', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'C.Perolehan Penghargaan/tanda jasa', 'Memperoleh penghargaan/tanda jasa Satya Lancana Karya Satya :b.20 (dua puluh) tahun', 'Nilai', 2, NULL, 1, NULL, NULL, NULL, NULL, 'Piagam', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'C.Perolehan Penghargaan/tanda jasa', 'Memperoleh penghargaan/tanda jasa Satya Lancana Karya Satya :c.10 (sepuluh) tahun', 'Nilai', 1, NULL, 1, NULL, NULL, NULL, NULL, 'Piagam', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'C.Perolehan Penghargaan/tanda jasa', 'Penghargaan/tanda jasa atas prestasi kerjanyaa.Tingkat Internasional', 'Prosen', 35, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Piagam', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'C.Perolehan Penghargaan/tanda jasa', 'Penghargaan/tanda jasa atas prestasi kerjanyab.Tingkat Nasional', 'Prosen', 25, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Piagam', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'C.Perolehan Penghargaan/tanda jasa', 'Penghargaan/tanda jasa atas prestasi kerjanyac.Tingkat Provinsi', 'Prosen', 15, NULL, 1, NULL, NULL, NULL, NULL, 'Sertifikat/Piagam', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'D.Perolehan Gelar Kesarjanaan Lainnya', 'Memperoleh gelar kesarjanaan lainnya yang tidak sesuai dengan bidang tugas Pranata KomputerDiploma tiga', 'Nilai', 4, NULL, 1, 'Terampil', NULL, NULL, NULL, 'Ijazah', NULL, NULL, '2022-04-11 14:37:59', 'admin', NULL, NULL),
(119, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'D.Perolehan Gelar Kesarjanaan Lainnya', 'Memperoleh gelar kesarjanaan lainnya yang tidak sesuai dengan bidang tugas Pranata KomputerSarjana atau Diploma empat', 'Nilai', 5, NULL, 1, 'Ahli', NULL, NULL, NULL, 'Ijazah', NULL, NULL, '2022-04-11 15:17:17', 'admin', NULL, NULL),
(120, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'D.Perolehan Gelar Kesarjanaan Lainnya', 'Memperoleh gelar kesarjanaan lainnya yang tidak sesuai dengan bidang tugas Pranata KomputerMagister', 'Nilai', 10, NULL, 1, 'Ahli', NULL, NULL, NULL, 'Ijazah', NULL, NULL, '2022-04-11 15:31:01', 'admin', NULL, NULL),
(121, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'D.Perolehan Gelar Kesarjanaan Lainnya', 'Memperoleh gelar kesarjanaan lainnya yang tidak sesuai dengan bidang tugas Pranata KomputerDoktor', 'Nilai', 15, NULL, 1, 'Ahli', NULL, NULL, NULL, 'Ijazah', NULL, NULL, '2022-04-11 15:31:25', 'admin', NULL, NULL),
(122, 'Penunjang', 'II.Penunjang Kegiatan teknologi informasi berbasis komputer', 'E.Pelaksanaan tugas lain yang mendukung pelaksanaan tugas Pranata Komputer', 'Melakukan kegiatan yang mendukung pelaksanaan tugas Pranata Komputer', 'Nilai', 0.04, NULL, 1, NULL, NULL, NULL, NULL, 'Laporan', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kamus_templates`
--

CREATE TABLE `kamus_templates` (
  `hid` int(11) NOT NULL,
  `kegiatan_id` int(11) DEFAULT NULL,
  `jenis_template` varchar(15) DEFAULT NULL,
  `nama_template` varchar(145) DEFAULT NULL,
  `file_template` text,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamus_templates`
--

INSERT INTO `kamus_templates` (`hid`, `kegiatan_id`, `jenis_template`, `nama_template`, `file_template`, `creation_date`, `created_by`, `deleted_at`, `deleted_by`) VALUES
(1, 76, 'Link', 'Link', 'https://www.detik.com/', '2022-04-24 10:31:04', 'admin', NULL, NULL),
(2, 76, 'File', 'Buku', 'STLUD.docx', '2022-04-24 10:53:53', 'admin', NULL, NULL),
(3, 26, 'File', 'Laporan', 'STLUD.docx', '2022-04-24 11:13:35', 'admin', NULL, NULL),
(4, 26, 'Link', 'Laporan Link', 'https://themekita.com/demo-atlantis-bootstrap/livepreview/examples/demo1/components/font-awesome-icons.html', '2022-04-24 11:14:39', 'admin', NULL, NULL),
(5, 77, 'Link', 'Jurnal Template', 'https://themekita.com/demo-atlantis-bootstrap/livepreview/examples/demo1/components/font-awesome-icons.html', '2022-04-24 11:15:40', 'admin', NULL, NULL);

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
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `CRUD` text,
  `action` text,
  `id_action` int(11) DEFAULT NULL,
  `table_name` varchar(45) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `username`, `CRUD`, `action`, `id_action`, `table_name`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, '198903112010122001', 'create', 'daftar dupak', 1, 'pemohon', '127.0.0.1', '2022-04-11 06:46:29', NULL),
(2, '198903112010122001', 'update', 'update butir', 1, 'dupak', '127.0.0.1', '2022-04-12 22:15:55', NULL),
(3, '198903112010122001', 'update', 'update butir', 4, 'dupak', '127.0.0.1', '2022-04-12 22:16:23', NULL),
(8, '198903112010122001', 'create', 'upload dokumen', 10, 'dokumen', '127.0.0.1', '2022-04-12 22:31:53', NULL),
(9, '198903112010122001', 'create', 'kirim dupak', 1, 'pemohon', '127.0.0.1', '2022-04-12 22:32:11', NULL),
(10, 'admin', 'create', 'set penilai', 1, 'pemohon', '127.0.0.1', '2022-04-13 01:06:17', NULL),
(11, 'admin', 'create', 'set penilai', 1, 'pemohon', '::1', '2022-04-13 09:27:27', NULL),
(12, '198603072009121008', 'create', 'approval butir dupak', 1, 'dupak', '127.0.0.1', '2022-04-13 22:23:50', NULL),
(13, '198603072009121008', 'create', 'approval butir dupak', 2, 'dupak', '127.0.0.1', '2022-04-13 22:26:23', NULL),
(14, '198603072009121008', 'create', 'approval butir dupak', 4, 'dupak', '127.0.0.1', '2022-04-13 22:55:57', NULL),
(15, '198603072009121008', 'create', 'approval butir dupak', 2, 'dupak', '127.0.0.1', '2022-04-13 22:56:07', NULL),
(16, '198603072009121008', 'create', 'approval butir dupak', 3, 'dupak', '127.0.0.1', '2022-04-13 22:56:23', NULL),
(17, '198603072009121008', 'create', 'selesaikan penilaian', 1, 'pemohon', '127.0.0.1', '2022-04-13 22:59:07', NULL),
(18, '198603072009121008', 'create', 'selesaikan penilaian', 1, 'pemohon', '127.0.0.1', '2022-04-13 23:00:11', NULL),
(19, '198603072009121008', 'create', 'selesaikan penilaian', 1, 'pemohon', '127.0.0.1', '2022-04-13 23:01:24', NULL),
(20, '198705052009011001', 'create', 'daftar dupak', 2, 'pemohon', '127.0.0.1', '2022-04-14 00:02:43', NULL),
(21, 'admin', 'create', 'ditambahkan ke pleno', 1, 'pleno_lines', '127.0.0.1', '2022-04-14 22:52:46', NULL),
(22, 'admin', 'create', 'diproses pleno', 1, 'pleno_lines', '127.0.0.1', '2022-04-14 23:10:48', NULL),
(23, 'admin', 'create', 'proses bap', 1, 'pemohon', '127.0.0.1', '2022-04-15 00:37:27', NULL),
(24, '198201112009121001', 'create', 'daftar dupak', 3, 'pemohon', '127.0.0.1', '2022-04-22 03:44:22', NULL),
(25, '198903112010122001', 'create', 'daftar dupak', 4, 'pemohon', '127.0.0.1', '2022-04-22 03:45:51', NULL),
(26, '198903112010122001', 'create', 'tambah butir', 5, 'dupak', '127.0.0.1', '2022-04-22 03:46:43', NULL),
(27, '198903112010122001', 'create', 'tambah butir', 6, 'dupak', '127.0.0.1', '2022-04-22 03:47:05', NULL),
(28, '198903112010122001', 'create', 'tambah butir', 7, 'dupak', '127.0.0.1', '2022-04-22 03:48:33', NULL),
(29, '198903112010122001', 'create', 'upload dokumen', 11, 'dokumen', '127.0.0.1', '2022-04-22 03:53:41', NULL),
(30, '198903112010122001', 'create', 'upload dokumen', 12, 'dokumen', '127.0.0.1', '2022-04-22 03:55:05', NULL),
(31, '198903112010122001', 'create', 'upload dokumen', 13, 'dokumen', '127.0.0.1', '2022-04-22 03:55:20', NULL),
(32, '198903112010122001', 'create', 'kirim dupak', 4, 'pemohon', '127.0.0.1', '2022-04-22 03:55:57', NULL),
(33, 'admin', 'create', 'set penilai', 4, 'pemohon', '127.0.0.1', '2022-04-22 03:57:38', NULL),
(34, '198603072009121008', 'create', 'approval butir dupak', 7, 'dupak', '127.0.0.1', '2022-04-22 04:07:19', NULL),
(35, '198603072009121008', 'create', 'approval butir dupak', 5, 'dupak', '127.0.0.1', '2022-04-22 04:07:33', NULL),
(36, '198603072009121008', 'create', 'approval butir dupak', 6, 'dupak', '127.0.0.1', '2022-04-22 04:07:51', NULL),
(37, '198603072009121008', 'create', 'approval butir dupak', 7, 'dupak', '127.0.0.1', '2022-04-22 04:08:08', NULL),
(38, '198603072009121008', 'create', 'selesaikan penilaian', 4, 'pemohon', '127.0.0.1', '2022-04-22 04:11:28', NULL),
(39, 'admin', 'create', 'ditambahkan ke pleno', 2, 'pleno_lines', '127.0.0.1', '2022-04-22 04:13:36', NULL),
(40, 'admin', 'create', 'diproses pleno', 2, 'pleno_lines', '127.0.0.1', '2022-04-22 04:15:48', NULL),
(41, 'admin', 'create', 'proses bap', 4, 'pemohon', '127.0.0.1', '2022-04-22 04:17:39', NULL),
(42, '198705052009011001', 'create', 'daftar dupak', 1, 'pemohon', '127.0.0.1', '2022-04-23 22:24:02', NULL),
(43, '198102232010122001', 'create', 'daftar dupak', 2, 'pemohon', '127.0.0.1', '2022-04-23 22:33:17', NULL),
(44, '198302092010121001', 'create', 'daftar dupak', 3, 'pemohon', '127.0.0.1', '2022-04-23 22:38:39', NULL),
(45, '198302092010121001', 'create', 'tambah butir', 1, 'dupak', '127.0.0.1', '2022-04-23 22:43:45', NULL),
(46, '198302092010121001', 'create', 'tambah butir', 2, 'dupak', '127.0.0.1', '2022-04-23 22:43:56', NULL),
(47, '198302092010121001', 'create', 'upload dokumen', 3, 'dokumen', '127.0.0.1', '2022-04-24 04:28:42', NULL),
(48, '198302092010121001', 'create', 'upload dokumen', 4, 'dokumen', '127.0.0.1', '2022-04-24 04:29:11', NULL),
(49, '198302092010121001', 'create', 'kirim dupak', 3, 'pemohon', '127.0.0.1', '2022-04-24 04:29:19', NULL),
(50, '198302092010121001', 'create', 'upload dokumen', 3, 'dokumen', '127.0.0.1', '2022-04-24 06:41:26', NULL),
(51, '198302092010121001', 'create', 'upload dokumen', 3, 'dokumen', '127.0.0.1', '2022-04-24 06:42:40', NULL),
(52, '198302092010121001', 'create', 'upload dokumen', 4, 'dokumen', '127.0.0.1', '2022-04-24 06:43:12', NULL),
(53, '1234567890', 'create', 'approval butir dupak', 1, 'dupak', '127.0.0.1', '2022-04-24 07:19:16', NULL),
(54, '1234567890', 'create', 'approval butir dupak', 1, 'dupak', '127.0.0.1', '2022-04-24 07:46:03', NULL),
(55, '1234567890', 'create', 'approval butir dupak', 2, 'dupak', '127.0.0.1', '2022-04-24 07:58:04', NULL),
(56, '1234567890', 'create', 'selesaikan penilaian', 3, 'pemohon', '127.0.0.1', '2022-04-24 08:15:38', NULL),
(57, '198603072009121008', 'create', 'approval butir dupak', 1, 'dupak', '127.0.0.1', '2022-04-24 08:30:43', NULL),
(58, '198603072009121008', 'create', 'approval butir dupak', 1, 'dupak', '127.0.0.1', '2022-04-24 08:35:52', NULL),
(59, '198603072009121008', 'create', 'approval butir dupak', 2, 'dupak', '127.0.0.1', '2022-04-24 08:36:25', NULL),
(60, '198603072009121008', 'create', 'selesaikan penilaian', 3, 'pemohon', '127.0.0.1', '2022-04-24 09:02:06', NULL),
(61, 'admin', 'create', 'ditambahkan ke pleno', 3, 'pleno_lines', '127.0.0.1', '2022-04-24 09:20:27', NULL),
(62, 'admin', 'create', 'diproses pleno', 3, 'pleno_lines', '127.0.0.1', '2022-04-24 11:36:38', NULL),
(63, 'admin', 'create', 'proses bap', 3, 'pemohon', '127.0.0.1', '2022-04-24 11:46:34', NULL);

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
  `tgl_surat` date DEFAULT NULL,
  `bap_note` text,
  `pleno_id` int(11) DEFAULT NULL,
  `pleno_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemohon`
--

INSERT INTO `pemohon` (`hid`, `periode_hid`, `nip`, `namalengkap`, `karpeg`, `pangkatgol`, `tmtgol`, `tempatlahir`, `tgllahir`, `jeniskelamin`, `pendidikan`, `jabatan`, `tmtjab`, `unitkerja`, `kabkota`, `kdjab`, `foto`, `spengantar_kab`, `spengantar_prov`, `skjabakhir`, `skgolakhir`, `pakakhir`, `status`, `notes`, `penilai_id`, `nippengusul`, `namapengusul`, `tempatpengusul`, `jabatanpengusul`, `tglpengusul`, `no_pak`, `hasil`, `creationdate`, `createdby`, `updateddate`, `updatedby`, `penilaiandate`, `tgl_bap`, `no_bap`, `tgl_surat`, `bap_note`, `pleno_id`, `pleno_date`) VALUES
(1, 2, '198705052009011001', 'ANGGAR LINGGA RHOMADONA, S.Kom', 'P177902', 'Penata Muda Tk. I (III/b)', '2020-10-01', 'SUBANG', '1987-05-05', 'Laki-Laki', 'S1', 'Pranata Komputer Ahli Pertama', '2019-10-01', 'Biro Kepegawaian', 'TORAJA UTARA', 'JFT05004', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-24 05:24:02', '198705052009011001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, '198102232010122001', 'DIAN FEBRIKA UTAMI, S.Kom. ', '263135', 'Penata Muda  (III/a)', '2015-10-01', 'KOTA PALEMBANG', '1981-02-23', 'Perempuan', 'S1', 'Pranata Komputer Ahli Pertama', '2015-10-01', 'Perwakilan Badan Kependudukan dan Keluarga Berencana Nasional Provinsi Riau', '', 'JFT05004', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-24 05:33:17', '198102232010122001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, '198302092010121001', 'FITRI SETIAWAN, S.Kom', 'Q035730', 'Penata Muda  (III/a)', '2017-10-01', 'KARANGANYAR', '1983-02-09', 'Laki-Laki', 'S1', 'Pranata Komputer Mahir', '2017-05-01', 'Perwakilan Badan Kependudukan dan Keluarga Berencana Nasional Provinsi Jawa Tengah', 'KOTA SEMARANG', 'JFT05006', NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-24 05:38:39', '198302092010121001', '2022-04-24 18:46:34', 'admin', '2022-04-24 16:02:06', '2022-04-25', 'X12', '2022-04-26', 'notes bap', 1, '2022-04-24 16:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `pemohon_penilai`
--

CREATE TABLE `pemohon_penilai` (
  `hid` int(11) NOT NULL,
  `pemohon_id` int(11) DEFAULT NULL,
  `penilai_id` int(11) DEFAULT NULL,
  `penilai_ke` int(11) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `penilaian_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemohon_penilai`
--

INSERT INTO `pemohon_penilai` (`hid`, `pemohon_id`, `penilai_id`, `penilai_ke`, `creation_date`, `created_by`, `penilaian_date`) VALUES
(1, 3, 2, 1, '2022-04-24 13:02:53', 'admin', '2022-04-24 16:02:06'),
(2, 3, 4, 2, '2022-04-24 13:02:53', 'admin', '2022-04-24 15:15:38');

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
(2, 'Ahli Madya', '198603072009121008', 'WAHYU HERYANSYAH, S.IP, M.Si', 'Analis Kepegawaian Ahli Muda', 'Penata Tk. I (III/d)', 'Biro Kepegawaian', '198603072009121008.jpg', 'Anggota', '2021-08-21 21:21:07', 'admin'),
(3, 'Ahli Madya', '196803301993031001', 'VIKTOR HASIHOLAN SIBURIAN, S.E., M.Si.', 'Kepala Biro Sumber Daya Manusia', 'Pembina Utama Muda (IV/c)', 'Biro Sumber Daya Manusia', '19680330199303100110082020112220.jpeg', 'Anggota', '2022-04-08 03:31:23', 'admin'),
(4, 'Ahli Pertama', '1234567890', 'Nama Penilai Non SIMSDM', 'Auditor Public', 'IVa (Pembina Utama)', 'Instansi Luar', NULL, 'Anggota', '2022-04-24 11:54:55', 'admin');

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
  `updatedby` varchar(45) DEFAULT NULL,
  `deleted_by` varchar(45) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`hid`, `namaperiode`, `startdate`, `enddate`, `notes`, `status`, `nomor_awal`, `format_nomor`, `kota_pak`, `pejabat_pak`, `nippejabat_pak`, `creationdate`, `createdby`, `updateddate`, `updatedby`, `deleted_by`, `deleted_at`) VALUES
(1, 'Periode PAK JUL-DES 2021', '2021-07-01', '2021-12-01', 'keterangan', 0, 1, '{nomor}/II/PAK-JD/G3/2021', 'Jakarta', 'Drs TAVIP AGUS RAYANTO, M.Si.', '196411071991031004', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Periode PAK Jan-Jun 2021', '2021-01-01', '2021-06-01', '', 1, 1, '{nomor}/PAK-JD/G2/2021', 'Jakarta', 'VIKTOR HASIHOLAN SIBURIAN, S.E., M.Si.', '196803301993031001', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pleno_header`
--

CREATE TABLE `pleno_header` (
  `hid` int(11) NOT NULL,
  `nama_pleno` varchar(45) DEFAULT NULL,
  `tgl_pleno` date DEFAULT NULL,
  `keterangan` varchar(145) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pleno_header`
--

INSERT INTO `pleno_header` (`hid`, `nama_pleno`, `tgl_pleno`, `keterangan`, `creation_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'Pleno Jan-Jun 2020', '2022-04-20', 'keterangan update', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pleno_lines`
--

CREATE TABLE `pleno_lines` (
  `hid` int(11) NOT NULL,
  `pleno_id` int(11) DEFAULT NULL,
  `pemohon_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `notes` varchar(145) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pleno_lines`
--

INSERT INTO `pleno_lines` (`hid`, `pleno_id`, `pemohon_id`, `status`, `notes`, `creation_date`, `created_by`, `updated_by`, `updated_date`) VALUES
(1, 1, 1, 1, NULL, '2022-04-15 05:52:46', 'admin', 'admin', '2022-04-15 06:10:48'),
(2, 1, 4, 1, NULL, '2022-04-22 11:13:36', 'admin', 'admin', '2022-04-22 11:15:48'),
(3, 1, 3, 1, NULL, '2022-04-24 16:20:27', 'admin', 'admin', '2022-04-24 18:36:38');

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
(27, '198705052009011001', '198705052009011001', '25d55ad283aa400af464c76d713c07ad', 'ANGGAR LINGGA RHOMADONA, S.Kom', 'Pranata Komputer Ahli Pertama', 'JFT05004', 'Penata Muda Tk. I (III/b)', 8, 3319000, '0102000000', 'Biro Kepegawaian', 'SULAWESI SELATAN', 'TORAJA UTARA', 'DENDE&#039; PIONGAN NAPO', 'PARANDANGAN', NULL, NULL, NULL, '2022-04-02 15:08:50', '198705052009011001', '2022-04-24 05:23:55', NULL, NULL, '08121899430511', 'anggarlingga87ubah@gmail.com', '198705052009011001.JPG', 'SUBANG', '1987-05-05', 'Laki-Laki', 'S1', NULL, NULL, '2020-10-01', '2019-10-01', 'P177902', '198603072009121008', '198603072009121008', 'WAHYU HERYANSYAH, S.IP, M.Si', 'Analis Kepegawaian Ahli Muda', 'Penata Tk. I (III/d)'),
(29, '198903112010122001', '198903112010122001', 'b11c3e95f2a7119a5ff2da95456941be', 'HENNY CAHYANING DWIHARYANTI, A.Md', 'Pranata Komputer Terampil', 'JFT05007', 'Pengatur Tk. I (II/d)', 6, 2702000, '000D000000', 'Perwakilan Badan Kependudukan dan Keluarga Berencana Nasional Provinsi Kalimantan Selatan', 'KALIMANTAN SELATAN', 'HULU SUNGAI SELATAN', 'KANDANGAN', 'KANDANGAN UTARA', NULL, NULL, NULL, '2022-04-10 20:57:50', '198903112010122001', '2022-04-15 06:04:56', NULL, NULL, '08115037200', 'henny.dwiharyanti@gmail.com', '198903112010122001.jpg', 'BARITO KUALA', '1989-03-11', 'Perempuan', 'D-III/Sarmud/Akademi', NULL, NULL, '2015-04-01', '2017-05-01', 'Q074904', NULL, NULL, NULL, NULL, NULL),
(30, '198201112009121001', '198201112009121001', '25d55ad283aa400af464c76d713c07ad', 'ANGGA KRIS ANDHIKA, ST', 'Pranata Komputer Ahli Pertama', 'JFT05004', 'Penata Muda Tk. I (III/b)', 8, 3319000, '0605000000', 'Direktorat Teknologi Informasi dan Dokumentasi', 'DKI JAKARTA', 'JAKARTA TIMUR', 'MAKASAR', 'HALIM PERDANA ', NULL, NULL, NULL, '2022-04-22 10:44:15', '198201112009121001', NULL, NULL, NULL, '087887349444', 'anggakris@bkkbn.go.id', '198201112009121001.jpg', 'BOGOR', '1982-01-11', 'Laki-Laki', 'S1', NULL, NULL, '2016-10-01', '2012-07-01', '0244/KEP/KARPEG/2012', NULL, NULL, NULL, NULL, NULL),
(31, '198102232010122001', '198102232010122001', '25d55ad283aa400af464c76d713c07ad', 'DIAN FEBRIKA UTAMI, S.Kom. ', 'Pranata Komputer Ahli Pertama', 'JFT05004', 'Penata Muda  (III/a)', 8, 3319000, '000T000000', 'Perwakilan Badan Kependudukan dan Keluarga Berencana Nasional Provinsi Riau', 'RIAU', '', 'SUKAJADI', 'SUKAJADI', NULL, NULL, NULL, '2022-04-24 05:33:11', '198102232010122001', NULL, NULL, NULL, '082173080567', 'm.attalaharaudhowijaya@ymail.com', '19810223201012200123072020063628.jpg', 'KOTA PALEMBANG', '1981-02-23', 'Perempuan', 'S1', NULL, NULL, '2015-10-01', '2015-10-01', '263135', NULL, NULL, NULL, NULL, NULL),
(32, '198302092010121001', '198302092010121001', '25d55ad283aa400af464c76d713c07ad', 'FITRI SETIAWAN, S.Kom', 'Pranata Komputer Mahir', 'JFT05006', 'Penata Muda  (III/a)', 7, 2928000, '000B000000', 'Perwakilan Badan Kependudukan dan Keluarga Berencana Nasional Provinsi Jawa Tengah', 'JAWA TENGAH', 'KOTA SEMARANG', 'SEMARANG TENGAH', 'PANDANSARI', NULL, NULL, NULL, '2022-04-24 05:38:35', '198302092010121001', '2022-04-24 13:13:32', NULL, NULL, '085741373829', 'fitri.setiawan@bkkbn.go.id', '198302092010121001.jpg', 'KARANGANYAR', '1983-02-09', 'Laki-Laki', 'S1', NULL, NULL, '2017-10-01', '2017-05-01', 'Q035730', NULL, NULL, NULL, NULL, NULL),
(33, '1234567890', '1234567890', '25d55ad283aa400af464c76d713c07ad', 'Nama Penilai Non SIMSDM', 'Auditor Public', NULL, 'IVa (Pembina Utama)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-04-24 11:54:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Indexes for table `dokumen_penilai`
--
ALTER TABLE `dokumen_penilai`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `dupak`
--
ALTER TABLE `dupak`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `pemohon_id` (`pemohon_id`),
  ADD KEY `kegiatan_id` (`kegiatan_id`);

--
-- Indexes for table `dupak_penilai`
--
ALTER TABLE `dupak_penilai`
  ADD PRIMARY KEY (`hid`);

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
-- Indexes for table `jenis_jabatan`
--
ALTER TABLE `jenis_jabatan`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`hid`),
  ADD UNIQUE KEY `jenjang` (`jenjang`);

--
-- Indexes for table `jenjang_jabatan`
--
ALTER TABLE `jenjang_jabatan`
  ADD PRIMARY KEY (`hid`),
  ADD UNIQUE KEY `kode_jab` (`kode_jab`);

--
-- Indexes for table `kamus_dupak`
--
ALTER TABLE `kamus_dupak`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `kamus_kegiatan`
--
ALTER TABLE `kamus_kegiatan`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `jabatan_id` (`jabatan_id`);

--
-- Indexes for table `kamus_templates`
--
ALTER TABLE `kamus_templates`
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
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`) USING BTREE;

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
-- Indexes for table `pemohon_penilai`
--
ALTER TABLE `pemohon_penilai`
  ADD PRIMARY KEY (`hid`);

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
-- Indexes for table `pleno_header`
--
ALTER TABLE `pleno_header`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `pleno_lines`
--
ALTER TABLE `pleno_lines`
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
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dokumen_penilai`
--
ALTER TABLE `dokumen_penilai`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dupak`
--
ALTER TABLE `dupak`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dupak_penilai`
--
ALTER TABLE `dupak_penilai`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `jenis_jabatan`
--
ALTER TABLE `jenis_jabatan`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jenjang`
--
ALTER TABLE `jenjang`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jenjang_jabatan`
--
ALTER TABLE `jenjang_jabatan`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=842;

--
-- AUTO_INCREMENT for table `kamus_dupak`
--
ALTER TABLE `kamus_dupak`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kamus_kegiatan`
--
ALTER TABLE `kamus_kegiatan`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `kamus_templates`
--
ALTER TABLE `kamus_templates`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pemohon_penilai`
--
ALTER TABLE `pemohon_penilai`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penilai`
--
ALTER TABLE `penilai`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `periode`
--
ALTER TABLE `periode`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pleno_header`
--
ALTER TABLE `pleno_header`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pleno_lines`
--
ALTER TABLE `pleno_lines`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
