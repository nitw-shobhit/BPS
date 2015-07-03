package com.bps.util.elasticsearch;

import org.elasticsearch.client.Client;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.transport.InetSocketTransportAddress;

public class ElasticSearchUtils {
	
	private static final String ES_HOST = "127.0.0.1";
	private static final int ES_PORT = 9300;
	
	public static void create(String jsonObject, String index, String type, String id) {
//		Client client = getClient();
//		client.prepareIndex(index, type, id)
//		        .setSource(jsonObject).execute().actionGet();
//		client.close();
	}
	
	public static void update(String jsonObject, String index, String type, String id) {
//		Client client = getClient();
//		client.prepareUpdate(index, type, id)
//        		.setDoc(jsonObject).get();
//		client.close();
	}
	
	@SuppressWarnings("resource")
	public static TransportClient getClient() {
		return new TransportClient().addTransportAddress(new InetSocketTransportAddress(ES_HOST, ES_PORT));
	}
}
