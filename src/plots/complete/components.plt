#!/usr/bin/gnuplot

set terminal cairolatex pdf input size 11.75cm,7cm
set output 'components-plot.tex'

# set terminal pngcairo dashed size 1300,800
# set output 'plot.png'

set title '\footnotesize\bfseries Components' offset 0,-3
set xlabel '\footnotesize Testsystem'
set ylabel '\footnotesize durchschnittliche Laufzeit in s' offset -1
set key top right height 1

set style line 100 dt '.' lt rgb '#777777'
set grid ytics ls 100
set xtics scale 0

set style data histogram
set style histogram cluster gap 1.5
set style fill solid
set boxwidth 0.8

flow = '#06594f';
ts = '#01517f';

plot 'complete.dat' using 2:xtic(1) title '\scriptsize Flow' linecolor rgb flow, \
  '' using 3 title '\scriptsize TypeScript' linecolor rgb ts
