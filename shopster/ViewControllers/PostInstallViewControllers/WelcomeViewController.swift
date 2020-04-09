//
//  WelcomeViewController.swift
//  shopster
//
//  Created by John Lui on 2020-04-06.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var cellID = "onboarding_cells"
    
    lazy var welcomeCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemRed
        view.isScrollEnabled = false
        view.isPagingEnabled = true
        view.showsHorizontalScrollIndicator = false
        return view
    }()
    
    private func constrainWelcomeCollectionView() {
        welcomeCollectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        welcomeCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        welcomeCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        welcomeCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(welcomeCollectionView)
        constrainWelcomeCollectionView()
        
        welcomeCollectionView.register(WelcomeCollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        welcomeCollectionView.delegate = self
        welcomeCollectionView.dataSource = self
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Transitioning")
        guard indexPath.row > indexPath.count else {
            let nextIndexPath = NSIndexPath(row: indexPath.row + 1, section: indexPath.section)
            self.welcomeCollectionView.scrollToItem(at: nextIndexPath as IndexPath, at: .right, animated: true)
            return
        }
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = welcomeCollectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! WelcomeCollectionViewCell
        cell.viewNumber = indexPath.row
        cell.backgroundColor = indexPath.row%2==0 ? .systemYellow : .systemBlue
        return cell
    }
    
    internal func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
