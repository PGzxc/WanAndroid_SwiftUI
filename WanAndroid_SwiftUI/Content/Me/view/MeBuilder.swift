//
//  MeBuilder.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/19.
//

import SwiftUI

struct MeBuilder: View {
    
    var headColumn: [GridItem] = Array(repeating: .init(.flexible(),alignment: .leading), count: 4)
    var commonColumn: [GridItem] = Array(repeating: .init(.flexible(),alignment: .leading), count: 3)

    @State var isModalPresented = false
    
    @EnvironmentObject var loginViewModel:LoginViewModel
    @Binding var vm: MeViewModel
    
    
    var body: some View {
        
        meHead.onAppear(){vm.getCoinUserInfoModel()}  //头部信息
        commonKit //常用功能
        Spacer()
        
    }
    
    //1-头部信息
    var meHead: some View{
        VStack(){
            //1-用户信息
            HStack(spacing: 20){
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100,height: 100)
                    .foregroundColor(.blue)
                //Text(loginViewModel.user != nil ? (loginViewModel.user?.username ?? "") as String:"欢迎登陆")
                Text(Storage.shared.isLogin ? Storage.shared.userName:"欢迎登陆")
                Spacer()
                Image(systemName: "chevron.right")
                
            }.onTapGesture {
                if(!Storage.shared.isLogin){
                    isModalPresented.toggle()
                }
            }
            .sheet(isPresented: $isModalPresented){
                
                if(!Storage.shared.isLogin){
                    LoginView()
                }
            }
            //2-显示信息
            LazyVGrid(columns: headColumn, spacing: 30){
                
                ForEach(Array(vm.dict.keys), id: \.self) {key in
                    VStack{
                        Text(key).font(.title).fontWeight(.bold)
                        Text(vm.dict[key] ?? "").font(.subheadline)
                    }
                }
            }
            
        }.padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        
    }
    
    //2-常用功能
    var commonKit:some View{
        VStack(alignment: .leading){
            Text("常用功能").font(.title).fontWeight(.bold).underline(color:.blue)
            LazyVGrid(columns: commonColumn, spacing: 20){
                ForEach(Array(vm.commons.keys.sorted().reversed()),id: \.self){ key in
                    Text(key)
                        .frame(width:120,height: 120)
                        .background((vm.commons[key] ?? .black))
                }
            }
            
        }
    }
}

struct MeBuilder_Previews: PreviewProvider {
    static var previews: some View {
        let vm: MeViewModel = MeViewModel()
        MeBuilder(vm:.constant(vm))
    }
}
