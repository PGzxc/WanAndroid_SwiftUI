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
    let url: URL?
    
    var body: some View {
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
    }
}

struct LoadingWebView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingWebView(url: URL(string: "https://www.baidu.com"))
    }
}
