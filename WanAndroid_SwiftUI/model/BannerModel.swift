//
//  BannerModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/12.
//

import Foundation
import Alamofire
import ObjectMapper
//
//// MARK: - BannerModel
class BannerModel: Mappable,ObservableObject{
    
    var data: [Banner]?
    var errorCode: Int?
    var errorMsg: String?
    
    required init?(map:Map) {
        
    }
    func mapping(map: Map) {
        data <- map["data"]
        errorCode <- map["errorCode"]
        errorMsg <- map["errorMsg"]
    }
}

// MARK: - Datum
class Banner: Mappable,Identifiable, ObservableObject {
 
    var desc: String?
    var id: Int?
    var imagePath: String?
    var isVisible, order: Int?
    var title: String?
    var type: Int?
    var url: String?
    
    required init?(map:Map) {
        
    }
    func mapping(map:Map) {
        desc <- map["desc"]
        id <- map["id"]
        imagePath <- map["imagePath"]
        isVisible <- map["isVisible"]
        order <- map["order"]
        title <- map["title"]
        type <- map["type"]
        url <- map["url"]
    }
}
