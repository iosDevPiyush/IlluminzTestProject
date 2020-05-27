//
//  SixthCell.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/27.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import UIKit

class SixthCell: UITableViewCell {
    // MARK: - IBOutlets
    
    @IBOutlet weak var trendingCollectionView: UICollectionView!
    // MARK: - Properties
    var cellData = [Products]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setCollectionView()
        self.refreshCollectionView()
    }
    
    class func Identifier() -> String {
        return String(describing: SixthCell.self)
    }
    
    func setCollectionView() {
        trendingCollectionView.dataSource = self
        trendingCollectionView.delegate = self
        trendingCollectionView.registerCell(TrendingCollectionCell.identifier())
    }
    func refreshCollectionView() {
        self.trendingCollectionView.reloadData()
    }
    
}

extension SixthCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TrendingCollectionCell.identifier(), for: indexPath) as? TrendingCollectionCell else {
            fatalError()
        }
        if let imgUrl = cellData[indexPath.item].images?.first?.thumbnail {
            cell.clothsImg.kf.setImage(with: URL(string: imgUrl))
        }
        cell.clothsLbl.text = cellData[indexPath.item].name
        cell.priceLabel.text = "₹\(cellData[indexPath.item].price ?? 0)"
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
