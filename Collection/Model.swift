//
//  Model.swift
//  Collection
//
//  Created by Вадим Амбарцумян on 22.06.2023.
//

import Foundation

struct UnsplashPhoto: Codable {
    let urls: URLs

    struct URLs: Codable {
        let regular: String
    }
}
