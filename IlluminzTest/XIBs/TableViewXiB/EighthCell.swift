//
//  EighthCell.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/27.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import UIKit

class EighthCell: UITableViewCell {
    @IBOutlet weak var newArrivalCollectionCell: UICollectionView!
    var newArrivalData = [Products]()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.setCollectionView()
    }
    
    func setCollectionView() {
        newArrivalCollectionCell.dataSource = self
        newArrivalCollectionCell.delegate = self
        newArrivalCollectionCell.registerCell(NewArrivalCell.identifier())
    }
    
    func refreshCollectionView() {
        newArrivalCollectionCell.reloadData()
    }
    class func Identifier() -> String {
        return String(describing: EighthCell.self)
    }
    
}


extension EighthCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewArrivalCell.identifier(), for: indexPath) as? NewArrivalCell else {
            fatalError()
        }
        if let imgUrl = newArrivalData[indexPath.item].images?.first?.thumbnail {
            cell.newArrivalImg.kf.setImage(with: URL(string: imgUrl))
        }
        
        cell.newArrivalName.text = newArrivalData[indexPath.item].name
        cell.newArrivalPrice.text = "₹\(newArrivalData[indexPath.item].price ?? 0)"
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.bounds.width/2
        let height = CGFloat(325)//self.bounds.height/2
        
        return CGSize(width: width, height: height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}


