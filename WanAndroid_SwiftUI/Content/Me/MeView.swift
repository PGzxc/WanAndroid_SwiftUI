//
//  MeView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/6.
//

import SwiftUI

struct MeView: View {
    @StateObject private var vm: MeViewModel = MeViewModel()
    var body: some View {
        MeBuilder(vm: .constant(vm))
    }
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
