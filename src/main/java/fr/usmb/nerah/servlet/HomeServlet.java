package fr.usmb.nerah.servlet;

import fr.usmb.nerah.ejb.ColisEJB;
import fr.usmb.nerah.jpa.Colis;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class HomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @EJB
    private ColisEJB ejb;

    public HomeServlet() {
        // default constructor
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Colis> colisList = ejb.findAllColis();

        req.setAttribute("colis_list", colisList);
        req.getRequestDispatcher("pages/home.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
