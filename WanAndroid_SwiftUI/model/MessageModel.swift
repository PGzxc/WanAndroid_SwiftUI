//
//  MessageModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/20.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let messageModel = try? JSONDecoder().decode(MessageModel.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseMessageModel { response in
//     if let messageModel = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire
import ObjectMapper
// MARK: - MessageModel
class MessageModel: Mappable {

    var data: MessageModelData?
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

// MARK: - MessageModelData
class MessageModelData: Mappable {

    var curPage: Int?
    var datas: [Message]?
    var offset: Int?
    var over: Bool?
    var pageCount, size, total: Int?
    
    required init?(map:Map) {
        
    }
    func mapping(map: Map) {
        curPage <- map["curPage"]
        datas <- map["datas"]
        offset <- map["offset"]
        over <- map["over"]
        pageCount <- map["pageCount"]
        size <- map["size"]
        total <- map["total"]
    }
}


// MARK: - DataElement
class Message: Mappable,Identifiable {
    
    var category, date: Int?
    var fromUser: String?
    var fromUserId: Int?
    var fullLink: String?
    var id, isRead: Int?
    var link: String?
    var message, niceDate: String?
    var tag: String?
    var title: String?
    var userId: Int?
    
    required init?(map:Map) {
        
    }
    func mapping(map: Map) {
        category <- map["category"]
        date <- map["date"]
        fromUser <- map["fromUser"]
        fromUserId <- map["fromUserId"]
        fullLink <- map["fullLink"]
        id <- map["id"]
        isRead <- map["isRead"]
        link <- map["link"]
        message <- map["message"]
        niceDate <- map["niceDate"]
        tag <- map["tag"]
        title <- map["title"]
        userId <- map["userId"]
    }
}
