#%%
from datetime import time
import matplotlib.pyplot as plt
import matplotlib.cbook as cbook

import numpy as np
import pandas as pd
import os

#%%
folder = 'C:\\Users\\au540322\\Documents\\Projects\\Ice-Nucleation\\Builds\\Data\\'
sub_folders = [name for name in os.listdir(folder) if os.path.isdir(os.path.join(folder, name))]

for sample in sub_folders:
    file_location = folder + sample + '\\Data.csv'
    msft = pd.read_csv(file_location,delimiter=';',decimal=',')
    msft['Time [MM:SS]']=pd.to_datetime(msft['Time [MM:SS]'],format='%H-%M-%S_%f').dt.strftime('%H:%M')

    axes = msft.plot(0,['V1','V2','V3','V4','V5','V6','V7','V8'],figsize = (30,10), grid = True, fontsize = 25,
        sharey=True, lw = 1)

    axes.set_title(str(sample),fontsize = 30)
    axes.set_ylabel('Measured Voltage [V]', fontsize = 25)
    axes.set_xlabel('Time [HH:mm]', fontsize = 25)

    axes.legend(fontsize=30,bbox_to_anchor=(1.01, 1))
    axes.minorticks_on()
    axes.grid(True,which='minor',axis='x')


#%%
sample = 'Calibration_1'
file_location = folder + sample + '\\Data.csv'
msft = pd.read_csv(file_location,delimiter=';',decimal=',')
msft['Time [MM:SS]']=pd.to_datetime(msft['Time [MM:SS]'],format='%H-%M-%S_%f').dt.strftime('%H:%M')

axes = msft.plot(0,['V2', 'V5'],figsize = (30,10), grid = True, fontsize = 25,
    sharey=True, lw = 1)

axes.set_title(str(sample),fontsize = 30)
axes.set_ylabel('Measured Voltage [V]', fontsize = 25)
axes.set_xlabel('Time [HH:mm]', fontsize = 25)

axes.legend(fontsize=30,bbox_to_anchor=(1.01, 1))
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
