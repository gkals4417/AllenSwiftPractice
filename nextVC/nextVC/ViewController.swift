//
//  ViewController.swift
//  nextVC
//
//  Created by Hamin Jeong on 2022/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLebel: UILabel!
    @IBOutlet weak var codeNextButton: UIButton!
    @IBOutlet weak var storyBoardWithCodeButton: UIButton!
    @IBOutlet weak var storyBoardWithSegueButton: UIButton!
    @IBOutlet weak var storyBoardWithButtonSegueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstSetup()
    }

    func firstSetup(){
        view.backgroundColor = .black
        titleLebel.text = "VC Test"
        codeNextButton.layer.cornerRadius = 5
        codeNextButton.layer.masksToBounds = true
        storyBoardWithCodeButton.layer.cornerRadius = 5
        storyBoardWithCodeButton.layer.masksToBounds = true
        storyBoardWithSegueButton.layer.cornerRadius = 5
        storyBoardWithSegueButton.layer.masksToBounds = true
        storyBoardWithButtonSegueButton.layer.cornerRadius = 5
        storyBoardWithButtonSegueButton.layer.masksToBounds = true
    }
//MARK: FirstViewController를 Code로만 작성한 경우
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        firstVC.someString = "FirstViewController!"
        firstVC.modalPresentationStyle = .fullScreen
        present(firstVC, animated: true, completion: nil)
        
    }
//MARK: Storyboard에 SecondViewController를 만든 경우 (추천)
    @IBAction func storyBoardWithCodeButtonTapped(_ sender: UIButton) {
        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController {
            secondVC.someString = "SecondViewController!"
            secondVC.modalPresentationStyle = .fullScreen
            present(secondVC, animated: true, completion: nil)
        }
    }
//MARK: Storyboard에 ThirdViewController를 segue를 만든 경우
    @IBAction func storyBoardWithSegueButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toThridVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThridVC" {
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.someString = "ThirdViewController!"
        }
        
        if segue.identifier == "toFourthVC" {
            let fourthVC = segue.destination as! FourthViewController
            fourthVC.someString = "FourthViewController"
        }
    }

//MARK: Storyboard에 FourthViewController의 버튼을 직접 연결(segue)한 경우
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if true { 
            return false
        } else {
            return true
        }
    } //prepare segue와 비슷하다. 리턴타입은 Bool. 어떤 조건에 따라서 세그웨이를 실행할지 말지 결정
    //이 힘수는 버튼에서 직접적으로 연결한 세그웨이에만 실행된다.
    //버튼을 직접 세그웨이 연결했기 때문에, 굳이 @IBActioin 을 추가할 필요가 없다. 때문에 performSegue를 사용하지 않고 바로 shouldPerformSegue를 사용할 수 있다.
    
}

