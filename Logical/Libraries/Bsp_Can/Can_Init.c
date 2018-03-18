
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
void Can_Init(struct Can_Init* inst)
{
	CANopen_typ CANopen_0;
	CANqueue_typ CANqueue_0;
	CANqueue_typ CANqueue_1;
	CANqueue_typ CANqueue_2;
	CANquwr_typ CANquwr_0;
	
	USINT _data[] = {0x01, 0x00};
	
	CANopen_0.enable = 1;
	CANopen_0.baud_rate = 50;
	CANopen_0.cob_anz = 5;
	CANopen_0.device = (UDINT)inst->wDevice;
	CANopen_0.info = 0;
	CANopen(&CANopen_0);
	inst->rErr_Code = CANopen_0.status;
	inst->rUs_Ident = CANopen_0.us_ident;
	
	
	CANqueue_0.enable = 1;
	CANqueue_0.us_ident = CANopen_0.us_ident;
	CANqueue_0.can_id = 0x280 + inst->wModule_Id[0];;
	CANqueue_0.size = 20;
	CANqueue(&CANqueue_0);
	inst->rErr_Code = CANqueue_0.status;
	inst->rQ_Ident[0] = CANqueue_0.q_ident;
	
	CANqueue_1.enable = 1;
	CANqueue_1.us_ident = CANopen_0.us_ident;
	CANqueue_1.can_id = 0x280 + inst->wModule_Id[1];
	CANqueue_1.size = 20;
	CANqueue(&CANqueue_0);
	inst->rErr_Code = CANqueue_1.status;
	inst->rQ_Ident[1] = CANqueue_1.q_ident;
	
	CANqueue_2.enable = 1;
	CANqueue_2.us_ident = CANopen_0.us_ident;
	CANqueue_2.can_id = 0x280 + inst->wModule_Id[2];
	CANqueue_2.size = 20;
	CANqueue(&CANqueue_0);
	inst->rErr_Code = CANqueue_2.status;
	inst->rQ_Ident[2] = CANqueue_2.q_ident;
	
	CANquwr_0.enable = 1;
	CANquwr_0.us_ident = CANopen_0.us_ident;;
	CANquwr_0.can_id = 0x000;
	CANquwr_0.data_adr = (UDINT)_data;
	CANquwr_0.data_lng = 2;
	CANquwr(&CANquwr_0);
	inst->rErr_Code = CANquwr_0.status;
}
