#%%
from datetime import time
import matplotlib.pyplot as plt
import matplotlib.cbook as cbook

import numpy as np
import pandas as pd
import os

sensorList = [6]
folder = 'C:\\Users\\au540322\\Documents\\Projects\\Ice-Nucleation\\Builds\\Full Build\\Data\\'
sub_folders = [name for name in os.listdir(folder) if os.path.isdir(os.path.join(folder, name))]

numSamples = sub_folders.__len__()
calibrationValues = [30, 15, 5, 0, -5, -10, -15, -20, -25, -30, -35]
averages = [[[] for _ in range(calibrationValues.__len__())] for _ in range(10)]
fullArray = [[[] for _ in range(calibrationValues.__len__())] for _ in range(10)]
for i in sensorList:
    for idx, val in enumerate(calibrationValues):
        fullArray[i][idx].append(val)

#%%
axes = plt.axes()
axes.legend(fontsize=30,bbox_to_anchor=(1.01, 1))
axes.minorticks_on()
axes.grid(True,which='minor',axis='x')

axes.set_title('Calibration',fontsize = 30)
axes.set_ylabel('Measured Voltage [V]', fontsize = 25)
axes.set_xlabel('Time [HH:mm]', fontsize = 25)

for sample in sub_folders:
    file_location = folder + sample + '\\Data.csv'
    file_location_setup = folder + sample + '\\Setup.csv'
    msft = pd.read_csv(file_location,delimiter=';',decimal=',')
    try:
        setupData = pd.read_csv(file_location_setup,delimiter=';',decimal=',')
    except:
        pass
    msft['Time [MM:SS]']=pd.to_datetime(msft['Time [MM:SS]'],format='%H-%M-%S_%f').dt.strftime('%H:%M')

    msft.plot(0,['V1'],figsize = (30,10), grid = True, fontsize = 25,
    sharey=True, sharex=True, lw = 1,ax = axes)
    
    for i in sensorList:
        calibrationValue = int(float(setupData.iloc[9,1].replace(',', '.')))
        value = calibrationValues.index(calibrationValue)
        averages[i][value].append(msft['V'+str(i+1)].mean())
        fullArray[i][value].append(msft['V'+str(i+1)].mean())
    
for i in sensorList:
    print("Sensor " + str(i+1) + ":")
    print('\n'.join(['\t'.join(['{:4}'.format(item) for item in row]) 
        for row in fullArray[i]]))

sizeArray = 0
for element in averages[sensorList[0]]:
    sizeArray += len(element)

for i in sensorList:
    print("Sensor: " + str(i +1))
    print("(@MATRIX " + str(sizeArray) + " 1 ")
    print(' '.join([ ' '.join(['{:4}'.format(item) for item in row]) 
        for row in averages[i]]))     
    print(")")
#%%
# for i in range(1):
#     print("Sensor " + str(i+1) + ":")
#     print("(@MATRIX " + str(averages[0].__len__()+1) + " 1 ")
#     print(' '.join([' '.join(['{:4}'.format(item) for item in row]) 
#         for row in averages[i]]))     
#     print(")")

#%%
sample = 'PID System Test_1'
file_location = folder + sample + '\\Data.csv'
msft = pd.read_csv(file_location,delimiter=';',decimal=',')
msft['Time [MM:SS]']=pd.to_datetime(msft['Time [MM:SS]'],format='%H-%M-%S_%f').dt.strftime('%H:%M')

#axes = msft.plot(0,['Average'],figsize = (30,10), grid = True, fontsize = 25,
#    sharey=True, lw = 1)

axes = msft.plot(0,'T1',figsize = (30,10), grid = True, fontsize = 25,
    sharey=True, lw = 1)

#print(msft['Lat_dev'].mean())

axes.set_title(str(sample),fontsize = 30)
axes.set_ylabel('Measured Temperature [°C]', fontsize = 25)
axes.set_xlabel('Time [HH:mm]', fontsize = 25)
#axes.set_ylim(-1.2,-0.6)


axes.legend(fontsize=30,bbox_to_anchor=(1.01, 1))
axes.minorticks_on()
axes.grid(True,which='minor',axis='x')
