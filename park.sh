#!/bin/bash
while :
do
    filename=`date +"park_%y%m%d.log"`
    wget http://hslu.ximit.ch/ > /dev/null 2>&1
    cat index.html | grep "Freie Parkpl" | sed 's|<[^>]*>||g' | sed 's| HSLU T&amp;A Horw:Freie Parkpl&auml;tze: ||g' | sed 's|iPhone &amp; Co: Mobile App||g' | sed 's|(|(60*|' | sed 's|:|+|' | sed 's|)|);|' >> $filename
    rm index.html
    tail -1 $filename
    sleep 60
done
