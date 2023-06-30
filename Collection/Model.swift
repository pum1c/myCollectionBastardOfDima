//
//  Model.swift
//  Collection
//
//  Created by Вадим Амбарцумян on 22.06.2023.
//

import Foundation

struct UnsplashPhoto: Codable {
    let id: String
    let createdAt: String
    let width: Int
    let height: Int
    let color: String
    let urls: URLs
    let user: User

    struct URLs: Codable {
        let raw: String
        let full: String
        let regular: String
        let small: String
        let thumb: String
    }

    struct User: Codable {
        let name: String
        let username: String
        let profileImage: ProfileImage

        struct ProfileImage: Codable {
            let small: String
            let medium: String
            let large: String
        }
    }
}
