//
//  Post.swift
//  InstagramCloneUI
//
//  Created by Ömer Apaydın on 4.06.2026.
//

import Foundation
struct Post: Identifiable {
    let id = UUID()
    let username: String
    let image: String
    let caption: String
}
