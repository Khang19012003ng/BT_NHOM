create database Demo_QLD
go
use Demo_QLD
go
create table TaiKhoan
(
UserName varchar(50) primary key not null,
pass nvarchar(50) not null,
Quyen int not null,
)
go 
create table Khoa
(
MaKhoa varchar(50) primary key not null,
TenKhoa nvarchar(150) not null,
GhiChu nvarchar(150)
)
go
create table KhoaHoc
(
MaKhoaHoc varchar(100) primary key not null,
TenKhoahoc varchar(100)  not null,
KyHoc varchar(100) not null,
)
go
create table Nganh
(
MaNganh varchar(50) primary key not null,
TenNganh nvarchar(150) not null,
MaKhoa varchar(50) foreign key references Khoa 
)
go
create table Lop
(
TenLop nvarchar(150) primary key not null,
MaNganh varchar(50) foreign key references  Nganh ,
GhiChu nvarchar(150)
)
go
create table KeHoachDaoTao
(
MaKHDT varchar(100) primary key not null,
TenLop nvarchar(150) foreign key references Lop,
MaKhoaHoc varchar(100) foreign key references KhoaHoc 
)
go
create table HocPhan
(
MaHP varchar(50) primary key not null,
TenHP nvarchar(150) not null,
SoTC int not null,
SoTiet int not null
)
go
create table GiangVien
(
MaGV varchar(50) primary key not null, 
TenGV nvarchar(150) not null,
SoDT varchar(20) not null,
TrinhDo nvarchar(50) not null,
MaKhoa varchar(50) foreign key references Khoa 
)
go
create table nhomhp
(
MaNhomHP varchar(50) primary key not null,
TenNhomhp nvarchar(100) not null,
MaHP varchar(50) foreign key references HocPhan ,
MaGV varchar(50) foreign key references GiangVien,
MaKHDT varchar(100) foreign key references KeHoachDaoTao
)
go
create table SinhVien
(
MaSinhVien varchar(50) primary key not null, 
TenLop nvarchar(150) foreign key references Lop,
Hoten nvarchar(150)not null,
QueQuan nvarchar(350)not null,
NgaySinh date not null,
NoiSinh nvarchar(400)not null,
GioiTinh nvarchar(5)not null,
GhiChu nvarchar(500) ,
)
go
create table Diem
(
ChuyenCan float not null,
KiemTraGK float not null,
ThucHanh float, 
ThiKetThuc float not null,
ThoaLuan float, 
TongKetHP float not null,
DiemChu varchar(30) not null,
MaNhomHP varchar(50) foreign key references nhomhp ,
MaSinhVien varchar(50) foreign key references SinhVien,
)
go
insert into Khoa values 
('CNTT',N'Công Nghệ Thông Tin',''),
('KTVT',N'Kinh Tế Vận Tải',''),
('CT',N'Công Trình',''),
('CK',N'Cơ Khí','')
go
insert into KhoaHoc values
('72DHCQ_2022-2023_1','72DHCQ','2022-2023_1'),
('72DHCQ_2022-2023_2','72DHCQ','2022-2023_2')
go
insert into Nganh values 
('DCTT',N'Cong Nghe Thong Tin','CNTT'),
('DCHT',N'He Thong Thong Tin','CNTT'),
('DCDT',N'Dien Tu Vien Thong','CNTT'),
('DCTM',N'Mang May Tinh Va Truyen Thong Du Lieu','CNTT'),
('DCCN',N'Co Dien Tu','CNTT'),
('DCTD',N'Thương Mại Điện Tử','KTVT'),
('DCKX',N'Kinh Tế Xây Dựng','KTVT'),
('DCKT',N'Kế Toán','KTVT'),
('DCLG',N'Logistics Và Quản Lý Chuỗi Cung Ứng','KTVT'),
('DCQM',N'Quản Trị Marketing','KTVT'),
('DCCC',N'Cơ Khí Chế Tạo','CK'),
('DCCM',N'Cơ Khí Máy Tàu Thủy','CK'),
('DCCX',N'Cơ Khí Máy Xây Dựng','CK'),
('DCXD',N'Công Trình XDDD Và CN','CT'),
('DCXC',N'CNKT XD Cầu Đường Bộ','CT')
go
insert into Lop values
('72DCHT21','DCHT',''),
('72DCHT22','DCHT',''),
('72DCTT21','DCTT',''),
('72DCTT22','DCTT',''),
('72DCTT23','DCTT',''),
('72DCTT24','DCTT',''),
('72DCDT21','DCDT',''),
('72DCDT22','DCDT',''),
('72DCTM21','DCTM',''),
('72DCTM22','DCTM',''),
('72DCCN21','DCCN',''),
('72DCCN22','DCCN',''),
('72DCTD21','DCTD',''),
('72DCTD22','DCTD',''),
('72DCKX21','DCKX',''),
('72DCKX22','DCKX',''),
('72DCKT21','DCKT',''),
('72DCKT22','DCKT',''),
('72DCLG21','DCLG',''),
('72DCLG22','DCLG',''),
('72DCQM21','DCQM',''),
('72DCQM22','DCQM',''),
('72DCCC21','DCCC',''),
('72DCCC22','DCCC',''),
('72DCCM21','DCCM',''),
('72DCCM22','DCCM',''),
('72DCCX21','DCCX',''),
('72DCCX22','DCCX',''),
('72DCXD21','DCXD',''),
('72DCXD22','DCXD',''),
('72DCXC21','DCXC',''),
('72DCXC22','DCXC','')
go
insert into KeHoachDaoTao values
('72DCHT21_2022-2023_1','72DCHT21','72DHCQ_2022-2023_1'),
('72DCHT21_2022-2023_2','72DCHT21','72DHCQ_2022-2023_2'),
('72DCHT22_2022-2023_1','72DCHT22','72DHCQ_2022-2023_1'),
('72DCHT22_2022-2023_2','72DCHT22','72DHCQ_2022-2023_2'),
('72DCTT21_2022-2023_1','72DCTT21','72DHCQ_2022-2023_1'),
('72DCTT21_2022-2023_2','72DCTT21','72DHCQ_2022-2023_2'),
('72DCTT22_2022-2023_1','72DCTT22','72DHCQ_2022-2023_1'),
('72DCTT22_2022-2023_2','72DCTT22','72DHCQ_2022-2023_2')
go
insert into HocPhan values 
('DC2HT27',N'Lập trình Java cơ bản',3,30),
('DC2HT34',N'Lập trình trực quan C#',3,40),
('DC2TT11',N'Kiến trúc máy tính',3,35),
('DC3HT60',N'Phân tích thiết kế hệ thống thông tin',4,40),
('DC1LL09',N'Lịch sử đăng cộng sản Việt Nam',2,30),
('DC1LL03',N'Tư tưởng Hồ Chí Minh',2,35),
('DC2TT31',N'Phần mềm mã nguồn mở',2,35),
('DC2TT35',N'Lập trình hướng đối tượng C++',3,40),
('DC1CB35',N'Tiếng anh',3,30),
('DC1LL08',N'Chủ nghĩa XHKH',2,30),
('DC1TD32',N'Cầu lông',2,30)
go
insert into GiangVien values
('001','Nguyen thi a','0893485443','tien si','CNTT'),
('002','Nguyen van b','0893345445','thac si','CNTT'),
('003','Nguyen thi c','0893343433','tien si','CNTT'),
('004','Nguyen thi d','0834545465','thac si','CNTT')
go
insert into nhomhp values
('1','nhom1','DC2HT27','001','72DCHT22_2022-2023_2'),
('2','nhom1','DC2HT34','002','72DCHT22_2022-2023_2'),
('3','nhom1','DC2TT11','003','72DCHT22_2022-2023_2'),
('4','nhom1','DC3HT60','004','72DCHT22_2022-2023_2'),
('5','nhom1','DC2TT31','001','72DCHT22_2022-2023_2')
go
insert into SinhVien values 
('72DCHT20070','72DCHT22',N'NGUYỄN HỮU KHANG',N'HÀ NỘI','2003-01-19',N'HÀ TÂY',N'NAM',''),
('72DCHT20084','72DCHT22',N'HOÀNG HỒNG NGỌC',N'HÀ NỘI','2003-05-18',N'HÀ TÂY',N'NỮ',''),
('72DCHT20085','72DCHT22',N'NGUYỄN THỊ PHƯƠNG HÀ',N'HÀ NỘI','2003-01-06',N'HÀ TÂY',N'NỮ',''),
('72DCTT20105','72DCHT22',N'TẠ TIẾN DŨNG',N'HẢI PHÒNG','2003-04-08',N'HẢI PHÒNG',N'NAM',''),
('72DCTT20011','72DCHT22',N'NGUYỄN VĂN DŨNG',N'HẢI DƯƠNG','2003-01-10',N'HẢI DƯƠNG',N'NAM',''),
('72DCKT20039','72DCHT22',N'PHẠM THỊ HỒNG HẠNH',N'THÁI BÌNH','2003-03-11',N'THÁI BÌNH',N'NỮ','')
go
insert into Diem values 
(1,2,3,4,5,6,'C','3','72DCHT20085'),
(5,4,6,7,8,7,'B','2','72DCHT20084'),
(4,6,7,4,5,9,'A','3','72DCHT20084'),
(7,6,8,9,5,7,'A','5','72DCHT20070'),
(9,2,7,4,7,8,'A','2','72DCHT20070')
go