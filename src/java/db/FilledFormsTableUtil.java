package db;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import users.author.entities.SurveyInfoEntity;
import users.author.entities.TestInfoEntity;
import users.entities.UserDataEntity;
import users.examinee.entities.FilledSurveyEntity;
import users.examinee.entities.FilledTestEntity;

public class FilledFormsTableUtil {
    
    public static void insertNewFilledTest(FilledTestEntity filledTestEntity) {
        Session s = HibernateUtil.openSession();
        
        s.persist(filledTestEntity);
        
        HibernateUtil.closeSession();
    }
    
    public static void insertNewFilledSurvey(FilledSurveyEntity filledSurveyEntity) {
        Session s = HibernateUtil.openSession();
        
        s.persist(filledSurveyEntity);
        
        HibernateUtil.closeSession();
    }

    public static FilledTestEntity getFilledTestForUser(UserDataEntity loggedUser, TestInfoEntity test) {
        Session s = HibernateUtil.openSession();
        
        Criteria c = s.createCriteria(FilledTestEntity.class);
        FilledTestEntity ret = (FilledTestEntity) c.add(Restrictions.eq("userData", loggedUser)).add(Restrictions.eq("form", test)).uniqueResult();
        
        HibernateUtil.closeSession();
        return ret;
    }

    public static FilledSurveyEntity getFilledSurveyForUser(UserDataEntity loggedUser, SurveyInfoEntity survey) {
        Session s = HibernateUtil.openSession();
        
        Criteria c = s.createCriteria(FilledSurveyEntity.class);
        FilledSurveyEntity ret = (FilledSurveyEntity) c.add(Restrictions.eq("userData", loggedUser)).add(Restrictions.eq("form", survey)).uniqueResult();
        
        HibernateUtil.closeSession();
        return ret;
    }

    
    
    

}
