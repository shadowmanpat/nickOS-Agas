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
    let currentUser:   Variable<String?> = Variable(nil)
    
    
    func launchFirebaseUI( vc: UIViewController)  {
        let authUI = FUIAuth.defaultAuthUI()
        authUI?.delegate = vc as? FUIAuthDelegate
        
        FirebaseService.instance.loginUser()
        // You need to adopt a FUIAuthDelegate protocol to receive callback
//        authUI.delegate = self
        let providers: [FUIAuthProvider] = [
//            FUIEmailAuthProvider(),
          FUIGoogleAuth(),
//          FUIFacebookAuth(),
//          FUITwitterAuth(),
//          FUIPhoneAuth(authUI:FUIAuth.defaultAuthUI()),
        ]
        authUI?.providers = providers
        let authViewController = authUI?.authViewController()
        guard let authVC = authViewController else {
            print("not a vc")
            return
        }
        vc.present(authVC, animated: true, completion: nil)
        
    }
}
