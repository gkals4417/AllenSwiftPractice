//
//  main.swift
//  RandomBingo
//
//  Created by Hamin Jeong on 2022/03/06.
//
// main.swift가 무조건 처음 시작된다.
import Foundation


var randomNumber = Int.random(in: 1...100)
var myChoice: Int = 0

while true {

var userInput = readLine()
if let input = userInput {
    if let number = Int(input) {
        myChoice = number
    }
}

if randomNumber > myChoice {
    print("Up")
} else if randomNumber < myChoice {
    print("Down")
} else {
    print("Bingo")
    break
}
print("못맞추네 크크루삥뽕")
}
print("수고링양파링")
