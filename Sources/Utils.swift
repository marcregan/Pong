import HTTP
import Node
import JSON

extension Node {
    func toJSON() throws -> JSON {
        return try JSON.init(node: self)
    }
}

extension HTTP.Method {
    init(_ rawValue: String) {
        let method = rawValue.uppercased()
        switch method {
        case "DELETE":
            self = .delete
        case "GET":
            self = .get
        case "HEAD":
            self = .head
        case "POST":
            self = .post
        case "PUT":
            self = .put
        case "CONNECT":
            self = .connect
        case "OPTIONS":
            self = .options
        case "TRACE":
            self = .trace
        case "PATCH":
            self = .patch
        default:
            self = .other(method: method)
        }
    }
}

extension String {
    
    func substring(maxCharacters: Int) -> String {
        let end = index(startIndex, offsetBy: maxCharacters, limitedBy: endIndex)
        return substring(to: end ?? endIndex)
    }
}
