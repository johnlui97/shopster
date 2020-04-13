//
//  ExploreViewController.swift
//  shopster
//
//  Created by John Lui on 2020-04-05.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController {
    
    var cellID = "explore_cellID"
    
    lazy var exploreCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        view.showsVerticalScrollIndicator = false
        view.backgroundColor = .systemOrange
        return view
    }()
    
    private func constraintExploreCollectionView() {
        exploreCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        exploreCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        exploreCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        exploreCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(exploreCollectionView)
        constraintExploreCollectionView()
        exploreCollectionView.delegate = self
        exploreCollectionView.dataSource = self
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        return
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height/4)
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        cell.backgroundColor = .systemIndigo
        return cell
    }
}
