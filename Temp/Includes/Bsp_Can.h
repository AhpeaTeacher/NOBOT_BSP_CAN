/* AS生成头文件 */
/* 不能编辑! */
/* Bsp_Can  */

#ifndef _BSP_CAN_
#define _BSP_CAN_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG4
		#include "CAN_Lib.h"
#endif
#ifdef _SG3
		#include "CAN_Lib.h"
#endif
#ifdef _SGC
		#include "CAN_Lib.h"
#endif

/* 常量 */
#ifdef _REPLACE_CONST
 #define Mo 1U
 #define Bg 2U
 #define St 3U
 #define Ac 4U
 #define Dc 5U
 #define Um 6U
 #define Pa 7U
 #define Pr 8U
 #define Sp 9U
 #define Jv 10U
 #define Px 11U
 #define Iq 12U
 #define Ec 13U
 #define Vx 14U
#else
 #ifndef _GLOBAL_CONST
   #define _GLOBAL_CONST _WEAK const
 #endif
 _GLOBAL_CONST unsigned char Mo;
 _GLOBAL_CONST unsigned char Bg;
 _GLOBAL_CONST unsigned char St;
 _GLOBAL_CONST unsigned char Ac;
 _GLOBAL_CONST unsigned char Dc;
 _GLOBAL_CONST unsigned char Um;
 _GLOBAL_CONST unsigned char Pa;
 _GLOBAL_CONST unsigned char Pr;
 _GLOBAL_CONST unsigned char Sp;
 _GLOBAL_CONST unsigned char Jv;
 _GLOBAL_CONST unsigned char Px;
 _GLOBAL_CONST unsigned char Iq;
 _GLOBAL_CONST unsigned char Ec;
 _GLOBAL_CONST unsigned char Vx;
#endif




/* 数据类型和功能块的数据类型 */
typedef struct Can_Init
{
	/* VAR_INPUT (analog) */
	unsigned long wDevice;
	unsigned char wModule_Id[3];
	/* VAR_OUTPUT (analog) */
	unsigned long rUs_Ident;
	unsigned long rQ_Ident[3];
	unsigned short rErr_Code;
} Can_Init_typ;

typedef struct Can_Write
{
	/* VAR_INPUT (analog) */
	unsigned char wModule_Id;
	unsigned long wUs_Ident;
	unsigned long wData_Adr;
	unsigned char wLen;
	/* VAR_OUTPUT (analog) */
	unsigned short rErr_Code;
} Can_Write_typ;

typedef struct Set_Motor
{
	/* VAR_INPUT (analog) */
	unsigned char wCmd;
	unsigned char wModule_Id;
	unsigned long wUs_Ident;
	unsigned long wValue;
	/* VAR_OUTPUT (analog) */
	unsigned short rErr_Code;
} Set_Motor_typ;

typedef struct Get_Motor
{
	/* VAR_INPUT (analog) */
	unsigned long wQ_Ident;
	unsigned long wUs_Ident;
	unsigned char wModule_Id;
	/* VAR_OUTPUT (analog) */
	unsigned short rErr_Code;
	signed long rActSpeed;
	signed short rActCurrent;
	unsigned char rDrvMode;
	signed long rEncCount;
} Get_Motor_typ;



/* 函数和功能块属性 */
_BUR_PUBLIC void Can_Init(struct Can_Init* inst);
_BUR_PUBLIC void Can_Write(struct Can_Write* inst);
_BUR_PUBLIC void Set_Motor(struct Set_Motor* inst);
_BUR_PUBLIC void Get_Motor(struct Get_Motor* inst);
_BUR_PUBLIC plcbit Set_Arry(unsigned char* data_adr, unsigned char _a, unsigned char _b_, unsigned char _c, unsigned char _d, unsigned char _e, unsigned char _f, unsigned char _g, unsigned char _h);


#ifdef __cplusplus
};
#endif
#endif /* _BSP_CAN_ */

