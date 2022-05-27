//
//  ViewController.swift
//  BMIcalculator
//
//  Created by Hamin Jeong on 2022/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    
    var bmi: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    func setup(){
        heightTextField.delegate = self //대리자 -> ViewController
        weightTextField.delegate = self
        heightTextField.placeholder = "cm 단위로 입력하세요."
        weightTextField.placeholder = "kg 단위로 입력하세요."

        mainLabel.text = "키와 몸무게를 입력해 주세요."
        
        calculateButton.layer.masksToBounds = true
        calculateButton.layer.cornerRadius = 5
        calculateButton.setTitle("BMI 계산하기", for: .normal)
    }
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        guard let height = heightTextField.text,
              let weight = weightTextField.text else {return}
        bmi = calculateBMI(height: height, weight: weight)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if heightTextField.text == "" || weightTextField.text == "" { //아무것도 입력하지 않는 경우
            mainLabel.text = "키와 몸무게를 입력해야 합니다."
            mainLabel.textColor = .red
            return false
        }
        mainLabel.text = "키와 몸무게를 입력해 주세요."
        mainLabel.textColor = .black
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //데이터 전달
        if segue.identifier == "toSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.bmiNumber = self.bmi //BMI값 전달
            secondVC.bmiColor = getBackgroundColor() //BMI값에 따른 Label 배경색 전달
            secondVC.adviceString = getBMIAdviceString() //BMI값에 따른 단계 전달
        }
        
        heightTextField.text = ""
        weightTextField.text = "" //다음화면으로 넘어갈 때 텍스트 필드 비우기
    }
    
//MARK: BMI를 계산하는 함수
    func calculateBMI(height: String, weight: String) -> Double { //내부에 코드를 입력할수도 있지만, 헷갈리지 않게 따로 BMI 계산하는 함수를 만든다.
        guard let h = Double(height), let w = Double(weight) else {return 0.0}
        var bmi = w / (h * h) * 10000
        bmi = round(bmi * 10) / 10 //반올림해서 소수 첫번째 자리까지
        return bmi
    }
    
//MARK: BMI 단계에 따른 배경색 변경 함수
    func getBackgroundColor() -> UIColor { //resultLabel의 배경 색을 바꿔주는 함수
        guard let bmi = bmi else {return UIColor.black}
        switch bmi {
        case ..<18.6:
            return UIColor(displayP3Red: 22/255, green: 231/255, blue: 207/255, alpha: 1)
        case 18.6..<23.0:
            return UIColor(displayP3Red: 212/255, green: 251/255, blue: 121/255, alpha: 1)
        case 23.0..<25.0:
            return UIColor(displayP3Red: 218/255, green: 127/255, blue: 163/255, alpha: 1)
        case 25.0..<30.0:
            return UIColor(displayP3Red: 255/255, green: 150/255, blue: 141/255, alpha: 1)
        case 30.0...:
            return UIColor(displayP3Red: 255/255, green: 100/255, blue: 78/255, alpha: 1)
        default:
            return UIColor.black
        }
    }

//MARK: 계산된 BMI에 따른 단계 구분 함수
    func getBMIAdviceString() -> String { //adviceLabel의 문자를 바꿔주는 함수
        guard let bmi = bmi else {return ""}
        switch bmi {
        case ..<18.6:
            return "저채중"
        case 18.6..<23.0:
            return "표준"
        case 23.0..<25.0:
            return "과체중"
        case 25.0..<30.0:
            return "중도비만"
        case 30.0...:
            return "고도비만"
        default:
            return ""
        }
    }
} //함수를 따로 따로 만들면 좋다.


//MARK: TextFieldDelegate 확장
extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool { //글자가 하나하나 입력될 때마다 호출되는 함수
        if Double(string) != nil || string == "" {
            return true
        }
        return false
    } //true면 입력이 되고, false면 입력이 안된다.
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { //키보드의 엔터를 눌렀을때 실행되는 함수
        if heightTextField.text != "", weightTextField.text != "" { //두 택스트필드가 모두 비어있지 않는 경우
            weightTextField.resignFirstResponder() //엔터를 누르면 키보드가 사라짐
            return true
        } else if heightTextField.text != "" { //height 텍스트필드가 비어있지 않는 경우
            weightTextField.becomeFirstResponder() //엔터를 누르면 weight텍스트필드로 커서 이동
            return true
        }
        return false // 둘다 비어있는 경우
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        heightTextField.resignFirstResponder()
        weightTextField.resignFirstResponder()
    }
}
