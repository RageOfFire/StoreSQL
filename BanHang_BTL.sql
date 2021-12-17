create database BanHang_BTL
create table KhachHang (
MaKH char (5) primary key,
TenKH Nvarchar (30) NOT NULL,
DiaChi Nvarchar (50),
DT Nvarchar (10) check (len(DT) between 8 and 10),
Email Nvarchar (30),
)
create table VatTu (
MaVT char (5) primary key,
TenVT Nvarchar (30) NOT NULL,
DVT Nvarchar (20),
GiaMua int check (GiaMua > 0),
SLTon int check (SLTon >=0),
)
create table HoaDon (
MaHD char (10) primary key,
Ngay datetime check (Ngay < getdate()),
MaKH char (5) foreign key (MaKH) references KhachHang (MaKH),
)
create table ChiTietHoaDon (
MaHD char (10) foreign key (MaHD) references HoaDon (MaHD),
MaVT char (5) foreign key (MaVT) references VatTu (MaVT),
SL int check (SL > 0),
KhuyenMai int,
GiaBan int,
)
drop table ChiTietHoaDon
insert into VatTu values ('VT01',N'Xi Măng',N'Bao','50000','5000');
insert into VatTu values ('VT02',N'Cát',N'Khối','45000','50000');
insert into VatTu values ('VT03',N'Gạch Ống',N'Viên','120','800000');
insert into VatTu values ('VT04',N'Gạch Thẻ',N'Viên','110','800000');
insert into VatTu values ('VT05',N'Đá Lớn',N'Khối','25000','100000');
insert into VatTu values ('VT06',N'Đá Nhỏ',N'Khối','33000','100000');
insert into VatTu values ('VT07',N'Gỗ',N'Khối','15000','50000');
insert into VatTu values ('VT08',N'Than',N'Khối','20000','75000');
insert into KhachHang values ('KH01',N'Nguyễn Thị Hiền',N'Bắc Ninh','34578956','NTH@yahoo.com');
insert into KhachHang values ('KH02',N'Lê Hoàng Nam',N'Hà Nội','38789873','namlehoang@gmail.com');
insert into KhachHang values ('KH03',N'Bùi Hồng Sơn',N'Bắc Ninh','34578952','buihongson@hunre.edu.vn');	
insert into KhachHang values ('KH04',N'Mai Thị Vân Anh',N'Hà Nội',NULL,NULL);		
insert into KhachHang values ('KH05',N'Lê Văn Quang',N'Bắc Giang',NULL,'lequang@yahoo.vnn.vn');
insert into KhachHang values ('KH06',N'Trần Hoàng Khải',N'Quế Võ','34578974',NULL);
insert into HoaDon (MaHD,Ngay,MaKH) values ('HD001','2000-5-12','KH01');
insert into HoaDon (MaHD,Ngay,MaKH) values ('HD002','2000-5-25','KH02');
insert into HoaDon (MaHD,Ngay,MaKH) values ('HD003','2000-5-21','KH01');
insert into HoaDon (MaHD,Ngay,MaKH) values ('HD004','2000-5-20','KH04');
insert into HoaDon (MaHD,Ngay,MaKH) values ('HD005','2000-5-26','KH04');
insert into HoaDon (MaHD,Ngay,MaKH) values ('HD006','2000-6-2','KH03');
insert into HoaDon (MaHD,Ngay,MaKH) values ('HD007','2000-6-22','KH04');
insert into HoaDon (MaHD,Ngay,MaKH) values ('HD008','2000-6-25','KH03');
insert into HoaDon (MaHD,Ngay,MaKH) values ('HD009','2000-8-15','KH04');
insert into HoaDon (MaHD,Ngay,MaKH) values ('HD010','2000-9-30','KH01');
insert into HoaDon (MaHD,Ngay,MaKH) values ('HD011','2000-12-27','KH06');
insert into HoaDon (MaHD,Ngay,MaKH) values ('HD012','2000-12-17','KH01');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD001','VT01','5','52000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD001','VT05','10','30000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD002','VT03','10000','150');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD003','VT02','20','55000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD004','VT03','50000','150');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD004','VT04','20000','120');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD005','VT05','10','30000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD005','VT06','15','35000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD005','VT07','20','17000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD006','VT04','10000','120');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD007','VT04','20000','125');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD008','VT01','100','55000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD008','VT02','20','47000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD009','VT02','25','48000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD010','VT01','25','57000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD011','VT01','20','55000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD011','VT02','20','45000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD012','VT01','20','55000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD012','VT02','10','48000');
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD012','VT03','10000','150');
select * from ChiTietHoaDon
select * from KhachHang where DiaChi = N'Bắc Ninh'
select * from VatTu where DVT = N'Viên'
select * from VatTu where  GiaMua >= 25000
select * from KhachHang where DT IS NULL or Email IS NULL
select * from HoaDon,KhachHang where HoaDon.MaKH = KhachHang.MaKH
select MaHD,TenKH,DiaChi,DT,Ngay from HoaDon,KhachHang where HoaDon.MaKH = KhachHang.MaKH and year(Ngay)/month(Ngay) > 2000/8
select * from ChiTietHoaDon,HoaDon,KhachHang where ChiTietHoaDon.MaHD = HoaDon.MaHD and HoaDon.MaKH = KhachHang.MaKH
select ChiTietHoaDon.MaHD,Ngay,TenKH,DiaChi,DT from ChiTietHoaDon,HoaDon,KhachHang where ChiTietHoaDon.MaHD = 
HoaDon.MaHD and HoaDon.MaKH = KhachHang.MaKH and SL between 5 and 25
select ChiTietHoaDon.MaHD,Ngay,TenKH,DiaChi,DT from ChiTietHoaDon,HoaDon,KhachHang where ChiTietHoaDon.MaHD = 
HoaDon.MaHD and HoaDon.MaKH = KhachHang.MaKH and TenKH like N'%S%'
create view [SLTonTrungBinh] as select avg(SLTon) as TrungBinh from VatTu
select * from [SLTonTrungBinh]
create view [KiemTraHoaDon] as select HoaDon.MaHD,Ngay,TenKH,DiaChi,DT,sum(GiaBan) as TongGiaTriHoaDon 
from HoaDon,KhachHang,ChiTietHoaDon where HoaDon.MaHD = ChiTietHoaDon.MaHD and HoaDon.MaKH = KhachHang.MaKH 
group by HoaDon.MaHD,HoaDon.Ngay,KhachHang.TenKH,KhachHang.DiaChi,KhachHang.DT
select * from [KiemTraHoaDon]
create view [KiemTraHoaDonLonNhat] as select HoaDon.MaHD,Ngay,TenKH,DiaChi,DT,max(GiaBan) as GiaTriHoaDonLonNhat 
from HoaDon,KhachHang,ChiTietHoaDon where HoaDon.MaHD = ChiTietHoaDon.MaHD and HoaDon.MaKH = KhachHang.MaKH 
group by HoaDon.MaHD,HoaDon.Ngay,KhachHang.TenKH,KhachHang.DiaChi,KhachHang.DT
select * from [KiemTraHoaDonLonNhat]
create view [KiemTraHoaDonNhoNhat] as select HoaDon.MaHD,Ngay,TenKH,DiaChi,DT,min(GiaBan) as GiaTriHoaDonNhoNhat 
from HoaDon,KhachHang,ChiTietHoaDon where HoaDon.MaHD = ChiTietHoaDon.MaHD and HoaDon.MaKH = KhachHang.MaKH 
group by HoaDon.MaHD,HoaDon.Ngay,KhachHang.TenKH,KhachHang.DiaChi,KhachHang.DT
select * from [KiemTraHoaDonNhoNhat]
create view [KiemTraSoHoaDon] as select TenKH,count(MaHD) as SoHoaDon from KhachHang,HoaDon where 
KhachHang.MaKH = HoaDon.MaKH group by KhachHang.TenKH
select * from [KiemTraSoHoaDon]
create procedure GetAllVatTu as select * from VatTu
exec GetAllVatTu
create procedure KhachHangFull as select * from KhachHang where DT is not null and email is not null
exec KhachHangFull
create procedure KhuyenMaiSale as update ChiTietHoaDon set KhuyenMai = GiaBan*10/100
exec KhuyenMaiSale
create procedure OffKhuyenMai as update ChiTietHoaDon set KhuyenMai = null
exec OffKhuyenMai
select * from ChiTietHoaDon
create procedure year20 as select KhachHang.* from KhachHang,HoaDon where KhachHang.MaKH = HoaDon.MaKH and year(GETDATE()) - year(Ngay) > 20
exec year20
create procedure TimKiemTheoDiaChi @diachi Nvarchar(50) as select * from KhachHang where DiaChi like @diachi
exec TimKiemTheoDiaChi @diachi = N'%Bắc%'
create trigger Tr_TenKH
on KhachHang for delete 
as
begin
declare @TenKH int = 0
select @TenKH = count(*) from deleted
where TenKH like N'%Sơn%'
if (@TenKH > 0)
begin 
print N'Lỗi do không cho phép xóa người tên Sơn'
rollback transaction end
else
begin 
print N'Xóa thành công'
end
end
delete KhachHang where TenKH like N'%Sơn%'
delete HoaDon where MaKH = 'KH03'
delete ChiTietHoaDon where MaHD = 'HD006' or MaHD = 'HD008'
create trigger Tr_khachhang
on khachhang
for insert
as
begin
print N'Bản ghi đã được lưu vào CSDL'
end
insert into KhachHang values ('KH07',N'Nguyễn Thị Hồng Loan',N'Hà Nội','09665858','NTHL@yahoo.com')
alter trigger Tr_KhachHang
 on KhachHang
 for insert
 as
 if (select DT from inserted) like '%a%'
 begin print N'Số điện thoại không hợp lệ'
 rollback transaction end
 else
 begin print N'Bản ghi đã được lưu vào CSDL'
 end
insert into KhachHang values ('KH08',N'Nguyễn Văn Hưng',N'Hà Nội','0096a681','NVH@gmail.com')
delete KhachHang where MaKH = 'KH08'
 create trigger Tr_Money
 on ChiTietHoaDon
 for insert
 as
 begin
 declare @GiaBan int = 0
 select @GiaBan = count (*) from inserted
 where GiaBan > 200000
 if (@GiaBan > 0)
 begin print N'Giá bán quá cao'
 rollback transaction end
 else
 begin print N'Bản ghi đã được cập nhật vào CSDL'
 end
 end
insert into ChiTietHoaDon (MaHD,MaVT,SL,GiaBan) values ('HD011','VT02','20','450000');
 delete ChiTietHoaDon where GiaBan = 450000
alter trigger Tr_KhachHang
on KhachHang for insert as
begin
declare @NumberTenKH Nvarchar (30)
select @NumberTenKH = TenKH from KhachHang
if (@NumberTenKH in (select TenKH from KhachHang where TenKH like '%0%' or TenKH like '%1%' or TenKH like '%2%' 
or TenKH like '%3%' or TenKH like '%4%' or TenKH like '%5%' or TenKH like '%6%' or TenKH like '%7%' 
or TenKH like '%8%' or TenKH like '%9%'))
begin
print N'Lỗi tên khách hàng có số'
rollback transaction end
else
begin print N'Tên hợp lệ' 
end
end
insert into KhachHang values ('KH09',N'Nguyễn Hồng Nhung231',N'Bắc Giang','02131345','NHN@gmail.com')
select * from KhachHang where MaKH in (select MaKH from HoaDon where KhachHang.MaKH = HoaDon.MaKH and year(Ngay)/month(Ngay) = 2000/6)
select MaVT,TenVT from VatTu where not exists (select MaVT from ChiTietHoaDon where VatTu.MaVT = ChiTietHoaDon.MaVT)
select * from VatTu where MaVT in (select MaVT from ChiTietHoaDon where VatTu.MaVT = ChiTietHoaDon.MaVT and GiaBan between 45000 and 55000)
select MaKH from KhachHang union select MaKH from HoaDon
select MaVT,TenVT from VatTu where exists (select MaVT from ChiTietHoaDon where VatTu.MaVT = ChiTietHoaDon.MaVT)