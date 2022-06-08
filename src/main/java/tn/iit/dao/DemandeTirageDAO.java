package tn.iit.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import tn.iit.authentification.model.DemandeTirage;
import tn.iit.util.HibernateUtil;

/**
 * CRUD database operations
 * @author Ramesh Fadatare
 *
 */
public class DemandeTirageDAO {

    /**
     * Save DemandeTirage
     * @param DemandeTirage
     */
    public void saveDemandeTirage(DemandeTirage DemandeTirage) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.save(DemandeTirage);
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
     * Update DemandeTirage
     * @param DemandeTirage
     */
    public void updateDemandeTirage(DemandeTirage DemandeTirage) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.update(DemandeTirage);
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
     * Delete DemandeTirage
     * @param id
     */
    public void deleteDemandeTirage(int id) {

        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            // Delete a DemandeTirage object
            DemandeTirage DemandeTirage = session.get(DemandeTirage.class, id);
            if (DemandeTirage != null) {
                session.delete(DemandeTirage);
                System.out.println("DemandeTirage is deleted");
            }

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
     * Get DemandeTirage By ID
     * @param id
     * @return
     */
    public DemandeTirage getDemandeTirage(int id) {

        Transaction transaction = null;
        DemandeTirage DemandeTirage = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an DemandeTirage object
            DemandeTirage = session.get(DemandeTirage.class, id);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return DemandeTirage;
    }

    /**
     * Get all DemandeTirages
     * @return
     */
    @SuppressWarnings("unchecked")
    public List < DemandeTirage > getAllDemandeTirage() {

        Transaction transaction = null;
        List < DemandeTirage > listOfDemandeTirage = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an DemandeTirage object

            listOfDemandeTirage = session.createQuery("from DemandeTirage").getResultList();

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfDemandeTirage;
    }
}