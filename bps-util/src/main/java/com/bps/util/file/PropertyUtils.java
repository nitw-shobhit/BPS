package com.bps.util.file;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertyUtils {

	public static Properties loadProperties(String fileName) throws IOException {
		ClassLoader loader = Thread.currentThread().getContextClassLoader();
		Properties properties = new Properties();
		try(InputStream resourceStream = loader.getResourceAsStream(fileName)) {
			properties.load(resourceStream);
		}
		
		return properties;
	}
}
