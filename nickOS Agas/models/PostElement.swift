// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let post = try? newJSONDecoder().decode(Post.self, from: jsonData)

import Foundation

// MARK: - PostElement
struct PostElement: Codable {
    var id: Int?
    var date, dateGmt: String?
    var guid: GUID?
    var modified, modifiedGmt, slug: String?
    var status: StatusEnum?
    var type: TypeEnum?
    var link: String?
    var title: GUID?
    var content, excerpt: Content?
    var author, featuredMedia: Int?
    var commentStatus, pingStatus: Status?
    var sticky: Bool?
    var template: String?
    var format: Format?
    var meta: Meta?
    var categories, tags: [Int]?
    var jetpackFeaturedMediaURL: String?
    var jetpackPublicizeConnections: [JSONAny]?
    var jetpackSharingEnabled: Bool?
    var jetpackShortlink: String?
    var jetpackRelatedPosts: [JetpackRelatedPost]?
    var links: Links?

    enum CodingKeys: String, CodingKey {
        case id, date
        case dateGmt
        case guid, modified
        case modifiedGmt
        case slug, status, type, link, title, content, excerpt, author
        case featuredMedia
        case commentStatus
        case pingStatus
        case sticky, template, format, meta, categories, tags
        case jetpackFeaturedMediaURL
        case jetpackPublicizeConnections
        case jetpackSharingEnabled
        case jetpackShortlink
        case jetpackRelatedPosts
        case links
    }
}

enum Status: String, Codable {
    case statusOpen = "open"
}

// MARK: - Content
struct Content: Codable {
    var rendered: String?
    var protected: Bool?
}

enum Format: String, Codable {
    case standard = "standard"
}

// MARK: - GUID
struct GUID: Codable {
    var rendered: String?
}

// MARK: - JetpackRelatedPost
struct JetpackRelatedPost: Codable {
    var id: Int?
    var url: String?
    var urlMeta: URLMeta?
    var title, date: String?
    var format: Bool?
    var excerpt: String?
    var rel: Rel?
    var context: Context?
    var img: Img?
    var classes: [JSONAny]?

    enum CodingKeys: String, CodingKey {
        case id, url
        case urlMeta
        case title, date, format, excerpt, rel, context, img, classes
    }
}

enum Context: String, Codable {
    case inQuotAndroidQuot = "In &quot;Android&quot;"
    case inQuotAndroidStudioQuot = "In &quot;Android Studio&quot;"
    case inQuotFlutterQuot = "In &quot;Flutter&quot;"
    case inQuotIOSQuot = "In &quot;iOS&quot;"
    case inQuotNewsQuot = "In &quot;News&quot;"
}

// MARK: - Img
struct Img: Codable {
    var altText: AltText?
    var src: String?
    var width, height: Int?

    enum CodingKeys: String, CodingKey {
        case altText
        case src, width, height
    }
}

enum AltText: String, Codable {
    case androidStudio2Banner = "android-studio-2-banner"
    case empty = ""
    case segueTitleSmall = "SegueTitleSmall"
}

enum Rel: String, Codable {
    case nofollow = "nofollow"
}

// MARK: - URLMeta
struct URLMeta: Codable {
    var origin, position: Int?
}

// MARK: - Links
struct Links: Codable {
    var linksSelf, collection, about: [About]?
    var author, replies: [Author]?
    var versionHistory: [VersionHistory]?
    var predecessorVersion: [PredecessorVersion]?
    var wpAttachment: [About]?
    var wpTerm: [WpTerm]?
    var curies: [Cury]?

    enum CodingKeys: String, CodingKey {
        case linksSelf
        case collection, about, author, replies
        case versionHistory
        case predecessorVersion
        case wpAttachment
        case wpTerm
        case curies
    }
}

// MARK: - About
struct About: Codable {
    var href: String?
}

// MARK: - Author
struct Author: Codable {
    var embeddable: Bool?
    var href: String?
}

// MARK: - Cury
struct Cury: Codable {
    var name: Name?
    var href: Href?
    var templated: Bool?
}

enum Href: String, Codable {
    case httpsAPIWOrgRel = "https://api.w.org/{rel}"
}

enum Name: String, Codable {
    case wp = "wp"
}

// MARK: - PredecessorVersion
struct PredecessorVersion: Codable {
    var id: Int?
    var href: String?
}

// MARK: - VersionHistory
struct VersionHistory: Codable {
    var count: Int?
    var href: String?
}

// MARK: - WpTerm
struct WpTerm: Codable {
    var taxonomy: Taxonomy?
    var embeddable: Bool?
    var href: String?
}

enum Taxonomy: String, Codable {
    case category = "category"
    case postTag = "post_tag"
}

// MARK: - Meta
struct Meta: Codable {
    var spayEmail, jetpackPublicizeMessage: String?

    enum CodingKeys: String, CodingKey {
        case spayEmail
        case jetpackPublicizeMessage
    }
}

enum StatusEnum: String, Codable {
    case publish = "publish"
}

enum TypeEnum: String, Codable {
    case post = "post"
}

typealias Post = [PostElement]

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public func hash(into hasher: inout Hasher) {
        // No-op
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
