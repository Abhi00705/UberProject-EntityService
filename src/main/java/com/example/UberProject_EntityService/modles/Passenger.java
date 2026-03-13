package com.example.UberProject_EntityService.modles;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import lombok.*;

import java.util.List;



@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Passenger extends BaseClass {
    @Column(nullable=false)
    private String name;

    @Column(nullable = false)
    private String phoneNumber;

    @Column(nullable = false)
    private String emailId;

    @Column(nullable = false)
    private String password;


    @OneToMany(mappedBy = "passenger")
    private List<Booking> booking;

    @OneToOne
    private Booking activeBooking;

    @DecimalMin(value = "0.00", message = "Rating should be more then 0.00" )
    @DecimalMax(value = "5.00", message = "Rating should be less then 5.00" )
    private Double rating;

    @OneToOne
    private ExactLocation lastLocation;

//    @OneToOne
//    private ExactLocation home;
}

