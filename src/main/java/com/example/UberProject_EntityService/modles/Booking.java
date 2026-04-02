package com.example.UberProject_EntityService.modles;



import com.example.UberProject_EntityService.Enums.BookingStatus;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Booking extends BaseClass{

    @OneToOne(cascade = CascadeType.ALL, mappedBy = "booking")
    private Review review;

    private Long distance;

    @Enumerated(EnumType.STRING)
    private BookingStatus bookingStatus;


//    @Temporal(TemporalType.TIMESTAMP)// not need to mention because hibernate will automatically detecte it.
    private LocalDateTime startTime;

//    @Temporal(TemporalType.TIMESTAMP)
    private LocalDateTime endTime;

    @ManyToOne
    private Passenger passenger;

    @ManyToOne
    @JsonIgnoreProperties({"drivers"})
    private Drivers drivers;

    @OneToOne(cascade = CascadeType.ALL)
    private ExactLocation startLocation;

    @OneToOne(cascade = CascadeType.ALL)
    private ExactLocation endLocation;


}

