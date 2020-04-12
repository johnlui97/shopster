//
//  ProfileViewController.swift
//  shopster
//
//  Created by John Lui on 2020-04-11.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var cellID = "profile_cell"
    var likedImagesCellId = "liked_images_cell"
    
    lazy var profileImage: UIImageView = {
        let image = UIImage(named: "defaultAvatar")
        let view = UIImageView()
        view.image = image
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 50
        return view
    }()
    
    lazy var followingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Futura", size: 14)
        label.text = "Following"
        return label
    }()
    
    lazy var followerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Futura", size: 14)
        label.text = "Followers"
        return label
    }()
    
    lazy var likesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Futura", size: 14)
        label.text = "Likes"
        return label
    }()
    
    lazy var followingNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Futura", size: 14)
        label.text = "2636"
        return label
    }()
    
    lazy var followerNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Futura", size: 14)
        label.text = "2342"
        return label
    }()
    
    lazy var likesNumbersLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Futura", size: 14)
        label.text = "142"
        return label
    }()
    
    lazy var horizontalStackView1: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.addArrangedSubview(followingLabel)
        stack.addArrangedSubview(followerLabel)
        stack.addArrangedSubview(likesLabel)
        stack.distribution = .fillEqually
        stack.axis = .horizontal
        return stack
    }()
    
    lazy var horizontalStackView2: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.addArrangedSubview(followingNumberLabel)
        stack.addArrangedSubview(followerNumberLabel)
        stack.addArrangedSubview(likesNumbersLabel)
        stack.distribution = .fillEqually
        stack.axis = .horizontal
        return stack
    }()
    
    lazy var mainContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemTeal
        return view
    }()
    
    lazy var mainContainerView2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGreen
        return view
    }()
    
    lazy var profileCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(ProfileTimelineCell.self, forCellWithReuseIdentifier: cellID)
        view.backgroundColor = .systemOrange
        return view
    }()
    
    lazy var lowerContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray
        return view
    }()
    
    lazy var likedImagesCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 6
        layout.scrollDirection = .vertical
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(LikedImagesCell.self, forCellWithReuseIdentifier: likedImagesCellId)
        view.backgroundColor = .systemOrange
        return view
    }()
    
    private func constraintUpperContainerView() {
        mainContainerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12).isActive = true
        mainContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        mainContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive = true
        mainContainerView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
    }
    
    private func constraintImage() {
        profileImage.topAnchor.constraint(equalTo: mainContainerView.topAnchor).isActive = true
        profileImage.leadingAnchor.constraint(equalTo: mainContainerView.leadingAnchor).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    private func constraintHorizontalStack1() {
        horizontalStackView1.topAnchor.constraint(equalTo: mainContainerView.topAnchor, constant: 40).isActive = true
        horizontalStackView1.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 12).isActive = true
        horizontalStackView1.trailingAnchor.constraint(equalTo: mainContainerView.trailingAnchor, constant: -12).isActive = true
        horizontalStackView1.heightAnchor.constraint(equalToConstant: 15).isActive = true
    }
    
    private func constraintHorizontalStack2() {
        horizontalStackView2.topAnchor.constraint(equalTo: horizontalStackView1.bottomAnchor, constant: 6).isActive = true
        horizontalStackView2.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 12).isActive = true
        horizontalStackView2.trailingAnchor.constraint(equalTo: mainContainerView.trailingAnchor, constant: -12).isActive = true
        horizontalStackView2.heightAnchor.constraint(equalToConstant: 15).isActive = true
    }
    
    private func constraintMainContainerView2() {
        mainContainerView2.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 12).isActive = true
        mainContainerView2.leadingAnchor.constraint(equalTo: mainContainerView.leadingAnchor, constant: 12).isActive = true
        mainContainerView2.trailingAnchor.constraint(equalTo: mainContainerView.trailingAnchor, constant: -12).isActive = true
        mainContainerView2.bottomAnchor.constraint(equalTo: mainContainerView.bottomAnchor, constant: -12).isActive = true
    }
    
    private func constraintCollectionView() {
        profileCollectionView.topAnchor.constraint(equalTo: mainContainerView2.topAnchor).isActive = true
        profileCollectionView.leadingAnchor.constraint(equalTo: mainContainerView2.leadingAnchor).isActive = true
        profileCollectionView.trailingAnchor.constraint(equalTo: mainContainerView2.trailingAnchor).isActive = true
        profileCollectionView.bottomAnchor.constraint(equalTo: mainContainerView2.bottomAnchor).isActive = true
    }
    
    private func constraintLowerContainerView() {
        lowerContainerView.topAnchor.constraint(equalTo: mainContainerView.bottomAnchor, constant: 12).isActive = true
        lowerContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        lowerContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive = true
        lowerContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -12).isActive = true
    }
    
    private func constraintLowerCollectionView() {
        likedImagesCollectionView.topAnchor.constraint(equalTo: lowerContainerView.topAnchor).isActive = true
        likedImagesCollectionView.leadingAnchor.constraint(equalTo: lowerContainerView.leadingAnchor).isActive = true
        likedImagesCollectionView.trailingAnchor.constraint(equalTo: lowerContainerView.trailingAnchor).isActive = true
        likedImagesCollectionView.bottomAnchor.constraint(equalTo: lowerContainerView.bottomAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(mainContainerView)
        constraintUpperContainerView()
        
        mainContainerView.addSubview(profileImage)
        constraintImage()
        
        mainContainerView.addSubview(horizontalStackView1)
        constraintHorizontalStack1()
        
        mainContainerView.addSubview(horizontalStackView2)
        constraintHorizontalStack2()
        
        mainContainerView.addSubview(mainContainerView2)
        constraintMainContainerView2()
        
        mainContainerView2.addSubview(profileCollectionView)
        constraintCollectionView()
        
        profileCollectionView.delegate = self
        profileCollectionView.dataSource = self
        
        view.addSubview(lowerContainerView)
        constraintLowerContainerView()
        
        lowerContainerView.addSubview(likedImagesCollectionView)
        constraintLowerCollectionView()
        
        likedImagesCollectionView.delegate = self
        likedImagesCollectionView.dataSource = self
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        return
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (collectionView == likedImagesCollectionView) {
            return CGSize(width: collectionView.frame.width/3.25, height: collectionView.frame.width/3.25)
        }
        return CGSize(width: collectionView.frame.width/4, height: collectionView.frame.height)
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == likedImagesCollectionView) {
            return 15
        }
        return 8
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if (collectionView == likedImagesCollectionView) {
            let likedImageCell = collectionView.dequeueReusableCell(withReuseIdentifier: likedImagesCellId, for: indexPath) as! LikedImagesCell
            likedImageCell.backgroundColor = .systemBlue
            return likedImageCell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! ProfileTimelineCell
        return cell
    }

}
