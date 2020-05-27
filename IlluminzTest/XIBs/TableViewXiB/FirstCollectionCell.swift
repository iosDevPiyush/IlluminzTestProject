//
//  FirstCollectionCell.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/26.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import UIKit
import Kingfisher


class FirstCollectionCell: UITableViewCell {
    // MARK: - IBOutlets
    
    @IBOutlet weak var firstCollectionView: UICollectionView!
    // MARK: - Properties
    var firstCellData = [Categories]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.registerCollectionView()
    }
    // MARK: - Function
    
    class func identifier()-> String {
        return String(describing: FirstCollectionCell.self)
    }
    
    func registerCollectionView() {
        self.firstCollectionView.registerCell(CircularCell.identifier())
        firstCollectionView.delegate = self
        firstCollectionView.dataSource = self
    }
    func refreshCollectionView() {
        self.firstCollectionView.reloadData()
    }
}

//MARK: - Extension

extension FirstCollectionCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return firstCellData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CircularCell.identifier(), for: indexPath) as? CircularCell else {
            fatalError("Unable To Load Cell")
        }
        if let imgUrl = firstCellData[indexPath.item].imageToShow?.thumbnail {
            
            cell.kurtasImg.kf.setImage(with: URL(string: imgUrl)!)
        }
        cell.kurtaLbl.text = firstCellData[indexPath.row].name
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width/3.5, height: self.frame.height)
    }
    
    
}
