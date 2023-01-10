#!/bin/bash
white="$(printf '\033[37m')" 
colorz="$(printf '\033[36m')"
red="$(printf '\033[31m')"
clear
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
