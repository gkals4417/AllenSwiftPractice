import UIKit

func factorialCal (number: Int) -> Int {
    var num = 1
    for i in 1...number {
       num = num * i
    }
    return Int(num)
}

factorialCal(number: 20)



func factorialF(num: Int) -> Int {
    if num <= 1 {
        return 1
    }
    return num * factorialF(num: num-1)
}

factorialF(num: 16)
