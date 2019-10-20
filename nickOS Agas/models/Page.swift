//
//  Page.swift
//  nickOS Agas
//
//  Created by Nikolaos Agas on 10/18/19.
//  Copyright © 2019 Nikolaos Agas. All rights reserved.
//

import Foundation


// MARK: - Page
struct Page : Codable{
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





