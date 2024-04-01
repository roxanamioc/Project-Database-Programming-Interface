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
import pojo.ModelTelefon;
import DAO.ModelTelefonDao;

/**
 *
 * @author vali
 */
public class ModelTelefonDaoImpl implements ModelTelefonDao{

    public void adaugaModelTelefon(ModelTelefon tel) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(tel);
        transaction.commit();
        session.close();
    }

    public List<ModelTelefon> afiseazaModelTelefon() {
        List<ModelTelefon> listaModelTelefon = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.query.Query query = session.createQuery("From ModelTelefon");
        listaModelTelefon = query.list();
        return listaModelTelefon;
    }

    public void modificaModelTelefon(int idModelTelefon, String nume, float memorie_Interna, float memorie_RAM, float dimensiune_Ecran, int an_Aparitie) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        ModelTelefon detaliimodeltelefon = (ModelTelefon) session.load(ModelTelefon.class, idModelTelefon);
        detaliimodeltelefon.setNume(nume);
        detaliimodeltelefon.setMemorie_Interna(memorie_Interna);
        detaliimodeltelefon.setMemorie_RAM(memorie_RAM);
        detaliimodeltelefon.setDimensiune_Ecran(dimensiune_Ecran);
        detaliimodeltelefon.setAn_Aparitie(an_Aparitie);
        session.update(detaliimodeltelefon);
        transaction.commit();
        session.close();
    }

    public void stergeModelTelefon(ModelTelefon modeltelefon) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(modeltelefon);
        transaction.commit();
        session.close();
    }
}
