//
//  ViewController.swift
//  BMIcalculate
//
//  Created by Hamin Jeong on 2022/05/28.
//

import UIKit

class ViewController: UIViewController {

    var bmiManager = BMIcalculateManager()
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiSetup()
    }

    func uiSetup(){
        view.backgroundColor = .lightGray
        
        mainLabel.font = .boldSystemFont(ofSize: 20)
        mainLabel.text = "키와 몸무게를 입력해주세요."
        
        heightTextField.delegate = self
        heightTextField.font = .systemFont(ofSize: 18)
        heightTextField.placeholder = "cm단위로 입력해주세요."
        weightTextField.delegate = self
        weightTextField.font = .systemFont(ofSize: 18)
        weightTextField.placeholder = "kg단위로 입력해주세요."
        
        calculateButton.layer.cornerRadius = 5
        calculateButton.layer.masksToBounds = true
        calculateButton.backgroundColor = .darkGray
        calculateButton.setTitle("BMI 계산하기", for: .normal)
        calculateButton.setTitleColor(.white, for: .normal)
        calculateButton.titleLabel?.font = .systemFont(ofSize: 18)
    }

//MARK: to SecondViewController

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if heightTextField.text == "" || weightTextField.text == "" {
            mainLabel.text = "키와 몸무게를 입력하세요!"
            mainLabel.textColor = .red
            return false
        } else if heightTextField.text != "" && weightTextField.text != "" {
            mainLabel.text = "키와 몸무게를 입력해주세요."
            mainLabel.textColor = .black
            return true
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.bmi = bmiManager.getBMIdata(height: heightTextField.text!, weight: weightTextField.text!)
        }
     
        heightTextField.text = ""
        weightTextField.text = ""
    }
   
    
    
    
    
}















//MARK: Extension TextFieldDelegate

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if Double(string) != nil || string == "" {
            return true
        }
        return false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if heightTextField.text == "" && weightTextField.text == "" {
            weightTextField.resignFirstResponder()
            return true
        } else if heightTextField.text != "" && weightTextField.text == "" {
            weightTextField.becomeFirstResponder()
            return true
        } else if heightTextField.text != "" && weightTextField.text != "" {
            weightTextField.resignFirstResponder()
            return true
        }
        return false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        heightTextField.resignFirstResponder()
        weightTextField.resignFirstResponder()
    }
}
