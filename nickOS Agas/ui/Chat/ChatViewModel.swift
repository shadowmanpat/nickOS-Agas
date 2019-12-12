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
    
    
    let currentUser:   BehaviorRelay<User?> = BehaviorRelay<User?>(value: nil)
    var chatMessages : Variable<[ChatMessage]> = Variable([])
    
   
    
    init() {
        let authState = Auth.auth().addStateDidChangeListener { (auth, user) in
            print("currentUser "+(user?.uid ?? "nill"))
            self.currentUser.accept(user)
            FirebaseService.instance.getMessage()
        }
        
        FirebaseService.instance.firestoreMessages.asObservable().subscribe(onNext: { (messageList) in
                self.chatMessages.value = messageList
            }, onError: { (err) in
                print("error \(err)")
            }, onCompleted: {
                print("conempr")
            })
        
        let myVariable = Variable<Bool>(true)
           myVariable.value = false
        let myBehaviorRelay = BehaviorRelay<Bool>(value: true)
           myBehaviorRelay.accept(false)
     
    }
    
    
    
    func launchFirebaseUI( vc: UIViewController)  {
        FirebaseService.instance.loginUser(vc : vc)
    }
    
    func sendMessage(message: String ){
        FirebaseService.instance.sendMessage(message: message, userName: currentUser.value?.displayName, userId: currentUser.value?.uid)
    }
    
    func logout(){

        FirebaseService.instance.logout()
    }
}
