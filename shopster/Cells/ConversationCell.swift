//
//  ConversationCell.swift
//  shopster
//
//  Created by John Lui on 2020-04-06.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class ConversationCell: UITableViewCell {
    
    lazy var profileImage: UIImageView = {
        let image = UIImage(named: "defaultAvatar")
        let view = UIImageView()
        view.image = image
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 25
        return view
    }()
    
    lazy var labelStacks: UIStackView = {
        let stack = UIStackView()
        stack.addArrangedSubview(name)
        stack.addArrangedSubview(recentMessage)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill
        return stack
    }()
    
    lazy var name: UILabel = {
        let label = UILabel()
        label.text = "sample text"
        label.font = label.font.withSize(16)
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var timestamp: UILabel = {
        let label = UILabel()
        label.text = "sample text"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var recentMessage: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.text = "sample text sample text sample text sample text sample text sample text."
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func constraintVerticalStackView(childView: UIView, referenceView: UIView) {
        childView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        childView.leadingAnchor.constraint(equalTo: referenceView.leadingAnchor, constant: 16).isActive = true
        childView.widthAnchor.constraint(equalToConstant: frame.width/2).isActive = true
        childView.heightAnchor.constraint(equalToConstant: frame.height*1.5).isActive = true
    }
    
    private func constraintProfileImage(childView: UIImageView) {
        childView.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        childView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
//        childView.widthAnchor.constraint(equalToConstant: labelStacks.frame.height).isActive = true
//        childView.heightAnchor.constraint(equalToConstant: labelStacks.frame.height).isActive = true
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(labelStacks)
        constraintVerticalStackView(childView: labelStacks, referenceView: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
