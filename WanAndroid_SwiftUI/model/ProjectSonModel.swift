//
//  ProjectSonModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/17.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let projectSonModel = try? JSONDecoder().decode(ProjectSonModel.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseProjectSonModel { response in
//     if let projectSonModel = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire
import ObjectMapper

// MARK: - ProjectSonModel
class ProjectSonModel: Mappable{
    
    var data: ProjectSonModelData?
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

// MARK: - ProjectSonModelData
class ProjectSonModelData: Mappable {
    var curPage: Int?
    var datas: [Article]?
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
