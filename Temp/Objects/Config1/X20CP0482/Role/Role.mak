UnmarkedObjectFolder := F:/NOBOTcode/Bsp_Can/Bsp_Can_V001/Physical/Config1/X20CP0482/AccessAndSecurity/UserRoleSystem
MarkedObjectFolder := F:/NOBOTcode/Bsp_Can/Bsp_Can_V001/Physical/Config1/X20CP0482/AccessAndSecurity/UserRoleSystem

$(AS_CPU_PATH)/Role.br: \
	$(AS_PROJECT_CPU_PATH)/AccessAndSecurity/UserRoleSystem/Role.role
	@'$(AS_BIN_PATH)/BR.AS.SystemConfiguration.Builder.exe'   '$(AS_PROJECT_CPU_PATH)/AccessAndSecurity/UserRoleSystem/Role.role' -o '$(AS_CPU_PATH)/Role.br' -zip -B D4.34 -z n.d -P '$(AS_PROJECT_PATH)' -c '$(AS_CONFIGURATION)' -secret '$(AS_PROJECT_PATH)_br.as.systemconfiguration.builder.exe'

