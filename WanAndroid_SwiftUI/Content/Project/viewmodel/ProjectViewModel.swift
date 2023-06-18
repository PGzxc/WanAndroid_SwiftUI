//
//  ProjectViewModel.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/17.
//

import Foundation

class ProjectViewModel:ObservableObject{
    
    @Published var projectModel:ProjectModel? = nil
    @Published var projectSonModel:ProjectSonModel? = nil
    @Published var projectDictionArticleDataList:Dictionary<Int,[Article]> = [:]
    
    var optionsDic:Dictionary<String,Int> = [:]
    var options:[String] = []
    var options_first: String = ""
    
    init(){
        
        getProjectModel()
        
    }
    
    //体系数据
    func getProjectModel(){
        APIService.instance.getProject(completion: {(projectModel,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            projectModel?.data.forEach({ project in
                self.options.append(project.name)
                self.optionsDic.updateValue(project.id, forKey: project.name)
            })
            self.options_first = self.options.first ?? ""
            self.projectModel = projectModel
        })
    }
    
    //知识体系下的文章
    func getProjectTreeArticle(page:Int,cid:Int){
        APIService.instance.getProjectArticle(with: page, andWith: cid,completion: {(projectSonModel,error) in
            if let error = error{
                debugPrint(error)
                return
            }
            
            self.projectSonModel = projectSonModel
            self.projectDictionArticleDataList.updateValue(projectSonModel!.data.datas, forKey: cid)
            //self.projectSonModelDataList.append(projectSonModel!.data)
        })
        
    }

}
