#!/bin/sh

sed template.htm -e "s/__TOTALBTC/$(bash track_monies.sh)/" > index.htm
