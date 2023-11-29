//
//  TreeModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/16.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let treeModel = try? JSONDecoder().decode(TreeModel.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseTreeModel { response in
//     if let treeModel = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire
import ObjectMapper

// MARK: - TreeModel
class TreeModel: Mappable{
    // MARK: - Helper functions for creating encoders and decoders
    
    var data: [TreeItem]?
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
class TreeItem: Mappable,Identifiable {
    var articleList: [Article]?
    var author: String?
    var children: [TreeItem]?
    var courseID: Int?
    var cover: String?
    var desc: String?
    var id: Int?
    var lisense: String?
    var lisenseLink: String?
    var name: String?
    var order, parentChapterID, type: Int?
    var userControlSetTop: Bool?
    var visible: Int?
    
    required init?(map:Map) {
        
    }
    func mapping(map: Map) {
        articleList <- map["articleList"]
        author <- map["author"]
        children <- map["children"]
        courseID <- map["courseID"]
        cover <- map["cover"]
        desc <- map["desc"]
        id <- map["id"]
        lisense <- map["lisense"]
        lisenseLink <- map["lisenseLink"]
        name <- map["name"]
        order <- map["order"]
        parentChapterID <- map["parentChapterID"]
        type <- map["type"]
        userControlSetTop <- map["userControlSetTop"]
        visible <- map["visible"]
    }

}
