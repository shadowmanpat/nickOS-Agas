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
    let db = Firestore.firestore()
    let dbPath : CollectionReference?
    
    init() {
        dbPath = db.collection(FirebaseContants.COLLECTION_PATH)
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
    let firestoreMessages : [ChatMessage] = []
   
    func getMessage() {
        dbPath?.addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                       print("Error fetching documents: \(error!)")
                       return
                   }
            documents.forEach { (document) in
                print("document ")
            }
        }
    }
    
}
