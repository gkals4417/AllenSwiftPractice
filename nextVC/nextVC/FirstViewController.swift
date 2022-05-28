//
//  FirstViewController.swift
//  nextVC
//
//  Created by Hamin Jeong on 2022/05/21.
//
//MARK: Code만 사용

import UIKit

class FirstViewController: UIViewController {

    let mainLabel = UILabel()
    lazy var backButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    var someString: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        makeAutoLayout()
    }
    
    func setup(){
        mainLabel.text = someString
        mainLabel.font = UIFont.systemFont(ofSize: 22)
        mainLabel.textColor = .white
        view.addSubview(mainLabel)
        view.addSubview(backButton)
        view.backgroundColor = .black
    }
    
    func makeAutoLayout(){
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

    }
    
    @objc func backButtonTapped (){
        dismiss(animated: true, completion: nil)
    }
}
