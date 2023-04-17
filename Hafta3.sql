--create database mart7

--use mart7

--create table departman(
--	dNo int primary key identity(1,1) not null,
--	dAd nvarchar(50),
--	dTel nvarchar(11),

--)

--create table personel(
--	pNo int primary key identity(1,1) not null,
--	pAd nvarchar(50),
--	pSoyad nvarchar(50),
--	pDTarihi datetime,
--	pDYeri nvarchar(50),
--	pAktif bit,
--	pIsBasTarihi datetime,
--	pMaas int,
--	dNo int constraint FK_PersonelDepartman foreign key(dNo) references departman(dNo)
--)

--alter table departman
--add dTarihi datetime

--alter table departman
--alter column dTarihi datetime not null

--alter table departman
--drop column dTarihi

--create table deneme(
--	dNo int not null
--)

--drop table deneme

--alter table personel
--alter column pDNo int constraint FK_iliþki1 foreign key(pDNo) references departman(dNo)

--insert into departman values
--('Muhasebe',''),
--('Sekreterlik',''),
--('Fotokopi',''),
--('Yazý Ýþleri',''),
--('Personel Ýþleri','')

--insert into personel values('Ali','Biner','1997-05-25','Þanlýurfa',1,'2023-05-01',2500,1)

--insert into personel(pAd,PSoyad,pMaas) values ('Hakan','Yüksel',15000)

--update personel set pDYeri = 'Isparta' where pNo =2

--delete from personel where pNo=2

--select top 1 * from personel where pDYeri = 'ýsparta'
--select top 1 * from personel where pDYeri = 'ýsparta' order by pMaas desc

--select * from personel where pAd like='%a%' and pIsBasTarihi>'2019-12-31' order by pMaas asc