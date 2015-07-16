package com.bps.util.validation;

import com.bps.util.validation.impl.BigintValidation;
import com.bps.util.validation.impl.TimestampValidation;
import com.bps.util.validation.impl.VarcharValidation;

public class ValidationFactory {

	private ValidationFactory() {
	}
	
	public static Validation generateValidator(FieldType fType) {
		if(fType.equals(FieldType.VARCHAR)) {
			return new VarcharValidation();
		} else if(fType.equals(FieldType.BIGINT)) {
			return new BigintValidation();
		} else if(fType.equals(FieldType.TIMESTAMP)) {
			return new TimestampValidation();
		} else {
			return null;
		}
	}
}
