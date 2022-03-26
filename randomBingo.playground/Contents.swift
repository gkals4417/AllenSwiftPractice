import UIKit


var randomNumber:Int = Int.random(in: 1...10)
var usrNumber:Int = 5

if randomNumber == usrNumber {
    print("Bingo")
} else if randomNumber > usrNumber {
    print("Up")
} else {
    print("Down")
}

func randomBingo (usrNumber1: Int) {
    let randomNumber1:Int = Int.random(in: 1...10)
    if randomNumber1 == usrNumber1 {
        print("Bingo")
    } else if randomNumber1 > usrNumber1 {
        print("Up")
    } else {
        print("Down")
    }
}

randomBingo(usrNumber1: 9)
