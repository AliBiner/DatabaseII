--select birim_no from birim where birim_ad='ARGE'

--select ad,soyad,maas,calisma_saati from personel where birim_no=3

----SubQuery
--select ad,soyad,maas,calisma_saati from personel 
--where birim_no=(select birim_no from birim where birim_ad='ARGE')

----tablo birleþtirme
--select birim.birim_ad, personel.ad,personel.soyad,personel.maas 
--from personel,birim 
--where personel.birim_no = birim.birim_no and birim_ad='ARGE'

--select b.birim_ad,p.ad,p.soyad,p.maas from personel as p, birim as b
--where p.birim_no=b.birim_no and p.ad like '%a%'
--order by b.birim_ad asc

--select unvan.unvan_ad,personel.ad,personel.soyad 
--from personel,unvan
--where unvan.unvan_no=personel.unvan_no 

select b.birim_ad,u.unvan_ad,p.ad,p.soyad,p.dogum_tarihi, il.il_ad,ilce.ilce_ad 
from personel as p, birim as b, unvan as u, il , ilce
where p.birim_no=b.birim_no 
and p.unvan_no=u.unvan_no 
and p.dogum_yeri=ilce.ilce_no 
and ilce.il_no = il.il_no
order by b.birim_ad,u.unvan_ad

select p.ad as PersonelAd,p.soyad as PersonelSoyad,c.ad as CocukAd,c.soyad as CocukSoyad
from personel as p, cocuk as c
where c.personel_no=p.personel_no

select per.ad,per.soyad,pro.proje_ad
from proje as pro, gorevlendirme as g, personel as per
where pro.proje_no=g.proje_no
and per.personel_no = g.personel_no
order by per.ad,pro.proje_ad





