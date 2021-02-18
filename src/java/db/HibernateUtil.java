package db;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory SESSION_FACTORY;
    
    private static Session s = null;
    private static Transaction t;
    
    static {
        try {
            // Create the SessionFactory from standard (hibernate.cfg.xml) 
            // config file.
            Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
            StandardServiceRegistryBuilder sb = new StandardServiceRegistryBuilder();
            sb.applySettings(cfg.getProperties());
            StandardServiceRegistry sr = sb.build();
            SESSION_FACTORY = cfg.buildSessionFactory(sr);
            
        } catch (HibernateException ex) {
            // Log the exception. 
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    
    public static SessionFactory getSESSION_FACTORY() {
        return SESSION_FACTORY;
    }
    
    public static Session openSession() {
        if(s == null) s = SESSION_FACTORY.openSession();
        t = s.beginTransaction();
        return s;
    }
    
    public static void closeSession() {
        t.commit();
        //s.close();
    }

}
