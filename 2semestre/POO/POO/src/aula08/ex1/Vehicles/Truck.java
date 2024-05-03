package aula08.ex1.Vehicles;

import aula08.ex1.Interfaces.IFuelVehicle;

import java.util.Objects;

public class Truck extends Vehicle implements IFuelVehicle {
    private final int boardNumber;
    private final int weight;
    private final int maxWeight;
    private int fuelLevel;

    public Truck(String plate, String brand, String model, int potency, int boardNumber, int weight, int maxWeight) {
        super(plate, brand, model, potency);
        if (weight <= 0)
            throw new IllegalArgumentException("Weight must be positive.");
        if (maxWeight <= 0)
            throw new IllegalArgumentException("Max weight must be positive.");
        this.boardNumber = boardNumber;
        this.weight = weight;
        this.maxWeight = maxWeight;
        this.fuelLevel = 0;
    }

    public int getBoardNumber() {
        return this.boardNumber;
    }

    public int getWeight() {
        return this.weight;
    }

    public int getMaxWeight() {
        return this.maxWeight;
    }

    @Override
    public String toString() {
        return "Truck:" +
                "\n\tPlate: '" + this.getPlate() + '\'' +
                ", Brand: '" + this.getBrand() + '\'' +
                ", Model: '" + this.getModel() + '\'' +
                ", Potency: " + this.getPotency() +
                ", Board Number: " + this.getBoardNumber() +
                ", Weight: " + this.getWeight() +
                ", Max Weight: " + this.getMaxWeight() +
                ", Last Trip Km: " + this.lastTrip() +
                ", km: " + this.totalDistance() +
                ", Fuel Level: " + this.fuelLevel() +
                "\n";
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        Truck truck = (Truck) o;
        return this.getBoardNumber() == truck.getBoardNumber() && this.getWeight() == truck.getWeight() && this.getMaxWeight() == truck.getMaxWeight();
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), this.getBoardNumber(), this.getWeight(), this.getMaxWeight());
    }

    @Override
    public int fuelLevel() {
        return this.fuelLevel;
    }

    @Override
    public void fillTank(int level) {
        this.fuelLevel = level;
    }
}
