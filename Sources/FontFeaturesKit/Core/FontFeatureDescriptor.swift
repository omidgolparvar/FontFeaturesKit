//
//  FontFeatureDescriptor.swift
//
//
//  Created by Omid Golparvar on 9/8/23.
//

import Foundation
import UIKit

public protocol FontFeatureDescriptor: CustomStringConvertible {
    var typeKey: UIFontDescriptor.FeatureKey { get }
    var typeIdentifier: Any { get }
    var selectorKey: UIFontDescriptor.FeatureKey { get }
    var selectorIdentifier: Int { get }
    var attributeValue: [UIFontDescriptor.FeatureKey: Any] { get }
}

extension FontFeatureDescriptor {
    
    public var attributeValue: [UIFontDescriptor.FeatureKey: Any] {
        [
            typeKey: typeIdentifier,
            selectorKey: selectorIdentifier
        ]
    }
    
    public var description: String {
        """
        \(Self.self) {
          FontDescriptorFeatureTypeKey: "\(typeKey.rawValue)"
          FeatureIdentifier: "\(typeIdentifier)"
          FontDescriptorSelectorTypeKey: "\(selectorKey.rawValue)"
          SelectorIdentifier: "\(selectorIdentifier)"
        }
        """
    }
}
