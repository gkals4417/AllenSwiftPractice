//
//  SecondViewController.swift
//  nextVC
//
//  Created by Hamin Jeong on 2022/05/21.
//
//MARK: Storyboard로 만듦
import UIKit

class SecondViewController: UIViewController {
    
    
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
        mainLabel.font = UIFont.systemFont(ofSize: 22)
        mainLabel.textColor = .white
        
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.backgroundColor = .systemBlue
        backButton.layer.cornerRadius = 5
        backButton.layer.masksToBounds = true
    }

    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
