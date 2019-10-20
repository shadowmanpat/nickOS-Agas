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
