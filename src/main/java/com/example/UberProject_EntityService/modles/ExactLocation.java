package com.example.UberProject_EntityService.modles;

import jakarta.persistence.Entity;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ExactLocation extends BaseClass{
    private double longitude;
    private double latitude;
}
