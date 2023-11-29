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
    
    @Published var banners:[Banner]? = []
    @Published var articles:[Article]? = []
    
    
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
            self.banners = bannerModel?.data
            
        })
    }
    
    func getArticleModel(page:Int){
        APIService.instance.getArticle(with: page, completion: {(articleModel,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            self.articleModel = articleModel
            self.articles = articleModel?.data?.datas
            
        })
    }
    func userLogin(username:String, password:String){
        APIService.instance.userLogin(with: username, with: password, completion: {(userModel,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            self.userModel = userModel
        })
    }
 
    func getCollectList(index:Int){
        APIService.instance.getCollectList(with: index, completion: {(collectListModel,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            self.collectListModel = collectListModel
            
        })
    }
}

