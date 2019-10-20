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






// MARK: - Up
struct Up :Codable{
    let embeddable: Bool?
    let href: String?
}

