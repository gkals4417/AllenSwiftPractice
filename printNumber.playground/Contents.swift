import UIKit

func counting (userNumber: Int){
    for n in 1...userNumber {
        var number = n
        print(number)
        number -= 1
    }
    print("Stop counting")
}

counting(userNumber: 20)
