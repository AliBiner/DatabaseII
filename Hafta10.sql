--koþullu view oluþturma
create view vm_birim_personel
as
select ad,soyad,maas from personel where birim_no=1 
go

select ad,soyad from vm_birim_personel 
where maas>4500 
order by ad

--subquery view oluþturma
create view vm_personel_teknisyen
as
select ad,soyad,maas,calisma_saati,dogum_tarihi,dogum_yeri
from personel 
where unvan_no=(select unvan_no from unvan where unvan_ad='Teknisyen')
go

select * from vm_personel_teknisyen

alter view vm_personel_teknisyen
as
select ad,soyad,maas,calisma_saati,prim,dogum_tarihi,dogum_yeri
from personel 
where unvan_no=(select unvan_no from unvan where unvan_ad='Teknisyen')
go


--tablo birleþtirme view
create view vm_prsonel_unvan
as
select b.birim_ad,p.ad,p.soyad
from personel p
join unvan u
on p.unvan_no=u.unvan_no
join birim b
on b.birim_no=p.birim_no

--with encryption
alter view vm_genel
with encryption
as
select ad,soyad,maas from personel
go

select * from vm_genel

sp_helptext 'vm_genel'

--with schembinding
create view vm_personel_schema
with schemabinding
as
select ad,soyad,maas from dbo.personel
go

--with check option
create view vm_personel_birims
as
select * from personel where birim_no=1
with check option

insert into vm_personel_birims values ('hakan','yuksel','e','1990-01-01',1,'2000-01-01',1,1,100,10000,1000)