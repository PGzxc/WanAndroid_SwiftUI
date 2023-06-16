//
//  NavigationViewModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/16.
//

import Foundation

class NavigationViewModel:ObservableObject{
    
    @Published var treeModel:TreeModel? = nil
    
    init(){
        
        //getTreeModel()
        
    }
    
    func getTreeModel(){
        APIService.instance.getTree(completion: {(treeModel,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            self.treeModel = treeModel
        })
    }
}
