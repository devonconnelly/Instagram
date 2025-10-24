//
//  Post.swift
//  Instagram
//
//  Created by Devon Connelly on 2024-02-10.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
    
    
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "I am Catbus", likes: 10000, imageUrl: "Catbus", timestamp: Timestamp(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "aaaaaaaaaaaa", likes: 1, imageUrl: "Temple_goat", timestamp: Timestamp(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "tototototototototo", likes: 150, imageUrl: "Totoro", timestamp: Timestamp(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "", likes: 14, imageUrl: "Deer", timestamp: Timestamp(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "bruh", likes: 100, imageUrl: "Hiroshima_Hat", timestamp: Timestamp(), user: User.MOCK_USERS[4])
        ]
}
