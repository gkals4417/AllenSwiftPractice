import UIKit


func operation (number1: Double, number2: Double){
    let plus = number1 + number2
    let minus = number1 - number2
    let multiply = number1 * number2
    let dividing = number1 / number2
    
    print("\(number1) 더하기 \(number2)는 \(plus) 입니다.")
    print("\(number1) 빼기 \(number2)는 \(minus) 입니다.")
    print("\(number1) 곱하기 \(number2)는 \(multiply) 입니다.")
    print("\(number1) 나누기 \(number2)는 \(dividing) 입니다.")
}

operation(number1: 5.5, number2: 8.4)
