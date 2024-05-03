package aula08.ex1.Vehicles;

import aula08.ex1.Enums.EngineType;

import java.util.Objects;

public class Taxi extends Car {
    private final int licenseNumber;

    public Taxi(Car car, int licenseNumber) {
        super(car);
        this.licenseNumber = licenseNumber;
    }

    public Taxi(Taxi taxi) {
        this(taxi.getCar(), taxi.getLicenseNumber());
    }

    public Car getCar() {
        return new Car(this.getPlate(), this.getBrand(), this.getModel(), this.getPotency(), this.getBoardNumber(), this.getTrunkSize(), this.getEngineType());
    }

    public int getLicenseNumber() {
        return this.licenseNumber;
    }

    @Override
    public String toString() {
        return "Taxi:" +
                "\n\tLicense Number: " + this.licenseNumber +
                ", Plate: '" + this.getPlate() + '\'' +
                ", Brand: '" + this.getBrand() + '\'' +
                ", Model: '" + this.getModel() + '\'' +
                ", Potency: " + this.getPotency() +
                ", Board Number: " + this.getBoardNumber() +
                ", Trunk Size: " + this.getTrunkSize() +
                ", Last Trip Km: " + this.lastTrip() +
                ", km: " + this.totalDistance() +
                String.format(", %s: %d", this.getEngineType() == EngineType.FUEL ? "Fuel Level" : "Battery", this.getEngineType() == EngineType.FUEL ? this.fuelLevel() : this.currentBatteryLvl()) +
                "\n";
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        Taxi taxi = (Taxi) o;
        return this.getLicenseNumber() == taxi.getLicenseNumber();
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), getLicenseNumber());
    }
}