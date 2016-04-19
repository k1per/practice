package utils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Created by korenev on 19.04.2016.
 */
public class HibernateInitializer implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce) {
        try {
            HibernateUtil.initialize();
        } catch (Throwable ex) {
            System.err.println("Error initializing hibernate :" + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public void contextDestroyed(ServletContextEvent sce) {
        HibernateUtil.shutdown();
    }
}
