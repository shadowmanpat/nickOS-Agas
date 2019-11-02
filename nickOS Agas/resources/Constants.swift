//
//  Constants.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 10/19/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import Foundation


struct Wordpress {
    ///wp-json/wp/v2/pages/61
   static let baseURL = "http://www.nickagas.com/wp-json/wp/v2"
    static let pageUrl = "/pages/"
    static let ctegoriesUrl = "/categories?page="
    static let postsUrl = "/posts?"
    static let categories = "&categories="
    static let page = "&page="
    static let search = "&search="
}

struct Firebase {
    
    static let RC_SIGN_IN = 123
     static let COLLECTION_PATH = "messages_nickosagas"
}




enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}
