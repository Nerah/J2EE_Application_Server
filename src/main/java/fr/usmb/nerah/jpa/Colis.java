package fr.usmb.nerah.jpa;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@NamedQueries({
    @NamedQuery(name = "all", query = "SELECT c FROM Colis c")
})
public class Colis implements Serializable {
    @Id @GeneratedValue
    private int id;

    private String valeur;

    private double poids;

    @ManyToOne
    private Position origine;

    @ManyToOne
    private Position pos_actuelle;

    @ManyToOne
    private Position destination;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<Position> historique_positions = new ArrayList<>();

    public Colis() {

    }

    public Colis(String valeur, double poids, Position origine, Position destination) {
        this(valeur, poids, origine, origine, destination);
    }

    public Colis(String valeur, double poids, Position origine, Position pos_actuelle, Position destination) {
        this.valeur = valeur;
        this.poids = poids;
        this.origine = origine;
        this.pos_actuelle = pos_actuelle;
        this.destination = destination;
        this.historique_positions.add(origine);
    }

    public int getId() {
        return id;
    }

    public String getValeur() {
        return valeur;
    }

    public void setValeur(String valeur) {
        this.valeur = valeur;
    }

    public double getPoids() {
        return poids;
    }

    public void setPoids(double poids) {
        this.poids = poids;
    }

    public Position getOrigine() {
        return origine;
    }

    public void setOrigine(Position origine) {
        this.origine = origine;
    }

    public Position getPos_actuelle() {
        return pos_actuelle;
    }

    public void setPos_actuelle(Position pos_actuelle) {
        this.pos_actuelle = pos_actuelle;
    }

    public Position getDestination() {
        return destination;
    }

    public void setDestination(Position destination) {
        this.destination = destination;
    }

    public List<Position> getHistorique_positions() {
        return historique_positions;
    }

    public void moveTo(Position position) {
        this.pos_actuelle = position;
        this.historique_positions.add(position);
    }

    private Position getLastPosition() {
        return this.historique_positions.get(this.historique_positions.size() - 1);
    }

    public boolean isAtDestination() {
        return this.getLastPosition().equals(this.destination);
    }
}
