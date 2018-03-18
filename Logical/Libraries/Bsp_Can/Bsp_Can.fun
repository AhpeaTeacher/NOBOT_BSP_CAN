
FUNCTION_BLOCK Can_Init (*TODO: 在此添加评论*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		wDevice : UDINT;
		wModule_Id : ARRAY[0..2] OF USINT;
	END_VAR
	VAR_OUTPUT
		rUs_Ident : UDINT;
		rQ_Ident : ARRAY[0..2] OF UDINT;
		rErr_Code : UINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Can_Write (*TODO: 在此添加评论*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		wModule_Id : USINT;
		wUs_Ident : UDINT;
		wData_Adr : UDINT;
		wLen : USINT;
	END_VAR
	VAR_OUTPUT
		rErr_Code : UINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Set_Motor (*TODO: 在此添加评论*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		wCmd : USINT;
		wModule_Id : USINT;
		wUs_Ident : UDINT;
		wValue : UDINT;
	END_VAR
	VAR_OUTPUT
		rErr_Code : UINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Get_Motor (*TODO: 在此添加评论*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		wQ_Ident : UDINT;
		wUs_Ident : UDINT;
		wModule_Id : USINT;
	END_VAR
	VAR_OUTPUT
		rErr_Code : UINT;
		rActSpeed : DINT;
		rActCurrent : INT;
		rDrvMode : USINT;
		rEncCount : DINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION Set_Arry : BOOL
	VAR_INPUT
		data_adr : REFERENCE TO USINT;
		_a : USINT;
		_b_ : USINT;
		_c : USINT;
		_d : USINT;
		_e : USINT;
		_f : USINT;
		_g : USINT;
		_h : USINT;
	END_VAR
END_FUNCTION
