#!/bin/bash
for i in park_*.log
do
    i=(${i//.log/ })
    echo $i;
    echo "p = [" > matlab/$i.m
    cat $i.log >> matlab/$i.m
    echo "];" >> matlab/$i.m
    echo "plot(p(:,2)./60, p(:,1));" >> matlab/$i.m
done;
