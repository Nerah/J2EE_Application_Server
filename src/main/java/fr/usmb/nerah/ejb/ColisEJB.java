package fr.usmb.nerah.ejb;

import fr.usmb.nerah.enumerations.ColisState;
import fr.usmb.nerah.jpa.Colis;
import fr.usmb.nerah.jpa.Position;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

@Stateless
@LocalBean
public class ColisEJB {
    @PersistenceContext
    private EntityManager em;

    public ColisEJB() {

    }

    public Colis addColis(String valeur, double poids, Position origine, Position destination) {
        Colis colis = new Colis(valeur, poids, origine, destination);
        em.persist(origine);
        em.persist(destination);
        em.persist(colis);
        return colis;
    }

    public List<Colis> findAllColis() {
        TypedQuery<Colis> rq = em.createNamedQuery("all", Colis.class);
        return rq.getResultList();
    }

    public Colis find(int id) {
        return em.find(Colis.class, id);
    }

    private List<Position> findPositionsInArea(Position position) {
        TypedQuery<Position> rq = em.createNamedQuery("findByLocation", Position.class)
                .setParameter("latitude", position.getLatitude())
                .setParameter("longitude", position.getLongitude());
        return rq.getResultList();
    }

    private Position determineNextPos(Position newPos) {
        List<Position> positions = this.findPositionsInArea(newPos);
        boolean locThere = positions.size() > 0;
        if (locThere) {
            return positions.get(0);
        } else {
            em.persist(newPos);
            return newPos;
        }
    }

    public Colis moveColisTo(int id, Position newPos) {
        Position nextPos = this.determineNextPos(newPos);
        nextPos.setEtatColis(newPos.getEtatColis());
        Colis colis = this.find(id);

        colis.moveTo(nextPos);

        return colis;
    }

    public Position updatePosition(int id, double latitude, double longitude, String emplacement, ColisState etatColis) {
        Position pos = em.find(Position.class, id);

        pos.setLatitude(latitude);
        pos.setLongitude(longitude);
        pos.setEmplacement(emplacement);
        pos.setEtatColis(etatColis);

        return pos;
    }
}
