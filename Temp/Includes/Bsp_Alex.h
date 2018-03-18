/* AS生成头文件 */
/* 不能编辑! */
/* Bsp_Alex  */

#ifndef _BSP_ALEX_
#define _BSP_ALEX_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG4
		#include "Bsp_Can.h"
#endif
#ifdef _SG3
		#include "Bsp_Can.h"
#endif
#ifdef _SGC
		#include "Bsp_Can.h"
#endif

/* 数据类型和功能块的数据类型 */
typedef struct ProPosMode_type
{	plcbit wRel;
	plcbit wAbs;
	signed long wTargetPos;
	unsigned long wProVloc;
} ProPosMode_type;

typedef struct ProVelMode_type
{	signed long wSetSpd;
} ProVelMode_type;

typedef struct ElmoMotor
{	plcbit wCINH;
	plcbit wQSP;
	unsigned long wProAclera;
	unsigned long wProDeclera;
	signed char wDrvMode;
	struct ProPosMode_type wOpMode1;
	struct ProVelMode_type wOpMode3;
	signed long rActSpeed;
	signed short rActCurrent;
	unsigned char rDrvMode;
	signed long rEncCount;
	unsigned short rErrCode;
	plcbit rCommOK;
} ElmoMotor;

typedef struct Update_ElmoMotor
{
	/* VAR_INPUT (analog) */
	struct ElmoMotor ElmoMotor_0;
	unsigned long wUs_Ident;
	unsigned long wQ_Ident;
	unsigned char wModule_Id;
	/* VAR_OUTPUT (analog) */
	unsigned short rErr_Code;
} Update_ElmoMotor_typ;



/* 函数和功能块属性 */
_BUR_PUBLIC void Update_ElmoMotor(struct Update_ElmoMotor* inst);


#ifdef __cplusplus
};
#endif
#endif /* _BSP_ALEX_ */

