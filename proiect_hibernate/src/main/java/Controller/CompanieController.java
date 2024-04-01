package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.ModelTelefon;
import pojo.LocatieFabrica;
import pojo.Companie;
import DAOImpl.CompanieDaoImpl;
import DAOImpl.HibernateUtil;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.hibernate.Session;

/**
 *
 * @author vali
 */
public class CompanieController extends HttpServlet {

    Companie companie = new Companie();
    CompanieDaoImpl companieDaoImpl = new CompanieDaoImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("adaugaCompanie") != null) {
            Integer idModelTelefon = java.lang.Integer.parseInt(request.getParameter("idModelTelefon"));
            Integer idLocatieFabrica = java.lang.Integer.parseInt(request.getParameter("idLocatieFabrica"));
            Session session = HibernateUtil.getSessionFactory().openSession();
            ModelTelefon modelTelefon = (ModelTelefon) session.get(ModelTelefon.class, idModelTelefon);
            LocatieFabrica locatieFabrica = (LocatieFabrica) session.get(LocatieFabrica.class, idLocatieFabrica);

            String nume = request.getParameter("nume");
            String fondator = request.getParameter("fondator");
            int an_Infiintare = java.lang.Integer.parseInt(request.getParameter("an_Infiintare"));

            companie.setModelTelefon(modelTelefon);
            companie.setLocatieFabrica(locatieFabrica);
            companie.setNume(nume);
            companie.setFondator(fondator);
            companie.setAn_Infiintare(an_Infiintare);

            companieDaoImpl.adaugaCompanie(companie);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Companie.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("afiseazaCompanie") != null) {
            List<Companie> listaCompanie = new ArrayList();
            listaCompanie = companieDaoImpl.afiseazaCompanie();
            request.setAttribute("listaCompanie", listaCompanie);
            RequestDispatcher rd = request.getRequestDispatcher("tabela_Companie.jsp");
            rd.forward(request, response);
        }

        if (request.getParameter("modificaCompanie") != null) {
            Integer id1 = Integer.parseInt(request.getParameter("idCompanie"));
            Integer idModelTelefon = java.lang.Integer.parseInt(request.getParameter("idModelTelefon"));
            Integer idLocatieFabrica = java.lang.Integer.parseInt(request.getParameter("idLocatieFabrica"));
            Session session = HibernateUtil.getSessionFactory().openSession();
            ModelTelefon modelTelefon = (ModelTelefon) session.get(ModelTelefon.class, idModelTelefon);
            LocatieFabrica locatieFabrica = (LocatieFabrica) session.get(LocatieFabrica.class, idLocatieFabrica);

            String nume = request.getParameter("nume");
            String fondator = request.getParameter("fondator");
            int an_Infiintare = java.lang.Integer.parseInt(request.getParameter("an_Infiintare"));

            companieDaoImpl.modificaCompanie(id1, modelTelefon, locatieFabrica, nume, fondator, an_Infiintare);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Companie.jsp");
            rd.forward(request, response);
        }

        if (request.getParameter("stergeCompanie") != null) {
            Integer id2 = Integer.parseInt(request.getParameter("idCompanie"));
            companie.setIdCompanie(id2);
            companieDaoImpl.stergeCompanie(companie);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Companie.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}


