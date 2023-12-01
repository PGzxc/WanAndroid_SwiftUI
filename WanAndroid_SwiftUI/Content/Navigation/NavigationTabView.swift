//
//  NavigationTabView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/11/30.
// 导航-tabs页面
//

import SwiftUI

struct NavigationTabView: View {
    
    @Binding var navigationTabPresented:Bool
    //@Binding var selectedOptionIndex:Int
    @Binding var selectTreeItem:TreeItem
    
    var body: some View {
                
        NavigationStack{
            NavigationTabBuilder(selectTreeItem: $selectTreeItem)
                //.navigationTitle("标题")
                .navigationBarItems(leading: Button(action: {
                    navigationTabPresented = false
                }, label: {
                    HStack(alignment: VerticalAlignment.top){
                        HStack{
                            Image(systemName: "arrow.left")
                            Text(self.selectTreeItem.name ?? "默认值")
                        }
                    }
                }))
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NavigationTabView_Previews: PreviewProvider{
    
    static var previews: some View {
        
        let navigationTabPresented:Bool = false
   
        NavigationTabView(navigationTabPresented: .constant(navigationTabPresented),
                          selectTreeItem: .constant(Const.shared.getTreeItem()))
    }
}
