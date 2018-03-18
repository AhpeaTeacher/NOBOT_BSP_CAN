$(AS_CPU_PATH)/iomap.br: \
	$(AS_PROJECT_CPU_PATH)/IoMap.iom \
	$(AS_PROJECT_CPU_PATH)/PvMap.vvm \
	$(AS_CPU_PATH)/ChannelConfiguration.xml \
	F:/NOBOTcode/AGV/AGV_V001/Physical/NOBOT_3s/Hardware.hw \
	$(AS_PROJECT_CPU_PATH)/Cpu.sw 
	@'$(AS_BIN_PATH)/BR.AS.IOMapBuilder.exe' '$(AS_PROJECT_CPU_PATH)/IoMap.iom' '$(AS_PROJECT_CPU_PATH)/PvMap.vvm'  -m '$(AS_CPU_PATH)/ConfigInfo.cfi' -g '$(AS_TEMP_PATH)/Objects/Declarations.lst' -x '$(AS_CPU_PATH)/ChannelConfiguration.xml' -v V1.00.0 -f '$(AS_CPU_PATH)' -iomap -o '$(AS_CPU_PATH)/iomap.br' -T SG4  -B D4.34 -P '$(AS_PROJECT_PATH)' -s 'Config1.X20CP0482'

-include $(AS_CPU_PATH)/Force.mak 
