package db;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import users.author.entities.QuestionEntity;
import users.author.entities.SurveyInfoEntity;
import users.author.entities.TestInfoEntity;
import users.entities.UserDataEntity;

public class FormsTablesUtil {
        
    public static void saveNewTest(TestInfoEntity newTest) {
        Session s = HibernateUtil.openSession();
        s.persist(newTest);
        HibernateUtil.closeSession();
    }
    
    public static void saveNewSurvey(SurveyInfoEntity newSurvey) {
        Session s = HibernateUtil.openSession();        
        s.persist(newSurvey);        
        HibernateUtil.closeSession();        
    }
    
    public static void removeTest(TestInfoEntity test) {
        Session s = HibernateUtil.openSession();        
        s.delete(test);
        HibernateUtil.closeSession();
    }
    
    public static void removeSurvey(SurveyInfoEntity survey) {
        Session s = HibernateUtil.openSession();        
        s.delete(survey);        
        HibernateUtil.closeSession();
    }
    
    public static List<TestInfoEntity> getTestsForUser(UserDataEntity loggedUser) {
        Session s = HibernateUtil.openSession();
        
        Query query;
        query = s.createQuery("SELECT tst FROM TestInfoEntity tst WHERE tst.userData=:usr");
        query.setParameter("usr", loggedUser);
        List<TestInfoEntity> ret = query.list();
        
        HibernateUtil.closeSession();
        
        return ret;
    }
    
    
    public static List<SurveyInfoEntity> getSurveysForUser(UserDataEntity loggedUser) {
        Session s = HibernateUtil.openSession();
        
        Query query = s.createQuery("SELECT surv FROM SurveyInfoEntity surv WHERE surv.userData=:usr");
        query.setParameter("usr", loggedUser);
        List<SurveyInfoEntity> ret = query.list();
        
        HibernateUtil.closeSession();
        
        return ret;
    }
    
    public static List<QuestionEntity> getTestQuestions(UserDataEntity loggedUser) {
        List<QuestionEntity> ret;
        Session s = HibernateUtil.openSession();
        
        Query query = s.createQuery("SELECT q FROM QuestionEntity q WHERE q.type='TEST_Q'");
        ret = query.list();
        
        HibernateUtil.closeSession();
        return ret;
    }
    
    public static List<QuestionEntity> getSurveyQuestions(UserDataEntity loggedUser) {
        List<QuestionEntity> ret;
        Session s = HibernateUtil.openSession();
        
        Query query = s.createQuery("SELECT q FROM QuestionEntity q WHERE q.type='SURVEY_Q'");
        ret = query.list();
        
        HibernateUtil.closeSession();
        return ret;
    }
    
    public static List<TestInfoEntity> getAllTests() {
        Session s = HibernateUtil.openSession();
        
        Criteria c = s.createCriteria(TestInfoEntity.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        List<TestInfoEntity> ret = c.list();
        
        HibernateUtil.closeSession();
        
        return ret;
    }
    
    public static List<SurveyInfoEntity> getAllSurveys() {
        Session s = HibernateUtil.openSession();
        
        Criteria c = s.createCriteria(SurveyInfoEntity.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        List<SurveyInfoEntity> ret = c.list();
        
        HibernateUtil.closeSession();
        
        return ret;
    }
}
