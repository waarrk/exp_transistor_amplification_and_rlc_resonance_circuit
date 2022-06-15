set terminal postscript eps monochrome
set output 'f-gv.eps'
set size nosquare 1,0.75
set grid
set xrange [5:100000]
#set yrange [0:0.01]
set logscale x
set xlabel 'f[Hz]'
set ylabel 'Gv[dB]'
set mytics 2
set grid ytics mytics linewidth 1.5, linewidth 1
set style line 1 lt 2 lw 1 pt 5
set datafile separator ","
plot '../data/f-gv.csv' u 1:4 t "" with linespoints ls 1
set output