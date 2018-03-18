
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Bsp_Alex.h"
#ifdef __cplusplus
	};
#endif
/* TODO: 在此添加评论 */
void Update_ElmoMotor(struct Update_ElmoMotor* inst)
{
	struct Set_Motor Set_Motor_0;
	struct Get_Motor Get_Motor_0;
	
	Set_Motor_0.wUs_Ident = inst->wUs_Ident;
	Set_Motor_0.wModule_Id = inst->wModule_Id;

	//MO
	Set_Motor_0.wCmd = Mo;
	Set_Motor_0.wValue = inst->ElmoMotor_0.wCINH;
	Set_Motor(&Set_Motor_0);
	inst->rErr_Code = Set_Motor_0.rErr_Code;
	
	//ST
	if(inst->ElmoMotor_0.wQSP == 1)
	{
		Set_Motor_0.wCmd = St;
		Set_Motor(&Set_Motor_0);
		inst->rErr_Code = Set_Motor_0.rErr_Code;
	}
	
	//AC
	Set_Motor_0.wCmd = Pa;
	Set_Motor_0.wValue = inst->ElmoMotor_0.wProAclera;
	Set_Motor(&Set_Motor_0);
	inst->rErr_Code = Set_Motor_0.rErr_Code;
	
	//DC
	Set_Motor_0.wCmd = Pa;
	Set_Motor_0.wValue = inst->ElmoMotor_0.wProDeclera;
	Set_Motor(&Set_Motor_0);
	inst->rErr_Code = Set_Motor_0.rErr_Code;
	
	//UM
	Set_Motor_0.wCmd = Um;
	Set_Motor_0.wValue = inst->ElmoMotor_0.wDrvMode;
	Set_Motor(&Set_Motor_0);
	inst->rErr_Code = Set_Motor_0.rErr_Code;
	
	//PR
	if(inst->ElmoMotor_0.wOpMode1.wRel == 1)
	{
		Set_Motor_0.wCmd = Pr;
		Set_Motor_0.wValue = inst->ElmoMotor_0.wOpMode1.wTargetPos;
		Set_Motor(&Set_Motor_0);
		inst->rErr_Code = Set_Motor_0.rErr_Code;
	}
	//PA
	else if(inst->ElmoMotor_0.wOpMode1.wAbs == 1)
	{
		Set_Motor_0.wCmd = Pa;
		Set_Motor_0.wValue = inst->ElmoMotor_0.wOpMode1.wTargetPos;
		Set_Motor(&Set_Motor_0);
		inst->rErr_Code = Set_Motor_0.rErr_Code;
	}	
	//SP
	Set_Motor_0.wCmd = Sp;
	Set_Motor_0.wValue = inst->ElmoMotor_0.wOpMode1.wProVloc;
	Set_Motor(&Set_Motor_0);
	inst->rErr_Code = Set_Motor_0.rErr_Code;
	
	//JV
	Set_Motor_0.wCmd = Jv;
	Set_Motor_0.wValue = inst->ElmoMotor_0.wOpMode3.wSetSpd;
	Set_Motor(&Set_Motor_0);
	inst->rErr_Code = Set_Motor_0.rErr_Code;
	
	Get_Motor_0.wUs_Ident = inst->wUs_Ident;
	Get_Motor_0.wQ_Ident = inst->wQ_Ident;
	Get_Motor_0.wModule_Id = inst->wModule_Id;
	Get_Motor(&Get_Motor_0);
	
	inst->ElmoMotor_0.rActSpeed = Get_Motor_0.rActSpeed;
	inst->ElmoMotor_0.rActCurrent = Get_Motor_0.rActCurrent;
	inst->ElmoMotor_0.rDrvMode = Get_Motor_0.rDrvMode;
	inst->ElmoMotor_0.rEncCount = Get_Motor_0.rEncCount;
}
