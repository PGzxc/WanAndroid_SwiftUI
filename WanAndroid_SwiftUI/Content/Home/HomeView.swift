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
            VStackLayout {
                //轮播图
                ImageCarouseViewBuilder()
                //文章
                ArticleCellViewBuilder()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
