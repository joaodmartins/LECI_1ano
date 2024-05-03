package aula09.ex3;

import java.util.Objects;

public class MilitaryPlane extends Plane {
    private int numMissiles;

    public MilitaryPlane(String id, String manufacturer, String model, int year, int maxPassengers, double maxSpeed, int numMissiles) {
        super(id, manufacturer, model, year, maxPassengers, maxSpeed);
        this.numMissiles = numMissiles;
    }

    public int getNumMissiles() {
        return this.numMissiles;
    }

    public void setNumMissiles(int numMissiles) {
        this.numMissiles = numMissiles;
    }

    public String getPlaneType() {
        return "Military";
    }

    @Override
    public String toString() {
        return "Military Plane:" +
                "\n\tId: '" + super.getId() + '\'' +
                ", Manufacturer: '" + super.getManufacturer() + '\'' +
                ", Model: '" + super.getModel() + '\'' +
                ", Production Year: " + super.getProductionYear() +
                ", Max Passengers: " + super.getMaxPassengers() +
                ", Max Speed: " + super.getMaxSpeed() +
                ", Num Missiles: " + this.getNumMissiles() +
                ",\n";
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof MilitaryPlane plane)) return false;
        if (!super.equals(o)) return false;
        return this.getNumMissiles() == plane.getNumMissiles();
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), this.getNumMissiles());
    }
}