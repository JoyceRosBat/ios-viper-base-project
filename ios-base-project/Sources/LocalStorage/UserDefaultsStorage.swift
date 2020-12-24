//
//  UserDefaultsStorage.swift
//  ios-base-project
//
//  Created by Joyce Rosario Batista on 10/12/20.
//

import Foundation

struct UserDefaultsStorage: StorageService {
    private let userDefaults = UserDefaults.standard
    
    func set<T>(object: T, key: String) {
        self.userDefaults.set(object, forKey: key)
        
        DispatchQueue.main.async {
            let result = Result<T>(value: object)
        }
    }
    
    func get<T>(key: String) -> T {
        guard let decodedData = self.userDefaults.data(forKey: key) else {
            DispatchQueue.main.async {
                return nil
            }
            return
        }
        DispatchQueue.main.async {
            return decodedData
        }
    }
}
