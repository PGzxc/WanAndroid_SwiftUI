//
//  UnReadMessageView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/20.
//

import SwiftUI

struct MessageUnReadView: View {
    
    @StateObject private var vm: MessageUnReadViewModel = MessageUnReadViewModel()
    var body: some View {
        MessageItemUnReadBuilder()
    }
}

struct UnReadMessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageUnReadView()
    }
}
