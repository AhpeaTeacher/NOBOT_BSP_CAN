
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
void Can_Write(struct Can_Write* inst)
{
	CANquwr_typ CANquwr_0;
	
	CANquwr_0.enable = 1;
	CANquwr_0.us_ident = inst->wUs_Ident;
	CANquwr_0.can_id = 0x300 + inst->wModule_Id;
	CANquwr_0.data_adr = inst->wData_Adr;
	CANquwr_0.data_lng = inst->wLen;
	CANquwr(&CANquwr_0);
	
	inst->rErr_Code = CANquwr_0.status;
}
