//
//  ArticleModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/12.
//

import Foundation
import Alamofire

// MARK: - ArticleModel
struct ArticleModel: Codable,ModelProtocol {
    
    func newJSONDecoder() -> JSONDecoder {
        let decoder = JSONDecoder()
        if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
            decoder.dateDecodingStrategy = .iso8601
        }
        return decoder
    }

    func newJSONEncoder() -> JSONEncoder {
        let encoder = JSONEncoder()
        if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
            encoder.dateEncodingStrategy = .iso8601
        }
        return encoder
    }
    
    let data: ArticleModelData?
    let errorCode: Int?
    let errorMsg: String?
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseArticleModelData { response in
//     if let articleModelData = response.result.value {
//       ...
//     }
//   }

// MARK: - ArticleModelData
struct ArticleModelData: Codable {
    let curPage: Int?
    let datas: [DataElement]?
    let offset: Int?
    let over: Bool?
    let pageCount, size, total: Int?
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseDataElement { response in
//     if let dataElement = response.result.value {
//       ...
//     }
//   }

// MARK: - DataElement
struct DataElement: Codable {
    let adminAdd: Bool?
    let apkLink: String?
    let audit: Int?
    let author: String?
    let canEdit: Bool?
    let chapterID: Int?
    let chapterName: String?
    let collect: Bool?
    let courseID: Int?
    let desc: Desc?
    let descMd: String?
    let envelopePic: String?
    let fresh: Bool?
    let host: String?
    let id: Int?
    let isAdminAdd: Bool?
    let link: String?
    let niceDate, niceShareDate, origin, dataPrefix: String?
    let projectLink: String?
    let publishTime, realSuperChapterID, selfVisible, shareDate: Int?
    let shareUser: String?
    let superChapterID: Int?
    let superChapterName: String?
    let tags: [Tag]?
    let title: String?
    let type, userID, visible, zan: Int?

    enum CodingKeys: String, CodingKey {
        case adminAdd, apkLink, audit, author, canEdit
        case chapterID = "chapterId"
        case chapterName, collect
        case courseID = "courseId"
        case desc, descMd, envelopePic, fresh, host, id, isAdminAdd, link, niceDate, niceShareDate, origin
        case dataPrefix = "prefix"
        case projectLink, publishTime
        case realSuperChapterID = "realSuperChapterId"
        case selfVisible, shareDate, shareUser
        case superChapterID = "superChapterId"
        case superChapterName, tags, title, type
        case userID = "userId"
        case visible, zan
    }
}

enum Desc: String, Codable {
    case android史上更全更完整获取设备信息获取手机唯一标识 = "Android-史上更全、更完整，获取设备信息、获取手机唯一标识"
    case empty = ""
    case 小程序版玩安卓 = "小程序版玩安卓"
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseTag { response in
//     if let tag = response.result.value {
//       ...
//     }
//   }

// MARK: - Tag
struct Tag: Codable {
    let name, url: String?
}

// MARK: - Helper functions for creating encoders and decoders



// MARK: - Alamofire response handlers

extension DataRequest {
    fileprivate func decodableResponseSerializer<T: Decodable>() -> DataResponseSerializer<T> {
        return DataResponseSerializer { _, response, data, error in
            guard error == nil else { return .failure(error!) }

            guard let data = data else {
                return .failure(AFError.responseSerializationFailed(reason: .inputDataNil))
            }

            return Result { try newJSONDecoder().decode(T.self, from: data) }
        }
    }

    @discardableResult
    fileprivate func responseDecodable<T: Decodable>(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
        return response(queue: queue, responseSerializer: decodableResponseSerializer(), completionHandler: completionHandler)
    }

    @discardableResult
    func responseArticleModel(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<ArticleModel>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }
}

