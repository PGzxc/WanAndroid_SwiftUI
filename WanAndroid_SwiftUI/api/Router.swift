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
        case homeArticleTop //置顶文章
        case login(String,String) //用户登录
        case collectList(Int?)
        case tree //体系
        case project //项目
        case projectArticle(Int?,Int) //项目文章
        case coinUserInfo //积分-用户信息-使用token
        case messageUnRead(Int?) //消息-未读
        case messageRead(Int?) //消息-已读
        
        
        var baseURL: URL {
            return URL(string: API.baseURL)!
        }
        
        var method: HTTPMethod {
            switch self {
            case .homeBanner: return .get
            case .homeArticleList: return .get
            case .homeArticleTop: return .get
            case .login: return .post
            case .collectList: return .get
            case .tree: return .get
            case .project: return .get
            case .projectArticle: return .get
            case .coinUserInfo: return .get
            case .messageUnRead: return .get
            case .messageRead: return .get
                
            }
        }
        
        var path: String {
            switch self {
            case .homeBanner: return API.homeBanner
            case .homeArticleList(let page): return String(format:API.homeArticleList, page ?? 0)
            case .homeArticleTop: return API.homeArticleTop
            case .login(_, _): return API.login
            case .collectList(let index):return String(format: API.collectList, index ?? 0)
            case .tree: return API.treeList
            case .project: return API.projectTreeList
            case .projectArticle(let page,_): return String(format: API.projectArticleList, page ?? 0)
            case .coinUserInfo: return API.coinUserInfo
            case .messageUnRead(let page): return String(format: API.messageUnReadList, page ?? 1)
            case .messageRead(let page): return String(format: API.messageReadList, page ?? 1)
                
            }
        }
        
        var params: [String: Any]?  {
            switch self {
            case .homeArticleList:return nil
            case .homeBanner:return nil
            case .homeArticleTop: return nil
            case .login(let username, let password):
                return ["username":username,"password":password]
            case .collectList: return nil
            case .tree: return nil
            case .project: return nil
            case .projectArticle(_,let cid): return ["cid":cid]
            case .coinUserInfo: return nil
            case .messageUnRead: return nil
            case .messageRead: return nil
                
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
            
            //return request
        }
    }
}



