package dao;

import utils.HibernateUtil;
import model.User;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by korenev on 19.04.2016.
 */
public class Dao {

    public User getUserById(int id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        User user = null;
        try {
            session.beginTransaction();
            user = session.get(User.class,id);
            session.getTransaction().commit();

        }
        catch (Exception e){
            System.err.println("Error getting Users :" + e);
            session.getTransaction().rollback();
        }
        return user;
    }

    public int createUser(User user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.save(user);
            session.getTransaction().commit();
        } catch (Exception e) {
            System.err.println("Error creating User :" + e.getMessage());
            session.getTransaction().rollback();
        }
        return user.getUserId();
    }

    public List getUserByName(String name) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List users = null;
        try {
            session.beginTransaction();
            users = session
                    .createQuery("from users where userName like :name")
                    .setParameter("name", "%" + name + "%").list();
            session.getTransaction().commit();
        } catch (Exception e) {
            System.err.println("Error getting Users :" + e);
            session.getTransaction().rollback();
        }
        return users;
    }
}
