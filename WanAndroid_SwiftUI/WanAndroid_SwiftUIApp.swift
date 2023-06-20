//
//  WanAndroid_SwiftUIApp.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/5.
//

import SwiftUI

@main
struct WanAndroid_SwiftUIApp: App {
    let loginViewModel:LoginViewModel = LoginViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabBarView().environmentObject(loginViewModel)
        }
    }
}
