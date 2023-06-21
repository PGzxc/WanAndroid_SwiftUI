//
//  MessageView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/20.
//

import SwiftUI

struct MessageItemView: View {
    
    @Binding var message: Message
    @State var isModalPresented = false
    
    var body: some View {
        //messageItemView
        
        messageItemView.onTapGesture {
            self.isModalPresented.toggle()
        } .sheet(isPresented: $isModalPresented){
            LoadingWebView(url: URL(string: message.fullLink ?? ""))
        }
    }
    //消息item
    var messageItemView: some View{
        
        VStack(alignment: .leading, spacing: 10){
            //1-头部
            HStack{
                HStack{
                    Image(systemName: "person")
                    Text(message.fromUser ?? "")
                } .background(.blue)
                    .cornerRadius(2)
                    .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                    .textFieldStyle(.roundedBorder)
                Text(message.tag ?? "")
                    .background(.red)
                    .cornerRadius(2)
                    .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                    .textFieldStyle(.roundedBorder)
                Spacer()
                HStack{
                    Image(systemName: "clock")
                    Text(message.niceDate ?? "")
                }
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            //2-回答了，回复了
            Text(message.title ?? "")
                .background(.blue)
                .cornerRadius(2)
                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                .textFieldStyle(.roundedBorder)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            //3-内容
            Text(message.message ?? "")
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
        }
        .frame(width: UIScreen.main.bounds.size.width, alignment: .center)
        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        .background(Color.black.opacity(0.08))
        
    }
}
struct MessageItemView_Previews: PreviewProvider {
    static var previews: some View {
        MessageItemView(message: .constant(Message(category: 2, date: 1687162598000, fromUser: "yndongyong", fromUserID: 63839, fullLink: "https://wanandroid.com/wenda/show/8857", id: 747349, isRead: 1, link: "/wenda/show/8857", message: "奔溃异常的每一行最后为什么会带有TbsSdk.java的字眼，只集成了Sentry这一类奔溃捕获框架，google了TbsSdk也没有搜索出结果，只搜索到腾讯tbs服务，但是没有继承这一框架。通过./gradlew app:dependencies --scan --configuration normalDebugRuntimeClasspath 分析了第三方依赖...", niceDate: "1天前", tag: "新回答", title: "回答了：每日一问 问答征集", userID: 26707)))
    }
}
