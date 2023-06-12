//
//  APIService.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/12.
//

import Foundation
import Alamofire


struct APIService {

    //MARK: - Singleton
    static let instance = APIService()
    
    init(){}
    
    //MARK: - URL
    
    func getBanner(completion:@escaping (BannerModel?, Error?)->()){
        Alamofire.request(Router.homeBanner).responseBannerModel{(response: DataResponse<BannerModel>) in
            if let error = response.error{
                completion(nil,error)
                return
            }
            if let banner = response.result.value {
                completion(banner,nil)
                return
            }
        }
    }
    
    func getArticle(with page: Int,completion:@escaping (ArticleModel?, Error?)->()){
      
        Alamofire.request(Router.homeArticleList(page)).responseArticleModel{(response: DataResponse<ArticleModel>) in
            
            if let error = response.error{
                completion(nil,error)
                return
            }
            if let article = response.result.value {
                completion(article,nil)
                return
            }
        }
    }
    
    func userLogin(with username:String,with password:String,completion:@escaping (UserModel?, Error?)->()){
        
        Alamofire.request(Router.login(username, password)).responseUserModel{ (response:DataResponse<UserModel>) in
            
            if let error = response.error{
                completion(nil,error)
                return
            }
            
            if let user = response.result.value{
                guard let setCookie = response.response?.allHeaderFields["Set-Cookie"] else {return}
                Storage.shared.setCookie = setCookie as! String
                
                completion(user,nil)
                return
            }
        }
    }
    
    func getCollectList(with index: Int,completion:@escaping (CollectListModel?, Error?)->()){
        
        Alamofire.request(Router.collectList(index)).responseCollectListModel{(response:DataResponse<CollectListModel>) in
        
            if let error = response.error{
                completion(nil,error)
                return
            }
            if let collectList = response.result.value{
                completion(collectList,nil)
                return
            }
        }
    }
}


