--use sirketler

--select * from personel
--select * from ilce

--group by olmadan gruplama iþlemi
--select count(*) from personel 
--where birim_no = (select birim_no from birim where birim_ad='ARGE')

-- group by ifadesinden sonra kullanýlan kolon ayný zamanda
--select ifadesinden sonra kullanýlýp ve mutlaka bir aggreate function ile
-- kullanýlmalýdýr.

--select birim_no,count(*) from personel group by birim_no

--select unvan_no,sum(maas) as ToplamMaas from personel group by unvan_no
--select unvan_no,avg(maas) as OrtalamaMaas from personel group by unvan_no
--select unvan_no,min(maas) as MinMaas from personel group by unvan_no 
--select unvan_no,max(maas) as MaxMaas from personel group by unvan_no
--select unvan_no,count(*) as ToplamMaas from personel group by unvan_no
--select * from unvan order by unvan_no

--select personel_no,count(*) as CocukSayisi from cocuk  group by personel_no order by CocukSayisi


--select personel_no,count(*) as ProjeSayisi from gorevlendirme group by personel_no

--select il_no,count(*) from ilce group by il_no

--her bir birimin birim saat hesaplamasý
--select unvan_no,sum(maas)/sum(calisma_saati) as BirimUcret from personel 
--group by unvan_no

--having
--select unvan_no,sum(maas),count(*) from personel 
--where maas>3000
--group by unvan_no

--select unvan_no,sum(maas) from personel group by unvan_no having sum(maas)>30000

--select birim_no,avg(maas) from personel group by birim_no having avg(maas)>3675