#!/bin/bash
# Author : olivertzeng
pip install gdown
sudo apt-get install unzip -yy 
echo 'HD and 4K packs made by Henriko, remember to visite is Patreon! https://www.patreon.com/henrikomagnifico'
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
		gdown https://drive.google.com/u/0/uc?export=download&confirm=28rh&id=1tVQb66_B2x2IuTTo4SNpjm9nwpbWCGzw
		unzip Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(1080p\).zip
		cd Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(1080p\)/User/Load/Textures
		cp -r -f 0004000000053F00 0004000000054000 /home/$USER/.var/app/org.libretro.RetroArch/config/retroarch/saves/User/Load/Textures
		cd ../../../..
		rm Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(1080p\).zip INSTRUCTIONS.url
		rm Super\ Mario\ 3D\ Land\ HD\ 1.1.0\ \(1080p\)

	else 
		gdown https://drive.google.com/u/0/uc?export=download&confirm=7KJe&id=1MvXNBY_10P60utCPyfZIjxS7bLKWkBet
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
		gdown https://drive.google.com/u/0/uc?export=download&confirm=u1wZ&id=12Zn1hjcJ6lfITHPwLRCYnTUGJpgUCPq3
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
		gdown https://drive.google.com/u/0/uc?export=download&confirm=85Co&id=11xpGaJa494agoSHTofAKu7LVzTWd4kfs
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
		gdown https://drive.google.com/u/0/uc?export=download&confirm=-XSc&id=1YsLVBjMkwawzkStu4I0T6HUnT57IJibD
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
		gdown https://drive.google.com/u/0/uc?export=download&confirm=qOIL&id=1VOKSLQ52igkdFC8EPP2HT63f20MuD1iD
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
