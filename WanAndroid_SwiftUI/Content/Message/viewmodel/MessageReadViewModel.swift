//
//  MessageReadViewModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/20.
//

import Foundation

class MessageReadViewModel:ObservableObject{
    
    @Published var messageModel:MessageModel? = nil
    
    func getMessageRead(page:Int){
        APIService.instance.getMessageRead(with: page, completion: {(messageModel,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            self.messageModel = messageModel
            
        })
    }
}
