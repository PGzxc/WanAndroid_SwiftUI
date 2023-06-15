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
        ScrollView{
            VStack{
                //轮播图
                ImageCarouseViewBuilder(vm:.constant(vm)).onAppear(){
                    vm.getBannerModel()
                }
                //文章
                ArticleCellViewBuilder(vm: .constant(vm)).onAppear(){
                    vm.getArticle(page: 0)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
