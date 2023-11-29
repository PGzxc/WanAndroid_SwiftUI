//
//  ReadMessageView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/20.
//

import SwiftUI

struct MessageReadView: View {
    
    @StateObject private var vm: MessageReadViewModel = MessageReadViewModel()
    
    var body: some View {
        MessageItemReadBuilder()
    }
}

struct ReadMessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageReadView()
    }
}
