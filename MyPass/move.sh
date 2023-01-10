#!/bin/bash
white="$(printf '\033[37m')" 
colorz="$(printf '\033[36m')"
red="$(printf '\033[31m')"
clear
main_package() {
	if [[ $(command -v wget) && $(command -v nmap) && $(command -v tor) && $(command -v python) && $(command -v python2) && $(command -v curl) && $(command -v clang) && $(command -v dnsutils) && $(command -v php) ]]; then
		echo -e "Installed."
	else
		pkgs=(wget nmap tor python python2 curl clang dnsutils php)
		for pkg in "${pkgs[@]}"; do
			type -p "$pkg" &>/dev/null || {
				echo -e "Installing package"
				if [[ $(command -v pkg) ]]; then
					pkg install "$pkg" -y
				elif [[ $(command -v apt) ]]; then
					sudo apt install "$pkg" -y
				elif [[ $(command -v apt-get) ]]; then
					sudo apt-get install "$pkg" -y
				elif [[ $(command -v pacman) ]]; then
					sudo pacman -S "$pkg" --noconfirm
				elif [[ $(command -v dnf) ]]; then
					sudo dnf -y install "$pkg"
				elif [[ $(command -v yum) ]]; then
					sudo yum -y install "$pkg"
				else
					echo -e "Install packages manually."
					{ reset_color; exit 1; }
				fi
			}
		done
	fi
}
banners() {
	clear
	echo -e "${white} +-------------------------------------------------+"
	echo -e "${white} |${colorz} ██╗    ██╗██╗  ██╗██████╗      ██████╗ ██████╗ ${white} |"
	echo -e "${white} |${colorz} ██║    ██║██║  ██║██╔══██╗    ██╔═████╗╚════██╗${white} |"
	echo -e "${white} |${colorz} ██║ █╗ ██║███████║██████╔╝    ██║██╔██║ █████╔╝${white} |"
	echo -e "${white} |${colorz} ██║███╗██║╚════██║██╔══██╗    ████╔╝██║██╔═══╝ ${white} |"
	echo -e "${white} |${colorz} ╚███╔███╔╝     ██║██████╔╝    ╚██████╔╝███████╗${white} |"
	echo -e "${white} |${colorz}  ╚══╝╚══╝      ╚═╝╚═════╝      ╚═════╝ ╚══════╝${white} |"
	echo -e "${white} +-----------------${red} GH05T-HUNTER5 ${white}-----------------+"
}
basic_installation() {	
	rm -rf sqlmap >/dev/null 2>&1
	rm -rf kali-anonsurf >/dev/null 2>&1
	rm -rf hammer >/dev/null 2>&1
	if [ -d sqlmap ]; then
		rm -r sqlmap
	fi
	if [ -d kali-anonsurf ]; then
		rm -r kali-anonsurf
	fi
	if [ -d hammer ]; then
		rm -r hammer
	fi
	clear
	banners
	echo " [++] Please Wait..."
        sleep 2
        main_package
	git clone https://github.com/cyweb/hammer >/dev/null 2>&1
	git clone https://github.com/sqlmapproject/sqlmap >/dev/null 2>&1
	git clone https://github.com/Und3rf10w/kali-anonsurf >/dev/null 2>&1
	if [ -d sqlmap ]; then
		echo ""
	else
		git clone https://github.com/sqlmapproject/sqlmap
	fi
	if [ -d kali-anonsurf ]; then
		echo ""
	else
		git clone https://github.com/Und3rf10w/kali-anonsurf
	fi
	if [ -d hammer ]; then
		echo ""
	else
		git clone https://github.com/cyweb/hammer
	fi
	clear
}
basic_installation
touch installed.txt
clear
if [ -f installed.txt ]; then
echo ""
else
touch installed.txt
fi
rm move.sh >/dev/null 2>&1
if [ -f move.sh ]; then
rm move.sh
fi
clear
