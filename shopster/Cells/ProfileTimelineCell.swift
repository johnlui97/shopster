//
//  ProfileTimelineCell.swift
//  shopster
//
//  Created by John Lui on 2020-04-12.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class ProfileTimelineCell: UICollectionViewCell {
    
    lazy var profileTimelineImage: UIImageView = {
        let image = UIImage(named: "profileTimeline")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    private func constraintProfileTimeline() {
        profileTimelineImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        profileTimelineImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        profileTimelineImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        profileTimelineImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(profileTimelineImage)
        constraintProfileTimeline()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
