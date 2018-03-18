
TYPE
	ProPosMode_type : 	STRUCT 
		wRel : BOOL;
		wAbs : BOOL;
		wTargetPos : DINT;
		wProVloc : UDINT;
	END_STRUCT;
	ProVelMode_type : 	STRUCT 
		wSetSpd : DINT;
	END_STRUCT;
	ElmoMotor : 	STRUCT 
		wCINH : BOOL;
		wQSP : BOOL;
		wProAclera : UDINT;
		wProDeclera : UDINT;
		wDrvMode : SINT;
		wOpMode1 : ProPosMode_type;
		wOpMode3 : ProVelMode_type;
		rActSpeed : DINT;
		rActCurrent : INT;
		rDrvMode : USINT;
		rEncCount : DINT;
		rErrCode : UINT;
		rCommOK : BOOL;
	END_STRUCT;
END_TYPE
