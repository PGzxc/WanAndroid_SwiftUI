//
//  ArticleCellViewBuilder.swift
//  swiftdemo
//
//  Created by zxc on 2023/6/13.
//

import SwiftUI

struct ArticleCellViewBuilder: View {
    
    @StateObject var vm: HomeViewModel = HomeViewModel()
    
    var body: some View {
        
        //let articles = vm.articleModel?.data?.datas
        //let articles = Const.shared.getArticleModel().data?.datas //预览数据
        let articles = vm.articles
        VStack{
            if(articles != nil){
                ForEach(articles!){
                    article in ArticleCellView(article: .constant(article))
                }
            }
        }.onAppear(){
            vm.getArticleModel(page: 0)
        }
    }
}

struct ArticleCellViewBuilder_Previews: PreviewProvider {
    static var previews: some View {
        let vm: HomeViewModel = HomeViewModel()
        ArticleCellViewBuilder(vm:vm)
    }
}
