//
//  MessageView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/6.
//

import SwiftUI

enum MessageType:String,CaseIterable{
    case unRead = "未读消息列表"
    case read = "已读消息列表"
    
}

struct MessageView: View {
    
    @State private var messageType:MessageType = .unRead
    
    var body: some View {
        
        VStack{
            segmentedView //导航菜单
            ScrollView{
                messageListView(messageType: messageType)
            }
        }
        
    }
    var segmentedView: some View{
        
        Picker("MessageType",selection: $messageType){
            ForEach(MessageType.allCases,id: \.self){ value in
                Text(value.rawValue)
            }
        }
        //.pickerStyle(.segmented)
        .pickerStyle(SegmentedPickerStyle())
        .shadow(color: .white, radius: 100)
        .shadow(color: Color.brown.opacity(0.8), radius: 5, x: 0, y: 2)
    }
    
}

struct messageListView:View{
    
    var messageType:MessageType
    
    var body: some View{
        switch messageType {
        case .unRead:
            MessageUnReadView()
        case .read:
            MessageReadView()
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
