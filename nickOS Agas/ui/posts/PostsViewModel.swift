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
    
    var loading: Variable<Bool> = Variable(false)
       

      
       func setLoading(load : Bool)  {
           loading.value = load
          
       }
    
  
    var categories : Variable<[Category]> = Variable([Category]())
    var currentCategoryPage = 1
    var posts: Variable<[PostElement]> = Variable([PostElement]())
    
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
    
    var category : Variable<Int?>? = Variable(nil)
    var search: String = ""
    var postsPage = 1
    var loadingPosts : Variable<Bool> = Variable(false)
    
    
    func selectCategory(byId category : Int){
        self.category?.value = category
        self.search = ""
        self.postsPage = 1
        self.posts.value = []
        getPosts()
//        self.currentCategoryPage
    }
    func setSearch(search : String ){
            self.category?.value = nil
              self.search = search
              self.postsPage = 1
            self.posts.value = []
              getPosts()
    }
    
    func getPosts(){
     
        if(self.postsPage<=0 || loadingPosts.value) {
            print("block getPost ")
            return
        }
        print("getPost \(self.postsPage)")
         loadingPosts.value = true
        let networkManager = NetworkManager()
        networkManager.getPosts(categoryId: category?.value, page: postsPage, search: search) { (posts) in
            self.loadingPosts.value = false
            self.posts.value += posts ?? [PostElement]()
            if(posts?.count == 0){
                self.postsPage = -1
            }else {
                self.postsPage += 1
            }
        }
    }
    
    func showPostOnWeb(vc: UIViewController,post: PostElement){
            guard let data = post.content?.rendered else {return}
    //                      self.dataToShow = data
                          
                          let webVeiwVC : WebViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webViewVC") as! WebViewController
                          webVeiwVC.data = data
                              
                          vc.present(webVeiwVC, animated: true, completion: nil)
        }
    
}
