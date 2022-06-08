package tn.iit.dao;

import tn.iit.authentification.model.Utilisateur;
import tn.iit.util.HibernateUtil;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;


public class UtilisateurDAO {
	public static void saveUser(Utilisateur user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.save(user);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public boolean validate(String userName, String password) {

        Transaction transaction = null;
        Utilisateur user = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            user = (Utilisateur) session.createQuery("FROM User U WHERE U.username = :userName").setParameter("userName", userName)
                .uniqueResult();

            if (user != null && user.getPwd().equals(password)) {
                return true;
            }
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return false;
    }
    
    /**
     * Get User By ID
     * @param id
     * @return
     */
	    public Utilisateur getUser(int id) {
	
	        Transaction transaction = null;
	        Utilisateur u = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // get an user object
	            u = session.get(Utilisateur.class, id);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	        return u;
	    }
	    
	    /**
	     * Get User By ID
	     * @param id
	     * @return
	     */
		    public static Utilisateur findByLoginPwd(String login, String pwd) {
		
		    	System.out.println("findbyloginpwd");
		        Transaction transaction = null;
		        Utilisateur u = null;
		        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
		        	System.out.println("inside try");
		            // start a transaction
		            transaction = session.beginTransaction();
		            // get an user object
		            System.out.println("looking for user");
		            u = session.get(Utilisateur.class, login);
		            System.out.println("check!");
		            // commit transaction
		            transaction.commit();
		            System.out.println("comit maybe error");
		            System.out.println("yes!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		            return u;
		            
		            /*
		            if(u!= null) {
		            	String password =u.getPwd();
		            	if(password == pwd) {
		            		return u;
		            	}
		            }*/
		            
		            
		        } catch (Exception e) {
		        	
		            if (transaction != null) {
		                transaction.rollback();
		            }
		            e.printStackTrace();
		        }
		        
		        return null;
		    }
		    
		    
		    /**
		     * Get all Users
		     * @return
		     */
		    @SuppressWarnings("unchecked")
		    public static List < Utilisateur > getAllUser() {

		        Transaction transaction = null;
		        List < Utilisateur > listOfUser = null;
		        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
		            // start a transaction
		            transaction = session.beginTransaction();
		            // get an user object

		            listOfUser = session.createQuery("from Utilisateur").getResultList();

		            // commit transaction
		            transaction.commit();
		        } catch (Exception e) {
		            if (transaction != null) {
		                transaction.rollback();
		            }
		            e.printStackTrace();
		        }
		        return listOfUser;
		    }
	}