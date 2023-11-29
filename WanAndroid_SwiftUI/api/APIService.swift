//
//  APIService.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/12.
//

import Foundation
import Alamofire
import AlamofireObjectMapper


struct APIService {
    
    //MARK: - Singleton
    static let instance = APIService()
    
    private init(){}
    
    //MARK: - URL
    
    func getBanner(completion:@escaping (BannerModel?, Error?)->()){
        
        Alamofire.request(Router.homeBanner).responseObject{(response: DataResponse<BannerModel>) in
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
        
        Alamofire.request(Router.homeArticleList(page)).responseObject{(response: DataResponse<ArticleModel>) in
            
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
        
        Alamofire.request(Router.login(username, password)).responseObject{ (response:DataResponse<UserModel>) in
            
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
        
        Alamofire.request(Router.collectList(index)).responseObject{(response:DataResponse<CollectListModel>) in
            
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
    
    //体系
    func getTree(completion:@escaping (TreeModel?, Error?)->()){
        Alamofire.request(Router.tree).responseObject{(response: DataResponse<TreeModel>) in
            if let error = response.error{
                completion(nil,error)
                return
            }
            if let tree = response.result.value {
                completion(tree,nil)
                return
            }
        }
    }
    //项目
    func getProject(completion:@escaping (ProjectModel?, Error?)->()){
        Alamofire.request(Router.project).responseObject{(response: DataResponse<ProjectModel>) in
            if let error = response.error{
                completion(nil,error)
                return
            }
            if let projectmodel = response.result.value {
                completion(projectmodel,nil)
                return
            }
        }
    }
    //项目-子-文章
    func getProjectArticle(with page: Int, andWith cid:Int,completion:@escaping (ProjectSonModel?, Error?)->()){
        Alamofire.request(Router.projectArticle(page, cid)).responseObject{(response: DataResponse<ProjectSonModel>) in
            if let error = response.error{
                completion(nil,error)
                return
            }
            if let projectSonModel = response.result.value {
                completion(projectSonModel,nil)
                return
            }
        }
    }
    //用户信息
    func getCoinUserInfo(completion:@escaping (CoinUserInfoModel?, Error?)->()){
        Alamofire.request(Router.coinUserInfo).responseObject{(response: DataResponse<CoinUserInfoModel>) in
            if let error = response.error{
                completion(nil,error)
                return
            }
            if let userInfoModel = response.result.value {
                completion(userInfoModel,nil)
                return
            }
        }
    }
    //消息-未读
    func getMessageUnRead(with page: Int,completion:@escaping (MessageModel?, Error?)->()){
        
        Alamofire.request(Router.messageUnRead(page)).responseObject{(response: DataResponse<MessageModel>) in
            
            if let error = response.error{
                completion(nil,error)
                return
            }
            if let messageModel = response.result.value {
                completion(messageModel,nil)
                return
            }
        }
    }
    
    //消息-已读
    func getMessageRead(with page: Int,completion:@escaping (MessageModel?, Error?)->()){
        
        Alamofire.request(Router.messageRead(page)).responseObject{(response: DataResponse<MessageModel>) in
            
            if let error = response.error{
                completion(nil,error)
                return
            }
            if let messageModel = response.result.value {
                completion(messageModel,nil)
                return
            }
        }
    }
}



