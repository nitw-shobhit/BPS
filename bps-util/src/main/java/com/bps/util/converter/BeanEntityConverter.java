package com.bps.util.converter;


public interface BeanEntityConverter<T, K> {

	K convertEntityToBean();
	
	T convertBeanToEntity();
}
