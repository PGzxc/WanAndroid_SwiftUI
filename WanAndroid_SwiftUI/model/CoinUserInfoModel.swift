//
//  UserInfoModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/20.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userInfoModel = try? JSONDecoder().decode(UserInfoModel.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseUserInfoModel { response in
//     if let userInfoModel = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire

// MARK: - UserInfoModel
struct CoinUserInfoModel: Codable ,ModelProtocol {
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
    
    let data: UserInfo?
    let errorCode: Int?
    let errorMsg: String?
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseDataClass { response in
//     if let dataClass = response.result.value {
//       ...
//     }
//   }

// MARK: - DataClass
struct UserInfo: Codable {
    let coinCount, level: Int?
    let nickname, rank: String?
    let userID: Int?
    let username: String?

    enum CodingKeys: String, CodingKey {
        case coinCount, level, nickname, rank
        case userID = "userId"
        case username
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
    func responseCoinUserInfoModel(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<CoinUserInfoModel>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }
}

