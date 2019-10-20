//
//  PostsViewModel.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 10/20/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class PostsViewModel{
    
    var category : Variable<Int?>? = Variable(nil)
    var categories : Variable<[Category]> = Variable([Category]())
    var currentCategoryPage = 1
    
    
    func loadNextCategories(){
        
    }
    func getCategories(){
        if(self.currentCategoryPage <= 0 ){
            return
        }
        let networkManager = NetworkManager()
            networkManager.getCategories(byPageID: currentCategoryPage){
                (categories) in
                self.categories.value += categories ?? [Category]()
                if(categories?.count == 0){
                    self.currentCategoryPage = -1
                }else {
                    self.currentCategoryPage += 1
                }
            }
    }
    
}
