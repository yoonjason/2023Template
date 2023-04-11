//
//  ImageModel.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/04/04.
//

import Foundation


struct Image: Codable, Equatable, Identifiable {
    typealias identifier = String
    let id: identifier
    let created_at: String?
    let likes: Int?
    let urls: Urls?
    
    static func == (lhs: Image, rhs: Image) -> Bool {
        return lhs.id == rhs.id
    }
}

struct Urls: Codable {
    
    let raw: String = ""
    let full: String = ""
    let regular: String = ""
    let small: String = ""
    let thumb: String = ""
    
    enum CodingKeys: String, CodingKey {
        case raw, full, regular, small, thumb
    }
}
