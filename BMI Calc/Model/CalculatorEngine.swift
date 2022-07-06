//
//  CalculatorEngine.swift
//  BMI Calc
//
//  Created by Beavean on 06.07.2022.
//

import Foundation

struct CalculatorEngine {
    
    var bmi: Float = 0.0
    
    func getBMIValue() -> String {
        let bmiToOneDecimal = String(format: "%1f", bmi)
        return bmiToOneDecimal
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
}
