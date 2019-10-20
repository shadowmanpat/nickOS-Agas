//
//  WordpressApi.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 10/19/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//


import Alamofire
import Foundation

class NetworkManager: NSObject {

    func getPage(byId postId: Int, completion: @escaping (Page?) -> Void) {
        let urlString = Wordpress.baseURL + Wordpress.pageUrl+String(postId)
          print(urlString)
        AF.request(urlString).response{ response in
             guard let data = response.data else { return }
            print(data)
            do {
                            let decoder = JSONDecoder()
                            let page  = try decoder.decode(Page.self, from: data)
                            completion(page)
                        } catch let error {
                            print(error)
                            completion(nil)
                        }
        }
    }
    
    func getCategories(byPageID pageID: Int, completion: @escaping (CategoryResponse?) -> Void){
        let urlString = Wordpress.baseURL + Wordpress.ctegoriesUrl+String(pageID)
        print(urlString)
        AF.request(urlString).response{repsonse in
            guard let data = repsonse.data else {return}
            do {
                                      let decoder = JSONDecoder()
                                      let categories  = try decoder.decode(CategoryResponse.self, from: data)
                                      completion(categories)
                                  } catch let error {
                                      print(error)
                                      completion(nil)
                                  }
                  }
            
        }
    }

