package fr.usmb.nerah.servlet;

import fr.usmb.nerah.ejb.ColisEJB;
import fr.usmb.nerah.enumerations.ColisState;
import fr.usmb.nerah.jpa.Position;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdatePositionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @EJB
    private ColisEJB ejb;

    public UpdatePositionServlet() {
        // default constructor
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idPosition = Integer.parseInt(req.getParameter("id_position"));
        double latitude = Double.parseDouble(req.getParameter("latitude"));
        double longitude = Double.parseDouble(req.getParameter("longitude"));
        String emplacement = req.getParameter("emplacement");
        ColisState etatColis = ColisState.valueOf(req.getParameter("etat_colis"));

        ejb.updatePosition(idPosition, latitude, longitude, emplacement, etatColis);

        req.getRequestDispatcher("/edit_colis").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
