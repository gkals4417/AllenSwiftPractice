//
//  SecondViewController.swift
//  BMIcalculator
//
//  Created by Hamin Jeong on 2022/05/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var bmiNumber: Double?
    var adviceString: String?
    var bmiColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
//MARK: ViewController의 데이터를 전달 받아서 화면에 표시
    func setup(){
        backButton.setTitle("다시 계산하기", for: .normal)
        backButton.layer.masksToBounds = true
        backButton.layer.cornerRadius = 5
        
        resultLabel.layer.masksToBounds = true
        resultLabel.layer.cornerRadius = 8
        resultLabel.backgroundColor = .gray
        
        guard let bmi = bmiNumber else {return} //옵셔널을 벗긴다.
        resultLabel.text = String(bmi) //Double의 bmi를 문자열로 변환시킨다.
        
        guard let advice = adviceString else {return}
        adviceLabel.text = advice
        
        guard let color = bmiColor else {return}
        resultLabel.backgroundColor = color
        //사실 advice나 color는 굳이 guard let을 사용할 필요는 없다.
    
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil) //self를 붙여도 안붙여도 상관 없다. 대신 사용하면 조금 더 명확해짐.
    }
}
