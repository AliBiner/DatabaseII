select ad,soyad,maas from personel 
where birim_no in (select birim_no from birim 
where birim_ad='ÝDARÝ' or birim_ad='KALÝTE')

select ad,soyad,maas from personel 
where unvan_no = (select unvan_no from unvan where unvan_ad='Mühendis')

select ad,soyad,maas from personel 
where unvan_no not in (select unvan_no from unvan where unvan_ad='Mühendis')

select ad,soyad,cinsiyet,dogum_tarihi,dogum_yeri,maas from personel
where personel_no in (
select personel_no from gorevlendirme 
where proje_no = (select proje_no from proje where proje_ad='Güvenli Internet')) 

-- istanbul ilinde doðan personellerin ad,soyad ve maas bilgileri listelensin
select ad,soyad,maas from personel 
where dogum_yeri in (select dogum_yeri from ilce 
where il_no=(select il_no from il where il_ad='Ýstanbul'))