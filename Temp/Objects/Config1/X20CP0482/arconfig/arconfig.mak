$(AS_CPU_PATH)/arconfig.br: \
	F:/NOBOTcode/AGV/AGV_V001/Physical/NOBOT_3s/Hardware.hw \
	$(AS_PROJECT_CPU_PATH)/IoMap.iom \
	F:/NOBOTcode/AGV/AGV_V001/Physical/NOBOT_3s/Hardware.hw
	@'$(AS_BIN_PATH)/BR.AS.ConfigurationBuilder.exe' 'F:/NOBOTcode/AGV/AGV_V001/Physical/NOBOT_3s/Hardware.hw' '$(AS_PROJECT_CPU_PATH)/IoMap.iom'  -arconfig -c Config1 -v V1.00.0 -S 'X20CP0482' -Z 'Acp10Arnc0: 3.18.2, mapp: 1.62.1, UnitSystem: n.d, TextSystem: n.d, Connectivity: n.d, AAS: n.d' -o '$(AS_CPU_PATH)/arconfig.br' '$(AS_CPU_PATH)/ChannelConfiguration.xml' '$(AS_CPU_PATH)/HardwareConfiguration.xml' '$(AS_CPU_PATH)/ReActionTechnologyConfiguration.xml' -T SG4  -B D4.34 -P '$(AS_PROJECT_PATH)' -s 'Config1' -secret '$(AS_PROJECT_PATH)_br.as.configurationbuilder.exe'

-include $(AS_CPU_PATH)/Force.mak 
