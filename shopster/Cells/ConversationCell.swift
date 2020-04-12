//
//  ConversationCell.swift
//  shopster
//
//  Created by John Lui on 2020-04-06.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class ConversationCell: UITableViewCell {
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemOrange
        return view
    }()
    
    lazy var profileImage: UIImageView = {
        let image = UIImage(named: "defaultAvatar")
        let view = UIImageView()
        view.image = image
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 32.5
        return view
    }()
    
    lazy var labelStacks: UIStackView = {
        let stack = UIStackView()
        stack.addArrangedSubview(name)
        stack.addArrangedSubview(recentMessage)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        return stack
    }()
    
    lazy var name: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(22)
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var timestamp: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var recentMessage: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func constraintContainerView() {
        containerView.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive = true
    }
    
    private func constraintProfileImage() {
        profileImage.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 6).isActive = true
        profileImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 6).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 65).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 65).isActive = true
    }
    
    private func constraintStack() {
        labelStacks.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12).isActive = true
        labelStacks.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 12).isActive = true
        labelStacks.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -6).isActive = true
        labelStacks.trailingAnchor.constraint(equalTo: timestamp.leadingAnchor, constant: -6).isActive = true
    }
    
    private func constraintTimeStamp() {
        timestamp.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        timestamp.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -6).isActive = true
        timestamp.heightAnchor.constraint(equalToConstant: 50).isActive = true
        timestamp.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(containerView)
        constraintContainerView()
        
        containerView.addSubview(profileImage)
        constraintProfileImage()
        
        containerView.addSubview(timestamp)
        constraintTimeStamp()
        
        containerView.addSubview(labelStacks)
        constraintStack()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
