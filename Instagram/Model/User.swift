//
//  User.swift
//  Instagram
//
//  Created by Devon Connelly on 2024-02-09.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Catbus", profileImageUrl: nil, fullname: "The Catbus", bio: "this is my bio", email: "catbus@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Totoro", profileImageUrl: nil, fullname: "Totoro", bio: "this is my bio", email: "totoro@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Deer", profileImageUrl: nil, fullname: "deer", bio: "this is my bio", email: "deer@gmail.com"),
        .init(id: NSUUID().uuidString, username: "aboba", profileImageUrl: nil, fullname: nil, bio: "this is my bio", email: "aboba@gmail.com"),
        .init(id: NSUUID().uuidString, username: "CastleHat", profileImageUrl: nil, fullname: "Hiroshima Hat", bio: "this is my bio", email: "Hat@gmail.com")
    ]
}
