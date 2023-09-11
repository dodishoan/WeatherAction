#!/bin/bash
set -eux

#CITY=Jiangmen
CITY: ${{ secrets.CITY }}
LANGUAGE="zh-CN"
UNIT=m
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"

#curl \
#  -H "Accept-Language: $LANGUAGE" \
#  -H "User-Agent: $UA" \
#  -o result.html \
#  wttr.in/$CITY?format=4\&$UNIT
#curl \
#  -H "Accept-Language: $LANGUAGE" \
#  -o result.html \
#  wttr.in/$CITY?format=4\&$UNIT
#curl -o result.html -H "Accept-Language: $LANGUAGE" wttr.in/$CITY?format=4&m

#curl -o result.html -H "Accept-Language: zh-CN" 'wttr.in/Jiangmen?format=4&m'
#curl -o result.png -H "Accept-Language: zh-CN" https://wttr.in/Jiangmen.png?M

curl -o result.html -H "Accept-Language: zh-CN" 'wttr.in/$CITY?format=4&m'
curl -o result.png -H "Accept-Language: zh-CN" https://wttr.in/$CITY.png?M
