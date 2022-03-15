//
//  CollectionViewCell.swift
//  UICollectionView
//
//  Created by macuser on 3/14/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
   

    @IBOutlet private weak var countryNameLabel: UILabel!
    
    func configure(with countryName: String) {
        countryNameLabel.text = countryName
    }
    
    
}
