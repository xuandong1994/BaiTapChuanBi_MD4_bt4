Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;
/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa nvarchar(30)not null
);
/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float
);
/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');
/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);
-- ---------------------------------------------------------------------------------------------------------------------
-- 1. Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh
-- viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã
-- sinh viên tăng dần

select dmsv.masv, dmsv.hosv, dmsv.tensv, dmsv.hocbong from dmsv order by dmsv.masv;

-- 2. Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên,
-- Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ.

select dmsv.masv, dmsv.hosv, dmsv.tensv, dmsv.phai, dmsv.ngaysinh from dmsv;

-- 3. Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông
-- tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.

select  dmsv.hosv, dmsv.tensv, dmsv.ngaysinh, dmsv.hocbong from dmsv order by dmsv.ngaysinh asc , dmsv.hocbong desc;

-- 4. Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã môn, Tên môn, Số tiết.

select dmmh.mamh, dmmh.tenmh, dmmh.sotiet from dmmh;

-- 5. Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm
-- các thông tin: Họ tên sinh viên, Ngày sinh, Phái.

select dmsv.hosv, dmsv.tensv, dmsv.ngaysinh, dmsv.phai  from dmsv where dmsv.tensv like '%i';
-- 6. Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm các thông tin: Mã khoa, Tên khoa.

select * from dmkhoa where dmkhoa.tenkhoa like '_n%';

-- 7. Liệt kê những sinh viên mà họ có chứa chữ Thị.

select * from dmsv where dmsv.hosv like '%thị%';

-- 8. Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm các
-- thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽ
-- được sắp xếp theo thứ tự Mã khoa giảm dần

select dmsv.masv, dmsv.hosv, dmsv.tensv, dmkhoa.makhoa, dmsv.hocbong
 from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa 
 where dmsv.hocbong > 100000
 order by dmkhoa.makhoa desc;

-- 9. Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồm
-- các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.

select dmsv.masv, dmsv.hosv, dmsv.tensv, dmkhoa.makhoa, dmsv.noisinh, dmsv.hocbong
 from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa 
 where dmsv.hocbong > 150000;

-- 10.Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thôngtin: Mã sinh viên, Mã khoa, Phái.

select dmsv.masv, dmkhoa.makhoa, dmsv.phai from dmkhoa join dmsv on dmkhoa.makhoa = dmsv.makhoa
-- where dmkhoa.makhoa in ('AV', 'vl');
where dmkhoa.makhoa like 'AV' or dmkhoa.makhoa like 'VL';

-- 11.Cho biết những sinh viên có ngày sinh từ ngày 01/01/1991 đến ngày 05/06/1992 gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học bổng.

select dmsv.masv, dmsv.ngaysinh, dmsv.noisinh, dmsv.hocbong from dmsv
where date(dmsv.ngaysinh) between '1991-01-01' and '1992-06-05';

-- 12.Danh sách những sinh viên có học bổng từ 80.000 đến 150.000, gồm các thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa.

select dmsv.masv, dmsv.ngaysinh, dmsv.phai, dmkhoa.makhoa, dmsv.hocbong
 from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa 
 where dmsv.hocbong between 80000 and 150000;

-- 13.Cho biết những môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông tin: Mã môn học, Tên môn học, Số tiết.

select * from dmmh where dmmh.sotiet between 30 and 45;

-- 14.Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.

select dmsv.masv, dmsv.hosv, dmsv.tensv, dmkhoa.tenkhoa, dmsv.phai 
from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa
where dmkhoa.tenkhoa in ('Anh văn' , 'tin học') and dmsv.phai like 'nam';

-- 15.Liệt kê những sinh viên nữ, tên có chứa chữ N

select * from dmsv where dmsv.phai like 'nữ' and dmsv.tensv like '%n%' ;

-- 16.Danh sách sinh viên có nơi sinh ở Hà Nội và sinh vào tháng 03, gồm các thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.

select  dmsv.hosv, dmsv.tensv, dmsv.noisinh, dmsv.ngaysinh 
 from dmsv where dmsv.noisinh like 'hà nôi' and month(dmsv.ngaysinh ) = 3;

-- 17.Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh viên, Tuổi,Học bổng.

select  dmsv.hosv, dmsv.tensv, year(current_date()) - year(dmsv.ngaysinh) tuoi, dmsv.hocbong 
 from dmsv where year(current_date()) - year(dmsv.ngaysinh) > 20 ;
 
-- 18.Danh sách những sinh viên có tuổi từ 20 đến 25, thông tin gồm: Họ tên sinh viên, Tuổi, Tên khoa.

select  dmsv.hosv, dmsv.tensv, year(current_date()) - year(dmsv.ngaysinh) tuoi, dmkhoa.tenkhoa
 from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa
 where year(current_date()) - year(dmsv.ngaysinh) between 20 and 25  ;
 
-- 19.Danh sách sinh viên sinh vào mùa xuân năm 1990, gồm các thông tin: Họ tên sinh viên,Phái, Ngày sinh.

select  dmsv.hosv, dmsv.tensv, dmsv.phai, dmsv.ngaysinh 
 from dmsv where date(dmsv.ngaysinh ) between '1990-03-01' and '1990-05-31';
 
-- 20.Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên,
-- Phái, Mã khoa, Mức học bổng. Trong đó, mức học bổng sẽ hiển thị là “Học
-- bổng cao” nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển thị là “Mức trung bình”

select dmsv.masv, dmsv.phai, dmkhoa.makhoa,
CASE WHEN hocbong > 500000 THEN 'Học bổng cao' ELSE 'Mức trung bình'END AS muchocbong 
from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa;

-- 21.Cho biết tổng số sinh viên của toàn trường

select count(*) tong_so_sv from dmsv ;

-- 22.Cho biết tổng sinh viên và tổng sinh viên nữ.

select count(*) tong_so_sv from dmsv
union select count(*) tong_so_sv_nu 
from dmsv where dmsv.phai like 'nữ';

-- 23.Cho biết tổng số sinh viên của từng khoa.

select dmkhoa.makhoa, count(*) tong_so_sv 
from dmkhoa join dmsv on dmkhoa.makhoa = dmsv.makhoa
group by dmkhoa.makhoa;

-- 24.Cho biết số lượng sinh viên học từng môn.

select dmmh.mamh ,count(*) so_luongsv_tm from ketqua kq join dmsv on kq.masv = dmsv.masv 
join dmmh on dmmh.mamh = kq.mamh
group by dmmh.mamh;

-- 25.Cho biết số lượng môn học mà sinh viên đã học(tức tổng số môn học có trong bảng kq)

select kq.masv, count(distinct kq.mamh) so_luong_monhoc
from ketqua kq
group by kq.masv;

-- 26.Cho biết tổng số học bổng của mỗi khoa.

select dmkhoa.makhoa,count(*) tong_so_hocbong
 from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa
 group by dmkhoa.makhoa;

-- 27.Cho biết học bổng cao nhất của mỗi khoa.

select dmkhoa.makhoa, max(dmsv.hocbong) hoc_bong_cao_nhat
 from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa
 group by dmkhoa.makhoa;

-- 28.Cho biết tổng số sinh viên nam và tổng số sinh viên nữ của mỗi khoa.

select dmkhoa.makhoa,
count(case when dmsv.phai = 'nam' then dmsv.masv end) sv_nam, 
count(case when dmsv.phai = 'nữ' then dmsv.masv end) sv_nu 
from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa
group by dmkhoa.makhoa;

-- 29.Cho biết số lượng sinh viên theo từng độ tuổi.

select count(*), year(current_date())- year(dmsv.ngaysinh ) so_luong_sv from dmsv
group by  year(current_date())- year(dmsv.ngaysinh);

-- 30.Cho biết những năm sinh nào có 2 sinh viên đang theo học tại trường.

select year(dmsv.ngaysinh ) from dmsv
group by year(dmsv.ngaysinh )
having count(*) = 2 ;

-- 31.Cho biết những nơi nào có hơn 2 sinh viên đang theo học tại trường.

select dmsv.noisinh from dmsv
group by dmsv.noisinh 
having count(*) >= 2;

-- 32.Cho biết những môn nào có trên 3 sinh viên dự thi.

select dmmh.tenmh
from dmmh join ketqua kq on dmmh.mamh = kq.mamh
join dmsv on dmsv.masv = kq.masv
group by dmmh.tenmh 
having count(*) > 3;

-- 33.Cho biết những sinh viên thi lại trên 2 lần.

select dmsv.masv, dmsv.hosv, dmsv.tensv, count(*) so_lan_thi_lai from dmsv join ketqua kq on dmsv.masv = kq.masv
group by dmsv.masv, dmsv.hosv, dmsv.tensv
having count(*) > 2;

-- 34.Cho biết những sinh viên nam có điểm trung bình lần 1 trên 7.0

select dmsv.masv, dmsv.hosv, dmsv.tensv,dmsv.phai
from dmsv join ketqua kq on dmsv.masv = kq.masv 
group by dmsv.masv, dmsv.hosv, dmsv.tensv ,dmsv.phai
having dmsv.phai = 'nam' and avg(kq.diem) > 7; 

-- 35.Cho biết danh sách các sinh viên rớt trên 2 môn ở lần thi 1.

select dmsv.masv, dmsv.hosv, dmsv.tensv,kq.lanthi
from dmsv join ketqua kq on dmsv.masv = kq.masv 
where kq.lanthi = 1
group by dmsv.masv
having count(*) > 2;

-- 36.Cho biết danh sách những khoa có nhiều hơn 2 sinh viên nam

select dmkhoa.tenkhoa, count(*) total_sv_nam from dmkhoa join dmsv on dmkhoa.makhoa = dmsv.makhoa
where dmsv.phai = 'nam'
group by dmkhoa.tenkhoa
having count(*) > 2;

-- 37.Cho biết những khoa có 2 sinh viên đạt học bổng từ 200.000 đến 300.000.

select dmkhoa.tenkhoa,COUNT(*) AS total_sinhvien from dmkhoa  join dmsv on dmkhoa.makhoa = dmsv.makhoa
where dmsv.hocbong between 100000 and 200000
group by dmkhoa.tenkhoa
having count(*) = 2;

-- 38.Cho biết số lượng sinh viên đậu và số lượng sinh viên rớt của từng môn trong lần thi 1.

select kq.mamh,dmsv.hosv,dmsv.tensv, count(case when kq.diem >= 5 then kq.diem end) so_luong_dau,
count(case when kq.diem <= 5 then kq.diem end) so_luong_rot
 from dmsv  join ketqua kq on dmsv.masv = kq.masv
where kq.lanthi = 1
group by kq.mamh, dmsv.hosv,dmsv.tensv;

-- 39.Cho biết sinh viên nào có học bổng cao nhất.

select * from dmsv 
where dmsv.hocbong = (select max(dmsv.hocbong) from dmsv);

-- 40.Cho biết sinh viên nào có điểm thi lần 1 môn cơ sở dữ liệu cao nhất.

select * from dmsv join ketqua kq on dmsv.masv = kq.masv
join dmmh on dmmh.mamh = kq.mamh
where kq.lanthi = 1 or dmmh.tenmh like 'cơ sở dữ liệu'
order by kq.diem desc
limit 1;

-- 41.Cho biết sinh viên khoa anh văn có tuổi lớn nhất.

select dmsv.masv, dmsv.hosv, dmsv.tensv, dmsv.ngaysinh, dmkhoa.tenkhoa, max(year(current_date())- year(dmsv.ngaysinh)) tuoi_cao_nhat 
from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa
where dmkhoa.tenkhoa = 'anh văn'
group by  dmsv.masv, dmsv.hosv, dmsv.tensv, dmsv.ngaysinh, dmkhoa.tenkhoa
order by tuoi_cao_nhat desc
limit 1;

-- 42.Cho biết khoa nào có đông sinh viên nhất.

select  dmkhoa.tenkhoa, count(dmsv.MaSV) so_sinh_vien
from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa
group by dmkhoa.tenkhoa
order by so_sinh_vien desc
limit 1;

-- 43.Cho biết khoa nào có đông nữ nhất.

select  dmkhoa.tenkhoa, count(case when dmsv.Phai = 'nữ' then dmsv.MaSV end) so_sinh_vien_nu
from dmsv join dmkhoa on dmsv.makhoa = dmkhoa.makhoa
group by dmkhoa.tenkhoa
order by so_sinh_vien_nu desc
limit 1;

-- 44.Cho biết môn nào có nhiều sinh viên rớt lần 1 nhiều nhất.

select dmsv.masv, dmsv.hosv, dmsv.tensv,count(kq.LanThi) sinhvien from dmsv join ketqua kq on dmsv.MaSV = kq.MaSV
join dmmh on dmmh.MaMH = kq.MaMH
where kq.LanThi = '1'
group by dmsv.masv, dmsv.hosv, dmsv.tensv
order by sinhvien desc
limit 1;

-- 45.Cho biết sinh viên không học khoa anh văn có điểm thi môn phạm lớn hơn điểm thi văncủa sinh viên học khoa anh văn.
-- 46.Cho biết sinh viên có nơi sinh cùng với Hải .

select dmsv.masv, dmsv.hosv, dmsv.tensv, dmsv.noisinh from dmsv 
where dmsv.NoiSinh = 'hà nội';

-- 47.Cho biết những sinh viên nào có học bổng lớn hơn tất cả học bổng của sinh viên thuộc khoa anh văn

SELECT dmsv.masv, dmsv.hosv, dmsv.tensv, dmkhoa.TenKhoa, dmsv.HocBong
FROM dmsv
JOIN dmkhoa ON dmsv.MaKhoa = dmkhoa.MaKhoa
WHERE dmsv.HocBong > (
    SELECT MAX(dmsv2.HocBong)
    FROM dmsv dmsv2
    JOIN dmkhoa dmkhoa2 ON dmsv2.MaKhoa = dmkhoa2.MaKhoa
    WHERE dmkhoa2.TenKhoa = 'anh văn'
);

-- 48.Cho biết những sinh viên có học bổng lớn hơn bất kỳ học bổng của sinh viên học khóa anh văn

SELECT dmsv.*
FROM dmsv
WHERE dmsv.HocBong > (
    SELECT MAX(dmsv2.HocBong)
    FROM dmsv dmsv2
    JOIN dmkhoa dmkhoa2 ON dmsv2.MaKhoa = dmkhoa2.MaKhoa
    WHERE dmkhoa2.TenKhoa = 'anh văn'
);

-- 49. cho biết sinh viên nào có điểm thi môn cơ sở dữ liệu lần 2 lớn hơn tất cả điểm thi lần 1 môn cơ sở dữ liệu của những sinh viên khác.

select  dmsv.masv, dmsv.hosv, dmsv.tensv,kq.Diem diem_thi_lon_nhat from dmsv join ketqua kq on dmsv.MaSV = kq.MaSV
join dmmh on dmmh.MaMH = kq.MaMH
LEFT JOIN ketqua kq1 ON dmsv.MaSV = kq1.MaSV AND kq1.LanThi = '1' AND dmmh.MaMH = kq1.MaMH
where kq.LanThi = '2' and dmmh.TenMH = 'cơ sở dữ liệu' and (kq.Diem > kq1.Diem OR kq1.Diem IS NULL)
group by dmsv.masv, dmsv.hosv, dmsv.tensv, kq.Diem
order by diem_thi_lon_nhat desc
limit 1;

-- 50.Cho biết những sinh viên đạt điểm cao nhất trong từng môn.

select dmsv.masv, dmsv.hosv, dmsv.tensv, kq.Diem diem_cao_nhat
 from dmsv join ketqua kq on dmsv.MaSV = kq.MaSV
join dmmh on dmmh.MaMH = kq.MaMH
WHERE kq.Diem = (
    SELECT MAX(Diem)
    FROM ketqua
    WHERE MaMH = kq.MaMH
)
group by dmsv.masv, dmsv.hosv, dmsv.tensv, kq.Diem;

-- 51.Cho biết những khoa không có sinh viên học.

select dmsv.masv, dmsv.hosv, dmsv.tensv from dmsv join dmkhoa on dmsv.MaKhoa = dmkhoa.MaKhoa
where dmkhoa.MaKhoa not in ( select dmsv.MaKhoa from dmsv)


-- 52.Cho biết sinh viên chưa thi môn cơ sở dữ liệu.
-- 53.Cho biết sinh viên nào không thi lần 1 mà có dự thi lần 2.
-- 54.Cho biết môn nào không có sinh viên khoa anh văn học.
-- 55.Cho biết những sinh viên khoa anh văn chưa học môn văn phạm.
-- 56.Cho biết những sinh viên không rớt môn nào.
-- 57.Cho biết những sinh viên học khoa anh văn có học bổng và những sinh viên
-- chưa bao giờ rớt.
-- 58.Cho biết khoa nào có đông sinh viên nhận học bổng nhất và khoa nào khoa
-- nào có ít sinh viên nhận học bổng nhất.
-- 59.Cho biết 3 sinh viên có học nhiều môn nhất.
-- 60.Cho biết những môn được tất cả các sinh viên theo học.
-- 61.Cho biết những sinh viên học những môn giống sinh viên có mã số A02 học.
-- 62.Cho biết những sinh viên học những môn bằng đúng những môn mà sinh viên A02 học.