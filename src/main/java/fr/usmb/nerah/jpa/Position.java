package fr.usmb.nerah.jpa;

import fr.usmb.nerah.enumerations.ColisState;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@NamedQueries({
    @NamedQuery(name = "findByLocation", query = "SELECT p FROM Position p WHERE p.latitude = :latitude AND p.longitude = :longitude")
})
public class Position implements Serializable {
    @Id
    @GeneratedValue
    private int id;

    @Temporal(TemporalType.TIMESTAMP)
    private Date entree;

    private double latitude;

    private double longitude;

    private String emplacement;

    private ColisState etatColis;

    public Position() {
        // default constructor
    }

    public Position(double latitude, double longitude, String emplacement, ColisState etatColis) {
        this.latitude = latitude;
        this.longitude = longitude;
        this.emplacement = emplacement;
        this.etatColis = etatColis;
    }

    public int getId() {
        return id;
    }

    public Date getEntree() {
        return entree;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String getEmplacement() {
        return emplacement;
    }

    public void setEmplacement(String emplacement) {
        this.emplacement = emplacement;
    }

    public ColisState getEtatColis() {
        return etatColis;
    }

    public void setEtatColis(ColisState etatColis) {
        this.etatColis = etatColis;
    }
}
