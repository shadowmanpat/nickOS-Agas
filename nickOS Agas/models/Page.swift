//
//  Page.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 10/18/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import Foundation


// MARK: - Page
struct Page {
    let id: Int?
    let date, dateGmt: String?
    let guid: GUID?
    let modified, modifiedGmt, slug, status: String?
    let type: String?
    let link: String?
    let title: GUID?
    let content, excerpt: Content?
    let author, featuredMedia, parent, menuOrder: Int?
    let commentStatus, pingStatus, template: String?
    let meta: Meta?
    let jetpackSharingEnabled: Bool?
    let jetpackShortlink: String?
    let links: Links?
}


// MARK: - Content
struct Content {
    let rendered: String?
    let protected: Bool?
}

// MARK: - GUID
struct GUID {
    let rendered: String?
}

// MARK: - Links
struct Links {
    let linksSelf, collection, about: [About]?
    let author, replies: [Author]?
    let versionHistory: [VersionHistory]?
    let predecessorVersion: [PredecessorVersion]?
    let wpAttachment: [About]?
    let curies: [Cury]?
}

// MARK: - About
struct About {
    let href: String?
}

// MARK: - Author
struct Author {
    let embeddable: Bool?
    let href: String?
}

// MARK: - Cury
struct Cury {
    let name, href: String?
    let templated: Bool?
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

// MARK: - Meta
struct Meta {
    let spayEmail: String?
}
