//
//  BMIcalculateManager.swift
//  BMIcalculate
//
//  Created by Hamin Jeong on 2022/05/28.
//

import UIKit

class BMIcalculateManager {
   
    var bmi: BMI?
    
    func calculateBMI(height: String, weight: String){
        guard let h = Double(height), let w = Double(weight) else {return}
        var bmiTemp = w / (h * h) * 10000
        var bmiNumber = round(bmiTemp * 10) / 10
        
        switch bmiNumber {
        case ..<18.6:
            bmi = BMI(result: bmiNumber, advice: "저체중" , resultColor: .blue)
        case 18.6..<23.0:
            bmi = BMI(result: bmiNumber, advice: "표준", resultColor: .green)
        case 23.5..<25.0:
            bmi = BMI(result: bmiNumber, advice: "과체중", resultColor: .systemPink)
        case 25.0..<30.0:
            bmi = BMI(result: bmiNumber, advice: "중도 비만", resultColor: .red)
        case 30...:
            bmi = BMI(result: bmiNumber, advice: "고도 비만", resultColor: .purple)
        default:
            bmi = BMI(result: 0.0, advice: "ERROR", resultColor: .white)
        }
    }
    
    
    func getBMIdata(height: String, weight: String) -> BMI {
        calculateBMI(height: height, weight: weight)
        return bmi ?? BMI(result: 0.0, advice: "ERROR", resultColor: .white)
    }
}
