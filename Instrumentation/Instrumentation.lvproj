﻿<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="13008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="RT CompactRIO Target" Type="RT CompactRIO">
		<Property Name="alias.name" Type="Str">RT CompactRIO Target</Property>
		<Property Name="alias.value" Type="Str">10.46.35.2</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,VxWorks;CPU,PowerPC;DeviceCode,75C7;</Property>
		<Property Name="crio.ControllerPID" Type="Str">75C7</Property>
		<Property Name="crio.family" Type="Str">901x</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">2</Property>
		<Property Name="host.TargetOSID" Type="UInt">14</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Enabled" Type="Bool">true</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/c/ni-rt/startup</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Chassis" Type="cRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">cRIO-FRC II</Property>
		</Item>
		<Item Name="Debug.vi" Type="VI" URL="../Debug.vi"/>
		<Item Name="Sensors.vi" Type="VI" URL="../Sensors.vi"/>
		<Item Name="Simple Drive.vi" Type="VI" URL="../Simple Drive.vi"/>
		<Item Name="support - acquire data.vi" Type="VI" URL="/&lt;resource&gt;/plugins/NewDialogFiles/ProjectWizards/RTNPA/New Projects/support - acquire data.vi"/>
		<Item Name="target - single rate.vi" Type="VI" URL="../target - single rate.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="FPGA_AIAverageBits.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIAverageBits.vi"/>
				<Item Name="FPGA_AIChannel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIChannel.ctl"/>
				<Item Name="FPGA_AIDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIDevRef.ctl"/>
				<Item Name="FPGA_AIERRInvalidAccumulatorChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIERRInvalidAccumulatorChannel.vi"/>
				<Item Name="FPGA_AIERRInvalidAnalogChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIERRInvalidAnalogChannel.vi"/>
				<Item Name="FPGA_AIGyroChannel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIGyroChannel.ctl"/>
				<Item Name="FPGA_AIOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIOpen.vi"/>
				<Item Name="FPGA_AIOversampleBits.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIOversampleBits.vi"/>
				<Item Name="FPGA_AIReadAccumulatorCenter.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIReadAccumulatorCenter.vi"/>
				<Item Name="FPGA_AIReadAccumulatorOutput.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIReadAccumulatorOutput.vi"/>
				<Item Name="FPGA_AIReadAverageBits.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIReadAverageBits.vi"/>
				<Item Name="FPGA_AIReadAveraged.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIReadAveraged.vi"/>
				<Item Name="FPGA_AIReadConfig.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIReadConfig.vi"/>
				<Item Name="FPGA_AIReadLSBWeight.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIReadLSBWeight.vi"/>
				<Item Name="FPGA_AIReadOffset.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIReadOffset.vi"/>
				<Item Name="FPGA_AIReadOversampleBits.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIReadOversampleBits.vi"/>
				<Item Name="FPGA_AIWriteAccumulatorCenter.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIWriteAccumulatorCenter.vi"/>
				<Item Name="FPGA_AIWriteAccumulatorDeadband.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIWriteAccumulatorDeadband.vi"/>
				<Item Name="FPGA_AIWriteAccumulatorReset.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIWriteAccumulatorReset.vi"/>
				<Item Name="FPGA_AIWriteAverageBits.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIWriteAverageBits.vi"/>
				<Item Name="FPGA_AIWriteConfig.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIWriteConfig.vi"/>
				<Item Name="FPGA_AIWriteOversampleBits.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIWriteOversampleBits.vi"/>
				<Item Name="FPGA_AIWriteScanList.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_AIWriteScanList.vi"/>
				<Item Name="FPGA_AnalogTriggerConvertFPGAToSource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_AnalogTriggerConvertFPGAToSource.vi"/>
				<Item Name="FPGA_AnalogTriggerDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_AnalogTriggerDevRef.ctl"/>
				<Item Name="FPGA_AnalogTriggerIndex.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_AnalogTriggerIndex.ctl"/>
				<Item Name="FPGA_AnalogTriggerOutType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_AnalogTriggerOutType.ctl"/>
				<Item Name="FPGA_AnalogTriggerReadConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_AnalogTriggerReadConfiguration.vi"/>
				<Item Name="FPGA_AnalogTriggerSource.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_AnalogTriggerSource.ctl"/>
				<Item Name="FPGA_CounterConvertEdgeTypeToMode.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterConvertEdgeTypeToMode.vi"/>
				<Item Name="FPGA_CounterConvertModeToEdgeType.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterConvertModeToEdgeType.vi"/>
				<Item Name="FPGA_CounterCtrDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterCtrDevRef.ctl"/>
				<Item Name="FPGA_CounterCtrEdgeDetectionType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterCtrEdgeDetectionType.ctl"/>
				<Item Name="FPGA_CounterCtrSystemIndex.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterCtrSystemIndex.ctl"/>
				<Item Name="FPGA_CounterEncoderSourceConvertionFPGATypeToLVSourceType.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/CounterEncoderSourceConvertion/FPGA_CounterEncoderSourceConvertionFPGATypeToLVSourceType.vi"/>
				<Item Name="FPGA_CounterEncoderSourceConvertionLVSourceType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/CounterEncoderSourceConvertion/FPGA_CounterEncoderSourceConvertionLVSourceType.ctl"/>
				<Item Name="FPGA_CounterEncoderSourceConvertionLVSourceTypeToFPGAType.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/CounterEncoderSourceConvertion/FPGA_CounterEncoderSourceConvertionLVSourceTypeToFPGAType.vi"/>
				<Item Name="FPGA_CounterERRInvalidResource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterERRInvalidResource.vi"/>
				<Item Name="FPGA_CounterEventCtrMode.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterEventCtrMode.ctl"/>
				<Item Name="FPGA_CounterOpen &amp; Configured.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterOpen &amp; Configured.vi"/>
				<Item Name="FPGA_CounterOpen WO Configuration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterOpen WO Configuration.vi"/>
				<Item Name="FPGA_CounterReadConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterReadConfiguration.vi"/>
				<Item Name="FPGA_CounterReadOutput.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterReadOutput.vi"/>
				<Item Name="FPGA_CounterReadTimerOutput.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterReadTimerOutput.vi"/>
				<Item Name="FPGA_CounterWriteConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterWriteConfiguration.vi"/>
				<Item Name="FPGA_CounterWriteEnable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterWriteEnable.vi"/>
				<Item Name="FPGA_CounterWriteReset.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterWriteReset.vi"/>
				<Item Name="FPGA_CounterWriteTimerConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Counter/FPGA_CounterWriteTimerConfiguration.vi"/>
				<Item Name="FPGA_DIOChannel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOChannel.ctl"/>
				<Item Name="FPGA_DIODevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIODevRef.ctl"/>
				<Item Name="FPGA_DIODigitalSourceChannel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIODigitalSourceChannel.ctl"/>
				<Item Name="FPGA_DIOERRInvalidPWMChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOERRInvalidPWMChannel.vi"/>
				<Item Name="FPGA_DIOMapDigitalSourceChannelEnumToModuleLine.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOMapDigitalSourceChannelEnumToModuleLine.vi"/>
				<Item Name="FPGA_DIOMapModuleLineToDigitalSourceChannelEnum.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOMapModuleLineToDigitalSourceChannelEnum.vi"/>
				<Item Name="FPGA_DIOOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOOpen.vi"/>
				<Item Name="FPGA_DIOPWMChannel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOPWMChannel.ctl"/>
				<Item Name="FPGA_DIOReadDI.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOReadDI.vi"/>
				<Item Name="FPGA_DIOReadI2CDataReceived.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOReadI2CDataReceived.vi"/>
				<Item Name="FPGA_DIOReadI2CStatus.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOReadI2CStatus.vi"/>
				<Item Name="FPGA_DIOReadLoopTiming.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOReadLoopTiming.vi"/>
				<Item Name="FPGA_DIOReadOutputEnable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOReadOutputEnable.vi"/>
				<Item Name="FPGA_DIOReadPWMValue.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOReadPWMValue.vi"/>
				<Item Name="FPGA_DIORelayChannel.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIORelayChannel.ctl"/>
				<Item Name="FPGA_DIOWriteFilterSelect.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteFilterSelect.vi"/>
				<Item Name="FPGA_DIOWriteI2CConfig.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteI2CConfig.vi"/>
				<Item Name="FPGA_DIOWriteI2CDataToSend.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteI2CDataToSend.vi"/>
				<Item Name="FPGA_DIOWriteI2CStart.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteI2CStart.vi"/>
				<Item Name="FPGA_DIOWriteOutputEnable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteOutputEnable.vi"/>
				<Item Name="FPGA_DIOWritePWMMinHigh.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWritePWMMinHigh.vi"/>
				<Item Name="FPGA_DIOWritePWMPeriod.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWritePWMPeriod.vi"/>
				<Item Name="FPGA_DIOWritePWMPeriodScale.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWritePWMPeriodScale.vi"/>
				<Item Name="FPGA_DIOWritePWMValue.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWritePWMValue.vi"/>
				<Item Name="FPGA_DIOWriteSlowValueRelayFwd.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteSlowValueRelayFwd.vi"/>
				<Item Name="FPGA_DIOWriteSlowValueRelayRev.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_DIOWriteSlowValueRelayRev.vi"/>
				<Item Name="FPGA_EncoderDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderDevRef.ctl"/>
				<Item Name="FPGA_EncoderERRInvalidResource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderERRInvalidResource.vi"/>
				<Item Name="FPGA_EncoderIdx.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderIdx.ctl"/>
				<Item Name="FPGA_EncoderOpen &amp; Configure.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderOpen &amp; Configure.vi"/>
				<Item Name="FPGA_EncoderOpen WO Configuration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderOpen WO Configuration.vi"/>
				<Item Name="FPGA_EncoderOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderOpen.vi"/>
				<Item Name="FPGA_EncoderReadConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderReadConfiguration.vi"/>
				<Item Name="FPGA_EncoderReadOutput.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderReadOutput.vi"/>
				<Item Name="FPGA_EncoderReadTimerOutput.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderReadTimerOutput.vi"/>
				<Item Name="FPGA_EncoderWriteConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderWriteConfiguration.vi"/>
				<Item Name="FPGA_EncoderWriteEnable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderWriteEnable.vi"/>
				<Item Name="FPGA_EncoderWriteReset.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderWriteReset.vi"/>
				<Item Name="FPGA_EncoderWriteTimerConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Encoder/FPGA_EncoderWriteTimerConfiguration.vi"/>
				<Item Name="FPGA_ERRInvalidAnalogTriggerChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AnalogTrigger/FPGA_ERRInvalidAnalogTriggerChannel.vi"/>
				<Item Name="FPGA_ErrorManagementErrorDisplay.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/ErrorManagement/FPGA_ErrorManagementErrorDisplay.vi"/>
				<Item Name="FPGA_ErrorManagementHandleRuntimeErrors.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/ErrorManagement/FPGA_ErrorManagementHandleRuntimeErrors.vi"/>
				<Item Name="FPGA_InterruptIndex.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Interrupt/FPGA_InterruptIndex.ctl"/>
				<Item Name="FPGA_MapDIOChannelEnumToModuleLine.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/DIO/FPGA_MapDIOChannelEnumToModuleLine.vi"/>
				<Item Name="FPGA_ModuleValidationERRInvalidAnalogModuleError.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/ModuleValidation/FPGA_ModuleValidationERRInvalidAnalogModuleError.vi"/>
				<Item Name="FPGA_ModuleValidationERRInvalidAnalogSlotForAccumulator.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/ModuleValidation/FPGA_ModuleValidationERRInvalidAnalogSlotForAccumulator.vi"/>
				<Item Name="FPGA_ModuleValidationERRInvalidDigitalModuleError.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/ModuleValidation/FPGA_ModuleValidationERRInvalidDigitalModuleError.vi"/>
				<Item Name="FPGA_NIFPGAInterfaceFPGAResourceConstant.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/FPGA_NIFPGAInterfaceFPGAResourceConstant.vi"/>
				<Item Name="FPGA_ReadAI.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/AI/FPGA_ReadAI.vi"/>
				<Item Name="FPGA_SystemAsync VI Agent.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemAsync VI Agent.vi"/>
				<Item Name="FPGA_SystemAsynch VI Registration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemAsynch VI Registration.vi"/>
				<Item Name="FPGA_SystemERRWrongVersion.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemERRWrongVersion.vi"/>
				<Item Name="FPGA_SystemFPGA Ref Global.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemFPGA Ref Global.vi"/>
				<Item Name="FPGA_SystemFRC FPGA Ref.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemFRC FPGA Ref.ctl"/>
				<Item Name="FPGA_SystemGet.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemGet.vi"/>
				<Item Name="FPGA_SystemOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemOpen.vi"/>
				<Item Name="FPGA_SystemStart Async Agent.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/System/FPGA_SystemStart Async Agent.vi"/>
				<Item Name="FPGA_TypedefAnalogModule.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Typedef/FPGA_TypedefAnalogModule.ctl"/>
				<Item Name="FPGA_TypedefAnalogModuleForGyro.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Typedef/FPGA_TypedefAnalogModuleForGyro.ctl"/>
				<Item Name="FPGA_TypedefDigitalModule.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/Typedef/FPGA_TypedefDigitalModule.ctl"/>
				<Item Name="FPGA_WatchDogReadCount.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/WatchDog/FPGA_WatchDogReadCount.vi"/>
				<Item Name="FRC_FPGA_2012_1.6.4.lvbitx" Type="Document" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/FRC_FPGA_2012_1.6.4.lvbitx"/>
				<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="NetComm_CAN_Receive.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_CAN_Receive.vi"/>
				<Item Name="NetComm_CAN_Send.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_CAN_Send.vi"/>
				<Item Name="NetComm_EnhancedIO_GetInputData.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_EnhancedIO_GetInputData.vi"/>
				<Item Name="NetComm_EnhancedIO_GetOutputData.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_EnhancedIO_GetOutputData.vi"/>
				<Item Name="NetComm_EnhancedIO_SetConfig.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_EnhancedIO_SetConfig.vi"/>
				<Item Name="NetComm_GetCommonControlData.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_GetCommonControlData.vi"/>
				<Item Name="NetComm_GetModulePresence.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_GetModulePresence.vi"/>
				<Item Name="NetComm_Kinect_GetJoystickData.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_Kinect_GetJoystickData.vi"/>
				<Item Name="NetComm_ObserveUserProgramStarting.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_ObserveUserProgramStarting.vi"/>
				<Item Name="NetComm_SetErrorData.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_SetErrorData.vi"/>
				<Item Name="NetComm_SetNewDataOccurrenceReference.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_SetNewDataOccurrenceReference.vi"/>
				<Item Name="NetComm_SetStatusData.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_SetStatusData.vi"/>
				<Item Name="NetComm_UnloadC++StartupProgram.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_UnloadC++StartupProgram.vi"/>
				<Item Name="NetComm_UsageReport_report.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_UsageReport_report.vi"/>
				<Item Name="NetComm_UsageReport_ResourceType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/SystemInterfaces/NetworkCommunication/NetComm_UsageReport_ResourceType.ctl"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
				<Item Name="Refnum Registry Operation.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Utilities/Refnum Registry Operation.ctl"/>
				<Item Name="Release Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore Reference.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="RemoveNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/RemoveNamedSemaphorePrefix.vi"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="WPI_AccumulatorGetOutput.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/Accumulator/WPI_AccumulatorGetOutput.vi"/>
				<Item Name="WPI_AccumulatorInit.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/Accumulator/WPI_AccumulatorInit.vi"/>
				<Item Name="WPI_AccumulatorOffset.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/Accumulator/WPI_AccumulatorOffset.vi"/>
				<Item Name="WPI_AccumulatorReset.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/Accumulator/WPI_AccumulatorReset.vi"/>
				<Item Name="WPI_AccumulatorSetConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/Accumulator/WPI_AccumulatorSetConfiguration.vi"/>
				<Item Name="WPI_AnalogChannelChannelCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelChannelCache.vi"/>
				<Item Name="WPI_AnalogChannelChannelCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelChannelCacheOp.ctl"/>
				<Item Name="WPI_AnalogChannelClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelClose.vi"/>
				<Item Name="WPI_AnalogChannelDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelDevRef.ctl"/>
				<Item Name="WPI_AnalogChannelERRAcquireInvalidChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelERRAcquireInvalidChannel.vi"/>
				<Item Name="WPI_AnalogChannelERRChannelAllocated.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelERRChannelAllocated.vi"/>
				<Item Name="WPI_AnalogChannelERRScanlistInvalid.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelERRScanlistInvalid.vi"/>
				<Item Name="WPI_AnalogChannelFPGA_Timebase.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelFPGA_Timebase.vi"/>
				<Item Name="WPI_AnalogChannelGetAverageVoltage.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelGetAverageVoltage.vi"/>
				<Item Name="WPI_AnalogChannelGetOffset.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelGetOffset.vi"/>
				<Item Name="WPI_AnalogChannelGetVoltage.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelGetVoltage.vi"/>
				<Item Name="WPI_AnalogChannelOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelOpen.vi"/>
				<Item Name="WPI_AnalogChannelSetAveraging.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelSetAveraging.vi"/>
				<Item Name="WPI_AnalogChannelSetSampleRate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelSetSampleRate.vi"/>
				<Item Name="WPI_AnalogChannelToAnalogModule.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelToAnalogModule.vi"/>
				<Item Name="WPI_AnalogChannelValueToVoltage.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelValueToVoltage.vi"/>
				<Item Name="WPI_AnalogChannelVoltageToValue.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelVoltageToValue.vi"/>
				<Item Name="WPI_AnalogChannelWARNSampleRateTooFast.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogChannel/WPI_AnalogChannelWARNSampleRateTooFast.vi"/>
				<Item Name="WPI_AnalogModuleDefaults.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogModule/WPI_AnalogModuleDefaults.vi"/>
				<Item Name="WPI_AnalogModuleDevStatus.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogModule/WPI_AnalogModuleDevStatus.ctl"/>
				<Item Name="WPI_AnalogModuleGetAverageVoltage.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogModule/WPI_AnalogModuleGetAverageVoltage.vi"/>
				<Item Name="WPI_AnalogModuleGetVoltage.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogModule/WPI_AnalogModuleGetVoltage.vi"/>
				<Item Name="WPI_AnalogModuleOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogModule/WPI_AnalogModuleOpen.vi"/>
				<Item Name="WPI_AnalogTriggerCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogTrigger/WPI_AnalogTriggerCache.vi"/>
				<Item Name="WPI_AnalogTriggerClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogTrigger/WPI_AnalogTriggerClose.vi"/>
				<Item Name="WPI_AnalogTriggerErrList.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/AnalogTrigger/WPI_AnalogTriggerErrList.vi"/>
				<Item Name="WPI_CAN_MotorMessageIDs.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/Jaguar/SubVIs/WPI_CAN_MotorMessageIDs.ctl"/>
				<Item Name="WPI_CAN_SystemMessageIDs.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/Jaguar/SubVIs/WPI_CAN_SystemMessageIDs.ctl"/>
				<Item Name="WPI_CAN_TokenMessageIDs.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/Jaguar/SubVIs/WPI_CAN_TokenMessageIDs.ctl"/>
				<Item Name="WPI_CAN_UpdateMessageIDs.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/Jaguar/SubVIs/WPI_CAN_UpdateMessageIDs.ctl"/>
				<Item Name="WPI_CANJaguar_ClearAck.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/Jaguar/SubVIs/WPI_CANJaguar_ClearAck.vi"/>
				<Item Name="WPI_CANJaguar_ControlMode.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/Jaguar/SubVIs/WPI_CANJaguar_ControlMode.ctl"/>
				<Item Name="WPI_CANJaguar_GetTransaction.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/Jaguar/SubVIs/WPI_CANJaguar_GetTransaction.vi"/>
				<Item Name="WPI_CANJaguar_GetVersion.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/Jaguar/SubVIs/WPI_CANJaguar_GetVersion.vi"/>
				<Item Name="WPI_CANJaguar_SetTransaction.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/Jaguar/SubVIs/WPI_CANJaguar_SetTransaction.vi"/>
				<Item Name="WPI_CANJaguar_UpdateSyncGroup.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/CAN/Jaguar/WPI_CANJaguar_UpdateSyncGroup.vi"/>
				<Item Name="WPI_CounterAnalogTriggerToDigitalSource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterAnalogTriggerToDigitalSource.vi"/>
				<Item Name="WPI_CounterCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterCache.vi"/>
				<Item Name="WPI_CounterCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterCacheOp.ctl"/>
				<Item Name="WPI_CounterClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterClose.vi"/>
				<Item Name="WPI_CounterCloseDigitalSource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterCloseDigitalSource.vi"/>
				<Item Name="WPI_CounterDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterDevRef.ctl"/>
				<Item Name="WPI_CounterDigitalInputToDigitalSource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterDigitalInputToDigitalSource.vi"/>
				<Item Name="WPI_CounterDigitalOutputToDigitalSource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterDigitalOutputToDigitalSource.vi"/>
				<Item Name="WPI_CounterOpen &amp; Configure.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterOpen &amp; Configure.vi"/>
				<Item Name="WPI_CounterStop.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterStop.vi"/>
				<Item Name="WPI_CounterToDigitalSource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterToDigitalSource.vi"/>
				<Item Name="WPI_CounterVerifyDigitalSourceOkWithEdgeType.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterVerifyDigitalSourceOkWithEdgeType.vi"/>
				<Item Name="WPI_CounterWARNDigitalSourceAndEdgeType.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_CounterWARNDigitalSourceAndEdgeType.vi"/>
				<Item Name="WPI_DefaultPWMConstants.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_DefaultPWMConstants.vi"/>
				<Item Name="WPI_DigitalInputClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/WPI_DigitalInputClose.vi"/>
				<Item Name="WPI_DigitalInputDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/WPI_DigitalInputDevRef.ctl"/>
				<Item Name="WPI_DigitalInputGetValue.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/WPI_DigitalInputGetValue.vi"/>
				<Item Name="WPI_DigitalInputOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/WPI_DigitalInputOpen.vi"/>
				<Item Name="WPI_DigitalInputToDigitalModule.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/WPI_DigitalInputToDigitalModule.vi"/>
				<Item Name="WPI_DigitalModuleDeviceRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleDeviceRef.ctl"/>
				<Item Name="WPI_DigitalModuleDIOAllocator.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleDIOAllocator.vi"/>
				<Item Name="WPI_DigitalModuleDIOCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleDIOCache.vi"/>
				<Item Name="WPI_DigitalModuleDIOCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleDIOCacheOp.ctl"/>
				<Item Name="WPI_DigitalModuleERRDIOAlreadyAllocated.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleERRDIOAlreadyAllocated.vi"/>
				<Item Name="WPI_DigitalModuleERRInvalidDIOIdx.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleERRInvalidDIOIdx.vi"/>
				<Item Name="WPI_DigitalModuleGetDIO.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleGetDIO.vi"/>
				<Item Name="WPI_DigitalModuleGetPWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleGetPWM.vi"/>
				<Item Name="WPI_DigitalModuleOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleOpen.vi"/>
				<Item Name="WPI_DigitalModuleSetPWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleSetPWM.vi"/>
				<Item Name="WPI_DigitalModuleSetPWMPeriodScale.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleSetPWMPeriodScale.vi"/>
				<Item Name="WPI_DigitalModuleValidateDIOChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalModule/WPI_DigitalModuleValidateDIOChannel.vi"/>
				<Item Name="WPI_DigitalOutputDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalOutput/WPI_DigitalOutputDevRef.ctl"/>
				<Item Name="WPI_DisableFilter.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/Filter/WPI_DisableFilter.vi"/>
				<Item Name="WPI_DriverStationAllianceInfo.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationAllianceInfo.ctl"/>
				<Item Name="WPI_DriverStationAllianceInfoCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationAllianceInfoCache.vi"/>
				<Item Name="WPI_DriverStationAllianceInfoCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationAllianceInfoCacheOp.ctl"/>
				<Item Name="WPI_DriverStationBatteryVoltageGlobal.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationBatteryVoltageGlobal.vi"/>
				<Item Name="WPI_DriverStationCommDataCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationCommDataCache.vi"/>
				<Item Name="WPI_DriverStationCommDataCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationCommDataCacheOp.ctl"/>
				<Item Name="WPI_DriverStationCommPacketData.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationCommPacketData.ctl"/>
				<Item Name="WPI_DriverStationCreate Lib Version File.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationCreate Lib Version File.vi"/>
				<Item Name="WPI_DriverStationGet Robot Battery Voltage.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationGet Robot Battery Voltage.vi"/>
				<Item Name="WPI_DriverStationLaptopDataCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationLaptopDataCache.vi"/>
				<Item Name="WPI_DriverStationLaptopDataCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationLaptopDataCacheOp.ctl"/>
				<Item Name="WPI_DriverStationPositionInfo.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationPositionInfo.ctl"/>
				<Item Name="WPI_DriverStationStart Communication.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationStart Communication.vi"/>
				<Item Name="WPI_DriverStationStatusDataCache.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationStatusDataCache.ctl"/>
				<Item Name="WPI_DriverStationStatusDataCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationStatusDataCache.vi"/>
				<Item Name="WPI_DriverStationStatusErrorCache.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationStatusErrorCache.ctl"/>
				<Item Name="WPI_DriverStationStatusErrorCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationStatusErrorCache.vi"/>
				<Item Name="WPI_DriverStationStop Communication.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/WPI_DriverStationStop Communication.vi"/>
				<Item Name="WPI_EncoderCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderCache.vi"/>
				<Item Name="WPI_EncoderCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderCacheOp.ctl"/>
				<Item Name="WPI_EncoderClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderClose.vi"/>
				<Item Name="WPI_EncoderConfigureTimer.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderConfigureTimer.vi"/>
				<Item Name="WPI_EncoderDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderDevRef.ctl"/>
				<Item Name="WPI_EncoderDevRefToCounterDevRef.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderDevRefToCounterDevRef.vi"/>
				<Item Name="WPI_EncoderERRInvalidDistancePerCount.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderERRInvalidDistancePerCount.vi"/>
				<Item Name="WPI_EncoderGet.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderGet.vi"/>
				<Item Name="WPI_EncoderOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderOpen.vi"/>
				<Item Name="WPI_EncoderReset.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderReset.vi"/>
				<Item Name="WPI_EncoderStart.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderStart.vi"/>
				<Item Name="WPI_EncoderStop.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderStop.vi"/>
				<Item Name="WPI_EncoderType.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_EncoderType.ctl"/>
				<Item Name="WPI_Enhanced IOAccess Raw Cypress inputs.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/Enhanced IO/WPI_Enhanced IOAccess Raw Cypress inputs.vi"/>
				<Item Name="WPI_Enhanced IOAccess Raw Cypress outputs.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/Enhanced IO/WPI_Enhanced IOAccess Raw Cypress outputs.vi"/>
				<Item Name="WPI_Enhanced IOCompare Configs.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/Enhanced IO/WPI_Enhanced IOCompare Configs.vi"/>
				<Item Name="WPI_Enhanced IODataIn.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/Enhanced IO/WPI_Enhanced IODataIn.ctl"/>
				<Item Name="WPI_Enhanced IODataOut.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/Enhanced IO/WPI_Enhanced IODataOut.ctl"/>
				<Item Name="WPI_Enhanced IOEERCustomIO.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/Enhanced IO/WPI_Enhanced IOEERCustomIO.vi"/>
				<Item Name="WPI_Enhanced IORaw Output Operation Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DriverStation/Enhanced IO/WPI_Enhanced IORaw Output Operation Mode.ctl"/>
				<Item Name="WPI_ERRAcquireInvalidPWMChannelIdx.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_ERRAcquireInvalidPWMChannelIdx.vi"/>
				<Item Name="WPI_ERREncoderAllocate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Encoder/WPI_ERREncoderAllocate.vi"/>
				<Item Name="WPI_ERRFilterReserved.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/Filter/WPI_ERRFilterReserved.vi"/>
				<Item Name="WPI_ERRMotorControlCANJaguarDevice.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_ERRMotorControlCANJaguarDevice.vi"/>
				<Item Name="WPI_ERRMotorControlCANJaguarFirmware.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_ERRMotorControlCANJaguarFirmware.vi"/>
				<Item Name="WPI_ERRNoFreeCounter.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Counter/WPI_ERRNoFreeCounter.vi"/>
				<Item Name="WPI_ERRPwmChannelAllocated.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_ERRPwmChannelAllocated.vi"/>
				<Item Name="WPI_GyroChannelToAIChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Gyro/WPI_GyroChannelToAIChannel.vi"/>
				<Item Name="WPI_GyroClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Gyro/WPI_GyroClose.vi"/>
				<Item Name="WPI_GyroConstants.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Gyro/WPI_GyroConstants.vi"/>
				<Item Name="WPI_GyroDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Gyro/WPI_GyroDevRef.ctl"/>
				<Item Name="WPI_GyroDevRefToAnalogChannelDevRef.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Gyro/WPI_GyroDevRefToAnalogChannelDevRef.vi"/>
				<Item Name="WPI_GyroGetAngle.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Gyro/WPI_GyroGetAngle.vi"/>
				<Item Name="WPI_GyroOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Gyro/WPI_GyroOpen.vi"/>
				<Item Name="WPI_GyroReset.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Gyro/WPI_GyroReset.vi"/>
				<Item Name="WPI_GyroSetGain.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Gyro/WPI_GyroSetGain.vi"/>
				<Item Name="WPI_I2CClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/I2C/WPI_I2CClose.vi"/>
				<Item Name="WPI_I2CDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/I2C/WPI_I2CDevRef.ctl"/>
				<Item Name="WPI_I2CERRSensorMismatch.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/I2C/WPI_I2CERRSensorMismatch.vi"/>
				<Item Name="WPI_I2COpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/I2C/WPI_I2COpen.vi"/>
				<Item Name="WPI_I2CRead.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/I2C/WPI_I2CRead.vi"/>
				<Item Name="WPI_I2CWrite.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/I2C/WPI_I2CWrite.vi"/>
				<Item Name="WPI_JoystickButtonState.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickButtonState.ctl"/>
				<Item Name="WPI_JoystickCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickCache.vi"/>
				<Item Name="WPI_JoystickCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickCacheOp.ctl"/>
				<Item Name="WPI_JoystickClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickClose.vi"/>
				<Item Name="WPI_JoystickDeviceDataRaw.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickDeviceDataRaw.ctl"/>
				<Item Name="WPI_JoystickDeviceEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickDeviceEnum.ctl"/>
				<Item Name="WPI_JoystickDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickDevRef.ctl"/>
				<Item Name="WPI_JoystickGet.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickGet.vi"/>
				<Item Name="WPI_JoystickOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickOpen.vi"/>
				<Item Name="WPI_JoystickScaleTo100PlusMinRange.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Joystick/WPI_JoystickScaleTo100PlusMinRange.vi"/>
				<Item Name="WPI_MotorControlClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlClose.vi"/>
				<Item Name="WPI_MotorControlDeviceRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlDeviceRef.ctl"/>
				<Item Name="WPI_MotorControlDisable.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlDisable.vi"/>
				<Item Name="WPI_MotorControlDoesDevRefExist.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlDoesDevRefExist.vi"/>
				<Item Name="WPI_MotorControlGetSetRefNum.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlGetSetRefNum.vi"/>
				<Item Name="WPI_MotorControlOpen Jaguar.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen Jaguar.vi"/>
				<Item Name="WPI_MotorControlOpen Talon.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen Talon.vi"/>
				<Item Name="WPI_MotorControlOpen Victor.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen Victor.vi"/>
				<Item Name="WPI_MotorControlOpen&amp;ConfigurePWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen&amp;ConfigurePWM.vi"/>
				<Item Name="WPI_MotorControlOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpen.vi"/>
				<Item Name="WPI_MotorControlOpenCANJaguar.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlOpenCANJaguar.vi"/>
				<Item Name="WPI_MotorControlRefNum Compare.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlRefNum Compare.vi"/>
				<Item Name="WPI_MotorControlRefNum Registry Read Name.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlRefNum Registry Read Name.vi"/>
				<Item Name="WPI_MotorControlSafetyCheck.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlSafetyCheck.vi"/>
				<Item Name="WPI_MotorControlSafetyError.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlSafetyError.vi"/>
				<Item Name="WPI_MotorControlSafetyUpdate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlSafetyUpdate.vi"/>
				<Item Name="WPI_MotorControlScaleToPWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlScaleToPWM.vi"/>
				<Item Name="WPI_MotorControlSetOutput.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlSetOutput.vi"/>
				<Item Name="WPI_MotorControlToPWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlToPWM.vi"/>
				<Item Name="WPI_MotorControlTrackCANSemaphores.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/MotorControl/WPI_MotorControlTrackCANSemaphores.vi"/>
				<Item Name="WPI_PWMChannelCache.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMChannelCache.vi"/>
				<Item Name="WPI_PWMChannelCacheOp.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMChannelCacheOp.ctl"/>
				<Item Name="WPI_PWMClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMClose.vi"/>
				<Item Name="WPI_PWMConvertDeadbandMillisecondTimeTo8Bit.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMConvertDeadbandMillisecondTimeTo8Bit.vi"/>
				<Item Name="WPI_PWMDeadband.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMDeadband.ctl"/>
				<Item Name="WPI_PWMDeadband_ms.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMDeadband_ms.ctl"/>
				<Item Name="WPI_PWMDeviceRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMDeviceRef.ctl"/>
				<Item Name="WPI_PWMDoesDevRefExist.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMDoesDevRefExist.vi"/>
				<Item Name="WPI_PWMERRSetOnUnallocatedChannel.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMERRSetOnUnallocatedChannel.vi"/>
				<Item Name="WPI_PWMGetRangeScaleFactors.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMGetRangeScaleFactors.vi"/>
				<Item Name="WPI_PWMGetSetRefNum.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMGetSetRefNum.vi"/>
				<Item Name="WPI_PWMGetValue.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMGetValue.vi"/>
				<Item Name="WPI_PWMPeriodMultiplier.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMPeriodMultiplier.ctl"/>
				<Item Name="WPI_PWMRefNum Registry Read Name.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMRefNum Registry Read Name.vi"/>
				<Item Name="WPI_PWMSafetyCheck.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMSafetyCheck.vi"/>
				<Item Name="WPI_PWMSafetyError.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMSafetyError.vi"/>
				<Item Name="WPI_PWMSafetyUpdate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMSafetyUpdate.vi"/>
				<Item Name="WPI_PWMSetPeriodMultiplier.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMSetPeriodMultiplier.vi"/>
				<Item Name="WPI_PWMSetValue.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMSetValue.vi"/>
				<Item Name="WPI_PWMToDigitalModule.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMToDigitalModule.vi"/>
				<Item Name="WPI_PWMTransform_ConPane.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/WPI_PWMTransform_ConPane.ctl"/>
				<Item Name="WPI_ReserveFilterResource.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/DigitalInput/Filter/WPI_ReserveFilterResource.vi"/>
				<Item Name="WPI_RobotDriveArcadeDrive.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveArcadeDrive.vi"/>
				<Item Name="WPI_RobotDriveArcadeDrive_ButtonSpin.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveArcadeDrive_ButtonSpin.vi"/>
				<Item Name="WPI_RobotDriveArcadeDrive_RatioCurve.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveArcadeDrive_RatioCurve.vi"/>
				<Item Name="WPI_RobotDriveArcadeDrive_Standard(NoSaturation).vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveArcadeDrive_Standard(NoSaturation).vi"/>
				<Item Name="WPI_RobotDriveClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveClose.vi"/>
				<Item Name="WPI_RobotDriveDevRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveDevRef.ctl"/>
				<Item Name="WPI_RobotDriveDoesDevRefExist.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveDoesDevRefExist.vi"/>
				<Item Name="WPI_RobotDriveGetMotorControlReference.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveGetMotorControlReference.vi"/>
				<Item Name="WPI_RobotDriveGetSetRefNum.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveGetSetRefNum.vi"/>
				<Item Name="WPI_RobotDriveMotors.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveMotors.vi"/>
				<Item Name="WPI_RobotDriveMotorSelectorEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveMotorSelectorEnum.ctl"/>
				<Item Name="WPI_RobotDriveOpen2Motor.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveOpen2Motor.vi"/>
				<Item Name="WPI_RobotDriveOpen2MotorWithCANJaguar.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveOpen2MotorWithCANJaguar.vi"/>
				<Item Name="WPI_RobotDriveOpen2MotorWithExistingMotors.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveOpen2MotorWithExistingMotors.vi"/>
				<Item Name="WPI_RobotDriveOpen2MotorWithJaguar.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveOpen2MotorWithJaguar.vi"/>
				<Item Name="WPI_RobotDriveOpen2MotorWithTalon.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveOpen2MotorWithTalon.vi"/>
				<Item Name="WPI_RobotDriveOpen2MotorWithVictor.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveOpen2MotorWithVictor.vi"/>
				<Item Name="WPI_RobotDriveRefNum Registry Read Name.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveRefNum Registry Read Name.vi"/>
				<Item Name="WPI_RobotDriveSafetyCheck.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveSafetyCheck.vi"/>
				<Item Name="WPI_RobotDriveSafetyConfig.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveSafetyConfig.vi"/>
				<Item Name="WPI_RobotDriveSafetyError.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveSafetyError.vi"/>
				<Item Name="WPI_RobotDriveSafetyTest.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveSafetyTest.vi"/>
				<Item Name="WPI_RobotDriveSafetyUpdate.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveSafetyUpdate.vi"/>
				<Item Name="WPI_RobotDriveTankDrive.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/RobotDrive/WPI_RobotDriveTankDrive.vi"/>
				<Item Name="WPI_SafetyOutputCheckMenu.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/SafetyOutput/WPI_SafetyOutputCheckMenu.ctl"/>
				<Item Name="WPI_SafetyOutputConfigMenu.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/SafetyOutput/WPI_SafetyOutputConfigMenu.ctl"/>
				<Item Name="WPI_SafetyOutputEngine.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/SafetyOutput/WPI_SafetyOutputEngine.vi"/>
				<Item Name="WPI_SafetyOutputVIRefnumList.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/SafetyOutput/WPI_SafetyOutputVIRefnumList.vi"/>
				<Item Name="WPI_ServoClose.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/Servo/WPI_ServoClose.vi"/>
				<Item Name="WPI_ServoDeviceRef.ctl" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/Servo/WPI_ServoDeviceRef.ctl"/>
				<Item Name="WPI_ServoGetAngle.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/Servo/WPI_ServoGetAngle.vi"/>
				<Item Name="WPI_ServoGetPosition.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/Servo/WPI_ServoGetPosition.vi"/>
				<Item Name="WPI_ServoOpen.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/Servo/WPI_ServoOpen.vi"/>
				<Item Name="WPI_ServoSetAngle.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/Servo/WPI_ServoSetAngle.vi"/>
				<Item Name="WPI_ServoSetPosition.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/Servo/WPI_ServoSetPosition.vi"/>
				<Item Name="WPI_ServoToPWM.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/PWM/Servo/WPI_ServoToPWM.vi"/>
				<Item Name="WPI_UtilitiesERRGetRefNum.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Utilities/WPI_UtilitiesERRGetRefNum.vi"/>
				<Item Name="WPI_UtilitiesFRC Build Error.vi" Type="VI" URL="/&lt;vilib&gt;/Rock Robotics/WPI/Utilities/WPI_UtilitiesFRC Build Error.vi"/>
			</Item>
			<Item Name="ADXL345 I2C Axis.ctl" Type="VI" URL="../../../../../../../Program Files (x86)/National Instruments/LabVIEW 2013/examples/FRC/I2C/ADXL345 I2C/Driver/ADXL345 I2C Axis.ctl"/>
			<Item Name="ADXL345 I2C Open.vi" Type="VI" URL="../../../../../../../Program Files (x86)/National Instruments/LabVIEW 2013/examples/FRC/I2C/ADXL345 I2C/Driver/ADXL345 I2C Open.vi"/>
			<Item Name="ADXL345 I2C Range.ctl" Type="VI" URL="../../../../../../../Program Files (x86)/National Instruments/LabVIEW 2013/examples/FRC/I2C/ADXL345 I2C/Driver/ADXL345 I2C Range.ctl"/>
			<Item Name="ADXL345 I2C Read.vi" Type="VI" URL="../../../../../../../Program Files (x86)/National Instruments/LabVIEW 2013/examples/FRC/I2C/ADXL345 I2C/Driver/ADXL345 I2C Read.vi"/>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niFpgaNodeNameForErrorReporting.ctl" Type="VI" URL="/&lt;vilib&gt;/rvi/interface/common/niFpgaNodeNameForErrorReporting.ctl"/>
			<Item Name="niLvFpgaAdjustHostInterfaceError.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/niLvFpgaAdjustHostInterfaceError.vi"/>
			<Item Name="niLvFpgaFormatErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/niLvFpgaFormatErrorSource.vi"/>
			<Item Name="niLvFpgaWhatHappensToTopLevelVI.ctl" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/niLvFpgaWhatHappensToTopLevelVI.ctl"/>
			<Item Name="XDNodeRunTimeDep.lvlib" Type="Library" URL="/&lt;vilib&gt;/Platform/TimedLoop/XDataNode/XDNodeRunTimeDep.lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="My Real-Time Application" Type="{69A947D5-514E-4E75-818E-69657C0547D8}">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{68A32695-EABB-4644-940D-AA3B87D3AFB2}</Property>
				<Property Name="App_INI_GUID" Type="Str">{ED674199-DC84-4961-92F2-A30278DF02B8}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.ITESM.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E2F716C1-08BE-497A-8682-5254533D4E27}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">My Real-Time Application</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/NI_AB_TARGETNAME/My Real-Time Application</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{7F0A5283-C67D-4FB9-AFE1-7586C4F19352}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/c/ni-rt/startup</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">startup.rtexe</Property>
				<Property Name="Destination[0].path" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/c/ni-rt/startup/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{BB675B2F-DB69-482E-AE5D-5EBD5356D34C}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/RT CompactRIO Target/Debug.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">ITESM</Property>
				<Property Name="TgtF_fileDescription" Type="Str">My Real-Time Application</Property>
				<Property Name="TgtF_internalName" Type="Str">My Real-Time Application</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2014 ITESM</Property>
				<Property Name="TgtF_productName" Type="Str">My Real-Time Application</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{67E5C07A-0199-488C-A528-6BE472704459}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">startup.rtexe</Property>
			</Item>
		</Item>
	</Item>
</Project>
