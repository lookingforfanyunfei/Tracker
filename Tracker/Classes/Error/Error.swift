//
//  Error.swift
//  Pods-Tracker_Example
//
//  Created by 范云飞 on 2023/12/15.
//

import Foundation


public struct CacheError: Error {
    public private(set) var code: Int?
    public private(set) var message: String?
    public private(set) var error: Error?
    
    public init(code: Int? = nil, message: String? = nil, error: Error? = nil) {
        self.code = code
        self.message = message
        self.error = error
    }
    
}

extension CacheError: LocalizedError {
    public var errorDescription: String? {
        var errorDescription = String()
        if let code = code {
            errorDescription = errorDescription + "code: \(code), "
        }
        if let message = message {
            errorDescription = errorDescription + "message: \(message)"
        } else if let error = error {
            errorDescription = errorDescription + "message: \(error.localizedDescription)"
        }
        return errorDescription
    }
}

extension CacheError: CustomStringConvertible {
    public var description: String {
        var description = String()
        if let code = code {
            description = description + "code: \(code), "
        }
        if let message = message {
            description = description + "message: \(message)"
        } else if let error = error {
            description = description + "message: \(error.localizedDescription)"
        }
        return description
    }
}

