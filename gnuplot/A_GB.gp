set terminal postscript eps monochrome
set output 'A_GB_2.eps'
set size nosquare 1,0.75
set grid
set xrange [-0.02:0.055]
#set yrange [0:0.01]
set xlabel 'G[S]'
set ylabel 'jB[S]'
set mytics 2
set grid ytics mytics linewidth 1.5, linewidth 1
set style line 1 lt 2 lw 1 pt 5
set datafile separator ","
plot '../data/A_GB.csv' u 5:6 t "actual" with lines, \
 '../data/A_GB.csv' u 5:6 t "calced" with linespoints
set output