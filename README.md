# UberProject-EntityService

A reusable **Entity and Database Migration Library** for the Uber microservices project.
This module contains **JPA entities, repository interfaces, and Flyway database migration scripts** that can be shared across multiple services such as **Auth Service, Booking Service, and Passenger Service**.

The goal of this library is to **centralize database models and migrations** so that all services use the same schema and entity definitions.

---

## 📦 Features

* Centralized **JPA Entity Models**
* Shared **Repository Interfaces**
* **Flyway Migration Scripts** for database schema
* Easily reusable across multiple Spring Boot services
* Published to **mavenLocal** for local development

---

## 🏗️ Tech Stack

* Java
* Spring Boot
* Spring Data JPA
* Hibernate
* Flyway
* Maven / Gradle

---

## 📁 Project Structure

```
UberProject-EntityService
│
├── src/main/java
│   └── com/example/entityservice
│        ├── models
│        │     ├── Passenger.java
│        │     ├── Driver.java
│        │     └── Role.java
│        │
│        └── repositories
│              ├── PassengerRepository.java
│              └── DriverRepository.java
│
└── src/main/resources
     └── db/migration
           ├── V1__create_passenger_table.sql
           ├── V2__create_driver_table.sql
           └── V3__create_role_table.sql
```

---

## ⚙️ Installation (Local Development)

Build and publish the library to **mavenLocal**:

```bash
mvn clean install
```

or (Gradle)

```bash
gradlew publishToMavenLocal
```

---

## 📥 Usage in Other Services

Add the dependency in your service project.

### Gradle

```
implementation 'com.example:UberProject_EntityService:0.0.1-SNAPSHOT'
```

### Maven

```
<dependency>
    <groupId>com.example</groupId>
    <artifactId>UberProject_EntityService</artifactId>
    <version>0.0.1-SNAPSHOT</version>
</dependency>
```

---

## 🧩 Entity Scanning Configuration

When using this library in a Spring Boot service, ensure entities are scanned properly.

Example:

```java
@SpringBootApplication
@EntityScan(basePackages = {
        "com.example.entityservice"
})
@EnableJpaRepositories(basePackages = {
        "com.example.entityservice"
})
public class AuthServiceApplication {
}
```

---

## 🗄️ Database Migration

Flyway migration scripts are included in:

```
src/main/resources/db/migration
```

These scripts automatically run during application startup when Flyway is enabled.

---

## 🚀 Example Use Case

This library is used by:

* Auth Service
* Passenger Service
* Driver Service

to ensure **consistent entity definitions and database schema** across services.

---

## 🤝 Contributing

Contributions are welcome.
Feel free to fork the repository and create a pull request.

---

## 📄 License

This project is licensed under the MIT License.
