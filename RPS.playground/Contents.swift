import UIKit

let comNum = Int.random(in: 0...2)
let usrNum = 2

if comNum == usrNum {
    print("무승부입니다.")
}
else if comNum == 0 && usrNum == 2 {
    print("당신은 졌습니다.")
}
else if comNum == 1 && usrNum == 0 {
    print("당신은 졌습니다.")
}
else if comNum == 2 && usrNum == 1 {
    print("당신은 졌습니다.")
} else {
    print("당신은 이겼습니다.")
}


let usrNum1: Int

func rspGame (usrNum1: Int) {
    let comNum = Int.random(in: 0...2)
    if comNum == usrNum1 {
        print("무승부입니다.")
    }
    else if comNum == 0 && usrNum1 == 2 {
        print("당신은 졌습니다.")
    }
    else if comNum == 1 && usrNum1 == 0 {
        print("당신은 졌습니다.")
    }
    else if comNum == 2 && usrNum1 == 1 {
        print("당신은 졌습니다.")
    } else {
        print("당신은 이겼습니다.")
    }
}

rspGame(usrNum1: 2)
