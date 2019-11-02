//
//  FirebaseService.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 11/2/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import Foundation
import FirebaseUI
import Firebase

class FirebaseService {
    
    static let instance = FirebaseService()
    
    
    func loginUser(){
        let providers: [FUIAuthProvider] = [
        //            FUIEmailAuthProvider(),
                  FUIGoogleAuth(),
        //          FUIFacebookAuth(),
        //          FUITwitterAuth(),
        //          FUIPhoneAuth(authUI:FUIAuth.defaultAuthUI()),
                ]
        
        
    }
    
}
