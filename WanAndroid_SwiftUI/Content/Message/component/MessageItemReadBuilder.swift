//
//  MessageItemBuilder.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/21.
//

import SwiftUI

struct MessageItemReadBuilder: View {
    
    @StateObject var vm:  MessageReadViewModel = MessageReadViewModel()
    
    var body: some View {
        VStack{
            
            let messages = vm.messageModel?.data?.datas
            //let messages = Const.shared.getMessageModel().data?.datas //预览数据
            if(messages != nil && messages!.count > 0){
                ForEach(messages!){ messages in
                    MessageItemView(message:.constant(messages))
                }
            }else {
                VStack(alignment: .center){
                    Button("暂时没有数据哦,点击刷新"){
                        vm.getMessageRead(page: 1)
                    }
                }
                .frame(width: UIScreen.main.bounds.width,height:UIScreen.main.bounds.height)
            }
        }.onAppear(){
            vm.getMessageRead(page: 1)
        }
    }
}

struct MessageItemBuilder_Previews: PreviewProvider {
    static var previews: some View {
        let vm:  MessageReadViewModel = MessageReadViewModel()
        MessageItemReadBuilder(vm:vm)
    }
}
