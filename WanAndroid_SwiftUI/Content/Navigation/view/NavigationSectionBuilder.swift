//
//  NavigationSectionBuilder.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/16.
//

import SwiftUI
import WrappingHStack

struct NavigationSectionBuilder: View {
    
    @Binding var vm: NavigationViewModel
    let colors: [Color] = [.red, .green, .yellow, .blue]
    var columns: [GridItem] = Array(repeating: .init(.flexible(),alignment: .leading), count: 3)
    
    var body: some View {
        List{
            let treeDatas = vm.treeModel?.data
            if(treeDatas != nil ){
                
                ForEach(treeDatas!){ treeItem in
                    Section(header: Text(treeItem.name!).fontWeight(Font.Weight.bold).font(Font.system(size: 18))) {
                        //标签
                        WrappingHStack(treeItem.children!, id:\.self,spacing: .constant(10),lineSpacing: 10) { treeItem in
                            Text(treeItem.name!)
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 8))
                            .border(.gray,width: 1)
                            .cornerRadius(2)
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
