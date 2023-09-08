//
//  FontFeatureSelectorIdentifier.swift
//
//
//  Created by Omid Golparvar on 9/8/23.
//

import Foundation

public protocol FontFeatureSelectorIdentifier {
    var identifier: Int { get }
}

public struct RawFontFeatureSelectorIdentifier:
    FontFeatureSelectorIdentifier,
    Hashable,
    RawRepresentable,
    ExpressibleByIntegerLiteral {
    
    public typealias RawValue = Int
    public typealias IntegerLiteralType = Int
    
    public let rawValue: Int
    
    public var identifier: Int { rawValue }
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
    
    public init(integerLiteral value: Int) {
        self.init(rawValue: value)
    }
    
    public init(identifier: Int) {
        self.init(rawValue: identifier)
    }
}
