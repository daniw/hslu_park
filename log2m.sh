#!/bin/bash
for i in park_*.log
do
    i=(${i//.log/ })
    echo $i;
    echo "p = [" > matlab/$i.m
    cat $i.log >> matlab/$i.m
    echo "];" >> matlab/$i.m
    echo "plot(p(:,2)./60, p(:,1), 'LineWidth', 2);" >> matlab/$i.m
    echo "axis([0 24 0 400]);" >> matlab/$i.m
    echo "xlabel('Daytime');" >> matlab/$i.m
    echo "ylabel('Free parking spaces');" >> matlab/$i.m
    echo "title('HSLU parking space');" >> matlab/$i.m
    echo "grid on;" >> matlab/$i.m
    echo "grid minor;" >> matlab/$i.m
done;
