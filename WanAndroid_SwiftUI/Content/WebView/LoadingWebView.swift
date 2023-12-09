//
//  LoadingWebView.swift
//  swiftdemo
//
//  Created by zxc on 2023/6/14.
//

import SwiftUI

struct LoadingWebView: View {
    @State private var isLoading = true
    @State private var error: Error? = nil
    @Binding var navigationTabPresented:Bool
    let url: URL?
    var title:String? = ""
    
    var body: some View {
        NavigationStack{
            ZStack {
                if let error = error {
                    Text(error.localizedDescription)
                        .foregroundColor(.pink)
                } else if let url = url {
                    PlatformIndependentWebView(url: url,
                                               isLoading: $isLoading,
                                               error: $error)
                    
                    if isLoading {
                        ProgressView()
                            .scaleEffect(2)
                    }
                } else {
                    Text("Sorry, we could not load this url.")
                }
                
            }
            //.edgesIgnoringSafeArea([.top, .bottom])
            .edgesIgnoringSafeArea(.top)
            .edgesIgnoringSafeArea(.bottom)
            .padding(.bottom, 0)
            .navigationBarItems(leading: Button(action: {
                navigationTabPresented = false
            }, label: {
                HStack(alignment: VerticalAlignment.top){
                    HStack{
                        Image(systemName: "arrow.left")
                        Text(self.title ?? "").lineLimit(1).frame(width: 300)
                    }
                }
            }))
            
        }.navigationBarTitleDisplayMode(.inline)
    }
}
struct LoadingWebView_Previews: PreviewProvider {
    static var previews: some View {
        let navigationTabPresented:Bool = false
        LoadingWebView(navigationTabPresented: .constant(navigationTabPresented),
                       url: URL(string: "https://www.baidu.com"))
    }
}
