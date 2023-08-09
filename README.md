![](https://github.com/Aarhus-University-MPE/Ice-Nucleation-Controller/blob/main/docs/assets/INC_SplashLoad.png)

# Ice Nucleation Controller

The Ice Nucleation Controller is a system designed for conducting highly precise ice nucleation experiments within a specified temperature range of +10°C to -30°C. The system maintains a consistent temperature gradient throughout the experiments by employing a cooling circuit that incorporates a closed water loop and a pair of Peltier elements regulated by a PID controller. Temperature measurements are carried out using a FLIR A655sc thermal camera, which is corrected in real-time using a thermistor placed within a fixed calibration cavity. The freezing temperatures of each sample are estimated based on the extracted thermal camera temperatures, and these estimates can be utilized for subsequent processing.

## System Description
One primary component of INC is the Cooling Base. Temperature controlled gallium **(A)** contained in the Top Copper Base **(B)** houses the PCR plate. Temperature and gradient is controlled with a pair of PID regulated Peltier Elements **(C)**, coupled with a Water Cooler Base Plates **(D)**, both are mounted in the Bottom Copper Base **(E)**. A Vapor Chamber **(F)** ensures a minimal distribution gradient. Control and calibration temperature is measured with
a Thermistor Probe **(G)** inserted into the Top Copper Base. A Fix-point Cavity **(H)**, used for run-time Thermal Camera calibration, is mounted directly in contact with the Thermistor Probe into the Top Copper Base.

![](https://github.com/Aarhus-University-MPE/Ice-Nucleation-Controller/blob/main/docs/assets/System_CoolingBase_Color_2.png)


## Data Processing
Collected temperature data is analyzed using custom software. The interface allows researchers to customize parameters and visualizations, and allows for extraction of data for additional further analysis.

![](https://github.com/Aarhus-University-MPE/Ice-Nucleation-Controller/blob/main/docs/assets/TCE_FrozenFraction.png)
