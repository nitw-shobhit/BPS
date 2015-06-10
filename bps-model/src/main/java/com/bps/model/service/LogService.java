package com.bps.model.service;

import java.io.IOException;

public interface LogService<T> {

	void info(String message) throws IOException;
	
	void debug(String message) throws IOException;
	
	void trace(String message) throws IOException;
	
	void warn(String message) throws IOException;
	
	void fatal(String message, Exception ex) throws IOException;
	
	void error(String message, Exception ex) throws IOException;
}
