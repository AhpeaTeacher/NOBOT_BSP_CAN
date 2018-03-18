
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _CYCLIC ProgramCyclic(void)
{
	if(Begin_Flag == 1)
	{
		Can_Init_0.wDevice = (UDINT)"IF7";
		Can_Init_0.wModule_Id[0] = 0x0B;
		Can_Init(&Can_Init_0);
			
		ElmoMotor_0.wCINH = 1;
		ElmoMotor_0.wDrvMode = 5;
	
		Update_ElmoMotor_0.ElmoMotor_0 = ElmoMotor_0;
		Update_ElmoMotor_0.wUs_Ident = Can_Init_0.rUs_Ident;
		Update_ElmoMotor_0.wQ_Ident = Can_Init_0.rQ_Ident[0];
		Update_ElmoMotor_0.wModule_Id = 0x0B;	
		
		Begin_Flag = 0;
	}	

	Update_ElmoMotor(&Update_ElmoMotor_0);
}
