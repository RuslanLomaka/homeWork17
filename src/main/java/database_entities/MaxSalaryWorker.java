package database_entities;

public class MaxSalaryWorker implements DataBaseEntity {
    private final String name;
    private final int salary;

    public MaxSalaryWorker(String name, int salary) {
        this.name = name;
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "Name: " + name + ", Salary: " + salary;
    }
}