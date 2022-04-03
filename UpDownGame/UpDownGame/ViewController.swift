//
//  ViewController.swift
//  UpDownGame
//
//  Created by Hamin Jeong on 2022/03/06.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLable: UILabel!
    @IBOutlet weak var numberLable: UILabel!
    //컴퓨터가 1~10 중 랜덤 선택
    var comNumber: Int = Int.random(in: 1...10)
    var myNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // mainLable에 "선택하세요" 표시
        // numberLable에 "" 표시
        mainLable.text = "선택하세요"
        numberLable.text = ""
        
        
    }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
        // 버튼의 숫자를 가져와야 한다.
        // 버튼을 눌렀을 때 numberLable이 변경되어야 한다.
        // 선택한 숫자를 변수에다가 저장한다 (선택사항)
        guard let numString = sender.currentTitle else {return}
        numberLable.text = numString
        guard let numInt = Int(numString) else {return}
        myNumber = numInt
        
    }
    
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        // mainLable이 다시 "선택하세요"로 변경
        // 컴퓨터의 숫자를 다시 선택
        // numberLable을 ""로 변경
        mainLable.text = "선택하세요"
        comNumber = Int.random(in: 1...10)
        numberLable.text = ""
        
        
    }
    
    

    @IBAction func selectBotton(_ sender: UIButton) {
        // 컴퓨터의 숫자와 내가 선택한 숫자를 비교해서 Up, Down, Bingo 여부를 mainLable에 표시
        // myNumber 변수를 만들지 않으려면, numberLable에 띄어진 값을 바로 읽어야 한다.
//        guard let numString = numberLable.text else {return}
//        guard let myNumber = Int(numString) else {return}
        
        
        if comNumber > myNumber {
            mainLable.text = "Up"
        } else if comNumber < myNumber {
            mainLable.text = "Down"
        } else {
            mainLable.text = "Bingo 😎"
        }
        
    }
}

