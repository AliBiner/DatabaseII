select * from depertman;

select  pAd +' '+ pSoyad from personel;
select top 1 pAd +' '+ pSoyad from personel;
select 'Sayýn '+ pAd +' '+ pSoyad as AdSoyad from personel;

select pAd,pSoyad,pMaas,CONVERT(int, CONVERT(int,pMaas)*1.5) as yeniMaas from personel
order by yeniMaas desc;

select * from depertman where depertman>'y';