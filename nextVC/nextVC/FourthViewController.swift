//
//  FourthViewController.swift
//  nextVC
//
//  Created by Hamin Jeong on 2022/05/21.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var mainLabel: UILabel!
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
        backButton.layer.masksToBounds = true
        backButton.layer.cornerRadius = 5
    }
    

    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
