#%%
from datetime import time
import matplotlib.pyplot as plt
import matplotlib.cbook as cbook

import numpy as np
import pandas as pd

rootlocation = 'C:\\Users\\au540322\\Documents\\Projects\\Ice-Nucleation\\src\\LabVIEW\\Data\\'
fileName = 'Sensor3Calibration_0'
file_location = rootlocation + fileName + '\\Data.csv'

#%%
msft = pd.read_csv(file_location,delimiter=';',decimal=',')
msft['Time [MM:SS]']=pd.to_datetime(msft['Time [MM:SS]'],format='%H-%M-%S_%f').dt.strftime('%H:%M')

axes = msft.plot(0,[10,11,12],figsize = (30,10), grid = True, fontsize = 25,
    sharey=True, lw = 1)

axes.set_title('Calibration Data',fontsize = 30)
axes.set_ylabel('Measured Voltage [V]', fontsize = 25)
axes.set_xlabel('Time [HH:mm]', fontsize = 25)

axes.legend(['Dryblock calibrated','Reference (dk.rs)','Reference (China)'],
    fontsize=30,bbox_to_anchor=(1.01, 1))
axes.minorticks_on()
axes.grid(True,which='minor',axis='x')
    
#%%
fig = axes[0].get_figure()

fig.savefig('figure.pdf')
# %%
msft.iloc[:,0].dt.strftime('%H:%M:%S:%f')
#%%
msft.dtypes
#iloc[:,0].to_datetime
