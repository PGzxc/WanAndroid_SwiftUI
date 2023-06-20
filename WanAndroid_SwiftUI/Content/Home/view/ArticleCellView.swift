//
//  ArticleCell.swift
//  swiftdemo
//
//  Created by zxc on 2023/6/13.
//

import Foundation
import SwiftUI
import SDWebImageSwiftUI

struct ArticleCellView: View{
    
    @Binding var article:Article
    @State private var goToNewView: Bool = false
    @State var isModalPresented = false
    
    var body: some View{
        
        articleView.onTapGesture {
            self.isModalPresented.toggle()
        } .sheet(isPresented: $isModalPresented){
            LoadingWebView(url: URL(string: article.link ?? ""))
        }
        
        
        //NavigationLink(destination: LoadingWebView(url: URL(string: article.link ?? "")), label: { articleView  })
        
    }
    
    //单元格cell
    var articleView: some View{
        VStack(alignment:.center,spacing: 10){
            HStack(alignment:.center,spacing: 10){
                //1.1-新
                if(article.fresh!){
                    Text("新")
                        .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing:5))
                    //.frame(width: 50,height: 25)
                        .background(.red)
                        .cornerRadius(2)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                        .textFieldStyle(.roundedBorder)
                        .font(Font.system(size: 15))
                    
                }
                //1.2-tag
                if(article.tags != nil && !article.tags!.isEmpty){
                    Text(article.tags?.first?.name ?? "")
                        .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing:5))
                    //.frame(width: 80,height: 25)
                        .background(.orange)
                        .cornerRadius(2)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                        .textFieldStyle(.roundedBorder)
                        .font(Font.system(size: 15))
                    
                }
                //1.3-author
                
                HStack{
                    
                    Image(systemName:"person")
                    if(!article.author!.isEmpty){
                        Text( article.author ?? "")
                    }else if(!article.shareUser!.isEmpty){
                        Text(  article.shareUser ?? "")
                    }
                    
                }
                
                Spacer()
                //1.4-time
                if(!article.niceDate!.isEmpty){
                    Text(article.niceDate ?? "")
                } else if(article.niceShareDate!.isEmpty){
                    Text(article.niceShareDate ?? "")
                }
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            //2-中间部分
            HStack{
                VStack(alignment:.leading){
                    Text(article.title ?? "")
                    Text(article.desc ?? "")
                }
                Spacer()
                AnimatedImage(url: URL(string: article.envelopePic ?? ""))
                    .resizable()
                    .scaledToFill()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: !article.envelopePic!.isEmpty ? 130:0, height: !article.envelopePic!.isEmpty ? 90:0)
                    .clipped()
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            //3-分类、收藏
            HStack{
                
                Text(article.superChapterName ?? "")
                    .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing:5))
                //.frame(width: 100,height: 25)
                    .background(.green)
                    .cornerRadius(2)
                    .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                    .textFieldStyle(.roundedBorder)
                    .font(Font.system(size: 15))
                Text(article.chapterName ?? "")
                    .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing:5))
                //.frame(width: 80,height: 25)
                    .background(.orange)
                    .cornerRadius(2)
                    .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                    .textFieldStyle(.roundedBorder)
                    .font(Font.system(size: 15))
                Spacer()
                Image(systemName: "heart")
                
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            
        }
        .frame(width: UIScreen.main.bounds.size.width, alignment: .center)
        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        .background(Color.black.opacity(0.08))
    }
}


struct ArticleCellView_Previews: PreviewProvider{
    static var previews: some View{
        ArticleCellView(article: .constant(Article(adminAdd: true, apkLink: "apkLink", audit: 1, author: "author", canEdit: true, chapterID: 1, chapterName: "chapterName", collect: true, courseID: 1, descMd: "descMd", envelopePic: "envelopePic", fresh: true, host: "host", id: 1, isAdminAdd: true, link: "link", desc: "desc", niceDate: "niceDate", niceShareDate: "niceShareDate", origin: "origin", dataPrefix: "dataPrefix", projectLink: "projectLink", publishTime: 1, realSuperChapterID: 1, selfVisible: 1, shareDate: 1, shareUser: "shareUser", superChapterID: 1, superChapterName: "superChapterName", tags: [Tag(name: "tag", url: nil)], title: "title", type: 1, userID: 1, visible: 1, zan: 1)))
    }
}
