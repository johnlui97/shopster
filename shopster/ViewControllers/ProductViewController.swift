//
//  ProductViewController.swift
//  shopster
//
//  Created by John Lui on 2020-04-05.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    var cellID = "product_view_cell_id"
    
    lazy var productImageCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(ProductCells.self, forCellWithReuseIdentifier: cellID)
        view.isPagingEnabled = true
        view.showsHorizontalScrollIndicator = false
        view.backgroundColor = .systemOrange
        view.contentInsetAdjustmentBehavior = .never
        return view
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var profileImage: UIImageView = {
        let image = UIImageView()
        let picture = UIImage(named: "defaultAvatar")
        image.image = picture
        image.contentMode = .scaleAspectFit
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 37.5
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var buyButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "buy"), for: .normal)
        return button
    }()
    
    lazy var productTitle: UILabel = {
        let label = UILabel()
        label.text = "Sameple Product"
        label.font = UIFont(name: "Futura", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    lazy var productPostTime: UILabel = {
        let label = UILabel()
        label.text = "Sameple Time Stamp"
        label.font = UIFont(name: "Futura", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    lazy var productPrice: UILabel = {
        let label = UILabel()
        label.text = "249.99"
        label.font = UIFont(name: "Futura", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    lazy var labelVerticalStack: UIStackView = {
        let stack = UIStackView()
        stack.addArrangedSubview(productTitle)
        stack.addArrangedSubview(productPrice)
        stack.addArrangedSubview(productPostTime)
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var productDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source."
        label.numberOfLines = 0
        label.font = UIFont(name: "Futura", size: 18)
        return label
    }()
    
    private func constraintProductImageCollectionView() {
        productImageCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        productImageCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        productImageCollectionView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor).isActive = true
        productImageCollectionView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/3).isActive = true
    }
    
    private func constraintContainerView() {
        containerView.topAnchor.constraint(equalTo: productImageCollectionView.bottomAnchor, constant: 12).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -12).isActive = true
    }
    
    private func constraintProfileImage() {
        profileImage.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        profileImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 75).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 75).isActive = true
    }
    
    private func constraintBuyButton() {
        buyButton.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        buyButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        buyButton.heightAnchor.constraint(equalTo: profileImage.heightAnchor).isActive = true
        buyButton.widthAnchor.constraint(equalTo: profileImage.widthAnchor).isActive = true

    }
    
    private func constraintVerticalStack() {
        labelVerticalStack.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        labelVerticalStack.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 6).isActive = true
        labelVerticalStack.trailingAnchor.constraint(equalTo: buyButton.leadingAnchor, constant: 6).isActive = true
        labelVerticalStack.heightAnchor.constraint(equalTo: profileImage.heightAnchor).isActive = true
    }
    
    private func constraintProductDescription() {
        productDescription.topAnchor.constraint(equalTo: profileImage.bottomAnchor).isActive = true
        productDescription.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        productDescription.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        productDescription.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray4
        view.addSubview(productImageCollectionView)
        constraintProductImageCollectionView()
        productImageCollectionView.delegate = self
        productImageCollectionView.dataSource = self
        
        view.addSubview(containerView)
        constraintContainerView()
        
        containerView.addSubview(profileImage)
        constraintProfileImage()
        
        containerView.addSubview(buyButton)
        constraintBuyButton()

        containerView.addSubview(labelVerticalStack)
        constraintVerticalStack()
        
        containerView.addSubview(productDescription)
        constraintProductDescription()
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        return
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! ProductCells
        cell.backgroundColor = indexPath.row%2==0 ? .systemGreen : .systemRed
        cell.productImage.image = indexPath.row%2==0 ? UIImage(named: "adidas1") : UIImage(named: "nike1")
        return cell
    }
    
    internal func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}
