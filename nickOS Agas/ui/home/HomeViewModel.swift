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
                
                let webVeiwVC : WebViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webViewVC") as! WebViewController
                webVeiwVC.data = data
                    
                vc.present(webVeiwVC, animated: true, completion: nil)
                
//                vc.performSegue(withIdentifier: "webViewVC", sender: self)
            }
    //        webViewVC
            
        }

}
