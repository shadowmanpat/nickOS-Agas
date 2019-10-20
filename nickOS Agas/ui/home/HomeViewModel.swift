//
//  HomeViewModel.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 10/18/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class HomeViewModel {
    
//     var loading = false
    var loading: Variable<Bool> = Variable(false)
    
   
//    /// Public property, that can be read / observed by external classes (e.g. view controller), but not changed.
//    var position: ImmutableObservable<CGPoint> = {
//        return positionSubject
//    }
//    // Or use the helper method Observable.asImmutable()
//    // lazy var position = positionSubject.asImmutable()
//
//    /// Private property, that can be changed / observed inside this view model.
//    private let positionSubject = Observable(CGPoint.zero)
    
    
   
//
//    private let isLoadingSubject = Observable(false)
//
//    lazy var isLoading = isLoadingSubject.asImmutable()
////
////
   
    func setLoading(load : Bool)  {
        loading.value = load
       
    }
    init() {
        dataToShow = ""
    }
    var dataToShow :String?
    
    func showPage(vc: UIViewController, byid pageId: Int){
        setLoading( load: true)
            let networkManager = NetworkManager()
            networkManager.getPage(byId: pageId)
            { (post) in
                self.setLoading( load: false)
                guard let data = post?.content?.rendered else {return}
                self.dataToShow = data
                
                vc.performSegue(withIdentifier: "webViewVC", sender: self)
            }
    //        webViewVC
            
        }

}
