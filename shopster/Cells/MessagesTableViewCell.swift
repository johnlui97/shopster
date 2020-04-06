//
//  MessagesTableViewCell.swift
//  shopster
//
//  Created by John Lui on 2020-04-05.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class MessagesTableViewCell: UITableViewCell {
    
    var messagesLeadingConstraint:NSLayoutConstraint!
    var messagesTrailingConstraint:NSLayoutConstraint!
    
    lazy var bubbleBackgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    
    lazy var messagesLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var chatMessages: MessagesStruct! {
        didSet{
            bubbleBackgroundView.backgroundColor = chatMessages.isIncoming ? .systemGreen : .systemBlue
            messagesLabel.textColor = chatMessages.isIncoming ? .black : .white
            messagesLabel.text = chatMessages.text
            
            if chatMessages.isIncoming {
                messagesLeadingConstraint.isActive = true
                messagesTrailingConstraint.isActive = false
            } else {
                messagesLeadingConstraint.isActive = false
                messagesTrailingConstraint.isActive = true
            }
        }
    }
    
    private func constraintBubbleView() {
        bubbleBackgroundView.topAnchor.constraint(equalTo: messagesLabel.topAnchor, constant: -6).isActive = true
        bubbleBackgroundView.leadingAnchor.constraint(equalTo: messagesLabel.leadingAnchor, constant: -6).isActive = true
        bubbleBackgroundView.trailingAnchor.constraint(equalTo: messagesLabel.trailingAnchor, constant: 6).isActive = true
        bubbleBackgroundView.bottomAnchor.constraint(equalTo: messagesLabel.bottomAnchor, constant: 6).isActive = true
    }
    
    private func constraintMessagesLabel() {
        messagesLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        messagesLabel.widthAnchor.constraint(lessThanOrEqualToConstant: self.frame.width/1.25).isActive = true
        messagesLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        messagesLeadingConstraint = messagesLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16)
        messagesTrailingConstraint = messagesLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        
        backgroundColor = .clear
        
        addSubview(bubbleBackgroundView)
        addSubview(messagesLabel)
        constraintMessagesLabel()
        constraintBubbleView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
