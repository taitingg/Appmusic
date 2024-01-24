-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 24, 2024 lúc 11:58 AM
-- Phiên bản máy phục vụ: 10.5.20-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id21461745_musicpastnerweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

CREATE TABLE `album` (
  `IdAlbum` int(11) NOT NULL,
  `TenAlbum` varchar(250) NOT NULL,
  `TenCaSiAlbum` varchar(250) NOT NULL,
  `HinhAlbum` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `album`
--

INSERT INTO `album` (`IdAlbum`, `TenAlbum`, `TenCaSiAlbum`, `HinhAlbum`) VALUES
(1, 'Nắng Phai Màu (Single)', 'Viết Long', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Album/nangphaimau.jpg'),
(2, 'Ai Lau Đôi Mi Hoen (Single)', 'Hà Nhi', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Album/ailaudoimihoen.jpg'),
(3, 'Bên Họ Em Là Người Thế Vai (Single)', 'Nguyễn Mạnh, TLong', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Album/benhoemlanguoithevai.jpg'),
(4, 'Anh Sai Rồi (Single)', 'Tăng Phúc,Nguyễn Hồng Thuận', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Album/anhsairoi.jpg'),
(5, 'Chẳng Ai Đến Thế Giới Này để Cô Đơn (Single)', 'Mr.Siro', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Album/changaidenthegioinaydecodon.jpg'),
(6, 'Chài Điếp Noọng (Single)', 'Double2T , Hòa Minzy', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Album/changdiepnoong.jpg'),
(7, 'Em Đẹp Nhất Trên Đời (Single)', 'Khải Đăng', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Album/emdepnhattrendoi.jpg'),
(8, 'Không Hối Hận (Single)', 'Khánh Phương, Tuấn Phương, Đông Thiên Đức', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Album/khonghoihan.jpg'),
(9, 'Nói Anh Nghe (Single)', 'Trịnh Đình Quang', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Album/noianhnghe.jpg'),
(10, 'Tìm Được Nhau Đâu Dễ Dàng (Single)', 'NB3 Hoài Bảo', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Album/timduocnhaudaudedang.jpg'),
(11, 'Tim Em Người khác Giữ (Single)', 'Phát Huy T4', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Album/timemnguoikhacgiu.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baihat`
--

CREATE TABLE `baihat` (
  `IdBaiHat` int(11) NOT NULL,
  `IdAlbum` varchar(250) NOT NULL,
  `IdTheLoai` varchar(250) NOT NULL,
  `IdPlayList` varchar(250) NOT NULL,
  `TenBaiHat` varchar(250) NOT NULL,
  `HinhBaiHat` varchar(250) NOT NULL,
  `CaSi` varchar(250) NOT NULL,
  `LinkBaiHat` varchar(250) NOT NULL,
  `LuotThich` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baihat`
--

INSERT INTO `baihat` (`IdBaiHat`, `IdAlbum`, `IdTheLoai`, `IdPlayList`, `TenBaiHat`, `HinhBaiHat`, `CaSi`, `LinkBaiHat`, `LuotThich`) VALUES
(1, '1', '2', '1', 'Nắng Phai Màu', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Album/nangphaimau.jpg', 'Viết Long', 'https://zingmp3.vn/album/Nang-Phai-Mau-Single-Viet-Long/6BD8ZDI6.html', ''),
(3, '1', '2', '1', 'Nỗi đau người đến sau', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/Noidaunguoidensau.jpg', 'Viết Long', 'https://zingmp3.vn/bai-hat/Noi-Dau-Nguoi-Den-Sau-Viet-Long/Z6CIDCAO.html', ''),
(4, '2', '2', '1', 'Chưa quên người yêu cũ', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/chuaquennyc.jpg', 'Hà Nhi', 'https://zingmp3.vn/bai-hat/Chua-Quen-Nguoi-Yeu-Cu-Ha-Nhi/ZZFW86D6.html', ''),
(5, '3', '2', '1', 'Hạnh phúc nhé cô dâu', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/hanhphucnhecodau.jpg', 'Nguyễn Mạnh, TLong', 'https://zingmp3.vn/bai-hat/Hanh-Phuc-Nhe-Co-Dau-Nguyen-Manh-TLong/Z6C8F796.html', ''),
(6, '3', '2', '1', 'Bên Họ Em Là Người Thế Vai', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/B%C3%AAn%20H%E1%BB%8D%20Em%20L%C3%A0%20Ng%C6%B0%E1%BB%9Di%20Th%E1%BA%BF%20Vai.jpg', 'Nguyễn Mạnh, TLong', 'https://zingmp3.vn/bai-hat/Ben-Ho-Em-La-Nguoi-The-Vai-Nguyen-Manh-TLong/Z6FBAOC9.html', ''),
(7, '4', '2', '1', 'Anh Sai Rồi', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/Anh%20Sai%20R%E1%BB%93i%20.jpg', 'Tăng Phúc,Nguyễn Hồng Thuận', 'https://zingmp3.vn/bai-hat/Anh-Sai-Roi-Tang-Phuc-Nguyen-Hong-Thuan/Z6FFWUE8.html', ''),
(8, '4', '2', '1', 'Chỉ là không cùng nhau', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/chilakhongcungnhau.jpg', 'Tăng Phúc, Trương Thảo Nhi', 'https://zingmp3.vn/bai-hat/Chi-La-Khong-Cung-Nhau-Live-Version-Tang-Phuc-Truong-Thao-Nhi/ZOACFBBU.html', ''),
(9, '5', '2', '1', 'Chẳng Ai Đến Thế Giới Này để Cô Đơn', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/Ch%E1%BA%B3ng%20Ai%20%C4%90%E1%BA%BFn%20Th%E1%BA%BF%20Gi%E1%BB%9Bi%20N%C3%A0y%20%C4%91%E1%BB%83%20C%C3%B4%20%C4%90%C6%A1n.jfif', 'Mr. Siro', 'https://zingmp3.vn/bai-hat/Chang-Ai-Den-The-Gioi-Nay-De-Co-Don-Mr-Siro/Z6F7W707.html', ''),
(10, '5', '2', '1', 'Một bước yêu vạn dặm đau', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/vandamdau.jpg', 'Mr. Siro', 'https://zingmp3.vn/bai-hat/Mot-Buoc-Yeu-Van-Dam-Dau-Mr-Siro/ZWABWOFZ.html', ''),
(11, '6', '2', '1', 'Chài Điếp Noọng', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/Ch%C3%A0i%20%C4%90i%E1%BA%BFp%20No%E1%BB%8Dng.jfif', 'Hòa Minzy', 'https://zingmp3.vn/bai-hat/Chai-Diep-Noong-Anh-Yeu-Em-Double2T-Hoa-Minzy-DuongK/Z6FU0Z08.html', ''),
(12, '7', '2', '1', 'Em Đẹp Nhất Trên Đời', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/Em%20%C4%90%E1%BA%B9p%20Nh%E1%BA%A5t%20Tr%C3%AAn%20%C4%90%E1%BB%9Di.jpg', 'Khải Đăng', 'https://zingmp3.vn/bai-hat/Em-Dep-Nhat-Tren-Doi-Khai-Dang/Z6FCUW8Z.html', ''),
(13, '8', '2', '1', 'Không Hối Hận', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/Kh%C3%B4ng%20H%E1%BB%91i%20H%E1%BA%ADn.jpg', 'Khánh Phương, Tuấn Phương, Đông Thiên Đức', 'https://zingmp3.vn/bai-hat/Khong-Hoi-Han-Khanh-Phuong-Tuan-Khuong-Dong-Thien-Duc/Z6FCEAC6.html', ''),
(14, '9', '2', '1', 'Nói Anh Nghe', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/N%C3%B3i%20Anh%20Nghe.jpg', 'Trịnh Đình Quang', 'https://zingmp3.vn/bai-hat/Noi-Anh-Nghe-Trinh-Dinh-Quang/Z6F600U8.html', ''),
(15, '9', '2', '1', 'Thế giới ảo tình yêu thật', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/thegioiaotinhyeuthat.jfif', 'Trịnh Đình Quang', 'https://zingmp3.vn/bai-hat/The-Gioi-Ao-Tinh-Yeu-That-Trinh-Dinh-Quang/ZW6FF0E0.html', ''),
(16, '10', '2', '1', 'Tìm Được Nhau Đâu Dễ Dàng', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/T%C3%ACm%20%C4%90%C6%B0%E1%BB%A3c%20Nhau%20%C4%90%C3%A2u%20D%E1%BB%85%20D%C3%A0ng.jfif', 'NB3 Hoài Bảo', 'https://zingmp3.vn/bai-hat/Tim-Duoc-Nhau-Dau-De-Dang-NB3-Hoai-Bao/Z6FADA97.html', ''),
(17, '11', '2', '1', 'Tim Em Người khác Giữ', 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/ed1d21f6ea60d129476deabbe16a19b2.jpg', 'Phát Huy T4', 'https://zingmp3.vn/bai-hat/Tim-Em-Nguoi-Khac-Giu-Phat-Huy-T4/Z6FFCAEO.html', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude`
--

CREATE TABLE `chude` (
  `IdChuDe` int(11) NOT NULL,
  `TenChuDe` varchar(250) NOT NULL,
  `HinhChuDe` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chude`
--

INSERT INTO `chude` (`IdChuDe`, `TenChuDe`, `HinhChuDe`) VALUES
(1, 'Acoustic EDM', 'https://musicpastnerweb.000webhostapp.com/hinhanh/chude/b6d82035fe6ab3e996fab67d005c5320.jpg'),
(2, 'Nhạc Trẻ', 'https://musicpastnerweb.000webhostapp.com/hinhanh/chude/f8007873c767009cd27fb9e2665c40e5.jpg'),
(3, 'Balad', 'https://musicpastnerweb.000webhostapp.com/hinhanh/chude/balad.jpg'),
(4, 'Nhạc Cách Mạng', 'https://musicpastnerweb.000webhostapp.com/hinhanh/chude/nhaccachmang.jpg'),
(5, 'Bolero', 'https://musicpastnerweb.000webhostapp.com/hinhanh/chude/bolero.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist`
--

CREATE TABLE `playlist` (
  `IdPlayList` int(11) NOT NULL,
  `Ten` varchar(250) NOT NULL,
  `Hinhnen` varchar(250) NOT NULL,
  `Hinhicon` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `playlist`
--

INSERT INTO `playlist` (`IdPlayList`, `Ten`, `Hinhnen`, `Hinhicon`) VALUES
(1, 'Top 100 Nhạc trẻ hay nhất', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Playlist/bgnhactre.jpg', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Playlist/100nhactre.jpg'),
(2, 'top 100 Nhạc EDM hay nhất', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Playlist/bgEDM.jfif', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Playlist/EDM.jpg'),
(3, 'Top 100 nhạc cách mạng', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Playlist/bgnhaccachmang.jpg', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Playlist/cachmang.jpg'),
(4, 'Top 100 nhạc Hàn Quốc', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Playlist/bgnhachanquoc.jfif', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Playlist/nhachanquoc.jpg'),
(5, 'Top 100 nhạc Âu Mỹ', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Playlist/bgaumy.jpg', 'https://musicpastnerweb.000webhostapp.com/hinhanh/Playlist/aumy.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `Id` int(11) NOT NULL,
  `Hinhanh` varchar(250) NOT NULL,
  `Noidung` varchar(250) NOT NULL,
  `Idbaihat` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`Id`, `Hinhanh`, `Noidung`, `Idbaihat`) VALUES
(1, 'https://musicpastnerweb.000webhostapp.com/hinhanh/Quangcao/nangphaimau.jpg', 'Ca khúc tình cảm hay của Viết Long', '1'),
(2, 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/hanhphucnhecodau.jpg', 'Ca khúc tình cảm hay của Nguyễn Mạnh, TLong gửi đến mọi người', '5'),
(3, 'https://musicpastnerweb.000webhostapp.com/hinhanh/Quangcao/anhsairoi.jpg', 'Ca khúc gì ', '7'),
(4, 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/chilakhongcungnhau.jpg', 'một ca khúc buồn mà Tăng Phúc và Trường Thảo Nhi gửi đến các bạn', '8'),
(5, 'https://musicpastnerweb.000webhostapp.com/hinhanh/Quangcao/changaidenthegioinaydecodon.jpg', 'Mr.Siro cho chúng ta thấy rằng chẳng ai cô đơn trên thế giới ', '9'),
(6, 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/vandamdau.jpg', 'Mr.Siro nói cho chúng ta rằng gì đó\r\n', '10'),
(7, 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/Ch%C3%A0i%20%C4%90i%E1%BA%BFp%20No%E1%BB%8Dng.jfif', 'bài hát mà Hòa Minzy và Double2T nói về tình yêu của người dân tộc', '11'),
(8, 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/thegioiaotinhyeuthat.jfif', 'Trình Đình Quang kể về chuyện tình yêu ', '15'),
(9, 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/Noidaunguoidensau.jpg', 'Viết Long kể về 1 người đến sau trong cuộc tình\r\n', '3'),
(10, 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/chuaquennyc.jpg', 'Chưa quên người yêu cũ của Hà Nhi', '4'),
(11, 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/B%C3%AAn%20H%E1%BB%8D%20Em%20L%C3%A0%20Ng%C6%B0%E1%BB%9Di%20Th%E1%BA%BF%20Vai.jpg', 'bla bla chưa nghĩ ra nội dung', '6'),
(12, 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/Em%20%C4%90%E1%BA%B9p%20Nh%E1%BA%A5t%20Tr%C3%AAn%20%C4%90%E1%BB%9Di.jpg', 'chưa nghĩ được', '12'),
(13, 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/ed1d21f6ea60d129476deabbe16a19b2.jpg', 'chưa nghĩ được ', '17'),
(14, 'https://musicpastnerweb.000webhostapp.com/hinhanh/BaiHat/T%C3%ACm%20%C4%90%C6%B0%E1%BB%A3c%20Nhau%20%C4%90%C3%A2u%20D%E1%BB%85%20D%C3%A0ng.jfif', 'chưa nghĩ dcc', '16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `IdTheLoai` int(11) NOT NULL,
  `IdChuDe` varchar(250) NOT NULL,
  `TenTheLoai` varchar(250) NOT NULL,
  `HinhTheLoai` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`IdTheLoai`, `IdChuDe`, `TenTheLoai`, `HinhTheLoai`) VALUES
(1, '1', 'Acoustic EDM', 'https://musicpastnerweb.000webhostapp.com/hinhanh/TheLoai/Acoustic%20EDM.jpg'),
(2, '2', 'Nhạc trẻ', 'https://musicpastnerweb.000webhostapp.com/hinhanh/TheLoai/NhacTre.jpg'),
(3, '3', 'Cách mạng', 'https://musicpastnerweb.000webhostapp.com/hinhanh/TheLoai/nhaccachmang.jpg'),
(4, '4', 'Trữ tình', 'https://musicpastnerweb.000webhostapp.com/hinhanh/TheLoai/balad.jpg'),
(5, '5', 'Bolero', 'https://musicpastnerweb.000webhostapp.com/hinhanh/TheLoai/bolero.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`IdAlbum`);

--
-- Chỉ mục cho bảng `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`IdBaiHat`);

--
-- Chỉ mục cho bảng `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`IdChuDe`);

--
-- Chỉ mục cho bảng `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`IdPlayList`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`IdTheLoai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `album`
--
ALTER TABLE `album`
  MODIFY `IdAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `baihat`
--
ALTER TABLE `baihat`
  MODIFY `IdBaiHat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `chude`
--
ALTER TABLE `chude`
  MODIFY `IdChuDe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `playlist`
--
ALTER TABLE `playlist`
  MODIFY `IdPlayList` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `IdTheLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
