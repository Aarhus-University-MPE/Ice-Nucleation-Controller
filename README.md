![](https://github.com/Aarhus-University-MPE/Ice-Nucleation-Controller/blob/main/docs/assets/INC_SplashLoad.png)

# Ice-Nucleation

Ice Nucleation Controller is a system used to perform high precision ice nucleation experiments. System temperature range is from +10°C to -30°C. A specified temperature gradient is held throughout experiments using a cooling circuit consisting of a closed water loop and a PID controlled pair of peltier elements. Temperatures are measured using a FLIR A655sc thermal camera and run-time calibrated using a thermistor in a fixed calibration cavity. Freezing temperatures for each sample are estimated using extracted temperature gradients and can be used for further processing.

## System Description
One primary component of INC is the Cooling Base. Temperature controlled gallium **(A)** contained in the Top Copper Base **(B)** houses the PCR plate. Temperature and gradient is controlled with a pair of PID regulated Peltier Elements **(C)**, coupled with a Water Cooler Base Plates **(D)**, both are mounted in the Bottom Copper Base **(E)**. A Vapor Chamber **(F)** ensures a minimal distribution gradient. Control and calibration temperature is measured with
a Thermistor Probe **(G)** inserted into the Top Copper Base. A Fix-point Cavity **(H)**, used for run-time Thermal Camera calibration, is mounted directly in contact with the Thermistor Probe into the Top Copper Base.

![](https://github.com/Aarhus-University-MPE/Ice-Nucleation-Controller/blob/main/docs/assets/System_CoolingBase_Color_2.png)


## Data Generation
High detailed temperature data is generated using a FLIR A654sc. Images are used for post processing analysis.

![](https://github.com/Aarhus-University-MPE/Ice-Nucleation-Controller/blob/main/docs/assets/SystemData.png)

![](https://github.com/Aarhus-University-MPE/Ice-Nucleation-Controller/blob/main/docs/assets/TCE_FrozenFraction.png)
