package com.example.UberProject_EntityService.modles;

import jakarta.persistence.Entity;
import lombok.*;

import java.util.Random;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class OTP extends BaseClass{

    private String code;
    private String sendToNumber;
    public static OTP make(String phoneNumber){
        Random random = new Random();
        Integer code = random.nextInt(9000) + 1000;
        return OTP.builder().code(code.toString()).sendToNumber(phoneNumber).build();
    }
}
