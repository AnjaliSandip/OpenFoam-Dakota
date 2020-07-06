"""
Spyder Editor

This is a temporary script file.
"""

import numpy as np
from scipy import signal
import matplotlib.pyplot as plt


#data=np.loadtxt('forceCoeffs.dat', skiprows=9)
data=np.loadtxt('postProcessing/forceCoeffs_object/0/forceCoeffs.dat', skiprows=9)


"""
Estimate power spectral density using a periodogram.
"""

ts=data[1,0]-data[0,0]
#ts=0.05


#x=data[5000:,2]
#np.mean(x)


f, Pxx_den = signal.periodogram(data[:,3], 1/ts)
#plt.semilogy(f, Pxx_den)

plt.xlim([0, 0.5])
#plt.ylim([-0.5, 5])
#plt.ylim(bottom=-1)

plt.xlabel('frequency [Hz]')
#plt.ylabel('PSD [V**2/Hz]')
plt.ylabel('PSD')
plt.title('Input signal: cl')
plt.plot(f, Pxx_den)

plt.grid()



plt.savefig('scripts2/fig_psd_cl.png') 

plt.show()