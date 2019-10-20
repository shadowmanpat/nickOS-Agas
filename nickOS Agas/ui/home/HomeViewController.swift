//
//  FirstViewController.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 10/18/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//
import RxSwift
import RxCocoa
import UIKit

class HomeViewController: UIViewController {

    var disposeBag = DisposeBag()
    
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    var homeViewModel = HomeViewModel()
    
    func setUI(){
        print("loadingIndicator")
//        loadingIndicator.isHidden = !homeViewModel.loading
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindLoadingIndicator()
        homeViewModel.loading.asObservable().subscribe(onNext: { (loading) in
            print("asObservable "+String(loading))
            self.loadingIndicator.isHidden =  !loading
               }, onError: { (error) in
                   
               }, onCompleted: {
                   
               }) {
                   
        }.disposed(by: disposeBag)
        // Do any additional setup after loading the view.
           setUI()
//        homeViewModel.isLoading.observe(DispatchQueue.main) { loading , loadingNull  in
//        // handle new position
//            print("observe ")
//            self.loadingIndicator.isHidden = !loading
//
//        }
//        homeViewModel.isLoading.observe { p,p2  in
//            // handle new position
//            print("observe2 ")
//            self.loadingIndicator.isHidden = !(p2 ?? true)
//        }

        
    }
    func bindLoadingIndicator(){
        
    }

    
    @IBAction func contactMePressed(_ sender: Any) {
        homeViewModel.showPage(vc:self,byid: 19)
    }
    @IBAction func homePressed(_ sender: Any) {
        homeViewModel.showPage(vc:self,byid: 61)
    }
    
    @IBAction func aboutMePressed(_ sender: Any) {
        homeViewModel.showPage(vc:self,byid: 15)
    }
    
   

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "webViewVC" {
//            let vc = segue.destination as! WebViewController
//            vc.data = self.homeViewModel.dataToShow ?? ""
//        }
//    }

    
}

