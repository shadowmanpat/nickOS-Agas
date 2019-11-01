//
//  ChatViewController.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 11/1/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var LoginBtn: UIButton!
    @IBOutlet weak var LogOutBtn: UIButton!
    @IBOutlet weak var sendBtn: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func messageField(_ sender: Any) {
    }
    

    @IBAction func LogoutClicked(_ sender: Any) {
    }
    @IBAction func LoginBtnClicked(_ sender: Any) {
    }
    @IBOutlet weak var sendBtnClicked: UIImageView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
