package tn.iit.dao;

import tn.iit.authentification.model.Test;
import tn.iit.util.HibernateUtil;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;


public class TestDAO {
	public static void saveUser(Test test) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.save(test);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    
    
    /**
     * Get User By ID
     * @param id
     * @return
     */
	    public Test getUser(int id) {
	
	        Transaction transaction = null;
	        Test t = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            // get an user object
	            t = session.get(Test.class, id);
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	        return t;
	    }
	    
	    /**
	     * Get User By ID
	     * @param id
	     * @return
	     */
		    public static Test findByLoginPwd(String login, String pwd) {
		
		    	System.out.println("findbyloginpwd");
		        Transaction transaction = null;
		        Test test = null;
		        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
		        	System.out.println("inside try");
		            // start a transaction
		            transaction = session.beginTransaction();
		            // get an user object
		            System.out.println("looking for user");
		            test = session.get(Test.class, login);
		            System.out.println("check!");
		            // commit transaction
		            transaction.commit();
		            System.out.println("comit maybe error");
		            System.out.println("yes!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		            return test;
		            
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
		    public static List < Test > getAllUser() {

		        Transaction transaction = null;
		        List < Test > listOfUser = null;
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