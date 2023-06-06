//
//  TabBarView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/6.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            
            NavigationStack{
                HomeView()
            }.tabItem {
                Image(systemName: "house")
                Text("home")
            }
            
            NavigationStack{
                NavigationView()
            }.tabItem {
                Image(systemName: "paperplane")
                Text("导航")
            }
            
            NavigationStack{
                ProjectView()
            }.tabItem {
                Image(systemName: "sidebar.left")
                Text("项目")
            }
            
            NavigationStack{
                MessageView()
            }.tabItem {
                Image(systemName: "bell")
                Text("消息")
            }.badge(1)
            
            NavigationStack{
                MeView()
            }.tabItem {
                Image(systemName: "person.fill")
                Text("我的")
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
