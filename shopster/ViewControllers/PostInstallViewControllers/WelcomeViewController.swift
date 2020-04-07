//
//  WelcomeViewController.swift
//  shopster
//
//  Created by John Lui on 2020-04-06.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    lazy var welcomeTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome to Shopster!"
        label.font = UIFont(name: "Futura", size: 32)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var welcomeMessage:UILabel = {
        let label = UILabel()
        label.text = "Thanks for giving us a try! We're really excited to have you here, and we think you'll really enjoy it."
        label.font = UIFont(name: "Futura", size: 16)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var labelVerticalStack: UIStackView = {
        let stack = UIStackView()
        stack.addArrangedSubview(welcomeTitleLabel)
        stack.addArrangedSubview(welcomeMessage)
        stack.axis = .vertical
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private func constraintVerticalStackView() {
        labelVerticalStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        labelVerticalStack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        labelVerticalStack.widthAnchor.constraint(equalToConstant: 250).isActive = true
        labelVerticalStack.heightAnchor.constraint(equalToConstant: 175).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        view.addSubview(labelVerticalStack)
        constraintVerticalStackView()
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapAnimation)))
    }
    
    @objc fileprivate func handleTapAnimation() {
        UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.welcomeTitleLabel.transform = CGAffineTransform(translationX: -30, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 2.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                self.welcomeTitleLabel.transform = self.welcomeTitleLabel.transform.translatedBy(x: 0, y: -250)
                self.welcomeTitleLabel.alpha = 0
            })
        }

        UIView.animate(withDuration: 0.5, delay: 1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
             self.welcomeMessage.transform = CGAffineTransform(translationX: -30, y: 0)
        }) { (_) in
             UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 2.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                 self.welcomeMessage.transform = self.welcomeMessage.transform.translatedBy(x: 0, y: -250)
                 self.welcomeMessage.alpha = 0
             })
        }
    }
}
