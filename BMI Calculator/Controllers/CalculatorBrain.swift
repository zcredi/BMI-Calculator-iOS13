//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Владислав on 22.11.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Нада кушац", color: UIColor.blue)
        } else if 18.5...24.9 ~= bmiValue {
            bmi = BMI(value: bmiValue, advice: "Вы идеальны", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Хватить кушац", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Нет данных"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
}
