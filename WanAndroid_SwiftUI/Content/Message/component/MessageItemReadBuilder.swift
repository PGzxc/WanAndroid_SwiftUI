//
//  MessageItemBuilder.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/21.
//

import SwiftUI

struct MessageItemReadBuilder: View {
    
    @Binding var vm:  MessageReadViewModel
    
    var body: some View {
        VStack{
            let messages = vm.messageModel?.data?.datas
            if(messages != nil){
                ForEach(messages!){ messages in
                    MessageItemView(message:.constant(messages))
                }
            }
        }
    }
}

struct MessageItemBuilder_Previews: PreviewProvider {
    static var previews: some View {
        let vm:  MessageReadViewModel  = MessageReadViewModel()
        MessageItemReadBuilder(vm: .constant(vm))
    }
}
