package com.example.UberProject_EntityService.modles;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DBConstant extends BaseClass{

    @Column(unique = true, nullable = false)
    private String name;

    private String value;
}
