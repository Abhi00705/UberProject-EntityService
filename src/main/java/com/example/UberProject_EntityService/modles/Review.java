package com.example.UberProject_EntityService.modles;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Review extends BaseClass{

    private String review;
    private Integer rating;
    @OneToOne
    @JoinColumn(name = "booking_id")
    private Booking booking;
}

