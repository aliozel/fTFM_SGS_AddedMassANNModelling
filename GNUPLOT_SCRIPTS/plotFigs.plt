#!/usr/local/Cellar/gnuplot/5.4.4/bin/gnuplot
#
#    
#    	G N U P L O T
#    	Version 5.4 patchlevel 4    last modified 2022-07-10 
#    
#    	Copyright (C) 1986-1993, 1998, 2004, 2007-2022
#    	Thomas Williams, Colin Kelley and many others
#    
#    	gnuplot home:     http://www.gnuplot.info
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
# set terminal qt 0 font "Sans,9"
# set output
unset clip points
set clip one
unset clip two
unset clip radial
set errorbars front 1.000000 
set border 31 front lt black linewidth 1.000 dashtype solid
set zdata 
set ydata 
set xdata 
set y2data 
set x2data 
set boxwidth
set boxdepth 0
set style fill  empty border
set style rectangle back fc  bgnd fillstyle   solid 1.00 border lt -1
set style circle radius graph 0.02 
set style ellipse size graph 0.05, 0.03 angle 0 units xy
set dummy x, y
set format x "% h" 
set format y "% h" 
set format x2 "% h" 
set format y2 "% h" 
set format z "% h" 
set format cb "% h" 
set format r "% h" 
set ttics format "% h"
set timefmt "%d/%m/%y,%H:%M"
set angles radians
set tics back
unset grid
unset raxis
set theta counterclockwise right
set style parallel front  lt black linewidth 2.000 dashtype solid
set key notitle
set key fixed right top vertical Right noreverse enhanced autotitle nobox
set key noinvert samplen 4 spacing 1 width 0 height 0 
set key maxcolumns 0 maxrows 0
set key noopaque
unset label
unset arrow
unset style line
unset style arrow
set style histogram clustered gap 2 title textcolor lt -1
unset object
unset walls
set style textbox  transparent margins  1.0,  1.0 border  lt -1 linewidth  1.0
set offsets 0, 0, 0, 0
set pointsize 1
set pointintervalbox 1
set encoding default
unset polar
unset parametric
unset spiderplot
unset decimalsign
unset micro
unset minussign
set view 60, 30, 1, 1
set view azimuth 0
set rgbmax 255
set samples 100, 100
set isosamples 10, 10
set surface implicit
set surface
unset contour
set cntrlabel  format '%8.3g' font '' start 5 interval 20
set mapping cartesian
set datafile separator whitespace
set datafile nocolumnheaders
unset hidden3d
set cntrparam order 4
set cntrparam linear
set cntrparam levels 5
set cntrparam levels auto
set cntrparam firstlinetype 0 unsorted
set cntrparam points 5
set size ratio 0 1,1
set origin 0,0
set style data points
set style function lines
unset xzeroaxis
unset yzeroaxis
unset zzeroaxis
unset x2zeroaxis
unset y2zeroaxis
set xyplane relative 0.5
set tics scale  1, 0.5, 1, 1, 1
set mxtics default
set mytics default
set mztics default
set mx2tics default
set my2tics default
set mcbtics default
set mrtics default
set nomttics
set xtics border in scale 1,0.5 mirror norotate  autojustify
set xtics  norangelimit autofreq 
set ytics border in scale 1,0.5 mirror norotate  autojustify
set ytics  norangelimit autofreq 
set ztics border in scale 1,0.5 nomirror norotate  autojustify
set ztics  norangelimit autofreq 
unset x2tics
unset y2tics
set cbtics border in scale 1,0.5 mirror norotate  autojustify
set cbtics  norangelimit autofreq 
set rtics axis in scale 1,0.5 nomirror norotate  autojustify
set rtics  norangelimit autofreq 
unset ttics
set title "" 
set title  font "" textcolor lt -1 norotate
set timestamp bottom 
set timestamp "" 
set timestamp  font "" textcolor lt -1 norotate
set trange [ * : * ] noreverse nowriteback
set urange [ * : * ] noreverse nowriteback
set vrange [ * : * ] noreverse nowriteback
set xlabel "" 
set xlabel  font "" textcolor lt -1 norotate
set x2label "" 
set x2label  font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse nowriteback
set x2range [ * : * ] noreverse nowriteback
set ylabel "" 
set ylabel  font "" textcolor lt -1 rotate
set y2label "" 
set y2label  font "" textcolor lt -1 rotate
set yrange [ * : * ] noreverse nowriteback
set y2range [ * : * ] noreverse nowriteback
set zlabel "" 
set zlabel  font "" textcolor lt -1 norotate
set zrange [ * : * ] noreverse nowriteback
set cblabel "" 
set cblabel  font "" textcolor lt -1 rotate
set cbrange [ * : * ] noreverse nowriteback
set rlabel "" 
set rlabel  font "" textcolor lt -1 norotate
set rrange [ * : * ] noreverse nowriteback
unset logscale
unset jitter
set zero 1e-08
set lmargin  -1
set bmargin  -1
set rmargin  -1
set tmargin  -1
set locale "C"
set pm3d explicit at s
set pm3d scansautomatic
set pm3d interpolate 1,1 flush begin noftriangles noborder corners2color mean
set pm3d clip z 
set pm3d nolighting
set palette positive nops_allcF maxcolors 0 gamma 1.5 color model RGB 
set palette rgbformulae 7, 5, 15
set colorbox default
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
set style boxplot candles range  1.50 outliers pt 7 separation 1 labels auto unsorted
set loadpath 
set fontpath
set psdir
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
#
set terminal postscript enhanced color "Helvetica" 24  fontscale 1.0
#
# Vars
vlw = 4
#
#
#
#
# # # # # # # # # # # # # # # # Figure-4 # # # # # # # # # # # # # # # # 
#
set xlabel "x1"
set ylabel "y1"
set yrange [-0.8:0.2]
set ytics 0.2
f1(x)=a1*x+b1
fit f1(x) "../ReX6.3_FilX0.014/inputPrediction_PHI=0.7_Uslip=0.1.txt" u 1:2 via a1,b1
f2(x)=a2*x+b2
fit f2(x) "../ReX6.3_FilX0.014/inputPrediction_PHI=0.7_Uslip=0.2.txt" u 1:2 via a2,b2
f3(x)=a3*x+b3
fit f3(x) "../ReX6.3_FilX0.014/inputPrediction_PHI=0.7_Uslip=0.3.txt" u 1:2 via a3,b3
f4(x)=a4*x+b4
fit f4(x) "../ReX6.3_FilX0.014/inputPrediction_PHI=0.7_Uslip=0.4.txt" u 1:2 via a4,b4
set key left bottom reverse spacing 1.25
set output "../FIGURES/gradPressPhiReX6.3_FilX0.014Linear.eps"
plot \
"../ReX6.3_FilX0.014/inputPrediction_PHI=0.7_Uslip=0.1.txt" u 1:2 w l lw vlw lc 1 t "u01", f1(x) w l lw vlw lc 1 dashtype '-' t "uslip01Linear", \
"../ReX6.3_FilX0.014/inputPrediction_PHI=0.7_Uslip=0.2.txt" u 1:2 w l lw vlw lc 2 t "u02", f2(x) w l lw vlw lc 2 dashtype '-' t "uslip02Linear", \
"../ReX6.3_FilX0.014/inputPrediction_PHI=0.7_Uslip=0.3.txt" u 1:2 w l lw vlw lc 3 t "u03", f3(x) w l lw vlw lc 3 dashtype '-' t "uslip03Linear", \
"../ReX6.3_FilX0.014/inputPrediction_PHI=0.7_Uslip=0.4.txt" u 1:2 w l lw vlw lc 4 t "u04", f4(x) w l lw vlw lc 4 dashtype '-' t "uslip04Linear"
#
#
#
#
#
# # # # # # # # # # # # # # # # Figure-6a & 6b # # # # # # # # # # # # # # # # 
#
reset
set xlabel "x1"
set ylabel "y1"
set xrange[0:1]
set yrange [1:6]
set ytics 1
set key right top spacing 1.5
set output "../FIGURES/factorPhiSReX6.3UstarX0.1FilXs.eps"
plot \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.014.dat" u 1:10 w lp lw vlw lc 1 t "Delta01", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.0544.dat" u 1:10 w lp lw vlw lc 2 t "Delta02", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.091.dat" u 1:10 w lp lw vlw lc 3 t "Delta03", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.28.dat" u 1:10 w lp lw vlw lc 4 t "Delta04", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX1.19.dat" u 1:10 w lp lw vlw lc 5 t "Delta05"
#
#
set output "../FIGURES/factorPhiSReX6.3UstarXsFilX0.014.eps"
plot \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.014.dat" u 1:10 w lp lw vlw lc 1 t "Ustar01", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.2FilX0.014.dat" u 1:10 w lp lw vlw lc 2 t "Ustar02", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.3FilX0.014.dat" u 1:10 w lp lw vlw lc 3 t "Ustar03", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.4FilX0.014.dat" u 1:10 w lp lw vlw lc 4 t "Ustar04"
#
#
#
#
#
#
# # # # # # # # # # # # # # # # Figure-7a & 7b # # # # # # # # # # # # # # # # 
#
reset
set xlabel "x1"
set ylabel "y1"
set xrange[0:1]
set yrange [1:6]
set ytics 1
set key right top spacing 1.5
set output "../FIGURES/factorPhiSReXsUstarX0.1FilX0.014.eps"
plot \
"../POSTPROCESSED_DATA/pressGradFactorReX3.12UstarX0.1FilX0.014.dat" u 1:10 w lp lw vlw lc 1 t "Rep01", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.014.dat" u 1:10 w lp lw vlw lc 2 t "Rep02", \
"../POSTPROCESSED_DATA/pressGradFactorReX14.77UstarX0.1FilX0.014.dat" u 1:10 w lp lw vlw lc 3 t "Rep03"
#
set output "../FIGURES/factorPhiSReXsUstarXsFilX0.014.eps"
plot \
"../POSTPROCESSED_DATA/pressGradFactorReX3.12UstarX0.2FilX0.014.dat" u 1:10 w lp lw vlw lc 1 t "Rep01Ustar02", \
"../POSTPROCESSED_DATA/pressGradFactorReX3.12UstarX0.4FilX0.014.dat" u 1:10 w lp lw vlw lc 1 t "Rep01Ustar04", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.2FilX0.014.dat" u 1:10 w lp lw vlw lc 2 t "Rep02Ustar02", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.4FilX0.014.dat" u 1:10 w lp lw vlw lc 2 t "Rep02Ustar04", \
"../POSTPROCESSED_DATA/pressGradFactorReX14.77UstarX0.2FilX0.014.dat" u 1:10 w lp lw vlw lc 3 t "Rep03Ustar02", \
"../POSTPROCESSED_DATA/pressGradFactorReX14.77UstarX0.4FilX0.014.dat" u 1:10 w lp lw vlw lc 3 t "Rep03Ustar04"
#
#
#
#
#
#
# # # # # # # # # # # # # # # # Figure-8a & 8b # # # # # # # # # # # # # # # # 
#
reset
set xlabel "x1"
set ylabel "y1"
set key right bottom spacing 1.5
set xrange[0:1]
set yrange[0:*]
set ytics auto
#
set output "../FIGURES/factorReX6.3UstarX0.1FilXs.eps"
plot \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.014.dat" u 1:($11*$4) w lp lw vlw lc 1 t "Delta01", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.0544.dat" u 1:($11*$4) w lp lw vlw lc 2 t "Delta02", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.091.dat" u 1:($11*$4) w lp lw vlw lc 3 t "Delta03", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.28.dat" u 1:($11*$4) w lp lw vlw lc 4 t "Delta04", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX1.19.dat" u 1:($11*$4) w lp lw vlw lc 5 t "Delta05", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.014.dat" u 1:4 w lp lw vlw lc -1 t "Wilde"  
#
set output "../FIGURES/factorReX6.3UstarXsFilX0.014.eps"
plot \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.014.dat" u 1:($11*$4) w lp lw vlw lc 1 t "Ustar01", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.2FilX0.014.dat" u 1:($11*$4) w lp lw vlw lc 2 t "Ustar02", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.3FilX0.014.dat" u 1:($11*$4) w lp lw vlw lc 3 t "Ustar03", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.4FilX0.014.dat" u 1:($11*$4) w lp lw vlw lc 4 t "Ustar04", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.014.dat" u 1:4 w lp lw vlw lc -1 t "Wilde" 
#
#
#
#
#
#
# # # # # # # # # # # # # # # # Figure-9a & 9b # # # # # # # # # # # # # # # # 
#
reset   
set xlabel "x1"
set ylabel "y1"
set key right bottom spacing 1.5
set xrange[0:1]
set yrange[0:*]
set ytics auto
set output "../FIGURES/factorReXsUstarX0.1FilX0.014.eps"
plot \
"../POSTPROCESSED_DATA/pressGradFactorReX3.12UstarX0.1FilX0.014.dat" u 1:($11*$4) w lp lw vlw lc 1 t "Rep01", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.014.dat" u 1:($11*$4) w lp lw vlw lc 2 t "Rep02", \
"../POSTPROCESSED_DATA/pressGradFactorReX14.77UstarX0.1FilX0.014.dat" u 1:($11*$4) w lp lw vlw lc 3 t "Rep03", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.1FilX0.014.dat" u 1:4 w lp lw vlw lc -1 t "Wilde" 
#
set output "../FIGURES/factorReXsUstarX0.4FilX0.014.eps"
plot \
"../POSTPROCESSED_DATA/pressGradFactorReX3.12UstarX0.4FilX0.014.dat" u 1:($11*$4) w lp lw vlw lc 1 t "Rep01Ustar04", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.4FilX0.014.dat" u 1:($11*$4) w lp lw vlw lc 2 t "Rep02Ustar04", \
"../POSTPROCESSED_DATA/pressGradFactorReX14.77UstarX0.4FilX0.014.dat" u 1:($11*$4) w lp lw vlw lc 3 t "Rep03Ustar04", \
"../POSTPROCESSED_DATA/pressGradFactorReX6.3UstarX0.4FilX0.014.dat" u 1:4 w lp lw vlw lc -1 t "Wilde" 
#
#
#
#
#
#
# # # # # # # # # # # # # # # # Figure-10a & 10b # # # # # # # # # # # # # # # # 
#
reset
set xlabel "x1"
set ylabel "y1"
set key left top reverse spacing 1.5
set xrange[0:1]
set yrange[0:20]
set ytics auto
#
set output "../FIGURES/constCaReX6.3UstarXsFilX0.014.eps"
plot \
"../POSTPROCESSED_DATA/constCaReX6.3UstarX0.1FilX0.014.dat" u 1:4 w lp lw vlw lc 1 t "Ustar01", \
"../POSTPROCESSED_DATA/constCaReX6.3UstarX0.2FilX0.014.dat" u 1:4 w lp lw vlw lc 2 t "Ustar02", \
"../POSTPROCESSED_DATA/constCaReX6.3UstarX0.3FilX0.014.dat" u 1:4 w lp lw vlw lc 3 t "Ustar03", \
"../POSTPROCESSED_DATA/constCaReX6.3UstarX0.4FilX0.014.dat" u 1:4 w lp lw vlw lc 4 t "Ustar04"
#
#
set output "../FIGURES/constCaReXsUstarX0.1FilX0.014.eps"
plot \
"../POSTPROCESSED_DATA/constCaReX3.12UstarX0.1FilX0.014.dat" u 1:4 w lp lw vlw lc 1 t "Rep01", \
"../POSTPROCESSED_DATA/constCaReX6.3UstarX0.1FilX0.014.dat" u 1:4 w lp lw vlw lc 2 t "Rep02", \
"../POSTPROCESSED_DATA/constCaReX14.77UstarX0.1FilX0.014.dat" u 1:4 w lp lw vlw lc 3 t "Rep03" 
#
#
# EOF