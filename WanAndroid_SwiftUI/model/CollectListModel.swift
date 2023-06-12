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

// MARK: - CollectListModel
struct CollectListModel: Codable ,ModelProtocol{
    
    // MARK: - Helper functions for creating encoders and decoders

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
    
    let data: CollectListModelData?
    let errorCode: Int?
    let errorMsg: String?
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseCollectListModelData { response in
//     if let collectListModelData = response.result.value {
//       ...
//     }
//   }

// MARK: - CollectListModelData
struct CollectListModelData: Codable {
    let curPage: Int?
    let datas: [CollectModel]?
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
struct CollectModel: Codable {
    let author: String?
    let chapterID: Int?
    let chapterName: String?
    let courseID: Int?
    let desc: String?
    let envelopePic: String?
    let id: Int?
    let link: String?
    let niceDate, origin: String?
    let originID, publishTime: Int?
    let title: String?
    let userID, visible, zan: Int?

    enum CodingKeys: String, CodingKey {
        case author
        case chapterID = "chapterId"
        case chapterName
        case courseID = "courseId"
        case desc, envelopePic, id, link, niceDate, origin
        case originID = "originId"
        case publishTime, title
        case userID = "userId"
        case visible, zan
    }
}



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
    func responseCollectListModel(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<CollectListModel>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }
}

