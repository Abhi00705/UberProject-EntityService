package com.example.UberProject_EntityService.modles;

import com.example.UberProject_EntityService.Enums.CarType;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Car extends BaseClass{

    @Column(unique = true, nullable = false)
    private String plateNumber;

    @ManyToOne
    private Color color;

    private String brand;

    private String model;

    @Enumerated(value = EnumType.STRING)
    private CarType carType;

    @OneToOne
    private Drivers drivers;
}
