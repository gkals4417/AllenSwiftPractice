import UIKit

func average(number1:Double, number2:Double, number3:Double){
    let plus = number1 + number2 + number3
    let average = (number1 + number2 + number3) / 3
    
    print("총합: \(plus)")
    print("평균: \(average)")
}

average(number1: 5, number2: 9, number3: 44)
