//
//  Router.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/12.
//

import Foundation
import Alamofire
import ObjectMapper

internal extension APIService{
    
    enum Router: URLRequestConvertible {
        case homeArticleList(Int?) //首页文章列表
        case homeBanner //首页轮播图
        case login(String,String) //用户登录
        case collectList(Int?)
        case tree //体系
       

        var baseURL: URL {
            return URL(string: API.baseURL)!
        }

        var method: HTTPMethod {
            switch self {
            case .homeBanner: return .get
            case .homeArticleList: return .get
            case .login: return .post
            case .collectList: return .get
            case .tree: return .get
                
            }
        }
        
        var path: String {
            switch self {
            case .homeBanner: return API.homeBanner
            case .homeArticleList(let page): return String(format:API.homeArticleList, page ?? 0)
            case .login(_, _): return API.login
            case .collectList(let index):return String(format: API.collectList, index ?? 0)
            case .tree: return API.treeList
            }
        }
        
        var params: [String: Any]?  {
                switch self {
                case .homeArticleList:return nil
                case .homeBanner:return nil
                case .login(let username, let password):
                    return ["username":username,"password":password]
                case .collectList: return nil
                case .tree: return nil
                }
            }

        func asURLRequest() throws -> URLRequest {
            
            let url = baseURL.appendingPathComponent(path)
            var request = URLRequest(url: url)
            request.httpMethod = method.rawValue
            request.addValue(Storage.shared.$setCookie.wrappedValue, forHTTPHeaderField: "Cookie") //添加cookie
            //request.httpBody = try JSONSerialization.data(withJSONObject: params,options: [])
            
            //let encoding = JSONEncoding.default
            let encoding = URLEncoding.default
            return try encoding.encode(request, with: params)
            
            return request
        }
    }
}



