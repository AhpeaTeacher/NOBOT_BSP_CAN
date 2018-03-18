UnmarkedObjectFolder := F:/NOBOTcode/Bsp_Can/Bsp_Can_V001/Logical/Program
MarkedObjectFolder := F:/NOBOTcode/Bsp_Can/Bsp_Can_V001/Logical/Program

$(AS_CPU_PATH)/Program.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	$(AS_CPU_PATH)/Program/Program.ox
	@'$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe' '$(AS_CPU_PATH)/Program/Program.ox' -o '$(AS_CPU_PATH)/Program.br' -v V1.00.0 -f '$(AS_CPU_PATH)/NT.ofs' -offsetLT '$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs' -T SG4  -M ARM  -B D4.34 -extConstants -r Cyclic4 -p 2 -s 'Program' -L 'AsIecCon: V*, astime: V*, Bsp_Alex: V*, Bsp_Can: V*, CAN_Lib: V*, operator: V*, runtime: V*' -P '$(AS_PROJECT_PATH)' -secret '$(AS_PROJECT_PATH)_br.as.taskbuilder.exe'

$(AS_CPU_PATH)/Program/Program.ox: \
	$(AS_CPU_PATH)/Program/a.out
	@'$(AS_BIN_PATH)/BR.AS.Backend.exe' '$(AS_CPU_PATH)/Program/a.out' -o '$(AS_CPU_PATH)/Program/Program.ox' -T SG4 -M ARM -r Cyclic4   -G V4.1.2  -B D4.34 -secret '$(AS_PROJECT_PATH)_br.as.backend.exe'

$(AS_CPU_PATH)/Program/a.out: \
	$(AS_CPU_PATH)/Program/Cyclic.c.o \
	$(AS_CPU_PATH)/Program/Init.c.o \
	$(AS_CPU_PATH)/Program/Exit.c.o \
	$(AS_CPU_PATH)/Program/_bur_pvdef.c.o
	@'$(AS_BIN_PATH)/BR.AS.CCompiler.exe' -link '$(AS_CPU_PATH)/Program/Cyclic.c.o' '$(AS_CPU_PATH)/Program/Init.c.o' '$(AS_CPU_PATH)/Program/Exit.c.o' '$(AS_CPU_PATH)/Program/_bur_pvdef.c.o'  -o '$(AS_CPU_PATH)/Program/a.out'  -G V4.1.2  -T SG4  -M ARM  '-Wl,$(AS_TEMP_PATH)/Archives/$(AS_CONFIGURATION)/$(AS_PLC)/libBsp_Alex.a' '-Wl,$(AS_TEMP_PATH)/Archives/$(AS_CONFIGURATION)/$(AS_PLC)/libBsp_Can.a' '-Wl,$(AS_SYSTEM_PATH)/D0434/SG4/ARM/libCAN_Lib.a' '-Wl,$(AS_SYSTEM_PATH)/D0434/SG4/ARM/libAsIecCon.a' '-Wl,$(AS_SYSTEM_PATH)/D0434/SG4/ARM/libastime.a' '-Wl,$(AS_SYSTEM_PATH)/D0434/SG4/ARM/libruntime.a' '-Wl,$(AS_SYSTEM_PATH)/D0434/SG4/ARM/liboperator.a' -specs=ARMspecs_brelf -secret '$(AS_PROJECT_PATH)_br.as.ccompiler.exe'

$(AS_CPU_PATH)/Program/Cyclic.c.o: \
	$(AS_PROJECT_PATH)/Logical/Program/Cyclic.c \
	FORCE 
	@'$(AS_BIN_PATH)/BR.AS.CCompiler.exe' '$(AS_PROJECT_PATH)/Logical/Program/Cyclic.c' -o '$(AS_CPU_PATH)/Program/Cyclic.c.o'  -T SG4  -M ARM  -B D4.34 -G V4.1.2  -s 'Program' -t '$(AS_TEMP_PATH)' -specs=ARMspecs_brelf -I '$(AS_PROJECT_PATH)/Logical/Program' '$(AS_TEMP_PATH)/Includes/Program' '$(AS_TEMP_PATH)/Includes' -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -ggdb -Wall -include '$(AS_CPU_PATH)/Libraries.h' -x c -P '$(AS_PROJECT_PATH)' -secret '$(AS_PROJECT_PATH)_br.as.ccompiler.exe'

$(AS_CPU_PATH)/Program/Init.c.o: \
	$(AS_PROJECT_PATH)/Logical/Program/Init.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Can/Bsp_Can.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Alex/Bsp_Alex.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Alex/Types.typ \
	$(AS_PROJECT_PATH)/Logical/Program/Variables.var
	@'$(AS_BIN_PATH)/BR.AS.CCompiler.exe' '$(AS_PROJECT_PATH)/Logical/Program/Init.c' -o '$(AS_CPU_PATH)/Program/Init.c.o'  -T SG4  -M ARM  -B D4.34 -G V4.1.2  -s 'Program' -t '$(AS_TEMP_PATH)' -specs=ARMspecs_brelf -I '$(AS_PROJECT_PATH)/Logical/Program' '$(AS_TEMP_PATH)/Includes/Program' '$(AS_TEMP_PATH)/Includes' -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -ggdb -Wall -include '$(AS_CPU_PATH)/Libraries.h' -x c -P '$(AS_PROJECT_PATH)' -secret '$(AS_PROJECT_PATH)_br.as.ccompiler.exe'

$(AS_CPU_PATH)/Program/Exit.c.o: \
	$(AS_PROJECT_PATH)/Logical/Program/Exit.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Can/Bsp_Can.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Alex/Bsp_Alex.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Alex/Types.typ \
	$(AS_PROJECT_PATH)/Logical/Program/Variables.var
	@'$(AS_BIN_PATH)/BR.AS.CCompiler.exe' '$(AS_PROJECT_PATH)/Logical/Program/Exit.c' -o '$(AS_CPU_PATH)/Program/Exit.c.o'  -T SG4  -M ARM  -B D4.34 -G V4.1.2  -s 'Program' -t '$(AS_TEMP_PATH)' -specs=ARMspecs_brelf -I '$(AS_PROJECT_PATH)/Logical/Program' '$(AS_TEMP_PATH)/Includes/Program' '$(AS_TEMP_PATH)/Includes' -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -ggdb -Wall -include '$(AS_CPU_PATH)/Libraries.h' -x c -P '$(AS_PROJECT_PATH)' -secret '$(AS_PROJECT_PATH)_br.as.ccompiler.exe'

$(AS_CPU_PATH)/Program/_bur_pvdef.c.o: \
	FORCE  \
	$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Can/Bsp_Can.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Alex/Bsp_Alex.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/Bsp_Alex/Types.typ \
	$(AS_PROJECT_PATH)/Logical/Program/Variables.var
	@'$(AS_BIN_PATH)/BR.AS.CCompiler.exe' '$(AS_PATH)/AS/GnuInst/V4.1.2/arm-elf/include/bur/_bur_pvdef.c' -o '$(AS_CPU_PATH)/Program/_bur_pvdef.c.o'  -T SG4  -M ARM  -B D4.34 -G V4.1.2  -s 'Program' -t '$(AS_TEMP_PATH)' -specs=ARMspecs_brelf -I '$(AS_PROJECT_PATH)/Logical/Program' '$(AS_TEMP_PATH)/Includes/Program' '$(AS_TEMP_PATH)/Includes' -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -ggdb -Wall -include '$(AS_CPU_PATH)/Libraries.h' -P '$(AS_PROJECT_PATH)' 
 -secret '$(AS_PROJECT_PATH)_br.as.ccompiler.exe'

-include $(AS_CPU_PATH)/Force.mak 

