import UIKit

func primeNumber (number: Int) {
    for i in 2..<number {
        if number % i == 0 {
            print("소수가 아닙니다.")
            break
        }
        print("소수입니다.")
        break
    }
}

primeNumber(number: 5)





func primeNumberCheck(num: Int) -> Bool {
    for i in 2..<num {
        if num % i == 0{
            return false
        }
    }
    return true
}

if primeNumberCheck(num: 12) {
    print("소수입니다.")
} else {
    print("소수가 아닙니다.")
}
