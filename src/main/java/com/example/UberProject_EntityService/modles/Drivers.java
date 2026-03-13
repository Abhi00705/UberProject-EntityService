package com.example.UberProject_EntityService.modles;

import com.example.UberProject_EntityService.Enums.DriverApprovelStatus;
import jakarta.persistence.*;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import lombok.*;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import java.util.List;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Drivers extends BaseClass{

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String phoneNumber;

    private String licenseNumber;

    @OneToOne(mappedBy = "drivers")
    private Car car;

    @Enumerated(value = EnumType.STRING)
    private DriverApprovelStatus driverApprovelStatus;

    @OneToOne
    private ExactLocation lastKnownLocation;

    private String activeCity;

    @DecimalMin(value = "0.00", message = "Rating should be more then 0.00" )
    @DecimalMax(value = "5.00", message = "Rating should be less then 5.00" )
    private Double rating;

    private boolean isAvilable;

    @OneToMany(mappedBy = "drivers", fetch = FetchType.LAZY)
    @Fetch(value= FetchMode.SUBSELECT)
    private List<Booking> booking;


}

