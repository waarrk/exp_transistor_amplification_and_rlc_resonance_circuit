set terminal postscript eps monochrome
set output 'A_YTheta_2.eps'
set size nosquare 1,0.75
set grid
set xlabel 'f[Hz]'
set ylabel 'Y[S]'
set mytics 2
set grid ytics mytics linewidth 1.5, linewidth 1
set style line 1 lt 2 lw 1 pt 5
set datafile separator ","
plot '../data/A_YTheta.csv' u 3:5 t "actual" with lines, \
 '../data/A_YTheta.csv' u 3:5 t "calced" with linespoints
set output