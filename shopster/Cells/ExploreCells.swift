//
//  ExploreCells.swift
//  shopster
//
//  Created by John Lui on 2020-04-13.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class ExploreCells: UICollectionViewCell {
    
    lazy var exploreImages: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleToFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private func constraintExploreImages() {
        exploreImages.topAnchor.constraint(equalTo: topAnchor).isActive = true
        exploreImages.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        exploreImages.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        exploreImages.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        addSubview(exploreImages)
        constraintExploreImages()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
