//

import Foundation
import CoreText

// MARK: - OverlappingCharactersFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var overlappingCharacters: Self { Self.init(identifier: kOverlappingCharactersType) }
}

public struct OverlappingCharactersFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static func preventOverlap(isOn: Bool) -> Self {
        .init(identifier: isOn ? kPreventOverlapOnSelector : kPreventOverlapOffSelector)
    }
    
    public static var preventOverlap: Self { preventOverlap(isOn: true) }
}

public extension FontFeatureDescriptor where Self == StandardFontFeatureDescriptor {
    static func overlappingCharacters(_ selector: OverlappingCharactersFontFeatureSelectors) -> Self {
        .init(type: .overlappingCharacters, selector: selector)
    }
}

