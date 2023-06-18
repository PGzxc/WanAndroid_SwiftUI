//
//  ProjectView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/6.
//

import SwiftUI

struct ProjectView: View {
    @StateObject private var vm: ProjectViewModel = ProjectViewModel()
    var body: some View {
        ProjectBuilder(vm: .constant(vm)).pickView
        ProjectBuilder(vm: .constant(vm)).articleView
//        ProjectBuilder(vm: .constant(vm)).onAppear(){
//            vm.getProjectModel()
//        }
        
    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView()
    }
}
