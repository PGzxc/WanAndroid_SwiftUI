//
//  NavigationSectionBuilder.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/16.
//

import SwiftUI

struct NavigationSectionBuilder: View {
    
    @Binding var vm: NavigationViewModel
    let colors: [Color] = [.red, .green, .yellow, .blue]
    var columns: [GridItem] = Array(repeating: .init(.flexible(),alignment: .leading), count: 3)
    
    var body: some View {
        List{
            let treeDatas = vm.treeModel?.data
            if(treeDatas != nil ){
                
                ForEach(treeDatas!){ treeItem in
                    Section(header: Text(treeItem.name).font(Font.system(size: 18))) {
                        //标签
                        LazyVGrid(columns: columns, spacing: 10){
                            ForEach(treeItem.children){ treeItem in
                                Button(treeItem.name) {}
                                .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 8))
                                .border(.gray,width: 1)
                                .cornerRadius(2)
                                //.frame(minWidth: 0,maxWidth: .infinity)
                                
                            }
                        }
                    }
                }
            }
            
        }.listStyle(GroupedListStyle())
    }
    
}

struct NavigationSectionBuilder_Previews: PreviewProvider {
    static var previews: some View {
        let vm: NavigationViewModel = NavigationViewModel()
        NavigationSectionBuilder(vm: .constant(vm))
    }
}
