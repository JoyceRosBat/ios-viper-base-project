//
//  Result.swift
//  ios-base-project
//
//  Created by Joyce Rosario Batista on 10/12/20.
//

import Foundation

public enum Result<T> {
    case success(T)
    case error(Error)
    
    public init(value: T) {
        self = .success(value)
    }
    
    public init(error: Error) {
        self = .error(error)
    }
}
