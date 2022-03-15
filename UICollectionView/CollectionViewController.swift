//
//  CollectionViewController.swift
//  UICollectionView
//
//  Created by macuser on 3/14/22.
//

import UIKit



class CollectionViewController: UICollectionViewController {

    let dataSource: [String] = ["United Kindrom", "Japan", "China", "Brazil", "India", "Russia", "USA"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return dataSource.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell {
            
            countryCell.configure(with: dataSource[indexPath.row])
            
            cell = countryCell
        }
        
        
        return cell
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected Country: \(dataSource[indexPath.row])")
    }

}
