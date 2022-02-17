#!/bin/bash
# Author : olivertzeng
packagesNeeded='unzip'
if [ -x "$(command -v apk)" ];       then sudo apk add --no-cache $packagesNeeded
elif [ -x "$(command -v apt-fast)" ]; then sudo apt-fast install -yy -f $packagesNeeded
elif [ -x "$(command -v apt-get)" ]; then sudo apt-get install -yy -f $packagesNeeded
elif [ -x "$(command -v dnf)" ];     then sudo dnf install $packagesNeeded
elif [ -x "$(command -v zypper)" ];  then sudo zypper install $packagesNeeded
else echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: $packagesNeeded">&2; fi
echo 'HD and 4K packs made by Henriko, remember to visite his Patreon! https://www.patreon.com/henrikomagnifico'
echo 'What do you want to install?'
echo '1, Super Mario 3D Land'
echo '2, Super Mario Sunshine'
echo "3, Luigi's Mansion"
read -p 'Install: ' ans
echo 'HD or 4K'
echo '4, HD'
echo '5, 4K'
read -p 'Install: ' ans1
if [ ans == 1 ]
then 
	if [ ans1 == 4 ]
	then 
		wget https://download1980.mediafire.com/770xf72r4pfg/ebvc1d5op611www/Super+Mario+3D+Land+HD+1.1.0+%281080p%29.zip
		unzip Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(1080p\).zip
		cd Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(1080p\)/User/Load/Textures
		cp -r -f 0004000000053F00 0004000000054000 /home/$USER/.var/app/org.libretro.RetroArch/config/retroarch/saves/User/Load/Textures
		cd ../../../..
		rm Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(1080p\).zip INSTRUCTIONS.url
		rm Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(1080p\)

	else 
		wget https://download1336.mediafire.com/qvc5qq8pjmag/iiftec543g9pbs0/Super+Mario+3D+Land+HD+1.1.0+%284K%29.zip
		unzip Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(4K\).zip 
		cd Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(4K\)/User/Load/Textures
		cp -r -f 0004000000053F00 0004000000054000 /home/$USER/.var/app/org.libretro.RetroArch/config/retroarch/saves/User/Load/Textures
		cd ../../../..
		rm Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(4K\).zip INSTRUCTIONS.url
		rm -r Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(4k\)
	fi
elif [ ans == 2 ]
then
	if [ ans1 == 4 ]
	then 
		wget https://download1646.mediafire.com/9r01jgz7tr5g/b5zmfcrhf56y4i1/Super+Mario+Sunshine+4K+1.0.1+%281080p%29.zip
		unzip Super\ Mario\ Sunshine\ 4K\ 1.0.1\ \(1080p\).zip
		cd Super\ Mario\ Sunshine\ 4K\ 1.0.1\ \(1080p\)/User/Load/Textures
		cp -r -f GMS /home/$USER/.var/app/org.libretro.RetroArch/config/retroarch/saves/User/Load/Textures
		cd ../..
		cd GameSettings
		cp -f GMSE01.ini GMSP01.ini
		cd ../../..
		rm -r -f Super\ Mario\ Sunshine\ 4K\ 1.0.1\ \(1080p\)
		rm -f INSTRUCTIONS.url Super\ Mario\ Sunshine\ 4K\ 1.0.1\ \(1080p\).zip
		
	else 
		wget https://download1521.mediafire.com/4me4y15m9jlg/u6iteahm7n79uew/Super+Mario+Sunshine+4K+1.0.1+%284K%29.zip
		unzip Super\ Mario\ Sunshine\ 4K\ 1.0.1\ \(4K\).zip 
		cd Super\ Mario\ Sunshine\ 4K\ 1.0.1\ \(4K\)/User/Load/Textures
		cp -r -f GMS /home/$USER/.var/app/org.libretro.RetroArch/config/retroarch/saves/User/Load/Textures
		cd ../../GameSettings
		cp -f GMSE01.ini GMSP01.ini
		cd ../../..
		rm -r -f Super\ Mario\ Sunshine\ 4K\ 1.0.1\ \(4K\)
		rm -f INSTRUCTIONS.url Super\ Mario\ Sunshine\ 4K\ 1.0.1\ \(4K\).zip
	fi
else
	if [ ans1 == 4 ]
	then
		wget https://download1522.mediafire.com/vxsilwpt5skg/48kjqnefcs1okwv/Luigi%5C%27s+Mansion+4K+Texture+Pack+1.0.3+%281080p%29.zip
		unzip Luigi\'s\ Mansion\ 4K\ Texture\ Pack\ 1.0.3\ \(1080p\).zip
		cd Luigi\'s\ Mansion\ 4K\ Texture\ Pack\ 1.0.3\ \(1080p\)/User/Load/Textures
		cp -r -f GLM /home/$USER/.var/app/org.libretro.RetroArch/config/retroarch/saves/User/Load/Textures
		cd ..
		cp -r -f ShaderPresets /home/$USER/.var/app/org.libretro.RetroArch/config/retroarch/saves/User/Load
		cd ../Gamesettings
		cp -f GMSE01.ini GMSP01.ini
		cd ../../..
		rm -r -f Luigi\'s\ Mansion\ 4K\ Texture\ Pack\ 1.0.3\ \(1080p\)
		rm -f Luigi\'s\ Mansion\ 4K\ Texture\ Pack\ 1.0.3\ \(1080p\).zip
	else
		wget https://download1492.mediafire.com/eqofpb38g45g/4wbdl1yk1639iyo/Luigi%5C%27s+Mansion+4K+Texture+Pack+1.0.3+%284K%29.zip
		unzip Luigi\'s\ Mansion\ 4K\ Texture\ Pack\ 1.0.3\ \(4K\).zip
		cd Luigi\'s\ Mansion\ 4K\ Texture\ Pack\ 1.0.3\ \(4K\)/User/Load/Textures
		cp -r -f GLM /home/$USER/.var/app/org.libretro.RetroArch/config/retroarch/saves/User/Load/Textures
		cd ..
		cp -r -f ShaderPresets /home/$USER/.var/app/org.libretro.RetroArch/config/retroarch/saves/User/Load
		cd ../Gamesettings
		cp -f GMSE01.ini GMSP01.ini
		cd ../../..
		rm -r -f Luigi\'s\ Mansion\ 4K\ Texture\ Pack\ 1.0.3\ \(4K\)
		rm -f Luigi\'s\ Mansion\ 4K\ Texture\ Pack\ 1.0.3\ \(4K\).zip 	
	fi
fi
echo 'Installation Complete'
alert 'Installation Complete'
xdg-open https://www.patreon.com/henrikomagnifico
exit
