
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
void Set_Motor(struct Set_Motor* inst)
{
	USINT _data[8];
	struct Can_Write CanWrite_0;
	switch (inst->wCmd)
	{
		case Mo:	Set_Arry(_data, 0x4D, 0x4F, 0x00, 0x00, (USINT)inst->wValue, 0x00, 0x00, 0x00);
			CanWrite_0.wLen = 8;
			break;
		
		case Bg:	Set_Arry(_data, 0x42, 0x47, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			CanWrite_0.wLen = 4;		
			break;
		
		case St:	Set_Arry(_data, 0x53, 0x54, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			CanWrite_0.wLen = 4;		
			break;
		
		case Ac:	Set_Arry(_data, 0x41, 0x43, 0x00, 0x00, (USINT)(inst->wValue % 256 % 256), (USINT)(inst->wValue % 256 / 256), (USINT)(inst->wValue / 256 / 256), 0x00);
			CanWrite_0.wLen = 8;		
			break;
		
		case Dc:	Set_Arry(_data, 0x44, 0x43, 0x00, 0x00, (USINT)(inst->wValue % 256 % 256), (USINT)(inst->wValue % 256 / 256), (USINT)(inst->wValue / 256 / 256), 0x00);
			CanWrite_0.wLen = 8;		
			break;
		
		case Um:	Set_Arry(_data, 0x55, 0x4D, 0x00, 0x00, inst->wValue, 0x00, 0x00, 0x00);
			CanWrite_0.wLen = 8;		
			break;
		
		case Pa:	Set_Arry(_data, 0x50, 0x41, 0x00, 0x00, (USINT)(inst->wValue % 256), (USINT)(inst->wValue / 256), 0x00, 0x00);
			CanWrite_0.wLen = 8;		
			break;
		
		case Pr:	Set_Arry(_data, 0x50, 0x52, 0x00, 0x00, (USINT)(inst->wValue % 256), (USINT)(inst->wValue / 256), 0x00, 0x00);
			CanWrite_0.wLen = 8;		
			break;
		
		case Sp:	Set_Arry(_data, 0x53, 0x50, 0x00, 0x00, (USINT)(inst->wValue % 256), (USINT)(inst->wValue / 256), 0x00, 0x00);
			CanWrite_0.wLen = 8;		
			break;
		
		case Jv:	Set_Arry(_data, 0x4A, 0x56, 0x00, 0x00, (USINT)(inst->wValue % 256), (USINT)(inst->wValue / 256), 0x00, 0x00);
			CanWrite_0.wLen = 8;		
			break;
		
		case Px:	Set_Arry(_data, 0x50, 0x58, 0x00, 0x00, (USINT)(inst->wValue % 256), (USINT)(inst->wValue / 256), 0x00, 0x00);
			CanWrite_0.wLen = 8;		
			break;
		
		default:	break;
			
	}
	CanWrite_0.wUs_Ident = inst->wUs_Ident;
	CanWrite_0.wModule_Id = inst->wModule_Id;
	CanWrite_0.wData_Adr = (UDINT)_data;
	
	Can_Write(&CanWrite_0);
	
	inst->rErr_Code = CanWrite_0.rErr_Code;
	
	
}

BOOL Set_Arry(USINT *data_adr, USINT _a, USINT _b, USINT _c, USINT _d, USINT _e, USINT _f, USINT _g, USINT _h) 
{
	*(data_adr + 0) = _a;
	*(data_adr + 1) = _b;
	*(data_adr + 2) = _c;
	*(data_adr + 3) = _d;
	*(data_adr + 4) = _e;
	*(data_adr + 5) = _f;
	*(data_adr + 6) = _g;
	*(data_adr + 7) = _h;
	return 0;
}