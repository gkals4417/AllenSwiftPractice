//
//  ThirdViewController.swift
//  nextVC
//
//  Created by Hamin Jeong on 2022/05/21.
//
//MARK: Storyboard로 만든 후, ViewController - ThirdViewController를 segue로 연결
import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var someString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup(){
        view.backgroundColor = .black
        
        mainLabel.text = someString
        mainLabel.textColor = .white
        mainLabel.font = UIFont.systemFont(ofSize: 22)
        
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.layer.masksToBounds = true
        backButton.layer.cornerRadius = 5
        backButton.backgroundColor = .systemBlue
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
