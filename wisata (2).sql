-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Apr 2022 pada 10.02
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `pk_login_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`pk_login_id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `pk_transaksi_id` int(11) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `no_identitas` varchar(50) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `tempat_wisata` int(11) DEFAULT NULL,
  `tanggal_kunjungan` varchar(50) DEFAULT NULL,
  `dewasa` varchar(50) DEFAULT NULL,
  `anak` varchar(50) DEFAULT NULL,
  `qrcode` varchar(25) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `status` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`pk_transaksi_id`, `nama_lengkap`, `no_identitas`, `no_hp`, `tempat_wisata`, `tanggal_kunjungan`, `dewasa`, `anak`, `qrcode`, `created_date`, `status`) VALUES
(12, 'titisan', '32132132', '089898', 1, '2022-04-17', '1', '2', '942847204.png', '2022-04-17', 'N'),
(21, 'melinda aprilianti', '078677574', '4575686847', 2, '2022-04-18', '1', '1', '698635407.png', '2022-04-18', 'N'),
(24, 'Melinda Aprilianti', '0986643365789', '085876442325', 9, '2022-04-20', '1', '1', '610527802.png', '2022-04-18', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `wisata_id` int(11) NOT NULL,
  `nama_tempat` varchar(50) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  `foto` varchar(255) DEFAULT NULL,
  `tiket_dewasa` int(11) DEFAULT NULL,
  `tiket_anak` int(11) DEFAULT NULL,
  `embed` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`wisata_id`, `nama_tempat`, `lokasi`, `deskripsi`, `foto`, `tiket_dewasa`, `tiket_anak`, `embed`) VALUES
(1, 'Tonjong Canyon', 'Kabupaten Tasikmalaya', 'Tonjong Canyon hadir dengan keindahan alam yang begitu indah, berupa tebing kecoklatan dan jernihnya air sungai. Tempat wisata memukau ini terletak di Desa Nagrog, Kecamatan Cipatujah, Kabupaten Tasikmalaya.', 'https://ik.imagekit.io/atourin/images/destination/tasikmalaya/tonjong-canyon-cipatujah-profile1639219252.png', 10000, 5000, 'https://www.youtube.com/embed/xlVUyb3EM68'),
(2, 'Pantai Karang Tawulan', 'Kabupaten Tasikmalaya', 'Salah satu pantai populer dan eksotis di Tasikmalaya adalah Pantai Karang Tawulan yang menawarkan pasir pantai putih dan tersembunyi di balik tebing. Pantai Karang Tawulan yang indah ini terletak di Desa Cimanuk, Kalapagenep, Kecamatan Cikalong, Tasikmalaya.', 'https://asset.kompas.com/crops/Fz0jDIh3z6Dxp642Di1MUK7KkkE=/0x0:800x533/750x500/data/photo/2020/10/19/5f8d5c603a93f.jpg', 15000, 5000, 'https://www.youtube.com/embed/74viw0lrKOU'),
(3, 'Karaha Bodas', 'Kabupaten Tasikmalaya', 'Karaha Bodas merupakan kawah gunung api muda yang terletak di Desa Kadipaten, Kecamatan Kadipaten, Kabupaten Tasikmalaya. Kawah ini menghasilkan panas bumi, juga fenomena fumarol dan solfatar, sehingga menimbulkan bau belerang.', 'https://imgx.sonora.id/crop/0x0:0x0/360x240/photo/2021/07/03/5f8d5d35605a0jpg-20210703050557.jpg', 10000, 5000, 'https://www.youtube.com/embed/cGNErqzkGfQ'),
(4, 'Gunung Galunggung', 'Kabupaten Tasikmalaya', 'Gunung Galunggung merupakan salah satu tempat wisata favorit yang ada di Kabupaten Tasikmalaya. Gunung ini masih aktif dan memiliki ketinggian 2.167 meter di atas permukaan laut (mdpl), sehingga pengunjung dapat merasakan udara yang sangat sejuk. Banyak keindahan yang dapat ditemukan di Gunung Galunggung, seperti Kawah Hijau, pemandian air panas, gardu pandang, sampai Curug Agung yang penuh warna.', 'https://1.bp.blogspot.com/-j4zLocQBT4I/YJsLqvi0IwI/AAAAAAAAOqw/U1PXHmtbsgAQMIcRhFnztD-Fz_jAJf5uACPcBGAYYCw/s2048/wallpaper%2Bgunung%2Bgalunggung%2Bgambar%2Bgunung%2Bgalunggung8.jpg', 10000, 5000, 'https://www.youtube.com/embed/d0U2rjzA1Kg'),
(5, 'Situ Gede', 'Kota Tasikmalaya', 'Situ Gede merupakan kawasan danau yang telah berdiri sejak zaman kolonial Belanda dengan menyajikan keindahan pemandangan alam, sehingga menarik banyak wisatawan. Di tengah danau, terdapat pulau dengan luas mencapai 1 hektar. Konon, di sana terdapat tiga makam yang juga menjadi asal-usul Situ Gede.', 'https://asset.kompas.com/crops/LOHvdFqjngDOa291rvyD8OnStFs=/0x0:1000x667/750x500/data/photo/2020/08/18/5f3b8e1fa6086.jpg', 10000, 5000, 'https://www.youtube.com/embed/gK875CyQhXU'),
(6, 'Pantai Cipatujah', 'Kabupaten Tasikmalaya', 'Pantai Cipatujah menawarkan pesona alam yang masih sangat asri dan memesona karena dikelilingi tebing-tebing curam. Pantai Cipatujah merupakan pantai berkarang yang ada di kawasan selatan, tepatnya di Desa Cipatujah, Kecamatan Cipatujah, Tasikmalaya.', 'https://travelspromo.com/wp-content/uploads/2021/02/Pemandangan-Indah-Matahari-Terbenam-di-Cipatujah.-Foto-Gmap-Mang-Acuy-e1612936904580.jpg', 12000, 6000, 'https://www.youtube.com/embed/Atsf4TsXmo8'),
(8, 'Pantai Pangandaran', 'Kabupaten Tasikmalaya', 'Aktivitas yang dapat meliputi menikmati pemandanganyang indah, berfoto, hingga berenang jika kondisi air tidak sedang banjir. Di sini, masih belum ada fasilitas karena masih sangat baru dan masih masuk tahap penyadaran kepada warga desa akan potensi wisata yang dimiliki. Tiket masuknya pun masih gratis.', 'https://1.bp.blogspot.com/-rMbV9ckYG4w/UQwEHSfpYNI/AAAAAAAADXc/IclfAFfmfzY/s1600/262698_3637565352558_1425065220_n.jpg', 10000, 5000, 'https://www.youtube.com/embed/WG4ga7MCkcw'),
(9, 'Danau Lemona', 'Kabupaten Tasikmalaya', 'Danau Lemona merupakan salah satu destinasi wisata kuliner hits di Tasikmalaya. Letaknya yang ada di sebelah tenggara Tasikmalaya membuatnya memiliki pesona keindahan yang masih alami dan elegan. Anda dapat menyusuri keindahan di sekitar area danau dengan berjalan-jalan santai ataupun menyewa perahu transportasi yang telah disediakan.', 'https://www.harapanrakyat.com/wp-content/uploads/2021/01/Danau-Lemona-Tasikmalaya.jpg', 10000, 10000, 'https://www.youtube.com/embed/_j7XWZdGCCY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pk_login_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`pk_transaksi_id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`wisata_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `pk_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `pk_transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `wisata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
