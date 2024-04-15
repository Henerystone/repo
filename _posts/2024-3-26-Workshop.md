---
toc: true
comments: true
layout: post
title: Wednesday Workshop
type: hax
courses: {csa: {week: 8}}
---

# Wednesday Workshop

## Question 2
- A
- A class is defined by its name, which should start with an uppercase letter. Fields hold the object's data, constructors initialize objects, and methods define its behavior. Access modifiers like `public`, `private`, and `protected` control access to these members, ensuring encapsulation. Inheritance allows a class to inherit fields and methods from another class, while interfaces define a set of methods that a class must implement. Inner classes are classes defined within other classes, enabling logical grouping and access to outer class members. Together, these features organize the structure, behavior, and relationships within Java classes, promoting code reusability and maintainability.

- B
```
public class BankAccount {
    private String accountHolder;
    private double balance;

    public void setAccountHolder(String name) {
        this.accountHolder = name;
    }

    public void deposit(double amount) {
        if (amount > 0) {
            this.balance += amount;
            System.out.println("Deposit of $" + amount + " successful.");
        } else {
            System.out.println("Deposit amount must be greater than zero.");
        }
    }

    public void withdraw(double amount) {
        if (amount > 0) {
            if (amount <= this.balance) {
                this.balance -= amount;
                System.out.println("Withdrawal of $" + amount + " successful.");
            } else {
                System.out.println("Insufficient funds. Cannot withdraw $" + amount);
            }
        } else {
            System.out.println("Withdrawal amount must be greater than zero.");
        }
    }

    public String getAccountHolder() {
        return this.accountHolder;
    }

    public double getBalance() {
        return this.balance;
    }

    public BankAccount(String accountHolder, double initialBalance) {
        this.accountHolder = accountHolder;
        if (initialBalance >= 0) {
            this.balance = initialBalance;
        } else {
            System.out.println("Initial balance cannot be negative.");
        }
    }

    public static void main(String[] args) {
        BankAccount account = new BankAccount("John Doe", 1000.0);
        System.out.println("Initial balance: $" + account.getBalance());
        account.deposit(500.0);
        System.out.println("Current balance after deposit: $" + account.getBalance());
        account.withdraw(200.0);
    }
}
```
## Question 4
- A
- A wrapper class is a class that encapsulates primitive data types into objects. This allows primitive data types to be used in situations where objects are required, such as in collections like ArrayList or when dealing with generic types. Wrapper classes provide methods to convert primitive data types to objects and vice versa.

- B
```
public class Temperature {
    private double temperatureCelsius;

    public Temperature(double temperatureCelsius) {
        this.temperatureCelsius = temperatureCelsius;
    }

    public double getTemperature() {
        return this.temperatureCelsius;
    }

    public void setTemperature(double value) {
        this.temperatureCelsius = value;
    }

    public double toFahrenheit() {
        return (this.temperatureCelsius * 9/5) + 32;
    }

    public static void main(String[] args) {
        Temperature temp = new Temperature(25.0);
        System.out.println("Temperature in Celsius: " + temp.getTemperature());
        System.out.println("Temperature in Fahrenheit: " + temp.toFahrenheit());

        temp.setTemperature(30.0);
        System.out.println("New temperature in Celsius: " + temp.getTemperature());
        System.out.println("New temperature in Fahrenheit: " + temp.toFahrenheit());
    }
}
```