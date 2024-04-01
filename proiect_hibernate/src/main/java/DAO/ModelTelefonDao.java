    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import pojo.ModelTelefon;

/**
 *
 * @author vali
 */
public interface ModelTelefonDao {
    public void adaugaModelTelefon (ModelTelefon tel);
    public List<ModelTelefon> afiseazaModelTelefon();
    public void modificaModelTelefon (int idModelTelefon, String nume, float memorie_interna, float memorie_RAM, float dimensiune_ecran, int an_aparitie);
    public void stergeModelTelefon (ModelTelefon tel);
}

    
