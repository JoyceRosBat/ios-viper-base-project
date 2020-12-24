//
//  StorageProtocol.swift
//  ios-base-project
//
//  Created by Joyce Rosario Batista on 10/12/20.
//

import Foundation

protocol StorageService {
    func set<T: Codable>(object: T, key: String)
    func get<T: Codable>(key: String) -> T
}
