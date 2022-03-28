import UIKit

for i in 1...100 {
    if i % 3 == 0 {
        print("3의 배수 발견 : \(i)")
    }
}


//또다른 방법

for i in 1...100 {
    if i % 3 != 0 {
        continue
    }
    print("3의 배수 발견 : \(i)")
}
