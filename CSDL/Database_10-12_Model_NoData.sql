Drop Database DuAn1
Create Database DuAn1
use DuAn1

Create table NhanVien
(
	MaNV nvarchar(255) not null,
	HoTen nvarchar(255) not null,
	MatKhau nvarchar(255) not null,
	GioiTinh bit not null,
	Email nvarchar(255) not null,
	Hinh nvarchar(255) not null,
	SDT nchar(10) not null,
	ChucVu bit not null,
	MaNhanDien int identity(1,1) not null,
	Primary Key (MaNV)
)

--INSERT INTO NhanVien VALUES
--(N'ThienVD', N'Vũ Đức Thiện',123, 1, 'thienvdps18667@fpt.edu.vn','NV1.jpg', '0966641029', 0),
--(N'ThinhDP', N'Đặng Phú Thịnh',123, 1, 'thinhdp123@gmail.com','NV2.jpg', '0797391956', 1),
--(N'NghiaPL', N'Phạm Lễ Nghĩa',123, 0, 'hungnhkps18575@fpt.edu.vn','NV3.jpg', '0832549880',0)

Create table Phong
(
	MaPhong nvarchar(255) not null,
	MaNV nvarchar(255),
	Gia float not null,
	Hinh nvarchar(255) not null,
	Primary Key (MaPhong),
	Foreign Key (MaNV) References NhanVien (MaNV) on Delete Set null on Update Cascade
)

--INSERT INTO Phong VALUES
--(N'R101',N'ThienVD',500000,'Phong1.png'),
--(N'R102',N'ThienVD',450000,'Phong2.png'),
--(N'R201',N'ThinhDP',400000,'Phong3.png'),
--(N'R202',N'ThinhDP',350000,'Phong4.png'),
--(N'R301',N'NghiaPL',300000,'Phong5.png'),
--(N'R302',N'NghiaPL',250000,'Phong6.png')

Create table HoatDong
(
	MaHD int identity(1,1) not null,
	TenHT nvarchar(255) not null,
	GhiChu nvarchar(255),
	Primary Key (MaHD)
)

--INSERT INTO HoatDong VALUES
--(N'Tưới rau',N'Phòng R101'),
--(N'Quét sân', N'Phòng R101'),
--(N'Đổ rác',N'Phòng R101'),
--(N'Lau dọn nhà vệ sinh', N'Phòng R102'),
--(N'Lau chùi dụng cụ thể thao', N'Phòng R102'),
--(N'Lau dọn các phòng trống', N'Phòng R102'),
--(N'Tạo đồ gia dụng', N'Phòng R201'),
--(N'Văn nghệ',N'Phòng R201'),
--(N'Theo dõi tiến độ làm việc', N'Phòng R201'),
--(N'Lên menu hằng ngày', N'Phòng R202'),
--(N'Chuẩn bị thực đơn', N'Phòng R202'),
--(N'Nấu ăn', N'Phòng R202'),
--(N'Kiểm kê hàng', N'Phòng R301'),
--(N'Quản lý hóa đơn', N'Phòng R301'),
--(N'Quản lý doanh thu', N'Phòng R301'),
--(N'Giặt quần áo', N'Phòng R302'),
--(N'Tổ chức sự kiện', N'Phòng R302'),
--(N'An ninh', N'Phòng R302')


Create table Nghe
(
	MaNghe int identity(1,1) not null,
	TenNghe nvarchar(255) not null,
	MoTa nvarchar(255) not null,
	GhiChu nvarchar(255),
	Primary Key (MaNghe)
)


--INSERT INTO Nghe VALUES
--(N'May mặc', N'Dạy may, vá cơ bản', N'Phù hợp phái nữ'),
--(N'Làm giày', N'Học viên được học các bước trong quá trình làm giày', N'Đòi hỏi độ tỉ mĩ cao'),
--(N'Nhân viên pha chế', N'Học viên được học và trải nghiệm việc pha chế thức uống', 'Khéo léo, tay nghề tốt'),
--(N'Lễ tân', N'Học viên được học và thực hành những kỉ năng giao tiếp cho một lễ tân', N'Giỏi ứng xử, bình tĩnh'),
--(N'Kế toán', N'Học viên được học những phương thức tính toán phù hợp với ngành', N'Đòi hỏi sự cẩn thận'),
--(N'Đầu bếp', N'Học viên được học và thực hành những kỉ năng kiến thức cơ bản của nghề đầu bếp', N'Yêu thích việc bếp núc'),
--(N'Dịch thuật viên', N'Học viên được học một số ngôn ngữ chuyên dụng nhất hiện nay', N'Đòi hỏi trình độ cao, kiến thức rộng'),
--(N'Tài xế', N'Học viên được học và thực hành điều khiển các loại xe khác nhau', N'Có khả năng xử lý các tình huống nguy hiểm, nhanh nhẹn'),
--(N'Shiper', N'Học viên được học trong việc giao hàng online', N'Phù hợp với học vấn phổ thông'),
--(N'Vệ sĩ', N'Học viên được đào tạo các nghiệp vụ cơ bản', N'Giỏi võ, vì mục tiêu bất chấp nguy hiểm')

Create table DichVu
(
	MaDV int identity(1,1) not null,
	TenDV nvarchar(255) not null,
	MoTa nvarchar(255) not null,
	Gia float not null,
	Primary Key (MaDV)
)


--INSERT INTO DichVu VALUES
--(N'Giặt đồ thuê', N'Bệnh nhân sẽ được giặt đồ thuê', 150000),
--(N'Dọn phòng', N'Bệnh nhân sẽ được dọn phòng sạch sẽ', 100000),
--(N'Văn nghệ', N'Bệnh nhân được tham gia các hoạt động giải trí văn nghệ', 50000),
--(N'Massage', N'Bệnh nhân có thể trải nghiệm dịch vụ massage xông hơi', 250000),
--(N'Đá bóng', N'Được phép sử dụng sân bóng', 150000),
--(N'Wi-fi miễn phí', N'Được phép sử dụng điện thoại trong vòng 1h', 250000),
--(N'Phục vụ bữa tối', N'Được phép lựa chọn thực đơn cho bữa tối', 100000),
--(N'Đánh thức mỗi sáng', N'Được gọi dậy đúng giờ', 20000),
--(N'BBQ', N'Tổ chức vào mỗi cuối tuần', 5000000),
--(N'Gia sư', N'Được bổ túc kiến thức', 150000)

Create table BenhNhan
(
	MaBN int identity(1,1) not null,
	MaPhong nvarchar(255) not null,
	MaNghe int,
	HoTen nvarchar(255) not null,
	GioiTinh bit not null,
	NgayVT date not null,
	ThoiGianO int not null,
	DiaChi nvarchar(255) not null,
	CMND varchar(9) not null,
	Hinh nvarchar(255) not null,
	Primary Key (MaBN),
	Foreign Key (MaPhong) References Phong (MaPhong) on Delete Cascade on Update Cascade,
	Foreign Key (MaNghe) References Nghe (MaNghe) on Delete Set null on Update Cascade,
)


--INSERT INTO BenhNhan VALUES
--(N'R101',1, N'Nguyễn Huỳnh Khuyết Hùng', 1, '2019-01-01', 2, N'13 Lý Thường Kiệt, Quận 10, TPHCM', '261673957','BN1.png'),
--(N'R102',1, N'Vũ Đức Thiện', 1, '2019-01-01', 5, N'13 Lý Thái Tổ, Quận 12, TPHCM', '261682748', 'BN2.jpg'),
--(N'R201',1, N'Lương Minh Mẫn', 1, '2019-01-01', 5, N'464 Trần Duy Hưng, Quận 1, TPHCM', '261657498','BN3.jpg'),
--(N'R202',2, N'Đặng Phú Thịnh', 1, '2019-02-02', 12, N'143 Lý Thường Kiệt, Quận 5, TPHCM', '261693725', 'BN4.jpg'),
--(N'R301',2, N'Nguyễn Ngọc Doanh', 0, '2019-02-02', 15, N'139 Đường 12, Quận 10, TPHCM', '261673935', 'BN5.jpg'),
--(N'R302',2, N'Dương Hoàng Quân', 1, '2019-02-02', 7, N'43 Trần Hưng Đạo, Quận 9, TPHCM', '261676743', 'BN6.jpg'),
--(N'R102',3, N'Trần Lý Đức', 1, '2019-03-03', 13, N'163 Trần Duy Hưng, Quận 1, TPHCM', '261672532', 'BN7.jpg'),
--(N'R101',3, N'Lê Ngọc Hải', 1, '2019-03-03', 5, N'4 Trần Duy Hưng, Quận 1, TPHCM', '261673689', 'BN8.jpg'),
--(N'R202',3, N'Nguyễn Thị Vui', 0, '2019-03-03', 7, N'443 Trần Hưng Đạo, Quận 9, TPHCM', '261673224', 'BN9.jpg'),
--(N'R301',4, N'Lê Ngọc Anh', 1, '2019-03-03', 10, N'35 Đường 12, Quận 10, TPHCM', '261671043', 'BN10.jpg'),
--(N'R201',4, N'Trương Thị Thanh Bình', 0, '2020-05-05', 12, N'424 Trần Duy Hưng, Quận 1, TPHCM', '261673968','BN11.jpg'),
--(N'R202',4, N'Nguyễn Thiên Phú', 1, '2020-05-05', 7, N'13 Lý Thường Kiệt, Quận Gò Vấp, TPHCM', '261675086', 'BN12.jpg'),
--(N'R301',5, N'Nguyễn Xuân Trường', 1, '2020-05-05', 6, N'443 Trần Hưng Đạo, Quận 9, TPHCM', '261673957','BN13.jpg'),
--(N'R302',5, N'Trần Xuân Hương', 0, '2020-06-06', 3, N'35 Đường số 1, Quận 10, TPHCM', '261673964', 'BN14.jpg'),
--(N'R101',5, N'Nguyễn Thiên Trường', 1, '2020-06-06', 4, N'163 Trần Duy Hưng, Quận 1, TPHCM', '261672579', 'BN15.jpg'),
--(N'R102',6, N'Trần Thiên Không', 1, '2020-06-06', 8, N'83 Lý Thường Kiệt, Quận 10, TPHCM', '261673946', 'BN16.jpg'),
--(N'R101',6, N'Nguyễn Vương Vấn', 0, '2020-07-07', 9, N'133 Lý Thường Kiệt, Quận 12, TPHCM', '261673257', 'BN17.jpg'),
--(N'R202',6, N'Nguyễn Nhân', 1, '2020-07-07', 9, N'44 Trần Hưng Đạo, Quận 5, TPHCM', '261673987','BN18.jpg'),
--(N'R302',7, N'Nguyễn Vũ Nhân', 1, '2020-07-07', 10, N'422 Trần Duy Hưng, Quận 1, TPHCM', '261673321', 'BN19.jpg'),
--(N'R102',7, N'Trần Thanh Nhiên', 0, '2020-07-07', 12, N'63 Lý Thường Kiệt, Quận 9, TPHCM', '261646205', 'BN20.jpg'),
--(N'R301',7, N'Lý Đức', 1, '2021-09-09', 13, N'35 Đường 12, Quận 10, TPHCM', '261673982', 'BN21.jpg'),
--(N'R302',8, N'Trần Lý Xuân', 1, '2021-09-09', 14, N'122 Lý Thường Kiệt, Quận 10, TPHCM', '261673268', 'BN22.jpg'),
--(N'R101',8, N'Nguyễn Xuân Phú', 1, '2021-09-09', 15, N'35 Đường số 5, Quận 12, TPHCM', '261673567', 'BN23.jpg'),
--(N'R102',8, N'Trần Thị Thanh', 0, '2021-10-10', 6, N'17 Lý Thường Kiệt, Quận 2, TPHCM', '261673742','BN24.jpg'),
--(N'R201',9, N'Nguyễn Việt Nam', 1, '2021-10-10', 6, N'424 Trần Duy Hưng, Quận 1, TPHCM', '261672356','BN25.jpg'),
--(N'R202',9, N'Trần Nguyễn', 1, '2021-10-10', 8, N'442 Trần Hưng Đạo, Quận 9, TPHCM', '261673579', 'BN26.jpg'),
--(N'R301',9, N'Trần Việt Lý', 1, '2021-11-11', 10, N'35 Đường số 1, Quận Gò Vấp, TPHCM', '261673543', 'BN27.jpg'),
--(N'R302',10, N'Nguyễn Thanh Minh', 1, '2021-11-11', 6, N'138 Lý Thường Kiệt, Quận 10, TPHCM', '261673982','BN28.jpg')


Create table BenhAn
(
	MaBN int not null,
	BieuHien nvarchar(255) not null,
	CachDT nvarchar(255) not null,
	GhiChu nvarchar(255),
	Primary Key (MaBN),
	Foreign Key (MaBN) References BenhNhan (MaBN) on Delete Cascade on Update Cascade,
)

--INSERT INTO BenhAn VALUES
--(1, N'Mệt mỏi, sợ nước, sợ lạnh, thiếu ngủ', N'Phương pháp cai khô',N'Có dấu hiệu trở nặng'),
--(2, N'Nhịp tim nhanh, run, khô miệng, dị cảm, co cơ', N'Phương pháp thùy miên',N'Có dấu hiệu trầm cảm'),
--(3, N'Đổ mồ hôi, lơ mơ, mệt mỏi, mất ngủ', N'Phương pháp cai dần',N'Sức khỏe đang dần hồi phục'),
--(4, N'Khó chịu,Ho khàn, thiếu ngủ', N'Phương pháp cai khô',N'Bệnh tình trở nặng'),
--(5, N'Mệt mỏi, sợ nước, thiếu ngủ', N'Phương pháp điện châm',N'Lạc quan'),
--(6, N'Nhịp tim nhanh, run, khô miệng, dị cảm, co cơ', N'Phương pháp cai khô',N'Gia đình quan tâm đặc biệt'),
--(7, N'Mệt mỏi, sợ nước, sợ lạnh, thiếu ngủ', N'Phương pháp dùng thuốc đối kháng',N'Không gia đình'),
--(8, N'Đổ mồ hôi, lơ mơ, mệt mỏi, mất ngủ', N'Phương pháp phẫu thuật thùy trán',N'Chuyển biến xấu'),
--(9, N'Mệt mỏi, sợ nước, sợ lạnh, thiếu ngủ', N'Phương pháp điện châm',N'Hồi phục tích cực'),
--(10, N'Nhịp tim nhanh, run, khô miệng, dị cảm, co cơ', N'Phương pháp cai khô',N'Dần hồi phục'),
--(11, N'Đổ mồ hôi, lơ mơ, mệt mỏi, mất ngủ', N'Dùng các thuốc hướng tâm thần',N'Trở nặng'),
--(12, N'Nhịp tim nhanh, run, khô miệng, dị cảm, co cơ', N'Phương pháp thùy miên',N'Nguy hiểm'),
--(13, N'Đổ mồ hôi, lơ mơ, mệt mỏi, mất ngủ', N'Dùng các thuốc hướng tâm thần',N'Vẫn có thể cứu chữa'),
--(14, N'Mệt mỏi, sợ nước, sợ lạnh, thiếu ngủ', N'Phương pháp dùng thuốc đối kháng',N'Nguy kịch'),
--(15, N'Mệt mỏi, sợ nước, sợ lạnh, thiếu ngủ', N'Phương pháp cai khô',N'Đề xuất phòng hồi sức'),
--(16, N'Nhịp tim nhanh, run, khô miệng, dị cảm, co cơ', N'Phương pháp điều trị bằng chất thay thế',N'Tiến triển tốt'),
--(17, N'Đổ mồ hôi, lơ mơ, mệt mỏi, mất ngủ', N'Phương pháp điện châm',N'Có tiến bộ'),
--(18, N'Choáng váng, ảo thị, nhìn không rõ, hay giật mình', N'Phương pháp dùng thuốc đối kháng',N'Nguy hiểm'),
--(19, N'Đổ mồ hôi, lơ mơ, mệt mỏi, mất ngủ', N'Phương pháp thùy miên',N'Ổn so với tình trạng bệnh'),
--(20, N'Nhịp tim nhanh, run, khô miệng, dị cảm, co cơ', N'Phương pháp cai dần',N'Cần theo dõi thêm'),
--(21, N'Choáng váng, ảo thị, nhìn không rõ, hay giật mình', N'Phương pháp điện châm',N'Chưa xuất hiện tác dụng phụ'),
--(22, N'Choáng váng, ảo thị, nhìn không rõ, hay giật mình', N'Phương pháp cai dần',N'Đề xuất 1-1'),
--(23, N'Mệt mỏi, sợ nước, sợ lạnh, thiếu ngủ', N'Phương pháp thùy miên',N'Tập trung cứu chữa'),
--(24, N'Nhịp tim nhanh, run, khô miệng, dị cảm, co cơ', N'Phương pháp điều trị bằng chất thay thế',N'Dấu hiệu tích cực'),
--(25, N'Đổ mồ hôi, lơ mơ, mệt mỏi, mất ngủ', N'Dùng các thuốc hướng tâm thần',N'Trở nặng'),
--(26, N'Nhịp tim nhanh, run, khô miệng, dị cảm, co cơ', N'Phương pháp phẫu thuật thùy trán',N'Nguy hiểm'),
--(27, N'Choáng váng, ảo thị, nhìn không rõ, hay giật mình', N'Phương pháp điều trị bằng chất thay thế',N'Đề xuất 1-1'),
--(28, N'Mệt mỏi, sợ nước, sợ lạnh, thiếu ngủ', N'Phương pháp phẫu thuật thùy trán',N'Khả quan')

Create table DichVuCT
(
	MaDVCT int identity(1,1) not null,
	MaDV int not null,
	MaBN int null,
	NgayDK date not null,
	GhiChu nvarchar(255),
	Primary Key (MaDVCT),
	Foreign Key (MaDV) References DichVu(MaDV) on Delete Cascade on Update Cascade,
	Foreign Key (MaBN) References BenhNhan(MaBN) on Delete set null on Update Cascade
)

--INSERT INTO DichVuCT VALUES
--(1, 1,'2019-01-19', N'Bệnh nhân mới'),
--(3, 1,'2019-01-25', N'Bệnh nhân mới'),
--(5, 1,'2019-01-31', N'Bệnh nhân mới'),
--(7, 2,'2019-01-19', N'Đã thanh toán'),
--(9, 2,'2019-01-21', N'Đã thanh toán'),
--(10, 3,'2019-01-05', N'Có cố gắng'),
--(2, 4,'2019-03-03', N'Đã thanh toán'),
--(4, 4,'2019-02-05', N'OK'),
--(6, 5,'2019-02-03', N'Cần cố gắng'),
--(8, 6,'2019-02-15', N'Đã thanh toán'),
--(10, 6,'2019-02-21', N'Chưa thanh toán'),
--(1, 7,'2019-03-05', N'Chưa thanh toán'),
--(2, 7,'2019-03-05', N'Chưa thanh toán'),
--(3, 7,'2019-03-21', N'Chưa thanh toán'),
--(4, 8,'2019-03-06', N'Chưa thanh toán'),
--(5, 8,'2019-03-12', N'Chưa thanh toán'),
--(6, 9,'2019-03-12', N'Đã thanh toán'),
--(7, 10,'2019-03-15', N'Chưa thanh toán'),
--(8, 10,'2019-03-16', N'Chưa thanh toán'),
--(9, 10,'2019-03-18', N'Chưa thanh toán'),
--(10, 11,'2020-05-15', N'Chưa thanh toán'),
--(1, 12,'2020-05-16', N'Chưa thanh toán'),
--(5, 12,'2020-05-18', N'Chưa thanh toán'),
--(10, 12,'2020-05-30', N'Chưa thanh toán'),
--(2, 13,'2020-05-05', N'Chưa thanh toán'),
--(4, 13,'2020-05-11', N'Chưa thanh toán'),
--(8, 13,'2020-05-12', N'Chưa thanh toán'),
--(3, 14,'2020-06-10', N'Chưa thanh toán'),
--(6, 14,'2020-06-12', N'Chưa thanh toán'),
--(7, 14,'2020-06-20', N'Chưa thanh toán'),
--(10, 15,'2020-06-10', N'Chưa thanh toán'),
--(1, 16,'2020-06-14', N'Chưa thanh toán'),
--(2, 16,'2020-06-16', N'Chưa thanh toán'),
--(4, 17,'2020-07-16', N'Chưa thanh toán'),
--(7, 17,'2020-07-21', N'Chưa thanh toán'),
--(8, 17,'2020-07-25', N'Chưa thanh toán'),
--(3, 18,'2020-07-11', N'Chưa thanh toán'),
--(5, 19,'2020-07-10', N'Chưa thanh toán'),
--(6, 19,'2020-07-10', N'Chưa thanh toán'),
--(9, 20,'2020-07-20', N'Chưa thanh toán'),
--(10, 20,'2020-05-30', N'Chưa thanh toán'),
--(1, 21,'2021-09-11', N'Chưa thanh toán'),
--(3, 21,'2021-09-15', N'Chưa thanh toán'),
--(2, 22,'2021-09-10', N'Chưa thanh toán'),
--(4, 22,'2021-09-21', N'Chưa thanh toán'),
--(5, 23,'2021-09-13', N'Chưa thanh toán'),
--(7, 23,'2021-09-30', N'Chưa thanh toán'),
--(6, 24,'2021-10-11', N'Chưa thanh toán'),
--(8, 24,'2021-10-17', N'Chưa thanh toán'),
--(9, 25,'2021-10-11', N'Chưa thanh toán'),
--(10, 26,'2021-10-31', N'Chưa thanh toán'),
--(1, 27,'2021-11-19', N'Bệnh nhân mới'),
--(3, 27,'2021-11-21', N'Bệnh nhân mới'),
--(5, 27,'2021-11-23', N'Bệnh nhân mới'),
--(7, 27,'2021-11-25', N'Bệnh nhân mới'),
--(9, 27,'2021-11-30', N'Bệnh nhân mới'),
--(2, 28,'2021-11-11', N'Gia đình quan chức'),
--(4, 28,'2021-11-14', N'Gia đình quan chức'),
--(6, 28,'2021-11-20', N'Gia đình quan chức'),
--(8, 28,'2021-11-30', N'Gia đình quan chức')

Create table HoatDongCT
(
	MaHDCT int identity(1,1) not null,
	MaBN int null,
	MaHD int not null,
	NgayTH date not null,
	GhiChu nvarchar(255),
	Primary Key (MaHDCT),
	Foreign Key (MaHD) References HoatDong (MaHD) on Delete Cascade on Update Cascade,
	Foreign Key (MaBN) References BenhNhan (MaBN) on Delete set null on Update Cascade,
)

INSERT INTO HoatDongCT VALUES
(1, 1, '2019-01-15', N'Chăm chỉ'),
(2, 2, '2019-01-16', N'Ngoan'),
(3, 2, '2019-01-17', N'Tốt'),
(4, 3, '2019-02-18', N'Chăm chỉ'),
(5, 3, '2019-02-19', N'Chăm chỉ'),
(6, 4, '2019-02-15', N'Chăm chỉ'),
(7, 5, '2019-03-16', N'Chăm chỉ'),
(8, 5, '2019-03-17', N'Chăm chỉ'),
(9, 6, '2019-03-18', N'Chăm chỉ'),
(10, 6, '2019-03-19', N'Chăm chỉ'),
(11, 7, '2020-05-10', N'Chăm chỉ'),
(12, 8, '2020-05-11', N'Chăm chỉ'),
(13, 8, '2020-05-12', N'Chăm chỉ'),
(14, 9, '2020-06-13', N'Chăm chỉ'),
(15, 9, '2020-06-14', N'Chăm chỉ'),
(16, 10, '2020-06-15', N'Chăm chỉ'),
(17, 1, '2020-07-16', N'Chăm chỉ'),
(18, 1, '2020-07-17', N'Chăm chỉ'),
(19, 2, '2020-07-18', N'Chăm chỉ'),
(20, 2, '2020-07-19', N'Chăm chỉ'),
(21, 3, '2021-09-10', N'Chăm chỉ'),
(22, 4, '2021-09-11', N'Chăm chỉ'),
(23, 4, '2021-09-12', N'Chăm chỉ'),
(24, 5, '2021-10-13', N'Chăm chỉ'),
(25, 5, '2021-10-14', N'Chăm chỉ'),
(26, 6, '2021-10-15', N'Chăm chỉ'),
(27, 6, '2021-11-16', N'Chăm chỉ'),
(28, 7, '2021-11-17', N'Chăm chỉ'),
(1, 1, '2019-05-09', N'OK'),
(2, 2, '2019-02-15', N'OK'),
(3, 3, '2019-03-16', N'OK'),
(4, 4, '2019-06-12', N'OK'),
(5, 5, '2019-05-13', N'OK'),
(6, 10, '2019-07-11', N'OK'),
(7, 9, '2019-06-16', N'OK'),
(8, 8, '2019-07-15', N'OK'),
(9, 7, '2020-05-15', N'OK'),
(10, 6, '2020-05-11', N'OK'),
(11, 5, '2020-01-11', N'OK'),
(12, 4, '2020-02-14', N'OK'),
(13, 3, '2020-03-17', N'OK'),
(14, 2, '2020-07-14', N'OK'),
(15, 1, '2020-04-16', N'OK'),
(16, 6, '2020-07-15', N'OK'),
(17, 7, '2021-01-13', N'OK'),
(18, 8, '2021-03-17', N'OK'),
(19, 9, '2021-04-13', N'OK')

Create table HoaDon
(
	MaHD int identity(1,1) not null,
	MaBN int null,
	MaNV nvarchar(255),
	ThoiGian int not null,
	NgayBDTT date not null,
	NgayKTTT date not null,
	NgayThanhToan date not null,
	TongTien float not null,
	Primary Key (MaHD),
	Foreign Key (MaBN) References BenhNhan (MaBN) on Delete set null on Update Cascade,
	Foreign Key (MaNV) References NhanVien (MaNV)
)
INSERT INTO HoaDon VALUES
(1, N'ThienVD', 1,'2019-01-01','2020-06-15','2020-06-20', 2000000),
(2, N'ThienVD', 3,'2019-01-01','2020-06-15','2020-06-20', 4000000),
(3, N'ThienVD', 5,'2019-01-01','2020-06-15','2020-06-20', 5000000),
(4, N'ThienVD', 7,'2019-02-02','2020-06-15','2020-06-20', 1000000),
(5, N'ThienVD', 9,'2019-02-02','2020-06-15','2020-06-20', 4000000),
(6, N'ThienVD', 2,'2019-02-02','2020-06-15','2020-06-20', 2000000),
(7, N'ThienVD', 4,'2019-03-03','2020-06-15','2020-06-20', 9000000),
(8, N'ThienVD', 6,'2019-03-03','2020-06-15','2020-06-20', 7000000),
(9, N'ThienVD', 8,'2019-03-03','2020-06-15','2020-06-20', 8000000),
(10,N'ThienVD', 11,'2019-03-03','2020-06-15','2020-06-20', 5000000),
(11,N'ThinhDP', 13,'2020-05-05','2021-06-15','2021-06-20', 1000000),
(12,N'ThinhDP', 15,'2020-05-05','2021-06-15','2021-06-20', 3000000),
(13,N'ThinhDP', 12,'2020-05-05','2021-06-15','2021-06-20', 6000000),
(14,N'ThinhDP', 14,'2020-06-05','2021-06-15','2021-06-20', 5000000),
(15,N'ThinhDP', 1,'2020-06-05','2021-06-15','2021-06-20', 9000000),
(16,N'ThinhDP', 2,'2020-06-05','2021-06-15','2021-06-20', 2000000),
(17,N'ThinhDP', 3,'2020-07-05','2021-06-15','2021-06-20', 7000000),
(18,N'ThinhDP', 4,'2020-07-05','2021-06-15','2021-06-20', 9000000),
(19,N'ThinhDP', 5,'2020-07-05','2021-06-15','2021-06-20', 6000000),
(20,N'ThinhDP', 5,'2020-07-05','2021-06-15','2021-06-20', 3000000),
(21,N'NghiaPL', 4,'2021-09-09','2022-12-15','2022-12-20', 1000000),
(22,N'NghiaPL', 3,'2021-09-09','2022-12-15','2022-12-20', 2000000),
(23,N'NghiaPL', 2,'2021-09-09','2022-12-15','2022-12-20', 3000000),
(24,N'NghiaPL', 1,'2021-09-09','2022-12-15','2022-12-20', 4000000),
(25,N'NghiaPL', 9,'2021-09-09','2022-12-15','2022-12-20', 5000000),
(26,N'NghiaPL', 8,'2021-09-09','2022-12-15','2022-12-20', 7000000),
(27,N'NghiaPL', 7,'2021-09-09','2022-12-15','2022-12-20', 6000000),
(28,N'NghiaPL', 5,'2021-09-09','2022-12-15','2022-12-20', 8000000)

Create table ThanNhan
(
	MaTN varchar(50) primary key,
	MatKhau varchar(50),
	HoTenTN nvarchar(255),
	Email varchar(255),
	MaBN int,
	Foreign Key (MaBN) References BenhNhan (MaBN) on Delete Cascade on Update Cascade
);

INSERT INTO ThanNhan(MaTN,MatKhau,HoTenTN,Email,MaBN) VALUES
('TN01','123',N'Lê Thị Ái','aitruong2002@gmail.com',1),
('TN02','123',N'Lê Văn Dũng','đunginhtruong@gmail.com',2),
('TN03','123',N'Lý Anh Kỳ','kivinh123@gmail.com',3),
('TN04','123',N'Diễm Đinh','dinhlan02@gmail.com',4),
('TN05','123',N'Lý Huỳnh Lân','alan2@gmail.com',5),
('TN06','123',N'Lâm Huỳnh Thái Tân','tanle67@gmail.com',6),
('TN07','123',N'Linh Sơn Đăng','adanglinh@gmail.com',7),
('TN08','123',N'Vinh Diêu Anh','dieudangon@gmail.com',8),
('TN09','123',N'Lê Huỳnh Đức','duc97@gmail.com',9),
('TN10','123',N'Huỳnh Nhung','nhunglen62@gmail.com',10),
('TN11','123',N'Lý Sơn Đăng','danglinh@gmail.com',11),
('TN12','123',N'Huỳnh Thúc Kháng','khanglinh@gmail.com',12),
('TN13','123',N'Phan Bội Châu','chauVinh@gmail.com',13),
('TN14','123',N'Đinh Bộ Lĩnh','linhnam@gmail.com',14),
('TN15','123',N'Trần Nhật Duật','duatlinh@gmail.com',15),
('TN16','123',N'Hồ Quý Ly','lyhuong124@gmail.com',16),
('TN17','123',N'Vinh Nhơn Quyết','dangvinh@gmail.com',17),
('TN18','123',N'Chi Lâm Sơn','linhchi567@gmail.com',18),
('TN19','123',N'Nhân Sơn Quyết','quyetlinh@gmail.com',19),
('TN20','123',N'Công Tôn Uyển Nhi','uyennhi90@gmail.com',20),
('TN21','123',N'Công Tôn Sách','sachton90@gmail.com',21),
('TN22','123',N'Triển Chiêu','chieutran45678@gmail.com',22),
('TN23','123',N'Bao Chẩn','chanca@gmail.com',23),
('TN24','123',N'Trương Long','longhuynh78@gmail.com',24),
('TN25','123',N'Triệu Hổ','hode@gmail.com',25),
('TN26','123',N'Dương Triều','huynhtrieu@gmail.com',26),
('TN27','123',N'Mã Hán','aihan2002@gmail.com',27),
('TN28','123',N'Lê Thị Xuân Ái','aitruong200390@gmail.com',28)

Create table LichSuBenhNhan(
	STT int identity(1,1) primary key,
	MaBN int not null,
	HoTen nvarchar(255) not null,
	NgayVT date not null,
	ThoiGianO int not null,
	Foreign Key (MaBN) References BenhNhan (MaBN) on Delete Cascade on Update Cascade,
)

-- Thống kê doanh thu từng năm theo phòng 
DROP PROCEDURE sp_ThongKeDoanhThu
CREATE PROC sp_ThongKeDoanhThu(@Year INT)
AS BEGIN
	SELECT
		Phong.MaPhong Phong,
		COUNT(bn.MaBN) Soluongbenhnhan,
		SUM(hd.TongTien) TongTien,
		Min(hd.TongTien) TienNhoNhat,
		Max(hd.TongTien) TienLonNhat
		FROM Phong
		join BenhNhan bn on bn.MaPhong = Phong.MaPhong
		join HoaDon hd on hd.MaBN = bn.MaBN
		where Year(hd.NgayThanhToan) = @Year 
		GROUP BY phong.MaPhong
END

-- Thống kê dịch vụ được sữ dụng nhiều đến ít
DROP PROCEDURE sp_ThongKeDichVu
CREATE PROC sp_ThongKeDichVu(@Year INT)
AS BEGIN
	SELECT
		DichVu.TenDV,
		Count(BenhNhan.MaBN) SoLuongBenhNhan
		from DichVuCT
		inner join DichVu on DichVuCT.MaDV = DichVu.MaDV
		inner join BenhNhan on BenhNhan.MaBN = DichVuCT.MaBN
		where YEAR(NgayDK) = @Year
		GROUP BY DichVu.TenDV
		Order by SoLuongBenhNhan DESC 
END

-- Thống kê bệnh nhân theo ngày vô trại
CREATE PROC sp_ThongKeSoLuongBN(@Year INT)
AS BEGIN
	SELECT
		Phong.MaPhong MaPhong,
		COUNT(MaBN) SoLuongBenhNhan
		from Phong
		inner join BenhNhan on BenhNhan.MaPhong = Phong.MaPhong
		where YEAR(NgayVT) = @Year
		GROUP BY Phong.MaPhong
END

-- Thống kê hoạt động được làm nhiều đến ít
DROP PROCEDURE sp_ThongKeHoatDong
CREATE PROC sp_ThongKeHoatDong(@Year INT)
AS BEGIN
	SELECT
		HoatDong.TenHT TenHD,
		Count(BenhNhan.MaBN) SoLuongBenhNhan
		from HoatDongCT
		inner join HoatDong on HoatDong.MaHD = HoatDongCT.MaHD
		inner join BenhNhan on BenhNhan.MaBN = HoatDongCT.MaBN
		where YEAR(NgayTH) = @Year
		GROUP BY HoatDong.TenHT
		Order by SoLuongBenhNhan DESC 
END

exec sp_ThongKeHoatDong 2020