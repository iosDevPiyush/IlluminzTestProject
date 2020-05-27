//
//  HomeViewModel.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/27.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import Foundation
class HomeViewModel {
    // MARK: - Properties
    var apiData = [Data]()
    
    // MARK: - Functions
    func getHomePageData(completion: @escaping(Error?) -> Void) {
        RequestManager.shared.getAPIResponse { (response, error)  in
            if let error = error  {
                completion(error)
            } else {
                if let res = response, let data = res.data {
                    self.apiData = data
                    completion(nil)
                }
            }
        }
    }
}
