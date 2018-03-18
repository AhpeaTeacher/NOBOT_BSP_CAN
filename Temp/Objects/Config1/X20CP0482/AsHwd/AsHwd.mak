$(AS_CPU_PATH)/ashwd.br: \
	F:/NOBOTcode/AGV/AGV_V001/Physical/NOBOT_3s/Hardware.hw \
	$(AS_INSTALL_PATH)/Upgrades/Modified.txt
	@'$(AS_BIN_PATH)/BR.AS.ConfigurationBuilder.exe'  'F:/NOBOTcode/AGV/AGV_V001/Physical/NOBOT_3s/Hardware.hw' -v V1.00.0 -S 'X20CP0482' -o '$(AS_CPU_PATH)/ashwd.br' -T SG4 -B D4.34 -P '$(AS_PROJECT_PATH)' -c '$(AS_CONFIGURATION)' -zip -s X20CP0482 -hwd -secret '$(AS_PROJECT_PATH)_br.as.configurationbuilder.exe'

