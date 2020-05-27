//
//  HomeViewController.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/26.
//  Copyright © 2020 Piyush sharma. All rights reserved.

import UIKit
import Alamofire
import SwiftyJSON
import Kingfisher

class HomeViewController: UIViewController {
    // MARK: - IBOutlets
    
    @IBOutlet weak var homeTableView: UITableView!
    
    // MARK: - Properties
    
    var viewModel = HomeViewModel()
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
        self.viewModel.getHomePageData { (error) in
            if let _ = error {
                // Error handling
            } else {
                self.homeTableView.reloadData()
            }
        }
    }
    
    // MARK: - Functions
    func setUI() {
        registerTableNib()
    }
    
    func registerTableNib() {
        homeTableView.dataSource = self
        homeTableView.delegate = self
        
        self.homeTableView.registerCell(FirstCollectionCell.identifier())
        self.homeTableView.registerCell(SecondImgCell.identifier())
        self.homeTableView.registerCell(ThirdCell.Identifier())
        self.homeTableView.registerCell(FourthCell.Identifier())
        self.homeTableView.registerCell(FifthCEll.identifier())
        self.homeTableView.registerCell(SixthCell.Identifier())
        self.homeTableView.registerCell(SeventhCell.Identifier())
        self.homeTableView.registerCell(EighthCell.Identifier())
    }
}

// MARK: - Extension

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.apiData.count > 0 ? 8 : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.item == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: FirstCollectionCell.identifier(), for: indexPath) as? FirstCollectionCell else {
                fatalError()
            }
            if let dataSource = self.viewModel.apiData.filter({$0.type == "Categories"}).first, let categoriesArr = dataSource.categories {
                cell.firstCellData = categoriesArr
                cell.refreshCollectionView()
            }
            
            return cell
        } else if indexPath.item == 1 {
            guard  let cell2 = tableView.dequeueReusableCell(withIdentifier: SecondImgCell.identifier(), for: indexPath) as? SecondImgCell else {
                fatalError("Unable to Load Cell")
            }
            if let dataSource = self.viewModel.apiData.filter({$0.type == "banner"}).first, let bannerArr = dataSource.banner {
                if let imgURL = bannerArr.first?.image?.thumbnail {
                    cell2.discountedImg.kf.setImage(with: URL(string: imgURL))
                }
            }
            
            return cell2
        } else if indexPath.item == 2 {
            guard let cell3 = tableView.dequeueReusableCell(withIdentifier: ThirdCell.Identifier(), for: indexPath) as? ThirdCell else {
                fatalError()
            }
            cell3.headingLbl.text = self.viewModel.apiData[indexPath.row].heading
            
            return cell3
        } else if indexPath.item == 3 {
            guard let cell4 = tableView.dequeueReusableCell(withIdentifier: FourthCell.Identifier(), for: indexPath) as? FourthCell else {
                fatalError()
            }
            if let dataSource = self.viewModel.apiData.filter({$0.type == "workType"}).first, let workArr = dataSource.worktype {
                cell4.cellData = workArr
                cell4.refreshCollectionView()
            }
            return cell4
            
        } else if indexPath.item == 4 {
            guard let cell5 = tableView.dequeueReusableCell(withIdentifier: FifthCEll.identifier() , for: indexPath) as? FifthCEll else {
                fatalError()
            }
            cell5.headingLbl.text = self.viewModel.apiData[indexPath.row - 1].heading
            return cell5
        } else if indexPath.item == 5 {
            guard let cell6 = tableView.dequeueReusableCell(withIdentifier: SixthCell.Identifier(), for: indexPath) as? SixthCell else {
                return UITableViewCell()
            }
            if let dataSource = self.viewModel.apiData.filter({$0.type == "trending"}).first, let productsArr = dataSource.products {
                cell6.cellData = productsArr
                cell6.refreshCollectionView()
                
            }
            return cell6
        } else if indexPath.item == 6 {
            guard let cell7 = tableView.dequeueReusableCell(withIdentifier: SeventhCell.Identifier(), for: indexPath) as? SeventhCell else {
                return UITableViewCell()
            }
            cell7.headingLbl.text = self.viewModel.apiData[indexPath.row - 2].heading
            return cell7
            
        } else if indexPath.item == 7 {
            guard let cell8 = tableView.dequeueReusableCell(withIdentifier: EighthCell.Identifier(), for: indexPath) as? EighthCell else {
                fatalError()
            }
            if let dataSource = self.viewModel.apiData.filter({$0.type == "newarrivals"}).first, let productsArr = dataSource.products {
                cell8.newArrivalData = productsArr
                cell8.refreshCollectionView()
                
            }
            return cell8
        }
        return UITableViewCell()
    }
}
