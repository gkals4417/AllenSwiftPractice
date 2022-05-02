//
//  ViewController.swift
//  TextFieldandDelegate
//
//  Created by Hamin Jeong on 2022/05/01.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate { //viewcontroller가 textfield를 컨드롤하기 위한 델리게이트

    @IBOutlet weak var textField: UITextField!
    
    
    //관습적으로 viewDidLoad의 위는 속성을, 아래는 메서드를 배치시킨다
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self //textfield와 viewcontroller는 따로 존재하는 객체이다. textfield 안에 델리게이트 속성이 있는데, 대리자를 viewcontroller로 설정 (self)
        
        setup()
    }
    
    func setup(){
        view.backgroundColor = UIColor.gray //이미 viewController라는 상위 클래스에 view가 선언되어있다.
        textField.keyboardType = UIKeyboardType.emailAddress //키보드가 나올때 키보드의 형태 타입 설정 (현재 이메일)
        textField.placeholder = "이메일을 입력하세요." //텍스트 필드에 희미한 글자 만들기
        textField.borderStyle = .roundedRect //텍스트 필드의 선 스타일을 설정
        textField.clearButtonMode = .always //텍스트 필드 안에 x 버튼이 생기고 누르면 clear 된다.
        textField.returnKeyType = .next //키보드의 return 대신에 next로 버튼이 바뀌어있다.
        textField.becomeFirstResponder() //UIResponder에 구현되어있다. textField가 응답객체가 되는 것이고, 실제 터치, 화면의 입력을 제일 먼저 반응하게 된다. (유저에게 먼저 반응할 것을 포커스 시켜줌)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { //화면의 탭을 감지하는 메서드
        self.view.endEditing(true)
        //textField.resignFirstResponder()
    } //텍스트필드 외 다른 화면을 터치하면 키보드가 내려감
    
    //프로토콜을 채택했기 때문에 나오는 메서드들
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function) //연습할 때 사용하기 좋음! 해당 함수가 실행될 때마다 함수 이름이 출력됨
        return true
    } //텍스트필드의 입력을 시작할 때 호출되는 메서드 (시작을 할지말지 허락하는 것)
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 텍스트필드의 입력을 시작했다.")
    } //특별 시점 - 텍스트필드에 입력이 시작되는 시점
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    } //텍스트필드를 clear하는 것을 허락할지 말지 결정 (x버튼을 눌렀을때 작동 여부)
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(#function)
        print(string) //키보드를 누를 때마다 입력값이 출력된다
        if Int(string) != nil {
            return false
        } else {
            guard let text = textField.text else {return true}
            let newLength = text.count + string.count - range.length
            return newLength <= 10
        } //글자 수가 10자 초과 입력되지 않게 하는 논리
    } //텍스트필드의 글자 내용이 (한글자 한글자) 입력되거나 지워질 떄 호출이 되고, 허락의 여부 결정
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        if textField.text == "" {
            textField.placeholder = "Type Something!"
            return false
        } else {
            return true
        }
    } //엔터키가 눌러지면 다음 동작을 여부 허락을 결정
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    } //텍스트필드의 입력이 끝날 때 호출 (끝날지 말지 허락)
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 텍스트필드의 입력을 끝냈다.")
        textField.text = ""
    } //실제로 텍스트필드의 입력이 끝나는 시점
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        textField.resignFirstResponder() //키보드가 내려감
    }
    

}

