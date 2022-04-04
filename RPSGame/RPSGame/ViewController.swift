//
//  ViewController.swift
//  RPSGame
//
//  Created by Hamin Jeong on 2022/03/06.
//

import UIKit

class ViewController: UIViewController {

    //변수 또는 속성
    @IBOutlet weak var mainLable: UILabel!
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var comChoiceLable: UILabel!
    @IBOutlet weak var myChoiceLable: UILabel!
    
    var myChoice:Rps = Rps.rock
    var comChoice:Rps = Rps(rawValue: Int.random(in: 0...2))!
    
    func clear() {
        comImageView.image = UIImage(named: "ready.png")
        comChoiceLable.text = "준비"
        myImageView.image = UIImage(named: "ready.png")
        myChoiceLable.text = "준비"

        mainLable.text = "선택하세요"
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 앱의 화면에 들어오면 처음 실행되는 함수가 viewDidLoad
        // 1) 첫번째, 두번째 이미지뷰에 준비 이미지를 띄워야 함
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        // 2) 두번째/ 두번째 레이블에 "준비"라고 문자열을 띄워야 함.
        comChoiceLable.text = "준비"
        myChoiceLable.text = "준비"
        
        clear()
        
    }

    //함수 또는 메서드
    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        //가위/바위/보를 선택해서 그 정보를 저장한다.
        guard let title = sender.currentTitle else {return}
        switch title {
        case "가위":
            myChoice = Rps.scissors
        case "바위":
            myChoice = Rps.rock
        case "보":
            myChoice = Rps.paper
        default:
            break
        }
        
        
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        switch comChoice {
        case Rps.rock:
            comImageView.image = UIImage(named: "rock.png")
            comChoiceLable.text = "바위"
        case Rps.scissors:
            comImageView.image = UIImage(named: "scissors.png")
            comChoiceLable.text = "가위"
        case Rps.paper:
            comImageView.image = UIImage(named: "paper.png")
            comChoiceLable.text = "보"
        }
        
        switch myChoice {
        case .rock:
            myImageView.image = UIImage(named: "rock.png")
            myChoiceLable.text = "바위"
        case .paper:
            myImageView.image = UIImage(named: "paper.png")
            myChoiceLable.text = "보"
        case .scissors:
            myImageView.image = UIImage(named: "scissors.png")
            myChoiceLable.text = "가위"
        }
        // 1) 컴퓨터가 선택한 것을 이미지뷰에 표시, 레이블에도 표시
        // 2) 내가 선택한 것을 이미지뷰에 표시, 레이블에도 표시
        // 3) 컴의 선택과 나의 선택을 비교해서 승패 판단 후 표시
        if comChoice == myChoice {
            mainLable.text = "비겼습니다"
        } else if comChoice == .rock && myChoice == .paper {
            mainLable.text = "이겼습니다"
        } else if comChoice == .paper && myChoice == .scissors{
            mainLable.text = "이겼습니다"
        } else if comChoice == .scissors && myChoice == .rock{
            mainLable.text = "이겼습니다"
        } else {
            mainLable.text = "졌습니다"
        }
        
        
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 모든 것을 초기화 (viewDidLoad) 함수를 실행하면 되지 않을까?
        // 1) 컴퓨터, 나의 선택 이미지뷰에 준비중 이미지와 레이블에 "준비" 표시해야 함
        // 2) 메인 레이블을 "선택하세요"로 변경
        // 3) 변수 초기화
//        comImageView.image = UIImage(named: "ready.png")
//        comChoiceLable.text = "준비"
//        myImageView.image = UIImage(named: "ready.png")
//        myChoiceLable.text = "준비"
//
//        mainLable.text = "선택하세요"
//        comChoice = Rps(rawValue: Int.random(in: 0...2))!
        
        clear()
    }
    
    

}

