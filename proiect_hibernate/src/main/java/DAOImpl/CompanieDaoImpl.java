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
import pojo.Companie;
import pojo.LocatieFabrica;
import DAO.CompanieDao;

import java.util.Date;
import pojo.ModelTelefon;


/**
 *
 * @author vali
 */
public class CompanieDaoImpl implements CompanieDao{

    public void adaugaCompanie(Companie comp) {
        	Session session = HibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();
            session.save(comp);
            transaction.commit();
            session.close();  
    }

    public List<Companie> afiseazaCompanie() {
        List<Companie> listaCompanie = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.Query query = session.createQuery("FROM Companie");
        listaCompanie = query.list();
        
        return listaCompanie;
    }

    public void modificaCompanie(Integer idCompanie, ModelTelefon modelTelefon, LocatieFabrica locatieFabrica, String nume, String fondator, int an_Infiintare) {
        	Session session = HibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();
            Companie detaliicompanie;
            detaliicompanie = (Companie) session.load(Companie.class, idCompanie);
            detaliicompanie.setModelTelefon(modelTelefon);
            detaliicompanie.setLocatieFabrica(locatieFabrica);
            detaliicompanie.setNume(nume);
            detaliicompanie.setFondator(fondator);
            detaliicompanie.setAn_Infiintare(an_Infiintare);
            session.update(detaliicompanie);
            transaction.commit();
            session.close();
        
    }

    public void stergeCompanie(Companie companie) {
        	Session session = HibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();
            session.delete(companie);
            transaction.commit();
            session.close();
    }
}

