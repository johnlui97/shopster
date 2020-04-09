//
//  WelcomeCollectionViewCell.swift
//  shopster
//
//  Created by John Lui on 2020-04-08.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class WelcomeCollectionViewCell: UICollectionViewCell {
    
    lazy var viewNumber:Int = 0
    
    lazy var containerView1: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        return view
    }()
    
    lazy var containerView2: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        return view
    }()
    
    lazy var containerView3: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGreen
        return view
    }()
    
    lazy var containerView4: UIView = {
        let view = UIView()
        view.backgroundColor = .systemOrange
        return view
    }()
    
    private func constrainContainerView1() {
        containerView1.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        containerView1.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        containerView1.heightAnchor.constraint(equalToConstant: 250).isActive = true
        containerView1.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
    
    private func constrainContainerView2() {
        containerView2.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        containerView2.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        containerView2.heightAnchor.constraint(equalToConstant: 250).isActive = true
        containerView2.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
    
    private func constrainContainerView3() {
        containerView3.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        containerView3.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        containerView3.heightAnchor.constraint(equalToConstant: 250).isActive = true
        containerView3.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
    
    private func constrainContainerView4() {
        containerView4.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        containerView4.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        containerView4.heightAnchor.constraint(equalToConstant: 250).isActive = true
        containerView4.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
