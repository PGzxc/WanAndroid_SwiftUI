//
//  ProjectBuilderView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/17.
//

import SwiftUI

struct ProjectBuilder: View {
    
    @StateObject var vm: ProjectViewModel = ProjectViewModel()
    @State  var selectedOptionIndex = 0
    
    
    var body: some View {
        
        VStack(alignment: .center){
            
            ScrollView{
                //1-导航栏
                pickView
                //文章
                articleView
                
            }
        }.onAppear(){
            vm.getProjectModel()
        }
    }
    
    var pickView: some View{
        ScrollView(.horizontal){
                HStack(spacing: 0){
                    
                    Picker("Options",selection: $selectedOptionIndex){
                        ForEach(0..<vm.options.count,id: \.self){ index in
                            Text(vm.options[index]).tag(index)
                        }
                    } .pickerStyle(SegmentedPickerStyle())
                        .shadow(color: .white, radius: 100)
                        .shadow(color: Color.brown.opacity(0.8), radius: 5, x: 0, y: 2)
                        .padding()
                }.onReceive([self.selectedOptionIndex].publisher.first()) { value in
                    // 当选择值发生变化时执行操作
                    if(!vm.options.isEmpty ){
                        let option = vm.options[value]
                        vm.getProjectTreeArticle(page: 1, cid: vm.optionsDic[option] ?? 0)
                        print("Selected option: \(value)")
                    }
                }
        }
        
    }
    
    var articleView: some View{
        
        ScrollView{
            if(!vm.options.isEmpty){
                //var bb = self.selectedOptionIndex
                let name = vm.options[self.selectedOptionIndex]
                let articleList  = vm.projectDictionArticleDataList[vm.optionsDic[name]!]
                if(articleList != nil){
                    ForEach(articleList!){ article in
                        ArticleCellView(article: .constant(article))
                    }
                }
            }
        }
    }
}


struct ProjectBuilderView_Previews: PreviewProvider {
    
    static var previews: some View {
        let vm: ProjectViewModel = ProjectViewModel()
        ProjectBuilder(vm:vm)
    }
}
