package Controller;

import DAO.LocatieFabricaDao;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.LocatieFabrica;
import DAOImpl.LocatieFabricaDaoImpl;

/**
 *
 * @author vali
 */
public class LocatieFabricaController extends HttpServlet {

	LocatieFabrica locatieFabrica = new LocatieFabrica();
	LocatieFabricaDaoImpl locatieFabricaDaoImpl = new LocatieFabricaDaoImpl();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("adaugaLocatieFabrica") != null) {
			String oras = request.getParameter("oras");
			String tara = request.getParameter("tara");
			locatieFabrica.setOras(oras);
			locatieFabrica.setTara(tara);
			locatieFabricaDaoImpl.adaugaLocatieFabrica(locatieFabrica);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Locatie_Fabrica.jsp");
			rd.forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("afiseazaLocatieFabrica") != null) {
			List<LocatieFabrica> listaLocatieFabrica = new ArrayList();
			listaLocatieFabrica = locatieFabricaDaoImpl.afiseazaLocatieFabrica();
			request.setAttribute("listaLocatieFabrica", listaLocatieFabrica);
			RequestDispatcher rd = request.getRequestDispatcher("tabela_Locatie_Fabrica.jsp");
			rd.forward(request, response);
		}

		if (request.getParameter("modificaLocatieFabrica") != null) {
			int id1 = Integer.parseInt(request.getParameter("idLocatieFabrica"));
			String oras = request.getParameter("oras");
			String tara = request.getParameter("tara");
			locatieFabricaDaoImpl.modificaLocatieFabrica(id1, oras, tara);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Locatie_Fabrica.jsp");
			rd.forward(request, response);

		}

		if (request.getParameter("stergeLocatieFabrica") != null) {
			int id2 = Integer.parseInt(request.getParameter("idLocatieFabrica"));
			locatieFabrica.setIdLocatieFabrica(id2);
			locatieFabricaDaoImpl.stergeLocatieFabrica(locatieFabrica);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Locatie_Fabrica.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}