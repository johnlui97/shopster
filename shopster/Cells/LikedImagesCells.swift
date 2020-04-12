//
//  LikedImagesCells.swift
//  shopster
//
//  Created by John Lui on 2020-04-12.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class LikedImagesCell: UICollectionViewCell {
    
    lazy var likedImage: UIImageView = {
        let image = UIImage(named: "nike2")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private func constraintLikedImages() {
        likedImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        likedImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        likedImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        likedImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        backgroundColor = .systemPink
        
        addSubview(likedImage)
        constraintLikedImages()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
