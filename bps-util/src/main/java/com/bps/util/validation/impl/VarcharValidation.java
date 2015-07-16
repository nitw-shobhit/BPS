package com.bps.util.validation.impl;

import java.util.ArrayList;
import java.util.List;

import com.bps.util.validation.Result;
import com.bps.util.validation.Validation;

public class VarcharValidation implements Validation {
	
	private List<Integer> init() {
		return null;
	}
	
	@Override
	public Result validate(String fieldName, Object obj) {
		String fieldValue = (String) obj;
		List<Integer> validationTypes = init();
		if(validationTypes == null) {
			return new Result();
		}
		
		Result result = new Result();
		result.setErrorCodes(new ArrayList<String>());
		for(Integer validationType : validationTypes) {
			if(validationType == 1) {
				if(validateRequired(fieldValue)) {
					result.getErrorCodes().add("validation.001");
				}
			} else if(validationType == 2) {
				if(validateLength(fieldValue, getMaxLength())) {
					result.getErrorCodes().add("validation.002");
				}
			}
		}
		
		if(!result.getErrorCodes().isEmpty()) {
			result.setValid(false);
		}
		
		return result;
	}
	
	private int getMaxLength() {
		return 0;
	}
	
	private boolean validateRequired(String fieldValue) {
		if(fieldValue == null || "".equals(fieldValue)) {
			return false;
		}
		
		return true;
	}
	
	private boolean validateLength(String fieldValue, int maxLength) {
		if(!(fieldValue == null) && fieldValue.length() > maxLength) {
			return false;
		}
		
		return true;
	}
}
