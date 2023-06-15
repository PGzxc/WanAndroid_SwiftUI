//
//  ImageCarouseViewBuilder.swift
//  swiftdemo
//
//  Created by zxc on 2023/6/13.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageCarouseViewBuilder: View {
    
    @Binding var vm: HomeViewModel
    @State private var goToNewView: Bool = false
    @State var banner:Banner? = nil
    
    var body: some View {
        
        let bannerDatas = vm.bannerModel?.data
        if(bannerDatas != nil){
            
            ImageCarouselView(numberOfImages: bannerDatas!.count){
                ForEach(bannerDatas!){ banner in
                    AnimatedImage(url: URL(string: banner.imagePath))
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width,height: 250)
                        .clipped().onTapGesture {
                            self.banner = banner
                            self.goToNewView.toggle()
                        }
                    
                }
            }.frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center)
        }
        
        NavigationLink(destination: LoadingWebView(url: URL(string: self.banner?.url ?? "")), isActive: self.$goToNewView) { EmptyView() }
        
        
        
        //NavigationView {
        //        GeometryReader { geometry in
        //            var datas =  vm.bannerModel?.data?.compactMap({ Banner in
        //                Banner.imagePath
        //
        //
        //            })
        //            let dattt = vm.bannerModel?.data
        //
        //            if(datas != nil){
        //                NavigationLink(destination: LoadingWebView(url: URL(string: "https://www.baidu.com")), label: {
        //                    ImageCarouselView(numberOfImages: datas!.count) {
        //                        ForEach(datas!,id: \.self){ imagePath in
        //
        //                            AnimatedImage(url: URL(string: imagePath))
        //                                .resizable()
        //                                .scaledToFill()
        //                                .aspectRatio(contentMode: .fit)
        //                                .frame(width: geometry.size.width, height: geometry.size.height)
        //                                .clipped()
        //
        //                        }
        //                    }
        //                })
        //            }
        //
        //        }.frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center)
    }
    //}
    
}

struct ImageCarouseViewBuilder_Previews: PreviewProvider {
    
    static var previews: some View {
        let vm: HomeViewModel = HomeViewModel()
        ImageCarouseViewBuilder(vm: .constant(vm))
    }
}
