UnmarkedObjectFolder := F:/NOBOTcode/Bsp_Can/Bsp_Can_V001/Logical/Libraries/Bsp_Alex
MarkedObjectFolder := F:/NOBOTcode/Bsp_Can/Bsp_Can_V001/Logical/Libraries/Bsp_Alex

$(AS_CPU_PATH)/Bsp_Alex.br: \
	$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Alex/ANSIC.lby \
	$(AS_CPU_PATH)/Bsp_Alex/Bsp_Alex.ox
	@'$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe' '$(AS_CPU_PATH)/Bsp_Alex/Bsp_Alex.ox' -o '$(AS_CPU_PATH)/Bsp_Alex.br' -v V1.00.0 -f '$(AS_CPU_PATH)/NT.ofs' -offsetLT '$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs' -T SG4  -M ARM  -B D4.34 -extConstants -d 'Bsp_Can: V* - V*' -r Library -s 'Libraries.Bsp_Alex' -L 'AsIecCon: V*, astime: V*, Bsp_Alex: V*, Bsp_Can: V*, CAN_Lib: V*, operator: V*, runtime: V*' -P '$(AS_PROJECT_PATH)' -secret '$(AS_PROJECT_PATH)_br.as.taskbuilder.exe'

$(AS_CPU_PATH)/Bsp_Alex/Bsp_Alex.ox: \
	$(AS_CPU_PATH)/Bsp_Alex/a.out
	@'$(AS_BIN_PATH)/BR.AS.Backend.exe' '$(AS_CPU_PATH)/Bsp_Alex/a.out' -o '$(AS_CPU_PATH)/Bsp_Alex/Bsp_Alex.ox' -T SG4 -M ARM -r Library   -G V4.1.2  -B D4.34 -secret '$(AS_PROJECT_PATH)_br.as.backend.exe'

$(AS_CPU_PATH)/Bsp_Alex/a.out: \
	$(AS_CPU_PATH)/Bsp_Alex/Update_ElmoMotor.c.o
	@'$(AS_BIN_PATH)/BR.AS.CCompiler.exe' -link '$(AS_CPU_PATH)/Bsp_Alex/Update_ElmoMotor.c.o'  -o '$(AS_CPU_PATH)/Bsp_Alex/a.out'  '-Wl,--version-script=$(AS_TEMP_PATH)/Archives/$(AS_CONFIGURATION)/$(AS_PLC)/libBsp_Alex.expmap'  -G V4.1.2  -T SG4  -M ARM  '-Wl,$(AS_TEMP_PATH)/Archives/$(AS_CONFIGURATION)/$(AS_PLC)/libBsp_Can.a' '-Wl,$(AS_SYSTEM_PATH)/D0434/SG4/ARM/libCAN_Lib.a' '-Wl,$(AS_SYSTEM_PATH)/D0434/SG4/ARM/libAsIecCon.a' '-Wl,$(AS_SYSTEM_PATH)/D0434/SG4/ARM/libastime.a' '-Wl,$(AS_SYSTEM_PATH)/D0434/SG4/ARM/libruntime.a' '-Wl,$(AS_SYSTEM_PATH)/D0434/SG4/ARM/liboperator.a' -specs=ARMspecs_brelf -secret '$(AS_PROJECT_PATH)_br.as.ccompiler.exe'

$(AS_CPU_PATH)/Bsp_Alex/Update_ElmoMotor.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Alex/Update_ElmoMotor.c \
	FORCE 
	@'$(AS_BIN_PATH)/BR.AS.CCompiler.exe' '$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Alex/Update_ElmoMotor.c' -o '$(AS_CPU_PATH)/Bsp_Alex/Update_ElmoMotor.c.o'  -T SG4  -M ARM  -B D4.34 -G V4.1.2  -s 'Libraries.Bsp_Alex' -t '$(AS_TEMP_PATH)' -specs=ARMspecs_brelf -r Library -I '$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Alex' '$(AS_TEMP_PATH)/Includes/Libraries/Bsp_Alex' '$(AS_TEMP_PATH)/Includes' -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -ggdb -Wall -include '$(AS_CPU_PATH)/Libraries.h' -D _BSP_ALEX_EXPORT -x c -P '$(AS_PROJECT_PATH)' -secret '$(AS_PROJECT_PATH)_br.as.ccompiler.exe'

-include $(AS_CPU_PATH)/Force.mak 



FORCE: