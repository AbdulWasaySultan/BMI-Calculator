//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by ABDUR RAFAY on 19/10/2024.
//

import UIKit

struct CalculatorBrain{
    
    var bmi : BMI?
    
    func getBMIValue() -> String{
        
        let bmiToDecimalValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimalValue
    }
    // since func bmiValue is accessed in the end of the program in the calculateViewController file so its value has been updated and thats why its working properly because in the starting the calculateBMI has been triggered/called in calculateViewController.
    
    func getAdvice() -> String{
                  let myAdvice = bmi?.advice ?? "hi"
                   return myAdvice
       }
    
    func getColor() -> UIColor{
        
        let myColor = bmi?.color
        return myColor!
        
    }
    
    mutating func calculateBMI(weight : Float, height : Float){
        let bmiValue = weight / pow((height), 2)
       
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "EAT SOME MORE SNACKS 2!", color: UIColor.red)
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Normal,You are fit!", color: UIColor.blue)
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Normal,You are over weight!", color: UIColor.green)
        }
        
        
        //bmi = BMI(value: 10, advice: "EAT SOME MORE SNACKS 2!", color: .red)
        
        
    }
    
    
    
}


