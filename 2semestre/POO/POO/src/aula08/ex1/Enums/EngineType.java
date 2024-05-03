package aula08.ex1.Enums;

public enum EngineType {
    FUEL, ELECTRIC;

    public static EngineType fromString(String string) {
        return switch (string.toUpperCase()) {
            case "FUEL", "Fuel", "fuel" -> FUEL;
            case "ELECTRIC", "Eletric", "eletric" -> ELECTRIC;
            default -> null;
        };
    }
}