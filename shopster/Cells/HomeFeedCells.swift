//
//  HomeFeedCells.swift
//  shopster
//
//  Created by John Lui on 2020-04-05.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class HomeFeedCells: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //UI Elements
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var topContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var labelVerticalStack: UIStackView = {
        let stack = UIStackView()
        stack.addArrangedSubview(productTitle)
        stack.addArrangedSubview(productOwner)
        stack.addArrangedSubview(productPostTime)
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillEqually
        return stack
    }()
    
    lazy var ownerImage: UIImageView = {
        let image = UIImageView()
        let picture = UIImage(named: "defaultAvatar")
        image.image = picture
        image.contentMode = .scaleAspectFit
        image.layer.masksToBounds = true
        image.layer.cornerRadius = (self.frame.height/5)/2
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var productTitle: UILabel = {
        let label = UILabel()
        label.text = "Sameple Product"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    lazy var productOwner: UILabel = {
        let label = UILabel()
        label.text = "Sameple Owner"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    lazy var productPostTime: UILabel = {
        let label = UILabel()
        label.text = "Sameple Time Stamp"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    lazy var productCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(ProductCells.self, forCellWithReuseIdentifier: "cell_id")
        view.backgroundColor = .systemGreen
        return view
    }()
    
    //Constraints Methods
    
    private func constraintContainerView(childView: UIView, parentView: UIView) {
        childView.topAnchor.constraint(equalTo: parentView.topAnchor, constant: 12).isActive = true
        childView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: 12).isActive = true
        childView.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: -12).isActive = true
        childView.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: -12).isActive = true
    }
    
    private func constraintTopContainerView(childView: UIView, parentView: UIView) {
        childView.topAnchor.constraint(equalTo: parentView.topAnchor).isActive = true
        childView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor).isActive = true
        childView.trailingAnchor.constraint(equalTo: parentView.trailingAnchor).isActive = true
        childView.heightAnchor.constraint(equalToConstant: self.frame.height/5).isActive = true
    }
    
    private func constraintOwnerImage(childView: UIImageView, parentView: UIView) {
        childView.centerYAnchor.constraint(equalTo: parentView.centerYAnchor).isActive = true
        childView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor).isActive = true
        childView.heightAnchor.constraint(equalToConstant: self.frame.height/5).isActive = true
        childView.widthAnchor.constraint(equalToConstant: self.frame.height/5).isActive = true
    }
    
    private func constraintLabelStack(childView: UIStackView, parentView: UIView, referenceView: UIImageView) {
        childView.topAnchor.constraint(equalTo: parentView.topAnchor).isActive = true
        childView.leadingAnchor.constraint(equalTo: referenceView.trailingAnchor, constant: 6).isActive = true
        childView.bottomAnchor.constraint(equalTo: parentView.bottomAnchor).isActive = true
    }
    
    private func constraintProductCollectionView(childView: UICollectionView, parentView: UIView, referenceView: UIView) {
        childView.topAnchor.constraint(equalTo: referenceView.bottomAnchor).isActive = true
        childView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor).isActive = true
        childView.trailingAnchor.constraint(equalTo: parentView.trailingAnchor).isActive = true
        childView.bottomAnchor.constraint(equalTo: parentView.bottomAnchor).isActive = true
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
            
        addSubview(containerView)
        constraintContainerView(childView: containerView, parentView: self)
        
        containerView.addSubview(topContainerView)
        constraintTopContainerView(childView: topContainerView, parentView: containerView)
        
        topContainerView.addSubview(ownerImage)
        constraintOwnerImage(childView: ownerImage, parentView: topContainerView)
        
        topContainerView.addSubview(labelVerticalStack)
        constraintLabelStack(childView: labelVerticalStack, parentView: topContainerView, referenceView: ownerImage)
        
        containerView.addSubview(productCollectionView)
        constraintProductCollectionView(childView: productCollectionView, parentView: containerView, referenceView: topContainerView)
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell_id", for: indexPath) as! ProductCells
        cell.backgroundColor = .systemTeal
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
}
