--select getdate() anlýk tarihi alýr

--select getutcdate()

--select year(getdate())
--select year('2022-01-01')
--select year(pDTarihi) from personel
--select month(pDTarihi) from personel
--select day(pDTarihi) from personel

--select pDTarihi,year(pDTarihi) as yil,month(pDTarihi) as ay,day(pDTarihi) as gun from personel

--select datepart(hour,getdate()),getdate() 
--zaman dilimen ait istenilen parametrelerin alýnmasýný saðlar

--select DATEADD(HOUR,5,GETDATE()),GETDATE() 

--select datediff(year,'2000-01-01',getdate())

--select isdate('2000-01-01'),isdate('2000-13-01')

--select datename(weekday,GETDATE())  Monday

--select pAd,pSoyad, datediff(year,pDTarihi,getdate()) as Yas, datediff(month,pIsBasTarihi,getdate()) as IsSuresi from personel


--Aggreate Function

--select count(pAd) from personel
--select count(*) from personel
--select min(pMaas) from personel
--select max(pDTarihi) from personel
--select sum(pMaas) from personel
--select avg(pMaas) from personel
--select sum(pMaas)/count(pAd) from personel
--select max(pMaas) - min(pMaas) from personel
--select datediff(month,min(pIsBasTarihi),max(pIsBasTarihi)) from personel
--select datediff(year,min(pDTarihi),max(pDTarihi)) from personel
--select pMaas - (select avg(pMaas) from personel) from personel