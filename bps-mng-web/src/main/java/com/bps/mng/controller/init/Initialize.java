package com.bps.mng.controller.init;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import liquibase.exception.LiquibaseException;

import com.bps.core.db.DBFactory;
import com.bps.util.file.PropertyUtils;

/**
 * Servlet implementation class Initialize
 */
@WebServlet("/Initialize")
public class Initialize extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Initialize() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		Properties prop = null;
		try {
			prop = PropertyUtils.loadProperties("initialize.properties");
			
		} catch (IOException e) {
			e.printStackTrace();
			throw new ServletException("Liquibase : Configuration File Not found!");
		}
		
		if("true".equals(prop.getProperty("bps.setup.database"))) {
			try {
				DBFactory.generateOrUpdateDB();
			} catch (LiquibaseException e) {
				e.printStackTrace();
				throw new ServletException("Liquibase : " + e.getMessage());
			}
		} else if("false".equals(prop.getProperty("bps.setup.database"))) {
			System.out.println("Liquibase : DB Update Turned Off!");
		}
	}

}
