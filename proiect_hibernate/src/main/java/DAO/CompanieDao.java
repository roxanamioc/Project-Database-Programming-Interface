    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import pojo.Companie;
import pojo.LocatieFabrica;
import java.util.Date;
import pojo.ModelTelefon;


/**
 *
 * @author vali
 */
public interface CompanieDao {
    public void adaugaCompanie (Companie comp);
    public List<Companie> afiseazaCompanie();
    public void modificaCompanie (Integer idCompanie, ModelTelefon modelTelefon, LocatieFabrica locatieFabrica, String nume, String fondator, int an);
    public void stergeCompanie (Companie comp);
}

    
