reset 

set ls 1 lt 1 lc 1 lw 2
set ls 2 lt 1 lc 2 lw 2
set ls 3 lt 1 lc 3 lw 2
set ls 4 lt 1 lc 4 lw 2
set ls 5 lt 1 lc 5 lw 2	
set ls 100 lt 1 lc rgb 'black' lw 2

set term pngcairo size 1*(640),1*(480) enhanced font 'Verdana,12'
set output 'fig1.png'

set key opaque
set size 1,1
set origin 0,0
set xlabel 'r'
set ylabel 'dr/dt'
set xtics( \
'' (1.-sqrt(3./2.))/2.,\
'r_0=0' 0,\
'r_-' (1.-sqrt(1./2.))/2.,\
'r_{snp}' 1./2.,\
'r_+' (1.+sqrt(1./2.))/2.,\
'b' 1, '' (1.+sqrt(3./2.))/2.)
set ytics(0)
set grid
dc=.125
plot [(1.-sqrt(3./2.))/2.-.01:(1.+sqrt(3./2.))/2.+.01] [-.03:.05] \
0 ls 100 notitle, \
for [c=-1:3] x*(x*(1-x)-c*dc) ls c+2 title sprintf("c=%.3fb^2",c/8.)