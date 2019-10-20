//
//  WebViewController.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 10/19/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
//         let url = URL(string: "https://ioscreator.com")!
//        webView.load(URLRequest(url: url))
        let html = try? String(contentsOfFile: data, encoding: String.Encoding.utf8)
        webView.loadHTMLString(data, baseURL: nil)
        // Do any additional setup after loading the view.
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
