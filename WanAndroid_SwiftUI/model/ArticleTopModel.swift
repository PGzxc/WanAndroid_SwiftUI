//
//  ArticleTopModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/11/30.
//

import Foundation
import Alamofire
import ObjectMapper

// MARK: - ArticleTopModel-置顶
class ArticleTopModel: Mappable{
    
    var data: [Article]? = []
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

