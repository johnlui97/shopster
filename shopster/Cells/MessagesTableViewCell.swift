//
//  MessagesTableViewCell.swift
//  shopster
//
//  Created by John Lui on 2020-04-05.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class MessagesTableViewCell: UITableViewCell {
    
    lazy var bubbleBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemYellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var messagesLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func constraintBubbleView() {
        bubbleBackgroundView.topAnchor.constraint(equalTo: messagesLabel.topAnchor).isActive = true
        bubbleBackgroundView.leadingAnchor.constraint(equalTo: messagesLabel.leadingAnchor).isActive = true
        bubbleBackgroundView.trailingAnchor.constraint(equalTo: messagesLabel.trailingAnchor).isActive = true
        bubbleBackgroundView.bottomAnchor.constraint(equalTo: messagesLabel.bottomAnchor).isActive = true
    }
    
    private func constraintMessagesLabel() {
        messagesLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        messagesLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        messagesLabel.widthAnchor.constraint(equalToConstant: self.frame.width/1.25).isActive = true
        messagesLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(bubbleBackgroundView)
        addSubview(messagesLabel)
        constraintMessagesLabel()
        constraintBubbleView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
