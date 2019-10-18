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
    let guid: GUID?
    let modified, modifiedGmt, slug: String?
    let status: StatusEnum?
    let type: TypeEnum?
    let link: String?
    let title: GUID?
    let content, excerpt: Content?
    let author, featuredMedia: Int?
    let commentStatus, pingStatus: Status?
    let sticky: Bool?
    let template: String?
    let format: Format?
    let meta: Meta?
    let categories: [Int]?
    let tags: [Any?]?
    let jetpackFeaturedMediaURL: String?
    let jetpackPublicizeConnections: [Any?]?
    let jetpackSharingEnabled: Bool?
    let jetpackShortlink: String?
    let jetpackRelatedPosts: [JetpackRelatedPost]?
    let links: Links?
}

enum Status {
    case statusOpen
}

// MARK: - Content
struct Content {
    let rendered: String?
    let protected: Bool?
}

enum Format {
    case standard
}

// MARK: - GUID
struct GUID {
    let rendered: String?
}

// MARK: - JetpackRelatedPost
struct JetpackRelatedPost {
    let id: Int?
    let url: String?
    let urlMeta: URLMeta?
    let title, date: String?
    let format: Bool?
    let excerpt: String?
    let rel: Rel?
    let context: String?
    let img: Img?
    let classes: [Any?]?
}

// MARK: - Img
struct Img {
    let altText: String?
    let src: String?
    let width, height: Int?
}

enum Rel {
    case nofollow
}

// MARK: - URLMeta
struct URLMeta {
    let origin, position: Int?
}




// MARK: - Author
struct Author {
    let embeddable: Bool?
    let href: String?
}

// MARK: - Cury
struct Cury {
    let name: Name?
    let href: Href?
    let templated: Bool?
}

enum Href {
    case httpsAPIWOrgRel
}

enum Name {
    case wp
}

// MARK: - PredecessorVersion
struct PredecessorVersion {
    let id: Int?
    let href: String?
}

// MARK: - VersionHistory
struct VersionHistory {
    let count: Int?
    let href: String?
}

// MARK: - WpTerm
struct WpTerm {
    let taxonomy: Taxonomy?
    let embeddable: Bool?
    let href: String?
}

enum Taxonomy {
    case category
    case postTag
}

// MARK: - Meta
struct Meta {
    let spayEmail, jetpackPublicizeMessage: String?
}

enum StatusEnum {
    case publish
}

enum TypeEnum {
    case post
}

