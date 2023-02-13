#!/bin/bash


echo $anayol
echo "##################################################"
echo "######### Dikdörtgen Veritabanı Kurulumu #########"
echo "##################################################"
echo ""
echo "Lütfen 0 dan büyük bir sütün sayısı değeri giriniz:"


function yazdir
{
sutun_sayisi=$sutun
while [ $sutun_sayisi -gt 0 ]
do
echo -n "#  "
echo -n st$sutun_sayisi
echo -n  "   #"
let sutun_sayisi=sutun_sayisi-1
done
echo " "
sutun_ayraci=$sutun
while [ $sutun_ayraci -gt 0 ]
do
echo -n "##########"
let sutun_ayraci=sutun_ayraci-1
done
#echo " "
sutun_ayraci2=$sutun
for i in 1 2 3 4 5
do
sutun_ayraci2=$sutun
echo ""
while [ $sutun_ayraci2 -gt 0 ]
do
echo -n "#        #"
let sutun_ayraci2=sutun_ayraci2-1
done
done
}



function sutunsay
{
read sutun
if [[ $sutun == ?(-)+([0-9]) ]]; 
then
	echo "Sütunlar Oluşturuldu"
	echo sutun=$sutun >> $baseconf
	yazdir
else
	echo "error: Lütfen bir tamsayı değeri giriniz."
	sutunsay
fi
}
sutunsay
