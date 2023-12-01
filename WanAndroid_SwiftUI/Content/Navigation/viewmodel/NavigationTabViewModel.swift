//
//  NavigationTabViewModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/11/30.
//

import Foundation

class NavigationTabViewModel :ObservableObject{
    
    @Published var projectSonModel:ProjectSonModel? = nil
   
    
   @Published var optionsDic:Dictionary<Int,Int> = [:] //key-index,value-id
   @Published var treeData:[TreeItem]? = nil
   var selectedOptionIndex = 0 //用于存储选中的选项索引
    
    init(){
        
    }
    
    func setTreeData(selectTreeItem:TreeItem){
        self.treeData = selectTreeItem.children
        var index = 0;
        self.treeData!.forEach({ item in
            //self.optionsDic[index] = item.id!
            self.optionsDic.updateValue(item.id!, forKey: index)
            index += 1
        })
    }
    
    func getTreeArticleModel(page:Int,cid:Int){
        APIService.instance.getTreeList(with: page, andWith: cid, completion: {(projectSonModel,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            self.projectSonModel = projectSonModel
        })
    }
}
