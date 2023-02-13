#!/bin/bash

anayol=$(pwd)
echo "Güncel Veritabanı Yolu: "
echo $anayol
echo "olarak belirlendi."
echo "Devam edilsin mi?(E/H)"
function evethayir
{
read secim
case $secim in
	[eE])
		echo "Devam ediliyor..";
		export anayol;
		echo "Lütfen veritabanı için bir isim belirleyiniz:";
		read isim;
		export isim;
		touch ${isim}_base;
		baseconf=${isim}_base;
		export baseconf;
		echo isim=$isim >>$baseconf;
		./insbase.sh;;

	[hH])
		echo "Hiçbir şey yapılmadı.";
		exit;;
	*)
		echo "Lütfen Evet için E, Hayır için H harflerini kullanınız.";
		evethayir;;
esac
}
evethayir

