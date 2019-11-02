//
//  ChatViewModel.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 11/1/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import Firebase
import FirebaseUI


class ChatViewModel {
    
    
    let currentUser:   Variable<User?> = Variable(nil)
      
    
    init() {
        let authState = Auth.auth().addStateDidChangeListener { (auth, user) in
            print("currentUser "+(user?.uid ?? "nill"))
            self.currentUser.value = user
            FirebaseService.instance.getMessage()
        }
    }
    
    func launchFirebaseUI( vc: UIViewController)  {
        FirebaseService.instance.loginUser(vc : vc)
    }
    
    
    func logout(){

        FirebaseService.instance.logout()
    }
}
