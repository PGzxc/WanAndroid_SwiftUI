//
//  ArticleCellViewBuilder.swift
//  swiftdemo
//
//  Created by zxc on 2023/6/13.
//

import SwiftUI

struct ArticleCellViewBuilder: View {
    
    @Binding var vm: HomeViewModel
    
    var body: some View {
        VStack{
            //article
            let articles = vm.articleModel?.data?.datas
            //List{
            if(articles != nil){
                ForEach(articles!){ article in ArticleCellView(article: .constant(article)) }
            }
            // }
        }
    }
}

struct ArticleCellViewBuilder_Previews: PreviewProvider {
    static var previews: some View {
        let vm: HomeViewModel = HomeViewModel()
        ArticleCellViewBuilder(vm:.constant(vm))
    }
}
