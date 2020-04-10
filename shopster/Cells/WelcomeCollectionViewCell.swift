//
//  WelcomeCollectionViewCell.swift
//  shopster
//
//  Created by John Lui on 2020-04-08.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class WelcomeCollectionViewCell: UICollectionViewCell {
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemRed
        return view
    }()
    
    lazy var welcomeLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = true
        label.font = UIFont(name: "Futura", size: 24)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var welcomeMessageLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = true
        label.font = UIFont(name: "Futura", size: 14)
        label.numberOfLines = 0
        return label
    }()

    private func constrainContainerView() {
        containerView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: self.frame.height/2).isActive = true
        containerView.widthAnchor.constraint(equalToConstant: self.frame.width-24).isActive = true
    }
    
    private func constrainTitleLabel() {
        welcomeLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        welcomeLabel.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(containerView)
        constrainContainerView()
        
        containerView.addSubview(welcomeLabel)
        constrainTitleLabel()
        
//        containerView.addSubview(welcomeMessageLabel)
//        constrainMessageLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
