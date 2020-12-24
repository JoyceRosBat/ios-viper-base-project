//
//  BaseData.swift
//  ios-base-project
//
//  Created by Joyce Rosario Batista on 9/12/20.
//

import Foundation

struct BaseData: Codable {
    //This is an example of entity:
    let id: Int?
    let name: String?
    let age: Int?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case age
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        age = try container.decodeIfPresent(Int.self, forKey: .age)
    }
}
