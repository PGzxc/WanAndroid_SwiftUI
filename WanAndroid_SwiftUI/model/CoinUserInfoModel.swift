//
//  UserInfoModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/20.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userInfoModel = try? JSONDecoder().decode(UserInfoModel.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseUserInfoModel { response in
//     if let userInfoModel = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire
import ObjectMapper

// MARK: - UserInfoModel
class CoinUserInfoModel: Mappable {
    
    var data: UserInfo?
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


// MARK: - DataClass
class UserInfo: Mappable {
    var coinCount, level: Int?
    var nickname, rank: String?
    var userID: Int?
    var username: String?
    
    
    required init?(map:Map) {
        
    }
    func mapping(map: Map) {
        coinCount <- map["coinCount"]
        level <- map["level"]
        nickname <- map["nickname"]
        rank <- map["rank"]
        userID <- map["userID"]
        username <- map["username"]
    }
    
}
