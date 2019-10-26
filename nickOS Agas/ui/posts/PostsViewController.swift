//
//  SecondViewController.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 10/18/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class PostsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource , UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var searchView: UISearchBar!
    
    var disposeBag = DisposeBag()
    var postsViewModel = PostsViewModel()
    
    var categories  = [Category]()
    var posts  = Post()
    
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    
    @IBOutlet weak var poad: UIActivityIndicatorView!
    @IBOutlet weak var postsUITableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCollectionView.delegate = self
        categoriesCollectionView.dataSource = self
        postsUITableView.delegate = self
        postsUITableView.dataSource = self
        
        postsViewModel.categories.asObservable().subscribe(onNext: { (categories) in
                        print("asObservable categories \(categories.count)")
                        self.categories = categories
                        self.categoriesCollectionView.reloadData()
               }, onError: { (error) in
                   
               }, onCompleted: {
                   
               }) {
                   
        }.disposed(by: disposeBag)
        postsViewModel.posts.asObservable().subscribe(onNext: { (posts) in
                               print("asObservable posts \(posts.count)")
                                self.posts = posts
                               self.postsUITableView.reloadData()
                      }, onError: { (error) in
                          
                      }, onCompleted: {
                          
                      }) {
                          
               }.disposed(by: disposeBag)
        postsViewModel.loading.asObservable().subscribe(onNext : {(loading) in
            self.poad.isHidden = !loading
        })
        searchView.rx.text
        .debounce(RxTimeInterval.milliseconds(500), scheduler: MainScheduler.instance)
            .asObservable().subscribe(onNext: {(searchTerm) in
            print(searchTerm)
                guard let search = searchTerm else {return}
                self.postsViewModel.setSearch(search: search)
                
                
            
        })
        //Do any additional setup after loading the view.
        
        
        self.postsViewModel.getCategories()
        self.postsViewModel.getPosts()
    }

    //CATEGORIES COLLECTION VIEW
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
//     func collectionView(collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {
//        print("willDisplayCell \(indexPath)")
//        if indexPath.row == categories.count - 1 {
//            // Last cell is visible
//        }
//    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
//        cell.setLabel(forTitle: categories[indexPath.row].name)
        cell.setLabel(forTitlte: categories[indexPath.row].name ?? "")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
    willDisplay cell: UICollectionViewCell,
    forItemAt indexPath: IndexPath){
//        print("indexpath \(indexPath)")
        if(categories.count-1 ==  indexPath.row){
            postsViewModel.getCategories()
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("didSelectItemAt \(indexPath.row)")
        guard var categoryid = postsViewModel.categories.value[indexPath.row].id else { return  }
        postsViewModel.selectCategory(byId: categoryid)
//        postsViewModel.
    }
    
    //////POSTS UI table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell", for: indexPath) as! PostTableViewCell
        cell.titleLabel.text = posts[indexPath.row].title?.rendered
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if(posts.count-1 ==  indexPath.row){
            postsViewModel.getPosts()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       tableView.deselectRow(at: indexPath, animated: true)
        postsViewModel.showPostOnWeb(vc:self,post: postsViewModel.posts.value[indexPath.row])
    }
    
    
}

