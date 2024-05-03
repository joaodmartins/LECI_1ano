package aula08.ex1.Vehicles;

import aula08.ex1.Enums.EngineType;
import aula08.ex1.Interfaces.IElectricVehicle;
import aula08.ex1.Interfaces.IFuelVehicle;

import java.util.Objects;

public class Bus extends Vehicle implements IFuelVehicle, IElectricVehicle {
    private final int boardNumber;
    private final int weight;
    private final int maxPassengers;
    private final EngineType engineType;

    private int fuelLevel;
    private int battery;

    public Bus(String plate, String brand, String model, int potency, int boardNumber, int weight, int maxPassengers, EngineType engineType) {
        super(plate, brand, model, potency);
        if (weight <= 0)
            throw new IllegalArgumentException("Weight must be positive.");
        if (maxPassengers <= 0)
            throw new IllegalArgumentException("Max passengers must be positive.");
        this.boardNumber = boardNumber;
        this.weight = weight;
        this.maxPassengers = maxPassengers;
        this.engineType = engineType;
    }

    public int getBoardNumber() {
        return this.boardNumber;
    }

    public int getWeight() {
        return this.weight;
    }

    public int getMaxPassengers() {
        return this.maxPassengers;
    }

    public EngineType getEngineType() {
        return this.engineType;
    }

    @Override
    public String toString() {
        return "Bus:" +
                "\n\tPlate: '" + this.getPlate() + '\'' +
                ", Brand: '" + this.getBrand() + '\'' +
                ", Model: '" + this.getModel() + '\'' +
                ", Potency: " + this.getPotency() +
                ", Board Number: " + this.getBoardNumber() +
                ", Weight: " + this.getWeight() +
                ", Max Passengers: " + this.getMaxPassengers() +
                ", Last Trip Km: " + this.lastTrip() +
                ", km:" + this.totalDistance() +
                String.format(", %s: %d", this.engineType == EngineType.FUEL ? "Fuel Level" : "Battery", this.engineType == EngineType.FUEL ? this.fuelLevel : this.battery) +
                "\n";
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        Bus bus = (Bus) o;
        return this.getBoardNumber() == bus.getBoardNumber() && this.getWeight() == bus.getWeight() && this.getMaxPassengers() == bus.getMaxPassengers() && this.getEngineType().equals(bus.getEngineType());
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), this.getBoardNumber(), this.getWeight(), this.getMaxPassengers());
    }

    @Override
    public int currentBatteryLvl() {
        return this.battery;
    }

    @Override
    public void charge(int percentage) {
        if (this.engineType == EngineType.FUEL)
            return;
        this.battery = percentage;
    }

    @Override
    public int fuelLevel() {
        return this.fuelLevel;
    }

    @Override
    public void fillTank(int level) {
        if (this.engineType == EngineType.ELECTRIC)
            return;
        this.fuelLevel = level;
    }
}
