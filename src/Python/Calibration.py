#%%
from datetime import time
import matplotlib.pyplot as plt
import matplotlib.cbook as cbook

import numpy as np
import pandas as pd
import os

#%%
sensorList = [5, 6, 7]
folder = 'C:\\Users\\au540322\\Documents\\Projects\\Ice-Nucleation\\Builds\\Full Build\\Data\\'
sub_folders = [name for name in os.listdir(folder) if os.path.isdir(os.path.join(folder, name))]

numSamples = sub_folders.__len__()
calibrationValues = [30, 15, 5, 0, -5, -10, -15, -20, -25, -30, -35]
averages = [[[] for _ in range(calibrationValues.__len__())] for _ in range(10)]
fullArray = [[[] for _ in range(calibrationValues.__len__())] for _ in range(10)]
for i in sensorList:
    for idx, val in enumerate(calibrationValues):
        fullArray[i][idx].append(val)

for sample in sub_folders:
    file_location = folder + sample + '\\Data.csv'
    file_location_setup = folder + sample + '\\Setup.csv'
    msft = pd.read_csv(file_location,delimiter=';',decimal=',')
    try:
        setupData = pd.read_csv(file_location_setup,delimiter=';',decimal=',')
    except:
        pass
    msft['Time [MM:SS]']=pd.to_datetime(msft['Time [MM:SS]'],format='%H-%M-%S_%f').dt.strftime('%H:%M')

    axes = msft.plot(0,['V1','V5','V6','V7','V8'],figsize = (30,10), grid = True, fontsize = 25,
    sharey=True, lw = 1)

    axes.set_title(str(sample),fontsize = 30)
    axes.set_ylabel('Measured Voltage [V]', fontsize = 25)
    axes.set_xlabel('Time [HH:mm]', fontsize = 25)

    axes.legend(fontsize=30,bbox_to_anchor=(1.01, 1))
    axes.minorticks_on()
    axes.grid(True,which='minor',axis='x')
    
    for i in sensorList:
        calibrationValue = int(float(setupData.iloc[9,1].replace(',', '.')))
        value = calibrationValues.index(calibrationValue)
        averages[i][value].append(msft['V'+str(i+1)].mean())
        fullArray[i][value].append(msft['V'+str(i+1)].mean())
    
for i in sensorList:
    print("Sensor " + str(i+1) + ":")
    print('\n'.join(['\t'.join(['{:4}'.format(item) for item in row]) 
        for row in fullArray[i]]))

#%%
sizeArray = 0
for element in averages[0]:
    sizeArray += len(element)


for i in sensorList:
    print("Sensor: " + str(i +1))
    print("(@MATRIX " + str(sizeArray) + " 1 ")
    print(' '.join([ ' '.join(['{:4}'.format(item) for item in row]) 
        for row in averages[i]]))     
    print(")")
#%%
for i in range(1):
    print("Sensor " + str(i+1) + ":")
    print("(@MATRIX " + str(averages[0].__len__()+1) + " 1 ")
    print(' '.join([' '.join(['{:4}'.format(item) for item in row]) 
        for row in averages[i]]))     
    print(")")

#%%
sample = 'Calibration_30'
file_location = folder + sample + '\\Data.csv'
msft = pd.read_csv(file_location,delimiter=';',decimal=',')
msft['Time [MM:SS]']=pd.to_datetime(msft['Time [MM:SS]'],format='%H-%M-%S_%f').dt.strftime('%H:%M')

axes = msft.plot(0,['V6','V8'],figsize = (30,10), grid = True, fontsize = 25,
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
