"""

joegi

"""



import numpy as np
import matplotlib.pyplot as plt
from scipy.fftpack import fft, ifft


#data=np.loadtxt('forceCoeffs.dat', skiprows=9)
data=np.loadtxt('postProcessing/forceCoeffs_object/0/forceCoeffs.dat', skiprows=9)


xl=len(data[:,0])
x=np.linspace(data[0,0],xl-1,xl)


#plot(data[:,0],data[:,2],'o')
#plt.plot(data[:,0],data[:,2])


plt.subplot(211)
plt.plot(data[:,0],data[:,2])
plt.grid()
plt.xlabel('Time', fontsize=18)
plt.ylabel('Drag coe.', fontsize=18)
plt.ylim([0, 2])
#plt.title('Lift coe.', fontsize=18)


plt.subplot(212)
plt.plot(x,data[:,2])
plt.grid()
plt.xlabel('Iteration', fontsize=18)
plt.ylabel('Drag coe.', fontsize=18)
plt.ylim([0, 2])
#plt.title('Lift coe.', fontsize=18)


plt.tight_layout() 



plt.savefig('./scripts2/cd.png') 

plt.show() 