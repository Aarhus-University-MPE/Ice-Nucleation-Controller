<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="22308000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Build files" Type="Folder">
			<Item Name="Partitions" Type="Folder">
				<Item Name="Big Setup.prt" Type="Document" URL="../Partitions/Big Setup.prt"/>
				<Item Name="Small Setup.prt" Type="Document" URL="../Partitions/Small Setup.prt"/>
			</Item>
			<Item Name="TCam.ini" Type="Document" URL="../TCam.ini"/>
			<Item Name="TCC.ini" Type="Document" URL="../TCC.ini"/>
			<Item Name="settings.ini" Type="Document" URL="../settings.ini"/>
			<Item Name="Calibration.ini" Type="Document" URL="../Calibration.ini"/>
			<Item Name="camera_placeholder.png" Type="Document" URL="../resources/camera_placeholder.png"/>
			<Item Name="TCEM.ini" Type="Document" URL="../TCEM.ini"/>
			<Item Name="Calibration_Old.ini" Type="Document" URL="../Calibration_Old.ini"/>
		</Item>
		<Item Name="Functions" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Camera" Type="Folder">
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Item Name="Camera_Config.vi" Type="VI" URL="../Camera_Config.vi"/>
				<Item Name="Camera_Grab.vi" Type="VI" URL="../Camera_Grab.vi"/>
				<Item Name="Camera_Feed.vi" Type="VI" URL="../Camera_Feed.vi"/>
				<Item Name="Camera_Rectangle_To_ROI.vi" Type="VI" URL="../Camera_Rectangle_To_ROI.vi"/>
				<Item Name="Camera_ROI_To_Rectangle.vi" Type="VI" URL="../Camera_ROI_To_Rectangle.vi"/>
				<Item Name="Camera_ROI_Extract.vi" Type="VI" URL="../Camera_ROI_Extract.vi"/>
			</Item>
			<Item Name="Arduino" Type="Folder">
				<Item Name="Arduino_Initialize.vi" Type="VI" URL="../Arduino_Initialize.vi"/>
				<Item Name="Arduino_Mode.vi" Type="VI" URL="../Arduino_Mode.vi"/>
				<Item Name="Arduino_Resend_Heat_Timeout.vi" Type="VI" URL="../Arduino_Resend_Heat_Timeout.vi"/>
			</Item>
			<Item Name="Thermal Camera" Type="Folder">
				<Item Name="UI" Type="Folder">
					<Item Name="TCam_CenterArray.vi" Type="VI" URL="../TCam_CenterArray.vi"/>
					<Item Name="TCam_HorizontalLines.vi" Type="VI" URL="../TCam_HorizontalLines.vi"/>
					<Item Name="TCam_VerticalLines.vi" Type="VI" URL="../TCam_VerticalLines.vi"/>
					<Item Name="TCam_Overlay_Fixedpoint.vi" Type="VI" URL="../TCam_Overlay_Fixedpoint.vi"/>
					<Item Name="RunTimeMenu_Initialize_TCE.vi" Type="VI" URL="../RunTimeMenu_Initialize_TCE.vi"/>
					<Item Name="RunTimeMenu_Save_State_TCE.vi" Type="VI" URL="../RunTimeMenu_Save_State_TCE.vi"/>
					<Item Name="RunTimeMenu_TCE_RecentInsert.vi" Type="VI" URL="../RunTimeMenu_TCE_RecentInsert.vi"/>
					<Item Name="OverlayFreezeRange.vi" Type="VI" URL="../OverlayFreezeRange.vi"/>
				</Item>
				<Item Name="Hardware" Type="Folder">
					<Item Name="TCam_Scan.vi" Type="VI" URL="../TCam_Scan.vi"/>
					<Item Name="TCam_Focus.vi" Type="VI" URL="../TCam_Focus.vi"/>
					<Item Name="TCam_Config.vi" Type="VI" URL="../TCam_Config.vi"/>
					<Item Name="TCam_AutoFocus.vi" Type="VI" URL="../TCam_AutoFocus.vi"/>
					<Item Name="TCam_NUC.vi" Type="VI" URL="../TCam_NUC.vi"/>
					<Item Name="TCam_NUC_SET.vi" Type="VI" URL="../TCam_NUC_SET.vi"/>
				</Item>
				<Item Name="System" Type="Folder">
					<Item Name="TCam_CalibrationLoad.vi" Type="VI" URL="../TCam_CalibrationLoad.vi"/>
					<Item Name="TCam_Calibration_LoadSettings.vi" Type="VI" URL="../TCam_Calibration_LoadSettings.vi"/>
					<Item Name="DataArray_Reformatter.vi" Type="VI" URL="../DataArray_Reformatter.vi"/>
					<Item Name="SingleTempUpdater.vi" Type="VI" URL="../SingleTempUpdater.vi"/>
					<Item Name="SingleWellUpdater.vi" Type="VI" URL="../SingleWellUpdater.vi"/>
					<Item Name="WellCoordinateChecker.vi" Type="VI" URL="../WellCoordinateChecker.vi"/>
				</Item>
				<Item Name="DataCluster_TCAL.ctl" Type="VI" URL="../DataCluster_TCAL.ctl"/>
			</Item>
			<Item Name="cDAQ" Type="Folder">
				<Item Name="Thermistor" Type="Folder">
					<Item Name="Thermistor_Callibration.vi" Type="VI" URL="../Thermistor_Callibration.vi"/>
					<Item Name="Thermistor_Callibration_Load.vi" Type="VI" URL="../Thermistor_Callibration_Load.vi"/>
					<Item Name="Thermistor_Callibration_Save.vi" Type="VI" URL="../Thermistor_Callibration_Save.vi"/>
					<Item Name="Thermistor_Conversion.vi" Type="VI" URL="../Thermistor_Conversion.vi"/>
					<Item Name="Thermistor_Manual_Read.vi" Type="VI" URL="../Thermistor_Manual_Read.vi"/>
					<Item Name="Thermistor_Temp_Stamp.vi" Type="VI" URL="../Thermistor_Temp_Stamp.vi"/>
				</Item>
				<Item Name="cDAQ_Channels.vi" Type="VI" URL="../cDAQ_Channels.vi"/>
				<Item Name="cDAQ_Read.vi" Type="VI" URL="../cDAQ_Read.vi"/>
				<Item Name="CDAQ_Scan.vi" Type="VI" URL="../CDAQ_Scan.vi"/>
				<Item Name="RollingGradient.vi" Type="VI" URL="../RollingGradient.vi"/>
			</Item>
			<Item Name="Data Logging" Type="Folder">
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Item Name="DataFile_Create.vi" Type="VI" URL="../DataFile_Create.vi"/>
				<Item Name="DataFile_Append.vi" Type="VI" URL="../DataFile_Append.vi"/>
				<Item Name="Label_Check.vi" Type="VI" URL="../Label_Check.vi"/>
				<Item Name="Label_Increment.vi" Type="VI" URL="../Label_Increment.vi"/>
				<Item Name="Partition_Format.vi" Type="VI" URL="../Partition_Format.vi"/>
				<Item Name="SetupFile_Create.vi" Type="VI" URL="../SetupFile_Create.vi"/>
				<Item Name="SetupFile_Format.vi" Type="VI" URL="../SetupFile_Format.vi"/>
				<Item Name="SetupFile_Stamp.vi" Type="VI" URL="../SetupFile_Stamp.vi"/>
				<Item Name="SetupFile_GetElapsedDuration.vi" Type="VI" URL="../SetupFile_GetElapsedDuration.vi"/>
				<Item Name="Buffer_Initialize.vi" Type="VI" URL="../Buffer_Initialize.vi"/>
				<Item Name="Buffer_Append.vi" Type="VI" URL="../Buffer_Append.vi"/>
				<Item Name="DAQ_Status_Read.vi" Type="VI" URL="../DAQ_Status_Read.vi"/>
				<Item Name="DAQ_Package.vi" Type="VI" URL="../DAQ_Package.vi"/>
			</Item>
			<Item Name="Freeze" Type="Folder">
				<Item Name="Freeze_Check.vi" Type="VI" URL="../Freeze_Check.vi"/>
				<Item Name="Freeze_Threshold.vi" Type="VI" URL="../Freeze_Threshold.vi"/>
			</Item>
			<Item Name="PID" Type="Folder">
				<Item Name="PID_Calculate.vi" Type="VI" URL="../PID_Calculate.vi"/>
				<Item Name="PID_Control.vi" Type="VI" URL="../PID_Control.vi"/>
				<Item Name="AutoPID.vi" Type="VI" URL="../AutoPID.vi"/>
			</Item>
			<Item Name="PSU" Type="Folder">
				<Item Name="PSU_Command.vi" Type="VI" URL="../PSU_Command.vi"/>
				<Item Name="PSU_Output.vi" Type="VI" URL="../PSU_Output.vi"/>
				<Item Name="PSU_State.vi" Type="VI" URL="../PSU_State.vi"/>
				<Item Name="PSU_VOUT_Converter.vi" Type="VI" URL="../PSU_VOUT_Converter.vi"/>
				<Item Name="VISA_Scan.vi" Type="VI" URL="../VISA_Scan.vi"/>
			</Item>
			<Item Name="Settings" Type="Folder">
				<Item Name="Options.vi" Type="VI" URL="../Options.vi"/>
				<Item Name="Partition_Setup.vi" Type="VI" URL="../Partition_Setup.vi"/>
				<Item Name="Settings_Config.vi" Type="VI" URL="../Settings_Config.vi"/>
				<Item Name="Settings_Load.vi" Type="VI" URL="../Settings_Load.vi"/>
				<Item Name="Settings_Save.vi" Type="VI" URL="../Settings_Save.vi"/>
			</Item>
			<Item Name="System" Type="Folder">
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Item Name="Misc" Type="Folder">
					<Item Name="SystemActive.vi" Type="VI" URL="../SystemActive.vi"/>
					<Item Name="Camera_Frequency.vi" Type="VI" URL="../Camera_Frequency.vi"/>
					<Item Name="SampleRate_Convert.vi" Type="VI" URL="../SampleRate_Convert.vi"/>
					<Item Name="Image_Folder_Path_Checker.vi" Type="VI" URL="../Image_Folder_Path_Checker.vi"/>
					<Item Name="Calibration_Converter.vi" Type="VI" URL="../Calibration_Converter.vi"/>
					<Item Name="Points to Oval.vi" Type="VI" URL="../Points to Oval.vi"/>
					<Item Name="timeleft_stamp.vi" Type="VI" URL="../timeleft_stamp.vi"/>
					<Item Name="IntToLetter.vi" Type="VI" URL="../IntToLetter.vi"/>
					<Item Name="Letter2Number.vi" Type="VI" URL="../Letter2Number.vi"/>
					<Item Name="PCRNameArray.vi" Type="VI" URL="../PCRNameArray.vi"/>
					<Item Name="Partition_Extract.vi" Type="VI" URL="../Partition_Extract.vi"/>
					<Item Name="DataArray_Formatter.vi" Type="VI" URL="../DataArray_Formatter.vi"/>
					<Item Name="PCRSize.vi" Type="VI" URL="../PCRSize.vi"/>
					<Item Name="Thermistor_Extract.vi" Type="VI" URL="../Thermistor_Extract.vi"/>
					<Item Name="Read Exe WriteDate.vi" Type="VI" URL="../Read Exe WriteDate.vi"/>
					<Item Name="VersionCheck.vi" Type="VI" URL="../VersionCheck.vi"/>
					<Item Name="EnableDisable.vi" Type="VI" URL="../EnableDisable.vi"/>
					<Item Name="CleanString.vi" Type="VI" URL="../CleanString.vi"/>
				</Item>
				<Item Name="DataCluster.ctl" Type="VI" URL="../DataCluster.ctl"/>
				<Item Name="TCE_Config.ctl" Type="VI" URL="../TCE_Config.ctl"/>
				<Item Name="RunTimeMenu.rtm" Type="Document" URL="../RunTimeMenu.rtm"/>
				<Item Name="RunTimeMenu_Partition.rtm" Type="Document" URL="../RunTimeMenu_Partition.rtm"/>
				<Item Name="RunTimeMenu_TCC.rtm" Type="Document" URL="../RunTimeMenu_TCC.rtm"/>
				<Item Name="DataAcquisitionState.vi" Type="VI" URL="../DataAcquisitionState.vi"/>
				<Item Name="CPU_Overload.vi" Type="VI" URL="../CPU_Overload.vi"/>
				<Item Name="DAQ_Control.vi" Type="VI" URL="../DAQ_Control.vi"/>
			</Item>
			<Item Name="UI" Type="Folder">
				<Item Name="Connections" Type="Folder">
					<Item Name="ConnectionStatus.vi" Type="VI" URL="../ConnectionStatus.vi"/>
				</Item>
				<Item Name="Chart_Data_Packer.vi" Type="VI" URL="../Chart_Data_Packer.vi"/>
				<Item Name="Chart_Updater.vi" Type="VI" URL="../Chart_Updater.vi"/>
				<Item Name="Read Exe Version.vi" Type="VI" URL="../Read Exe Version.vi"/>
				<Item Name="RunTimeMenu_ThermoCouple.rtm" Type="Document" URL="../RunTimeMenu_ThermoCouple.rtm"/>
				<Item Name="LoadingWindow_Stream.vi" Type="VI" URL="../LoadingWindow_Stream.vi"/>
				<Item Name="LoadingWindow.vi" Type="VI" URL="../LoadingWindow.vi"/>
				<Item Name="TCam_Overlay.vi" Type="VI" URL="../TCam_Overlay.vi"/>
				<Item Name="ResultSavePrompt.vi" Type="VI" URL="../ResultSavePrompt.vi"/>
				<Item Name="ResultLoadPrompt.vi" Type="VI" URL="../ResultLoadPrompt.vi"/>
				<Item Name="CalibrationSavePrompt.vi" Type="VI" URL="../CalibrationSavePrompt.vi"/>
				<Item Name="CalibrationLoadPrompt.vi" Type="VI" URL="../CalibrationLoadPrompt.vi"/>
				<Item Name="ShowHideSplit.vi" Type="VI" URL="../ShowHideSplit.vi"/>
			</Item>
			<Item Name="Temperature Control" Type="Folder">
				<Item Name="Manual_Cool_Control.vi" Type="VI" URL="../Manual_Cool_Control.vi"/>
				<Item Name="Manual_Cool_Heat_V2.vi" Type="VI" URL="../Manual_Cool_Heat_V2.vi"/>
				<Item Name="Manual_Cool_Heat.vi" Type="VI" URL="../Manual_Cool_Heat.vi"/>
				<Item Name="Manual_Cool_Heat_Converter.vi" Type="VI" URL="../Manual_Cool_Heat_Converter.vi"/>
			</Item>
		</Item>
		<Item Name="Test Functions" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="ThermoCouple" Type="Folder">
				<Item Name="ThermoCouple_DAQ.vi" Type="VI" URL="../ThermoCouple_DAQ.vi"/>
				<Item Name="ThermoCouple_Datafile_Append.vi" Type="VI" URL="../ThermoCouple_Datafile_Append.vi"/>
				<Item Name="ThermoCouple_Datafile_Create.vi" Type="VI" URL="../ThermoCouple_Datafile_Create.vi"/>
				<Item Name="ThermoCouple_Packer.vi" Type="VI" URL="../ThermoCouple_Packer.vi"/>
				<Item Name="ThermoCouple_Read.vi" Type="VI" URL="../ThermoCouple_Read.vi"/>
				<Item Name="ProjectTemperatureChannel_0" Type="NI-DAQmx Channel">
					<Property Name="AI.ADCTimingMode" Type="Str">High Speed</Property>
					<Property Name="AI.AutoZeroMode" Type="Str">None</Property>
					<Property Name="AI.Max" Type="Str">100</Property>
					<Property Name="AI.MeasType" Type="Str">Temperature:Thermocouple</Property>
					<Property Name="AI.Min" Type="Str">0</Property>
					<Property Name="AI.Temp.Units" Type="Str">Deg C</Property>
					<Property Name="AI.Thrmcpl.CJCChan" Type="Str"></Property>
					<Property Name="AI.Thrmcpl.CJCSrc" Type="Str">Built-In</Property>
					<Property Name="AI.Thrmcpl.CJCVal" Type="Str">25</Property>
					<Property Name="AI.Thrmcpl.Type" Type="Str">J</Property>
					<Property Name="ChanType" Type="Str">Analog Input</Property>
					<Property Name="Descr" Type="Str"></Property>
					<Property Name="Name" Type="Str">ProjectTemperatureChannel_0</Property>
					<Property Name="PhysicalChanName" Type="Str">cDAQ2Mod1/ai0</Property>
				</Item>
				<Item Name="ProjectTemperatureChannel_1" Type="NI-DAQmx Channel">
					<Property Name="AI.ADCTimingMode" Type="Str">High Speed</Property>
					<Property Name="AI.AutoZeroMode" Type="Str">Every Sample</Property>
					<Property Name="AI.Max" Type="Str">100</Property>
					<Property Name="AI.MeasType" Type="Str">Temperature:Thermocouple</Property>
					<Property Name="AI.Min" Type="Str">0</Property>
					<Property Name="AI.Temp.Units" Type="Str">Deg C</Property>
					<Property Name="AI.Thrmcpl.CJCChan" Type="Str"></Property>
					<Property Name="AI.Thrmcpl.CJCSrc" Type="Str">Built-In</Property>
					<Property Name="AI.Thrmcpl.CJCVal" Type="Str">25</Property>
					<Property Name="AI.Thrmcpl.Type" Type="Str">J</Property>
					<Property Name="ChanType" Type="Str">Analog Input</Property>
					<Property Name="Descr" Type="Str"></Property>
					<Property Name="Name" Type="Str">ProjectTemperatureChannel_1</Property>
					<Property Name="PhysicalChanName" Type="Str">cDAQ2Mod1/ai1</Property>
				</Item>
				<Item Name="ThermoCoupleSingle" Type="NI-DAQmx Channel">
					<Property Name="AI.AutoZeroMode" Type="Str">Every Sample</Property>
					<Property Name="AI.Max" Type="Str">100</Property>
					<Property Name="AI.MeasType" Type="Str">Temperature:Thermocouple</Property>
					<Property Name="AI.Min" Type="Str">0</Property>
					<Property Name="AI.Temp.Units" Type="Str">Deg C</Property>
					<Property Name="AI.Thrmcpl.CJCChan" Type="Str"></Property>
					<Property Name="AI.Thrmcpl.CJCSrc" Type="Str">Built-In</Property>
					<Property Name="AI.Thrmcpl.CJCVal" Type="Str">25</Property>
					<Property Name="AI.Thrmcpl.Type" Type="Str">J</Property>
					<Property Name="ChanType" Type="Str">Analog Input</Property>
					<Property Name="Descr" Type="Str"></Property>
					<Property Name="Name" Type="Str">ThermoCoupleSingle</Property>
					<Property Name="PhysicalChanName" Type="Str">cDAQ2Mod1/ai0</Property>
				</Item>
			</Item>
			<Item Name="ThermoCouple_Logger.vi" Type="VI" URL="../ThermoCouple_Logger.vi"/>
			<Item Name="Channel_Detect.vi" Type="VI" URL="../Channel_Detect.vi"/>
			<Item Name="PSU_Command_Test.vi" Type="VI" URL="../PSU_Command_Test.vi"/>
			<Item Name="Thermal_Camera_Stream.vi" Type="VI" URL="../Thermal_Camera_Stream.vi"/>
			<Item Name="CameraAttributeTest.vi" Type="VI" URL="../CameraAttributeTest.vi"/>
			<Item Name="CameraAttributeSearch.vi" Type="VI" URL="../CameraAttributeSearch.vi"/>
			<Item Name="ThermalVideoStream.vi" Type="VI" URL="../ThermalVideoStream.vi"/>
		</Item>
		<Item Name="Assets" Type="Folder">
			<Item Name="Logo.ico" Type="Document" URL="../resources/Logo.ico"/>
			<Item Name="Logo_TCC.ico" Type="Document" URL="../resources/Logo_TCC.ico"/>
			<Item Name="Logo_TCE.ico" Type="Document" URL="../resources/Logo_TCE.ico"/>
		</Item>
		<Item Name="TCE" Type="Folder">
			<Item Name="Config" Type="Folder">
				<Item Name="TCE_Config_Load.vi" Type="VI" URL="../TCE_Config_Load.vi"/>
				<Item Name="TCE_Config_Save.vi" Type="VI" URL="../TCE_Config_Save.vi"/>
			</Item>
			<Item Name="Partition" Type="Folder">
				<Item Name="WellPartition_Index.vi" Type="VI" URL="../WellPartition_Index.vi"/>
				<Item Name="Partition_Sort_Reorder.vi" Type="VI" URL="../Partition_Sort_Reorder.vi"/>
				<Item Name="Partition_Sort.vi" Type="VI" URL="../Partition_Sort.vi"/>
			</Item>
			<Item Name="Frozen Fraction" Type="Folder">
				<Item Name="FrozenFraction_Calcualte.vi" Type="VI" URL="../FrozenFraction_Calcualte.vi"/>
				<Item Name="FrozenFraction_Extraction.vi" Type="VI" URL="../FrozenFraction_Extraction.vi"/>
				<Item Name="FrozenFraction_Concatinate.vi" Type="VI" URL="../FrozenFraction_Concatinate.vi"/>
			</Item>
			<Item Name="Temps" Type="Folder">
				<Item Name="TCam_WellCalculater.vi" Type="VI" URL="../TCam_WellCalculater.vi"/>
				<Item Name="TCam_WellTemp.vi" Type="VI" URL="../TCam_WellTemp.vi"/>
				<Item Name="TCam_WellPixels.vi" Type="VI" URL="../TCam_WellPixels.vi"/>
				<Item Name="TCam_IMGTempExtract.vi" Type="VI" URL="../TCam_IMGTempExtract.vi"/>
				<Item Name="TCam_ArrayTempExtract.vi" Type="VI" URL="../TCam_ArrayTempExtract.vi"/>
				<Item Name="TCam_PointCalculator.vi" Type="VI" URL="../TCam_PointCalculator.vi"/>
				<Item Name="TCam_FixpointTemps.vi" Type="VI" URL="../TCam_FixpointTemps.vi"/>
			</Item>
			<Item Name="UI" Type="Folder">
				<Item Name="TCE_Config.vi" Type="VI" URL="../TCE_Config.vi"/>
			</Item>
			<Item Name="DataArray_SaveSelection.vi" Type="VI" URL="../DataArray_SaveSelection.vi"/>
			<Item Name="TCE_SaveConfiguration.vi" Type="VI" URL="../TCE_SaveConfiguration.vi"/>
			<Item Name="RunTimeMenu_TCE.rtm" Type="Document" URL="../RunTimeMenu_TCE.rtm"/>
		</Item>
		<Item Name="main.vi" Type="VI" URL="../main.vi"/>
		<Item Name="TCC.vi" Type="VI" URL="../TCC.vi"/>
		<Item Name="TCE.vi" Type="VI" URL="../TCE.vi"/>
		<Item Name="OverlayTemps.vi" Type="VI" URL="../OverlayTemps.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Add State(s) to Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="BuildErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/BuildErrorSource.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="cfis_Get File Extension Without Changing Case.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Get File Extension Without Changing Case.vi"/>
				<Item Name="cfis_Replace Percent Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Replace Percent Code.vi"/>
				<Item Name="cfis_Reverse Scan From String For Integer.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Reverse Scan From String For Integer.vi"/>
				<Item Name="cfis_Split File Path Into Three Parts.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/cfis_Split File Path Into Three Parts.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Create File with Incrementing Suffix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Create File with Incrementing Suffix.vi"/>
				<Item Name="DAQmx Clear Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Clear Task.vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-4 Wire DC Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-4 Wire DC Voltage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Charge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Charge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Charge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Charge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Frequency-Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Frequency-Voltage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AO-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AO-FuncGen).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-FuncGen).vi"/>
				<Item Name="DAQmx Create Channel (AO-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (CI-Count Edges).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Count Edges).vi"/>
				<Item Name="DAQmx Create Channel (CI-Duty Cycle).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Duty Cycle).vi"/>
				<Item Name="DAQmx Create Channel (CI-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CI-GPS Timestamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-GPS Timestamp).vi"/>
				<Item Name="DAQmx Create Channel (CI-Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Angular Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Angular Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Linear Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Linear Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Freq).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Freq).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Ticks).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Time).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Width).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Width).vi"/>
				<Item Name="DAQmx Create Channel (CI-Semi Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Semi Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Two Edge Separation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Two Edge Separation).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Angular).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Angular).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Linear).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Ticks).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Time).vi"/>
				<Item Name="DAQmx Create Channel (DI-Digital Input).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DI-Digital Input).vi"/>
				<Item Name="DAQmx Create Channel (DO-Digital Output).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DO-Digital Output).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/task.llb/DAQmx Create Task.vi"/>
				<Item Name="DAQmx Create Virtual Channel.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Virtual Channel.vi"/>
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Read (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Read (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I8).vi"/>
				<Item Name="DAQmx Read (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I16).vi"/>
				<Item Name="DAQmx Read (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I32).vi"/>
				<Item Name="DAQmx Read (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U8).vi"/>
				<Item Name="DAQmx Read (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U16).vi"/>
				<Item Name="DAQmx Read (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U32).vi"/>
				<Item Name="DAQmx Read.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read.vi"/>
				<Item Name="DAQmx Start Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Start Task.vi"/>
				<Item Name="DAQmx Stop Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Stop Task.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="FileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInfo.vi"/>
				<Item Name="FileVersionInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FileVersionInformation.ctl"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="FindCloseTagByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindCloseTagByName.vi"/>
				<Item Name="FindElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElement.vi"/>
				<Item Name="FindElementStartByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElementStartByName.vi"/>
				<Item Name="FindEmptyElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindEmptyElement.vi"/>
				<Item Name="FindFirstTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindFirstTag.vi"/>
				<Item Name="FindMatchingCloseTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindMatchingCloseTag.vi"/>
				<Item Name="FixedFileInfo_Struct.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/FixedFileInfo_Struct.ctl"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetFileVersionInfo.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfo.vi"/>
				<Item Name="GetFileVersionInfoSize.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/GetFileVersionInfoSize.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Type"/>
				<Item Name="IMAQ Clear Overlay" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Clear Overlay"/>
				<Item Name="IMAQ Convert Point to ROI" Type="VI" URL="/&lt;vilib&gt;/vision/ROI Conversion.llb/IMAQ Convert Point to ROI"/>
				<Item Name="IMAQ Convert Rectangle to ROI" Type="VI" URL="/&lt;vilib&gt;/vision/ROI Conversion.llb/IMAQ Convert Rectangle to ROI"/>
				<Item Name="IMAQ Convert ROI to Point" Type="VI" URL="/&lt;vilib&gt;/vision/ROI Conversion.llb/IMAQ Convert ROI to Point"/>
				<Item Name="IMAQ Convert ROI to Rectangle" Type="VI" URL="/&lt;vilib&gt;/vision/ROI Conversion.llb/IMAQ Convert ROI to Rectangle"/>
				<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Create"/>
				<Item Name="IMAQ Dispose" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Dispose"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="IMAQ ImageToArray" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ ImageToArray"/>
				<Item Name="IMAQ Overlay Multiple Lines 2" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Multiple Lines 2"/>
				<Item Name="IMAQ Overlay Oval" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Oval"/>
				<Item Name="IMAQ Overlay Points" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Points"/>
				<Item Name="IMAQ Overlay ROI" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay ROI"/>
				<Item Name="IMAQ Overlay Text" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Text"/>
				<Item Name="IMAQ Point" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Point"/>
				<Item Name="IMAQ ReadFile 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ ReadFile 2"/>
				<Item Name="IMAQ Rectangle" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Rectangle"/>
				<Item Name="IMAQ Write BMP File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write BMP File 2"/>
				<Item Name="IMAQ Write File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write File 2"/>
				<Item Name="IMAQ Write Image And Vision Info File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write Image And Vision Info File 2"/>
				<Item Name="IMAQ Write JPEG File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write JPEG File 2"/>
				<Item Name="IMAQ Write JPEG2000 File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write JPEG2000 File 2"/>
				<Item Name="IMAQ Write PNG File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write PNG File 2"/>
				<Item Name="IMAQ Write TIFF File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write TIFF File 2"/>
				<Item Name="IMAQdx.ctl" Type="VI" URL="/&lt;vilib&gt;/userdefined/High Color/IMAQdx.ctl"/>
				<Item Name="Is Value Changed.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Is Value Changed.vim"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
				<Item Name="MoveMemory.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/MoveMemory.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_PID_autopid.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID_autopid.lvlib"/>
				<Item Name="NI_PID_pid.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID_pid.lvlib"/>
				<Item Name="NI_Vision_Acquisition_Software.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/driver/NI_Vision_Acquisition_Software.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="Parse State Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="ParseXMLFragments.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/ParseXMLFragments.vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Read From XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(array).vi"/>
				<Item Name="Read From XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(string).vi"/>
				<Item Name="Read From XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File.vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="ROI Descriptor" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/ROI Descriptor"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Stall Data Flow.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Stall Data Flow.vim"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="VerQueryValue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/fileVersionInfo.llb/VerQueryValue.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Write Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (I64).vi"/>
				<Item Name="Write Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (string).vi"/>
				<Item Name="Write Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet.vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write to XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File(array).vi"/>
				<Item Name="Write to XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File(string).vi"/>
				<Item Name="Write to XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File.vi"/>
				<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
				<Item Name="LV70DateRecToU32.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70DateRecToU32.vi"/>
				<Item Name="Open URL in Default Browser core.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser core.vi"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="Path to URL inner.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL inner.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Open URL in Default Browser (path).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (path).vi"/>
				<Item Name="Open URL in Default Browser (string).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (string).vi"/>
				<Item Name="Open URL in Default Browser.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser.vi"/>
				<Item Name="Remove Duplicates From 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Remove Duplicates From 1D Array.vim"/>
				<Item Name="RGB to Color.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/RGB to Color.vi"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Find Search Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Find Search Mode.ctl"/>
				<Item Name="Beep.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/Beep.vi"/>
				<Item Name="NI_PID__prctrl compat.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID__prctrl compat.lvlib"/>
				<Item Name="lvpidtkt.dll" Type="Document" URL="/&lt;vilib&gt;/addons/control/pid/lvpidtkt.dll"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_AdvCtrl_continuous linear.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/advanced/NI_AdvCtrl_continuous linear.lvlib"/>
				<Item Name="NI_AdvCtrl_nonlinear.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/advanced/NI_AdvCtrl_nonlinear.lvlib"/>
				<Item Name="IMAQ ArrayToImage" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ ArrayToImage"/>
				<Item Name="Less Comparable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Less/Less Comparable/Less Comparable.lvclass"/>
				<Item Name="Less Functor.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Less/Less Functor/Less Functor.lvclass"/>
				<Item Name="Less.vim" Type="VI" URL="/&lt;vilib&gt;/Comparison/Less.vim"/>
				<Item Name="Sort 1D Array Core.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Helpers/Sort 1D Array Core.vim"/>
				<Item Name="Sort 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Sort 1D Array.vim"/>
				<Item Name="Two-Way Comparison Versus Array Element.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Helpers/Two-Way Comparison Versus Array Element.vim"/>
				<Item Name="Search Sorted 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Search Sorted 1D Array.vim"/>
				<Item Name="DAQmx Read (Power 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Power 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Power DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Power 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Power 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Create Channel (Power).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (Power).vi"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
				<Item Name="LVPositionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPositionTypeDef.ctl"/>
				<Item Name="NI_Vision_Development_Module.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/NI_Vision_Development_Module.lvlib"/>
				<Item Name="DAQmx Read (Power Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Power Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Power 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Power 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 1D Wfm NChan NSamp).vi"/>
			</Item>
			<Item Name="_ChannelSupport.lvlib" Type="Library" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/_ChannelSupport.lvlib"/>
			<Item Name="ChannelProbePositionAndTitle.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbePositionAndTitle.vi"/>
			<Item Name="ChannelProbeWindowStagger.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbeWindowStagger.vi"/>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="niimaqdx.dll" Type="Document" URL="niimaqdx.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivision.dll" Type="Document" URL="nivision.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivissvc.dll" Type="Document" URL="nivissvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Tag-bool.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Tag-bool.lvlib"/>
			<Item Name="version.dll" Type="Document" URL="version.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Windows SYSTEMTIME to String.vi" Type="VI" URL="../Windows SYSTEMTIME to String.vi"/>
			<Item Name="Get File Info.vi" Type="VI" URL="../Get File Info.vi"/>
			<Item Name="ColorRamp.vi" Type="VI" URL="../ColorRamp.vi"/>
			<Item Name="CalibrationImageLoadPrompt.vi" Type="VI" URL="../CalibrationImageLoadPrompt.vi"/>
			<Item Name="Tag-c(a[.](dbl),a[.](dbl)).lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Tag-c(a[.](dbl),a[.](dbl)).lvlib"/>
			<Item Name="Stream-str.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Stream-str.lvlib"/>
			<Item Name="PipeLogic.lvclass" Type="LVClass" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/PipeLogic/PipeLogic.lvclass"/>
			<Item Name="Update Probe Details String.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ProbeSupport/Update Probe Details String.vi"/>
			<Item Name="ProbeFormatting.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ProbeSupport/ProbeFormatting.vi"/>
			<Item Name="Tag-t&apos;DataCluster.ctl&apos;.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Tag-t&apos;DataCluster.ctl&apos;.lvlib"/>
			<Item Name="Stream-bool.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Stream-bool.lvlib"/>
			<Item Name="Tag-c(c(ref(LVObjVI()),bool),bool,bool,u32[Cool,Heat]).lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Tag-c(c(ref(LVObjVI()),bool),bool,bool,u32[Cool,Heat]).lvlib"/>
			<Item Name="Tag-c(bool,ref(UserDefinedRefnumTag),bool,path,bool).lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Tag-c(bool,ref(UserDefinedRefnumTag),bool,path,bool).lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Thermal Camera Evaluation" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_includeHWConfig" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{70A65245-F323-49E4-9FAC-5F38AC01EAE3}</Property>
				<Property Name="App_INI_GUID" Type="Str">{7848AB33-9735-4E85-9F55-B9B72F777C01}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{17DCC4A0-8985-414C-8CB5-944BE4DFA469}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Thermal Camera Evaluation</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/D/Projects/Ice-Nucleation-Controller/Builds/bin/Full Build</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{95EEF059-8F91-49DB-A57E-FF38AF6547AD}</Property>
				<Property Name="Bld_version.build" Type="Int">10</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Bld_version.minor" Type="Int">2</Property>
				<Property Name="Bld_version.patch" Type="Int">3</Property>
				<Property Name="Destination[0].destName" Type="Str">TCE.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/D/Projects/Ice-Nucleation-Controller/Builds/bin/Full Build/TCE.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/D/Projects/Ice-Nucleation-Controller/Builds/bin/Full Build/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Assets/Logo_TCE.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{4D2F39AC-54F3-4FB4-A27F-04C1CC32C795}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/TCE.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Build files/camera_placeholder.png</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Build files/TCEM.ini</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_companyName" Type="Str">Aarhus University</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Thermal Camera Evaluation</Property>
				<Property Name="TgtF_internalName" Type="Str">Thermal Camera Evaluation</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2022 Aarhus University</Property>
				<Property Name="TgtF_productName" Type="Str">Thermal Camera Evaluation</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{765937FA-2BBA-4638-A757-5D4AB3FD30F3}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">TCE.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Thermal Camera Calibration" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{2334B61B-6B3E-4D24-A9C0-96B39E498EB5}</Property>
				<Property Name="App_INI_GUID" Type="Str">{C85F06F1-1A3D-4FB7-9985-975313B408B5}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{8DA6213A-A7F3-4600-85FC-E0D98D0D85A9}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Thermal Camera Calibration</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/D/Projects/Ice-Nucleation-Controller/Builds/bin/Full Build</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{6FD33856-2380-4F94-8CB7-5581C7931DF6}</Property>
				<Property Name="Bld_version.build" Type="Int">44</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Bld_version.patch" Type="Int">2</Property>
				<Property Name="Destination[0].destName" Type="Str">TCC.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/D/Projects/Ice-Nucleation-Controller/Builds/bin/Full Build/TCC.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/D/Projects/Ice-Nucleation-Controller/Builds/bin/Full Build/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Assets/Logo_TCC.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{4D2F39AC-54F3-4FB4-A27F-04C1CC32C795}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/TCC.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Build files/TCC.ini</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">Aarhus University</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Thermal Camera Calibration</Property>
				<Property Name="TgtF_internalName" Type="Str">Thermal Camera Calibration</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2022 Aarhus University</Property>
				<Property Name="TgtF_productName" Type="Str">Thermal Camera Calibration</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{4ECC90C8-5AFA-4E65-8969-5270033137DC}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">TCC.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Ice Nucleation Controller" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_includeHWConfig" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{3618DAED-42DC-4E68-88A6-01E191E81E60}</Property>
				<Property Name="App_INI_GUID" Type="Str">{BD6AEBFB-191F-424A-B98F-B2609A5B1AAB}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{33F274C5-765A-4CC4-96AB-55991902EFC2}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Bld_excludeDependentDLLs" Type="Bool">true</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/D/Projects/Ice-Nucleation-Controller/Builds/bin/Full Build</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{27D8B2BC-76A3-474D-8C11-FD95C8E7081D}</Property>
				<Property Name="Bld_version.build" Type="Int">15</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Bld_version.minor" Type="Int">3</Property>
				<Property Name="Bld_version.patch" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">INC.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/D/Projects/Ice-Nucleation-Controller/Builds/bin/Full Build/INC.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/D/Projects/Ice-Nucleation-Controller/Builds/bin/Full Build/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Assets/Logo.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{A001A3BF-705A-4C75-8981-990407B2326F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Build files/Partitions</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Build files/TCam.ini</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Build files/settings.ini</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Build files/Calibration.ini</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/Build files/camera_placeholder.png</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Build files/TCEM.ini</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">8</Property>
				<Property Name="TgtF_companyName" Type="Str">Aarhus University</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Ice Nucleation Control</Property>
				<Property Name="TgtF_internalName" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 Aarhus University</Property>
				<Property Name="TgtF_productName" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{58C928C1-8473-4CEF-96B2-F9CFB2EAA16B}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">INC.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[0].unlock" Type="Bool">true</Property>
				<Property Name="Destination[1].name" Type="Str">Data</Property>
				<Property Name="Destination[1].parent" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Destination[1].tag" Type="Str">{91FD325C-AAB7-491E-AB64-7BBBE922D8DB}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].unlock" Type="Bool">true</Property>
				<Property Name="Destination[2].name" Type="Str">Partitions</Property>
				<Property Name="Destination[2].parent" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Destination[2].tag" Type="Str">{09B5634D-F4F6-46D8-8877-756072EA0D65}</Property>
				<Property Name="Destination[2].type" Type="Str">userFolder</Property>
				<Property Name="Destination[2].unlock" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{C8E6A834-3F86-4C97-A020-8DE0F5522BF9}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI Vision Common Resources 2023 Q1</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{409BEFA9-EB3E-472F-AD77-271A4A1D5927}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[1].productID" Type="Str">{31AB186F-BCAD-4EF6-9192-7D44C7587B99}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI Vision Runtime 2023 Q1</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{63DF74E5-A5C9-11D4-814E-005004D6CDD6}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[2].productID" Type="Str">{45E21CB8-05D7-4E12-B56D-2DDF6EC5B1CB}</Property>
				<Property Name="DistPart[2].productName" Type="Str">NI-488.2 Runtime 23.5</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{357F6618-C660-41A2-A185-5578CC876D1D}</Property>
				<Property Name="DistPart[3].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[3].productID" Type="Str">{E5B0D967-91AE-4386-A81C-AFD1353A0D14}</Property>
				<Property Name="DistPart[3].productName" Type="Str">NI-DAQmx Runtime 23.5</Property>
				<Property Name="DistPart[3].upgradeCode" Type="Str">{923C9CD5-A0D8-4147-9A8D-998780E30763}</Property>
				<Property Name="DistPart[4].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[4].productID" Type="Str">{600831DA-D9CA-4B20-A4B3-3293A741324F}</Property>
				<Property Name="DistPart[4].productName" Type="Str">NI-IMAQdx Runtime 23.0</Property>
				<Property Name="DistPart[4].upgradeCode" Type="Str">{3D104AB3-CE10-43C0-B647-07600754072C}</Property>
				<Property Name="DistPart[5].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[5].productID" Type="Str">{ECF7D15D-85F8-4DE3-B7AC-294D306FA70F}</Property>
				<Property Name="DistPart[5].productName" Type="Str">NI-Serial Runtime 23.3</Property>
				<Property Name="DistPart[5].upgradeCode" Type="Str">{01D82F43-B48D-46FF-8601-FC4FAAE20F41}</Property>
				<Property Name="DistPart[6].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[6].productID" Type="Str">{95D24B70-E5A0-4A12-B606-D732ADB7DC8F}</Property>
				<Property Name="DistPart[6].productName" Type="Str">NI-VISA Runtime 23.5</Property>
				<Property Name="DistPart[6].upgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="DistPart[7].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[7].productID" Type="Str">{3954BD22-4321-42BB-BA6C-F687895AD8F0}</Property>
				<Property Name="DistPart[7].productName" Type="Str">NI LabVIEW Runtime 2022 Q3 Patch 1 (64-bit)</Property>
				<Property Name="DistPart[7].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[0].productName" Type="Str">NI ActiveX Container (64-bit)</Property>
				<Property Name="DistPart[7].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[7].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[1].productName" Type="Str">NI Deployment Framework 2022 (64-bit)</Property>
				<Property Name="DistPart[7].SoftDep[1].upgradeCode" Type="Str">{E0D3C7F9-4512-438F-8123-E2050457972B}</Property>
				<Property Name="DistPart[7].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[10].productName" Type="Str">NI TDM Streaming 22.3</Property>
				<Property Name="DistPart[7].SoftDep[10].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[7].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[2].productName" Type="Str">NI Error Reporting 2020 (64-bit)</Property>
				<Property Name="DistPart[7].SoftDep[2].upgradeCode" Type="Str">{785BE224-E5B2-46A5-ADCB-55C949B5C9C7}</Property>
				<Property Name="DistPart[7].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[3].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2022</Property>
				<Property Name="DistPart[7].SoftDep[3].upgradeCode" Type="Str">{68688466-B146-325C-AC08-D6ADFE5A4205}</Property>
				<Property Name="DistPart[7].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[4].productName" Type="Str">NI Logos 22.3</Property>
				<Property Name="DistPart[7].SoftDep[4].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[7].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[5].productName" Type="Str">NI LabVIEW Web Server 2022 (64-bit)</Property>
				<Property Name="DistPart[7].SoftDep[5].upgradeCode" Type="Str">{5F449D4C-83B9-492E-986B-6B85A29C431D}</Property>
				<Property Name="DistPart[7].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[6].productName" Type="Str">NI mDNS Responder 22.5</Property>
				<Property Name="DistPart[7].SoftDep[6].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[7].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[7].productName" Type="Str">Math Kernel Libraries 2017</Property>
				<Property Name="DistPart[7].SoftDep[7].upgradeCode" Type="Str">{699C1AC5-2CF2-4745-9674-B19536EBA8A3}</Property>
				<Property Name="DistPart[7].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[8].productName" Type="Str">Math Kernel Libraries 2020</Property>
				<Property Name="DistPart[7].SoftDep[8].upgradeCode" Type="Str">{9872BBBA-FB96-42A4-80A2-9605AC5CBCF1}</Property>
				<Property Name="DistPart[7].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[9].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[7].SoftDep[9].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[7].SoftDepCount" Type="Int">11</Property>
				<Property Name="DistPart[7].upgradeCode" Type="Str">{FB80C6B7-18E1-3FF4-99A2-719F62FACAD8}</Property>
				<Property Name="DistPart[8].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[8].productID" Type="Str">{771F415F-1E1C-4560-9F9A-D9F68C46C76F}</Property>
				<Property Name="DistPart[8].productName" Type="Str">NI Measurement &amp; Automation Explorer 23.5</Property>
				<Property Name="DistPart[8].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[8].SoftDep[0].productName" Type="Str">NI Error Reporting</Property>
				<Property Name="DistPart[8].SoftDep[0].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[8].SoftDepCount" Type="Int">1</Property>
				<Property Name="DistPart[8].upgradeCode" Type="Str">{AE940F24-CC0E-4148-9A96-10FB04D9796D}</Property>
				<Property Name="DistPartCount" Type="Int">9</Property>
				<Property Name="INST_author" Type="Str">Aarhus University</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">/D/Projects/Ice-Nucleation-Controller/Builds/bin/Installer</Property>
				<Property Name="INST_buildSpecName" Type="Str">Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="INST_installerName" Type="Str">install.exe</Property>
				<Property Name="INST_productName" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.34</Property>
				<Property Name="InstSpecBitness" Type="Str">64-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">22308000</Property>
				<Property Name="MSI_arpCompany" Type="Str">Aarhus University</Property>
				<Property Name="MSI_arpContact" Type="Str">Mads Rosenhøj Jeppesen</Property>
				<Property Name="MSI_arpPhone" Type="Str">+45 20 89 43 32</Property>
				<Property Name="MSI_distID" Type="Str">{755E61CD-97BF-483B-B739-AB4A2FAC3198}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{5940FEEC-89CB-4DDF-8C4E-0C318B508615}</Property>
				<Property Name="MSI_windowMessage" Type="Str">Install INC software</Property>
				<Property Name="MSI_windowTitle" Type="Str">INC Installer</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">INC.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{58C928C1-8473-4CEF-96B2-F9CFB2EAA16B}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/Ice Nucleation Controller</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[1].name" Type="Str">TCam.ini</Property>
				<Property Name="Source[1].tag" Type="Ref">/My Computer/Build files/TCam.ini</Property>
				<Property Name="Source[1].type" Type="Str">File</Property>
				<Property Name="Source[1].unlock" Type="Bool">true</Property>
				<Property Name="Source[2].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[2].name" Type="Str">settings.ini</Property>
				<Property Name="Source[2].tag" Type="Ref">/My Computer/Build files/settings.ini</Property>
				<Property Name="Source[2].type" Type="Str">File</Property>
				<Property Name="Source[2].unlock" Type="Bool">true</Property>
				<Property Name="Source[3].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[3].name" Type="Str">camera_placeholder.png</Property>
				<Property Name="Source[3].tag" Type="Ref">/My Computer/Build files/camera_placeholder.png</Property>
				<Property Name="Source[3].type" Type="Str">File</Property>
				<Property Name="Source[4].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[4].File[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[4].File[0].name" Type="Str">TCE.exe</Property>
				<Property Name="Source[4].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[4].File[0].Shortcut[0].name" Type="Str">Thermal Camera Evaluation</Property>
				<Property Name="Source[4].File[0].Shortcut[0].subDir" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Source[4].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[4].File[0].tag" Type="Str">{765937FA-2BBA-4638-A757-5D4AB3FD30F3}</Property>
				<Property Name="Source[4].FileCount" Type="Int">1</Property>
				<Property Name="Source[4].name" Type="Str">Thermal Camera Evaluation</Property>
				<Property Name="Source[4].tag" Type="Ref">/My Computer/Build Specifications/Thermal Camera Evaluation</Property>
				<Property Name="Source[4].type" Type="Str">EXE</Property>
				<Property Name="Source[5].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[5].File[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[5].File[0].name" Type="Str">TCC.exe</Property>
				<Property Name="Source[5].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[5].File[0].Shortcut[0].name" Type="Str">Thermal Camera Calibration</Property>
				<Property Name="Source[5].File[0].Shortcut[0].subDir" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Source[5].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[5].File[0].tag" Type="Str">{4ECC90C8-5AFA-4E65-8969-5270033137DC}</Property>
				<Property Name="Source[5].FileCount" Type="Int">1</Property>
				<Property Name="Source[5].name" Type="Str">Thermal Camera Calibration</Property>
				<Property Name="Source[5].tag" Type="Ref">/My Computer/Build Specifications/Thermal Camera Calibration</Property>
				<Property Name="Source[5].type" Type="Str">EXE</Property>
				<Property Name="Source[6].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[6].File[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[6].File[0].name" Type="Str">TCE.exe</Property>
				<Property Name="Source[6].File[0].tag" Type="Str">{765937FA-2BBA-4638-A757-5D4AB3FD30F3}</Property>
				<Property Name="Source[6].name" Type="Str">Calibration.ini</Property>
				<Property Name="Source[6].tag" Type="Ref">/My Computer/Build files/Calibration.ini</Property>
				<Property Name="Source[6].type" Type="Str">File</Property>
				<Property Name="Source[6].unlock" Type="Bool">true</Property>
				<Property Name="Source[7].dest" Type="Str">{09B5634D-F4F6-46D8-8877-756072EA0D65}</Property>
				<Property Name="Source[7].File[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[7].File[0].name" Type="Str">TCC.exe</Property>
				<Property Name="Source[7].File[0].tag" Type="Str">{4ECC90C8-5AFA-4E65-8969-5270033137DC}</Property>
				<Property Name="Source[7].name" Type="Str">Big Setup.prt</Property>
				<Property Name="Source[7].tag" Type="Ref">/My Computer/Build files/Partitions/Big Setup.prt</Property>
				<Property Name="Source[7].type" Type="Str">File</Property>
				<Property Name="Source[7].unlock" Type="Bool">true</Property>
				<Property Name="Source[8].dest" Type="Str">{09B5634D-F4F6-46D8-8877-756072EA0D65}</Property>
				<Property Name="Source[8].File[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[8].File[0].name" Type="Str">TCC.exe</Property>
				<Property Name="Source[8].File[0].tag" Type="Str">{4ECC90C8-5AFA-4E65-8969-5270033137DC}</Property>
				<Property Name="Source[8].name" Type="Str">Small Setup.prt</Property>
				<Property Name="Source[8].tag" Type="Ref">/My Computer/Build files/Partitions/Small Setup.prt</Property>
				<Property Name="Source[8].type" Type="Str">File</Property>
				<Property Name="Source[8].unlock" Type="Bool">true</Property>
				<Property Name="Source[9].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[9].name" Type="Str">TCEM.ini</Property>
				<Property Name="Source[9].tag" Type="Ref">/My Computer/Build files/TCEM.ini</Property>
				<Property Name="Source[9].type" Type="Str">File</Property>
				<Property Name="SourceCount" Type="Int">10</Property>
			</Item>
			<Item Name="Update" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[0].unlock" Type="Bool">true</Property>
				<Property Name="Destination[1].name" Type="Str">Data</Property>
				<Property Name="Destination[1].parent" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Destination[1].tag" Type="Str">{91FD325C-AAB7-491E-AB64-7BBBE922D8DB}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].unlock" Type="Bool">true</Property>
				<Property Name="Destination[2].name" Type="Str">Partitions</Property>
				<Property Name="Destination[2].parent" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Destination[2].tag" Type="Str">{09B5634D-F4F6-46D8-8877-756072EA0D65}</Property>
				<Property Name="Destination[2].type" Type="Str">userFolder</Property>
				<Property Name="Destination[2].unlock" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="INST_author" Type="Str">Aarhus University</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">/D/Projects/Ice-Nucleation-Controller/Builds/bin/Update</Property>
				<Property Name="INST_buildSpecName" Type="Str">Update</Property>
				<Property Name="INST_defaultDir" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="INST_includeError" Type="Bool">false</Property>
				<Property Name="INST_installerName" Type="Str">update.exe</Property>
				<Property Name="INST_productName" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.7</Property>
				<Property Name="InstSpecBitness" Type="Str">64-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">22308000</Property>
				<Property Name="MSI_arpCompany" Type="Str">Aarhus University</Property>
				<Property Name="MSI_arpContact" Type="Str">Mads Rosenhøj Jeppesen</Property>
				<Property Name="MSI_arpPhone" Type="Str">+45 20 89 43 32</Property>
				<Property Name="MSI_distID" Type="Str">{A42AD0A9-717B-442F-89D4-3338A88DDACB}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{F191BAE4-997C-4632-829B-82B481E17D43}</Property>
				<Property Name="MSI_windowMessage" Type="Str">Update Ice Nucleation Controller software</Property>
				<Property Name="MSI_windowTitle" Type="Str">Ice Nucleation Controller Updater</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">INC.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{58C928C1-8473-4CEF-96B2-F9CFB2EAA16B}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/Ice Nucleation Controller</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[1].name" Type="Str">TCam.ini</Property>
				<Property Name="Source[1].tag" Type="Ref">/My Computer/Build files/TCam.ini</Property>
				<Property Name="Source[1].type" Type="Str">File</Property>
				<Property Name="Source[1].unlock" Type="Bool">true</Property>
				<Property Name="Source[2].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[2].name" Type="Str">settings.ini</Property>
				<Property Name="Source[2].tag" Type="Ref">/My Computer/Build files/settings.ini</Property>
				<Property Name="Source[2].type" Type="Str">File</Property>
				<Property Name="Source[2].unlock" Type="Bool">true</Property>
				<Property Name="Source[3].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[3].name" Type="Str">camera_placeholder.png</Property>
				<Property Name="Source[3].tag" Type="Ref">/My Computer/Build files/camera_placeholder.png</Property>
				<Property Name="Source[3].type" Type="Str">File</Property>
				<Property Name="Source[4].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[4].File[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[4].File[0].name" Type="Str">TCE.exe</Property>
				<Property Name="Source[4].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[4].File[0].Shortcut[0].name" Type="Str">Thermal Camera Evaluation</Property>
				<Property Name="Source[4].File[0].Shortcut[0].subDir" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Source[4].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[4].File[0].tag" Type="Str">{765937FA-2BBA-4638-A757-5D4AB3FD30F3}</Property>
				<Property Name="Source[4].FileCount" Type="Int">1</Property>
				<Property Name="Source[4].name" Type="Str">Thermal Camera Evaluation</Property>
				<Property Name="Source[4].tag" Type="Ref">/My Computer/Build Specifications/Thermal Camera Evaluation</Property>
				<Property Name="Source[4].type" Type="Str">EXE</Property>
				<Property Name="Source[5].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[5].File[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[5].File[0].name" Type="Str">TCC.exe</Property>
				<Property Name="Source[5].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[5].File[0].Shortcut[0].name" Type="Str">Thermal Camera Calibration</Property>
				<Property Name="Source[5].File[0].Shortcut[0].subDir" Type="Str">Ice Nucleation Controller</Property>
				<Property Name="Source[5].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[5].File[0].tag" Type="Str">{4ECC90C8-5AFA-4E65-8969-5270033137DC}</Property>
				<Property Name="Source[5].FileCount" Type="Int">1</Property>
				<Property Name="Source[5].name" Type="Str">Thermal Camera Calibration</Property>
				<Property Name="Source[5].tag" Type="Ref">/My Computer/Build Specifications/Thermal Camera Calibration</Property>
				<Property Name="Source[5].type" Type="Str">EXE</Property>
				<Property Name="Source[6].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[6].File[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[6].File[0].name" Type="Str">TCE.exe</Property>
				<Property Name="Source[6].File[0].tag" Type="Str">{765937FA-2BBA-4638-A757-5D4AB3FD30F3}</Property>
				<Property Name="Source[6].name" Type="Str">Calibration.ini</Property>
				<Property Name="Source[6].tag" Type="Ref">/My Computer/Build files/Calibration.ini</Property>
				<Property Name="Source[6].type" Type="Str">File</Property>
				<Property Name="Source[6].unlock" Type="Bool">true</Property>
				<Property Name="Source[7].dest" Type="Str">{09B5634D-F4F6-46D8-8877-756072EA0D65}</Property>
				<Property Name="Source[7].File[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[7].File[0].name" Type="Str">TCC.exe</Property>
				<Property Name="Source[7].File[0].tag" Type="Str">{4ECC90C8-5AFA-4E65-8969-5270033137DC}</Property>
				<Property Name="Source[7].name" Type="Str">Big Setup.prt</Property>
				<Property Name="Source[7].tag" Type="Ref">/My Computer/Build files/Partitions/Big Setup.prt</Property>
				<Property Name="Source[7].type" Type="Str">File</Property>
				<Property Name="Source[7].unlock" Type="Bool">true</Property>
				<Property Name="Source[8].dest" Type="Str">{09B5634D-F4F6-46D8-8877-756072EA0D65}</Property>
				<Property Name="Source[8].File[0].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[8].File[0].name" Type="Str">TCC.exe</Property>
				<Property Name="Source[8].File[0].tag" Type="Str">{4ECC90C8-5AFA-4E65-8969-5270033137DC}</Property>
				<Property Name="Source[8].name" Type="Str">Small Setup.prt</Property>
				<Property Name="Source[8].tag" Type="Ref">/My Computer/Build files/Partitions/Small Setup.prt</Property>
				<Property Name="Source[8].type" Type="Str">File</Property>
				<Property Name="Source[8].unlock" Type="Bool">true</Property>
				<Property Name="Source[9].dest" Type="Str">{4B7C7F5D-6E6D-4786-BBED-E06C37A5A212}</Property>
				<Property Name="Source[9].name" Type="Str">TCEM.ini</Property>
				<Property Name="Source[9].tag" Type="Ref">/My Computer/Build files/TCEM.ini</Property>
				<Property Name="Source[9].type" Type="Str">File</Property>
				<Property Name="SourceCount" Type="Int">10</Property>
			</Item>
		</Item>
	</Item>
</Project>
