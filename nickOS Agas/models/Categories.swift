// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let category = try Category(json)

import Foundation

typealias CategoryResponse = [Category]
// MARK: - CategoryElement
struct Category : Codable {
    let id, count: Int?
    let categoryDescription: String?
    let link: String?
    let name, slug: String?
    let taxonomy: String?
    let parent: Int?
    let links: Links?
}

// MARK: - Links
// MARK: - Links
struct Links: Codable {
    let linksSelf, collection, about: [About]?
    let up: [Up]?
    let wpPostType: [About]?
    let curies: [Cury]?

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case collection, about, up
        case wpPostType = "wp:post_type"
        case curies
    }
}
// MARK: - About
struct About  :Codable{
    let href: String?
}

// MARK: - Cury
struct Cury  :Codable{
    let name: Name?
    let href: Href?
    let templated: Bool?
}

enum Href :String,Codable {
    case httpsAPIWOrgRel
}

enum Name :String,Codable{
    case wp
}

// MARK: - Up
struct Up :Codable{
    let embeddable: Bool?
    let href: String?
}

enum Taxonomy :String,Codable{
    case category
}
