//
//  FontFeatureDescriptor+Standard.swift
//
//
//  Created by Omid Golparvar on 9/8/23.
//

import Foundation
import UIKit

public extension FontFeatureDescriptor where Self == StandardFontFeatureDescriptor {
    static func standard(_ type: StandardFontFeatureTypeIdentifier, selector: FontFeatureSelectorIdentifier) -> Self {
        .init(type: type, selector: selector)
    }
    
    static func standard(_ type: StandardFontFeatureTypeIdentifier, selector: RawFontFeatureSelectorIdentifier) -> Self {
        .init(type: type, selector: selector)
    }
    
    static func standard(_ identifer: StandardFontFeatureDescriptor) -> Self {
        identifer
    }
}

public struct StandardFontFeatureDescriptor: FontFeatureDescriptor {
    
    static var typeKey: UIFontDescriptor.FeatureKey {
        if #available(iOS 15, *) {
            return .type
        } else {
            return .featureIdentifier
        }
    }
    static var selectorKey: UIFontDescriptor.FeatureKey {
        if #available(iOS 15, *) {
            return .selector
        } else {
            return .typeIdentifier
        }
    }
    
    public let type: StandardFontFeatureTypeIdentifier
    public let selector: FontFeatureSelectorIdentifier
    
    public var typeKey: UIFontDescriptor.FeatureKey {
        Self.typeKey
    }
    
    public var typeIdentifier: Any {
        type.identifier
    }
    
    public var selectorKey: UIFontDescriptor.FeatureKey {
        Self.selectorKey
    }
    
    public var selectorIdentifier: Int {
        selector.identifier
    }
    
    public init(type: StandardFontFeatureTypeIdentifier, selector: FontFeatureSelectorIdentifier) {
        self.type = type
        self.selector = selector
    }
    
    public init(type: StandardFontFeatureTypeIdentifier, selector: RawFontFeatureSelectorIdentifier) {
        self.type = type
        self.selector = selector
    }
    
}
