#!/bin/sh

sed template.htm -e "s/__TOTALBTC/$(bash track_monies.sh)/g" > temp1
sed temp1 -e "s/__DATETIME/$(date)/" > index.htm
echo $(markdown *.md)/ >> index.htm
echo "</body></html>" >> index.htm
rm temp1
