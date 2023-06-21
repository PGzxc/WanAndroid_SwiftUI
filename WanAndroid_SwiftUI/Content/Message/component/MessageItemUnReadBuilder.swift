//
//  MessageItemUnReadBuilder.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/21.
//

import SwiftUI

struct MessageItemUnReadBuilder: View {
    @Binding var vm:  MessageUnReadViewModel
    var body: some View {
        VStack{
            let messages = vm.messageModel?.data?.datas
            if(messages != nil && messages!.count > 0){
                ForEach(messages!){ messages in
                    MessageItemView(message:.constant(messages))
                }
            }else {
                VStack(alignment: .center){
                    Button("暂时没有数据哦,点击刷新"){
                        vm.getMessageUnRead(page: 1)
                    }
                }
                .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
            }
        }
    }
}

struct MessageItemUnReadBuilder_Previews: PreviewProvider {
    static var previews: some View {
        let vm:  MessageUnReadViewModel  = MessageUnReadViewModel()
        MessageItemUnReadBuilder(vm: .constant(vm))
    }
}
