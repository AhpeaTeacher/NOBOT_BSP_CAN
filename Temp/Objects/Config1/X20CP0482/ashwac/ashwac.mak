$(AS_CPU_PATH)/ashwac.br: \
	F:/NOBOTcode/AGV/AGV_V001/Physical/NOBOT_3s/Hardware.hw 
	@'$(AS_BIN_PATH)/BR.AS.SystemConfiguration.Builder.exe' 'F:/NOBOTcode/AGV/AGV_V001/Physical/NOBOT_3s/Hardware.hw'  -L 'AsIecCon: V*, astime: V*, Bsp_Alex: V*, Bsp_Can: V*, CAN_Lib: V*, operator: V*, runtime: V*' -c '$(AS_CONFIGURATION)' -Z 'Acp10Arnc0: 3.18.2, mapp: 1.62.1, UnitSystem: n.d, TextSystem: n.d, Connectivity: n.d, AAS: n.d' -o '$(AS_CPU_PATH)/ashwac.br' -T SG4  -M ARM  -B D4.34 -P '$(AS_PROJECT_PATH)' -s 'Config1' -secret '$(AS_PROJECT_PATH)_br.as.systemconfiguration.builder.exe'

-include $(AS_CPU_PATH)/Force.mak 
