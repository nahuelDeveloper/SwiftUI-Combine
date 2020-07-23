import Foundation
import SwiftUI

struct User: Hashable, Identifiable, Decodable {
    var id: Int64
    var login: String
    var avatar_url: URL
    
    static func mockUser() -> User {
        return User(
            id: 19733658,
            login: "nahuelDeveloper",
            avatar_url: URL(string: "https://avatars1.githubusercontent.com/u/19733658?v=4")!)
    }
}
