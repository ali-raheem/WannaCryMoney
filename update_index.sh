#!/bin/sh

sed template.htm -e "s/__TOTALBTC/$(bash track_monies.sh)/g" > temp1
sed temp1 -e "s/__DATETIME/$(date)/" > index.htm
markdown  Wannacrypt0r-FACTSHEET.md > temp2
cat temp2 >> index.htm
echo "</body></html>" >> index.htm
rm temp1
