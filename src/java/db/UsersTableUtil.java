package db;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import users.entities.RegRequestEntity;
import users.entities.UserDataEntity;

public class UsersTableUtil {

    public static boolean getRequestByUsername(String username) {
        Session s = HibernateUtil.openSession();

        Criteria c = s.createCriteria(RegRequestEntity.class);
        RegRequestEntity req = (RegRequestEntity) c.add(Restrictions.eq("username", username)).uniqueResult();

        HibernateUtil.closeSession();

        return req != null;
    }

    public static UserDataEntity getByUsername(String username) {
        Session s = HibernateUtil.openSession();

        Criteria c = s.createCriteria(UserDataEntity.class);
        UserDataEntity ret = (UserDataEntity) c.add(Restrictions.eq("username", username)).uniqueResult();

        HibernateUtil.closeSession();

        return ret;
    }

    public static UserDataEntity getById(int id) {
        Session s = HibernateUtil.openSession();

        Criteria c = s.createCriteria(UserDataEntity.class);
        UserDataEntity ret = (UserDataEntity) c.add(Restrictions.eq("id", id)).uniqueResult();

        HibernateUtil.closeSession();

        return ret;
    }

    public static List<UserDataEntity> getByEmail(String email) {
        Session s = HibernateUtil.openSession();

        Criteria c = s.createCriteria(UserDataEntity.class);
        List<UserDataEntity> ret = c.add(Restrictions.eq("email", email)).list();

        HibernateUtil.closeSession();

        return ret;
    }

    public static void sendRequest(UserDataEntity newUserData) {
        RegRequestEntity req = new RegRequestEntity();
        req.setUsername(newUserData.getUsername());
        Session s = HibernateUtil.openSession();

        s.save(newUserData);
        s.save(req);

        HibernateUtil.closeSession();
    }

    public static void deleteUser(UserDataEntity userData) {
        Session s = HibernateUtil.openSession();

        s.delete(userData);

        HibernateUtil.closeSession();
    }

    public static void deleteRequest(RegRequestEntity req) {
        Session s = HibernateUtil.openSession();

        s.delete(req);

        HibernateUtil.closeSession();
    }

    public static boolean changePassword(String username, String oldPassword, String newPassword) {
        boolean ret = false;
        Session s = HibernateUtil.openSession();

        Criteria c = s.createCriteria(UserDataEntity.class);
        UserDataEntity u = (UserDataEntity) c.add(Restrictions.eq("username", username)).uniqueResult();

        if (u.getPassword().equals(oldPassword)) {
            u.setPassword(newPassword);
            s.save(u);
            ret = true;
        }

        HibernateUtil.closeSession();
        return ret;
    }

    public static List<UserDataEntity> getRequests() {
        List<UserDataEntity> ret;
        Session s = HibernateUtil.openSession();

        Query query = s.createQuery("select usr from UserDataEntity usr, RegRequestEntity req where usr.username=req.username");
        ret = query.list();

        HibernateUtil.closeSession();
        return ret;
    }

    public static void acceptRequest(UserDataEntity userData) {
        String username = userData.getUsername();

        Session s = HibernateUtil.openSession();

        Query query = s.createQuery("DELETE FROM RegRequestEntity req WHERE req.username=:un");
        query.setString("un", username);

        query.executeUpdate();

        HibernateUtil.closeSession();
    }

    public static void denyRequest(UserDataEntity userData) {
        String username = userData.getUsername();

        Session s = HibernateUtil.openSession();

        s.delete(userData);

        Query query = s.createQuery("DELETE FROM RegRequestEntity req WHERE req.username=:un");
        query.setString("un", username);

        query.executeUpdate();

        HibernateUtil.closeSession();
    }

    public static List<UserDataEntity> getUsers() {
        List<UserDataEntity> ret;

        Session s = HibernateUtil.openSession();

        Criteria c = s.createCriteria(UserDataEntity.class);
        ret = c.list();

        HibernateUtil.closeSession();

        return ret;
    }

    public static void updateUserData(UserDataEntity user) {
        Session s = HibernateUtil.openSession();

        s.update(user);

        HibernateUtil.closeSession();
    }

    public static void insertNewUser(UserDataEntity newUser) {
        Session s = HibernateUtil.openSession();

        s.save(newUser);

        HibernateUtil.closeSession();
    }
    
    
}
