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

// MARK: - MessageModel
struct MessageModel: Codable {

    let data: MessageModelData?
    let errorCode: Int?
    let errorMsg: String?
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseMessageModelData { response in
//     if let messageModelData = response.result.value {
//       ...
//     }
//   }

// MARK: - MessageModelData
struct MessageModelData: Codable {

    let curPage: Int?
    let datas: [Message]?
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
struct Message: Codable,Identifiable,Equatable {
    
    let category, date: Int?
    let fromUser: String?
    let fromUserID: Int?
    let fullLink: String?
    let id, isRead: Int?
    let link: String?
    let message, niceDate: String?
    let tag: String?
    let title: String?
    let userID: Int?

    enum CodingKeys: String, CodingKey {
        case category, date, fromUser
        case fromUserID = "fromUserId"
        case fullLink, id, isRead, link, message, niceDate, tag, title
        case userID = "userId"
    }
}

//enum Link: String, Codable {
//    case wendaShow8857 = "/wenda/show/8857"
//}


// MARK: - Helper functions for creating encoders and decoders
//func newJSONDecoder() -> JSONDecoder {
//    let decoder = JSONDecoder()
//    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
//        decoder.dateDecodingStrategy = .iso8601
//    }
//    return decoder
//}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
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
    func responseMessageModel(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<MessageModel>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }
}

