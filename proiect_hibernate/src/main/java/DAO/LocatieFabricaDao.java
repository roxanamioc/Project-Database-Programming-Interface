    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import pojo.LocatieFabrica;

/**
 *
 * @author vali
 */
public interface LocatieFabricaDao {
    public void adaugaLocatieFabrica (LocatieFabrica locatieFabrica);
    public List<LocatieFabrica> afiseazaLocatieFabrica();
    public void modificaLocatieFabrica (int idLocatieFabrica, String oras, String tara);
    public void stergeLocatieFabrica (LocatieFabrica locatieFabrica);
}

    
