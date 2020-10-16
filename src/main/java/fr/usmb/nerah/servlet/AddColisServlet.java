package fr.usmb.nerah.servlet;

import fr.usmb.nerah.ejb.ColisEJB;
import fr.usmb.nerah.enumerations.ColisState;
import fr.usmb.nerah.jpa.Colis;
import fr.usmb.nerah.jpa.Position;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddColisServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @EJB
    private ColisEJB colisEJB;

    public AddColisServlet() {
        // default constructor
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String valeur = req.getParameter("valeur");
        System.out.println(valeur);
        double poids = Double.parseDouble(req.getParameter("poids"));
        String origineEmp = req.getParameter("origine_emplacement");
        double origineLat = Double.parseDouble(req.getParameter("origine_latitude"));
        double origineLon = Double.parseDouble(req.getParameter("origine_longitude"));
        String destEmp = req.getParameter("destination_emplacement");
        double destLat = Double.parseDouble(req.getParameter("destination_latitude"));
        double destLon = Double.parseDouble(req.getParameter("destination_longitude"));

        Position origine = new Position(origineLat, origineLon, origineEmp, ColisState.ON_REGISTRATION);
        Position destination = new Position(destLat, destLon, destEmp, ColisState.ON_REGISTRATION);

        Colis newColis = colisEJB.addColis(valeur, poids, origine, destination);

        req.getRequestDispatcher("/more_info?id=" + newColis.getId()).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
