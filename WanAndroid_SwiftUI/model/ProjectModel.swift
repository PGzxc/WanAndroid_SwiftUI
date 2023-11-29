//
//  ProjectModelo.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/17.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let projectModel = try? JSONDecoder().decode(ProjectModel.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseProjectModel { response in
//     if let projectModel = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire
import ObjectMapper

// MARK: - ProjectModel
class ProjectModel: Mappable {
    
    var data: [Project]?
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
class Project: Mappable,Identifiable {
    
    var articleList: [Article]?
    var author: String?
    var children: [TreeItem]?
    var courseId: Int?
    var cover, desc: String?
    var id: Int?
    var lisense, lisenseLink, name: String?
    var order, parentChapterId, type: Int?
    var userControlSetTop: Bool?
    var visible: Int?
    
    required init?(map:Map) {
        
    }
    func mapping(map: Map) {
        articleList <- map["articleList"]
        author <- map["author"]
        children <- map["children"]
        courseId <- map["courseId"]
        cover <- map["cover"]
        desc <- map["desc"]
        id <- map["id"]
        lisense <- map["lisense"]
        lisenseLink <- map["lisenseLink"]
        name <- map["name"]
        order <- map["order"]
        parentChapterId <- map["parentChapterId"]
        type <- map["type"]
        userControlSetTop <- map["userControlSetTop"]
        visible <- map["visible"]
    }

}
