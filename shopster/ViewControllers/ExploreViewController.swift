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
    
    var sampleDataCall = [ UIImage(named: "adidas1"),
                           UIImage(named: "levis1"),
                           UIImage(named: "model"),
                           UIImage(named: "nike1"),
                           UIImage(named: "nike2"),
                           UIImage(named: "profileTimeline"),
                           UIImage(named: "aritzia"),
                           UIImage(named: "burb"),
                           UIImage(named: "canadagoose"),
                           UIImage(named: "dr"),
                           UIImage(named: "gap"),
                           UIImage(named: "kanye"),
                           UIImage(named: "lv"),
                           UIImage(named: "uni"),
                           UIImage(named: "uniqlo")
    ]
    
    lazy var exploreCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(ExploreCells.self, forCellWithReuseIdentifier: cellID)
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
        
        var width: CGFloat
        
        if(indexPath.row == 0 || indexPath.row == 1) {
            width = ((view.frame.width) - 2 * 8)/2
            return CGSize(width: width, height: width)
        }
        
        if(indexPath.row == 2 || indexPath.row == 3 || indexPath.row == 4) {
            width = ((view.frame.width) - 3 * 8)/3
            return CGSize(width: width, height: width)
        }
        
        width = ((view.frame.width) - 3 * 8)/3
        return CGSize(width: width, height: view.frame.height/4)
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleDataCall.count
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! ExploreCells
        cell.exploreImages.image = sampleDataCall[indexPath.row]
        return cell
    }
}
