package fr.usmb.nerah.servlet;

import fr.usmb.nerah.ejb.ColisEJB;
import fr.usmb.nerah.enumerations.ColisState;
import fr.usmb.nerah.jpa.Colis;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EditColisServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @EJB
    private ColisEJB ejb;

    public EditColisServlet() {
        // default constructor
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Colis colis = ejb.find(id);

        req.setAttribute("colis", colis);
        req.getRequestDispatcher("pages/editColis.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
