//
//  HomeView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/6.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var vm: HomeViewModel = HomeViewModel()
    
    var body: some View {
        Button(action: {
            vm.getBannerModel()
        }, label: {
            Text("轮播图")
            Text(vm.bannerModel?.data?.first?.desc ?? "默认值")
        
        })
    
        Button(action: {
            vm.getArticle(page: 0)
        }, label: {
            Text("首页文章列表")
            Text(vm.articleModel?.data?.datas?.first?.chapterName ?? "默认值")
        })
        
        Button(action: {
            vm.userLogin(username: "pgzxc.com", password: "")
        },label:{
            Text("用户登录")
        })
        
        Button(action:{
            vm.getCollectList(index: 0)
        } , label: {
            Text("用户收藏")
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
