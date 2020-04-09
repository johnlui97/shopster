//
//  SignupViewController.swift
//  shopster
//
//  Created by John Lui on 2020-04-08.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    
    lazy var loginTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login to Shopster!"
        return label
    }()
    
    lazy var username:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.text = "Username"
        return textField
    }()
    
    lazy var password:UITextField = {
         let textField = UITextField()
         textField.translatesAutoresizingMaskIntoConstraints = false
         textField.text = "Password"
         return textField
     }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var signupButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var stackView:UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.addArrangedSubview(loginTitleLabel)
        stack.addArrangedSubview(username)
        stack.addArrangedSubview(password)
        stack.addArrangedSubview(loginButton)
        stack.addArrangedSubview(signupButton)
        stack.axis = .vertical
        stack.spacing = 12
        return stack
    }()
    
    private func constrainStackView() {
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: view.frame.height/2).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        view.addSubview(stackView)
        constrainStackView()
    }
}
