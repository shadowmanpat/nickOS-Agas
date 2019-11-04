//
//  ChatViewController.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 11/1/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import UIKit
import FirebaseUI
import RxSwift
import RxCocoa

class ChatViewController: UIViewController,  FUIAuthDelegate , UITableViewDelegate, UITableViewDataSource{
   
    @IBOutlet weak var tableVIewNew: UITableView!
    
    @IBOutlet weak var LoginBtn: UIButton!
    @IBOutlet weak var LogOutBtn: UIButton!
    @IBOutlet weak var sendBtn: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var messegeFieldHolder: UITextField!
    var chatViewModel = ChatViewModel()
    
    var messages : [ChatMessage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVIewNew.delegate = self
        tableVIewNew.dataSource = self
    
        chatViewModel.currentUser.asObservable().subscribe(onNext: { (user) in
            
            self.LoginBtn.isHidden = (user != nil)
            self.LogOutBtn.isHidden = (user == nil)
            self.sendBtn.isHidden = (user == nil)
            self.messegeFieldHolder.isHidden = (user == nil)
            self.tableVIewNew.isHidden = (user == nil)
            
            print(user)
        }, onError: { (err) in
            print(err)
        }, onCompleted: {
            print("con")
        })
        
        chatViewModel.chatMessages.asObservable().subscribe(onNext: { (messageList) in
            self.messages = messageList
            self.tableVIewNew.reloadData()
            
            let numberOfSections = self.tableVIewNew.numberOfSections
            let numberOfRows = self.tableVIewNew.numberOfRows(inSection: numberOfSections-1)

            let indexPath = IndexPath(row: numberOfRows-1 , section: numberOfSections-1)
            
            self.tableVIewNew.scrollToRow(at: indexPath, at: UITableView.ScrollPosition.bottom, animated: true)
//            self.tableVIewNew.scrollToRow(at: <#T##IndexPath#>, at: <#T##UITableView.ScrollPosition#>, animated: <#T##Bool#>)
                   }, onError: { (err) in
                       print("error \(err)")
                   }, onCompleted: {
                       print("conempr")
                   })
    

        messegeFieldHolder.rx.text
            .asObservable().subscribe(onNext: {(sendMessage) in
                print(sendMessage)
                self.sendBtn.isHidden = sendMessage?.isEmpty ?? true
        })
       
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))

               // add it to the image view;
               sendBtn.addGestureRecognizer(tapGesture)
               // make sure imageView can be interacted with by user
               sendBtn.isUserInteractionEnabled = true
      
    
        // Do any additional setup after loading the view.
    }
    @IBAction func messageField(_ sender: Any) {
        
    }
    @objc func imageTapped(gesture: UIGestureRecognizer) {
           // if the tapped view is a UIImageView then set it to imageview
           if (gesture.view as? UIImageView) != nil {
               print("Image Tapped")
            guard let message = messegeFieldHolder.text else {return}
                  chatViewModel.sendMessage(message : message)
                messegeFieldHolder.text = ""
                self.sendBtn.isHidden = true
               //Here you can initiate your new ViewController

           }
       }
    

    @IBAction func LogoutClicked(_ sender: Any) {
       
        chatViewModel.logout()
    }
    @IBAction func LoginBtnClicked(_ sender: Any) {
        print("login")
       
        chatViewModel.launchFirebaseUI(vc: self)
       
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

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "ChatMessageViewCell", for: indexPath) as! ChatMessageViewCell
            cell.setMessage(chatMessage: messages[indexPath.row])
            cell.currentUid = chatViewModel.currentUser.value?.uid ?? "unknown"
              return cell
//           return UITableViewCell()
       }
       

}
