
package Controller;

import DAO.ModelTelefonDao;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.ModelTelefon;
import DAOImpl.ModelTelefonDaoImpl;

/**
 *
 * @author vali
 */
public class ModelTelefonController extends HttpServlet {

    ModelTelefon telefon = new ModelTelefon();
    ModelTelefonDaoImpl modelTelefonDaoImpl = new ModelTelefonDaoImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("adaugaModelTelefon") != null) {
            String nume = request.getParameter("nume");
            float memorie_Interna = Float.parseFloat(request.getParameter("memorie_Interna"));
            float memorie_RAM = Float.parseFloat(request.getParameter("memorie_RAM"));
            float dimensiune_Ecran = Float.parseFloat(request.getParameter("dimensiune_Ecran"));
            int an_Aparitie = Integer.parseInt(request.getParameter("an_Aparitie"));
            telefon.setNume(nume);
            telefon.setMemorie_Interna(memorie_Interna);
            telefon.setMemorie_RAM(memorie_RAM);
            telefon.setDimensiune_Ecran(dimensiune_Ecran);
            telefon.setAn_Aparitie(an_Aparitie);
            modelTelefonDaoImpl.adaugaModelTelefon(telefon);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Model_Telefon.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("afiseazaModelTelefon") != null) {
            List<ModelTelefon> listaModelTelefon = new ArrayList();
            listaModelTelefon = modelTelefonDaoImpl.afiseazaModelTelefon();
            request.setAttribute("listaModelTelefon", listaModelTelefon);
            RequestDispatcher rd = request.getRequestDispatcher("tabela_Model_Telefon.jsp");
            rd.forward(request, response);
        }

        if (request.getParameter("modificaModelTelefon") != null) {
            int id1 = Integer.parseInt(request.getParameter("idModelTelefon"));
            String nume = request.getParameter("nume");
            float memorie_Interna = Float.parseFloat(request.getParameter("memorie_Interna"));
            float memorie_RAM = Float.parseFloat(request.getParameter("memorie_RAM"));
            float dimensiune_Ecran = Float.parseFloat(request.getParameter("dimensiune_Ecran"));
            int an_Aparitie = Integer.parseInt(request.getParameter("an_Aparitie"));
            modelTelefonDaoImpl.modificaModelTelefon(id1, nume, memorie_Interna, memorie_RAM, dimensiune_Ecran, an_Aparitie);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Model_Telefon.jsp");
            rd.forward(request, response);

        }

        if (request.getParameter("stergeModelTelefon") != null) {
            int id2 = Integer.parseInt(request.getParameter("idModelTelefon"));
            telefon.setIdModelTelefon(id2);
            modelTelefonDaoImpl.stergeModelTelefon(telefon);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Model_Telefon.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}


