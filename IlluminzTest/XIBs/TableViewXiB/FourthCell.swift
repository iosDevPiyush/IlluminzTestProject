//
//  FourthCell.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/27.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import UIKit
import Kingfisher

class FourthCell: UITableViewCell {
    // MARK: - IBOutlets
    
    @IBOutlet weak var clothsCollectionView: UICollectionView!
    // MARK: - Properties
    var cellData = [WorkType]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setCollectionView()
        self.refreshCollectionView()
    }
    
    class func Identifier() -> String {
        return String(describing: FourthCell.self)
    }
    
    func setCollectionView() {
        clothsCollectionView.dataSource = self
        clothsCollectionView.delegate = self
        clothsCollectionView.registerCell(ClothesCell.identifier())
    }
    func refreshCollectionView() {
        self.clothsCollectionView.reloadData()
    }
    
}
extension FourthCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ClothesCell.identifier(), for: indexPath) as? ClothesCell else {
            fatalError()
        }
        if let imgUrl = cellData[indexPath.item].imageToShow?.thumbnail {
            cell.clothsImg.kf.setImage(with: URL(string: imgUrl))
        }
        cell.clothsLbl.text = cellData[indexPath.item].name
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.bounds.width/3
        let height = CGFloat(200)//self.bounds.height/2
        
        return CGSize(width: width, height: height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
