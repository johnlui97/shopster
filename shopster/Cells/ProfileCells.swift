//
//  ProfileCells.swift
//  shopster
//
//  Created by John Lui on 2020-04-11.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class ProfileCells: UITableViewCell {
    
    lazy var cellLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.font = UIFont(name: "Futura", size: 18)
        return label
    }()
    
    private func constraintCellLabel() {
        cellLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        cellLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        cellLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        cellLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive = true
}
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(cellLabel)
        constraintCellLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
