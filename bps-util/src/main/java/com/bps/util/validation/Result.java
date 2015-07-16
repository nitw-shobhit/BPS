package com.bps.util.validation;

import java.util.List;

public class Result {

	private boolean valid;
	private List<String> errorCodes;
	
	public Result() {
		valid = true;
		errorCodes = null;
	}

	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
	public List<String> getErrorCodes() {
		return errorCodes;
	}
	public void setErrorCodes(List<String> errorCodes) {
		this.errorCodes = errorCodes;
	}
}
