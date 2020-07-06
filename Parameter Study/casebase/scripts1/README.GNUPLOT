How to plot the residuals:

First you need to extract the information form the log file.
To do so you can use the utility foamLog.
The information is saved in the directory logs



To plot using gnuplot:

plot [10:][] 'logs/Ux_0' w l, 'logs/UxFinalRes_0' w l

plot [10:][] 'logs/Uy_0' w l, 'logs/UyFinalRes_0' w l

plot [10:][] 'logs/Ux_0' w l, 'logs/Uy_0' w l


plot [10:][] 'logs/p_0' w l, 'logs/pFinalRes_0' w l

plot [10:][] 'logs/p_5' w l, 'logs/pFinalRes_5' w l

plot [10:][] 'logs/p_0' w l, 'logs/p_1' w l, 'logs/p_2' w l

plot [10:][] 'logs/p_0' w l, 'logs/p_3' w l


