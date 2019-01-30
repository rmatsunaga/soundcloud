//
//  ViewController.swift
//  Soundcloud
//
//  Created by Rey Matsunaga on 1/29/19.
//  Copyright © 2019 Rey Matsunaga. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    private let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        
        collectionView?.register(SinglePhotoCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(MultiPhotoCell.self, forCellWithReuseIdentifier: "fuck")
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SinglePhotoCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fuck", for: indexPath) as! MultiPhotoCell
            return cell
        }
    
//        cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SinglePhotoCell
//        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 230)
    }

}






