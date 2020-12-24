//
//  NetworkError.swift
//  ios-base-project
//
//  Created by Joyce Rosario Batista on 10/12/20.
//

import Foundation

enum NetworkError: String, Error {

    case unauthorized
    case server
    case unknown

    var message: String {
        switch self {
        case .unauthorized:
            return ErrorMessage.unauthorized.rawValue
        case .server:
            return ErrorMessage.server.rawValue
        default:
            return ErrorMessage.unknown.rawValue
        }
    }
    
    static func from(response: HTTPURLResponse) -> NetworkError {
        switch response.statusCode {
        case 400, 401:
            return .unauthorized
        case 500:
            return .server
        default:
            return .unknown
        }
    }
}
