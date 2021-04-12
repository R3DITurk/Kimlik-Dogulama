#!/bin/bash
random="R3DI"$RANDOM"Turk"
banner(){
clear

read -p $'\e[31m[\e[32m!\e[31m]\e[37mAdı : ' adi
echo ""
read -p $'\e[31m[\e[32m!\e[31m]\e[37mSoyadı : ' soyadi
echo ""
read -p $'\e[31m[\e[32m!\e[31m]\e[37mDoğum Yılı : ' yili
echo ""
read -p $'\e[31m[\e[32m!\e[31m]\e[37mTc Kimlik Numarası : ' tc

}
	if [[ -e "Lib/ok.txt" ]]; then

		banner
		cd Lib/ && rm -rf kayit.php &&
	echo "
	<?php
	\$adyaman = '$adi';
	\$soyad = '$soyadi';
	\$yil = '$yili';
	\$tcno = '$tc';
	 ?>" >> kayit.php 
	php -S 127.0.0.1:3333 > /dev/null 2>&1 &
	sleep 5
	termux-open-url http://localhost:3333

	else
		apt-get install php -y 
		cd Lib &&
		echo "R3DITurk Tarafından kodlandı." >> ok.txt
		cd .. && bash tst.sh
	fi
