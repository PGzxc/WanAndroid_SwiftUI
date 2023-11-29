//
//  CollectListModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/12.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let collectListModel = try? JSONDecoder().decode(CollectListModel.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseCollectListModel { response in
//     if let collectListModel = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire
import ObjectMapper

// MARK: - CollectListModel
class CollectListModel: Mappable{
    
    var data: CollectListModelData?
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

// MARK: - CollectListModelData
class CollectListModelData: Mappable {
    var curPage: Int?
    var datas: [CollectModel]?
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
class CollectModel: Mappable {
    var author: String?
    var chapterID: Int?
    var chapterName: String?
    var courseID: Int?
    var desc: String?
    var envelopePic: String?
    var id: Int?
    var link: String?
    var niceDate, origin: String?
    var originID, publishTime: Int?
    var title: String?
    var userID, visible, zan: Int?
    
    required init?(map:Map) {
        
    }
    func mapping(map: Map) {
        author <- map["author"]
        chapterID <- map["chapterID"]
        chapterName <- map["chapterName"]
        courseID <- map["courseID"]
        desc <- map["desc"]
        envelopePic <- map["envelopePic"]
        id <- map["id"]
        link <- map["link"]
        niceDate <- map["niceDate"]
        origin <- map["origin"]
        originID <- map["originID"]
        publishTime <- map["publishTime"]
        title <- map["title"]
        userID <- map["userID"]
        visible <- map["visible"]
        zan <- map["zan"]
    }
    
}
