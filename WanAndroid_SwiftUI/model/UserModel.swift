//
//  UserModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/12.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userModel = try? JSONDecoder().decode(UserModel.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseUserModel { response in
//     if let userModel = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire
import ObjectMapper

// MARK: - UserModel
class UserModel: Mappable{
    
    var data: User?
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
class User: Mappable ,Identifiable{
    var admin: Bool?
    var chapterTops: [Int]?
    var coinCount: Int?
    var collectIDS: [Int]?
    var email, icon: String?
    var id: Int?
    var nickname, password, publicName, token: String?
    var type: Int?
    var username: String?
    
    required init?(map:Map) {
        
    }
    
    func mapping(map: Map) {
        admin <- map["admin"]
        chapterTops <- map["chapterTops"]
        coinCount <- map["coinCount"]
        collectIDS <- map["collectIDS"]
        email <- map["email"]
        icon <- map["icon"]
        id <- map["id"]
        nickname <- map["nickname"]
        password <- map["password"]
        publicName <- map["publicName"]
        token <- map["token"]
        type <- map["type"]
        username <- map["username"]
    }
}



