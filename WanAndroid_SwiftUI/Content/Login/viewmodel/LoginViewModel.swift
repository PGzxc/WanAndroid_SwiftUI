//
//  LoginViewModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/19.
//

import Foundation


class LoginViewModel:ObservableObject{
    
    @Published var userModel:UserModel? = nil
    var user:User? = nil
    
    
    func userLogin(username:String, password:String){
        APIService.instance.userLogin(with: username, with: password, completion: {(user,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            self.userModel = user
            self.user = user?.data
            Storage.shared.isLogin = true
            Storage.shared.userName = username
            
        })
    }
}
