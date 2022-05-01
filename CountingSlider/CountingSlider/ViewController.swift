//
//  ViewController.swift
//  CountingSlider
//
//  Created by Hamin Jeong on 2022/04/29.
//

import UIKit
import AVFoundation //소리를 나게 하기 위해 필요

class ViewController: UIViewController {

    weak var timer: Timer?
    var number: Int = 0 //처음 설정한 초를 number에 담고, 초가 지날 때마다 number의 값이 1초씩 줄어들게 한다. 매우 중요한 변수!!!

    @IBOutlet weak var mainLable: UILabel!
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()   //일반적으로 viewDidLoad에 초기 값을 함수로 넣어둔다.
    }

    
    func configureUI(){
        mainLable.text = "초를 선택하세요"
        //슬라이더 가운데 설정
        slider.setValue(0.5, animated: false)
    }
    
    //슬라이더가 움직일 때마다 계속 함수를 실행한다.
    @IBAction func sliderChanged(_ sender: UISlider) {
        //슬라이더의 벨류값을 가지고 메인레이블의 텍스트를 세팅
        let seconds = Int(sender.value * 60)
        mainLable.text = "\(seconds) 초"
        number = seconds //sliderChanged는 슬라이더가 바뀔 때마다 지속적으로 실행된다. 그 값을 seconds로 담아주는데, number 변수도 초기값을 0으로 설정했기 때문에, 사용자가 설정한 초 값을 넣어줘야 한다.
    }
    
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        //1초씩 지나갈때마다 뭔가 실행해야 함
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { [self] _ in
            if number > 0 { //객체 내에  서 클로저를 사용할 때, 원래는 self를 반드시 붙여줘야 하지만, 캡처리스트에 self를 한번 쓰면 내부 코드에서는 굳이 self를 쓰지 않아도 된다.
                number -= 1
                //슬라이더도 줄여야 함
                slider.value = Float(number) / Float(60)
                //mainLable 표시도 다시 해줘야 함
                mainLable.text = "\(number) 초"
                
            } else {
                number = 0
                mainLable.text = "초를 선택하세요"
                timer?.invalidate() //위에서 repeats를 true로 설정했기 때문에 무한으로 반복될 수 있다. 그를 방지하기 위해 타이머를 멈추는 코드가 필요하다.
                
                //소리를 나게 해야 함. (how to play system sound in swift)
                AudioServicesPlayAlertSound(SystemSoundID(1322))
            }
        })
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        //슬라이더 가운데 설정
        slider.setValue(0.5, animated: true)
        //slider.value = 0.5 로도 가능
        number = 0
        timer?.invalidate() //타이머 자체를 리셋 timer? = nil 로도 가능
        mainLable.text = "초를 선택하세요"
    }
}

