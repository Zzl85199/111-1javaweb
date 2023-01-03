package com.bfg.services;
import org.apache.turbine.util.TurbineConfig;

public class BfgListener implements javax.servlet.ServletContextListener {
    public void contextDestroyed(javax.servlet.ServletContextEvent sce) {
    }

    public void contextInitialized(javax.servlet.ServletContextEvent sce) {
	TurbineConfig tc = new TurbineConfig("../webapps/bfg",
					     "TurbineResources.properties");
	tc.init();
	
    }
}
