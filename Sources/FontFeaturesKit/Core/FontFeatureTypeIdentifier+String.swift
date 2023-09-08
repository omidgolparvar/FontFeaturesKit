//
//  FontFeatureTypeIdentifier+String.swift
//  
//
//  Created by Omid Golparvar on 9/8/23.
//

import Foundation

public struct StringBasedFontFeatureTypeIdentifier:
    FontFeatureTypeIdentifier,
    Hashable,
    RawRepresentable,
    ExpressibleByStringLiteral {
    
    public typealias RawValue = String
    public typealias StringLiteralType = String
    
    public let rawValue: String
    
    public var identifier: Any { rawValue }
    
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
    
    public init(stringLiteral value: String) {
        self.init(rawValue: value)
    }
    
    public init(identifier: String) {
        self.init(rawValue: identifier)
    }
}
