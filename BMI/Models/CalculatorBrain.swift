//
//  CalculatorBrain.swift
//  BMI
//
//  Created by Malinga on 2021-08-17.
//

import Foundation

import UIKit


struct CalculatorBrain {
    
    var bmiValue: BMI? // object for get all methods and variables of  'BMI' Struct
    
    mutating func calculateBMI(height: Float, weight: Float){
        
       let calBmiValue =  (weight / pow(height,2)) //calculate BMI .... So "pow" mean power like 2*2,2*2*2...
                                           // and "pow(height,2)" height is value of we want to get power
                                          // "pow(height,2)" 2 is power we want

        switch calBmiValue { // check how is bmi
        case ...18.5: //check bmi is under the 18.5
            bmiValue = BMI(value: calBmiValue, advice: "Get more protein!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            
        case 18.5..<24.9: // check bmi under the 24.9
            bmiValue = BMI(value: calBmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
            
        case 24.9...: // check bmi over than 24.9
            bmiValue = BMI(value: calBmiValue, advice: "Get less protien!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
            
        default:
            print("error")
        }
    }
    
    func getBMIValue() -> String{ // return the bmi value
        // convert bmi value to the string with one decimal point
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiValue?.value ?? 0.0)
        
        //let bmiTo1DecimalPlace = String(format: "%.1f", bmiValue ?? 0.0) // this two question marks for check the value is nill or not if value is nill get value '0.0'
        
            return bmiTo1DecimalPlace //return the value
    }
    
    func getAdvice() -> String { // get advice
        return bmiValue?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor { //get bg Color
        return bmiValue?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
