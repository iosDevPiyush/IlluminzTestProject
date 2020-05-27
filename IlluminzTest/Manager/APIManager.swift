//
//  APIManager.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/26.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//
import UIKit
import Foundation
import Alamofire
import SwiftyJSON
import ObjectMapper

class RequestManager {
    
    static let shared = RequestManager()
    
    // MARK: - Properties
    weak var vc: HomeViewController?
    var responseData = DataAPIResponse()
    
    
    // MARK: - Function
    
    func getAPIResponse(completion: @escaping(DataAPIResponse? ,Error?) -> Void){
        Alamofire.request("http://13.57.77.29:3003/app/getHomeScreen", parameters: params, headers: headers)
            .responseJSON { response in
                switch(response.result){
                case .success(let response):
                    print(response)
                    let dataResponse = Mapper<DataAPIResponse>().map(JSONObject: response)
                    completion(dataResponse, nil)
                case .failure( let err):
                    print(err.localizedDescription)
                    completion(nil, err)
                }
        }
    }
}
