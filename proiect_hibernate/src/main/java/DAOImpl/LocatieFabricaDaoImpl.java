/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOImpl;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.LocatieFabrica;
import DAO.LocatieFabricaDao;

/**
 *
 * @author vali
 */
public class LocatieFabricaDaoImpl implements LocatieFabricaDao{

    public void adaugaLocatieFabrica(LocatieFabrica locatieFabrica) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(locatieFabrica);
        transaction.commit();
        session.close();
    }

    public List<LocatieFabrica> afiseazaLocatieFabrica() {
        List<LocatieFabrica> listaLocatieFabrica = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.Query query = session.createQuery("From LocatieFabrica");
        listaLocatieFabrica = query.list();
        return listaLocatieFabrica;
    }

    public void modificaLocatieFabrica(int idLocatieFabrica, String oras, String tara) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        LocatieFabrica detaliilocatieFabrica = (LocatieFabrica) session.load(LocatieFabrica.class, idLocatieFabrica);
        detaliilocatieFabrica.setOras(oras);
        detaliilocatieFabrica.setTara(tara);
        session.update(detaliilocatieFabrica);
        transaction.commit();
        session.close();
    }

    public void stergeLocatieFabrica(LocatieFabrica locatieFabrica) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(locatieFabrica);
        transaction.commit();
        session.close();
    }
}
