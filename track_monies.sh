#!/bin/sh

curl -s "https://blockchain.info/q/getreceivedbyaddress/\
13AM4VW2dhxYgXeQepoHkHSQuy6NgaEb94|\
12t9YDPgwueZ9NyMgw519p7AA8isjr6SMw|\
115p7UMMngoj1pMvkpHijcRdfJNXj6LrLn" |
python -c 'import sys; r = sys.stdin.readline(); print round(float(r) / 100000000, 2),"BTC";'
