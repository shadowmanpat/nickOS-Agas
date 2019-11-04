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
import RxSwift
import RxCocoa

class FirebaseService {
    
    static let instance = FirebaseService()
    let db = Firestore.firestore()
    let dbPath : CollectionReference?
    
    init() {
        dbPath = db.collection(FirebaseContants.COLLECTION_PATH)
        getMessage() 
    }
    
    func loginUser(vc: UIViewController){
                        let authUI = FUIAuth.defaultAuthUI()
//                     authUI?.delegate = vc as? FUIAuthDelegate
                     let providers: [FUIAuthProvider] = [
                       FUIEmailAuth(),
                       FUIGoogleAuth(),
             //          FUIFacebookAuth(),
                     ]
                     authUI?.providers = providers
                     
             //        / Present the auth view controller and then implement the sign in callback.
                     let authViewController = authUI?.authViewController()
                     guard let authVC = authViewController else {
                         print("not authVC")
                         return
                     }
                     vc.present(authVC, animated: true, completion: nil)
        
    }
    
    func logout(){
        let firebaseAuth = Auth.auth()
            do {
              try firebaseAuth.signOut()
            } catch let signOutError as NSError {
              print ("Error signing out: %@", signOutError)
            }
    }
    
    let firestoreMessages : Variable<[ChatMessage]> = Variable([])
   
    func getMessage() {
        dbPath?.order(by: "timestamp", descending: false)
            .addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                       print("Error fetching documents: \(error!)")
                       return
                   }
            var newMessageList = [ChatMessage]()
            documents.forEach { (document) in
                let message = document["message"]  as? String
                let from_username = document["from_username"] as? String
                let from_user_id = document["from_user_id"] as? String
                let timestamp = document["timestamp"] as? String
                let chatMessage =  ChatMessage(message: message, from_username: from_username, from_user_id: from_user_id, timestamp: timestamp)
//                let chatMessage = ChatMessage(message,from_username, from_user_id, timestamp)
                newMessageList.append(chatMessage)
                print("document \(chatMessage.from_username)")
            }
            self.firestoreMessages.value = newMessageList
            
        }
    }
    
    func sendMessage(message: String, userName : String?, userId: String?){
        print("send firevese")
//        var chatMessage = ChatMessage(message: message, from_username: userName, from_user_id: userId, timestamp: ServerValue.timestamp())
        let chatMessage = ["message":message,
                               "from_username": userName,
                               "from_user_id": userId,
                               "timestamp":FieldValue.serverTimestamp()
            ] as [String : Any]
        dbPath?.addDocument(data: chatMessage, completion: { (err) in
            print(err)
        })
    }
    
}
