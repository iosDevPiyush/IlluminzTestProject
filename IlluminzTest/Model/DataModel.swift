//
//  DataModel.swift
//  IlluminzTest
//
//  Created by Piyush sharma on 2020/5/26.
//  Copyright © 2020 Piyush sharma. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON
import ObjectMapper

class DataAPIResponse: Mappable {
    var data: [Data]?
    
    required init?(map: Map) {
    }
    
    init() { }
    func mapping(map: Map) {
        data <- map["data"]
    }
}

class Data: Mappable {
    var type: String?
    var title: String?
    var heading: String?
    var categories: [Categories]?
    var banner: [Banner]?
    var worktype: [WorkType]?
    var products: [Products]?
    var count: Int?
    
    required init?(map: Map) {
     }
     
    func mapping(map: Map) {
         type <- map["type"]
        title <- map["title"]
        heading <- map["heading"]
        categories <- map["categories"]
        count <- map["count"]
        banner <- map["banner"]
        worktype <- map["workType"]
        products <- map["products"]
     }
    
}

class Categories: Mappable {
    
    var id: Int?
    var name: String?
    var parent_id: Int?
    var is_deleted: Int?
    var imageToShow: ImagesToShow?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        parent_id <- map["parent_id"]
        is_deleted <- map["is_deleted"]
        imageToShow <- map["imageToShow"]
    }
    
}

class Banner : Mappable {
    var id : Int?
    var type : Int?
    var title : String?
    var type_id : Int?
    var image_id : Int?
    var position : Int?
    var is_active : Int?
    var is_deleted : Int?
    var added_on : String?
    var updated_on : String?
    var image : ImagesToShow?

    required init(map: Map) {

    }

    func mapping(map: Map) {

        id <- map["id"]
        type <- map["type"]
        title <- map["title"]
        type_id <- map["type_id"]
        image_id <- map["image_id"]
        position <- map["position"]
        is_active <- map["is_active"]
        is_deleted <- map["is_deleted"]
        added_on <- map["added_on"]
        updated_on <- map["updated_on"]
        image <- map["image"]
    }

}

class WorkType: Mappable {
    var id: Int?
    var name: String?
    var image_id: Int?
    var imageToShow: ImagesToShow?
    
    required init?(map: Map) {
       }
    
    func mapping(map: Map) {
         id <- map["id"]
         name <- map["name"]
         image_id <- map["image_id"]
         imageToShow <- map["imageToShow"]
    }
    
}
class ProductCategory: Mappable {
    
    var id: Int?
    var name: String?

    required init?(map: Map) {
    }
    func mapping(map: Map) {
    id <- map["id"]
    name <- map["name"]
    }
}

class Products : Mappable {
var id : Int?
var parent_id : String?
var merchant_id : Int?
var sku : String?
var name : String?
var price : Int?
var original_price : Int?
var quantity : Int?
var attribute_set_id : Int?
var type : Int?
var is_visible : Int?
var is_new : Int?
var is_trending : Int?
var description : String?
var measurement_id : String?
var rating : Int?
var tax_id : Int?
var is_deleted : Int?
var added_on : String?
var updated_on : String?
var deleted_on : String?
var show_individual : Int?
var work_type : Int?
var material_type : String?
var stitch_time : String?
var category_id : Int?
var total_orders : Int?
var merchant_name : String?
var discount : Int?
var ratings : String?
var variants : String?
var categories : [Categories]?
var images : [ImagesToShow]?
var inWishList : Int?

required init?(map: Map) {

}

func mapping(map: Map) {

    id <- map["id"]
    parent_id <- map["parent_id"]
    merchant_id <- map["merchant_id"]
    sku <- map["sku"]
    name <- map["name"]
    price <- map["price"]
    original_price <- map["original_price"]
    quantity <- map["quantity"]
    attribute_set_id <- map["attribute_set_id"]
    type <- map["type"]
    is_visible <- map["is_visible"]
    is_new <- map["is_new"]
    is_trending <- map["is_trending"]
    description <- map["description"]
    measurement_id <- map["measurement_id"]
    rating <- map["rating"]
    tax_id <- map["tax_id"]
    is_deleted <- map["is_deleted"]
    added_on <- map["added_on"]
    updated_on <- map["updated_on"]
    deleted_on <- map["deleted_on"]
    show_individual <- map["show_individual"]
    work_type <- map["work_type"]
    material_type <- map["material_type"]
    stitch_time <- map["stitch_time"]
    category_id <- map["category_id"]
    total_orders <- map["total_orders"]
    merchant_name <- map["merchant_name"]
    discount <- map["discount"]
    ratings <- map["ratings"]
    variants <- map["variants"]
    categories <- map["categories"]
    images <- map["images"]
    inWishList <- map["inWishList"]
}

}


class ImagesToShow: Mappable {

    var id: Int?
    var original: String?
    var thumbnail: String?

    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        original <- map["original"]
        thumbnail <- map["thumbnail"]
    }
    
}
