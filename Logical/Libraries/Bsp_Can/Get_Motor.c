
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Bsp_Can.h"
#ifdef __cplusplus
	};
#endif
/* TODO: 在此添加评论 */
void Get_Motor(struct Get_Motor* inst)
{
	CANrd_typ CANrd_0;
	struct Can_Write Can_Write_0;
	USINT _temp[4];
	USINT _cmd[4];
	USINT i;
	
	CANrd_0.enable = 1;
	CANrd_0.q_ident = inst->wQ_Ident;
	CANrd_0.data_adr = (UDINT)_temp;
	
	Can_Write_0.wUs_Ident = inst->wUs_Ident;
	Can_Write_0.wModule_Id = inst->wModule_Id;
	
	//查询JV
	Set_Arry(_cmd, 0x4A, 0x56, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
	Can_Write_0.wData_Adr = (UDINT)_cmd;
	Can_Write_0.wLen = 8;
	Can_Write(&Can_Write_0);
	//查询IQ
	Set_Arry(_cmd, 0x49, 0x51, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
	Can_Write_0.wData_Adr = (UDINT)_cmd;
	Can_Write_0.wLen = 4;
	Can_Write(&Can_Write_0);
	//查询UM
	Set_Arry(_cmd, 0x4A, 0x56, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
	Can_Write_0.wData_Adr = (UDINT)_cmd;
	Can_Write_0.wLen = 4;
	Can_Write(&Can_Write_0);
	//查询PX
	Set_Arry(_cmd, 0x4A, 0x56, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
	Can_Write_0.wData_Adr = (UDINT)_cmd;
	Can_Write_0.wLen = 4;
	Can_Write(&Can_Write_0);
	
	for(i=0; i<4; i++)
	{
		CANrd(&CANrd_0);
		inst->rErr_Code = CANrd_0.status;
		
		if((_temp[0]==0x4A) && (_temp[1]==0x56))//JV
			inst->rActSpeed = _temp[5] * 256 + _temp[4];
		else if((_temp[0]==0x49) && (_temp[1]==0x51))//IQ
			inst->rActCurrent = _temp[5] * 256 + _temp[4];
		else if((_temp[0]==0x55) && (_temp[1]==0x4D))//UM
			inst->rDrvMode = _temp[4];
		else if((_temp[0]==0x50) && (_temp[1]==0x58))//PX
			inst->rEncCount = _temp[5] * 256 + _temp[4];
		
	}
}

