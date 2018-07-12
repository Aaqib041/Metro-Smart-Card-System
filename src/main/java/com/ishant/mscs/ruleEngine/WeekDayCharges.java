package com.ishant.mscs.ruleEngine;

import com.ishant.mscs.constant.Constant;

public class WeekDayCharges implements CalculateCharges {
    @Override
    public double calculateCharges(int numberofStationTravelled) {
        return Constant.WEEKDAY_CHARGES * numberofStationTravelled;
    }
}
