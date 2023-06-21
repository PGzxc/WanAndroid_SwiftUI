//
//  MessageUnReadViewModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/20.
//

import Foundation

class MessageUnReadViewModel:ObservableObject{
    
    @Published var messageModel:MessageModel? = nil
    
    func getMessageUnRead(page:Int){
        APIService.instance.getMessageUnRead(with: page, completion: {(messageModel,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            self.messageModel = messageModel
            
        })
    }
    
}
