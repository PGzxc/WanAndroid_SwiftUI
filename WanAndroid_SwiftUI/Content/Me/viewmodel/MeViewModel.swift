//
//  MeViewModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/20.
//

import Foundation
import SwiftUI

class MeViewModel:ObservableObject{
    
  
    @Published var userModel:UserModel? = nil
    @Published var coinUserInfoModel:CoinUserInfoModel? = nil
    
    var dict: [String:String] = ["等级":"-","排名":"-","收藏":"-","积分":"-"]
    var commons:[String:Color] = ["工具":.blue,"问答":.cyan,"消息":.green,"课程":.mint,"待办清单":.indigo,"分享文章":.red,"分享项目":.brown,"公众号":.gray]
    
    
    //获取用户信息
    func getCoinUserInfoModel(){
        APIService.instance.getCoinUserInfo(completion: {(coinUserInfoModel,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            if(coinUserInfoModel?.data != nil){
                let coinuserInfo = coinUserInfoModel?.data
                self.dict.updateValue(String(coinuserInfo?.level ?? 0), forKey: "等级")
                self.dict.updateValue(coinuserInfo?.rank ?? "", forKey: "排名")
                self.dict.updateValue(String(coinuserInfo?.userID ?? 0), forKey: "收藏")
                self.dict.updateValue(String(coinuserInfo?.coinCount ?? 0) ,forKey: "积分")
                self.coinUserInfoModel = coinUserInfoModel
            }
        })
    }
    
  
}
