//
//  FontFeatureIdentifier+OpenType.swift
//
//
//  Created by Omid Golparvar on 9/8/23.
//

import Foundation
import UIKit

public extension FontFeatureIdentifier where Self == OpenTypeFontFeatureIdentifier {
    static func openType(_ type: OpenTypeFontFeatureTypeIdentifier, selector: FontFeatureSelectorIdentifier) -> Self {
        .init(type: type, selector: selector)
    }
    
    static func openType(_ type: OpenTypeFontFeatureTypeIdentifier, selector: RawFontFeatureSelectorIdentifier) -> Self {
        .init(type: type, selector: selector)
    }
    
    static func openType(tag: String) -> Self {
        .init(type: .init(stringLiteral: tag), selector: 1)
    }
    
    static func openType(_ identifier: OpenTypeFontFeatureIdentifier) -> Self {
        identifier
    }
}

public struct OpenTypeFontFeatureIdentifier: FontFeatureIdentifier {
    public let type: OpenTypeFontFeatureTypeIdentifier
    public let selector: FontFeatureSelectorIdentifier
    
    public var typeKey: UIFontDescriptor.FeatureKey {
        .openTypeTag
    }
    
    public var typeIdentifier: Any {
        type.identifier
    }
    
    public var selectorKey: UIFontDescriptor.FeatureKey {
        .openTypeValue
    }
    
    public var selectorIdentifier: Int {
        selector.identifier
    }
    
    public init(type: OpenTypeFontFeatureTypeIdentifier, selector: FontFeatureSelectorIdentifier) {
        self.type = type
        self.selector = selector
    }
    
    public init(type: OpenTypeFontFeatureTypeIdentifier, selector: RawFontFeatureSelectorIdentifier) {
        self.type = type
        self.selector = selector
    }
    
}

public extension UIFontDescriptor.FeatureKey {
    
    static let openTypeTag: Self = Self.init(rawValue: "CTFeatureOpenTypeTag")
    
    static let openTypeValue: Self = Self.init(rawValue: "CTFeatureOpenTypeValue")
    
}
