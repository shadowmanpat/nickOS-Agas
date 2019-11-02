//
//  ChatViewController.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 11/1/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import UIKit
import FirebaseUI

class ChatViewController: UIViewController,  FUIAuthDelegate {

    @IBOutlet weak var LoginBtn: UIButton!
    @IBOutlet weak var LogOutBtn: UIButton!
    @IBOutlet weak var sendBtn: UIImageView!
    
    @IBOutlet weak var messegeFieldHolder: UITextField!
    var chatViewModel = ChatViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatViewModel.currentUser.asObservable().subscribe(onNext: { (user) in
            
            self.LoginBtn.isHidden = (user != nil)
            self.LogOutBtn.isHidden = (user == nil)
            self.sendBtn.isHidden = (user == nil)
            self.messegeFieldHolder.isHidden = (user == nil)
            
            print(user)
        }, onError: { (err) in
            print(err)
        }, onCompleted: {
            print("con")
        })
    

        // Do any additional setup after loading the view.
    }
    @IBAction func messageField(_ sender: Any) {
    }
    

    @IBAction func LogoutClicked(_ sender: Any) {
    }
    @IBAction func LoginBtnClicked(_ sender: Any) {
        print("login")
       
//        chatViewModel.launchFirebaseUI(vc: self)
        let authUI = FUIAuth.defaultAuthUI()
        authUI?.delegate = self
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
        self.present(authVC, animated: true, completion: nil)
       
        
    }
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
             // handle user (`authDataResult.user`) and error as necessary
                print(authDataResult?.user.uid)
    }
    
    
    @IBOutlet weak var sendBtnClicked: UIImageView!
    
    func application(_ app: UIApplication, open url: URL,
                     options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
        let sourceApplication = options[UIApplication.OpenURLOptionsKey.sourceApplication] as! String?
      if FUIAuth.defaultAuthUI()?.handleOpen(url, sourceApplication: sourceApplication) ?? false {
        print("handle opern true")
        return true
      }
      // other URL handling goes here.
         print("handle opern fasle")
      return false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
