//
//  NavigationTabBuilder.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/11/30.
//

import SwiftUI

struct NavigationTabBuilder: View {
    @StateObject var vm: NavigationTabViewModel = NavigationTabViewModel()
    @State var selectedOptionIndex = 0
    
    @EnvironmentObject var navigationViewModel: NavigationViewModel
    @Binding var selectTreeItem:TreeItem
    //var optionsDic:Dictionary<Int,String> = [:]

    
    var body: some View {
        
        var aa = vm.optionsDic
        
        VStack(alignment: .center){
            ScrollView{
                //1-导航栏
                pickView
                //2-文章
                articleView
            }
        }.onAppear(){
            vm.setTreeData(selectTreeItem: selectTreeItem) //用于给viewmodel下的optionsDic设置值
            vm.getTreeArticleModel(page: 1, cid: vm.optionsDic[selectedOptionIndex]!) //调用对应tab下的接口
        }
    }
    var pickView: some View{
        ScrollView(.horizontal){
                HStack(spacing: 0){
                    
                    Picker("Options",selection: $selectedOptionIndex){
                        ForEach(0..<selectTreeItem.children!.count,id: \.self){ index in
                            Text(selectTreeItem.children![index].name!).tag(index)
                        }
                    } .pickerStyle(SegmentedPickerStyle())
                        .shadow(color: .white, radius: 100)
                        .shadow(color: Color.brown.opacity(0.8), radius: 5, x: 0, y: 2)
                        .padding()
                }.onReceive([self.selectedOptionIndex].publisher.first()) { index in
                    // 当选择值发生变化时执行操作
                    //print("Selected option: \(index)")
                    if(!vm.optionsDic.isEmpty ){
                        vm.getTreeArticleModel(page: 1, cid: vm.optionsDic[self.selectedOptionIndex] ?? 0)
                    }
                }
        }
        
    }
    var articleView: some View{
        
        ScrollView{
            if(!vm.optionsDic.isEmpty){
                let articleList  = vm.projectSonModel?.data?.datas
                if(articleList != nil){
                    ForEach(articleList!){ article in
                        ArticleCellView(article: .constant(article))
                    }
                }
            }
        }
    }
    
}

#Preview {
    NavigationTabBuilder(selectTreeItem: .constant(Const.shared.getTreeItem()))
}
