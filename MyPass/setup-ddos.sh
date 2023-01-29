rm -rf demo
if [ -d demo ]; then
	rm -r demo
else
	echo ""
fi
git clone https://github.com/cyweb/hammer
if [ -d hammer ]; then
	echo ""
else
	git clone https://github.com/cyweb/hammer
fi
mv hammer demo
if [ -d hammer ]; then
	mv -f hammer demo
else
	echo ""
fi
touch demo/installed
rm setup-ddos.sh
if [ -f setup-ddos.sh ]; then
	rm setup-ddos.sh
else
	echo ""
fi
