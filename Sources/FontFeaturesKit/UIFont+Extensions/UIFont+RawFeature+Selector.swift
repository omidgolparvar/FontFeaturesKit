//
//  UIFont+RawFeature+Selector.swift
//
//
//  Created by Omid Golparvar on 9/8/23.
//

import Foundation
import UIKit

public extension UIFont.RawFeature {
    
    struct Selector: CustomStringConvertible {
        public let name: String?
        public let identifier: Int?
        public let isDefault: Bool?
        public let isOn: Bool?
        
        init?(dictionary: [CFString: Any]) {
            self.name = dictionary[kCTFontFeatureSelectorNameKey] as? String
            self.identifier = dictionary[kCTFontFeatureSelectorIdentifierKey] as? Int
            self.isDefault = dictionary[kCTFontFeatureSelectorDefaultKey] as? Bool
            self.isOn = dictionary[kCTFontFeatureSelectorSettingKey] as? Bool
        }
        
        public var description: String {
            let nameString = "name: \"\(name ?? "-")\""
            let identifierString = "identifier: \(identifier.flatMap { "\($0)" } ?? "-")"
            let isDefaultString = "isDefault: \(isDefault.flatMap { "\($0)" } ?? "-")"
            let isOnString = "isOn: \(isOn.flatMap { "\($0)" } ?? "-")"
            
            let properties = [
                nameString,
                identifierString,
                isDefaultString,
                isOnString
            ].joined(separator: ", ")
            
            return "Selector { \(properties) }"
        }
    }
    
}
