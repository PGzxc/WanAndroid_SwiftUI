//
//  LoginBuilder.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/19.
//

import SwiftUI

struct LoginBuilder: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var repassword = ""
    @State private var isRegistering = false
    
    //@Binding var vm: LoginViewModel
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var loginViewModel:LoginViewModel
    
    
    var body: some View {
        VStack {
            Text(isRegistering ? "注册" : "登录")
                .font(.largeTitle)
                .padding()
            
            TextField("请输入用户名", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("请输入密码", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            if(isRegistering){
                SecureField("请输入确认密码", text: $repassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            
            Button(action: {
                if isRegistering {
                    // Perform registration logic
                    print("Registered with username \(username) and password \(password) and repassword \(repassword)")
                } else {
                    // Perform login logic
                    print("Logged in with username \(username) and password \(password)")
                    loginViewModel.userLogin(username: username, password: password)
                    //vm.userLogin(username: username, password: password)
                    if(Storage.shared.isLogin){
                        self.presentationMode.wrappedValue.dismiss()
                    }
                }
            }) {
                Text(isRegistering ? "注册" : "登录")
                    .frame(width: 320)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                
            }
            
            Button(action: {
                isRegistering.toggle()
            }) {
                Text(isRegistering ? "已有账户? 去登录" : "没有账户? 去注册")
                    .foregroundColor(.blue)
            }
        }
        .padding()
    }
}

struct LoginBuilder_Previews: PreviewProvider {
    static var previews: some View {
        //let vm: LoginViewModel = LoginViewModel()
        //LoginBuilder(vm: .constant(vm))
        LoginBuilder()
    }
}
