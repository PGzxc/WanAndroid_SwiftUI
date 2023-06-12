//
//  HomeViewModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/12.
//

import Foundation

class HomeViewModel:ObservableObject{
    
    @Published var bannerModel:BannerModel? = nil
    @Published var articleModel:ArticleModel? = nil
    @Published var userModel:UserModel? = nil
    @Published var collectListModel:CollectListModel? = nil
    
    init(){
        
        //getBannerModel()
        //getArticle(page: 0)
        
    }
    
    func getBannerModel(){
        APIService.instance.getBanner(completion: {(bannerModel,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            self.bannerModel = bannerModel
        })
    }
    
    func getArticle(page:Int){
        APIService.instance.getArticle(with: page, completion: {(article,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            self.articleModel = article
            
        })
    }
    func userLogin(username:String, password:String){
        APIService.instance.userLogin(with: username, with: password, completion: {(user,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            self.userModel = user
            
        })
    }
 
    func getCollectList(index:Int){
        APIService.instance.getCollectList(with: index, completion: {(collectList,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            self.collectListModel = collectList
            
        })
    }
}

