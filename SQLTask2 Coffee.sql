create database Task02_Coffee
go

use Task02_Coffee
go

create table Coffee(
	CoffeeID int primary key,
		CoffeeName nvarchar(100),
		Tel varchar(30),
		UtilitiID int foreign key references Utilities(UtilitiID),
		CountryID int foreign key references Country(CountryID),
		CityID int foreign key references City(CityID),
		DistrictID int foreign key references District(DistrictID)
)
go

create table Utilities(
	UtilitiID int primary key,
		UtilitiName nvarchar(150)
)
go

create table Country(
	CountryID int primary key,
		CountryName nvarchar(100)
)
go

create table City(
	CityID int primary key,
	CityName nvarchar(100),
		CountryID int foreign key references Country(CountryID)
)
go

create table District(
	DistrictID int primary key,
	DistrictName nvarchar(100),
		CityID int foreign key references City(CityID)
)
go

select * from Coffee
select * from Utilities
select * from Country
select * from City
select * from District

insert into Country values (100, N'Việt Nam')

insert into City values (200, N'TP Hà Nội', 100),
						(201, N'TP Hà Nội', 100)

insert into District values (300, N'Quận Nam Từ Liêm', 200),
							(301, N'Quận Hoàn Kiếm', 200),
							(301, N'Quận 9', 201),
							(303,N'Quận Tân Phú', 201)

insert into Utilities values (2000, N'Wifi Miễn Phí'),
							 (2001, N'Than toán bằng thẻ'),
							 (2002, N'Wifi Miễn Phí và Thanh toán bằng thẻ')

insert into Coffee values (1000, N'HIGHLANDS COFFEE THE LIGHT HÀ NỘI', '(024) 56780021', 2002, 100, 200, 300),
						  (1001, N'KOSMO TÂY HỒ', '()024 56780021', 2000, 100, 200, 300),
												   (1002, N'THE MANOR 2', '(024) 56780021', 2001, 100, 200, 300),
												   (1003, N'HIGHLANDS COFFEE 16 PHAN CHU TRINH', '(024) 56780021', 2001, 100, 200, 301),
												   (1004, N'01 HÀNG BẠC', '(024) 56780021', 2002, 100, 200, 301),
												   (1005, N'HIGHLANDS COFFEE 323 DO XUAN HOP', '(024) 56780021', 2002, 100, 201, 302),
												   (1006, N'VINCOM LÊ VĂN VIỆT', '(024) 56780021', 2002, 100, 201, 302),
												   (1007, N'HIGHLANDS COFFEE 55 VƯỜN LÀI', '(024) 56780021', 2000, 100, 201, 303),
												   (1008, N'AEON TÂN PHÚ', '(024) 56780021', 2002, 100, 201, 303)

select * from Coffee
where UtilitiID = 2002 and CountryID = 100 and CityID = 200 and DistrictID = 301

select * from Coffee
where UtilitiID = 2000 and CountryID = 100 and CityID = 201 and DistrictID = 303


