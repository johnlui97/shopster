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
        view.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        view.isPagingEnabled = true
        view.showsHorizontalScrollIndicator = false
        view.backgroundColor = .systemOrange
        return view
    }()
    
    private func constraintProductImageCollectionView() {
        productImageCollectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        productImageCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        productImageCollectionView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        productImageCollectionView.heightAnchor.constraint(equalToConstant: view.frame.height/2).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(productImageCollectionView)
        constraintProductImageCollectionView()
        productImageCollectionView.delegate = self
        productImageCollectionView.dataSource = self
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    internal override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        cell.backgroundColor = indexPath.row%2==0 ? .systemGreen : .systemRed
        return cell
    }
    
    internal func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}
