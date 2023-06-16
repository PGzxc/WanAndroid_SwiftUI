//
//  NavigationView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/6.
//

import SwiftUI

struct NavigationView: View {
    
    @StateObject private var vm: NavigationViewModel = NavigationViewModel()
    
    var body: some View {
        
        NavigationSectionBuilder(vm: .constant(vm))
            .onAppear(){vm.getTreeModel()}
        
    }
    
    struct NavigationView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView()
        }
    }
}
