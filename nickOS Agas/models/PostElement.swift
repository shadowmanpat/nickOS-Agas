// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let post = try Post(json)

//
// To read values from URLs:
//
//   let task = URLSession.shared.postElementTask(with: url) { postElement, response, error in
//     if let postElement = postElement {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsePostElement { response in
//     if let postElement = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire

// MARK: - PostElement
struct PostElement: Codable {
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
    let tags: [JSONAny]?
    let jetpackFeaturedMediaURL: String?
    let jetpackPublicizeConnections: [JSONAny]?
    let jetpackSharingEnabled: Bool?
    let jetpackShortlink: String?
    let jetpackRelatedPosts: [JetpackRelatedPost]?
    let links: Links?

    enum CodingKeys: String, CodingKey {
        case id, date
        case dateGmt = "date_gmt"
        case guid, modified
        case modifiedGmt = "modified_gmt"
        case slug, status, type, link, title, content, excerpt, author
        case featuredMedia = "featured_media"
        case commentStatus = "comment_status"
        case pingStatus = "ping_status"
        case sticky, template, format, meta, categories, tags
        case jetpackFeaturedMediaURL = "jetpack_featured_media_url"
        case jetpackPublicizeConnections = "jetpack_publicize_connections"
        case jetpackSharingEnabled = "jetpack_sharing_enabled"
        case jetpackShortlink = "jetpack_shortlink"
        case jetpackRelatedPosts = "jetpack-related-posts"
        case links = "_links"
    }
}

// MARK: PostElement convenience initializers and mutators

extension PostElement {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(PostElement.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int?? = nil,
        date: String?? = nil,
        dateGmt: String?? = nil,
        guid: GUID?? = nil,
        modified: String?? = nil,
        modifiedGmt: String?? = nil,
        slug: String?? = nil,
        status: StatusEnum?? = nil,
        type: TypeEnum?? = nil,
        link: String?? = nil,
        title: GUID?? = nil,
        content: Content?? = nil,
        excerpt: Content?? = nil,
        author: Int?? = nil,
        featuredMedia: Int?? = nil,
        commentStatus: Status?? = nil,
        pingStatus: Status?? = nil,
        sticky: Bool?? = nil,
        template: String?? = nil,
        format: Format?? = nil,
        meta: Meta?? = nil,
        categories: [Int]?? = nil,
        tags: [JSONAny]?? = nil,
        jetpackFeaturedMediaURL: String?? = nil,
        jetpackPublicizeConnections: [JSONAny]?? = nil,
        jetpackSharingEnabled: Bool?? = nil,
        jetpackShortlink: String?? = nil,
        jetpackRelatedPosts: [JetpackRelatedPost]?? = nil,
        links: Links?? = nil
    ) -> PostElement {
        return PostElement(
            id: id ?? self.id,
            date: date ?? self.date,
            dateGmt: dateGmt ?? self.dateGmt,
            guid: guid ?? self.guid,
            modified: modified ?? self.modified,
            modifiedGmt: modifiedGmt ?? self.modifiedGmt,
            slug: slug ?? self.slug,
            status: status ?? self.status,
            type: type ?? self.type,
            link: link ?? self.link,
            title: title ?? self.title,
            content: content ?? self.content,
            excerpt: excerpt ?? self.excerpt,
            author: author ?? self.author,
            featuredMedia: featuredMedia ?? self.featuredMedia,
            commentStatus: commentStatus ?? self.commentStatus,
            pingStatus: pingStatus ?? self.pingStatus,
            sticky: sticky ?? self.sticky,
            template: template ?? self.template,
            format: format ?? self.format,
            meta: meta ?? self.meta,
            categories: categories ?? self.categories,
            tags: tags ?? self.tags,
            jetpackFeaturedMediaURL: jetpackFeaturedMediaURL ?? self.jetpackFeaturedMediaURL,
            jetpackPublicizeConnections: jetpackPublicizeConnections ?? self.jetpackPublicizeConnections,
            jetpackSharingEnabled: jetpackSharingEnabled ?? self.jetpackSharingEnabled,
            jetpackShortlink: jetpackShortlink ?? self.jetpackShortlink,
            jetpackRelatedPosts: jetpackRelatedPosts ?? self.jetpackRelatedPosts,
            links: links ?? self.links
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Status: String, Codable {
    case statusOpen = "open"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.contentTask(with: url) { content, response, error in
//     if let content = content {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseContent { response in
//     if let content = response.result.value {
//       ...
//     }
//   }

// MARK: - Content
struct Content: Codable {
    let rendered: String?
    let protected: Bool?
}

// MARK: Content convenience initializers and mutators

extension Content {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Content.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        rendered: String?? = nil,
        protected: Bool?? = nil
    ) -> Content {
        return Content(
            rendered: rendered ?? self.rendered,
            protected: protected ?? self.protected
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Format: String, Codable {
    case standard = "standard"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.gUIDTask(with: url) { gUID, response, error in
//     if let gUID = gUID {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGUID { response in
//     if let gUID = response.result.value {
//       ...
//     }
//   }

// MARK: - GUID
struct GUID: Codable {
    let rendered: String?
}

// MARK: GUID convenience initializers and mutators

extension GUID {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GUID.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        rendered: String?? = nil
    ) -> GUID {
        return GUID(
            rendered: rendered ?? self.rendered
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.jetpackRelatedPostTask(with: url) { jetpackRelatedPost, response, error in
//     if let jetpackRelatedPost = jetpackRelatedPost {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseJetpackRelatedPost { response in
//     if let jetpackRelatedPost = response.result.value {
//       ...
//     }
//   }

// MARK: - JetpackRelatedPost
struct JetpackRelatedPost: Codable {
    let id: Int?
    let url: String?
    let urlMeta: URLMeta?
    let title, date: String?
    let format: Bool?
    let excerpt: String?
    let rel: Rel?
    let context: String?
    let img: Img?
    let classes: [JSONAny]?

    enum CodingKeys: String, CodingKey {
        case id, url
        case urlMeta = "url_meta"
        case title, date, format, excerpt, rel, context, img, classes
    }
}

// MARK: JetpackRelatedPost convenience initializers and mutators

extension JetpackRelatedPost {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(JetpackRelatedPost.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int?? = nil,
        url: String?? = nil,
        urlMeta: URLMeta?? = nil,
        title: String?? = nil,
        date: String?? = nil,
        format: Bool?? = nil,
        excerpt: String?? = nil,
        rel: Rel?? = nil,
        context: String?? = nil,
        img: Img?? = nil,
        classes: [JSONAny]?? = nil
    ) -> JetpackRelatedPost {
        return JetpackRelatedPost(
            id: id ?? self.id,
            url: url ?? self.url,
            urlMeta: urlMeta ?? self.urlMeta,
            title: title ?? self.title,
            date: date ?? self.date,
            format: format ?? self.format,
            excerpt: excerpt ?? self.excerpt,
            rel: rel ?? self.rel,
            context: context ?? self.context,
            img: img ?? self.img,
            classes: classes ?? self.classes
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.imgTask(with: url) { img, response, error in
//     if let img = img {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseImg { response in
//     if let img = response.result.value {
//       ...
//     }
//   }

// MARK: - Img
struct Img: Codable {
    let altText: AltText?
    let src: String?
    let width, height: Int?

    enum CodingKeys: String, CodingKey {
        case altText = "alt_text"
        case src, width, height
    }
}

// MARK: Img convenience initializers and mutators

extension Img {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Img.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        altText: AltText?? = nil,
        src: String?? = nil,
        width: Int?? = nil,
        height: Int?? = nil
    ) -> Img {
        return Img(
            altText: altText ?? self.altText,
            src: src ?? self.src,
            width: width ?? self.width,
            height: height ?? self.height
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum AltText: String, Codable {
    case androidStudio2Banner = "android-studio-2-banner"
    case empty = ""
    case googleDriveOnLinuxMint = "Google Drive on Linux Mint"
    case realTimePHPNotificationSystem = "real time php notification system"
}

enum Rel: String, Codable {
    case nofollow = "nofollow"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.uRLMetaTask(with: url) { uRLMeta, response, error in
//     if let uRLMeta = uRLMeta {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseURLMeta { response in
//     if let uRLMeta = response.result.value {
//       ...
//     }
//   }

// MARK: - URLMeta
struct URLMeta: Codable {
    let origin, position: Int?
}

// MARK: URLMeta convenience initializers and mutators

extension URLMeta {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(URLMeta.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        origin: Int?? = nil,
        position: Int?? = nil
    ) -> URLMeta {
        return URLMeta(
            origin: origin ?? self.origin,
            position: position ?? self.position
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.linksTask(with: url) { links, response, error in
//     if let links = links {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseLinks { response in
//     if let links = response.result.value {
//       ...
//     }
//   }

// MARK: - Links
struct Links: Codable {
    let linksSelf, collection, about: [About]?
    let author, replies: [Author]?
    let versionHistory: [VersionHistory]?
    let predecessorVersion: [PredecessorVersion]?
    let wpAttachment: [About]?
    let wpTerm: [WpTerm]?
    let curies: [Cury]?
    let wpFeaturedmedia: [Author]?

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case collection, about, author, replies
        case versionHistory = "version-history"
        case predecessorVersion = "predecessor-version"
        case wpAttachment = "wp:attachment"
        case wpTerm = "wp:term"
        case curies
        case wpFeaturedmedia = "wp:featuredmedia"
    }
}

// MARK: Links convenience initializers and mutators

extension Links {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Links.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        linksSelf: [About]?? = nil,
        collection: [About]?? = nil,
        about: [About]?? = nil,
        author: [Author]?? = nil,
        replies: [Author]?? = nil,
        versionHistory: [VersionHistory]?? = nil,
        predecessorVersion: [PredecessorVersion]?? = nil,
        wpAttachment: [About]?? = nil,
        wpTerm: [WpTerm]?? = nil,
        curies: [Cury]?? = nil,
        wpFeaturedmedia: [Author]?? = nil
    ) -> Links {
        return Links(
            linksSelf: linksSelf ?? self.linksSelf,
            collection: collection ?? self.collection,
            about: about ?? self.about,
            author: author ?? self.author,
            replies: replies ?? self.replies,
            versionHistory: versionHistory ?? self.versionHistory,
            predecessorVersion: predecessorVersion ?? self.predecessorVersion,
            wpAttachment: wpAttachment ?? self.wpAttachment,
            wpTerm: wpTerm ?? self.wpTerm,
            curies: curies ?? self.curies,
            wpFeaturedmedia: wpFeaturedmedia ?? self.wpFeaturedmedia
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.aboutTask(with: url) { about, response, error in
//     if let about = about {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseAbout { response in
//     if let about = response.result.value {
//       ...
//     }
//   }

// MARK: - About
struct About: Codable {
    let href: String?
}

// MARK: About convenience initializers and mutators

extension About {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(About.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        href: String?? = nil
    ) -> About {
        return About(
            href: href ?? self.href
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.authorTask(with: url) { author, response, error in
//     if let author = author {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseAuthor { response in
//     if let author = response.result.value {
//       ...
//     }
//   }

// MARK: - Author
struct Author: Codable {
    let embeddable: Bool?
    let href: String?
}

// MARK: Author convenience initializers and mutators

extension Author {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Author.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        embeddable: Bool?? = nil,
        href: String?? = nil
    ) -> Author {
        return Author(
            embeddable: embeddable ?? self.embeddable,
            href: href ?? self.href
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.curyTask(with: url) { cury, response, error in
//     if let cury = cury {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseCury { response in
//     if let cury = response.result.value {
//       ...
//     }
//   }

// MARK: - Cury
struct Cury: Codable {
    let name: Name?
    let href: Href?
    let templated: Bool?
}

// MARK: Cury convenience initializers and mutators

extension Cury {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Cury.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        name: Name?? = nil,
        href: Href?? = nil,
        templated: Bool?? = nil
    ) -> Cury {
        return Cury(
            name: name ?? self.name,
            href: href ?? self.href,
            templated: templated ?? self.templated
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Href: String, Codable {
    case httpsAPIWOrgRel = "https://api.w.org/{rel}"
}

enum Name: String, Codable {
    case wp = "wp"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.predecessorVersionTask(with: url) { predecessorVersion, response, error in
//     if let predecessorVersion = predecessorVersion {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsePredecessorVersion { response in
//     if let predecessorVersion = response.result.value {
//       ...
//     }
//   }

// MARK: - PredecessorVersion
struct PredecessorVersion: Codable {
    let id: Int?
    let href: String?
}

// MARK: PredecessorVersion convenience initializers and mutators

extension PredecessorVersion {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(PredecessorVersion.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int?? = nil,
        href: String?? = nil
    ) -> PredecessorVersion {
        return PredecessorVersion(
            id: id ?? self.id,
            href: href ?? self.href
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.versionHistoryTask(with: url) { versionHistory, response, error in
//     if let versionHistory = versionHistory {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseVersionHistory { response in
//     if let versionHistory = response.result.value {
//       ...
//     }
//   }

// MARK: - VersionHistory
struct VersionHistory: Codable {
    let count: Int?
    let href: String?
}

// MARK: VersionHistory convenience initializers and mutators

extension VersionHistory {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(VersionHistory.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        count: Int?? = nil,
        href: String?? = nil
    ) -> VersionHistory {
        return VersionHistory(
            count: count ?? self.count,
            href: href ?? self.href
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.wpTermTask(with: url) { wpTerm, response, error in
//     if let wpTerm = wpTerm {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseWpTerm { response in
//     if let wpTerm = response.result.value {
//       ...
//     }
//   }

// MARK: - WpTerm
struct WpTerm: Codable {
    let taxonomy: Taxonomy?
    let embeddable: Bool?
    let href: String?
}

// MARK: WpTerm convenience initializers and mutators

extension WpTerm {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(WpTerm.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        taxonomy: Taxonomy?? = nil,
        embeddable: Bool?? = nil,
        href: String?? = nil
    ) -> WpTerm {
        return WpTerm(
            taxonomy: taxonomy ?? self.taxonomy,
            embeddable: embeddable ?? self.embeddable,
            href: href ?? self.href
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Taxonomy: String, Codable {
    case category = "category"
    case postTag = "post_tag"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.metaTask(with: url) { meta, response, error in
//     if let meta = meta {
//       ...
//     }
//   }
//   task.resume()
//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseMeta { response in
//     if let meta = response.result.value {
//       ...
//     }
//   }

// MARK: - Meta
struct Meta: Codable {
    let spayEmail, jetpackPublicizeMessage: String?

    enum CodingKeys: String, CodingKey {
        case spayEmail = "spay_email"
        case jetpackPublicizeMessage = "jetpack_publicize_message"
    }
}

// MARK: Meta convenience initializers and mutators

extension Meta {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Meta.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        spayEmail: String?? = nil,
        jetpackPublicizeMessage: String?? = nil
    ) -> Meta {
        return Meta(
            spayEmail: spayEmail ?? self.spayEmail,
            jetpackPublicizeMessage: jetpackPublicizeMessage ?? self.jetpackPublicizeMessage
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum StatusEnum: String, Codable {
    case publish = "publish"
}

enum TypeEnum: String, Codable {
    case post = "post"
}

typealias Post = [PostElement]

extension Array where Element == Post.Element {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Post.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - URLSession response handlers

extension URLSession {
    fileprivate func codableTask<T: Codable>(with url: URL, completionHandler: @escaping (T?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completionHandler(nil, response, error)
                return
            }
            completionHandler(try? newJSONDecoder().decode(T.self, from: data), response, nil)
        }
    }

    func postTask(with url: URL, completionHandler: @escaping (Post?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }
}

// MARK: - Alamofire response handlers
//
//extension DataRequest {
//    fileprivate func decodableResponseSerializer<T: Decodable>() -> DataResponseSerializer {
//        return DataResponseSerializer { _, response, data, error in
//            guard error == nil else { return .failure(error!) }
//
//            guard let data = data else {
//                return .failure(AFError.responseSerializationFailed(reason: .inputDataNil))
//            }
//
//            return Result { try newJSONDecoder().decode(T.self, from: data) }
//        }
//    }
//
//    @discardableResult
//    fileprivate func responseDecodable<T: Decodable>(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
//        return response(queue: queue, responseSerializer: decodableResponseSerializer(), completionHandler: completionHandler)
//    }
//
//    @discardableResult
//    func responsePost(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Post>) -> Void) -> Self {
//        return responseDecodable(queue: queue, completionHandler: completionHandler)
//    }
//}

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
