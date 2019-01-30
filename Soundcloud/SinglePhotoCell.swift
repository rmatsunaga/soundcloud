//
//  SinglePhotoCell.swift
//  Soundcloud
//
//  Created by Rey Matsunaga on 1/30/19.
//  Copyright © 2019 Rey Matsunaga. All rights reserved.
//

import UIKit

class SinglePhotoCell: UICollectionViewCell {
    
    // Initialize the category cell
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .red
    }
    
    
}


