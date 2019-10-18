//
//  Post.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 10/18/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let post = try Post(json)

import Foundation

// MARK: - PostElement
struct Post: Codable {
    let id: Int?
    let date, dateGmt: String?
    let guid: String?
    let modified, modifiedGmt, slug: String?
    let status: String?
    let type: String?
    let link: String?
    let title: String?
    let content, excerpt: String?
    let author, featuredMedia: Int?
    let commentStatus, pingStatus: String?
    let sticky: Bool?
    let template: String?
    let format: String?
    let categories: [Int]?
    let jetpackFeaturedMediaURL: String?
    let jetpackSharingEnabled: Bool?
    let jetpackShortlink: String?
    let jetpackRelatedPosts: [JetpackRelatedPost]?
    let links: Links?
}





// MARK: - JetpackRelatedPost
struct JetpackRelatedPost: Codable {
    let id: Int?
    let url: String?
    let urlMeta: URLMeta?
    let title, date: String?
    let format: Bool?
    let excerpt: String?
    let rel: String?
    let context: String?
    let img: Img?
}

// MARK: - Img
struct Img : Codable{
    let altText: String?
    let src: String?
    let width, height: Int?
}



// MARK: - URLMeta
struct URLMeta : Codable{
    let origin, position: Int?
}






// MARK: - WpTerm
struct WpTerm : Codable{
    let taxonomy: Taxonomy?
    let embeddable: Bool?
    let href: String?
}



