
FUNCTION_BLOCK Update_ElmoMotor
	VAR_INPUT
		ElmoMotor_0 : {REDUND_UNREPLICABLE} ElmoMotor;
		wUs_Ident : UDINT;
		wQ_Ident : UDINT;
		wModule_Id : USINT;
	END_VAR
	VAR_OUTPUT
		rErr_Code : UINT;
	END_VAR
END_FUNCTION_BLOCK
