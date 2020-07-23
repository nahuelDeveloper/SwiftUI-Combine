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
    
//    func fetchImage() -> UIImage {
//        let request = URLRequest(url: avatar_url)
//        _ = URLSession.shared.dataTaskPublisher(for: request)
//            .map { UIImage(data: $0.data) }
//            .replaceError(with: nil)
//            .receive(on: RunLoop.main)
//            .sink(receiveValue: { image in
//                return image
//            })
//
//
//    }
}
