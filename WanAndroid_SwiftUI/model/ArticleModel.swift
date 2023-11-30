//
//  ArticleModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/12.
//

import Foundation
import Alamofire
import ObjectMapper

// MARK: - ArticleModel
class ArticleModel: Mappable{
    
    var data: ArticleModelData?
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

// MARK: - ArticleModelData
class ArticleModelData: Mappable{
    var curPage: Int?
    var datas: [Article]? = []
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
class Article: Mappable,Identifiable {
    
    var isTop: Bool? = false
    var adminAdd: Bool?
    var apkLink: String?
    var audit: Int?
    var author: String?
    var canEdit: Bool?
    var chapterId: Int?
    var chapterName: String?
    var collect: Bool?
    var courseId: Int?
    var descMd: String?
    var envelopePic: String?
    var fresh: Bool?
    var host: String?
    var id: Int?
    var isAdminAdd: Bool?
    var link: String?
    var desc,niceDate, niceShareDate, origin, prefix: String?
    var projectLink: String?
    var publishTime, realSuperChapterId, selfVisible, shareDate: Int?
    var shareUser: String?
    var superChapterId: Int?
    var superChapterName: String?
    var tags: [Tag]?
    var title: String?
    var type, userId, visible, zan: Int?
    
    init() {
    }
    
    required init?(map:ObjectMapper.Map) {
        
    }
    func mapping(map: ObjectMapper.Map) {
        isTop <- map["isTop"]
        adminAdd <- map["adminAdd"]
        apkLink <- map["apkLink"]
        audit <- map["audit"]
        author <- map["author"]
        canEdit <- map["canEdit"]
        chapterId <- map["chapterId"]
        chapterName <- map["chapterName"]
        collect <- map["collect"]
        courseId <- map["courseId"]
        descMd <- map["descMd"]
        envelopePic <- map["envelopePic"]
        fresh <- map["fresh"]
        host <- map["host"]
        id <- map["id"]
        isAdminAdd <- map["isAdminAdd"]
        link <- map["link"]
        desc <- map["desc"]
        niceDate <- map["niceDate"]
        niceShareDate <- map["niceShareDate"]
        origin <- map["origin"]
        prefix <- map["prefix"]
        projectLink <- map["dataPrefix"]
        publishTime <- map["publishTime"]
        realSuperChapterId <- map["realSuperChapterId"]
        selfVisible <- map["selfVisible"]
        shareDate <- map["shareDate"]
        shareUser <- map["shareUser"]
        superChapterId <- map["superChapterId"]
        superChapterName <- map["superChapterName"]
        tags <- map["tags"]
        title <- map["title"]
        type <- map["type"]
        userId <- map["userId"]
        visible <- map["visible"]
        zan <- map["zan"]
        
    }
    
}
// MARK: - Tag
class Tag:Mappable,Identifiable{
    var name:String?
    var url: String?
    
    required init?(map:Map) {
        
    }
    func mapping(map: Map) {
        name <- map["name"]
        url <- map["url"]
    }
}
