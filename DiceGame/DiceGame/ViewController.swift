//
//  ViewController.swift
//  DiceGame
//
//  Created by Hamin Jeong on 2022/03/05.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func imageButtonTapped(_ sender: UIButton) {
        diceImageView1.image = diceArray.randomElement()!
        diceImageView2.image = diceArray.randomElement()!
        
    }
    
    
    
}

