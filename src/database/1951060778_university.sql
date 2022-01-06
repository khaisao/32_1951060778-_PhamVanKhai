-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 06, 2022 lúc 08:42 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `1951060778_university`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `magv` int(11) NOT NULL,
  `hovaten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trinhdo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chuyenmon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hocham` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hocvi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coquan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`magv`, `hovaten`, `ngaysinh`, `gioitinh`, `trinhdo`, `chuyenmon`, `hocham`, `hocvi`, `coquan`) VALUES
(1, 'Giao vien 1', '2022-01-19', 'Nam', 'Cao', 'CNTT', 'Hoc ham', 'Hoc vi', 'asgasg'),
(2, 'Ho va ten 2', '2021-12-21', 'Nu', 'Trinh do 1', 'Chuyen mon 2 ', 'Ho vam 2', 'Hoc vi 2', 'Co quan 2'),
(7, 'Tịnh Thất Bồng Lai', '0000-00-00', 'Nữ', 'Trụ trì', 'abc', 'Cao', 'Thấp', 'Thiền Am Bên Bờ Vũ Trụ'),
(8, 'Giảng viên', '0000-00-00', 'Nam', 'Thạc sĩ', 'Hóa', 'Học hàm', 'Họ vị', 'Trường Thủy Lợi'),
(9, 'Phạm Văn Khải', '0000-00-00', 'Nam', 'Đại học', 'CNTT', 'Năm 2', 'Học vị', '61THNB');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`magv`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  MODIFY `magv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
