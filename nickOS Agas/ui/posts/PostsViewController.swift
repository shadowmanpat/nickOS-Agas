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

class PostsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    @IBOutlet weak var searchView: UISearchBar!
    
    var disposeBag = DisposeBag()
    var postsViewModel = PostsViewModel()
    
    var categories  = [Category]()
    
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCollectionView.delegate = self
        categoriesCollectionView.dataSource = self
        
        postsViewModel.categories.asObservable().subscribe(onNext: { (categories) in
                        print("asObservable categories \(categories.count)")
                        self.categories = categories ?? [Category]()
                        self.categoriesCollectionView.reloadData()
               }, onError: { (error) in
                   
               }, onCompleted: {
                   
               }) {
                   
        }.disposed(by: disposeBag)
        //Do any additional setup after loading the view.
        
        
        self.postsViewModel.getCategories()
        
    }

    
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
        print("indexpath \(indexPath)")
        if(categories.count-1 ==  indexPath.row){
            postsViewModel.getCategories()
        }
    }

}

