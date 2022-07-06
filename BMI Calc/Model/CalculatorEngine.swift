//
//  CalculatorEngine.swift
//  BMI Calc
//
//  Created by Beavean on 06.07.2022.
//

import UIKit

struct CalculatorEngine {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiToOneDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimal
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi  = BMI(value: bmiValue, advice: "You are underweight", color: .blue )
        } else if bmiValue < 24.9 {
            bmi  = BMI(value: bmiValue, advice: "You are fit", color: .green )
        } else {
            bmi  = BMI(value: bmiValue, advice: "You are overweight", color: .orange )
        }
    }
    
}
