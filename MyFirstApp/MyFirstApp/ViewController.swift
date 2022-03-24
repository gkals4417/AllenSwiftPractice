//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Hamin Jeong on 2022/03/04.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLable: UILabel!
    //일종의 변수와 UILabel 타입
    @IBOutlet weak var myButton: UIButton!
    //버튼이지만 버튼을 변수로 만들어서 속성을 변경할 수 있다.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 앱의 화면에 들어오면 처음 실행시키는 함수
        //mainLable.text = "방가방가"
        //mainLable.backgroundColor = UIColor.yellow
    }

        @IBAction func buttonPressed(_ sender: UIButton) {
            //관습적으로 버튼의 파라미터에 sender를 많이 쓴다.
            mainLable.text = "안녕하세요"
            //myButton.backgroundColor = UIColor.black
            //myButton.setTitleColor(.white, for:UIControl.State.normal)
            //mainLable.backgroundColor = UIColor.yellow
            //mainLable.textColor = UIColor.red
       
        }
   
    
}

