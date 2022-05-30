//
//  SecondViewController.swift
//  BMIcalculate
//
//  Created by Hamin Jeong on 2022/05/28.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiSetup()
    }
    
    func uiSetup(){
        view.backgroundColor = .lightGray
        
        resultLabel.font = .boldSystemFont(ofSize: 23)
        resultLabel.layer.masksToBounds = true
        resultLabel.layer.cornerRadius = 8
        
        adviceLabel.font = .systemFont(ofSize: 18)
        
        backButton.setTitle("다시 계산하기", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.titleLabel?.font = .systemFont(ofSize: 18)
        backButton.backgroundColor = .darkGray
        backButton.layer.cornerRadius = 5
        backButton.layer.masksToBounds = true
        
        guard let bmi = bmi else {return}
        resultLabel.text = "\(bmi.result)"
        resultLabel.backgroundColor = bmi.resultColor
        adviceLabel.text = "\(bmi.advice)"
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
