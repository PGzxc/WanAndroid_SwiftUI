//
//  LoginView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/19.
//

import SwiftUI

struct LoginView: View {
    
    @State var isLogin = false
    //@StateObject private var vm: LoginViewModel = LoginViewModel()
    @EnvironmentObject var loginViewModel:LoginViewModel
    var body: some View {
        VStack{
            //LoginBuilder(vm: .constant(vm))
            //LoginBuilder(vm: .constant(loginViewModel))
            LoginBuilder()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
