#!/bin/bash
# Author : olivertzeng, cybercussion (https://unix.stackexchange.com/questions/46081/identifying-the-system-package-manager)
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
		wget https://filetransfer.io/data-package/aMke4oMp/download
		unzip Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(1080p\).zip
		cd Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(1080p\)/User/Load/Textures
		cp -r -f 0004000000053F00 0004000000054000 /home/$USER/.var/app/org.libretro.RetroArch/config/retroarch/saves/User/Load/Textures
		cd ../../../..
		rm Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(1080p\).zip INSTRUCTIONS.url
		rm Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(1080p\)

	else 
		wget https://filetransfer.io/data-package/xTPR2X4d/download
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
		wget https://filetransfer.io/data-package/YhmTPKhU/download
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
		wget https://filetransfer.io/data-package/LotlZCVT/download
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
		wget https://filetransfer.io/data-package/GSo5kgaY/download
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
		wget https://filetransfer.io/data-package/65puhxut/download
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
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alert 'Installation Complete'
xdg-open https://www.patreon.com/henrikomagnifico
exit
