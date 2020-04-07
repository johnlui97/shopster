//
//  WelcomeExplainViewController.swift
//  shopster
//
//  Created by John Lui on 2020-04-06.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class WelcomeExplainViewController: UIViewController {
    
    lazy var messageExplained:UILabel = {
        let label = UILabel()
        label.text = "Shopster! is an application that allows users to purchase clothes and accessories via one day delivery. Saving you time and effort to do other things!"
        label.font = UIFont(name: "Futura", size: 16)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var modelImage: UIImageView = {
        let image = UIImage(named: "model")
        let view = UIImageView(image: image)
        view.contentMode = .scaleAspectFill
        view.layer.masksToBounds = true
        view.layer.borderWidth = 3
        view.layer.borderColor = UIColor.black.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private func constraintMessageExplained() {
        messageExplained.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -25).isActive = true
        messageExplained.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150).isActive = true
        messageExplained.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
    
    private func constraintModelImageView() {
        modelImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 75).isActive = true
        modelImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -115).isActive = true
        modelImage.widthAnchor.constraint(equalToConstant: 175).isActive = true
        modelImage.heightAnchor.constraint(equalToConstant: 375).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemYellow
        
        view.addSubview(messageExplained)
        constraintMessageExplained()
        
        view.addSubview(modelImage)
        constraintModelImageView()
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapAnimation)))
    }
    
    @objc fileprivate func handleTapAnimation() {
        UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.messageExplained.transform = CGAffineTransform(translationX: -30, y: 0)
            self.modelImage.transform = CGAffineTransform(translationX: 30, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 2.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                self.messageExplained.transform = self.messageExplained.transform.translatedBy(x: 0, y: 250)
                self.messageExplained.alpha = 0
                self.modelImage.transform = self.modelImage.transform.translatedBy(x: 0, y: -250)
                self.modelImage.alpha = 0
            })
        }
    }
}
