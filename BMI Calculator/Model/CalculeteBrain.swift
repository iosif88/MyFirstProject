//
//  CalculeteBrain.swift
//  BMI Calculator
//
//  Created by Iosif Dubikovski on 5/7/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculeteBrain {
    
    var bmi:BMI?
    
    mutating func calculateBMI(height:Float, weight:Float)  {
        
        let bmiValue = weight/pow(height, 2)
      
    
        if bmiValue < 18.5 {
            bmi = BMI(advaice: "Eat more pies!", value: bmiValue, color: .blue)
        }else if bmiValue < 24.9{
            bmi = BMI(advaice: "Fit as a fiddle!", value: bmiValue, color: .green)
        }else if bmiValue > 24.9{
            bmi = BMI(advaice: "Eat less pise!", value: bmiValue, color: .red)
        }
        
    }
    
     func getBMIValue() -> String {
         let bmiToDecimalPlaces = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimalPlaces
    }
    
    func getAdvice() -> String {
        
        return bmi?.advaice ?? "No advice"
        
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .blue
    }
    
}


