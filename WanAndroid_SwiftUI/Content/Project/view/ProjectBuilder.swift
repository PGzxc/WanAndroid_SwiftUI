//
//  ProjectBuilderView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/17.
//

import SwiftUI

struct ProjectBuilder: View {
    
    @Binding var vm: ProjectViewModel
    
    var body: some View {
        
        VStack(alignment: .center){
            
            ScrollView{
                
                //1-导航栏
                //pickView
                //文章
                //articleView()
                
            }
        }
    }
    
    var pickView: some View{
        ScrollView(.horizontal){
            HStack(spacing: 0){
                Picker("Options",selection: $vm.options.first ?? $vm.options_first){
                    
                    ForEach(vm.options,id: \.self) { option in
                        Text(option).onAppear(){
                            vm.getProjectTreeArticle(page: 1, cid: vm.optionsDic[option] ?? 0)
                        }
                    }
                    
                }
                .pickerStyle(SegmentedPickerStyle())
                .shadow(color: .white, radius: 100)
                .shadow(color: Color.brown.opacity(0.8), radius: 5, x: 0, y: 2)
                .padding()
            }
        }
        
    }
    
    var articleView: some View{
        ScrollView{
            ForEach(vm.options,id: \.self) { option in
                let articleList  = vm.projectDictionArticleDataList[vm.optionsDic[option]!]
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
        ProjectBuilder(vm: .constant(vm))
    }
}
