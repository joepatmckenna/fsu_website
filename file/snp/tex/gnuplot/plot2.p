reset

b=1.

set ls 1 lt 1 lc rgb 'red' lw 1
set ls 2 lt 1 lc rgb 'blue' lw 1

unset key
unset tics 
set grid 

set term pngcairo size 1*(640),1*(640) enhanced font 'Verdana,12'
set output 'fig2.png'

set multiplot

set size square 0.5,0.5
set origin 0,0.5
set xlabel ' '
set ylabel ' '
set label 1 'c=0' at graph 0.05, graph .95
set object 1 circle center 0, 0 size .01 fc rgb "gray"
set object 2 circle center 0, 0 size b fc rgb "black"
plot [-1.5:1.5] [-1.5:1.5] \
'fig2data/UL1.dat' using 2:3 every ::0::50 with lines ls 1, \
'fig2data/UL2.dat' using 2:3 every ::0::50 with lines ls 1, \
'fig2data/UL3.dat' using 2:3 every ::0::1100 with lines ls 2, \
'fig2data/UL4.dat' using 2:3 every ::0::1100 with lines ls 2

set size square 0.5,0.5
set origin 0.5,0.5
set xlabel ' '
set ylabel ' '
unset label 1
set label 2 'c=b^2/8' at graph 0.05, graph .95
unset object 1
unset object 2
set object 3 circle center 0, 0 size .01 fc rgb "black"
set object 4 circle center 0, 0 size b*(sqrt(2)-1)/(2*sqrt(2)) fc rgb "black"
set object 5 circle center 0, 0 size b*(sqrt(2)+1)/(2*sqrt(2)) fc rgb "black"
plot [-1.5:1.5] [-1.5:1.5] \
'fig2data/UR1.dat' using 2:3 every ::0::50 with lines ls 1, \
'fig2data/UR2.dat' using 2:3 every ::0::50 with lines ls 1, \
'fig2data/UR3.dat' using 2:3 every ::0::375 with lines ls 2, \
'fig2data/UR4.dat' using 2:3 every ::0::375 with lines ls 2, \
'fig2data/UR5.dat' using 2:3 every ::0::400 with lines ls 1, \
'fig2data/UR6.dat' using 2:3 every ::0::400 with lines ls 1

set size square 0.5,0.5
set origin 0,0
set xlabel 'x'
set ylabel 'y'
unset label 2
set label 3 'c=b^2/4' at graph 0.05, graph .95
unset object 4
unset object 5
set object 6 circle center 0, 0 size b/2. fc rgb "gray"
plot [-1.5:1.5] [-1.5:1.5] \
'fig2data/LL1.dat' using 2:3 every ::0::180 with lines ls 1, \
'fig2data/LL2.dat' using 2:3 every ::0::180 with lines ls 1, \
'fig2data/LL3.dat' using 2:3 every ::0::400 with lines ls 1, \
'fig2data/LL4.dat' using 2:3 every ::0::400 with lines ls 1

set size square 0.5,0.5
set origin 0.5,0
set xlabel ' '
set ylabel ' '
unset label 3
set label 4 'c=3b^2/8' at graph 0.05, graph .95
unset object 6
plot [-1.5:1.5] [-1.5:1.5] \
'fig2data/LR1.dat' using 2:3 every ::0::200 with lines ls 1, \
'fig2data/LR2.dat' using 2:3 every ::0::200 with lines ls 1

unset multiplot