package com.example.UberProject_EntityService.modles;



import com.example.UberProject_EntityService.Enums.BookingStatus;
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
    private Drivers drivers;

    @OneToOne
    private ExactLocation startLocation;

    @OneToOne
    private ExactLocation endLocation;


}

